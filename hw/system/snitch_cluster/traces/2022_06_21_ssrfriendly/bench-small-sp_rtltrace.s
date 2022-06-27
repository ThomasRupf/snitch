       0       12        M 0x00001000 csrr    a0, mhartid            #; mhartid = 0, (wrb) a0  <-- 0
       0       32        M 0x00001004 auipc   a1, 0x0                #; (wrb) a1  <-- 4100
       0       56        M 0x00001008 addi    a1, a1, 32             #; a1  = 4100, (wrb) a1  <-- 4132
       0       84        M 0x0000100c auipc   t0, 0x0                #; (wrb) t0  <-- 4108
       0      104        M 0x00001010 lw      t0, 20(t0)             #; t0  = 4108, t0  <~~ Word[0x00001020]
       0      115        M                                           #; (lsu) t0  <-- 0x800027d0
       0      128        M 0x00001014 jalr    t0                     #; t0  = 0x800027d0, (wrb) ra  <-- 4120, goto 0x800027d0
       0      269        M 0x800027d0 auipc   gp, 0x1                #; (wrb) gp  <-- 0x800037d0
       0      270        M 0x800027d4 addi    gp, gp, -264           #; gp  = 0x800037d0, (wrb) gp  <-- 0x800036c8
       0      271        M 0x800027d8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800027d8
       0      272        M 0x800027dc jalr    ra, ra, 964            #; ra  = 0x800027d8, (wrb) ra  <-- 0x800027e0, goto 0x80002b9c
       0      292        M 0x80002b9c mv      a4, a1                 #; a1  = 4132, (wrb) a4  <-- 4132
       0      304        M 0x80002ba0 lw      a1, 4(a4)              #; a4  = 4132, a1  <~~ Word[0x00001028]
       0      334        M                                           #; (lsu) a1  <-- 8
       0      335        M 0x80002ba4 lw      t0, 8(a4)              #; a4  = 4132, t0  <~~ Word[0x0000102c]
       0      374        M                                           #; (lsu) t0  <-- 0
       0      375        M 0x80002ba8 lw      a2, 12(a4)             #; a4  = 4132, a2  <~~ Word[0x00001030]
       0      414        M                                           #; (lsu) a2  <-- 0x00100000
       0      415        M 0x80002bac lw      t1, 16(a4)             #; a4  = 4132, t1  <~~ Word[0x00001034]
       0      454        M                                           #; (lsu) t1  <-- 0x00020000
       0      455        M 0x80002bb0 lw      t2, 20(a4)             #; a4  = 4132, t2  <~~ Word[0x00001038]
       0      456        M 0x80002bb4 sub     a0, a0, t0             #; a0  = 0, t0  = 0, (wrb) a0  <-- 0
       0      457        M 0x80002bb8 div     t3, a0, a1             #; a0  = 0, a1  = 8
       0      460        M                                           #; (acc) t4  <-- 0x027e0eb3
       0      494        M                                           #; (lsu) t2  <-- 0
       0      495        M 0x80002bbc mul     t4, t3, t2             #; t3  = 0, t2  = 0
       0      498        M                                           #; (acc) a2  <-- 0x01d60633
       0      499        M 0x80002bc0 add     a2, a2, t4             #; a2  = 0x00100000, t4  = 0, (wrb) a2  <-- 0x00100000
       0      500        M 0x80002bc4 add     a3, a2, t1             #; a2  = 0x00100000, t1  = 0x00020000, (wrb) a3  <-- 0x00120000
       0      501        M 0x80002bc8 remu    a0, a0, a1             #; a0  = 0, a1  = 8
       0      502        M 0x80002bcc ret                            #; ra  = 0x800027e0, goto 0x800027e0
       0      504        M                                           #; (acc) s0  <-- 0x00050413
       0      505        M 0x800027e0 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
       0      506        M 0x800027e4 mv      a0, a4                 #; a4  = 4132, (wrb) a0  <-- 4132
       0      507        M 0x800027e8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800027e8
       0      508        M 0x800027ec jalr    ra, ra, 1036           #; ra  = 0x800027e8, (wrb) ra  <-- 0x800027f0, goto 0x80002bf4
       0      523        M 0x80002bf4 lw      a0, 8(a0)              #; a0  = 4132, a0  <~~ Word[0x0000102c]
       0      524        M 0x80002bf8 ret                            #; ra  = 0x800027f0, goto 0x800027f0
       0      543        M                                           #; (lsu) a0  <-- 0
       0      544        M 0x800027f0 mv      t0, a0                 #; a0  = 0, (wrb) t0  <-- 0
       0      545        M 0x800027f4 mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
       0      546        M 0x800027f8 csrr    t1, mhartid            #; mhartid = 0, (wrb) t1  <-- 0
       0      547        M 0x800027fc sub     t0, t1, t0             #; t1  = 0, t0  = 0, (wrb) t0  <-- 0
       0      549        M 0x80002800 bnez    t0, pc + 36            #; t0  = 0, not taken
       0      550        M 0x80002804 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002804
       0      551        M 0x80002808 addi    t0, t0, 1932           #; t0  = 0x80002804, (wrb) t0  <-- 0x80002f90
       0      552        M 0x8000280c auipc   t1, 0x0                #; (wrb) t1  <-- 0x8000280c
       0      562        M 0x80002810 addi    t1, t1, 1928           #; t1  = 0x8000280c, (wrb) t1  <-- 0x80002f94
       0      563        M 0x80002814 bge     t0, t1, pc + 16        #; t0  = 0x80002f90, t1  = 0x80002f94, not taken
       0      564        M 0x80002818 sw      zero, 0(t0)            #; t0  = 0x80002f90, 0 ~~> Word[0x80002f90]
       0      565        M 0x8000281c addi    t0, t0, 4              #; t0  = 0x80002f90, (wrb) t0  <-- 0x80002f94
       0      573        M 0x80002820 blt     t0, t1, pc - 8         #; t0  = 0x80002f94, t1  = 0x80002f94, not taken
       0      574        M 0x80002824 csrr    t0, misa               #; misa = 0x40801129, (wrb) t0  <-- 0x40801129
       0      575        M 0x80002828 andi    t0, t0, 40             #; t0  = 0x40801129, (wrb) t0  <-- 40
       0      576        M 0x8000282c beqz    t0, pc + 132           #; t0  = 40, not taken
       0      586        M 0x80002830 fcvt.d.w ft0, zero             #; ac1  = 0
       0      587        M 0x80002834 fcvt.d.w ft1, zero             #; ac1  = 0, (f:fpu) ft0  <-- 0.0
       0      588        M 0x80002838 fcvt.d.w ft2, zero             #; ac1  = 0, (f:fpu) ft1  <-- 0.0
       0      589        M 0x8000283c fcvt.d.w ft3, zero             #; ac1  = 0, (f:fpu) ft2  <-- 0.0
       0      590        M                                           #; (f:fpu) ft3  <-- 0.0
       0      598        M 0x80002840 fcvt.d.w ft4, zero             #; ac1  = 0
       0      599        M 0x80002844 fcvt.d.w ft5, zero             #; ac1  = 0, (f:fpu) ft4  <-- 0.0
       0      600        M 0x80002848 fcvt.d.w ft6, zero             #; ac1  = 0, (f:fpu) ft5  <-- 0.0
       0      601        M 0x8000284c fcvt.d.w ft7, zero             #; ac1  = 0, (f:fpu) ft6  <-- 0.0
       0      602        M                                           #; (f:fpu) ft7  <-- 0.0
       0      610        M 0x80002850 fcvt.d.w fs0, zero             #; ac1  = 0
       0      611        M 0x80002854 fcvt.d.w fs1, zero             #; ac1  = 0, (f:fpu) fs0  <-- 0.0
       0      612        M 0x80002858 fcvt.d.w fa0, zero             #; ac1  = 0, (f:fpu) fs1  <-- 0.0
       0      613        M 0x8000285c fcvt.d.w fa1, zero             #; ac1  = 0, (f:fpu) fa0  <-- 0.0
       0      614        M                                           #; (f:fpu) fa1  <-- 0.0
       0      622        M 0x80002860 fcvt.d.w fa2, zero             #; ac1  = 0
       0      623        M 0x80002864 fcvt.d.w fa3, zero             #; ac1  = 0, (f:fpu) fa2  <-- 0.0
       0      624        M 0x80002868 fcvt.d.w fa4, zero             #; ac1  = 0, (f:fpu) fa3  <-- 0.0
       0      625        M 0x8000286c fcvt.d.w fa5, zero             #; ac1  = 0, (f:fpu) fa4  <-- 0.0
       0      626        M                                           #; (f:fpu) fa5  <-- 0.0
       0      634        M 0x80002870 fcvt.d.w fa6, zero             #; ac1  = 0
       0      635        M 0x80002874 fcvt.d.w fa7, zero             #; ac1  = 0, (f:fpu) fa6  <-- 0.0
       0      636        M 0x80002878 fcvt.d.w fs2, zero             #; ac1  = 0, (f:fpu) fa7  <-- 0.0
       0      637        M 0x8000287c fcvt.d.w fs3, zero             #; ac1  = 0, (f:fpu) fs2  <-- 0.0
       0      638        M                                           #; (f:fpu) fs3  <-- 0.0
       0      646        M 0x80002880 fcvt.d.w fs4, zero             #; ac1  = 0
       0      647        M 0x80002884 fcvt.d.w fs5, zero             #; ac1  = 0, (f:fpu) fs4  <-- 0.0
       0      648        M 0x80002888 fcvt.d.w fs6, zero             #; ac1  = 0, (f:fpu) fs5  <-- 0.0
       0      649        M 0x8000288c fcvt.d.w fs7, zero             #; ac1  = 0, (f:fpu) fs6  <-- 0.0
       0      650        M                                           #; (f:fpu) fs7  <-- 0.0
       0      658        M 0x80002890 fcvt.d.w fs8, zero             #; ac1  = 0
       0      659        M 0x80002894 fcvt.d.w fs9, zero             #; ac1  = 0, (f:fpu) fs8  <-- 0.0
       0      660        M 0x80002898 fcvt.d.w fs10, zero            #; ac1  = 0, (f:fpu) fs9  <-- 0.0
       0      661        M 0x8000289c fcvt.d.w fs11, zero            #; ac1  = 0, (f:fpu) fs10 <-- 0.0
       0      662        M                                           #; (f:fpu) fs11 <-- 0.0
       0      670        M 0x800028a0 fcvt.d.w ft8, zero             #; ac1  = 0
       0      671        M 0x800028a4 fcvt.d.w ft9, zero             #; ac1  = 0, (f:fpu) ft8  <-- 0.0
       0      672        M 0x800028a8 fcvt.d.w ft10, zero            #; ac1  = 0, (f:fpu) ft9  <-- 0.0
       0      673        M 0x800028ac fcvt.d.w ft11, zero            #; ac1  = 0, (f:fpu) ft10 <-- 0.0
       0      674        M                                           #; (f:fpu) ft11 <-- 0.0
       0      681        M 0x800028b0 addi    a3, a3, -8             #; a3  = 0x00120000, (wrb) a3  <-- 0x0011fff8
       0      682        M 0x800028b4 sw      zero, 0(a3)            #; a3  = 0x0011fff8, 0 ~~> Word[0x0011fff8]
       0      683        M 0x800028b8 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800028b8
       0      684        M 0x800028bc lw      t0, 900(t0)            #; t0  = 0x800028b8, t0  <~~ Word[0x80002c3c]
       0      704        M                                           #; (lsu) t0  <-- 136
       0      705        M 0x800028c0 sub     a3, a3, t0             #; a3  = 0x0011fff8, t0  = 136, (wrb) a3  <-- 0x0011ff70
       0      706        M 0x800028c4 mv      a5, a3                 #; a3  = 0x0011ff70, (wrb) a5  <-- 0x0011ff70
       0      707        M 0x800028c8 auipc   t2, 0x0                #; (wrb) t2  <-- 0x800028c8
       0      708        M 0x800028cc lw      t2, 880(t2)            #; t2  = 0x800028c8, t2  <~~ Word[0x80002c38]
       0      744        M                                           #; (lsu) t2  <-- 10
       0      745        M 0x800028d0 sll     t0, a0, t2             #; a0  = 0, t2  = 10, (wrb) t0  <-- 0
       0      746        M 0x800028d4 sll     t1, a1, t2             #; a1  = 8, t2  = 10, (wrb) t1  <-- 8192
       0      747        M 0x800028d8 sub     sp, a3, t0             #; a3  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
       0      748        M 0x800028dc sub     a3, a3, t1             #; a3  = 0x0011ff70, t1  = 8192, (wrb) a3  <-- 0x0011df70
       0      749        M 0x800028e0 slli    t0, a0, 3              #; a0  = 0, (wrb) t0  <-- 0
       0      750        M 0x800028e4 slli    t1, a1, 3              #; a1  = 8, (wrb) t1  <-- 64
       0      751        M 0x800028e8 sub     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
       0      752        M 0x800028ec sub     a3, a3, t1             #; a3  = 0x0011df70, t1  = 64, (wrb) a3  <-- 0x0011df30
       0      761        M 0x800028f0 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800028f0
       0      762        M 0x800028f4 addi    t0, t0, 1496           #; t0  = 0x800028f0, (wrb) t0  <-- 0x80002ec8
       0      763        M 0x800028f8 auipc   t1, 0x0                #; (wrb) t1  <-- 0x800028f8
       0      764        M 0x800028fc addi    t1, t1, 1488           #; t1  = 0x800028f8, (wrb) t1  <-- 0x80002ec8
       0      775        M 0x80002900 auipc   t2, 0x0                #; (wrb) t2  <-- 0x80002900
       0      776        M 0x80002904 addi    t2, t2, 1480           #; t2  = 0x80002900, (wrb) t2  <-- 0x80002ec8
       0      777        M 0x80002908 auipc   t3, 0x0                #; (wrb) t3  <-- 0x80002908
       0      778        M 0x8000290c addi    t3, t3, 1488           #; t3  = 0x80002908, (wrb) t3  <-- 0x80002ed8
       0      787        M 0x80002910 add     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0x80002ec8, (wrb) sp  <-- 0x80122e38
       0      788        M 0x80002914 sub     sp, sp, t1             #; sp  = 0x80122e38, t1  = 0x80002ec8, (wrb) sp  <-- 0x0011ff70
       0      789        M 0x80002918 add     sp, sp, t2             #; sp  = 0x0011ff70, t2  = 0x80002ec8, (wrb) sp  <-- 0x80122e38
       0      790        M 0x8000291c sub     sp, sp, t3             #; sp  = 0x80122e38, t3  = 0x80002ed8, (wrb) sp  <-- 0x0011ff60
       0      799        M 0x80002920 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
       0      800        M 0x80002924 mv      tp, sp                 #; sp  = 0x0011ff60, (wrb) tp  <-- 0x0011ff60
       0      801        M 0x80002928 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
       0      802        M 0x8000292c mv      t4, tp                 #; tp  = 0x0011ff60, (wrb) t4  <-- 0x0011ff60
       0      811        M 0x80002930 bge     t0, t1, pc + 24        #; t0  = 0x80002ec8, t1  = 0x80002ec8, taken, goto 0x80002948
       0      823        M 0x80002948 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002948
       0      824        M 0x8000294c addi    t0, t0, 1408           #; t0  = 0x80002948, (wrb) t0  <-- 0x80002ec8
       0      835        M 0x80002950 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002950
       0      836        M 0x80002954 addi    t1, t1, 1416           #; t1  = 0x80002950, (wrb) t1  <-- 0x80002ed8
       0      837        M 0x80002958 bge     t0, t1, pc + 20        #; t0  = 0x80002ec8, t1  = 0x80002ed8, not taken
       0      838        M 0x8000295c sw      zero, 0(t4)            #; t4  = 0x0011ff60, 0 ~~> Word[0x0011ff60]
       0      847        M 0x80002960 addi    t0, t0, 4              #; t0  = 0x80002ec8, (wrb) t0  <-- 0x80002ecc
       0      848        M 0x80002964 addi    t4, t4, 4              #; t4  = 0x0011ff60, (wrb) t4  <-- 0x0011ff64
       0      849        M 0x80002968 blt     t0, t2, pc - 12        #; t0  = 0x80002ecc, t2  = 0x80002ec8, not taken
       0      850        M 0x8000296c addi    sp, sp, -20            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff4c
       0      862        M 0x80002970 sw      a0, 0(sp)              #; sp  = 0x0011ff4c, 0 ~~> Word[0x0011ff4c]
       0      863        M 0x80002974 sw      a1, 4(sp)              #; sp  = 0x0011ff4c, 8 ~~> Word[0x0011ff50]
       0      864        M 0x80002978 sw      a2, 8(sp)              #; sp  = 0x0011ff4c, 0x00100000 ~~> Word[0x0011ff54]
       0      865        M 0x8000297c sw      a3, 12(sp)             #; sp  = 0x0011ff4c, 0x0011df30 ~~> Word[0x0011ff58]
       0      875        M 0x80002980 sw      a4, 16(sp)             #; sp  = 0x0011ff4c, 4132 ~~> Word[0x0011ff5c]
       0      876        M 0x80002984 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002984
       0      877        M 0x80002988 jalr    ra, ra, -1060          #; ra  = 0x80002984, (wrb) ra  <-- 0x8000298c, goto 0x80002560
       0      898        M 0x80002560 sw      a5, 0(a5)              #; a5  = 0x0011ff70, 0x0011ff70 ~~> Word[0x0011ff70]
       0      899        M 0x80002564 sw      a4, 4(a5)              #; a5  = 0x0011ff70, 4132 ~~> Word[0x0011ff74]
       0      901        M 0x80002568 lw      t1, 8(a4)              #; a4  = 4132, t1  <~~ Word[0x0000102c]
       0      923        M                                           #; (lsu) t1  <-- 0
       0      924        M 0x8000256c sw      t1, 8(a5)              #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff78]
       0      925        M 0x80002570 lw      a6, 40(a4)             #; a4  = 4132, a6  <~~ Word[0x0000104c]
       0      963        M                                           #; (lsu) a6  <-- 1
       0      964        M 0x80002574 lw      a7, 44(a4)             #; a4  = 4132, a7  <~~ Word[0x00001050]
       0     1003        M                                           #; (lsu) a7  <-- 1
       0     1004        M 0x80002578 lw      t0, 4(a4)              #; a4  = 4132, t0  <~~ Word[0x00001028]
       0     1005        M 0x8000257c mul     a6, a7, a6             #; a7  = 1, a6  = 1
       0     1008        M                                           #; (acc) a0  <-- 0x02580533
       0     1043        M                                           #; (lsu) t0  <-- 8
       0     1044        M 0x80002580 mul     a0, a6, t0             #; a6  = 1, t0  = 8
       0     1047        M                                           #; (acc) a2  <-- 0x00a7a623
       0     1048        M 0x80002584 sw      a0, 12(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff7c]
       0     1049        M 0x80002588 csrr    a7, mhartid            #; mhartid = 0, (wrb) a7  <-- 0
       0     1050        M 0x8000258c sub     a0, a7, t1             #; a7  = 0, t1  = 0, (wrb) a0  <-- 0
       0     1051        M 0x80002590 divu    a0, a0, t0             #; a0  = 0, t0  = 8
       0     1054        M                                           #; (acc) a6  <-- 0x00a7a823
       0     1055        M 0x80002594 sw      a0, 16(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff80]
       0     1056        M 0x80002598 sw      a6, 20(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff84]
       0     1057        M 0x8000259c sw      t1, 24(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff88]
       0     1063        M 0x800025a0 sw      a1, 28(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff8c]
       0     1064        M 0x800025a4 lw      a0, 24(a4)             #; a4  = 4132, a0  <~~ Word[0x0000103c]
       0     1065        M 0x800025a8 lui     a1, 0x10000            #; (wrb) a1  <-- 0x10000000
       0     1083        M                                           #; (lsu) a0  <-- 0x80000000
       0     1084        M 0x800025ac add     a0, a0, a1             #; a0  = 0x80000000, a1  = 0x10000000, (wrb) a0  <-- 0x90000000
       0     1085        M 0x800025b0 sw      zero, 36(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff94]
       0     1086        M 0x800025b4 sw      a0, 32(a5)             #; a5  = 0x0011ff70, 0x90000000 ~~> Word[0x0011ff90]
       0     1087        M 0x800025b8 lw      a0, 32(a4)             #; a4  = 4132, a0  <~~ Word[0x00001044]
       0     1123        M                                           #; (lsu) a0  <-- 0
       0     1124        M 0x800025bc lw      a1, 36(a4)             #; a4  = 4132, a1  <~~ Word[0x00001048]
       0     1125        M 0x800025c0 sw      a0, 40(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff98]
       0     1163        M                                           #; (lsu) a1  <-- 1
       0     1164        M 0x800025c4 sw      a1, 44(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff9c]
       0     1165        M 0x800025c8 sw      a2, 48(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffa0]
       0     1166        M 0x800025cc sw      zero, 52(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffa4]
       0     1167        M 0x800025d0 sw      a3, 56(a5)             #; a5  = 0x0011ff70, 0x0011df30 ~~> Word[0x0011ffa8]
       0     1168        M 0x800025d4 sw      zero, 60(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffac]
       0     1169        M 0x800025d8 lw      a0, 16(a4)             #; a4  = 4132, a0  <~~ Word[0x00001034]
       0     1190        M                                           #; (lsu) a0  <-- 0x00020000
       0     1191        M 0x800025dc add     a6, a2, a0             #; a2  = 0x00100000, a0  = 0x00020000, (wrb) a6  <-- 0x00120000
       0     1192        M 0x800025e0 addi    a1, a6, 400            #; a6  = 0x00120000, (wrb) a1  <-- 0x00120190
       0     1193        M 0x800025e4 sw      a1, 112(a5)            #; a5  = 0x0011ff70, 0x00120190 ~~> Word[0x0011ffe0]
       0     1194        M 0x800025e8 sltu    t0, a6, a0             #; a6  = 0x00120000, a0  = 0x00020000, (wrb) t0  <-- 0
       0     1195        M 0x800025ec srli    a1, a0, 1              #; a0  = 0x00020000, (wrb) a1  <-- 0x00010000
       0     1205        M 0x800025f0 add     t1, a6, a1             #; a6  = 0x00120000, a1  = 0x00010000, (wrb) t1  <-- 0x00130000
       0     1206        M 0x800025f4 sltu    a1, t1, a6             #; t1  = 0x00130000, a6  = 0x00120000, (wrb) a1  <-- 0
       0     1207        M 0x800025f8 add     a1, t0, a1             #; t0  = 0, a1  = 0, (wrb) a1  <-- 0
       0     1208        M 0x800025fc sw      t1, 64(a5)             #; a5  = 0x0011ff70, 0x00130000 ~~> Word[0x0011ffb0]
       0     1219        M 0x80002600 sw      a1, 68(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffb4]
       0     1220        M 0x80002604 slli    a0, a0, 1              #; a0  = 0x00020000, (wrb) a0  <-- 0x00040000
       0     1221        M 0x80002608 add     a1, a0, a2             #; a0  = 0x00040000, a2  = 0x00100000, (wrb) a1  <-- 0x00140000
       0     1222        M 0x8000260c sltu    a0, a1, a0             #; a1  = 0x00140000, a0  = 0x00040000, (wrb) a0  <-- 0
       0     1231        M 0x80002610 sw      a1, 72(a5)             #; a5  = 0x0011ff70, 0x00140000 ~~> Word[0x0011ffb8]
       0     1232        M 0x80002614 sw      a0, 76(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffbc]
       0     1234        M 0x80002618 sw      zero, 104(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd8]
       0     1238        M 0x8000261c sw      zero, 108(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffdc]
       0     1243        M 0x80002620 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1244        M 0x80002624 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1245        M 0x80002628 sw      a5, 0(a0)              #; a0  = 0x0011ff60, 0x0011ff70 ~~> Word[0x0011ff60]
       0     1246        M 0x8000262c lw      a0, 0(a5)              #; a5  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1250        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1255        M 0x80002630 lw      a1, 24(a0)             #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ff88]
       0     1259        M                                           #; (lsu) a1  <-- 0
       0     1260        M 0x80002634 lw      a0, 28(a0)             #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff8c]
       0     1261        M 0x80002638 sub     a1, a7, a1             #; a7  = 0, a1  = 0, (wrb) a1  <-- 0
       0     1263        M                                           #; (lsu) a0  <-- 8
       0     1264        M 0x8000263c remu    a0, a1, a0             #; a1  = 0, a0  = 8
       0     1267        M 0x80002640 lui     a1, 0x0                #; (wrb) a1  <-- 0
       0     1268        M 0x80002644 add     a1, a1, tp             #; a1  = 0, tp  = 0x0011ff60, (wrb) a1  <-- 0x0011ff60
       0     1269        M                                           #; (acc) tp  <-- 0x00a5a223
       0     1270        M 0x80002648 sw      a0, 4(a1)              #; a1  = 0x0011ff60, 0 ~~> Word[0x0011ff64]
       0     1271        M 0x8000264c li      a0, 1096               #; (wrb) a0  <-- 1096
       0     1279        M 0x80002650 mul     a0, a7, a0             #; a7  = 0, a0  = 1096
       0     1280        M 0x80002654 auipc   a1, 0x1                #; (wrb) a1  <-- 0x80003654
       0     1281        M 0x80002658 addi    a1, a1, -1728          #; a1  = 0x80003654, (wrb) a1  <-- 0x80002f94
       0     1283        M                                           #; (acc) a0  <-- 0x00b50533
       0     1284        M 0x8000265c add     a0, a0, a1             #; a0  = 0, a1  = 0x80002f94, (wrb) a0  <-- 0x80002f94
       0     1291        M 0x80002660 sw      zero, 0(a0)            #; a0  = 0x80002f94, 0 ~~> Word[0x80002f94]
       0     1292        M 0x80002664 lw      a7, 48(a4)             #; a4  = 4132, a7  <~~ Word[0x00001054]
       0     1362        M                                           #; (lsu) a7  <-- 0xffff0000
       0     1363        M 0x80002668 sw      a7, 116(a5)            #; a5  = 0x0011ff70, 0xffff0000 ~~> Word[0x0011ffe4]
       0     1364        M 0x8000266c sw      a6, 124(a5)            #; a5  = 0x0011ff70, 0x00120000 ~~> Word[0x0011ffec]
       0     1365        M 0x80002670 sw      zero, 120(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffe8]
       0     1366        M 0x80002674 addi    a4, a6, 384            #; a6  = 0x00120000, (wrb) a4  <-- 0x00120180
       0     1367        M 0x80002678 sw      a4, 128(a5)            #; a5  = 0x0011ff70, 0x00120180 ~~> Word[0x0011fff0]
       0     1368        M 0x8000267c addi    a0, a2, 7              #; a2  = 0x00100000, (wrb) a0  <-- 0x00100007
       0     1369        M 0x80002680 andi    a0, a0, -8             #; a0  = 0x00100007, (wrb) a0  <-- 0x00100000
       0     1370        M 0x80002684 sw      a0, 80(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc0]
       0     1371        M 0x80002688 sub     a2, a3, a2             #; a3  = 0x0011df30, a2  = 0x00100000, (wrb) a2  <-- 0x0001df30
       0     1372        M 0x8000268c sw      a2, 84(a5)             #; a5  = 0x0011ff70, 0x0001df30 ~~> Word[0x0011ffc4]
       0     1373        M 0x80002690 sw      a0, 88(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc8]
       0     1374        M 0x80002694 lw      a0, 0(a1)              #; a1  = 0x80002f94, a0  <~~ Word[0x80002f94]
       0     1385        M                                           #; (lsu) a0  <-- 0
       0     1386        M 0x80002698 addi    a0, a0, 1103           #; a0  = 0, (wrb) a0  <-- 1103
       0     1387        M 0x8000269c andi    a0, a0, -8             #; a0  = 1103, (wrb) a0  <-- 1096
       0     1388        M 0x800026a0 sw      a0, 92(a5)             #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffcc]
       0     1389        M 0x800026a4 sw      zero, 96(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd0]
       0     1390        M 0x800026a8 sw      a0, 100(a5)            #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffd4]
       0     1391        M 0x800026ac lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1392        M 0x800026b0 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1393        M 0x800026b4 sw      a7, 8(a0)              #; a0  = 0x0011ff60, 0xffff0000 ~~> Word[0x0011ff68]
       0     1394        M 0x800026b8 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1395        M 0x800026bc add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1400        M 0x800026c0 sw      a4, 12(a0)             #; a0  = 0x0011ff60, 0x00120180 ~~> Word[0x0011ff6c]
       0     1401        M 0x800026c4 ret                            #; ra  = 0x8000298c, goto 0x8000298c
       0     1415        M 0x8000298c lw      a0, 0(sp)              #; sp  = 0x0011ff4c, a0  <~~ Word[0x0011ff4c]
       0     1418        M                                           #; (lsu) a0  <-- 0
       0     1419        M 0x80002990 lw      a1, 4(sp)              #; sp  = 0x0011ff4c, a1  <~~ Word[0x0011ff50]
       0     1422        M                                           #; (lsu) a1  <-- 8
       0     1423        M 0x80002994 lw      a2, 8(sp)              #; sp  = 0x0011ff4c, a2  <~~ Word[0x0011ff54]
       0     1426        M                                           #; (lsu) a2  <-- 0x00100000
       0     1427        M 0x80002998 lw      a3, 12(sp)             #; sp  = 0x0011ff4c, a3  <~~ Word[0x0011ff58]
       0     1430        M                                           #; (lsu) a3  <-- 0x0011df30
       0     1431        M 0x8000299c lw      a4, 16(sp)             #; sp  = 0x0011ff4c, a4  <~~ Word[0x0011ff5c]
       0     1432        M 0x800029a0 addi    sp, sp, 20             #; sp  = 0x0011ff4c, (wrb) sp  <-- 0x0011ff60
       0     1433        M 0x800029a4 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800029a4
       0     1434        M 0x800029a8 addi    t0, t0, 60             #; t0  = 0x800029a4, (wrb) t0  <-- 0x800029e0
       0     1435        M 0x800029ac csrw    mtvec, t0              #; t0  = 0x800029e0, (lsu) a4  <-- 4132
       0     1443        M 0x800029b0 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800029b0
       0     1444        M 0x800029b4 jalr    ra, ra, 544            #; ra  = 0x800029b0, (wrb) ra  <-- 0x800029b8, goto 0x80002bd0
       0     1460        M 0x80002bd0 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
       0     1461        M 0x80002bd4 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x800029b8 ~~> Word[0x0011ff5c]
       0     1462        M 0x80002bd8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002bd8
       0     1463        M 0x80002bdc jalr    ra, ra, -1264          #; ra  = 0x80002bd8, (wrb) ra  <-- 0x80002be0, goto 0x800026e8
       0     1481        M 0x800026e8 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1482        M 0x800026ec add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1493        M 0x800026f0 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     1496        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1497        M 0x800026f4 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1501        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1502        M 0x800026f8 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
       0     1503        M 0x800026fc ret                            #; ra  = 0x80002be0, goto 0x80002be0
       0     1505        M                                           #; (lsu) a0  <-- 0x00120190
       0     1506        M 0x80002be0 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
       0     1535        M                                           #; (lsu) a0  <-- 0
       0     1536        M 0x80002be4 mv      zero, a0               #; a0  = 0
       0     1537        M 0x80002be8 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
       0     1538        M 0x80002bec addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
       0     1540        M                                           #; (lsu) ra  <-- 0x800029b8
       0     1541        M 0x80002bf0 ret                            #; ra  = 0x800029b8, goto 0x800029b8
       0     1545        M 0x800029b8 auipc   ra, 0xffffe            #; (wrb) ra  <-- 0x800009b8
       0     1546        M 0x800029bc jalr    ra, ra, -700           #; ra  = 0x800009b8, (wrb) ra  <-- 0x800029c0, goto 0x800006fc
       0     1551        M 0x800006fc addi    sp, sp, -32            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff40
       0     1558        M 0x80000700 sw      ra, 28(sp)             #; sp  = 0x0011ff40, 0x800029c0 ~~> Word[0x0011ff5c]
       0     1559        M 0x80000704 sw      s0, 24(sp)             #; sp  = 0x0011ff40, 0 ~~> Word[0x0011ff58]
       0     1560        M 0x80000708 sw      s1, 20(sp)             #; sp  = 0x0011ff40, 0 ~~> Word[0x0011ff54]
       0     1561        M 0x8000070c sw      s2, 16(sp)             #; sp  = 0x0011ff40, 0 ~~> Word[0x0011ff50]
       0     1571        M 0x80000714 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1572        M 0x80000718 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
                         M 0x80000710 fsd     fs0, 8(sp)             #; 0.0 ~~> Doub[0x0011ff48]
       0     1573        M 0x8000071c lw      a1, 4(a0)              #; a0  = 0x0011ff60, a1  <~~ Word[0x0011ff64]
       0     1576        M                                           #; (lsu) a1  <-- 0
       0     1582        M 0x80000720 li      a0, 0                  #; (wrb) a0  <-- 0
       0     1583        M 0x80000724 bnez    a1, pc + 228           #; a1  = 0, not taken
       0     1584        M 0x80000728 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1585        M 0x8000072c add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1594        M 0x80000730 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     1597        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1598        M 0x80000734 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1601        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1602        M 0x80000738 lw      s0, 88(a0)             #; a0  = 0x0011ff70, s0  <~~ Word[0x0011ffc8]
       0     1605        M                                           #; (lsu) s0  <-- 0x00100000
       0     1606        M 0x8000073c lw      a1, 80(a0)             #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ffc0]
       0     1609        M                                           #; (lsu) a1  <-- 0x00100000
       0     1610        M 0x80000740 lw      a3, 84(a0)             #; a0  = 0x0011ff70, a3  <~~ Word[0x0011ffc4]
       0     1611        M 0x80000744 addi    a2, s0, 800            #; s0  = 0x00100000, (wrb) a2  <-- 0x00100320
       0     1613        M                                           #; (lsu) a3  <-- 0x0001df30
       0     1614        M 0x80000748 add     a1, a3, a1             #; a3  = 0x0001df30, a1  = 0x00100000, (wrb) a1  <-- 0x0011df30
       0     1615        M 0x8000074c bgeu    a1, a2, pc + 24        #; a1  = 0x0011df30, a2  = 0x00100320, taken, goto 0x80000764
       0     1635        M 0x80000764 sw      a2, 88(a0)             #; a0  = 0x0011ff70, 0x00100320 ~~> Word[0x0011ffc8]
       0     1636        M 0x80000768 mv      s2, s0                 #; s0  = 0x00100000, (wrb) s2  <-- 0x00100000
       0     1637        M 0x8000076c addi    a3, s0, 1600           #; s0  = 0x00100000, (wrb) a3  <-- 0x00100640
       0     1649        M 0x80000770 mv      s0, a2                 #; a2  = 0x00100320, (wrb) s0  <-- 0x00100320
       0     1650        M 0x80000774 bgeu    a1, a3, pc - 24        #; a1  = 0x0011df30, a3  = 0x00100640, taken, goto 0x8000075c
       0     1651        M 0x8000075c sw      a3, 88(a0)             #; a0  = 0x0011ff70, 0x00100640 ~~> Word[0x0011ffc8]
       0     1652        M 0x80000760 j       pc + 0x1c              #; goto 0x8000077c
       0     1653        M 0x8000077c mv      a0, s2                 #; s2  = 0x00100000, (wrb) a0  <-- 0x00100000
       0     1669        M 0x80000780 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000780
       0     1670        M 0x80000784 jalr    ra, ra, -332           #; ra  = 0x80000780, (wrb) ra  <-- 0x80000788, goto 0x80000634
       0     1698        M 0x80000634 srli    a1, a0, 20             #; a0  = 0x00100000, (wrb) a1  <-- 1
       0     1699        M 0x80000638 snez    a1, a1                 #; a1  = 1, (wrb) a1  <-- 1
       0     1700        M 0x8000063c lui     a2, 0x120              #; (wrb) a2  <-- 0x00120000
       0     1710        M 0x80000640 addi    a2, a2, -791           #; a2  = 0x00120000, (wrb) a2  <-- 0x0011fce9
       0     1711        M 0x80000644 sltu    a2, a0, a2             #; a0  = 0x00100000, a2  = 0x0011fce9, (wrb) a2  <-- 1
       0     1712        M 0x80000648 and     a1, a1, a2             #; a1  = 1, a2  = 1, (wrb) a1  <-- 1
       0     1713        M 0x8000064c beqz    a1, pc + 108           #; a1  = 1, not taken
       0     1722        M 0x80000650 li      a1, 0                  #; (wrb) a1  <-- 0
       0     1723        M 0x80000654 li      a2, 8                  #; (wrb) a2  <-- 8
       0     1724        M 0x80000658 li      a3, 99                 #; (wrb) a3  <-- 99
       0     1725        M 0x8000065c li      a4, 64                 #; (wrb) a4  <-- 64
       0     1734        M 0x80000660 scfgw   a3, a4                 #; a3  = 99, a4  = 64
       0     1735        M 0x80000664 li      a3, 192                #; (wrb) a3  <-- 192
       0     1736        M 0x80000668 scfgw   a2, a3                 #; a2  = 8, a3  = 192
       0     1737        M 0x8000066c li      a2, 32                 #; (wrb) a2  <-- 32
       0     1746        M 0x80000670 scfgw   zero, a2               #; a2  = 32
       0     1747        M 0x80000674 scfgwi  a0, 896                #; a0  = 0x00100000
       0     1749        M 0x8000067c li      a0, 100                #; (wrb) a0  <-- 100
                         M 0x80000678 csrrsi  a0, ssr, 1             #; 
       0     1758        M 0x80000680 lui     a2, 0xccccd            #; (wrb) a2  <-- 0xccccd000
       0     1759        M 0x80000684 addi    a2, a2, -819           #; a2  = 0xccccd000, (wrb) a2  <-- 0xcccccccd
       0     1760        M 0x80000688 li      a3, 10                 #; (wrb) a3  <-- 10
       0     1761        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 0, a2  = 0xcccccccd
       0     1770        M 0x80000690 srli    a4, a4, 3              #; a4  = 0, (wrb) a4  <-- 0
       0     1771        M 0x80000694 mul     a4, a4, a3             #; a4  = 0, a3  = 10
       0     1774        M                                           #; (acc) a4  <-- 0x40e58733
       0     1775        M 0x80000698 sub     a4, a1, a4             #; a1  = 0, a4  = 0, (wrb) a4  <-- 0
       0     1777        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 0
       0     1778        M                                           #; (f:fpu) ft3  <-- 0.0
       0     1783        M 0x800006a4 addi    a0, a0, -1             #; a0  = 100, (wrb) a0  <-- 99
       0     1784        M 0x800006a8 addi    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     1785        M 0x800006ac bnez    a0, pc - 32            #; a0  = 99, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     1786        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 1, a2  = 0xcccccccd
       0     1789        M                                           #; (acc) a4  <-- 0x00375713
       0     1790        M 0x80000690 srli    a4, a4, 3              #; a4  = 0, (wrb) a4  <-- 0
       0     1791        M 0x80000694 mul     a4, a4, a3             #; a4  = 0, a3  = 10
       0     1794        M                                           #; (acc) a4  <-- 0x40e58733
       0     1795        M 0x80000698 sub     a4, a1, a4             #; a1  = 1, a4  = 0, (wrb) a4  <-- 1
       0     1797        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 1
       0     1798        M 0x800006a4 addi    a0, a0, -1             #; a0  = 99, (wrb) a0  <-- 98
                         M                                           #; (f:fpu) ft3  <-- 1.0
       0     1799        M 0x800006a8 addi    a1, a1, 1              #; a1  = 1, (wrb) a1  <-- 2
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
       0     1800        M 0x800006ac bnez    a0, pc - 32            #; a0  = 98, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 1.0
       0     1801        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 2, a2  = 0xcccccccd
       0     1804        M                                           #; (acc) a4  <-- 0x00375713
       0     1805        M 0x80000690 srli    a4, a4, 3              #; a4  = 1, (wrb) a4  <-- 0
       0     1806        M 0x80000694 mul     a4, a4, a3             #; a4  = 0, a3  = 10
       0     1809        M                                           #; (acc) a4  <-- 0x40e58733
       0     1810        M 0x80000698 sub     a4, a1, a4             #; a1  = 2, a4  = 0, (wrb) a4  <-- 2
       0     1812        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 2
       0     1813        M 0x800006a4 addi    a0, a0, -1             #; a0  = 98, (wrb) a0  <-- 97
                         M                                           #; (f:fpu) ft3  <-- 2.0
       0     1814        M 0x800006a8 addi    a1, a1, 1              #; a1  = 2, (wrb) a1  <-- 3
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
       0     1815        M 0x800006ac bnez    a0, pc - 32            #; a0  = 97, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 2.0
       0     1816        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 3, a2  = 0xcccccccd
       0     1819        M                                           #; (acc) a4  <-- 0x00375713
       0     1820        M 0x80000690 srli    a4, a4, 3              #; a4  = 2, (wrb) a4  <-- 0
       0     1821        M 0x80000694 mul     a4, a4, a3             #; a4  = 0, a3  = 10
       0     1824        M                                           #; (acc) a4  <-- 0x40e58733
       0     1825        M 0x80000698 sub     a4, a1, a4             #; a1  = 3, a4  = 0, (wrb) a4  <-- 3
       0     1827        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 3
       0     1828        M 0x800006a4 addi    a0, a0, -1             #; a0  = 97, (wrb) a0  <-- 96
                         M                                           #; (f:fpu) ft3  <-- 3.0
       0     1829        M 0x800006a8 addi    a1, a1, 1              #; a1  = 3, (wrb) a1  <-- 4
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
       0     1830        M 0x800006ac bnez    a0, pc - 32            #; a0  = 96, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 3.0
       0     1831        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 4, a2  = 0xcccccccd
       0     1834        M                                           #; (acc) a4  <-- 0x00375713
       0     1835        M 0x80000690 srli    a4, a4, 3              #; a4  = 3, (wrb) a4  <-- 0
       0     1836        M 0x80000694 mul     a4, a4, a3             #; a4  = 0, a3  = 10
       0     1839        M                                           #; (acc) a4  <-- 0x40e58733
       0     1840        M 0x80000698 sub     a4, a1, a4             #; a1  = 4, a4  = 0, (wrb) a4  <-- 4
       0     1842        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 4
       0     1843        M 0x800006a4 addi    a0, a0, -1             #; a0  = 96, (wrb) a0  <-- 95
                         M                                           #; (f:fpu) ft3  <-- 4.0
       0     1844        M 0x800006a8 addi    a1, a1, 1              #; a1  = 4, (wrb) a1  <-- 5
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
       0     1845        M 0x800006ac bnez    a0, pc - 32            #; a0  = 95, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 4.0
       0     1846        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 5, a2  = 0xcccccccd
       0     1849        M                                           #; (acc) a4  <-- 0x00375713
       0     1850        M 0x80000690 srli    a4, a4, 3              #; a4  = 4, (wrb) a4  <-- 0
       0     1851        M 0x80000694 mul     a4, a4, a3             #; a4  = 0, a3  = 10
       0     1854        M                                           #; (acc) a4  <-- 0x40e58733
       0     1855        M 0x80000698 sub     a4, a1, a4             #; a1  = 5, a4  = 0, (wrb) a4  <-- 5
       0     1857        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 5
       0     1858        M 0x800006a4 addi    a0, a0, -1             #; a0  = 95, (wrb) a0  <-- 94
                         M                                           #; (f:fpu) ft3  <-- 5.0
       0     1859        M 0x800006a8 addi    a1, a1, 1              #; a1  = 5, (wrb) a1  <-- 6
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
       0     1860        M 0x800006ac bnez    a0, pc - 32            #; a0  = 94, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 5.0
       0     1861        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 6, a2  = 0xcccccccd
       0     1864        M                                           #; (acc) a4  <-- 0x00375713
       0     1865        M 0x80000690 srli    a4, a4, 3              #; a4  = 4, (wrb) a4  <-- 0
       0     1866        M 0x80000694 mul     a4, a4, a3             #; a4  = 0, a3  = 10
       0     1869        M                                           #; (acc) a4  <-- 0x40e58733
       0     1870        M 0x80000698 sub     a4, a1, a4             #; a1  = 6, a4  = 0, (wrb) a4  <-- 6
       0     1872        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 6
       0     1873        M 0x800006a4 addi    a0, a0, -1             #; a0  = 94, (wrb) a0  <-- 93
                         M                                           #; (f:fpu) ft3  <-- 6.0
       0     1874        M 0x800006a8 addi    a1, a1, 1              #; a1  = 6, (wrb) a1  <-- 7
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
       0     1875        M 0x800006ac bnez    a0, pc - 32            #; a0  = 93, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 6.0
       0     1876        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 7, a2  = 0xcccccccd
       0     1879        M                                           #; (acc) a4  <-- 0x00375713
       0     1880        M 0x80000690 srli    a4, a4, 3              #; a4  = 5, (wrb) a4  <-- 0
       0     1881        M 0x80000694 mul     a4, a4, a3             #; a4  = 0, a3  = 10
       0     1884        M                                           #; (acc) a4  <-- 0x40e58733
       0     1885        M 0x80000698 sub     a4, a1, a4             #; a1  = 7, a4  = 0, (wrb) a4  <-- 7
       0     1887        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 7
       0     1888        M 0x800006a4 addi    a0, a0, -1             #; a0  = 93, (wrb) a0  <-- 92
                         M                                           #; (f:fpu) ft3  <-- 7.0
       0     1889        M 0x800006a8 addi    a1, a1, 1              #; a1  = 7, (wrb) a1  <-- 8
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
       0     1890        M 0x800006ac bnez    a0, pc - 32            #; a0  = 92, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 7.0
       0     1891        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 8, a2  = 0xcccccccd
       0     1894        M                                           #; (acc) a4  <-- 0x00375713
       0     1895        M 0x80000690 srli    a4, a4, 3              #; a4  = 6, (wrb) a4  <-- 0
       0     1896        M 0x80000694 mul     a4, a4, a3             #; a4  = 0, a3  = 10
       0     1899        M                                           #; (acc) a4  <-- 0x40e58733
       0     1900        M 0x80000698 sub     a4, a1, a4             #; a1  = 8, a4  = 0, (wrb) a4  <-- 8
       0     1902        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 8
       0     1903        M 0x800006a4 addi    a0, a0, -1             #; a0  = 92, (wrb) a0  <-- 91
                         M                                           #; (f:fpu) ft3  <-- 8.0
       0     1904        M 0x800006a8 addi    a1, a1, 1              #; a1  = 8, (wrb) a1  <-- 9
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
       0     1905        M 0x800006ac bnez    a0, pc - 32            #; a0  = 91, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 8.0
       0     1906        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 9, a2  = 0xcccccccd
       0     1909        M                                           #; (acc) a4  <-- 0x00375713
       0     1910        M 0x80000690 srli    a4, a4, 3              #; a4  = 7, (wrb) a4  <-- 0
       0     1911        M 0x80000694 mul     a4, a4, a3             #; a4  = 0, a3  = 10
       0     1914        M                                           #; (acc) a4  <-- 0x40e58733
       0     1915        M 0x80000698 sub     a4, a1, a4             #; a1  = 9, a4  = 0, (wrb) a4  <-- 9
       0     1917        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 9
       0     1918        M 0x800006a4 addi    a0, a0, -1             #; a0  = 91, (wrb) a0  <-- 90
                         M                                           #; (f:fpu) ft3  <-- 9.0
       0     1919        M 0x800006a8 addi    a1, a1, 1              #; a1  = 9, (wrb) a1  <-- 10
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
       0     1920        M 0x800006ac bnez    a0, pc - 32            #; a0  = 90, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 9.0
       0     1921        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 10, a2  = 0xcccccccd
       0     1924        M                                           #; (acc) a4  <-- 0x00375713
       0     1925        M 0x80000690 srli    a4, a4, 3              #; a4  = 8, (wrb) a4  <-- 1
       0     1926        M 0x80000694 mul     a4, a4, a3             #; a4  = 1, a3  = 10
       0     1929        M                                           #; (acc) a4  <-- 0x40e58733
       0     1930        M 0x80000698 sub     a4, a1, a4             #; a1  = 10, a4  = 10, (wrb) a4  <-- 0
       0     1932        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 0
       0     1933        M 0x800006a4 addi    a0, a0, -1             #; a0  = 90, (wrb) a0  <-- 89
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     1934        M 0x800006a8 addi    a1, a1, 1              #; a1  = 10, (wrb) a1  <-- 11
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     1935        M 0x800006ac bnez    a0, pc - 32            #; a0  = 89, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     1936        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 11, a2  = 0xcccccccd
       0     1939        M                                           #; (acc) a4  <-- 0x00375713
       0     1940        M 0x80000690 srli    a4, a4, 3              #; a4  = 8, (wrb) a4  <-- 1
       0     1941        M 0x80000694 mul     a4, a4, a3             #; a4  = 1, a3  = 10
       0     1944        M                                           #; (acc) a4  <-- 0x40e58733
       0     1945        M 0x80000698 sub     a4, a1, a4             #; a1  = 11, a4  = 10, (wrb) a4  <-- 1
       0     1947        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 1
       0     1948        M 0x800006a4 addi    a0, a0, -1             #; a0  = 89, (wrb) a0  <-- 88
                         M                                           #; (f:fpu) ft3  <-- 1.0
       0     1949        M 0x800006a8 addi    a1, a1, 1              #; a1  = 11, (wrb) a1  <-- 12
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
       0     1950        M 0x800006ac bnez    a0, pc - 32            #; a0  = 88, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 1.0
       0     1951        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 12, a2  = 0xcccccccd
       0     1954        M                                           #; (acc) a4  <-- 0x00375713
       0     1955        M 0x80000690 srli    a4, a4, 3              #; a4  = 9, (wrb) a4  <-- 1
       0     1956        M 0x80000694 mul     a4, a4, a3             #; a4  = 1, a3  = 10
       0     1959        M                                           #; (acc) a4  <-- 0x40e58733
       0     1960        M 0x80000698 sub     a4, a1, a4             #; a1  = 12, a4  = 10, (wrb) a4  <-- 2
       0     1962        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 2
       0     1963        M 0x800006a4 addi    a0, a0, -1             #; a0  = 88, (wrb) a0  <-- 87
                         M                                           #; (f:fpu) ft3  <-- 2.0
       0     1964        M 0x800006a8 addi    a1, a1, 1              #; a1  = 12, (wrb) a1  <-- 13
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
       0     1965        M 0x800006ac bnez    a0, pc - 32            #; a0  = 87, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 2.0
       0     1966        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 13, a2  = 0xcccccccd
       0     1969        M                                           #; (acc) a4  <-- 0x00375713
       0     1970        M 0x80000690 srli    a4, a4, 3              #; a4  = 10, (wrb) a4  <-- 1
       0     1971        M 0x80000694 mul     a4, a4, a3             #; a4  = 1, a3  = 10
       0     1974        M                                           #; (acc) a4  <-- 0x40e58733
       0     1975        M 0x80000698 sub     a4, a1, a4             #; a1  = 13, a4  = 10, (wrb) a4  <-- 3
       0     1977        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 3
       0     1978        M 0x800006a4 addi    a0, a0, -1             #; a0  = 87, (wrb) a0  <-- 86
                         M                                           #; (f:fpu) ft3  <-- 3.0
       0     1979        M 0x800006a8 addi    a1, a1, 1              #; a1  = 13, (wrb) a1  <-- 14
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
       0     1980        M 0x800006ac bnez    a0, pc - 32            #; a0  = 86, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 3.0
       0     1981        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 14, a2  = 0xcccccccd
       0     1984        M                                           #; (acc) a4  <-- 0x00375713
       0     1985        M 0x80000690 srli    a4, a4, 3              #; a4  = 11, (wrb) a4  <-- 1
       0     1986        M 0x80000694 mul     a4, a4, a3             #; a4  = 1, a3  = 10
       0     1989        M                                           #; (acc) a4  <-- 0x40e58733
       0     1990        M 0x80000698 sub     a4, a1, a4             #; a1  = 14, a4  = 10, (wrb) a4  <-- 4
       0     1992        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 4
       0     1993        M 0x800006a4 addi    a0, a0, -1             #; a0  = 86, (wrb) a0  <-- 85
                         M                                           #; (f:fpu) ft3  <-- 4.0
       0     1994        M 0x800006a8 addi    a1, a1, 1              #; a1  = 14, (wrb) a1  <-- 15
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
       0     1995        M 0x800006ac bnez    a0, pc - 32            #; a0  = 85, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 4.0
       0     1996        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 15, a2  = 0xcccccccd
       0     1999        M                                           #; (acc) a4  <-- 0x00375713
       0     2000        M 0x80000690 srli    a4, a4, 3              #; a4  = 12, (wrb) a4  <-- 1
       0     2001        M 0x80000694 mul     a4, a4, a3             #; a4  = 1, a3  = 10
       0     2004        M                                           #; (acc) a4  <-- 0x40e58733
       0     2005        M 0x80000698 sub     a4, a1, a4             #; a1  = 15, a4  = 10, (wrb) a4  <-- 5
       0     2007        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 5
       0     2008        M 0x800006a4 addi    a0, a0, -1             #; a0  = 85, (wrb) a0  <-- 84
                         M                                           #; (f:fpu) ft3  <-- 5.0
       0     2009        M 0x800006a8 addi    a1, a1, 1              #; a1  = 15, (wrb) a1  <-- 16
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
       0     2010        M 0x800006ac bnez    a0, pc - 32            #; a0  = 84, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 5.0
       0     2011        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 16, a2  = 0xcccccccd
       0     2014        M                                           #; (acc) a4  <-- 0x00375713
       0     2015        M 0x80000690 srli    a4, a4, 3              #; a4  = 12, (wrb) a4  <-- 1
       0     2016        M 0x80000694 mul     a4, a4, a3             #; a4  = 1, a3  = 10
       0     2019        M                                           #; (acc) a4  <-- 0x40e58733
       0     2020        M 0x80000698 sub     a4, a1, a4             #; a1  = 16, a4  = 10, (wrb) a4  <-- 6
       0     2022        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 6
       0     2023        M 0x800006a4 addi    a0, a0, -1             #; a0  = 84, (wrb) a0  <-- 83
                         M                                           #; (f:fpu) ft3  <-- 6.0
       0     2024        M 0x800006a8 addi    a1, a1, 1              #; a1  = 16, (wrb) a1  <-- 17
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
       0     2025        M 0x800006ac bnez    a0, pc - 32            #; a0  = 83, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 6.0
       0     2026        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 17, a2  = 0xcccccccd
       0     2029        M                                           #; (acc) a4  <-- 0x00375713
       0     2030        M 0x80000690 srli    a4, a4, 3              #; a4  = 13, (wrb) a4  <-- 1
       0     2031        M 0x80000694 mul     a4, a4, a3             #; a4  = 1, a3  = 10
       0     2034        M                                           #; (acc) a4  <-- 0x40e58733
       0     2035        M 0x80000698 sub     a4, a1, a4             #; a1  = 17, a4  = 10, (wrb) a4  <-- 7
       0     2037        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 7
       0     2038        M 0x800006a4 addi    a0, a0, -1             #; a0  = 83, (wrb) a0  <-- 82
                         M                                           #; (f:fpu) ft3  <-- 7.0
       0     2039        M 0x800006a8 addi    a1, a1, 1              #; a1  = 17, (wrb) a1  <-- 18
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
       0     2040        M 0x800006ac bnez    a0, pc - 32            #; a0  = 82, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 7.0
       0     2041        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 18, a2  = 0xcccccccd
       0     2044        M                                           #; (acc) a4  <-- 0x00375713
       0     2045        M 0x80000690 srli    a4, a4, 3              #; a4  = 14, (wrb) a4  <-- 1
       0     2046        M 0x80000694 mul     a4, a4, a3             #; a4  = 1, a3  = 10
       0     2049        M                                           #; (acc) a4  <-- 0x40e58733
       0     2050        M 0x80000698 sub     a4, a1, a4             #; a1  = 18, a4  = 10, (wrb) a4  <-- 8
       0     2052        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 8
       0     2053        M 0x800006a4 addi    a0, a0, -1             #; a0  = 82, (wrb) a0  <-- 81
                         M                                           #; (f:fpu) ft3  <-- 8.0
       0     2054        M 0x800006a8 addi    a1, a1, 1              #; a1  = 18, (wrb) a1  <-- 19
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
       0     2055        M 0x800006ac bnez    a0, pc - 32            #; a0  = 81, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 8.0
       0     2056        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 19, a2  = 0xcccccccd
       0     2059        M                                           #; (acc) a4  <-- 0x00375713
       0     2060        M 0x80000690 srli    a4, a4, 3              #; a4  = 15, (wrb) a4  <-- 1
       0     2061        M 0x80000694 mul     a4, a4, a3             #; a4  = 1, a3  = 10
       0     2064        M                                           #; (acc) a4  <-- 0x40e58733
       0     2065        M 0x80000698 sub     a4, a1, a4             #; a1  = 19, a4  = 10, (wrb) a4  <-- 9
       0     2067        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 9
       0     2068        M 0x800006a4 addi    a0, a0, -1             #; a0  = 81, (wrb) a0  <-- 80
                         M                                           #; (f:fpu) ft3  <-- 9.0
       0     2069        M 0x800006a8 addi    a1, a1, 1              #; a1  = 19, (wrb) a1  <-- 20
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
       0     2070        M 0x800006ac bnez    a0, pc - 32            #; a0  = 80, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 9.0
       0     2071        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 20, a2  = 0xcccccccd
       0     2074        M                                           #; (acc) a4  <-- 0x00375713
       0     2075        M 0x80000690 srli    a4, a4, 3              #; a4  = 16, (wrb) a4  <-- 2
       0     2076        M 0x80000694 mul     a4, a4, a3             #; a4  = 2, a3  = 10
       0     2079        M                                           #; (acc) a4  <-- 0x40e58733
       0     2080        M 0x80000698 sub     a4, a1, a4             #; a1  = 20, a4  = 20, (wrb) a4  <-- 0
       0     2082        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 0
       0     2083        M 0x800006a4 addi    a0, a0, -1             #; a0  = 80, (wrb) a0  <-- 79
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     2084        M 0x800006a8 addi    a1, a1, 1              #; a1  = 20, (wrb) a1  <-- 21
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     2085        M 0x800006ac bnez    a0, pc - 32            #; a0  = 79, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     2086        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 21, a2  = 0xcccccccd
       0     2089        M                                           #; (acc) a4  <-- 0x00375713
       0     2090        M 0x80000690 srli    a4, a4, 3              #; a4  = 16, (wrb) a4  <-- 2
       0     2091        M 0x80000694 mul     a4, a4, a3             #; a4  = 2, a3  = 10
       0     2094        M                                           #; (acc) a4  <-- 0x40e58733
       0     2095        M 0x80000698 sub     a4, a1, a4             #; a1  = 21, a4  = 20, (wrb) a4  <-- 1
       0     2097        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 1
       0     2098        M 0x800006a4 addi    a0, a0, -1             #; a0  = 79, (wrb) a0  <-- 78
                         M                                           #; (f:fpu) ft3  <-- 1.0
       0     2099        M 0x800006a8 addi    a1, a1, 1              #; a1  = 21, (wrb) a1  <-- 22
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
       0     2100        M 0x800006ac bnez    a0, pc - 32            #; a0  = 78, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 1.0
       0     2101        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 22, a2  = 0xcccccccd
       0     2104        M                                           #; (acc) a4  <-- 0x00375713
       0     2105        M 0x80000690 srli    a4, a4, 3              #; a4  = 17, (wrb) a4  <-- 2
       0     2106        M 0x80000694 mul     a4, a4, a3             #; a4  = 2, a3  = 10
       0     2109        M                                           #; (acc) a4  <-- 0x40e58733
       0     2110        M 0x80000698 sub     a4, a1, a4             #; a1  = 22, a4  = 20, (wrb) a4  <-- 2
       0     2112        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 2
       0     2113        M 0x800006a4 addi    a0, a0, -1             #; a0  = 78, (wrb) a0  <-- 77
                         M                                           #; (f:fpu) ft3  <-- 2.0
       0     2114        M 0x800006a8 addi    a1, a1, 1              #; a1  = 22, (wrb) a1  <-- 23
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
       0     2115        M 0x800006ac bnez    a0, pc - 32            #; a0  = 77, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 2.0
       0     2116        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 23, a2  = 0xcccccccd
       0     2119        M                                           #; (acc) a4  <-- 0x00375713
       0     2120        M 0x80000690 srli    a4, a4, 3              #; a4  = 18, (wrb) a4  <-- 2
       0     2121        M 0x80000694 mul     a4, a4, a3             #; a4  = 2, a3  = 10
       0     2124        M                                           #; (acc) a4  <-- 0x40e58733
       0     2125        M 0x80000698 sub     a4, a1, a4             #; a1  = 23, a4  = 20, (wrb) a4  <-- 3
       0     2127        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 3
       0     2128        M 0x800006a4 addi    a0, a0, -1             #; a0  = 77, (wrb) a0  <-- 76
                         M                                           #; (f:fpu) ft3  <-- 3.0
       0     2129        M 0x800006a8 addi    a1, a1, 1              #; a1  = 23, (wrb) a1  <-- 24
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
       0     2130        M 0x800006ac bnez    a0, pc - 32            #; a0  = 76, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 3.0
       0     2131        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 24, a2  = 0xcccccccd
       0     2134        M                                           #; (acc) a4  <-- 0x00375713
       0     2135        M 0x80000690 srli    a4, a4, 3              #; a4  = 19, (wrb) a4  <-- 2
       0     2136        M 0x80000694 mul     a4, a4, a3             #; a4  = 2, a3  = 10
       0     2139        M                                           #; (acc) a4  <-- 0x40e58733
       0     2140        M 0x80000698 sub     a4, a1, a4             #; a1  = 24, a4  = 20, (wrb) a4  <-- 4
       0     2142        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 4
       0     2143        M 0x800006a4 addi    a0, a0, -1             #; a0  = 76, (wrb) a0  <-- 75
                         M                                           #; (f:fpu) ft3  <-- 4.0
       0     2144        M 0x800006a8 addi    a1, a1, 1              #; a1  = 24, (wrb) a1  <-- 25
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
       0     2145        M 0x800006ac bnez    a0, pc - 32            #; a0  = 75, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 4.0
       0     2146        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 25, a2  = 0xcccccccd
       0     2149        M                                           #; (acc) a4  <-- 0x00375713
       0     2150        M 0x80000690 srli    a4, a4, 3              #; a4  = 20, (wrb) a4  <-- 2
       0     2151        M 0x80000694 mul     a4, a4, a3             #; a4  = 2, a3  = 10
       0     2154        M                                           #; (acc) a4  <-- 0x40e58733
       0     2155        M 0x80000698 sub     a4, a1, a4             #; a1  = 25, a4  = 20, (wrb) a4  <-- 5
       0     2157        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 5
       0     2158        M 0x800006a4 addi    a0, a0, -1             #; a0  = 75, (wrb) a0  <-- 74
                         M                                           #; (f:fpu) ft3  <-- 5.0
       0     2159        M 0x800006a8 addi    a1, a1, 1              #; a1  = 25, (wrb) a1  <-- 26
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
       0     2160        M 0x800006ac bnez    a0, pc - 32            #; a0  = 74, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 5.0
       0     2161        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 26, a2  = 0xcccccccd
       0     2164        M                                           #; (acc) a4  <-- 0x00375713
       0     2165        M 0x80000690 srli    a4, a4, 3              #; a4  = 20, (wrb) a4  <-- 2
       0     2166        M 0x80000694 mul     a4, a4, a3             #; a4  = 2, a3  = 10
       0     2169        M                                           #; (acc) a4  <-- 0x40e58733
       0     2170        M 0x80000698 sub     a4, a1, a4             #; a1  = 26, a4  = 20, (wrb) a4  <-- 6
       0     2172        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 6
       0     2173        M 0x800006a4 addi    a0, a0, -1             #; a0  = 74, (wrb) a0  <-- 73
                         M                                           #; (f:fpu) ft3  <-- 6.0
       0     2174        M 0x800006a8 addi    a1, a1, 1              #; a1  = 26, (wrb) a1  <-- 27
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
       0     2175        M 0x800006ac bnez    a0, pc - 32            #; a0  = 73, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 6.0
       0     2176        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 27, a2  = 0xcccccccd
       0     2179        M                                           #; (acc) a4  <-- 0x00375713
       0     2180        M 0x80000690 srli    a4, a4, 3              #; a4  = 21, (wrb) a4  <-- 2
       0     2181        M 0x80000694 mul     a4, a4, a3             #; a4  = 2, a3  = 10
       0     2184        M                                           #; (acc) a4  <-- 0x40e58733
       0     2185        M 0x80000698 sub     a4, a1, a4             #; a1  = 27, a4  = 20, (wrb) a4  <-- 7
       0     2187        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 7
       0     2188        M 0x800006a4 addi    a0, a0, -1             #; a0  = 73, (wrb) a0  <-- 72
                         M                                           #; (f:fpu) ft3  <-- 7.0
       0     2189        M 0x800006a8 addi    a1, a1, 1              #; a1  = 27, (wrb) a1  <-- 28
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
       0     2190        M 0x800006ac bnez    a0, pc - 32            #; a0  = 72, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 7.0
       0     2191        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 28, a2  = 0xcccccccd
       0     2194        M                                           #; (acc) a4  <-- 0x00375713
       0     2195        M 0x80000690 srli    a4, a4, 3              #; a4  = 22, (wrb) a4  <-- 2
       0     2196        M 0x80000694 mul     a4, a4, a3             #; a4  = 2, a3  = 10
       0     2199        M                                           #; (acc) a4  <-- 0x40e58733
       0     2200        M 0x80000698 sub     a4, a1, a4             #; a1  = 28, a4  = 20, (wrb) a4  <-- 8
       0     2202        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 8
       0     2203        M 0x800006a4 addi    a0, a0, -1             #; a0  = 72, (wrb) a0  <-- 71
                         M                                           #; (f:fpu) ft3  <-- 8.0
       0     2204        M 0x800006a8 addi    a1, a1, 1              #; a1  = 28, (wrb) a1  <-- 29
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
       0     2205        M 0x800006ac bnez    a0, pc - 32            #; a0  = 71, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 8.0
       0     2206        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 29, a2  = 0xcccccccd
       0     2209        M                                           #; (acc) a4  <-- 0x00375713
       0     2210        M 0x80000690 srli    a4, a4, 3              #; a4  = 23, (wrb) a4  <-- 2
       0     2211        M 0x80000694 mul     a4, a4, a3             #; a4  = 2, a3  = 10
       0     2214        M                                           #; (acc) a4  <-- 0x40e58733
       0     2215        M 0x80000698 sub     a4, a1, a4             #; a1  = 29, a4  = 20, (wrb) a4  <-- 9
       0     2217        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 9
       0     2218        M 0x800006a4 addi    a0, a0, -1             #; a0  = 71, (wrb) a0  <-- 70
                         M                                           #; (f:fpu) ft3  <-- 9.0
       0     2219        M 0x800006a8 addi    a1, a1, 1              #; a1  = 29, (wrb) a1  <-- 30
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
       0     2220        M 0x800006ac bnez    a0, pc - 32            #; a0  = 70, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 9.0
       0     2221        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 30, a2  = 0xcccccccd
       0     2224        M                                           #; (acc) a4  <-- 0x00375713
       0     2225        M 0x80000690 srli    a4, a4, 3              #; a4  = 24, (wrb) a4  <-- 3
       0     2226        M 0x80000694 mul     a4, a4, a3             #; a4  = 3, a3  = 10
       0     2229        M                                           #; (acc) a4  <-- 0x40e58733
       0     2230        M 0x80000698 sub     a4, a1, a4             #; a1  = 30, a4  = 30, (wrb) a4  <-- 0
       0     2232        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 0
       0     2233        M 0x800006a4 addi    a0, a0, -1             #; a0  = 70, (wrb) a0  <-- 69
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     2234        M 0x800006a8 addi    a1, a1, 1              #; a1  = 30, (wrb) a1  <-- 31
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     2235        M 0x800006ac bnez    a0, pc - 32            #; a0  = 69, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     2236        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 31, a2  = 0xcccccccd
       0     2239        M                                           #; (acc) a4  <-- 0x00375713
       0     2240        M 0x80000690 srli    a4, a4, 3              #; a4  = 24, (wrb) a4  <-- 3
       0     2241        M 0x80000694 mul     a4, a4, a3             #; a4  = 3, a3  = 10
       0     2244        M                                           #; (acc) a4  <-- 0x40e58733
       0     2245        M 0x80000698 sub     a4, a1, a4             #; a1  = 31, a4  = 30, (wrb) a4  <-- 1
       0     2247        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 1
       0     2248        M 0x800006a4 addi    a0, a0, -1             #; a0  = 69, (wrb) a0  <-- 68
                         M                                           #; (f:fpu) ft3  <-- 1.0
       0     2249        M 0x800006a8 addi    a1, a1, 1              #; a1  = 31, (wrb) a1  <-- 32
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
       0     2250        M 0x800006ac bnez    a0, pc - 32            #; a0  = 68, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 1.0
       0     2251        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 32, a2  = 0xcccccccd
       0     2254        M                                           #; (acc) a4  <-- 0x00375713
       0     2255        M 0x80000690 srli    a4, a4, 3              #; a4  = 25, (wrb) a4  <-- 3
       0     2256        M 0x80000694 mul     a4, a4, a3             #; a4  = 3, a3  = 10
       0     2259        M                                           #; (acc) a4  <-- 0x40e58733
       0     2260        M 0x80000698 sub     a4, a1, a4             #; a1  = 32, a4  = 30, (wrb) a4  <-- 2
       0     2262        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 2
       0     2263        M 0x800006a4 addi    a0, a0, -1             #; a0  = 68, (wrb) a0  <-- 67
                         M                                           #; (f:fpu) ft3  <-- 2.0
       0     2264        M 0x800006a8 addi    a1, a1, 1              #; a1  = 32, (wrb) a1  <-- 33
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
       0     2265        M 0x800006ac bnez    a0, pc - 32            #; a0  = 67, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 2.0
       0     2266        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 33, a2  = 0xcccccccd
       0     2269        M                                           #; (acc) a4  <-- 0x00375713
       0     2270        M 0x80000690 srli    a4, a4, 3              #; a4  = 26, (wrb) a4  <-- 3
       0     2271        M 0x80000694 mul     a4, a4, a3             #; a4  = 3, a3  = 10
       0     2274        M                                           #; (acc) a4  <-- 0x40e58733
       0     2275        M 0x80000698 sub     a4, a1, a4             #; a1  = 33, a4  = 30, (wrb) a4  <-- 3
       0     2277        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 3
       0     2278        M 0x800006a4 addi    a0, a0, -1             #; a0  = 67, (wrb) a0  <-- 66
                         M                                           #; (f:fpu) ft3  <-- 3.0
       0     2279        M 0x800006a8 addi    a1, a1, 1              #; a1  = 33, (wrb) a1  <-- 34
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
       0     2280        M 0x800006ac bnez    a0, pc - 32            #; a0  = 66, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 3.0
       0     2281        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 34, a2  = 0xcccccccd
       0     2284        M                                           #; (acc) a4  <-- 0x00375713
       0     2285        M 0x80000690 srli    a4, a4, 3              #; a4  = 27, (wrb) a4  <-- 3
       0     2286        M 0x80000694 mul     a4, a4, a3             #; a4  = 3, a3  = 10
       0     2289        M                                           #; (acc) a4  <-- 0x40e58733
       0     2290        M 0x80000698 sub     a4, a1, a4             #; a1  = 34, a4  = 30, (wrb) a4  <-- 4
       0     2292        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 4
       0     2293        M 0x800006a4 addi    a0, a0, -1             #; a0  = 66, (wrb) a0  <-- 65
                         M                                           #; (f:fpu) ft3  <-- 4.0
       0     2294        M 0x800006a8 addi    a1, a1, 1              #; a1  = 34, (wrb) a1  <-- 35
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
       0     2295        M 0x800006ac bnez    a0, pc - 32            #; a0  = 65, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 4.0
       0     2296        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 35, a2  = 0xcccccccd
       0     2299        M                                           #; (acc) a4  <-- 0x00375713
       0     2300        M 0x80000690 srli    a4, a4, 3              #; a4  = 28, (wrb) a4  <-- 3
       0     2301        M 0x80000694 mul     a4, a4, a3             #; a4  = 3, a3  = 10
       0     2304        M                                           #; (acc) a4  <-- 0x40e58733
       0     2305        M 0x80000698 sub     a4, a1, a4             #; a1  = 35, a4  = 30, (wrb) a4  <-- 5
       0     2307        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 5
       0     2308        M 0x800006a4 addi    a0, a0, -1             #; a0  = 65, (wrb) a0  <-- 64
                         M                                           #; (f:fpu) ft3  <-- 5.0
       0     2309        M 0x800006a8 addi    a1, a1, 1              #; a1  = 35, (wrb) a1  <-- 36
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
       0     2310        M 0x800006ac bnez    a0, pc - 32            #; a0  = 64, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 5.0
       0     2311        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 36, a2  = 0xcccccccd
       0     2314        M                                           #; (acc) a4  <-- 0x00375713
       0     2315        M 0x80000690 srli    a4, a4, 3              #; a4  = 28, (wrb) a4  <-- 3
       0     2316        M 0x80000694 mul     a4, a4, a3             #; a4  = 3, a3  = 10
       0     2319        M                                           #; (acc) a4  <-- 0x40e58733
       0     2320        M 0x80000698 sub     a4, a1, a4             #; a1  = 36, a4  = 30, (wrb) a4  <-- 6
       0     2322        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 6
       0     2323        M 0x800006a4 addi    a0, a0, -1             #; a0  = 64, (wrb) a0  <-- 63
                         M                                           #; (f:fpu) ft3  <-- 6.0
       0     2324        M 0x800006a8 addi    a1, a1, 1              #; a1  = 36, (wrb) a1  <-- 37
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
       0     2325        M 0x800006ac bnez    a0, pc - 32            #; a0  = 63, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 6.0
       0     2326        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 37, a2  = 0xcccccccd
       0     2329        M                                           #; (acc) a4  <-- 0x00375713
       0     2330        M 0x80000690 srli    a4, a4, 3              #; a4  = 29, (wrb) a4  <-- 3
       0     2331        M 0x80000694 mul     a4, a4, a3             #; a4  = 3, a3  = 10
       0     2334        M                                           #; (acc) a4  <-- 0x40e58733
       0     2335        M 0x80000698 sub     a4, a1, a4             #; a1  = 37, a4  = 30, (wrb) a4  <-- 7
       0     2337        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 7
       0     2338        M 0x800006a4 addi    a0, a0, -1             #; a0  = 63, (wrb) a0  <-- 62
                         M                                           #; (f:fpu) ft3  <-- 7.0
       0     2339        M 0x800006a8 addi    a1, a1, 1              #; a1  = 37, (wrb) a1  <-- 38
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
       0     2340        M 0x800006ac bnez    a0, pc - 32            #; a0  = 62, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 7.0
       0     2341        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 38, a2  = 0xcccccccd
       0     2344        M                                           #; (acc) a4  <-- 0x00375713
       0     2345        M 0x80000690 srli    a4, a4, 3              #; a4  = 30, (wrb) a4  <-- 3
       0     2346        M 0x80000694 mul     a4, a4, a3             #; a4  = 3, a3  = 10
       0     2349        M                                           #; (acc) a4  <-- 0x40e58733
       0     2350        M 0x80000698 sub     a4, a1, a4             #; a1  = 38, a4  = 30, (wrb) a4  <-- 8
       0     2352        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 8
       0     2353        M 0x800006a4 addi    a0, a0, -1             #; a0  = 62, (wrb) a0  <-- 61
                         M                                           #; (f:fpu) ft3  <-- 8.0
       0     2354        M 0x800006a8 addi    a1, a1, 1              #; a1  = 38, (wrb) a1  <-- 39
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
       0     2355        M 0x800006ac bnez    a0, pc - 32            #; a0  = 61, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 8.0
       0     2356        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 39, a2  = 0xcccccccd
       0     2359        M                                           #; (acc) a4  <-- 0x00375713
       0     2360        M 0x80000690 srli    a4, a4, 3              #; a4  = 31, (wrb) a4  <-- 3
       0     2361        M 0x80000694 mul     a4, a4, a3             #; a4  = 3, a3  = 10
       0     2364        M                                           #; (acc) a4  <-- 0x40e58733
       0     2365        M 0x80000698 sub     a4, a1, a4             #; a1  = 39, a4  = 30, (wrb) a4  <-- 9
       0     2367        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 9
       0     2368        M 0x800006a4 addi    a0, a0, -1             #; a0  = 61, (wrb) a0  <-- 60
                         M                                           #; (f:fpu) ft3  <-- 9.0
       0     2369        M 0x800006a8 addi    a1, a1, 1              #; a1  = 39, (wrb) a1  <-- 40
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
       0     2370        M 0x800006ac bnez    a0, pc - 32            #; a0  = 60, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 9.0
       0     2371        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 40, a2  = 0xcccccccd
       0     2374        M                                           #; (acc) a4  <-- 0x00375713
       0     2375        M 0x80000690 srli    a4, a4, 3              #; a4  = 32, (wrb) a4  <-- 4
       0     2376        M 0x80000694 mul     a4, a4, a3             #; a4  = 4, a3  = 10
       0     2379        M                                           #; (acc) a4  <-- 0x40e58733
       0     2380        M 0x80000698 sub     a4, a1, a4             #; a1  = 40, a4  = 40, (wrb) a4  <-- 0
       0     2382        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 0
       0     2383        M 0x800006a4 addi    a0, a0, -1             #; a0  = 60, (wrb) a0  <-- 59
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     2384        M 0x800006a8 addi    a1, a1, 1              #; a1  = 40, (wrb) a1  <-- 41
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     2385        M 0x800006ac bnez    a0, pc - 32            #; a0  = 59, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     2386        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 41, a2  = 0xcccccccd
       0     2389        M                                           #; (acc) a4  <-- 0x00375713
       0     2390        M 0x80000690 srli    a4, a4, 3              #; a4  = 32, (wrb) a4  <-- 4
       0     2391        M 0x80000694 mul     a4, a4, a3             #; a4  = 4, a3  = 10
       0     2394        M                                           #; (acc) a4  <-- 0x40e58733
       0     2395        M 0x80000698 sub     a4, a1, a4             #; a1  = 41, a4  = 40, (wrb) a4  <-- 1
       0     2397        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 1
       0     2398        M 0x800006a4 addi    a0, a0, -1             #; a0  = 59, (wrb) a0  <-- 58
                         M                                           #; (f:fpu) ft3  <-- 1.0
       0     2399        M 0x800006a8 addi    a1, a1, 1              #; a1  = 41, (wrb) a1  <-- 42
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
       0     2400        M 0x800006ac bnez    a0, pc - 32            #; a0  = 58, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 1.0
       0     2401        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 42, a2  = 0xcccccccd
       0     2404        M                                           #; (acc) a4  <-- 0x00375713
       0     2405        M 0x80000690 srli    a4, a4, 3              #; a4  = 33, (wrb) a4  <-- 4
       0     2406        M 0x80000694 mul     a4, a4, a3             #; a4  = 4, a3  = 10
       0     2409        M                                           #; (acc) a4  <-- 0x40e58733
       0     2410        M 0x80000698 sub     a4, a1, a4             #; a1  = 42, a4  = 40, (wrb) a4  <-- 2
       0     2412        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 2
       0     2413        M 0x800006a4 addi    a0, a0, -1             #; a0  = 58, (wrb) a0  <-- 57
                         M                                           #; (f:fpu) ft3  <-- 2.0
       0     2414        M 0x800006a8 addi    a1, a1, 1              #; a1  = 42, (wrb) a1  <-- 43
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
       0     2415        M 0x800006ac bnez    a0, pc - 32            #; a0  = 57, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 2.0
       0     2416        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 43, a2  = 0xcccccccd
       0     2419        M                                           #; (acc) a4  <-- 0x00375713
       0     2420        M 0x80000690 srli    a4, a4, 3              #; a4  = 34, (wrb) a4  <-- 4
       0     2421        M 0x80000694 mul     a4, a4, a3             #; a4  = 4, a3  = 10
       0     2424        M                                           #; (acc) a4  <-- 0x40e58733
       0     2425        M 0x80000698 sub     a4, a1, a4             #; a1  = 43, a4  = 40, (wrb) a4  <-- 3
       0     2427        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 3
       0     2428        M 0x800006a4 addi    a0, a0, -1             #; a0  = 57, (wrb) a0  <-- 56
                         M                                           #; (f:fpu) ft3  <-- 3.0
       0     2429        M 0x800006a8 addi    a1, a1, 1              #; a1  = 43, (wrb) a1  <-- 44
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
       0     2430        M 0x800006ac bnez    a0, pc - 32            #; a0  = 56, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 3.0
       0     2431        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 44, a2  = 0xcccccccd
       0     2434        M                                           #; (acc) a4  <-- 0x00375713
       0     2435        M 0x80000690 srli    a4, a4, 3              #; a4  = 35, (wrb) a4  <-- 4
       0     2436        M 0x80000694 mul     a4, a4, a3             #; a4  = 4, a3  = 10
       0     2439        M                                           #; (acc) a4  <-- 0x40e58733
       0     2440        M 0x80000698 sub     a4, a1, a4             #; a1  = 44, a4  = 40, (wrb) a4  <-- 4
       0     2442        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 4
       0     2443        M 0x800006a4 addi    a0, a0, -1             #; a0  = 56, (wrb) a0  <-- 55
                         M                                           #; (f:fpu) ft3  <-- 4.0
       0     2444        M 0x800006a8 addi    a1, a1, 1              #; a1  = 44, (wrb) a1  <-- 45
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
       0     2445        M 0x800006ac bnez    a0, pc - 32            #; a0  = 55, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 4.0
       0     2446        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 45, a2  = 0xcccccccd
       0     2449        M                                           #; (acc) a4  <-- 0x00375713
       0     2450        M 0x80000690 srli    a4, a4, 3              #; a4  = 36, (wrb) a4  <-- 4
       0     2451        M 0x80000694 mul     a4, a4, a3             #; a4  = 4, a3  = 10
       0     2454        M                                           #; (acc) a4  <-- 0x40e58733
       0     2455        M 0x80000698 sub     a4, a1, a4             #; a1  = 45, a4  = 40, (wrb) a4  <-- 5
       0     2457        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 5
       0     2458        M 0x800006a4 addi    a0, a0, -1             #; a0  = 55, (wrb) a0  <-- 54
                         M                                           #; (f:fpu) ft3  <-- 5.0
       0     2459        M 0x800006a8 addi    a1, a1, 1              #; a1  = 45, (wrb) a1  <-- 46
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
       0     2460        M 0x800006ac bnez    a0, pc - 32            #; a0  = 54, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 5.0
       0     2461        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 46, a2  = 0xcccccccd
       0     2464        M                                           #; (acc) a4  <-- 0x00375713
       0     2465        M 0x80000690 srli    a4, a4, 3              #; a4  = 36, (wrb) a4  <-- 4
       0     2466        M 0x80000694 mul     a4, a4, a3             #; a4  = 4, a3  = 10
       0     2469        M                                           #; (acc) a4  <-- 0x40e58733
       0     2470        M 0x80000698 sub     a4, a1, a4             #; a1  = 46, a4  = 40, (wrb) a4  <-- 6
       0     2472        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 6
       0     2473        M 0x800006a4 addi    a0, a0, -1             #; a0  = 54, (wrb) a0  <-- 53
                         M                                           #; (f:fpu) ft3  <-- 6.0
       0     2474        M 0x800006a8 addi    a1, a1, 1              #; a1  = 46, (wrb) a1  <-- 47
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
       0     2475        M 0x800006ac bnez    a0, pc - 32            #; a0  = 53, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 6.0
       0     2476        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 47, a2  = 0xcccccccd
       0     2479        M                                           #; (acc) a4  <-- 0x00375713
       0     2480        M 0x80000690 srli    a4, a4, 3              #; a4  = 37, (wrb) a4  <-- 4
       0     2481        M 0x80000694 mul     a4, a4, a3             #; a4  = 4, a3  = 10
       0     2484        M                                           #; (acc) a4  <-- 0x40e58733
       0     2485        M 0x80000698 sub     a4, a1, a4             #; a1  = 47, a4  = 40, (wrb) a4  <-- 7
       0     2487        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 7
       0     2488        M 0x800006a4 addi    a0, a0, -1             #; a0  = 53, (wrb) a0  <-- 52
                         M                                           #; (f:fpu) ft3  <-- 7.0
       0     2489        M 0x800006a8 addi    a1, a1, 1              #; a1  = 47, (wrb) a1  <-- 48
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
       0     2490        M 0x800006ac bnez    a0, pc - 32            #; a0  = 52, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 7.0
       0     2491        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 48, a2  = 0xcccccccd
       0     2494        M                                           #; (acc) a4  <-- 0x00375713
       0     2495        M 0x80000690 srli    a4, a4, 3              #; a4  = 38, (wrb) a4  <-- 4
       0     2496        M 0x80000694 mul     a4, a4, a3             #; a4  = 4, a3  = 10
       0     2499        M                                           #; (acc) a4  <-- 0x40e58733
       0     2500        M 0x80000698 sub     a4, a1, a4             #; a1  = 48, a4  = 40, (wrb) a4  <-- 8
       0     2502        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 8
       0     2503        M 0x800006a4 addi    a0, a0, -1             #; a0  = 52, (wrb) a0  <-- 51
                         M                                           #; (f:fpu) ft3  <-- 8.0
       0     2504        M 0x800006a8 addi    a1, a1, 1              #; a1  = 48, (wrb) a1  <-- 49
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
       0     2505        M 0x800006ac bnez    a0, pc - 32            #; a0  = 51, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 8.0
       0     2506        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 49, a2  = 0xcccccccd
       0     2509        M                                           #; (acc) a4  <-- 0x00375713
       0     2510        M 0x80000690 srli    a4, a4, 3              #; a4  = 39, (wrb) a4  <-- 4
       0     2511        M 0x80000694 mul     a4, a4, a3             #; a4  = 4, a3  = 10
       0     2514        M                                           #; (acc) a4  <-- 0x40e58733
       0     2515        M 0x80000698 sub     a4, a1, a4             #; a1  = 49, a4  = 40, (wrb) a4  <-- 9
       0     2517        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 9
       0     2518        M 0x800006a4 addi    a0, a0, -1             #; a0  = 51, (wrb) a0  <-- 50
                         M                                           #; (f:fpu) ft3  <-- 9.0
       0     2519        M 0x800006a8 addi    a1, a1, 1              #; a1  = 49, (wrb) a1  <-- 50
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
       0     2520        M 0x800006ac bnez    a0, pc - 32            #; a0  = 50, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 9.0
       0     2521        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 50, a2  = 0xcccccccd
       0     2524        M                                           #; (acc) a4  <-- 0x00375713
       0     2525        M 0x80000690 srli    a4, a4, 3              #; a4  = 40, (wrb) a4  <-- 5
       0     2526        M 0x80000694 mul     a4, a4, a3             #; a4  = 5, a3  = 10
       0     2529        M                                           #; (acc) a4  <-- 0x40e58733
       0     2530        M 0x80000698 sub     a4, a1, a4             #; a1  = 50, a4  = 50, (wrb) a4  <-- 0
       0     2532        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 0
       0     2533        M 0x800006a4 addi    a0, a0, -1             #; a0  = 50, (wrb) a0  <-- 49
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     2534        M 0x800006a8 addi    a1, a1, 1              #; a1  = 50, (wrb) a1  <-- 51
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     2535        M 0x800006ac bnez    a0, pc - 32            #; a0  = 49, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     2536        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 51, a2  = 0xcccccccd
       0     2539        M                                           #; (acc) a4  <-- 0x00375713
       0     2540        M 0x80000690 srli    a4, a4, 3              #; a4  = 40, (wrb) a4  <-- 5
       0     2541        M 0x80000694 mul     a4, a4, a3             #; a4  = 5, a3  = 10
       0     2544        M                                           #; (acc) a4  <-- 0x40e58733
       0     2545        M 0x80000698 sub     a4, a1, a4             #; a1  = 51, a4  = 50, (wrb) a4  <-- 1
       0     2547        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 1
       0     2548        M 0x800006a4 addi    a0, a0, -1             #; a0  = 49, (wrb) a0  <-- 48
                         M                                           #; (f:fpu) ft3  <-- 1.0
       0     2549        M 0x800006a8 addi    a1, a1, 1              #; a1  = 51, (wrb) a1  <-- 52
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
       0     2550        M 0x800006ac bnez    a0, pc - 32            #; a0  = 48, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 1.0
       0     2551        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 52, a2  = 0xcccccccd
       0     2554        M                                           #; (acc) a4  <-- 0x00375713
       0     2555        M 0x80000690 srli    a4, a4, 3              #; a4  = 41, (wrb) a4  <-- 5
       0     2556        M 0x80000694 mul     a4, a4, a3             #; a4  = 5, a3  = 10
       0     2559        M                                           #; (acc) a4  <-- 0x40e58733
       0     2560        M 0x80000698 sub     a4, a1, a4             #; a1  = 52, a4  = 50, (wrb) a4  <-- 2
       0     2562        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 2
       0     2563        M 0x800006a4 addi    a0, a0, -1             #; a0  = 48, (wrb) a0  <-- 47
                         M                                           #; (f:fpu) ft3  <-- 2.0
       0     2564        M 0x800006a8 addi    a1, a1, 1              #; a1  = 52, (wrb) a1  <-- 53
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
       0     2565        M 0x800006ac bnez    a0, pc - 32            #; a0  = 47, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 2.0
       0     2566        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 53, a2  = 0xcccccccd
       0     2569        M                                           #; (acc) a4  <-- 0x00375713
       0     2570        M 0x80000690 srli    a4, a4, 3              #; a4  = 42, (wrb) a4  <-- 5
       0     2571        M 0x80000694 mul     a4, a4, a3             #; a4  = 5, a3  = 10
       0     2574        M                                           #; (acc) a4  <-- 0x40e58733
       0     2575        M 0x80000698 sub     a4, a1, a4             #; a1  = 53, a4  = 50, (wrb) a4  <-- 3
       0     2577        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 3
       0     2578        M 0x800006a4 addi    a0, a0, -1             #; a0  = 47, (wrb) a0  <-- 46
                         M                                           #; (f:fpu) ft3  <-- 3.0
       0     2579        M 0x800006a8 addi    a1, a1, 1              #; a1  = 53, (wrb) a1  <-- 54
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
       0     2580        M 0x800006ac bnez    a0, pc - 32            #; a0  = 46, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 3.0
       0     2581        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 54, a2  = 0xcccccccd
       0     2584        M                                           #; (acc) a4  <-- 0x00375713
       0     2585        M 0x80000690 srli    a4, a4, 3              #; a4  = 43, (wrb) a4  <-- 5
       0     2586        M 0x80000694 mul     a4, a4, a3             #; a4  = 5, a3  = 10
       0     2589        M                                           #; (acc) a4  <-- 0x40e58733
       0     2590        M 0x80000698 sub     a4, a1, a4             #; a1  = 54, a4  = 50, (wrb) a4  <-- 4
       0     2592        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 4
       0     2593        M 0x800006a4 addi    a0, a0, -1             #; a0  = 46, (wrb) a0  <-- 45
                         M                                           #; (f:fpu) ft3  <-- 4.0
       0     2594        M 0x800006a8 addi    a1, a1, 1              #; a1  = 54, (wrb) a1  <-- 55
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
       0     2595        M 0x800006ac bnez    a0, pc - 32            #; a0  = 45, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 4.0
       0     2596        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 55, a2  = 0xcccccccd
       0     2599        M                                           #; (acc) a4  <-- 0x00375713
       0     2600        M 0x80000690 srli    a4, a4, 3              #; a4  = 44, (wrb) a4  <-- 5
       0     2601        M 0x80000694 mul     a4, a4, a3             #; a4  = 5, a3  = 10
       0     2604        M                                           #; (acc) a4  <-- 0x40e58733
       0     2605        M 0x80000698 sub     a4, a1, a4             #; a1  = 55, a4  = 50, (wrb) a4  <-- 5
       0     2607        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 5
       0     2608        M 0x800006a4 addi    a0, a0, -1             #; a0  = 45, (wrb) a0  <-- 44
                         M                                           #; (f:fpu) ft3  <-- 5.0
       0     2609        M 0x800006a8 addi    a1, a1, 1              #; a1  = 55, (wrb) a1  <-- 56
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
       0     2610        M 0x800006ac bnez    a0, pc - 32            #; a0  = 44, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 5.0
       0     2611        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 56, a2  = 0xcccccccd
       0     2614        M                                           #; (acc) a4  <-- 0x00375713
       0     2615        M 0x80000690 srli    a4, a4, 3              #; a4  = 44, (wrb) a4  <-- 5
       0     2616        M 0x80000694 mul     a4, a4, a3             #; a4  = 5, a3  = 10
       0     2619        M                                           #; (acc) a4  <-- 0x40e58733
       0     2620        M 0x80000698 sub     a4, a1, a4             #; a1  = 56, a4  = 50, (wrb) a4  <-- 6
       0     2622        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 6
       0     2623        M 0x800006a4 addi    a0, a0, -1             #; a0  = 44, (wrb) a0  <-- 43
                         M                                           #; (f:fpu) ft3  <-- 6.0
       0     2624        M 0x800006a8 addi    a1, a1, 1              #; a1  = 56, (wrb) a1  <-- 57
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
       0     2625        M 0x800006ac bnez    a0, pc - 32            #; a0  = 43, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 6.0
       0     2626        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 57, a2  = 0xcccccccd
       0     2629        M                                           #; (acc) a4  <-- 0x00375713
       0     2630        M 0x80000690 srli    a4, a4, 3              #; a4  = 45, (wrb) a4  <-- 5
       0     2631        M 0x80000694 mul     a4, a4, a3             #; a4  = 5, a3  = 10
       0     2634        M                                           #; (acc) a4  <-- 0x40e58733
       0     2635        M 0x80000698 sub     a4, a1, a4             #; a1  = 57, a4  = 50, (wrb) a4  <-- 7
       0     2637        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 7
       0     2638        M 0x800006a4 addi    a0, a0, -1             #; a0  = 43, (wrb) a0  <-- 42
                         M                                           #; (f:fpu) ft3  <-- 7.0
       0     2639        M 0x800006a8 addi    a1, a1, 1              #; a1  = 57, (wrb) a1  <-- 58
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
       0     2640        M 0x800006ac bnez    a0, pc - 32            #; a0  = 42, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 7.0
       0     2641        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 58, a2  = 0xcccccccd
       0     2644        M                                           #; (acc) a4  <-- 0x00375713
       0     2645        M 0x80000690 srli    a4, a4, 3              #; a4  = 46, (wrb) a4  <-- 5
       0     2646        M 0x80000694 mul     a4, a4, a3             #; a4  = 5, a3  = 10
       0     2649        M                                           #; (acc) a4  <-- 0x40e58733
       0     2650        M 0x80000698 sub     a4, a1, a4             #; a1  = 58, a4  = 50, (wrb) a4  <-- 8
       0     2652        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 8
       0     2653        M 0x800006a4 addi    a0, a0, -1             #; a0  = 42, (wrb) a0  <-- 41
                         M                                           #; (f:fpu) ft3  <-- 8.0
       0     2654        M 0x800006a8 addi    a1, a1, 1              #; a1  = 58, (wrb) a1  <-- 59
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
       0     2655        M 0x800006ac bnez    a0, pc - 32            #; a0  = 41, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 8.0
       0     2656        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 59, a2  = 0xcccccccd
       0     2659        M                                           #; (acc) a4  <-- 0x00375713
       0     2660        M 0x80000690 srli    a4, a4, 3              #; a4  = 47, (wrb) a4  <-- 5
       0     2661        M 0x80000694 mul     a4, a4, a3             #; a4  = 5, a3  = 10
       0     2664        M                                           #; (acc) a4  <-- 0x40e58733
       0     2665        M 0x80000698 sub     a4, a1, a4             #; a1  = 59, a4  = 50, (wrb) a4  <-- 9
       0     2667        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 9
       0     2668        M 0x800006a4 addi    a0, a0, -1             #; a0  = 41, (wrb) a0  <-- 40
                         M                                           #; (f:fpu) ft3  <-- 9.0
       0     2669        M 0x800006a8 addi    a1, a1, 1              #; a1  = 59, (wrb) a1  <-- 60
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
       0     2670        M 0x800006ac bnez    a0, pc - 32            #; a0  = 40, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 9.0
       0     2671        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 60, a2  = 0xcccccccd
       0     2674        M                                           #; (acc) a4  <-- 0x00375713
       0     2675        M 0x80000690 srli    a4, a4, 3              #; a4  = 48, (wrb) a4  <-- 6
       0     2676        M 0x80000694 mul     a4, a4, a3             #; a4  = 6, a3  = 10
       0     2679        M                                           #; (acc) a4  <-- 0x40e58733
       0     2680        M 0x80000698 sub     a4, a1, a4             #; a1  = 60, a4  = 60, (wrb) a4  <-- 0
       0     2682        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 0
       0     2683        M 0x800006a4 addi    a0, a0, -1             #; a0  = 40, (wrb) a0  <-- 39
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     2684        M 0x800006a8 addi    a1, a1, 1              #; a1  = 60, (wrb) a1  <-- 61
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     2685        M 0x800006ac bnez    a0, pc - 32            #; a0  = 39, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     2686        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 61, a2  = 0xcccccccd
       0     2689        M                                           #; (acc) a4  <-- 0x00375713
       0     2690        M 0x80000690 srli    a4, a4, 3              #; a4  = 48, (wrb) a4  <-- 6
       0     2691        M 0x80000694 mul     a4, a4, a3             #; a4  = 6, a3  = 10
       0     2694        M                                           #; (acc) a4  <-- 0x40e58733
       0     2695        M 0x80000698 sub     a4, a1, a4             #; a1  = 61, a4  = 60, (wrb) a4  <-- 1
       0     2697        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 1
       0     2698        M 0x800006a4 addi    a0, a0, -1             #; a0  = 39, (wrb) a0  <-- 38
                         M                                           #; (f:fpu) ft3  <-- 1.0
       0     2699        M 0x800006a8 addi    a1, a1, 1              #; a1  = 61, (wrb) a1  <-- 62
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
       0     2700        M 0x800006ac bnez    a0, pc - 32            #; a0  = 38, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 1.0
       0     2701        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 62, a2  = 0xcccccccd
       0     2704        M                                           #; (acc) a4  <-- 0x00375713
       0     2705        M 0x80000690 srli    a4, a4, 3              #; a4  = 49, (wrb) a4  <-- 6
       0     2706        M 0x80000694 mul     a4, a4, a3             #; a4  = 6, a3  = 10
       0     2709        M                                           #; (acc) a4  <-- 0x40e58733
       0     2710        M 0x80000698 sub     a4, a1, a4             #; a1  = 62, a4  = 60, (wrb) a4  <-- 2
       0     2712        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 2
       0     2713        M 0x800006a4 addi    a0, a0, -1             #; a0  = 38, (wrb) a0  <-- 37
                         M                                           #; (f:fpu) ft3  <-- 2.0
       0     2714        M 0x800006a8 addi    a1, a1, 1              #; a1  = 62, (wrb) a1  <-- 63
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
       0     2715        M 0x800006ac bnez    a0, pc - 32            #; a0  = 37, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 2.0
       0     2716        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 63, a2  = 0xcccccccd
       0     2719        M                                           #; (acc) a4  <-- 0x00375713
       0     2720        M 0x80000690 srli    a4, a4, 3              #; a4  = 50, (wrb) a4  <-- 6
       0     2721        M 0x80000694 mul     a4, a4, a3             #; a4  = 6, a3  = 10
       0     2724        M                                           #; (acc) a4  <-- 0x40e58733
       0     2725        M 0x80000698 sub     a4, a1, a4             #; a1  = 63, a4  = 60, (wrb) a4  <-- 3
       0     2727        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 3
       0     2728        M 0x800006a4 addi    a0, a0, -1             #; a0  = 37, (wrb) a0  <-- 36
                         M                                           #; (f:fpu) ft3  <-- 3.0
       0     2729        M 0x800006a8 addi    a1, a1, 1              #; a1  = 63, (wrb) a1  <-- 64
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
       0     2730        M 0x800006ac bnez    a0, pc - 32            #; a0  = 36, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 3.0
       0     2731        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 64, a2  = 0xcccccccd
       0     2734        M                                           #; (acc) a4  <-- 0x00375713
       0     2735        M 0x80000690 srli    a4, a4, 3              #; a4  = 51, (wrb) a4  <-- 6
       0     2736        M 0x80000694 mul     a4, a4, a3             #; a4  = 6, a3  = 10
       0     2739        M                                           #; (acc) a4  <-- 0x40e58733
       0     2740        M 0x80000698 sub     a4, a1, a4             #; a1  = 64, a4  = 60, (wrb) a4  <-- 4
       0     2742        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 4
       0     2743        M 0x800006a4 addi    a0, a0, -1             #; a0  = 36, (wrb) a0  <-- 35
                         M                                           #; (f:fpu) ft3  <-- 4.0
       0     2744        M 0x800006a8 addi    a1, a1, 1              #; a1  = 64, (wrb) a1  <-- 65
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
       0     2745        M 0x800006ac bnez    a0, pc - 32            #; a0  = 35, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 4.0
       0     2746        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 65, a2  = 0xcccccccd
       0     2749        M                                           #; (acc) a4  <-- 0x00375713
       0     2750        M 0x80000690 srli    a4, a4, 3              #; a4  = 52, (wrb) a4  <-- 6
       0     2751        M 0x80000694 mul     a4, a4, a3             #; a4  = 6, a3  = 10
       0     2754        M                                           #; (acc) a4  <-- 0x40e58733
       0     2755        M 0x80000698 sub     a4, a1, a4             #; a1  = 65, a4  = 60, (wrb) a4  <-- 5
       0     2757        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 5
       0     2758        M 0x800006a4 addi    a0, a0, -1             #; a0  = 35, (wrb) a0  <-- 34
                         M                                           #; (f:fpu) ft3  <-- 5.0
       0     2759        M 0x800006a8 addi    a1, a1, 1              #; a1  = 65, (wrb) a1  <-- 66
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
       0     2760        M 0x800006ac bnez    a0, pc - 32            #; a0  = 34, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 5.0
       0     2761        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 66, a2  = 0xcccccccd
       0     2764        M                                           #; (acc) a4  <-- 0x00375713
       0     2765        M 0x80000690 srli    a4, a4, 3              #; a4  = 52, (wrb) a4  <-- 6
       0     2766        M 0x80000694 mul     a4, a4, a3             #; a4  = 6, a3  = 10
       0     2769        M                                           #; (acc) a4  <-- 0x40e58733
       0     2770        M 0x80000698 sub     a4, a1, a4             #; a1  = 66, a4  = 60, (wrb) a4  <-- 6
       0     2772        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 6
       0     2773        M 0x800006a4 addi    a0, a0, -1             #; a0  = 34, (wrb) a0  <-- 33
                         M                                           #; (f:fpu) ft3  <-- 6.0
       0     2774        M 0x800006a8 addi    a1, a1, 1              #; a1  = 66, (wrb) a1  <-- 67
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
       0     2775        M 0x800006ac bnez    a0, pc - 32            #; a0  = 33, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 6.0
       0     2776        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 67, a2  = 0xcccccccd
       0     2779        M                                           #; (acc) a4  <-- 0x00375713
       0     2780        M 0x80000690 srli    a4, a4, 3              #; a4  = 53, (wrb) a4  <-- 6
       0     2781        M 0x80000694 mul     a4, a4, a3             #; a4  = 6, a3  = 10
       0     2784        M                                           #; (acc) a4  <-- 0x40e58733
       0     2785        M 0x80000698 sub     a4, a1, a4             #; a1  = 67, a4  = 60, (wrb) a4  <-- 7
       0     2787        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 7
       0     2788        M 0x800006a4 addi    a0, a0, -1             #; a0  = 33, (wrb) a0  <-- 32
                         M                                           #; (f:fpu) ft3  <-- 7.0
       0     2789        M 0x800006a8 addi    a1, a1, 1              #; a1  = 67, (wrb) a1  <-- 68
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
       0     2790        M 0x800006ac bnez    a0, pc - 32            #; a0  = 32, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 7.0
       0     2791        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 68, a2  = 0xcccccccd
       0     2794        M                                           #; (acc) a4  <-- 0x00375713
       0     2795        M 0x80000690 srli    a4, a4, 3              #; a4  = 54, (wrb) a4  <-- 6
       0     2796        M 0x80000694 mul     a4, a4, a3             #; a4  = 6, a3  = 10
       0     2799        M                                           #; (acc) a4  <-- 0x40e58733
       0     2800        M 0x80000698 sub     a4, a1, a4             #; a1  = 68, a4  = 60, (wrb) a4  <-- 8
       0     2802        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 8
       0     2803        M 0x800006a4 addi    a0, a0, -1             #; a0  = 32, (wrb) a0  <-- 31
                         M                                           #; (f:fpu) ft3  <-- 8.0
       0     2804        M 0x800006a8 addi    a1, a1, 1              #; a1  = 68, (wrb) a1  <-- 69
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
       0     2805        M 0x800006ac bnez    a0, pc - 32            #; a0  = 31, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 8.0
       0     2806        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 69, a2  = 0xcccccccd
       0     2809        M                                           #; (acc) a4  <-- 0x00375713
       0     2810        M 0x80000690 srli    a4, a4, 3              #; a4  = 55, (wrb) a4  <-- 6
       0     2811        M 0x80000694 mul     a4, a4, a3             #; a4  = 6, a3  = 10
       0     2814        M                                           #; (acc) a4  <-- 0x40e58733
       0     2815        M 0x80000698 sub     a4, a1, a4             #; a1  = 69, a4  = 60, (wrb) a4  <-- 9
       0     2817        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 9
       0     2818        M 0x800006a4 addi    a0, a0, -1             #; a0  = 31, (wrb) a0  <-- 30
                         M                                           #; (f:fpu) ft3  <-- 9.0
       0     2819        M 0x800006a8 addi    a1, a1, 1              #; a1  = 69, (wrb) a1  <-- 70
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
       0     2820        M 0x800006ac bnez    a0, pc - 32            #; a0  = 30, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 9.0
       0     2821        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 70, a2  = 0xcccccccd
       0     2824        M                                           #; (acc) a4  <-- 0x00375713
       0     2825        M 0x80000690 srli    a4, a4, 3              #; a4  = 56, (wrb) a4  <-- 7
       0     2826        M 0x80000694 mul     a4, a4, a3             #; a4  = 7, a3  = 10
       0     2829        M                                           #; (acc) a4  <-- 0x40e58733
       0     2830        M 0x80000698 sub     a4, a1, a4             #; a1  = 70, a4  = 70, (wrb) a4  <-- 0
       0     2832        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 0
       0     2833        M 0x800006a4 addi    a0, a0, -1             #; a0  = 30, (wrb) a0  <-- 29
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     2834        M 0x800006a8 addi    a1, a1, 1              #; a1  = 70, (wrb) a1  <-- 71
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     2835        M 0x800006ac bnez    a0, pc - 32            #; a0  = 29, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     2836        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 71, a2  = 0xcccccccd
       0     2839        M                                           #; (acc) a4  <-- 0x00375713
       0     2840        M 0x80000690 srli    a4, a4, 3              #; a4  = 56, (wrb) a4  <-- 7
       0     2841        M 0x80000694 mul     a4, a4, a3             #; a4  = 7, a3  = 10
       0     2844        M                                           #; (acc) a4  <-- 0x40e58733
       0     2845        M 0x80000698 sub     a4, a1, a4             #; a1  = 71, a4  = 70, (wrb) a4  <-- 1
       0     2847        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 1
       0     2848        M 0x800006a4 addi    a0, a0, -1             #; a0  = 29, (wrb) a0  <-- 28
                         M                                           #; (f:fpu) ft3  <-- 1.0
       0     2849        M 0x800006a8 addi    a1, a1, 1              #; a1  = 71, (wrb) a1  <-- 72
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
       0     2850        M 0x800006ac bnez    a0, pc - 32            #; a0  = 28, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 1.0
       0     2851        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 72, a2  = 0xcccccccd
       0     2854        M                                           #; (acc) a4  <-- 0x00375713
       0     2855        M 0x80000690 srli    a4, a4, 3              #; a4  = 57, (wrb) a4  <-- 7
       0     2856        M 0x80000694 mul     a4, a4, a3             #; a4  = 7, a3  = 10
       0     2859        M                                           #; (acc) a4  <-- 0x40e58733
       0     2860        M 0x80000698 sub     a4, a1, a4             #; a1  = 72, a4  = 70, (wrb) a4  <-- 2
       0     2862        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 2
       0     2863        M 0x800006a4 addi    a0, a0, -1             #; a0  = 28, (wrb) a0  <-- 27
                         M                                           #; (f:fpu) ft3  <-- 2.0
       0     2864        M 0x800006a8 addi    a1, a1, 1              #; a1  = 72, (wrb) a1  <-- 73
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
       0     2865        M 0x800006ac bnez    a0, pc - 32            #; a0  = 27, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 2.0
       0     2866        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 73, a2  = 0xcccccccd
       0     2869        M                                           #; (acc) a4  <-- 0x00375713
       0     2870        M 0x80000690 srli    a4, a4, 3              #; a4  = 58, (wrb) a4  <-- 7
       0     2871        M 0x80000694 mul     a4, a4, a3             #; a4  = 7, a3  = 10
       0     2874        M                                           #; (acc) a4  <-- 0x40e58733
       0     2875        M 0x80000698 sub     a4, a1, a4             #; a1  = 73, a4  = 70, (wrb) a4  <-- 3
       0     2877        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 3
       0     2878        M 0x800006a4 addi    a0, a0, -1             #; a0  = 27, (wrb) a0  <-- 26
                         M                                           #; (f:fpu) ft3  <-- 3.0
       0     2879        M 0x800006a8 addi    a1, a1, 1              #; a1  = 73, (wrb) a1  <-- 74
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
       0     2880        M 0x800006ac bnez    a0, pc - 32            #; a0  = 26, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 3.0
       0     2881        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 74, a2  = 0xcccccccd
       0     2884        M                                           #; (acc) a4  <-- 0x00375713
       0     2885        M 0x80000690 srli    a4, a4, 3              #; a4  = 59, (wrb) a4  <-- 7
       0     2886        M 0x80000694 mul     a4, a4, a3             #; a4  = 7, a3  = 10
       0     2889        M                                           #; (acc) a4  <-- 0x40e58733
       0     2890        M 0x80000698 sub     a4, a1, a4             #; a1  = 74, a4  = 70, (wrb) a4  <-- 4
       0     2892        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 4
       0     2893        M 0x800006a4 addi    a0, a0, -1             #; a0  = 26, (wrb) a0  <-- 25
                         M                                           #; (f:fpu) ft3  <-- 4.0
       0     2894        M 0x800006a8 addi    a1, a1, 1              #; a1  = 74, (wrb) a1  <-- 75
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
       0     2895        M 0x800006ac bnez    a0, pc - 32            #; a0  = 25, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 4.0
       0     2896        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 75, a2  = 0xcccccccd
       0     2899        M                                           #; (acc) a4  <-- 0x00375713
       0     2900        M 0x80000690 srli    a4, a4, 3              #; a4  = 60, (wrb) a4  <-- 7
       0     2901        M 0x80000694 mul     a4, a4, a3             #; a4  = 7, a3  = 10
       0     2904        M                                           #; (acc) a4  <-- 0x40e58733
       0     2905        M 0x80000698 sub     a4, a1, a4             #; a1  = 75, a4  = 70, (wrb) a4  <-- 5
       0     2907        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 5
       0     2908        M 0x800006a4 addi    a0, a0, -1             #; a0  = 25, (wrb) a0  <-- 24
                         M                                           #; (f:fpu) ft3  <-- 5.0
       0     2909        M 0x800006a8 addi    a1, a1, 1              #; a1  = 75, (wrb) a1  <-- 76
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
       0     2910        M 0x800006ac bnez    a0, pc - 32            #; a0  = 24, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 5.0
       0     2911        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 76, a2  = 0xcccccccd
       0     2914        M                                           #; (acc) a4  <-- 0x00375713
       0     2915        M 0x80000690 srli    a4, a4, 3              #; a4  = 60, (wrb) a4  <-- 7
       0     2916        M 0x80000694 mul     a4, a4, a3             #; a4  = 7, a3  = 10
       0     2919        M                                           #; (acc) a4  <-- 0x40e58733
       0     2920        M 0x80000698 sub     a4, a1, a4             #; a1  = 76, a4  = 70, (wrb) a4  <-- 6
       0     2922        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 6
       0     2923        M 0x800006a4 addi    a0, a0, -1             #; a0  = 24, (wrb) a0  <-- 23
                         M                                           #; (f:fpu) ft3  <-- 6.0
       0     2924        M 0x800006a8 addi    a1, a1, 1              #; a1  = 76, (wrb) a1  <-- 77
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
       0     2925        M 0x800006ac bnez    a0, pc - 32            #; a0  = 23, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 6.0
       0     2926        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 77, a2  = 0xcccccccd
       0     2929        M                                           #; (acc) a4  <-- 0x00375713
       0     2930        M 0x80000690 srli    a4, a4, 3              #; a4  = 61, (wrb) a4  <-- 7
       0     2931        M 0x80000694 mul     a4, a4, a3             #; a4  = 7, a3  = 10
       0     2934        M                                           #; (acc) a4  <-- 0x40e58733
       0     2935        M 0x80000698 sub     a4, a1, a4             #; a1  = 77, a4  = 70, (wrb) a4  <-- 7
       0     2937        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 7
       0     2938        M 0x800006a4 addi    a0, a0, -1             #; a0  = 23, (wrb) a0  <-- 22
                         M                                           #; (f:fpu) ft3  <-- 7.0
       0     2939        M 0x800006a8 addi    a1, a1, 1              #; a1  = 77, (wrb) a1  <-- 78
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
       0     2940        M 0x800006ac bnez    a0, pc - 32            #; a0  = 22, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 7.0
       0     2941        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 78, a2  = 0xcccccccd
       0     2944        M                                           #; (acc) a4  <-- 0x00375713
       0     2945        M 0x80000690 srli    a4, a4, 3              #; a4  = 62, (wrb) a4  <-- 7
       0     2946        M 0x80000694 mul     a4, a4, a3             #; a4  = 7, a3  = 10
       0     2949        M                                           #; (acc) a4  <-- 0x40e58733
       0     2950        M 0x80000698 sub     a4, a1, a4             #; a1  = 78, a4  = 70, (wrb) a4  <-- 8
       0     2952        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 8
       0     2953        M 0x800006a4 addi    a0, a0, -1             #; a0  = 22, (wrb) a0  <-- 21
                         M                                           #; (f:fpu) ft3  <-- 8.0
       0     2954        M 0x800006a8 addi    a1, a1, 1              #; a1  = 78, (wrb) a1  <-- 79
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
       0     2955        M 0x800006ac bnez    a0, pc - 32            #; a0  = 21, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 8.0
       0     2956        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 79, a2  = 0xcccccccd
       0     2959        M                                           #; (acc) a4  <-- 0x00375713
       0     2960        M 0x80000690 srli    a4, a4, 3              #; a4  = 63, (wrb) a4  <-- 7
       0     2961        M 0x80000694 mul     a4, a4, a3             #; a4  = 7, a3  = 10
       0     2964        M                                           #; (acc) a4  <-- 0x40e58733
       0     2965        M 0x80000698 sub     a4, a1, a4             #; a1  = 79, a4  = 70, (wrb) a4  <-- 9
       0     2967        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 9
       0     2968        M 0x800006a4 addi    a0, a0, -1             #; a0  = 21, (wrb) a0  <-- 20
                         M                                           #; (f:fpu) ft3  <-- 9.0
       0     2969        M 0x800006a8 addi    a1, a1, 1              #; a1  = 79, (wrb) a1  <-- 80
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
       0     2970        M 0x800006ac bnez    a0, pc - 32            #; a0  = 20, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 9.0
       0     2971        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 80, a2  = 0xcccccccd
       0     2974        M                                           #; (acc) a4  <-- 0x00375713
       0     2975        M 0x80000690 srli    a4, a4, 3              #; a4  = 64, (wrb) a4  <-- 8
       0     2976        M 0x80000694 mul     a4, a4, a3             #; a4  = 8, a3  = 10
       0     2979        M                                           #; (acc) a4  <-- 0x40e58733
       0     2980        M 0x80000698 sub     a4, a1, a4             #; a1  = 80, a4  = 80, (wrb) a4  <-- 0
       0     2982        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 0
       0     2983        M 0x800006a4 addi    a0, a0, -1             #; a0  = 20, (wrb) a0  <-- 19
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     2984        M 0x800006a8 addi    a1, a1, 1              #; a1  = 80, (wrb) a1  <-- 81
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     2985        M 0x800006ac bnez    a0, pc - 32            #; a0  = 19, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     2986        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 81, a2  = 0xcccccccd
       0     2989        M                                           #; (acc) a4  <-- 0x00375713
       0     2990        M 0x80000690 srli    a4, a4, 3              #; a4  = 64, (wrb) a4  <-- 8
       0     2991        M 0x80000694 mul     a4, a4, a3             #; a4  = 8, a3  = 10
       0     2994        M                                           #; (acc) a4  <-- 0x40e58733
       0     2995        M 0x80000698 sub     a4, a1, a4             #; a1  = 81, a4  = 80, (wrb) a4  <-- 1
       0     2997        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 1
       0     2998        M 0x800006a4 addi    a0, a0, -1             #; a0  = 19, (wrb) a0  <-- 18
                         M                                           #; (f:fpu) ft3  <-- 1.0
       0     2999        M 0x800006a8 addi    a1, a1, 1              #; a1  = 81, (wrb) a1  <-- 82
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
       0     3000        M 0x800006ac bnez    a0, pc - 32            #; a0  = 18, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 1.0
       0     3001        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 82, a2  = 0xcccccccd
       0     3004        M                                           #; (acc) a4  <-- 0x00375713
       0     3005        M 0x80000690 srli    a4, a4, 3              #; a4  = 65, (wrb) a4  <-- 8
       0     3006        M 0x80000694 mul     a4, a4, a3             #; a4  = 8, a3  = 10
       0     3009        M                                           #; (acc) a4  <-- 0x40e58733
       0     3010        M 0x80000698 sub     a4, a1, a4             #; a1  = 82, a4  = 80, (wrb) a4  <-- 2
       0     3012        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 2
       0     3013        M 0x800006a4 addi    a0, a0, -1             #; a0  = 18, (wrb) a0  <-- 17
                         M                                           #; (f:fpu) ft3  <-- 2.0
       0     3014        M 0x800006a8 addi    a1, a1, 1              #; a1  = 82, (wrb) a1  <-- 83
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
       0     3015        M 0x800006ac bnez    a0, pc - 32            #; a0  = 17, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 2.0
       0     3016        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 83, a2  = 0xcccccccd
       0     3019        M                                           #; (acc) a4  <-- 0x00375713
       0     3020        M 0x80000690 srli    a4, a4, 3              #; a4  = 66, (wrb) a4  <-- 8
       0     3021        M 0x80000694 mul     a4, a4, a3             #; a4  = 8, a3  = 10
       0     3024        M                                           #; (acc) a4  <-- 0x40e58733
       0     3025        M 0x80000698 sub     a4, a1, a4             #; a1  = 83, a4  = 80, (wrb) a4  <-- 3
       0     3027        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 3
       0     3028        M 0x800006a4 addi    a0, a0, -1             #; a0  = 17, (wrb) a0  <-- 16
                         M                                           #; (f:fpu) ft3  <-- 3.0
       0     3029        M 0x800006a8 addi    a1, a1, 1              #; a1  = 83, (wrb) a1  <-- 84
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
       0     3030        M 0x800006ac bnez    a0, pc - 32            #; a0  = 16, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 3.0
       0     3031        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 84, a2  = 0xcccccccd
       0     3034        M                                           #; (acc) a4  <-- 0x00375713
       0     3035        M 0x80000690 srli    a4, a4, 3              #; a4  = 67, (wrb) a4  <-- 8
       0     3036        M 0x80000694 mul     a4, a4, a3             #; a4  = 8, a3  = 10
       0     3039        M                                           #; (acc) a4  <-- 0x40e58733
       0     3040        M 0x80000698 sub     a4, a1, a4             #; a1  = 84, a4  = 80, (wrb) a4  <-- 4
       0     3042        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 4
       0     3043        M 0x800006a4 addi    a0, a0, -1             #; a0  = 16, (wrb) a0  <-- 15
                         M                                           #; (f:fpu) ft3  <-- 4.0
       0     3044        M 0x800006a8 addi    a1, a1, 1              #; a1  = 84, (wrb) a1  <-- 85
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
       0     3045        M 0x800006ac bnez    a0, pc - 32            #; a0  = 15, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 4.0
       0     3046        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 85, a2  = 0xcccccccd
       0     3049        M                                           #; (acc) a4  <-- 0x00375713
       0     3050        M 0x80000690 srli    a4, a4, 3              #; a4  = 68, (wrb) a4  <-- 8
       0     3051        M 0x80000694 mul     a4, a4, a3             #; a4  = 8, a3  = 10
       0     3054        M                                           #; (acc) a4  <-- 0x40e58733
       0     3055        M 0x80000698 sub     a4, a1, a4             #; a1  = 85, a4  = 80, (wrb) a4  <-- 5
       0     3057        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 5
       0     3058        M 0x800006a4 addi    a0, a0, -1             #; a0  = 15, (wrb) a0  <-- 14
                         M                                           #; (f:fpu) ft3  <-- 5.0
       0     3059        M 0x800006a8 addi    a1, a1, 1              #; a1  = 85, (wrb) a1  <-- 86
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
       0     3060        M 0x800006ac bnez    a0, pc - 32            #; a0  = 14, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 5.0
       0     3061        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 86, a2  = 0xcccccccd
       0     3064        M                                           #; (acc) a4  <-- 0x00375713
       0     3065        M 0x80000690 srli    a4, a4, 3              #; a4  = 68, (wrb) a4  <-- 8
       0     3066        M 0x80000694 mul     a4, a4, a3             #; a4  = 8, a3  = 10
       0     3069        M                                           #; (acc) a4  <-- 0x40e58733
       0     3070        M 0x80000698 sub     a4, a1, a4             #; a1  = 86, a4  = 80, (wrb) a4  <-- 6
       0     3072        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 6
       0     3073        M 0x800006a4 addi    a0, a0, -1             #; a0  = 14, (wrb) a0  <-- 13
                         M                                           #; (f:fpu) ft3  <-- 6.0
       0     3074        M 0x800006a8 addi    a1, a1, 1              #; a1  = 86, (wrb) a1  <-- 87
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
       0     3075        M 0x800006ac bnez    a0, pc - 32            #; a0  = 13, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 6.0
       0     3076        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 87, a2  = 0xcccccccd
       0     3079        M                                           #; (acc) a4  <-- 0x00375713
       0     3080        M 0x80000690 srli    a4, a4, 3              #; a4  = 69, (wrb) a4  <-- 8
       0     3081        M 0x80000694 mul     a4, a4, a3             #; a4  = 8, a3  = 10
       0     3084        M                                           #; (acc) a4  <-- 0x40e58733
       0     3085        M 0x80000698 sub     a4, a1, a4             #; a1  = 87, a4  = 80, (wrb) a4  <-- 7
       0     3087        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 7
       0     3088        M 0x800006a4 addi    a0, a0, -1             #; a0  = 13, (wrb) a0  <-- 12
                         M                                           #; (f:fpu) ft3  <-- 7.0
       0     3089        M 0x800006a8 addi    a1, a1, 1              #; a1  = 87, (wrb) a1  <-- 88
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
       0     3090        M 0x800006ac bnez    a0, pc - 32            #; a0  = 12, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 7.0
       0     3091        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 88, a2  = 0xcccccccd
       0     3094        M                                           #; (acc) a4  <-- 0x00375713
       0     3095        M 0x80000690 srli    a4, a4, 3              #; a4  = 70, (wrb) a4  <-- 8
       0     3096        M 0x80000694 mul     a4, a4, a3             #; a4  = 8, a3  = 10
       0     3099        M                                           #; (acc) a4  <-- 0x40e58733
       0     3100        M 0x80000698 sub     a4, a1, a4             #; a1  = 88, a4  = 80, (wrb) a4  <-- 8
       0     3102        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 8
       0     3103        M 0x800006a4 addi    a0, a0, -1             #; a0  = 12, (wrb) a0  <-- 11
                         M                                           #; (f:fpu) ft3  <-- 8.0
       0     3104        M 0x800006a8 addi    a1, a1, 1              #; a1  = 88, (wrb) a1  <-- 89
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
       0     3105        M 0x800006ac bnez    a0, pc - 32            #; a0  = 11, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 8.0
       0     3106        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 89, a2  = 0xcccccccd
       0     3109        M                                           #; (acc) a4  <-- 0x00375713
       0     3110        M 0x80000690 srli    a4, a4, 3              #; a4  = 71, (wrb) a4  <-- 8
       0     3111        M 0x80000694 mul     a4, a4, a3             #; a4  = 8, a3  = 10
       0     3114        M                                           #; (acc) a4  <-- 0x40e58733
       0     3115        M 0x80000698 sub     a4, a1, a4             #; a1  = 89, a4  = 80, (wrb) a4  <-- 9
       0     3117        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 9
       0     3118        M 0x800006a4 addi    a0, a0, -1             #; a0  = 11, (wrb) a0  <-- 10
                         M                                           #; (f:fpu) ft3  <-- 9.0
       0     3119        M 0x800006a8 addi    a1, a1, 1              #; a1  = 89, (wrb) a1  <-- 90
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
       0     3120        M 0x800006ac bnez    a0, pc - 32            #; a0  = 10, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 9.0
       0     3121        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 90, a2  = 0xcccccccd
       0     3124        M                                           #; (acc) a4  <-- 0x00375713
       0     3125        M 0x80000690 srli    a4, a4, 3              #; a4  = 72, (wrb) a4  <-- 9
       0     3126        M 0x80000694 mul     a4, a4, a3             #; a4  = 9, a3  = 10
       0     3129        M                                           #; (acc) a4  <-- 0x40e58733
       0     3130        M 0x80000698 sub     a4, a1, a4             #; a1  = 90, a4  = 90, (wrb) a4  <-- 0
       0     3132        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 0
       0     3133        M 0x800006a4 addi    a0, a0, -1             #; a0  = 10, (wrb) a0  <-- 9
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     3134        M 0x800006a8 addi    a1, a1, 1              #; a1  = 90, (wrb) a1  <-- 91
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     3135        M 0x800006ac bnez    a0, pc - 32            #; a0  = 9, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     3136        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 91, a2  = 0xcccccccd
       0     3139        M                                           #; (acc) a4  <-- 0x00375713
       0     3140        M 0x80000690 srli    a4, a4, 3              #; a4  = 72, (wrb) a4  <-- 9
       0     3141        M 0x80000694 mul     a4, a4, a3             #; a4  = 9, a3  = 10
       0     3144        M                                           #; (acc) a4  <-- 0x40e58733
       0     3145        M 0x80000698 sub     a4, a1, a4             #; a1  = 91, a4  = 90, (wrb) a4  <-- 1
       0     3147        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 1
       0     3148        M 0x800006a4 addi    a0, a0, -1             #; a0  = 9, (wrb) a0  <-- 8
                         M                                           #; (f:fpu) ft3  <-- 1.0
       0     3149        M 0x800006a8 addi    a1, a1, 1              #; a1  = 91, (wrb) a1  <-- 92
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
       0     3150        M 0x800006ac bnez    a0, pc - 32            #; a0  = 8, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 1.0
       0     3151        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 92, a2  = 0xcccccccd
       0     3154        M                                           #; (acc) a4  <-- 0x00375713
       0     3155        M 0x80000690 srli    a4, a4, 3              #; a4  = 73, (wrb) a4  <-- 9
       0     3156        M 0x80000694 mul     a4, a4, a3             #; a4  = 9, a3  = 10
       0     3159        M                                           #; (acc) a4  <-- 0x40e58733
       0     3160        M 0x80000698 sub     a4, a1, a4             #; a1  = 92, a4  = 90, (wrb) a4  <-- 2
       0     3162        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 2
       0     3163        M 0x800006a4 addi    a0, a0, -1             #; a0  = 8, (wrb) a0  <-- 7
                         M                                           #; (f:fpu) ft3  <-- 2.0
       0     3164        M 0x800006a8 addi    a1, a1, 1              #; a1  = 92, (wrb) a1  <-- 93
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
       0     3165        M 0x800006ac bnez    a0, pc - 32            #; a0  = 7, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 2.0
       0     3166        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 93, a2  = 0xcccccccd
       0     3169        M                                           #; (acc) a4  <-- 0x00375713
       0     3170        M 0x80000690 srli    a4, a4, 3              #; a4  = 74, (wrb) a4  <-- 9
       0     3171        M 0x80000694 mul     a4, a4, a3             #; a4  = 9, a3  = 10
       0     3174        M                                           #; (acc) a4  <-- 0x40e58733
       0     3175        M 0x80000698 sub     a4, a1, a4             #; a1  = 93, a4  = 90, (wrb) a4  <-- 3
       0     3177        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 3
       0     3178        M 0x800006a4 addi    a0, a0, -1             #; a0  = 7, (wrb) a0  <-- 6
                         M                                           #; (f:fpu) ft3  <-- 3.0
       0     3179        M 0x800006a8 addi    a1, a1, 1              #; a1  = 93, (wrb) a1  <-- 94
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
       0     3180        M 0x800006ac bnez    a0, pc - 32            #; a0  = 6, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 3.0
       0     3181        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 94, a2  = 0xcccccccd
       0     3184        M                                           #; (acc) a4  <-- 0x00375713
       0     3185        M 0x80000690 srli    a4, a4, 3              #; a4  = 75, (wrb) a4  <-- 9
       0     3186        M 0x80000694 mul     a4, a4, a3             #; a4  = 9, a3  = 10
       0     3189        M                                           #; (acc) a4  <-- 0x40e58733
       0     3190        M 0x80000698 sub     a4, a1, a4             #; a1  = 94, a4  = 90, (wrb) a4  <-- 4
       0     3192        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 4
       0     3193        M 0x800006a4 addi    a0, a0, -1             #; a0  = 6, (wrb) a0  <-- 5
                         M                                           #; (f:fpu) ft3  <-- 4.0
       0     3194        M 0x800006a8 addi    a1, a1, 1              #; a1  = 94, (wrb) a1  <-- 95
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
       0     3195        M 0x800006ac bnez    a0, pc - 32            #; a0  = 5, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 4.0
       0     3196        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 95, a2  = 0xcccccccd
       0     3199        M                                           #; (acc) a4  <-- 0x00375713
       0     3200        M 0x80000690 srli    a4, a4, 3              #; a4  = 76, (wrb) a4  <-- 9
       0     3201        M 0x80000694 mul     a4, a4, a3             #; a4  = 9, a3  = 10
       0     3204        M                                           #; (acc) a4  <-- 0x40e58733
       0     3205        M 0x80000698 sub     a4, a1, a4             #; a1  = 95, a4  = 90, (wrb) a4  <-- 5
       0     3207        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 5
       0     3208        M 0x800006a4 addi    a0, a0, -1             #; a0  = 5, (wrb) a0  <-- 4
                         M                                           #; (f:fpu) ft3  <-- 5.0
       0     3209        M 0x800006a8 addi    a1, a1, 1              #; a1  = 95, (wrb) a1  <-- 96
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
       0     3210        M 0x800006ac bnez    a0, pc - 32            #; a0  = 4, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 5.0
       0     3211        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 96, a2  = 0xcccccccd
       0     3214        M                                           #; (acc) a4  <-- 0x00375713
       0     3215        M 0x80000690 srli    a4, a4, 3              #; a4  = 76, (wrb) a4  <-- 9
       0     3216        M 0x80000694 mul     a4, a4, a3             #; a4  = 9, a3  = 10
       0     3219        M                                           #; (acc) a4  <-- 0x40e58733
       0     3220        M 0x80000698 sub     a4, a1, a4             #; a1  = 96, a4  = 90, (wrb) a4  <-- 6
       0     3222        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 6
       0     3223        M 0x800006a4 addi    a0, a0, -1             #; a0  = 4, (wrb) a0  <-- 3
                         M                                           #; (f:fpu) ft3  <-- 6.0
       0     3224        M 0x800006a8 addi    a1, a1, 1              #; a1  = 96, (wrb) a1  <-- 97
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
       0     3225        M 0x800006ac bnez    a0, pc - 32            #; a0  = 3, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 6.0
       0     3226        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 97, a2  = 0xcccccccd
       0     3229        M                                           #; (acc) a4  <-- 0x00375713
       0     3230        M 0x80000690 srli    a4, a4, 3              #; a4  = 77, (wrb) a4  <-- 9
       0     3231        M 0x80000694 mul     a4, a4, a3             #; a4  = 9, a3  = 10
       0     3234        M                                           #; (acc) a4  <-- 0x40e58733
       0     3235        M 0x80000698 sub     a4, a1, a4             #; a1  = 97, a4  = 90, (wrb) a4  <-- 7
       0     3237        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 7
       0     3238        M 0x800006a4 addi    a0, a0, -1             #; a0  = 3, (wrb) a0  <-- 2
                         M                                           #; (f:fpu) ft3  <-- 7.0
       0     3239        M 0x800006a8 addi    a1, a1, 1              #; a1  = 97, (wrb) a1  <-- 98
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
       0     3240        M 0x800006ac bnez    a0, pc - 32            #; a0  = 2, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 7.0
       0     3241        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 98, a2  = 0xcccccccd
       0     3244        M                                           #; (acc) a4  <-- 0x00375713
       0     3245        M 0x80000690 srli    a4, a4, 3              #; a4  = 78, (wrb) a4  <-- 9
       0     3246        M 0x80000694 mul     a4, a4, a3             #; a4  = 9, a3  = 10
       0     3249        M                                           #; (acc) a4  <-- 0x40e58733
       0     3250        M 0x80000698 sub     a4, a1, a4             #; a1  = 98, a4  = 90, (wrb) a4  <-- 8
       0     3252        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 8
       0     3253        M 0x800006a4 addi    a0, a0, -1             #; a0  = 2, (wrb) a0  <-- 1
                         M                                           #; (f:fpu) ft3  <-- 8.0
       0     3254        M 0x800006a8 addi    a1, a1, 1              #; a1  = 98, (wrb) a1  <-- 99
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
       0     3255        M 0x800006ac bnez    a0, pc - 32            #; a0  = 1, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 8.0
       0     3256        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 99, a2  = 0xcccccccd
       0     3259        M                                           #; (acc) a4  <-- 0x00375713
       0     3260        M 0x80000690 srli    a4, a4, 3              #; a4  = 79, (wrb) a4  <-- 9
       0     3261        M 0x80000694 mul     a4, a4, a3             #; a4  = 9, a3  = 10
       0     3264        M                                           #; (acc) a4  <-- 0x40e58733
       0     3265        M 0x80000698 sub     a4, a1, a4             #; a1  = 99, a4  = 90, (wrb) a4  <-- 9
       0     3267        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 9
       0     3268        M 0x800006a4 addi    a0, a0, -1             #; a0  = 1, (wrb) a0  <-- 0
                         M                                           #; (f:fpu) ft3  <-- 9.0
       0     3269        M 0x800006a8 addi    a1, a1, 1              #; a1  = 99, (wrb) a1  <-- 100
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
       0     3270        M 0x800006ac bnez    a0, pc - 32            #; a0  = 0, not taken
                         M                                           #; (f:fpu) ft0  <-- 9.0
       0     3283        M 0x800006b4 j       pc + 0x44              #; goto 0x800006f8
                         M 0x800006b0 csrrci  a0, ssr, 1             #; 
       0     3285        M 0x800006f8 ret                            #; ra  = 0x80000788, goto 0x80000788
       0     3299        M 0x80000788 mv      a0, s0                 #; s0  = 0x00100320, (wrb) a0  <-- 0x00100320
       0     3300        M 0x8000078c auipc   ra, 0x0                #; (wrb) ra  <-- 0x8000078c
       0     3302        M 0x80000790 jalr    ra, ra, -344           #; ra  = 0x8000078c, (wrb) ra  <-- 0x80000794, goto 0x80000634
       0     3316        M 0x80000634 srli    a1, a0, 20             #; a0  = 0x00100320, (wrb) a1  <-- 1
       0     3317        M 0x80000638 snez    a1, a1                 #; a1  = 1, (wrb) a1  <-- 1
       0     3318        M 0x8000063c lui     a2, 0x120              #; (wrb) a2  <-- 0x00120000
       0     3319        M 0x80000640 addi    a2, a2, -791           #; a2  = 0x00120000, (wrb) a2  <-- 0x0011fce9
       0     3320        M 0x80000644 sltu    a2, a0, a2             #; a0  = 0x00100320, a2  = 0x0011fce9, (wrb) a2  <-- 1
       0     3321        M 0x80000648 and     a1, a1, a2             #; a1  = 1, a2  = 1, (wrb) a1  <-- 1
       0     3322        M 0x8000064c beqz    a1, pc + 108           #; a1  = 1, not taken
       0     3323        M 0x80000650 li      a1, 0                  #; (wrb) a1  <-- 0
       0     3324        M 0x80000654 li      a2, 8                  #; (wrb) a2  <-- 8
       0     3325        M 0x80000658 li      a3, 99                 #; (wrb) a3  <-- 99
       0     3326        M 0x8000065c li      a4, 64                 #; (wrb) a4  <-- 64
       0     3327        M 0x80000660 scfgw   a3, a4                 #; a3  = 99, a4  = 64
       0     3328        M 0x80000664 li      a3, 192                #; (wrb) a3  <-- 192
       0     3329        M 0x80000668 scfgw   a2, a3                 #; a2  = 8, a3  = 192
       0     3330        M 0x8000066c li      a2, 32                 #; (wrb) a2  <-- 32
       0     3331        M 0x80000670 scfgw   zero, a2               #; a2  = 32, (acc) ra  <-- 0x00c020ab
       0     3332        M 0x80000674 scfgwi  a0, 896                #; a0  = 0x00100320
       0     3334        M 0x8000067c li      a0, 100                #; (wrb) a0  <-- 100
                         M 0x80000678 csrrsi  a0, ssr, 1             #; 
       0     3335        M 0x80000680 lui     a2, 0xccccd            #; (wrb) a2  <-- 0xccccd000
       0     3336        M 0x80000684 addi    a2, a2, -819           #; a2  = 0xccccd000, (wrb) a2  <-- 0xcccccccd
       0     3337        M 0x80000688 li      a3, 10                 #; (wrb) a3  <-- 10
       0     3338        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 0, a2  = 0xcccccccd, (acc) a4  <-- 0x02c5b733
       0     3339        M                                           #; (acc) a4  <-- 0x00375713
       0     3341        M                                           #; (acc) a4  <-- 0x00375713
       0     3342        M 0x80000690 srli    a4, a4, 3              #; a4  = 0, (wrb) a4  <-- 0
       0     3343        M 0x80000694 mul     a4, a4, a3             #; a4  = 0, a3  = 10
       0     3346        M                                           #; (acc) a4  <-- 0x40e58733
       0     3347        M 0x80000698 sub     a4, a1, a4             #; a1  = 0, a4  = 0, (wrb) a4  <-- 0
       0     3349        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 0
       0     3350        M 0x800006a4 addi    a0, a0, -1             #; a0  = 100, (wrb) a0  <-- 99
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     3351        M 0x800006a8 addi    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     3352        M 0x800006ac bnez    a0, pc - 32            #; a0  = 99, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     3353        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 1, a2  = 0xcccccccd
       0     3356        M                                           #; (acc) a4  <-- 0x00375713
       0     3357        M 0x80000690 srli    a4, a4, 3              #; a4  = 0, (wrb) a4  <-- 0
       0     3358        M 0x80000694 mul     a4, a4, a3             #; a4  = 0, a3  = 10
       0     3361        M                                           #; (acc) a4  <-- 0x40e58733
       0     3362        M 0x80000698 sub     a4, a1, a4             #; a1  = 1, a4  = 0, (wrb) a4  <-- 1
       0     3364        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 1
       0     3365        M 0x800006a4 addi    a0, a0, -1             #; a0  = 99, (wrb) a0  <-- 98
                         M                                           #; (f:fpu) ft3  <-- 1.0
       0     3366        M 0x800006a8 addi    a1, a1, 1              #; a1  = 1, (wrb) a1  <-- 2
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
       0     3367        M 0x800006ac bnez    a0, pc - 32            #; a0  = 98, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 1.0
       0     3368        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 2, a2  = 0xcccccccd
       0     3371        M                                           #; (acc) a4  <-- 0x00375713
       0     3372        M 0x80000690 srli    a4, a4, 3              #; a4  = 1, (wrb) a4  <-- 0
       0     3373        M 0x80000694 mul     a4, a4, a3             #; a4  = 0, a3  = 10
       0     3376        M                                           #; (acc) a4  <-- 0x40e58733
       0     3377        M 0x80000698 sub     a4, a1, a4             #; a1  = 2, a4  = 0, (wrb) a4  <-- 2
       0     3379        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 2
       0     3380        M 0x800006a4 addi    a0, a0, -1             #; a0  = 98, (wrb) a0  <-- 97
                         M                                           #; (f:fpu) ft3  <-- 2.0
       0     3381        M 0x800006a8 addi    a1, a1, 1              #; a1  = 2, (wrb) a1  <-- 3
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
       0     3382        M 0x800006ac bnez    a0, pc - 32            #; a0  = 97, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 2.0
       0     3383        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 3, a2  = 0xcccccccd
       0     3386        M                                           #; (acc) a4  <-- 0x00375713
       0     3387        M 0x80000690 srli    a4, a4, 3              #; a4  = 2, (wrb) a4  <-- 0
       0     3388        M 0x80000694 mul     a4, a4, a3             #; a4  = 0, a3  = 10
       0     3391        M                                           #; (acc) a4  <-- 0x40e58733
       0     3392        M 0x80000698 sub     a4, a1, a4             #; a1  = 3, a4  = 0, (wrb) a4  <-- 3
       0     3394        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 3
       0     3395        M 0x800006a4 addi    a0, a0, -1             #; a0  = 97, (wrb) a0  <-- 96
                         M                                           #; (f:fpu) ft3  <-- 3.0
       0     3396        M 0x800006a8 addi    a1, a1, 1              #; a1  = 3, (wrb) a1  <-- 4
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
       0     3397        M 0x800006ac bnez    a0, pc - 32            #; a0  = 96, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 3.0
       0     3398        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 4, a2  = 0xcccccccd
       0     3401        M                                           #; (acc) a4  <-- 0x00375713
       0     3402        M 0x80000690 srli    a4, a4, 3              #; a4  = 3, (wrb) a4  <-- 0
       0     3403        M 0x80000694 mul     a4, a4, a3             #; a4  = 0, a3  = 10
       0     3406        M                                           #; (acc) a4  <-- 0x40e58733
       0     3407        M 0x80000698 sub     a4, a1, a4             #; a1  = 4, a4  = 0, (wrb) a4  <-- 4
       0     3409        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 4
       0     3410        M 0x800006a4 addi    a0, a0, -1             #; a0  = 96, (wrb) a0  <-- 95
                         M                                           #; (f:fpu) ft3  <-- 4.0
       0     3411        M 0x800006a8 addi    a1, a1, 1              #; a1  = 4, (wrb) a1  <-- 5
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
       0     3412        M 0x800006ac bnez    a0, pc - 32            #; a0  = 95, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 4.0
       0     3413        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 5, a2  = 0xcccccccd
       0     3416        M                                           #; (acc) a4  <-- 0x00375713
       0     3417        M 0x80000690 srli    a4, a4, 3              #; a4  = 4, (wrb) a4  <-- 0
       0     3418        M 0x80000694 mul     a4, a4, a3             #; a4  = 0, a3  = 10
       0     3421        M                                           #; (acc) a4  <-- 0x40e58733
       0     3422        M 0x80000698 sub     a4, a1, a4             #; a1  = 5, a4  = 0, (wrb) a4  <-- 5
       0     3424        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 5
       0     3425        M 0x800006a4 addi    a0, a0, -1             #; a0  = 95, (wrb) a0  <-- 94
                         M                                           #; (f:fpu) ft3  <-- 5.0
       0     3426        M 0x800006a8 addi    a1, a1, 1              #; a1  = 5, (wrb) a1  <-- 6
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
       0     3427        M 0x800006ac bnez    a0, pc - 32            #; a0  = 94, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 5.0
       0     3428        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 6, a2  = 0xcccccccd
       0     3431        M                                           #; (acc) a4  <-- 0x00375713
       0     3432        M 0x80000690 srli    a4, a4, 3              #; a4  = 4, (wrb) a4  <-- 0
       0     3433        M 0x80000694 mul     a4, a4, a3             #; a4  = 0, a3  = 10
       0     3436        M                                           #; (acc) a4  <-- 0x40e58733
       0     3437        M 0x80000698 sub     a4, a1, a4             #; a1  = 6, a4  = 0, (wrb) a4  <-- 6
       0     3439        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 6
       0     3440        M 0x800006a4 addi    a0, a0, -1             #; a0  = 94, (wrb) a0  <-- 93
                         M                                           #; (f:fpu) ft3  <-- 6.0
       0     3441        M 0x800006a8 addi    a1, a1, 1              #; a1  = 6, (wrb) a1  <-- 7
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
       0     3442        M 0x800006ac bnez    a0, pc - 32            #; a0  = 93, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 6.0
       0     3443        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 7, a2  = 0xcccccccd
       0     3446        M                                           #; (acc) a4  <-- 0x00375713
       0     3447        M 0x80000690 srli    a4, a4, 3              #; a4  = 5, (wrb) a4  <-- 0
       0     3448        M 0x80000694 mul     a4, a4, a3             #; a4  = 0, a3  = 10
       0     3451        M                                           #; (acc) a4  <-- 0x40e58733
       0     3452        M 0x80000698 sub     a4, a1, a4             #; a1  = 7, a4  = 0, (wrb) a4  <-- 7
       0     3454        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 7
       0     3455        M 0x800006a4 addi    a0, a0, -1             #; a0  = 93, (wrb) a0  <-- 92
                         M                                           #; (f:fpu) ft3  <-- 7.0
       0     3456        M 0x800006a8 addi    a1, a1, 1              #; a1  = 7, (wrb) a1  <-- 8
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
       0     3457        M 0x800006ac bnez    a0, pc - 32            #; a0  = 92, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 7.0
       0     3458        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 8, a2  = 0xcccccccd
       0     3461        M                                           #; (acc) a4  <-- 0x00375713
       0     3462        M 0x80000690 srli    a4, a4, 3              #; a4  = 6, (wrb) a4  <-- 0
       0     3463        M 0x80000694 mul     a4, a4, a3             #; a4  = 0, a3  = 10
       0     3466        M                                           #; (acc) a4  <-- 0x40e58733
       0     3467        M 0x80000698 sub     a4, a1, a4             #; a1  = 8, a4  = 0, (wrb) a4  <-- 8
       0     3469        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 8
       0     3470        M 0x800006a4 addi    a0, a0, -1             #; a0  = 92, (wrb) a0  <-- 91
                         M                                           #; (f:fpu) ft3  <-- 8.0
       0     3471        M 0x800006a8 addi    a1, a1, 1              #; a1  = 8, (wrb) a1  <-- 9
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
       0     3472        M 0x800006ac bnez    a0, pc - 32            #; a0  = 91, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 8.0
       0     3473        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 9, a2  = 0xcccccccd
       0     3476        M                                           #; (acc) a4  <-- 0x00375713
       0     3477        M 0x80000690 srli    a4, a4, 3              #; a4  = 7, (wrb) a4  <-- 0
       0     3478        M 0x80000694 mul     a4, a4, a3             #; a4  = 0, a3  = 10
       0     3481        M                                           #; (acc) a4  <-- 0x40e58733
       0     3482        M 0x80000698 sub     a4, a1, a4             #; a1  = 9, a4  = 0, (wrb) a4  <-- 9
       0     3484        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 9
       0     3485        M 0x800006a4 addi    a0, a0, -1             #; a0  = 91, (wrb) a0  <-- 90
                         M                                           #; (f:fpu) ft3  <-- 9.0
       0     3486        M 0x800006a8 addi    a1, a1, 1              #; a1  = 9, (wrb) a1  <-- 10
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
       0     3487        M 0x800006ac bnez    a0, pc - 32            #; a0  = 90, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 9.0
       0     3488        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 10, a2  = 0xcccccccd
       0     3491        M                                           #; (acc) a4  <-- 0x00375713
       0     3492        M 0x80000690 srli    a4, a4, 3              #; a4  = 8, (wrb) a4  <-- 1
       0     3493        M 0x80000694 mul     a4, a4, a3             #; a4  = 1, a3  = 10
       0     3496        M                                           #; (acc) a4  <-- 0x40e58733
       0     3497        M 0x80000698 sub     a4, a1, a4             #; a1  = 10, a4  = 10, (wrb) a4  <-- 0
       0     3499        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 0
       0     3500        M 0x800006a4 addi    a0, a0, -1             #; a0  = 90, (wrb) a0  <-- 89
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     3501        M 0x800006a8 addi    a1, a1, 1              #; a1  = 10, (wrb) a1  <-- 11
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     3502        M 0x800006ac bnez    a0, pc - 32            #; a0  = 89, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     3503        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 11, a2  = 0xcccccccd
       0     3506        M                                           #; (acc) a4  <-- 0x00375713
       0     3507        M 0x80000690 srli    a4, a4, 3              #; a4  = 8, (wrb) a4  <-- 1
       0     3508        M 0x80000694 mul     a4, a4, a3             #; a4  = 1, a3  = 10
       0     3511        M                                           #; (acc) a4  <-- 0x40e58733
       0     3512        M 0x80000698 sub     a4, a1, a4             #; a1  = 11, a4  = 10, (wrb) a4  <-- 1
       0     3514        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 1
       0     3515        M 0x800006a4 addi    a0, a0, -1             #; a0  = 89, (wrb) a0  <-- 88
                         M                                           #; (f:fpu) ft3  <-- 1.0
       0     3516        M 0x800006a8 addi    a1, a1, 1              #; a1  = 11, (wrb) a1  <-- 12
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
       0     3517        M 0x800006ac bnez    a0, pc - 32            #; a0  = 88, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 1.0
       0     3518        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 12, a2  = 0xcccccccd
       0     3521        M                                           #; (acc) a4  <-- 0x00375713
       0     3522        M 0x80000690 srli    a4, a4, 3              #; a4  = 9, (wrb) a4  <-- 1
       0     3523        M 0x80000694 mul     a4, a4, a3             #; a4  = 1, a3  = 10
       0     3526        M                                           #; (acc) a4  <-- 0x40e58733
       0     3527        M 0x80000698 sub     a4, a1, a4             #; a1  = 12, a4  = 10, (wrb) a4  <-- 2
       0     3529        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 2
       0     3530        M 0x800006a4 addi    a0, a0, -1             #; a0  = 88, (wrb) a0  <-- 87
                         M                                           #; (f:fpu) ft3  <-- 2.0
       0     3531        M 0x800006a8 addi    a1, a1, 1              #; a1  = 12, (wrb) a1  <-- 13
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
       0     3532        M 0x800006ac bnez    a0, pc - 32            #; a0  = 87, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 2.0
       0     3533        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 13, a2  = 0xcccccccd
       0     3536        M                                           #; (acc) a4  <-- 0x00375713
       0     3537        M 0x80000690 srli    a4, a4, 3              #; a4  = 10, (wrb) a4  <-- 1
       0     3538        M 0x80000694 mul     a4, a4, a3             #; a4  = 1, a3  = 10
       0     3541        M                                           #; (acc) a4  <-- 0x40e58733
       0     3542        M 0x80000698 sub     a4, a1, a4             #; a1  = 13, a4  = 10, (wrb) a4  <-- 3
       0     3544        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 3
       0     3545        M 0x800006a4 addi    a0, a0, -1             #; a0  = 87, (wrb) a0  <-- 86
                         M                                           #; (f:fpu) ft3  <-- 3.0
       0     3546        M 0x800006a8 addi    a1, a1, 1              #; a1  = 13, (wrb) a1  <-- 14
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
       0     3547        M 0x800006ac bnez    a0, pc - 32            #; a0  = 86, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 3.0
       0     3548        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 14, a2  = 0xcccccccd
       0     3551        M                                           #; (acc) a4  <-- 0x00375713
       0     3552        M 0x80000690 srli    a4, a4, 3              #; a4  = 11, (wrb) a4  <-- 1
       0     3553        M 0x80000694 mul     a4, a4, a3             #; a4  = 1, a3  = 10
       0     3556        M                                           #; (acc) a4  <-- 0x40e58733
       0     3557        M 0x80000698 sub     a4, a1, a4             #; a1  = 14, a4  = 10, (wrb) a4  <-- 4
       0     3559        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 4
       0     3560        M 0x800006a4 addi    a0, a0, -1             #; a0  = 86, (wrb) a0  <-- 85
                         M                                           #; (f:fpu) ft3  <-- 4.0
       0     3561        M 0x800006a8 addi    a1, a1, 1              #; a1  = 14, (wrb) a1  <-- 15
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
       0     3562        M 0x800006ac bnez    a0, pc - 32            #; a0  = 85, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 4.0
       0     3563        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 15, a2  = 0xcccccccd
       0     3566        M                                           #; (acc) a4  <-- 0x00375713
       0     3567        M 0x80000690 srli    a4, a4, 3              #; a4  = 12, (wrb) a4  <-- 1
       0     3568        M 0x80000694 mul     a4, a4, a3             #; a4  = 1, a3  = 10
       0     3571        M                                           #; (acc) a4  <-- 0x40e58733
       0     3572        M 0x80000698 sub     a4, a1, a4             #; a1  = 15, a4  = 10, (wrb) a4  <-- 5
       0     3574        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 5
       0     3575        M 0x800006a4 addi    a0, a0, -1             #; a0  = 85, (wrb) a0  <-- 84
                         M                                           #; (f:fpu) ft3  <-- 5.0
       0     3576        M 0x800006a8 addi    a1, a1, 1              #; a1  = 15, (wrb) a1  <-- 16
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
       0     3577        M 0x800006ac bnez    a0, pc - 32            #; a0  = 84, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 5.0
       0     3578        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 16, a2  = 0xcccccccd
       0     3581        M                                           #; (acc) a4  <-- 0x00375713
       0     3582        M 0x80000690 srli    a4, a4, 3              #; a4  = 12, (wrb) a4  <-- 1
       0     3583        M 0x80000694 mul     a4, a4, a3             #; a4  = 1, a3  = 10
       0     3586        M                                           #; (acc) a4  <-- 0x40e58733
       0     3587        M 0x80000698 sub     a4, a1, a4             #; a1  = 16, a4  = 10, (wrb) a4  <-- 6
       0     3589        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 6
       0     3590        M 0x800006a4 addi    a0, a0, -1             #; a0  = 84, (wrb) a0  <-- 83
                         M                                           #; (f:fpu) ft3  <-- 6.0
       0     3591        M 0x800006a8 addi    a1, a1, 1              #; a1  = 16, (wrb) a1  <-- 17
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
       0     3592        M 0x800006ac bnez    a0, pc - 32            #; a0  = 83, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 6.0
       0     3593        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 17, a2  = 0xcccccccd
       0     3596        M                                           #; (acc) a4  <-- 0x00375713
       0     3597        M 0x80000690 srli    a4, a4, 3              #; a4  = 13, (wrb) a4  <-- 1
       0     3598        M 0x80000694 mul     a4, a4, a3             #; a4  = 1, a3  = 10
       0     3601        M                                           #; (acc) a4  <-- 0x40e58733
       0     3602        M 0x80000698 sub     a4, a1, a4             #; a1  = 17, a4  = 10, (wrb) a4  <-- 7
       0     3604        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 7
       0     3605        M 0x800006a4 addi    a0, a0, -1             #; a0  = 83, (wrb) a0  <-- 82
                         M                                           #; (f:fpu) ft3  <-- 7.0
       0     3606        M 0x800006a8 addi    a1, a1, 1              #; a1  = 17, (wrb) a1  <-- 18
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
       0     3607        M 0x800006ac bnez    a0, pc - 32            #; a0  = 82, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 7.0
       0     3608        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 18, a2  = 0xcccccccd
       0     3611        M                                           #; (acc) a4  <-- 0x00375713
       0     3612        M 0x80000690 srli    a4, a4, 3              #; a4  = 14, (wrb) a4  <-- 1
       0     3613        M 0x80000694 mul     a4, a4, a3             #; a4  = 1, a3  = 10
       0     3616        M                                           #; (acc) a4  <-- 0x40e58733
       0     3617        M 0x80000698 sub     a4, a1, a4             #; a1  = 18, a4  = 10, (wrb) a4  <-- 8
       0     3619        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 8
       0     3620        M 0x800006a4 addi    a0, a0, -1             #; a0  = 82, (wrb) a0  <-- 81
                         M                                           #; (f:fpu) ft3  <-- 8.0
       0     3621        M 0x800006a8 addi    a1, a1, 1              #; a1  = 18, (wrb) a1  <-- 19
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
       0     3622        M 0x800006ac bnez    a0, pc - 32            #; a0  = 81, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 8.0
       0     3623        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 19, a2  = 0xcccccccd
       0     3626        M                                           #; (acc) a4  <-- 0x00375713
       0     3627        M 0x80000690 srli    a4, a4, 3              #; a4  = 15, (wrb) a4  <-- 1
       0     3628        M 0x80000694 mul     a4, a4, a3             #; a4  = 1, a3  = 10
       0     3631        M                                           #; (acc) a4  <-- 0x40e58733
       0     3632        M 0x80000698 sub     a4, a1, a4             #; a1  = 19, a4  = 10, (wrb) a4  <-- 9
       0     3634        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 9
       0     3635        M 0x800006a4 addi    a0, a0, -1             #; a0  = 81, (wrb) a0  <-- 80
                         M                                           #; (f:fpu) ft3  <-- 9.0
       0     3636        M 0x800006a8 addi    a1, a1, 1              #; a1  = 19, (wrb) a1  <-- 20
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
       0     3637        M 0x800006ac bnez    a0, pc - 32            #; a0  = 80, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 9.0
       0     3638        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 20, a2  = 0xcccccccd
       0     3641        M                                           #; (acc) a4  <-- 0x00375713
       0     3642        M 0x80000690 srli    a4, a4, 3              #; a4  = 16, (wrb) a4  <-- 2
       0     3643        M 0x80000694 mul     a4, a4, a3             #; a4  = 2, a3  = 10
       0     3646        M                                           #; (acc) a4  <-- 0x40e58733
       0     3647        M 0x80000698 sub     a4, a1, a4             #; a1  = 20, a4  = 20, (wrb) a4  <-- 0
       0     3649        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 0
       0     3650        M 0x800006a4 addi    a0, a0, -1             #; a0  = 80, (wrb) a0  <-- 79
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     3651        M 0x800006a8 addi    a1, a1, 1              #; a1  = 20, (wrb) a1  <-- 21
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     3652        M 0x800006ac bnez    a0, pc - 32            #; a0  = 79, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     3653        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 21, a2  = 0xcccccccd
       0     3656        M                                           #; (acc) a4  <-- 0x00375713
       0     3657        M 0x80000690 srli    a4, a4, 3              #; a4  = 16, (wrb) a4  <-- 2
       0     3658        M 0x80000694 mul     a4, a4, a3             #; a4  = 2, a3  = 10
       0     3661        M                                           #; (acc) a4  <-- 0x40e58733
       0     3662        M 0x80000698 sub     a4, a1, a4             #; a1  = 21, a4  = 20, (wrb) a4  <-- 1
       0     3664        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 1
       0     3665        M 0x800006a4 addi    a0, a0, -1             #; a0  = 79, (wrb) a0  <-- 78
                         M                                           #; (f:fpu) ft3  <-- 1.0
       0     3666        M 0x800006a8 addi    a1, a1, 1              #; a1  = 21, (wrb) a1  <-- 22
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
       0     3667        M 0x800006ac bnez    a0, pc - 32            #; a0  = 78, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 1.0
       0     3668        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 22, a2  = 0xcccccccd
       0     3671        M                                           #; (acc) a4  <-- 0x00375713
       0     3672        M 0x80000690 srli    a4, a4, 3              #; a4  = 17, (wrb) a4  <-- 2
       0     3673        M 0x80000694 mul     a4, a4, a3             #; a4  = 2, a3  = 10
       0     3676        M                                           #; (acc) a4  <-- 0x40e58733
       0     3677        M 0x80000698 sub     a4, a1, a4             #; a1  = 22, a4  = 20, (wrb) a4  <-- 2
       0     3679        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 2
       0     3680        M 0x800006a4 addi    a0, a0, -1             #; a0  = 78, (wrb) a0  <-- 77
                         M                                           #; (f:fpu) ft3  <-- 2.0
       0     3681        M 0x800006a8 addi    a1, a1, 1              #; a1  = 22, (wrb) a1  <-- 23
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
       0     3682        M 0x800006ac bnez    a0, pc - 32            #; a0  = 77, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 2.0
       0     3683        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 23, a2  = 0xcccccccd
       0     3686        M                                           #; (acc) a4  <-- 0x00375713
       0     3687        M 0x80000690 srli    a4, a4, 3              #; a4  = 18, (wrb) a4  <-- 2
       0     3688        M 0x80000694 mul     a4, a4, a3             #; a4  = 2, a3  = 10
       0     3691        M                                           #; (acc) a4  <-- 0x40e58733
       0     3692        M 0x80000698 sub     a4, a1, a4             #; a1  = 23, a4  = 20, (wrb) a4  <-- 3
       0     3694        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 3
       0     3695        M 0x800006a4 addi    a0, a0, -1             #; a0  = 77, (wrb) a0  <-- 76
                         M                                           #; (f:fpu) ft3  <-- 3.0
       0     3696        M 0x800006a8 addi    a1, a1, 1              #; a1  = 23, (wrb) a1  <-- 24
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
       0     3697        M 0x800006ac bnez    a0, pc - 32            #; a0  = 76, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 3.0
       0     3698        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 24, a2  = 0xcccccccd
       0     3701        M                                           #; (acc) a4  <-- 0x00375713
       0     3702        M 0x80000690 srli    a4, a4, 3              #; a4  = 19, (wrb) a4  <-- 2
       0     3703        M 0x80000694 mul     a4, a4, a3             #; a4  = 2, a3  = 10
       0     3706        M                                           #; (acc) a4  <-- 0x40e58733
       0     3707        M 0x80000698 sub     a4, a1, a4             #; a1  = 24, a4  = 20, (wrb) a4  <-- 4
       0     3709        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 4
       0     3710        M 0x800006a4 addi    a0, a0, -1             #; a0  = 76, (wrb) a0  <-- 75
                         M                                           #; (f:fpu) ft3  <-- 4.0
       0     3711        M 0x800006a8 addi    a1, a1, 1              #; a1  = 24, (wrb) a1  <-- 25
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
       0     3712        M 0x800006ac bnez    a0, pc - 32            #; a0  = 75, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 4.0
       0     3713        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 25, a2  = 0xcccccccd
       0     3716        M                                           #; (acc) a4  <-- 0x00375713
       0     3717        M 0x80000690 srli    a4, a4, 3              #; a4  = 20, (wrb) a4  <-- 2
       0     3718        M 0x80000694 mul     a4, a4, a3             #; a4  = 2, a3  = 10
       0     3721        M                                           #; (acc) a4  <-- 0x40e58733
       0     3722        M 0x80000698 sub     a4, a1, a4             #; a1  = 25, a4  = 20, (wrb) a4  <-- 5
       0     3724        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 5
       0     3725        M 0x800006a4 addi    a0, a0, -1             #; a0  = 75, (wrb) a0  <-- 74
                         M                                           #; (f:fpu) ft3  <-- 5.0
       0     3726        M 0x800006a8 addi    a1, a1, 1              #; a1  = 25, (wrb) a1  <-- 26
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
       0     3727        M 0x800006ac bnez    a0, pc - 32            #; a0  = 74, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 5.0
       0     3728        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 26, a2  = 0xcccccccd
       0     3731        M                                           #; (acc) a4  <-- 0x00375713
       0     3732        M 0x80000690 srli    a4, a4, 3              #; a4  = 20, (wrb) a4  <-- 2
       0     3733        M 0x80000694 mul     a4, a4, a3             #; a4  = 2, a3  = 10
       0     3736        M                                           #; (acc) a4  <-- 0x40e58733
       0     3737        M 0x80000698 sub     a4, a1, a4             #; a1  = 26, a4  = 20, (wrb) a4  <-- 6
       0     3739        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 6
       0     3740        M 0x800006a4 addi    a0, a0, -1             #; a0  = 74, (wrb) a0  <-- 73
                         M                                           #; (f:fpu) ft3  <-- 6.0
       0     3741        M 0x800006a8 addi    a1, a1, 1              #; a1  = 26, (wrb) a1  <-- 27
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
       0     3742        M 0x800006ac bnez    a0, pc - 32            #; a0  = 73, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 6.0
       0     3743        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 27, a2  = 0xcccccccd
       0     3746        M                                           #; (acc) a4  <-- 0x00375713
       0     3747        M 0x80000690 srli    a4, a4, 3              #; a4  = 21, (wrb) a4  <-- 2
       0     3748        M 0x80000694 mul     a4, a4, a3             #; a4  = 2, a3  = 10
       0     3751        M                                           #; (acc) a4  <-- 0x40e58733
       0     3752        M 0x80000698 sub     a4, a1, a4             #; a1  = 27, a4  = 20, (wrb) a4  <-- 7
       0     3754        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 7
       0     3755        M 0x800006a4 addi    a0, a0, -1             #; a0  = 73, (wrb) a0  <-- 72
                         M                                           #; (f:fpu) ft3  <-- 7.0
       0     3756        M 0x800006a8 addi    a1, a1, 1              #; a1  = 27, (wrb) a1  <-- 28
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
       0     3757        M 0x800006ac bnez    a0, pc - 32            #; a0  = 72, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 7.0
       0     3758        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 28, a2  = 0xcccccccd
       0     3761        M                                           #; (acc) a4  <-- 0x00375713
       0     3762        M 0x80000690 srli    a4, a4, 3              #; a4  = 22, (wrb) a4  <-- 2
       0     3763        M 0x80000694 mul     a4, a4, a3             #; a4  = 2, a3  = 10
       0     3766        M                                           #; (acc) a4  <-- 0x40e58733
       0     3767        M 0x80000698 sub     a4, a1, a4             #; a1  = 28, a4  = 20, (wrb) a4  <-- 8
       0     3769        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 8
       0     3770        M 0x800006a4 addi    a0, a0, -1             #; a0  = 72, (wrb) a0  <-- 71
                         M                                           #; (f:fpu) ft3  <-- 8.0
       0     3771        M 0x800006a8 addi    a1, a1, 1              #; a1  = 28, (wrb) a1  <-- 29
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
       0     3772        M 0x800006ac bnez    a0, pc - 32            #; a0  = 71, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 8.0
       0     3773        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 29, a2  = 0xcccccccd
       0     3776        M                                           #; (acc) a4  <-- 0x00375713
       0     3777        M 0x80000690 srli    a4, a4, 3              #; a4  = 23, (wrb) a4  <-- 2
       0     3778        M 0x80000694 mul     a4, a4, a3             #; a4  = 2, a3  = 10
       0     3781        M                                           #; (acc) a4  <-- 0x40e58733
       0     3782        M 0x80000698 sub     a4, a1, a4             #; a1  = 29, a4  = 20, (wrb) a4  <-- 9
       0     3784        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 9
       0     3785        M 0x800006a4 addi    a0, a0, -1             #; a0  = 71, (wrb) a0  <-- 70
                         M                                           #; (f:fpu) ft3  <-- 9.0
       0     3786        M 0x800006a8 addi    a1, a1, 1              #; a1  = 29, (wrb) a1  <-- 30
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
       0     3787        M 0x800006ac bnez    a0, pc - 32            #; a0  = 70, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 9.0
       0     3788        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 30, a2  = 0xcccccccd
       0     3791        M                                           #; (acc) a4  <-- 0x00375713
       0     3792        M 0x80000690 srli    a4, a4, 3              #; a4  = 24, (wrb) a4  <-- 3
       0     3793        M 0x80000694 mul     a4, a4, a3             #; a4  = 3, a3  = 10
       0     3796        M                                           #; (acc) a4  <-- 0x40e58733
       0     3797        M 0x80000698 sub     a4, a1, a4             #; a1  = 30, a4  = 30, (wrb) a4  <-- 0
       0     3799        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 0
       0     3800        M 0x800006a4 addi    a0, a0, -1             #; a0  = 70, (wrb) a0  <-- 69
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     3801        M 0x800006a8 addi    a1, a1, 1              #; a1  = 30, (wrb) a1  <-- 31
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     3802        M 0x800006ac bnez    a0, pc - 32            #; a0  = 69, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     3803        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 31, a2  = 0xcccccccd
       0     3806        M                                           #; (acc) a4  <-- 0x00375713
       0     3807        M 0x80000690 srli    a4, a4, 3              #; a4  = 24, (wrb) a4  <-- 3
       0     3808        M 0x80000694 mul     a4, a4, a3             #; a4  = 3, a3  = 10
       0     3811        M                                           #; (acc) a4  <-- 0x40e58733
       0     3812        M 0x80000698 sub     a4, a1, a4             #; a1  = 31, a4  = 30, (wrb) a4  <-- 1
       0     3814        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 1
       0     3815        M 0x800006a4 addi    a0, a0, -1             #; a0  = 69, (wrb) a0  <-- 68
                         M                                           #; (f:fpu) ft3  <-- 1.0
       0     3816        M 0x800006a8 addi    a1, a1, 1              #; a1  = 31, (wrb) a1  <-- 32
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
       0     3817        M 0x800006ac bnez    a0, pc - 32            #; a0  = 68, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 1.0
       0     3818        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 32, a2  = 0xcccccccd
       0     3821        M                                           #; (acc) a4  <-- 0x00375713
       0     3822        M 0x80000690 srli    a4, a4, 3              #; a4  = 25, (wrb) a4  <-- 3
       0     3823        M 0x80000694 mul     a4, a4, a3             #; a4  = 3, a3  = 10
       0     3826        M                                           #; (acc) a4  <-- 0x40e58733
       0     3827        M 0x80000698 sub     a4, a1, a4             #; a1  = 32, a4  = 30, (wrb) a4  <-- 2
       0     3829        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 2
       0     3830        M 0x800006a4 addi    a0, a0, -1             #; a0  = 68, (wrb) a0  <-- 67
                         M                                           #; (f:fpu) ft3  <-- 2.0
       0     3831        M 0x800006a8 addi    a1, a1, 1              #; a1  = 32, (wrb) a1  <-- 33
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
       0     3832        M 0x800006ac bnez    a0, pc - 32            #; a0  = 67, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 2.0
       0     3833        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 33, a2  = 0xcccccccd
       0     3836        M                                           #; (acc) a4  <-- 0x00375713
       0     3837        M 0x80000690 srli    a4, a4, 3              #; a4  = 26, (wrb) a4  <-- 3
       0     3838        M 0x80000694 mul     a4, a4, a3             #; a4  = 3, a3  = 10
       0     3841        M                                           #; (acc) a4  <-- 0x40e58733
       0     3842        M 0x80000698 sub     a4, a1, a4             #; a1  = 33, a4  = 30, (wrb) a4  <-- 3
       0     3844        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 3
       0     3845        M 0x800006a4 addi    a0, a0, -1             #; a0  = 67, (wrb) a0  <-- 66
                         M                                           #; (f:fpu) ft3  <-- 3.0
       0     3846        M 0x800006a8 addi    a1, a1, 1              #; a1  = 33, (wrb) a1  <-- 34
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
       0     3847        M 0x800006ac bnez    a0, pc - 32            #; a0  = 66, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 3.0
       0     3848        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 34, a2  = 0xcccccccd
       0     3851        M                                           #; (acc) a4  <-- 0x00375713
       0     3852        M 0x80000690 srli    a4, a4, 3              #; a4  = 27, (wrb) a4  <-- 3
       0     3853        M 0x80000694 mul     a4, a4, a3             #; a4  = 3, a3  = 10
       0     3856        M                                           #; (acc) a4  <-- 0x40e58733
       0     3857        M 0x80000698 sub     a4, a1, a4             #; a1  = 34, a4  = 30, (wrb) a4  <-- 4
       0     3859        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 4
       0     3860        M 0x800006a4 addi    a0, a0, -1             #; a0  = 66, (wrb) a0  <-- 65
                         M                                           #; (f:fpu) ft3  <-- 4.0
       0     3861        M 0x800006a8 addi    a1, a1, 1              #; a1  = 34, (wrb) a1  <-- 35
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
       0     3862        M 0x800006ac bnez    a0, pc - 32            #; a0  = 65, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 4.0
       0     3863        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 35, a2  = 0xcccccccd
       0     3866        M                                           #; (acc) a4  <-- 0x00375713
       0     3867        M 0x80000690 srli    a4, a4, 3              #; a4  = 28, (wrb) a4  <-- 3
       0     3868        M 0x80000694 mul     a4, a4, a3             #; a4  = 3, a3  = 10
       0     3871        M                                           #; (acc) a4  <-- 0x40e58733
       0     3872        M 0x80000698 sub     a4, a1, a4             #; a1  = 35, a4  = 30, (wrb) a4  <-- 5
       0     3874        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 5
       0     3875        M 0x800006a4 addi    a0, a0, -1             #; a0  = 65, (wrb) a0  <-- 64
                         M                                           #; (f:fpu) ft3  <-- 5.0
       0     3876        M 0x800006a8 addi    a1, a1, 1              #; a1  = 35, (wrb) a1  <-- 36
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
       0     3877        M 0x800006ac bnez    a0, pc - 32            #; a0  = 64, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 5.0
       0     3878        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 36, a2  = 0xcccccccd
       0     3881        M                                           #; (acc) a4  <-- 0x00375713
       0     3882        M 0x80000690 srli    a4, a4, 3              #; a4  = 28, (wrb) a4  <-- 3
       0     3883        M 0x80000694 mul     a4, a4, a3             #; a4  = 3, a3  = 10
       0     3886        M                                           #; (acc) a4  <-- 0x40e58733
       0     3887        M 0x80000698 sub     a4, a1, a4             #; a1  = 36, a4  = 30, (wrb) a4  <-- 6
       0     3889        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 6
       0     3890        M 0x800006a4 addi    a0, a0, -1             #; a0  = 64, (wrb) a0  <-- 63
                         M                                           #; (f:fpu) ft3  <-- 6.0
       0     3891        M 0x800006a8 addi    a1, a1, 1              #; a1  = 36, (wrb) a1  <-- 37
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
       0     3892        M 0x800006ac bnez    a0, pc - 32            #; a0  = 63, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 6.0
       0     3893        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 37, a2  = 0xcccccccd
       0     3896        M                                           #; (acc) a4  <-- 0x00375713
       0     3897        M 0x80000690 srli    a4, a4, 3              #; a4  = 29, (wrb) a4  <-- 3
       0     3898        M 0x80000694 mul     a4, a4, a3             #; a4  = 3, a3  = 10
       0     3901        M                                           #; (acc) a4  <-- 0x40e58733
       0     3902        M 0x80000698 sub     a4, a1, a4             #; a1  = 37, a4  = 30, (wrb) a4  <-- 7
       0     3904        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 7
       0     3905        M 0x800006a4 addi    a0, a0, -1             #; a0  = 63, (wrb) a0  <-- 62
                         M                                           #; (f:fpu) ft3  <-- 7.0
       0     3906        M 0x800006a8 addi    a1, a1, 1              #; a1  = 37, (wrb) a1  <-- 38
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
       0     3907        M 0x800006ac bnez    a0, pc - 32            #; a0  = 62, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 7.0
       0     3908        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 38, a2  = 0xcccccccd
       0     3911        M                                           #; (acc) a4  <-- 0x00375713
       0     3912        M 0x80000690 srli    a4, a4, 3              #; a4  = 30, (wrb) a4  <-- 3
       0     3913        M 0x80000694 mul     a4, a4, a3             #; a4  = 3, a3  = 10
       0     3916        M                                           #; (acc) a4  <-- 0x40e58733
       0     3917        M 0x80000698 sub     a4, a1, a4             #; a1  = 38, a4  = 30, (wrb) a4  <-- 8
       0     3919        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 8
       0     3920        M 0x800006a4 addi    a0, a0, -1             #; a0  = 62, (wrb) a0  <-- 61
                         M                                           #; (f:fpu) ft3  <-- 8.0
       0     3921        M 0x800006a8 addi    a1, a1, 1              #; a1  = 38, (wrb) a1  <-- 39
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
       0     3922        M 0x800006ac bnez    a0, pc - 32            #; a0  = 61, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 8.0
       0     3923        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 39, a2  = 0xcccccccd
       0     3926        M                                           #; (acc) a4  <-- 0x00375713
       0     3927        M 0x80000690 srli    a4, a4, 3              #; a4  = 31, (wrb) a4  <-- 3
       0     3928        M 0x80000694 mul     a4, a4, a3             #; a4  = 3, a3  = 10
       0     3931        M                                           #; (acc) a4  <-- 0x40e58733
       0     3932        M 0x80000698 sub     a4, a1, a4             #; a1  = 39, a4  = 30, (wrb) a4  <-- 9
       0     3934        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 9
       0     3935        M 0x800006a4 addi    a0, a0, -1             #; a0  = 61, (wrb) a0  <-- 60
                         M                                           #; (f:fpu) ft3  <-- 9.0
       0     3936        M 0x800006a8 addi    a1, a1, 1              #; a1  = 39, (wrb) a1  <-- 40
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
       0     3937        M 0x800006ac bnez    a0, pc - 32            #; a0  = 60, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 9.0
       0     3938        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 40, a2  = 0xcccccccd
       0     3941        M                                           #; (acc) a4  <-- 0x00375713
       0     3942        M 0x80000690 srli    a4, a4, 3              #; a4  = 32, (wrb) a4  <-- 4
       0     3943        M 0x80000694 mul     a4, a4, a3             #; a4  = 4, a3  = 10
       0     3946        M                                           #; (acc) a4  <-- 0x40e58733
       0     3947        M 0x80000698 sub     a4, a1, a4             #; a1  = 40, a4  = 40, (wrb) a4  <-- 0
       0     3949        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 0
       0     3950        M 0x800006a4 addi    a0, a0, -1             #; a0  = 60, (wrb) a0  <-- 59
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     3951        M 0x800006a8 addi    a1, a1, 1              #; a1  = 40, (wrb) a1  <-- 41
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     3952        M 0x800006ac bnez    a0, pc - 32            #; a0  = 59, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     3953        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 41, a2  = 0xcccccccd
       0     3956        M                                           #; (acc) a4  <-- 0x00375713
       0     3957        M 0x80000690 srli    a4, a4, 3              #; a4  = 32, (wrb) a4  <-- 4
       0     3958        M 0x80000694 mul     a4, a4, a3             #; a4  = 4, a3  = 10
       0     3961        M                                           #; (acc) a4  <-- 0x40e58733
       0     3962        M 0x80000698 sub     a4, a1, a4             #; a1  = 41, a4  = 40, (wrb) a4  <-- 1
       0     3964        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 1
       0     3965        M 0x800006a4 addi    a0, a0, -1             #; a0  = 59, (wrb) a0  <-- 58
                         M                                           #; (f:fpu) ft3  <-- 1.0
       0     3966        M 0x800006a8 addi    a1, a1, 1              #; a1  = 41, (wrb) a1  <-- 42
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
       0     3967        M 0x800006ac bnez    a0, pc - 32            #; a0  = 58, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 1.0
       0     3968        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 42, a2  = 0xcccccccd
       0     3971        M                                           #; (acc) a4  <-- 0x00375713
       0     3972        M 0x80000690 srli    a4, a4, 3              #; a4  = 33, (wrb) a4  <-- 4
       0     3973        M 0x80000694 mul     a4, a4, a3             #; a4  = 4, a3  = 10
       0     3976        M                                           #; (acc) a4  <-- 0x40e58733
       0     3977        M 0x80000698 sub     a4, a1, a4             #; a1  = 42, a4  = 40, (wrb) a4  <-- 2
       0     3979        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 2
       0     3980        M 0x800006a4 addi    a0, a0, -1             #; a0  = 58, (wrb) a0  <-- 57
                         M                                           #; (f:fpu) ft3  <-- 2.0
       0     3981        M 0x800006a8 addi    a1, a1, 1              #; a1  = 42, (wrb) a1  <-- 43
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
       0     3982        M 0x800006ac bnez    a0, pc - 32            #; a0  = 57, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 2.0
       0     3983        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 43, a2  = 0xcccccccd
       0     3986        M                                           #; (acc) a4  <-- 0x00375713
       0     3987        M 0x80000690 srli    a4, a4, 3              #; a4  = 34, (wrb) a4  <-- 4
       0     3988        M 0x80000694 mul     a4, a4, a3             #; a4  = 4, a3  = 10
       0     3991        M                                           #; (acc) a4  <-- 0x40e58733
       0     3992        M 0x80000698 sub     a4, a1, a4             #; a1  = 43, a4  = 40, (wrb) a4  <-- 3
       0     3994        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 3
       0     3995        M 0x800006a4 addi    a0, a0, -1             #; a0  = 57, (wrb) a0  <-- 56
                         M                                           #; (f:fpu) ft3  <-- 3.0
       0     3996        M 0x800006a8 addi    a1, a1, 1              #; a1  = 43, (wrb) a1  <-- 44
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
       0     3997        M 0x800006ac bnez    a0, pc - 32            #; a0  = 56, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 3.0
       0     3998        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 44, a2  = 0xcccccccd
       0     4001        M                                           #; (acc) a4  <-- 0x00375713
       0     4002        M 0x80000690 srli    a4, a4, 3              #; a4  = 35, (wrb) a4  <-- 4
       0     4003        M 0x80000694 mul     a4, a4, a3             #; a4  = 4, a3  = 10
       0     4006        M                                           #; (acc) a4  <-- 0x40e58733
       0     4007        M 0x80000698 sub     a4, a1, a4             #; a1  = 44, a4  = 40, (wrb) a4  <-- 4
       0     4009        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 4
       0     4010        M 0x800006a4 addi    a0, a0, -1             #; a0  = 56, (wrb) a0  <-- 55
                         M                                           #; (f:fpu) ft3  <-- 4.0
       0     4011        M 0x800006a8 addi    a1, a1, 1              #; a1  = 44, (wrb) a1  <-- 45
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
       0     4012        M 0x800006ac bnez    a0, pc - 32            #; a0  = 55, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 4.0
       0     4013        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 45, a2  = 0xcccccccd
       0     4016        M                                           #; (acc) a4  <-- 0x00375713
       0     4017        M 0x80000690 srli    a4, a4, 3              #; a4  = 36, (wrb) a4  <-- 4
       0     4018        M 0x80000694 mul     a4, a4, a3             #; a4  = 4, a3  = 10
       0     4021        M                                           #; (acc) a4  <-- 0x40e58733
       0     4022        M 0x80000698 sub     a4, a1, a4             #; a1  = 45, a4  = 40, (wrb) a4  <-- 5
       0     4024        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 5
       0     4025        M 0x800006a4 addi    a0, a0, -1             #; a0  = 55, (wrb) a0  <-- 54
                         M                                           #; (f:fpu) ft3  <-- 5.0
       0     4026        M 0x800006a8 addi    a1, a1, 1              #; a1  = 45, (wrb) a1  <-- 46
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
       0     4027        M 0x800006ac bnez    a0, pc - 32            #; a0  = 54, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 5.0
       0     4028        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 46, a2  = 0xcccccccd
       0     4031        M                                           #; (acc) a4  <-- 0x00375713
       0     4032        M 0x80000690 srli    a4, a4, 3              #; a4  = 36, (wrb) a4  <-- 4
       0     4033        M 0x80000694 mul     a4, a4, a3             #; a4  = 4, a3  = 10
       0     4036        M                                           #; (acc) a4  <-- 0x40e58733
       0     4037        M 0x80000698 sub     a4, a1, a4             #; a1  = 46, a4  = 40, (wrb) a4  <-- 6
       0     4039        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 6
       0     4040        M 0x800006a4 addi    a0, a0, -1             #; a0  = 54, (wrb) a0  <-- 53
                         M                                           #; (f:fpu) ft3  <-- 6.0
       0     4041        M 0x800006a8 addi    a1, a1, 1              #; a1  = 46, (wrb) a1  <-- 47
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
       0     4042        M 0x800006ac bnez    a0, pc - 32            #; a0  = 53, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 6.0
       0     4043        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 47, a2  = 0xcccccccd
       0     4046        M                                           #; (acc) a4  <-- 0x00375713
       0     4047        M 0x80000690 srli    a4, a4, 3              #; a4  = 37, (wrb) a4  <-- 4
       0     4048        M 0x80000694 mul     a4, a4, a3             #; a4  = 4, a3  = 10
       0     4051        M                                           #; (acc) a4  <-- 0x40e58733
       0     4052        M 0x80000698 sub     a4, a1, a4             #; a1  = 47, a4  = 40, (wrb) a4  <-- 7
       0     4054        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 7
       0     4055        M 0x800006a4 addi    a0, a0, -1             #; a0  = 53, (wrb) a0  <-- 52
                         M                                           #; (f:fpu) ft3  <-- 7.0
       0     4056        M 0x800006a8 addi    a1, a1, 1              #; a1  = 47, (wrb) a1  <-- 48
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
       0     4057        M 0x800006ac bnez    a0, pc - 32            #; a0  = 52, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 7.0
       0     4058        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 48, a2  = 0xcccccccd
       0     4061        M                                           #; (acc) a4  <-- 0x00375713
       0     4062        M 0x80000690 srli    a4, a4, 3              #; a4  = 38, (wrb) a4  <-- 4
       0     4063        M 0x80000694 mul     a4, a4, a3             #; a4  = 4, a3  = 10
       0     4066        M                                           #; (acc) a4  <-- 0x40e58733
       0     4067        M 0x80000698 sub     a4, a1, a4             #; a1  = 48, a4  = 40, (wrb) a4  <-- 8
       0     4069        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 8
       0     4070        M 0x800006a4 addi    a0, a0, -1             #; a0  = 52, (wrb) a0  <-- 51
                         M                                           #; (f:fpu) ft3  <-- 8.0
       0     4071        M 0x800006a8 addi    a1, a1, 1              #; a1  = 48, (wrb) a1  <-- 49
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
       0     4072        M 0x800006ac bnez    a0, pc - 32            #; a0  = 51, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 8.0
       0     4073        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 49, a2  = 0xcccccccd
       0     4076        M                                           #; (acc) a4  <-- 0x00375713
       0     4077        M 0x80000690 srli    a4, a4, 3              #; a4  = 39, (wrb) a4  <-- 4
       0     4078        M 0x80000694 mul     a4, a4, a3             #; a4  = 4, a3  = 10
       0     4081        M                                           #; (acc) a4  <-- 0x40e58733
       0     4082        M 0x80000698 sub     a4, a1, a4             #; a1  = 49, a4  = 40, (wrb) a4  <-- 9
       0     4084        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 9
       0     4085        M 0x800006a4 addi    a0, a0, -1             #; a0  = 51, (wrb) a0  <-- 50
                         M                                           #; (f:fpu) ft3  <-- 9.0
       0     4086        M 0x800006a8 addi    a1, a1, 1              #; a1  = 49, (wrb) a1  <-- 50
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
       0     4087        M 0x800006ac bnez    a0, pc - 32            #; a0  = 50, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 9.0
       0     4088        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 50, a2  = 0xcccccccd
       0     4091        M                                           #; (acc) a4  <-- 0x00375713
       0     4092        M 0x80000690 srli    a4, a4, 3              #; a4  = 40, (wrb) a4  <-- 5
       0     4093        M 0x80000694 mul     a4, a4, a3             #; a4  = 5, a3  = 10
       0     4096        M                                           #; (acc) a4  <-- 0x40e58733
       0     4097        M 0x80000698 sub     a4, a1, a4             #; a1  = 50, a4  = 50, (wrb) a4  <-- 0
       0     4099        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 0
       0     4100        M 0x800006a4 addi    a0, a0, -1             #; a0  = 50, (wrb) a0  <-- 49
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     4101        M 0x800006a8 addi    a1, a1, 1              #; a1  = 50, (wrb) a1  <-- 51
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4102        M 0x800006ac bnez    a0, pc - 32            #; a0  = 49, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     4103        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 51, a2  = 0xcccccccd
       0     4106        M                                           #; (acc) a4  <-- 0x00375713
       0     4107        M 0x80000690 srli    a4, a4, 3              #; a4  = 40, (wrb) a4  <-- 5
       0     4108        M 0x80000694 mul     a4, a4, a3             #; a4  = 5, a3  = 10
       0     4111        M                                           #; (acc) a4  <-- 0x40e58733
       0     4112        M 0x80000698 sub     a4, a1, a4             #; a1  = 51, a4  = 50, (wrb) a4  <-- 1
       0     4114        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 1
       0     4115        M 0x800006a4 addi    a0, a0, -1             #; a0  = 49, (wrb) a0  <-- 48
                         M                                           #; (f:fpu) ft3  <-- 1.0
       0     4116        M 0x800006a8 addi    a1, a1, 1              #; a1  = 51, (wrb) a1  <-- 52
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
       0     4117        M 0x800006ac bnez    a0, pc - 32            #; a0  = 48, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 1.0
       0     4118        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 52, a2  = 0xcccccccd
       0     4121        M                                           #; (acc) a4  <-- 0x00375713
       0     4122        M 0x80000690 srli    a4, a4, 3              #; a4  = 41, (wrb) a4  <-- 5
       0     4123        M 0x80000694 mul     a4, a4, a3             #; a4  = 5, a3  = 10
       0     4126        M                                           #; (acc) a4  <-- 0x40e58733
       0     4127        M 0x80000698 sub     a4, a1, a4             #; a1  = 52, a4  = 50, (wrb) a4  <-- 2
       0     4129        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 2
       0     4130        M 0x800006a4 addi    a0, a0, -1             #; a0  = 48, (wrb) a0  <-- 47
                         M                                           #; (f:fpu) ft3  <-- 2.0
       0     4131        M 0x800006a8 addi    a1, a1, 1              #; a1  = 52, (wrb) a1  <-- 53
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
       0     4132        M 0x800006ac bnez    a0, pc - 32            #; a0  = 47, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 2.0
       0     4133        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 53, a2  = 0xcccccccd
       0     4136        M                                           #; (acc) a4  <-- 0x00375713
       0     4137        M 0x80000690 srli    a4, a4, 3              #; a4  = 42, (wrb) a4  <-- 5
       0     4138        M 0x80000694 mul     a4, a4, a3             #; a4  = 5, a3  = 10
       0     4141        M                                           #; (acc) a4  <-- 0x40e58733
       0     4142        M 0x80000698 sub     a4, a1, a4             #; a1  = 53, a4  = 50, (wrb) a4  <-- 3
       0     4144        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 3
       0     4145        M 0x800006a4 addi    a0, a0, -1             #; a0  = 47, (wrb) a0  <-- 46
                         M                                           #; (f:fpu) ft3  <-- 3.0
       0     4146        M 0x800006a8 addi    a1, a1, 1              #; a1  = 53, (wrb) a1  <-- 54
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
       0     4147        M 0x800006ac bnez    a0, pc - 32            #; a0  = 46, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 3.0
       0     4148        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 54, a2  = 0xcccccccd
       0     4151        M                                           #; (acc) a4  <-- 0x00375713
       0     4152        M 0x80000690 srli    a4, a4, 3              #; a4  = 43, (wrb) a4  <-- 5
       0     4153        M 0x80000694 mul     a4, a4, a3             #; a4  = 5, a3  = 10
       0     4156        M                                           #; (acc) a4  <-- 0x40e58733
       0     4157        M 0x80000698 sub     a4, a1, a4             #; a1  = 54, a4  = 50, (wrb) a4  <-- 4
       0     4159        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 4
       0     4160        M 0x800006a4 addi    a0, a0, -1             #; a0  = 46, (wrb) a0  <-- 45
                         M                                           #; (f:fpu) ft3  <-- 4.0
       0     4161        M 0x800006a8 addi    a1, a1, 1              #; a1  = 54, (wrb) a1  <-- 55
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
       0     4162        M 0x800006ac bnez    a0, pc - 32            #; a0  = 45, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 4.0
       0     4163        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 55, a2  = 0xcccccccd
       0     4166        M                                           #; (acc) a4  <-- 0x00375713
       0     4167        M 0x80000690 srli    a4, a4, 3              #; a4  = 44, (wrb) a4  <-- 5
       0     4168        M 0x80000694 mul     a4, a4, a3             #; a4  = 5, a3  = 10
       0     4171        M                                           #; (acc) a4  <-- 0x40e58733
       0     4172        M 0x80000698 sub     a4, a1, a4             #; a1  = 55, a4  = 50, (wrb) a4  <-- 5
       0     4174        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 5
       0     4175        M 0x800006a4 addi    a0, a0, -1             #; a0  = 45, (wrb) a0  <-- 44
                         M                                           #; (f:fpu) ft3  <-- 5.0
       0     4176        M 0x800006a8 addi    a1, a1, 1              #; a1  = 55, (wrb) a1  <-- 56
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
       0     4177        M 0x800006ac bnez    a0, pc - 32            #; a0  = 44, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 5.0
       0     4178        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 56, a2  = 0xcccccccd
       0     4181        M                                           #; (acc) a4  <-- 0x00375713
       0     4182        M 0x80000690 srli    a4, a4, 3              #; a4  = 44, (wrb) a4  <-- 5
       0     4183        M 0x80000694 mul     a4, a4, a3             #; a4  = 5, a3  = 10
       0     4186        M                                           #; (acc) a4  <-- 0x40e58733
       0     4187        M 0x80000698 sub     a4, a1, a4             #; a1  = 56, a4  = 50, (wrb) a4  <-- 6
       0     4189        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 6
       0     4190        M 0x800006a4 addi    a0, a0, -1             #; a0  = 44, (wrb) a0  <-- 43
                         M                                           #; (f:fpu) ft3  <-- 6.0
       0     4191        M 0x800006a8 addi    a1, a1, 1              #; a1  = 56, (wrb) a1  <-- 57
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
       0     4192        M 0x800006ac bnez    a0, pc - 32            #; a0  = 43, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 6.0
       0     4193        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 57, a2  = 0xcccccccd
       0     4196        M                                           #; (acc) a4  <-- 0x00375713
       0     4197        M 0x80000690 srli    a4, a4, 3              #; a4  = 45, (wrb) a4  <-- 5
       0     4198        M 0x80000694 mul     a4, a4, a3             #; a4  = 5, a3  = 10
       0     4201        M                                           #; (acc) a4  <-- 0x40e58733
       0     4202        M 0x80000698 sub     a4, a1, a4             #; a1  = 57, a4  = 50, (wrb) a4  <-- 7
       0     4204        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 7
       0     4205        M 0x800006a4 addi    a0, a0, -1             #; a0  = 43, (wrb) a0  <-- 42
                         M                                           #; (f:fpu) ft3  <-- 7.0
       0     4206        M 0x800006a8 addi    a1, a1, 1              #; a1  = 57, (wrb) a1  <-- 58
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
       0     4207        M 0x800006ac bnez    a0, pc - 32            #; a0  = 42, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 7.0
       0     4208        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 58, a2  = 0xcccccccd
       0     4211        M                                           #; (acc) a4  <-- 0x00375713
       0     4212        M 0x80000690 srli    a4, a4, 3              #; a4  = 46, (wrb) a4  <-- 5
       0     4213        M 0x80000694 mul     a4, a4, a3             #; a4  = 5, a3  = 10
       0     4216        M                                           #; (acc) a4  <-- 0x40e58733
       0     4217        M 0x80000698 sub     a4, a1, a4             #; a1  = 58, a4  = 50, (wrb) a4  <-- 8
       0     4219        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 8
       0     4220        M 0x800006a4 addi    a0, a0, -1             #; a0  = 42, (wrb) a0  <-- 41
                         M                                           #; (f:fpu) ft3  <-- 8.0
       0     4221        M 0x800006a8 addi    a1, a1, 1              #; a1  = 58, (wrb) a1  <-- 59
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
       0     4222        M 0x800006ac bnez    a0, pc - 32            #; a0  = 41, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 8.0
       0     4223        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 59, a2  = 0xcccccccd
       0     4226        M                                           #; (acc) a4  <-- 0x00375713
       0     4227        M 0x80000690 srli    a4, a4, 3              #; a4  = 47, (wrb) a4  <-- 5
       0     4228        M 0x80000694 mul     a4, a4, a3             #; a4  = 5, a3  = 10
       0     4231        M                                           #; (acc) a4  <-- 0x40e58733
       0     4232        M 0x80000698 sub     a4, a1, a4             #; a1  = 59, a4  = 50, (wrb) a4  <-- 9
       0     4234        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 9
       0     4235        M 0x800006a4 addi    a0, a0, -1             #; a0  = 41, (wrb) a0  <-- 40
                         M                                           #; (f:fpu) ft3  <-- 9.0
       0     4236        M 0x800006a8 addi    a1, a1, 1              #; a1  = 59, (wrb) a1  <-- 60
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
       0     4237        M 0x800006ac bnez    a0, pc - 32            #; a0  = 40, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 9.0
       0     4238        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 60, a2  = 0xcccccccd
       0     4241        M                                           #; (acc) a4  <-- 0x00375713
       0     4242        M 0x80000690 srli    a4, a4, 3              #; a4  = 48, (wrb) a4  <-- 6
       0     4243        M 0x80000694 mul     a4, a4, a3             #; a4  = 6, a3  = 10
       0     4246        M                                           #; (acc) a4  <-- 0x40e58733
       0     4247        M 0x80000698 sub     a4, a1, a4             #; a1  = 60, a4  = 60, (wrb) a4  <-- 0
       0     4249        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 0
       0     4250        M 0x800006a4 addi    a0, a0, -1             #; a0  = 40, (wrb) a0  <-- 39
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     4251        M 0x800006a8 addi    a1, a1, 1              #; a1  = 60, (wrb) a1  <-- 61
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4252        M 0x800006ac bnez    a0, pc - 32            #; a0  = 39, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     4253        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 61, a2  = 0xcccccccd
       0     4256        M                                           #; (acc) a4  <-- 0x00375713
       0     4257        M 0x80000690 srli    a4, a4, 3              #; a4  = 48, (wrb) a4  <-- 6
       0     4258        M 0x80000694 mul     a4, a4, a3             #; a4  = 6, a3  = 10
       0     4261        M                                           #; (acc) a4  <-- 0x40e58733
       0     4262        M 0x80000698 sub     a4, a1, a4             #; a1  = 61, a4  = 60, (wrb) a4  <-- 1
       0     4264        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 1
       0     4265        M 0x800006a4 addi    a0, a0, -1             #; a0  = 39, (wrb) a0  <-- 38
                         M                                           #; (f:fpu) ft3  <-- 1.0
       0     4266        M 0x800006a8 addi    a1, a1, 1              #; a1  = 61, (wrb) a1  <-- 62
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
       0     4267        M 0x800006ac bnez    a0, pc - 32            #; a0  = 38, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 1.0
       0     4268        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 62, a2  = 0xcccccccd
       0     4271        M                                           #; (acc) a4  <-- 0x00375713
       0     4272        M 0x80000690 srli    a4, a4, 3              #; a4  = 49, (wrb) a4  <-- 6
       0     4273        M 0x80000694 mul     a4, a4, a3             #; a4  = 6, a3  = 10
       0     4276        M                                           #; (acc) a4  <-- 0x40e58733
       0     4277        M 0x80000698 sub     a4, a1, a4             #; a1  = 62, a4  = 60, (wrb) a4  <-- 2
       0     4279        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 2
       0     4280        M 0x800006a4 addi    a0, a0, -1             #; a0  = 38, (wrb) a0  <-- 37
                         M                                           #; (f:fpu) ft3  <-- 2.0
       0     4281        M 0x800006a8 addi    a1, a1, 1              #; a1  = 62, (wrb) a1  <-- 63
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
       0     4282        M 0x800006ac bnez    a0, pc - 32            #; a0  = 37, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 2.0
       0     4283        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 63, a2  = 0xcccccccd
       0     4286        M                                           #; (acc) a4  <-- 0x00375713
       0     4287        M 0x80000690 srli    a4, a4, 3              #; a4  = 50, (wrb) a4  <-- 6
       0     4288        M 0x80000694 mul     a4, a4, a3             #; a4  = 6, a3  = 10
       0     4291        M                                           #; (acc) a4  <-- 0x40e58733
       0     4292        M 0x80000698 sub     a4, a1, a4             #; a1  = 63, a4  = 60, (wrb) a4  <-- 3
       0     4294        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 3
       0     4295        M 0x800006a4 addi    a0, a0, -1             #; a0  = 37, (wrb) a0  <-- 36
                         M                                           #; (f:fpu) ft3  <-- 3.0
       0     4296        M 0x800006a8 addi    a1, a1, 1              #; a1  = 63, (wrb) a1  <-- 64
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
       0     4297        M 0x800006ac bnez    a0, pc - 32            #; a0  = 36, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 3.0
       0     4298        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 64, a2  = 0xcccccccd
       0     4301        M                                           #; (acc) a4  <-- 0x00375713
       0     4302        M 0x80000690 srli    a4, a4, 3              #; a4  = 51, (wrb) a4  <-- 6
       0     4303        M 0x80000694 mul     a4, a4, a3             #; a4  = 6, a3  = 10
       0     4306        M                                           #; (acc) a4  <-- 0x40e58733
       0     4307        M 0x80000698 sub     a4, a1, a4             #; a1  = 64, a4  = 60, (wrb) a4  <-- 4
       0     4309        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 4
       0     4310        M 0x800006a4 addi    a0, a0, -1             #; a0  = 36, (wrb) a0  <-- 35
                         M                                           #; (f:fpu) ft3  <-- 4.0
       0     4311        M 0x800006a8 addi    a1, a1, 1              #; a1  = 64, (wrb) a1  <-- 65
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
       0     4312        M 0x800006ac bnez    a0, pc - 32            #; a0  = 35, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 4.0
       0     4313        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 65, a2  = 0xcccccccd
       0     4316        M                                           #; (acc) a4  <-- 0x00375713
       0     4317        M 0x80000690 srli    a4, a4, 3              #; a4  = 52, (wrb) a4  <-- 6
       0     4318        M 0x80000694 mul     a4, a4, a3             #; a4  = 6, a3  = 10
       0     4321        M                                           #; (acc) a4  <-- 0x40e58733
       0     4322        M 0x80000698 sub     a4, a1, a4             #; a1  = 65, a4  = 60, (wrb) a4  <-- 5
       0     4324        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 5
       0     4325        M 0x800006a4 addi    a0, a0, -1             #; a0  = 35, (wrb) a0  <-- 34
                         M                                           #; (f:fpu) ft3  <-- 5.0
       0     4326        M 0x800006a8 addi    a1, a1, 1              #; a1  = 65, (wrb) a1  <-- 66
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
       0     4327        M 0x800006ac bnez    a0, pc - 32            #; a0  = 34, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 5.0
       0     4328        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 66, a2  = 0xcccccccd
       0     4331        M                                           #; (acc) a4  <-- 0x00375713
       0     4332        M 0x80000690 srli    a4, a4, 3              #; a4  = 52, (wrb) a4  <-- 6
       0     4333        M 0x80000694 mul     a4, a4, a3             #; a4  = 6, a3  = 10
       0     4336        M                                           #; (acc) a4  <-- 0x40e58733
       0     4337        M 0x80000698 sub     a4, a1, a4             #; a1  = 66, a4  = 60, (wrb) a4  <-- 6
       0     4339        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 6
       0     4340        M 0x800006a4 addi    a0, a0, -1             #; a0  = 34, (wrb) a0  <-- 33
                         M                                           #; (f:fpu) ft3  <-- 6.0
       0     4341        M 0x800006a8 addi    a1, a1, 1              #; a1  = 66, (wrb) a1  <-- 67
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
       0     4342        M 0x800006ac bnez    a0, pc - 32            #; a0  = 33, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 6.0
       0     4343        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 67, a2  = 0xcccccccd
       0     4346        M                                           #; (acc) a4  <-- 0x00375713
       0     4347        M 0x80000690 srli    a4, a4, 3              #; a4  = 53, (wrb) a4  <-- 6
       0     4348        M 0x80000694 mul     a4, a4, a3             #; a4  = 6, a3  = 10
       0     4351        M                                           #; (acc) a4  <-- 0x40e58733
       0     4352        M 0x80000698 sub     a4, a1, a4             #; a1  = 67, a4  = 60, (wrb) a4  <-- 7
       0     4354        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 7
       0     4355        M 0x800006a4 addi    a0, a0, -1             #; a0  = 33, (wrb) a0  <-- 32
                         M                                           #; (f:fpu) ft3  <-- 7.0
       0     4356        M 0x800006a8 addi    a1, a1, 1              #; a1  = 67, (wrb) a1  <-- 68
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
       0     4357        M 0x800006ac bnez    a0, pc - 32            #; a0  = 32, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 7.0
       0     4358        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 68, a2  = 0xcccccccd
       0     4361        M                                           #; (acc) a4  <-- 0x00375713
       0     4362        M 0x80000690 srli    a4, a4, 3              #; a4  = 54, (wrb) a4  <-- 6
       0     4363        M 0x80000694 mul     a4, a4, a3             #; a4  = 6, a3  = 10
       0     4366        M                                           #; (acc) a4  <-- 0x40e58733
       0     4367        M 0x80000698 sub     a4, a1, a4             #; a1  = 68, a4  = 60, (wrb) a4  <-- 8
       0     4369        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 8
       0     4370        M 0x800006a4 addi    a0, a0, -1             #; a0  = 32, (wrb) a0  <-- 31
                         M                                           #; (f:fpu) ft3  <-- 8.0
       0     4371        M 0x800006a8 addi    a1, a1, 1              #; a1  = 68, (wrb) a1  <-- 69
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
       0     4372        M 0x800006ac bnez    a0, pc - 32            #; a0  = 31, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 8.0
       0     4373        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 69, a2  = 0xcccccccd
       0     4376        M                                           #; (acc) a4  <-- 0x00375713
       0     4377        M 0x80000690 srli    a4, a4, 3              #; a4  = 55, (wrb) a4  <-- 6
       0     4378        M 0x80000694 mul     a4, a4, a3             #; a4  = 6, a3  = 10
       0     4381        M                                           #; (acc) a4  <-- 0x40e58733
       0     4382        M 0x80000698 sub     a4, a1, a4             #; a1  = 69, a4  = 60, (wrb) a4  <-- 9
       0     4384        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 9
       0     4385        M 0x800006a4 addi    a0, a0, -1             #; a0  = 31, (wrb) a0  <-- 30
                         M                                           #; (f:fpu) ft3  <-- 9.0
       0     4386        M 0x800006a8 addi    a1, a1, 1              #; a1  = 69, (wrb) a1  <-- 70
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
       0     4387        M 0x800006ac bnez    a0, pc - 32            #; a0  = 30, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 9.0
       0     4388        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 70, a2  = 0xcccccccd
       0     4391        M                                           #; (acc) a4  <-- 0x00375713
       0     4392        M 0x80000690 srli    a4, a4, 3              #; a4  = 56, (wrb) a4  <-- 7
       0     4393        M 0x80000694 mul     a4, a4, a3             #; a4  = 7, a3  = 10
       0     4396        M                                           #; (acc) a4  <-- 0x40e58733
       0     4397        M 0x80000698 sub     a4, a1, a4             #; a1  = 70, a4  = 70, (wrb) a4  <-- 0
       0     4399        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 0
       0     4400        M 0x800006a4 addi    a0, a0, -1             #; a0  = 30, (wrb) a0  <-- 29
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     4401        M 0x800006a8 addi    a1, a1, 1              #; a1  = 70, (wrb) a1  <-- 71
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4402        M 0x800006ac bnez    a0, pc - 32            #; a0  = 29, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     4403        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 71, a2  = 0xcccccccd
       0     4406        M                                           #; (acc) a4  <-- 0x00375713
       0     4407        M 0x80000690 srli    a4, a4, 3              #; a4  = 56, (wrb) a4  <-- 7
       0     4408        M 0x80000694 mul     a4, a4, a3             #; a4  = 7, a3  = 10
       0     4411        M                                           #; (acc) a4  <-- 0x40e58733
       0     4412        M 0x80000698 sub     a4, a1, a4             #; a1  = 71, a4  = 70, (wrb) a4  <-- 1
       0     4414        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 1
       0     4415        M 0x800006a4 addi    a0, a0, -1             #; a0  = 29, (wrb) a0  <-- 28
                         M                                           #; (f:fpu) ft3  <-- 1.0
       0     4416        M 0x800006a8 addi    a1, a1, 1              #; a1  = 71, (wrb) a1  <-- 72
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
       0     4417        M 0x800006ac bnez    a0, pc - 32            #; a0  = 28, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 1.0
       0     4418        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 72, a2  = 0xcccccccd
       0     4421        M                                           #; (acc) a4  <-- 0x00375713
       0     4422        M 0x80000690 srli    a4, a4, 3              #; a4  = 57, (wrb) a4  <-- 7
       0     4423        M 0x80000694 mul     a4, a4, a3             #; a4  = 7, a3  = 10
       0     4426        M                                           #; (acc) a4  <-- 0x40e58733
       0     4427        M 0x80000698 sub     a4, a1, a4             #; a1  = 72, a4  = 70, (wrb) a4  <-- 2
       0     4429        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 2
       0     4430        M 0x800006a4 addi    a0, a0, -1             #; a0  = 28, (wrb) a0  <-- 27
                         M                                           #; (f:fpu) ft3  <-- 2.0
       0     4431        M 0x800006a8 addi    a1, a1, 1              #; a1  = 72, (wrb) a1  <-- 73
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
       0     4432        M 0x800006ac bnez    a0, pc - 32            #; a0  = 27, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 2.0
       0     4433        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 73, a2  = 0xcccccccd
       0     4436        M                                           #; (acc) a4  <-- 0x00375713
       0     4437        M 0x80000690 srli    a4, a4, 3              #; a4  = 58, (wrb) a4  <-- 7
       0     4438        M 0x80000694 mul     a4, a4, a3             #; a4  = 7, a3  = 10
       0     4441        M                                           #; (acc) a4  <-- 0x40e58733
       0     4442        M 0x80000698 sub     a4, a1, a4             #; a1  = 73, a4  = 70, (wrb) a4  <-- 3
       0     4444        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 3
       0     4445        M 0x800006a4 addi    a0, a0, -1             #; a0  = 27, (wrb) a0  <-- 26
                         M                                           #; (f:fpu) ft3  <-- 3.0
       0     4446        M 0x800006a8 addi    a1, a1, 1              #; a1  = 73, (wrb) a1  <-- 74
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
       0     4447        M 0x800006ac bnez    a0, pc - 32            #; a0  = 26, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 3.0
       0     4448        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 74, a2  = 0xcccccccd
       0     4451        M                                           #; (acc) a4  <-- 0x00375713
       0     4452        M 0x80000690 srli    a4, a4, 3              #; a4  = 59, (wrb) a4  <-- 7
       0     4453        M 0x80000694 mul     a4, a4, a3             #; a4  = 7, a3  = 10
       0     4456        M                                           #; (acc) a4  <-- 0x40e58733
       0     4457        M 0x80000698 sub     a4, a1, a4             #; a1  = 74, a4  = 70, (wrb) a4  <-- 4
       0     4459        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 4
       0     4460        M 0x800006a4 addi    a0, a0, -1             #; a0  = 26, (wrb) a0  <-- 25
                         M                                           #; (f:fpu) ft3  <-- 4.0
       0     4461        M 0x800006a8 addi    a1, a1, 1              #; a1  = 74, (wrb) a1  <-- 75
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
       0     4462        M 0x800006ac bnez    a0, pc - 32            #; a0  = 25, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 4.0
       0     4463        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 75, a2  = 0xcccccccd
       0     4466        M                                           #; (acc) a4  <-- 0x00375713
       0     4467        M 0x80000690 srli    a4, a4, 3              #; a4  = 60, (wrb) a4  <-- 7
       0     4468        M 0x80000694 mul     a4, a4, a3             #; a4  = 7, a3  = 10
       0     4471        M                                           #; (acc) a4  <-- 0x40e58733
       0     4472        M 0x80000698 sub     a4, a1, a4             #; a1  = 75, a4  = 70, (wrb) a4  <-- 5
       0     4474        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 5
       0     4475        M 0x800006a4 addi    a0, a0, -1             #; a0  = 25, (wrb) a0  <-- 24
                         M                                           #; (f:fpu) ft3  <-- 5.0
       0     4476        M 0x800006a8 addi    a1, a1, 1              #; a1  = 75, (wrb) a1  <-- 76
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
       0     4477        M 0x800006ac bnez    a0, pc - 32            #; a0  = 24, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 5.0
       0     4478        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 76, a2  = 0xcccccccd
       0     4481        M                                           #; (acc) a4  <-- 0x00375713
       0     4482        M 0x80000690 srli    a4, a4, 3              #; a4  = 60, (wrb) a4  <-- 7
       0     4483        M 0x80000694 mul     a4, a4, a3             #; a4  = 7, a3  = 10
       0     4486        M                                           #; (acc) a4  <-- 0x40e58733
       0     4487        M 0x80000698 sub     a4, a1, a4             #; a1  = 76, a4  = 70, (wrb) a4  <-- 6
       0     4489        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 6
       0     4490        M 0x800006a4 addi    a0, a0, -1             #; a0  = 24, (wrb) a0  <-- 23
                         M                                           #; (f:fpu) ft3  <-- 6.0
       0     4491        M 0x800006a8 addi    a1, a1, 1              #; a1  = 76, (wrb) a1  <-- 77
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
       0     4492        M 0x800006ac bnez    a0, pc - 32            #; a0  = 23, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 6.0
       0     4493        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 77, a2  = 0xcccccccd
       0     4496        M                                           #; (acc) a4  <-- 0x00375713
       0     4497        M 0x80000690 srli    a4, a4, 3              #; a4  = 61, (wrb) a4  <-- 7
       0     4498        M 0x80000694 mul     a4, a4, a3             #; a4  = 7, a3  = 10
       0     4501        M                                           #; (acc) a4  <-- 0x40e58733
       0     4502        M 0x80000698 sub     a4, a1, a4             #; a1  = 77, a4  = 70, (wrb) a4  <-- 7
       0     4504        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 7
       0     4505        M 0x800006a4 addi    a0, a0, -1             #; a0  = 23, (wrb) a0  <-- 22
                         M                                           #; (f:fpu) ft3  <-- 7.0
       0     4506        M 0x800006a8 addi    a1, a1, 1              #; a1  = 77, (wrb) a1  <-- 78
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
       0     4507        M 0x800006ac bnez    a0, pc - 32            #; a0  = 22, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 7.0
       0     4508        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 78, a2  = 0xcccccccd
       0     4511        M                                           #; (acc) a4  <-- 0x00375713
       0     4512        M 0x80000690 srli    a4, a4, 3              #; a4  = 62, (wrb) a4  <-- 7
       0     4513        M 0x80000694 mul     a4, a4, a3             #; a4  = 7, a3  = 10
       0     4516        M                                           #; (acc) a4  <-- 0x40e58733
       0     4517        M 0x80000698 sub     a4, a1, a4             #; a1  = 78, a4  = 70, (wrb) a4  <-- 8
       0     4519        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 8
       0     4520        M 0x800006a4 addi    a0, a0, -1             #; a0  = 22, (wrb) a0  <-- 21
                         M                                           #; (f:fpu) ft3  <-- 8.0
       0     4521        M 0x800006a8 addi    a1, a1, 1              #; a1  = 78, (wrb) a1  <-- 79
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
       0     4522        M 0x800006ac bnez    a0, pc - 32            #; a0  = 21, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 8.0
       0     4523        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 79, a2  = 0xcccccccd
       0     4526        M                                           #; (acc) a4  <-- 0x00375713
       0     4527        M 0x80000690 srli    a4, a4, 3              #; a4  = 63, (wrb) a4  <-- 7
       0     4528        M 0x80000694 mul     a4, a4, a3             #; a4  = 7, a3  = 10
       0     4531        M                                           #; (acc) a4  <-- 0x40e58733
       0     4532        M 0x80000698 sub     a4, a1, a4             #; a1  = 79, a4  = 70, (wrb) a4  <-- 9
       0     4534        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 9
       0     4535        M 0x800006a4 addi    a0, a0, -1             #; a0  = 21, (wrb) a0  <-- 20
                         M                                           #; (f:fpu) ft3  <-- 9.0
       0     4536        M 0x800006a8 addi    a1, a1, 1              #; a1  = 79, (wrb) a1  <-- 80
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
       0     4537        M 0x800006ac bnez    a0, pc - 32            #; a0  = 20, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 9.0
       0     4538        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 80, a2  = 0xcccccccd
       0     4541        M                                           #; (acc) a4  <-- 0x00375713
       0     4542        M 0x80000690 srli    a4, a4, 3              #; a4  = 64, (wrb) a4  <-- 8
       0     4543        M 0x80000694 mul     a4, a4, a3             #; a4  = 8, a3  = 10
       0     4546        M                                           #; (acc) a4  <-- 0x40e58733
       0     4547        M 0x80000698 sub     a4, a1, a4             #; a1  = 80, a4  = 80, (wrb) a4  <-- 0
       0     4549        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 0
       0     4550        M 0x800006a4 addi    a0, a0, -1             #; a0  = 20, (wrb) a0  <-- 19
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     4551        M 0x800006a8 addi    a1, a1, 1              #; a1  = 80, (wrb) a1  <-- 81
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4552        M 0x800006ac bnez    a0, pc - 32            #; a0  = 19, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     4553        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 81, a2  = 0xcccccccd
       0     4556        M                                           #; (acc) a4  <-- 0x00375713
       0     4557        M 0x80000690 srli    a4, a4, 3              #; a4  = 64, (wrb) a4  <-- 8
       0     4558        M 0x80000694 mul     a4, a4, a3             #; a4  = 8, a3  = 10
       0     4561        M                                           #; (acc) a4  <-- 0x40e58733
       0     4562        M 0x80000698 sub     a4, a1, a4             #; a1  = 81, a4  = 80, (wrb) a4  <-- 1
       0     4564        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 1
       0     4565        M 0x800006a4 addi    a0, a0, -1             #; a0  = 19, (wrb) a0  <-- 18
                         M                                           #; (f:fpu) ft3  <-- 1.0
       0     4566        M 0x800006a8 addi    a1, a1, 1              #; a1  = 81, (wrb) a1  <-- 82
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
       0     4567        M 0x800006ac bnez    a0, pc - 32            #; a0  = 18, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 1.0
       0     4568        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 82, a2  = 0xcccccccd
       0     4571        M                                           #; (acc) a4  <-- 0x00375713
       0     4572        M 0x80000690 srli    a4, a4, 3              #; a4  = 65, (wrb) a4  <-- 8
       0     4573        M 0x80000694 mul     a4, a4, a3             #; a4  = 8, a3  = 10
       0     4576        M                                           #; (acc) a4  <-- 0x40e58733
       0     4577        M 0x80000698 sub     a4, a1, a4             #; a1  = 82, a4  = 80, (wrb) a4  <-- 2
       0     4579        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 2
       0     4580        M 0x800006a4 addi    a0, a0, -1             #; a0  = 18, (wrb) a0  <-- 17
                         M                                           #; (f:fpu) ft3  <-- 2.0
       0     4581        M 0x800006a8 addi    a1, a1, 1              #; a1  = 82, (wrb) a1  <-- 83
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
       0     4582        M 0x800006ac bnez    a0, pc - 32            #; a0  = 17, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 2.0
       0     4583        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 83, a2  = 0xcccccccd
       0     4586        M                                           #; (acc) a4  <-- 0x00375713
       0     4587        M 0x80000690 srli    a4, a4, 3              #; a4  = 66, (wrb) a4  <-- 8
       0     4588        M 0x80000694 mul     a4, a4, a3             #; a4  = 8, a3  = 10
       0     4591        M                                           #; (acc) a4  <-- 0x40e58733
       0     4592        M 0x80000698 sub     a4, a1, a4             #; a1  = 83, a4  = 80, (wrb) a4  <-- 3
       0     4594        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 3
       0     4595        M 0x800006a4 addi    a0, a0, -1             #; a0  = 17, (wrb) a0  <-- 16
                         M                                           #; (f:fpu) ft3  <-- 3.0
       0     4596        M 0x800006a8 addi    a1, a1, 1              #; a1  = 83, (wrb) a1  <-- 84
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
       0     4597        M 0x800006ac bnez    a0, pc - 32            #; a0  = 16, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 3.0
       0     4598        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 84, a2  = 0xcccccccd
       0     4601        M                                           #; (acc) a4  <-- 0x00375713
       0     4602        M 0x80000690 srli    a4, a4, 3              #; a4  = 67, (wrb) a4  <-- 8
       0     4603        M 0x80000694 mul     a4, a4, a3             #; a4  = 8, a3  = 10
       0     4606        M                                           #; (acc) a4  <-- 0x40e58733
       0     4607        M 0x80000698 sub     a4, a1, a4             #; a1  = 84, a4  = 80, (wrb) a4  <-- 4
       0     4609        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 4
       0     4610        M 0x800006a4 addi    a0, a0, -1             #; a0  = 16, (wrb) a0  <-- 15
                         M                                           #; (f:fpu) ft3  <-- 4.0
       0     4611        M 0x800006a8 addi    a1, a1, 1              #; a1  = 84, (wrb) a1  <-- 85
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
       0     4612        M 0x800006ac bnez    a0, pc - 32            #; a0  = 15, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 4.0
       0     4613        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 85, a2  = 0xcccccccd
       0     4616        M                                           #; (acc) a4  <-- 0x00375713
       0     4617        M 0x80000690 srli    a4, a4, 3              #; a4  = 68, (wrb) a4  <-- 8
       0     4618        M 0x80000694 mul     a4, a4, a3             #; a4  = 8, a3  = 10
       0     4621        M                                           #; (acc) a4  <-- 0x40e58733
       0     4622        M 0x80000698 sub     a4, a1, a4             #; a1  = 85, a4  = 80, (wrb) a4  <-- 5
       0     4624        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 5
       0     4625        M 0x800006a4 addi    a0, a0, -1             #; a0  = 15, (wrb) a0  <-- 14
                         M                                           #; (f:fpu) ft3  <-- 5.0
       0     4626        M 0x800006a8 addi    a1, a1, 1              #; a1  = 85, (wrb) a1  <-- 86
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
       0     4627        M 0x800006ac bnez    a0, pc - 32            #; a0  = 14, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 5.0
       0     4628        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 86, a2  = 0xcccccccd
       0     4631        M                                           #; (acc) a4  <-- 0x00375713
       0     4632        M 0x80000690 srli    a4, a4, 3              #; a4  = 68, (wrb) a4  <-- 8
       0     4633        M 0x80000694 mul     a4, a4, a3             #; a4  = 8, a3  = 10
       0     4636        M                                           #; (acc) a4  <-- 0x40e58733
       0     4637        M 0x80000698 sub     a4, a1, a4             #; a1  = 86, a4  = 80, (wrb) a4  <-- 6
       0     4639        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 6
       0     4640        M 0x800006a4 addi    a0, a0, -1             #; a0  = 14, (wrb) a0  <-- 13
                         M                                           #; (f:fpu) ft3  <-- 6.0
       0     4641        M 0x800006a8 addi    a1, a1, 1              #; a1  = 86, (wrb) a1  <-- 87
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
       0     4642        M 0x800006ac bnez    a0, pc - 32            #; a0  = 13, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 6.0
       0     4643        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 87, a2  = 0xcccccccd
       0     4646        M                                           #; (acc) a4  <-- 0x00375713
       0     4647        M 0x80000690 srli    a4, a4, 3              #; a4  = 69, (wrb) a4  <-- 8
       0     4648        M 0x80000694 mul     a4, a4, a3             #; a4  = 8, a3  = 10
       0     4651        M                                           #; (acc) a4  <-- 0x40e58733
       0     4652        M 0x80000698 sub     a4, a1, a4             #; a1  = 87, a4  = 80, (wrb) a4  <-- 7
       0     4654        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 7
       0     4655        M 0x800006a4 addi    a0, a0, -1             #; a0  = 13, (wrb) a0  <-- 12
                         M                                           #; (f:fpu) ft3  <-- 7.0
       0     4656        M 0x800006a8 addi    a1, a1, 1              #; a1  = 87, (wrb) a1  <-- 88
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
       0     4657        M 0x800006ac bnez    a0, pc - 32            #; a0  = 12, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 7.0
       0     4658        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 88, a2  = 0xcccccccd
       0     4661        M                                           #; (acc) a4  <-- 0x00375713
       0     4662        M 0x80000690 srli    a4, a4, 3              #; a4  = 70, (wrb) a4  <-- 8
       0     4663        M 0x80000694 mul     a4, a4, a3             #; a4  = 8, a3  = 10
       0     4666        M                                           #; (acc) a4  <-- 0x40e58733
       0     4667        M 0x80000698 sub     a4, a1, a4             #; a1  = 88, a4  = 80, (wrb) a4  <-- 8
       0     4669        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 8
       0     4670        M 0x800006a4 addi    a0, a0, -1             #; a0  = 12, (wrb) a0  <-- 11
                         M                                           #; (f:fpu) ft3  <-- 8.0
       0     4671        M 0x800006a8 addi    a1, a1, 1              #; a1  = 88, (wrb) a1  <-- 89
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
       0     4672        M 0x800006ac bnez    a0, pc - 32            #; a0  = 11, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 8.0
       0     4673        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 89, a2  = 0xcccccccd
       0     4676        M                                           #; (acc) a4  <-- 0x00375713
       0     4677        M 0x80000690 srli    a4, a4, 3              #; a4  = 71, (wrb) a4  <-- 8
       0     4678        M 0x80000694 mul     a4, a4, a3             #; a4  = 8, a3  = 10
       0     4681        M                                           #; (acc) a4  <-- 0x40e58733
       0     4682        M 0x80000698 sub     a4, a1, a4             #; a1  = 89, a4  = 80, (wrb) a4  <-- 9
       0     4684        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 9
       0     4685        M 0x800006a4 addi    a0, a0, -1             #; a0  = 11, (wrb) a0  <-- 10
                         M                                           #; (f:fpu) ft3  <-- 9.0
       0     4686        M 0x800006a8 addi    a1, a1, 1              #; a1  = 89, (wrb) a1  <-- 90
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
       0     4687        M 0x800006ac bnez    a0, pc - 32            #; a0  = 10, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 9.0
       0     4688        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 90, a2  = 0xcccccccd
       0     4691        M                                           #; (acc) a4  <-- 0x00375713
       0     4692        M 0x80000690 srli    a4, a4, 3              #; a4  = 72, (wrb) a4  <-- 9
       0     4693        M 0x80000694 mul     a4, a4, a3             #; a4  = 9, a3  = 10
       0     4696        M                                           #; (acc) a4  <-- 0x40e58733
       0     4697        M 0x80000698 sub     a4, a1, a4             #; a1  = 90, a4  = 90, (wrb) a4  <-- 0
       0     4699        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 0
       0     4700        M 0x800006a4 addi    a0, a0, -1             #; a0  = 10, (wrb) a0  <-- 9
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     4701        M 0x800006a8 addi    a1, a1, 1              #; a1  = 90, (wrb) a1  <-- 91
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4702        M 0x800006ac bnez    a0, pc - 32            #; a0  = 9, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     4703        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 91, a2  = 0xcccccccd
       0     4706        M                                           #; (acc) a4  <-- 0x00375713
       0     4707        M 0x80000690 srli    a4, a4, 3              #; a4  = 72, (wrb) a4  <-- 9
       0     4708        M 0x80000694 mul     a4, a4, a3             #; a4  = 9, a3  = 10
       0     4711        M                                           #; (acc) a4  <-- 0x40e58733
       0     4712        M 0x80000698 sub     a4, a1, a4             #; a1  = 91, a4  = 90, (wrb) a4  <-- 1
       0     4714        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 1
       0     4715        M 0x800006a4 addi    a0, a0, -1             #; a0  = 9, (wrb) a0  <-- 8
                         M                                           #; (f:fpu) ft3  <-- 1.0
       0     4716        M 0x800006a8 addi    a1, a1, 1              #; a1  = 91, (wrb) a1  <-- 92
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
       0     4717        M 0x800006ac bnez    a0, pc - 32            #; a0  = 8, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 1.0
       0     4718        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 92, a2  = 0xcccccccd
       0     4721        M                                           #; (acc) a4  <-- 0x00375713
       0     4722        M 0x80000690 srli    a4, a4, 3              #; a4  = 73, (wrb) a4  <-- 9
       0     4723        M 0x80000694 mul     a4, a4, a3             #; a4  = 9, a3  = 10
       0     4726        M                                           #; (acc) a4  <-- 0x40e58733
       0     4727        M 0x80000698 sub     a4, a1, a4             #; a1  = 92, a4  = 90, (wrb) a4  <-- 2
       0     4729        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 2
       0     4730        M 0x800006a4 addi    a0, a0, -1             #; a0  = 8, (wrb) a0  <-- 7
                         M                                           #; (f:fpu) ft3  <-- 2.0
       0     4731        M 0x800006a8 addi    a1, a1, 1              #; a1  = 92, (wrb) a1  <-- 93
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
       0     4732        M 0x800006ac bnez    a0, pc - 32            #; a0  = 7, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 2.0
       0     4733        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 93, a2  = 0xcccccccd
       0     4736        M                                           #; (acc) a4  <-- 0x00375713
       0     4737        M 0x80000690 srli    a4, a4, 3              #; a4  = 74, (wrb) a4  <-- 9
       0     4738        M 0x80000694 mul     a4, a4, a3             #; a4  = 9, a3  = 10
       0     4741        M                                           #; (acc) a4  <-- 0x40e58733
       0     4742        M 0x80000698 sub     a4, a1, a4             #; a1  = 93, a4  = 90, (wrb) a4  <-- 3
       0     4744        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 3
       0     4745        M 0x800006a4 addi    a0, a0, -1             #; a0  = 7, (wrb) a0  <-- 6
                         M                                           #; (f:fpu) ft3  <-- 3.0
       0     4746        M 0x800006a8 addi    a1, a1, 1              #; a1  = 93, (wrb) a1  <-- 94
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
       0     4747        M 0x800006ac bnez    a0, pc - 32            #; a0  = 6, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 3.0
       0     4748        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 94, a2  = 0xcccccccd
       0     4751        M                                           #; (acc) a4  <-- 0x00375713
       0     4752        M 0x80000690 srli    a4, a4, 3              #; a4  = 75, (wrb) a4  <-- 9
       0     4753        M 0x80000694 mul     a4, a4, a3             #; a4  = 9, a3  = 10
       0     4756        M                                           #; (acc) a4  <-- 0x40e58733
       0     4757        M 0x80000698 sub     a4, a1, a4             #; a1  = 94, a4  = 90, (wrb) a4  <-- 4
       0     4759        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 4
       0     4760        M 0x800006a4 addi    a0, a0, -1             #; a0  = 6, (wrb) a0  <-- 5
                         M                                           #; (f:fpu) ft3  <-- 4.0
       0     4761        M 0x800006a8 addi    a1, a1, 1              #; a1  = 94, (wrb) a1  <-- 95
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
       0     4762        M 0x800006ac bnez    a0, pc - 32            #; a0  = 5, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 4.0
       0     4763        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 95, a2  = 0xcccccccd
       0     4766        M                                           #; (acc) a4  <-- 0x00375713
       0     4767        M 0x80000690 srli    a4, a4, 3              #; a4  = 76, (wrb) a4  <-- 9
       0     4768        M 0x80000694 mul     a4, a4, a3             #; a4  = 9, a3  = 10
       0     4771        M                                           #; (acc) a4  <-- 0x40e58733
       0     4772        M 0x80000698 sub     a4, a1, a4             #; a1  = 95, a4  = 90, (wrb) a4  <-- 5
       0     4774        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 5
       0     4775        M 0x800006a4 addi    a0, a0, -1             #; a0  = 5, (wrb) a0  <-- 4
                         M                                           #; (f:fpu) ft3  <-- 5.0
       0     4776        M 0x800006a8 addi    a1, a1, 1              #; a1  = 95, (wrb) a1  <-- 96
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
       0     4777        M 0x800006ac bnez    a0, pc - 32            #; a0  = 4, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 5.0
       0     4778        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 96, a2  = 0xcccccccd
       0     4781        M                                           #; (acc) a4  <-- 0x00375713
       0     4782        M 0x80000690 srli    a4, a4, 3              #; a4  = 76, (wrb) a4  <-- 9
       0     4783        M 0x80000694 mul     a4, a4, a3             #; a4  = 9, a3  = 10
       0     4786        M                                           #; (acc) a4  <-- 0x40e58733
       0     4787        M 0x80000698 sub     a4, a1, a4             #; a1  = 96, a4  = 90, (wrb) a4  <-- 6
       0     4789        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 6
       0     4790        M 0x800006a4 addi    a0, a0, -1             #; a0  = 4, (wrb) a0  <-- 3
                         M                                           #; (f:fpu) ft3  <-- 6.0
       0     4791        M 0x800006a8 addi    a1, a1, 1              #; a1  = 96, (wrb) a1  <-- 97
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
       0     4792        M 0x800006ac bnez    a0, pc - 32            #; a0  = 3, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 6.0
       0     4793        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 97, a2  = 0xcccccccd
       0     4796        M                                           #; (acc) a4  <-- 0x00375713
       0     4797        M 0x80000690 srli    a4, a4, 3              #; a4  = 77, (wrb) a4  <-- 9
       0     4798        M 0x80000694 mul     a4, a4, a3             #; a4  = 9, a3  = 10
       0     4801        M                                           #; (acc) a4  <-- 0x40e58733
       0     4802        M 0x80000698 sub     a4, a1, a4             #; a1  = 97, a4  = 90, (wrb) a4  <-- 7
       0     4804        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 7
       0     4805        M 0x800006a4 addi    a0, a0, -1             #; a0  = 3, (wrb) a0  <-- 2
                         M                                           #; (f:fpu) ft3  <-- 7.0
       0     4806        M 0x800006a8 addi    a1, a1, 1              #; a1  = 97, (wrb) a1  <-- 98
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
       0     4807        M 0x800006ac bnez    a0, pc - 32            #; a0  = 2, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 7.0
       0     4808        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 98, a2  = 0xcccccccd
       0     4811        M                                           #; (acc) a4  <-- 0x00375713
       0     4812        M 0x80000690 srli    a4, a4, 3              #; a4  = 78, (wrb) a4  <-- 9
       0     4813        M 0x80000694 mul     a4, a4, a3             #; a4  = 9, a3  = 10
       0     4816        M                                           #; (acc) a4  <-- 0x40e58733
       0     4817        M 0x80000698 sub     a4, a1, a4             #; a1  = 98, a4  = 90, (wrb) a4  <-- 8
       0     4819        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 8
       0     4820        M 0x800006a4 addi    a0, a0, -1             #; a0  = 2, (wrb) a0  <-- 1
                         M                                           #; (f:fpu) ft3  <-- 8.0
       0     4821        M 0x800006a8 addi    a1, a1, 1              #; a1  = 98, (wrb) a1  <-- 99
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
       0     4822        M 0x800006ac bnez    a0, pc - 32            #; a0  = 1, taken, goto 0x8000068c
                         M                                           #; (f:fpu) ft0  <-- 8.0
       0     4823        M 0x8000068c mulhu   a4, a1, a2             #; a1  = 99, a2  = 0xcccccccd
       0     4826        M                                           #; (acc) a4  <-- 0x00375713
       0     4827        M 0x80000690 srli    a4, a4, 3              #; a4  = 79, (wrb) a4  <-- 9
       0     4828        M 0x80000694 mul     a4, a4, a3             #; a4  = 9, a3  = 10
       0     4831        M                                           #; (acc) a4  <-- 0x40e58733
       0     4832        M 0x80000698 sub     a4, a1, a4             #; a1  = 99, a4  = 90, (wrb) a4  <-- 9
       0     4834        M 0x8000069c fcvt.d.wu ft3, a4              #; ac1  = 9
       0     4835        M 0x800006a4 addi    a0, a0, -1             #; a0  = 1, (wrb) a0  <-- 0
                         M                                           #; (f:fpu) ft3  <-- 9.0
       0     4836        M 0x800006a8 addi    a1, a1, 1              #; a1  = 99, (wrb) a1  <-- 100
                         M 0x800006a0 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
       0     4837        M 0x800006ac bnez    a0, pc - 32            #; a0  = 0, not taken
                         M                                           #; (f:fpu) ft0  <-- 9.0
       0     4841        M 0x800006b4 j       pc + 0x44              #; goto 0x800006f8
                         M 0x800006b0 csrrci  a0, ssr, 1             #; 
       0     4843        M 0x800006f8 ret                            #; ra  = 0x80000794, goto 0x80000794
       0     4848        M 0x80000794 csrr    s1, mcycle             #; mcycle = 4847, (wrb) s1  <-- 4847
       0     4849        M 0x80000798 li      a2, 100                #; (wrb) a2  <-- 100
       0     4850        M 0x8000079c mv      a0, s2                 #; s2  = 0x00100000, (wrb) a0  <-- 0x00100000
       0     4851        M 0x800007a0 mv      a1, s0                 #; s0  = 0x00100320, (wrb) a1  <-- 0x00100320
       0     4852        M 0x800007a4 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800007a4
       0     4853        M 0x800007a8 jalr    ra, ra, 128            #; ra  = 0x800007a4, (wrb) ra  <-- 0x800007ac, goto 0x80000824
       0     4865        M 0x80000824 li      a3, 1                  #; (wrb) a3  <-- 1
       0     4866        M 0x80000828 blt     a2, a3, pc + 48        #; a2  = 100, a3  = 1, not taken
       0     4867        M 0x8000082c addi    a6, a2, -1             #; a2  = 100, (wrb) a6  <-- 99
       0     4868        M 0x80000830 slli    a4, a6, 3              #; a6  = 99, (wrb) a4  <-- 792
       0     4869        M 0x80000834 add     a3, a4, a0             #; a4  = 792, a0  = 0x00100000, (wrb) a3  <-- 0x00100318
       0     4870        M 0x80000838 add     t1, a4, a1             #; a4  = 792, a1  = 0x00100320, (wrb) t1  <-- 0x00100638
       0     4871        M 0x8000083c srli    a5, a0, 20             #; a0  = 0x00100000, (wrb) a5  <-- 1
       0     4880        M 0x80000840 snez    t0, a5                 #; a5  = 1, (wrb) t0  <-- 1
       0     4881        M 0x80000844 lui     a5, 0x120              #; (wrb) a5  <-- 0x00120000
       0     4882        M 0x80000848 addi    a7, a5, 1              #; a5  = 0x00120000, (wrb) a7  <-- 0x00120001
       0     4883        M 0x8000084c bgeu    a3, a4, pc + 20        #; a3  = 0x00100318, a4  = 792, taken, goto 0x80000860
       0     4903        M 0x80000860 sltu    a3, a3, a7             #; a3  = 0x00100318, a7  = 0x00120001, (wrb) a3  <-- 1
       0     4904        M 0x80000864 and     t0, t0, a3             #; t0  = 1, a3  = 1, (wrb) t0  <-- 1
       0     4905        M 0x80000868 srli    a3, a1, 20             #; a1  = 0x00100320, (wrb) a3  <-- 1
       0     4906        M 0x8000086c snez    a3, a3                 #; a3  = 1, (wrb) a3  <-- 1
       0     4915        M 0x80000870 bgeu    t1, a4, pc + 12        #; t1  = 0x00100638, a4  = 792, taken, goto 0x8000087c
       0     4916        M 0x8000087c sltu    a4, t1, a7             #; t1  = 0x00100638, a7  = 0x00120001, (wrb) a4  <-- 1
       0     4927        M 0x80000880 and     a3, a3, a4             #; a3  = 1, a4  = 1, (wrb) a3  <-- 1
       0     4928        M 0x80000884 and     a3, t0, a3             #; t0  = 1, a3  = 1, (wrb) a3  <-- 1
       0     4929        M 0x80000888 beqz    a3, pc + 96            #; a3  = 1, not taken
       0     4930        M 0x8000088c li      a3, 8                  #; (wrb) a3  <-- 8
       0     4939        M 0x80000890 li      a4, 64                 #; (wrb) a4  <-- 64
       0     4940        M 0x80000894 li      a5, 192                #; (wrb) a5  <-- 192
       0     4941        M 0x80000898 scfgw   a6, a4                 #; a6  = 99, a4  = 64
       0     4942        M 0x8000089c scfgw   a3, a5                 #; a3  = 8, a5  = 192
       0     4951        M 0x800008a0 li      a4, 32                 #; (wrb) a4  <-- 32
       0     4952        M 0x800008a4 scfgw   zero, a4               #; a4  = 32
       0     4953        M 0x800008a8 scfgwi  a0, 768                #; a0  = 0x00100000
       0     4954        M 0x800008ac li      a0, 1                  #; (wrb) a0  <-- 1
       0     4963        M 0x800008b0 addi    a4, a0, 64             #; a0  = 1, (wrb) a4  <-- 65
       0     4964        M 0x800008b4 addi    a5, a0, 192            #; a0  = 1, (wrb) a5  <-- 193
       0     4965        M 0x800008b8 scfgw   a6, a4                 #; a6  = 99, a4  = 65
       0     4966        M 0x800008bc scfgw   a3, a5                 #; a3  = 8, a5  = 193
       0     4975        M 0x800008c0 addi    a0, a0, 32             #; a0  = 1, (wrb) a0  <-- 33
       0     4976        M 0x800008c4 scfgw   zero, a0               #; a0  = 33
       0     4977        M 0x800008c8 scfgwi  a1, 769                #; a1  = 0x00100320
       0     4979        M 0x800008cc csrrsi  a0, ssr, 1             #; 
       0     4988        M 0x800008d4 addi    a2, a2, -1             #; a2  = 100, (wrb) a2  <-- 99
                         M 0x800008d0 fcvt.d.w fa0, zero             #; ac1  = 0
       0     4989        M                                           #; (f:fpu) fa0  <-- 0.0
       0     4990        M 0x800008dc bnez    a2, pc - 8             #; a2  = 99, taken, goto 0x800008d4
       0     4991        M 0x800008d4 addi    a2, a2, -1             #; a2  = 99, (wrb) a2  <-- 98
                         M 0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 0.0, ft0  = 0.0, fa0  = 0.0
       0     4993        M 0x800008dc bnez    a2, pc - 8             #; a2  = 98, taken, goto 0x800008d4
       0     4994        M 0x800008d4 addi    a2, a2, -1             #; a2  = 98, (wrb) a2  <-- 97
                         M                                           #; (f:fpu) fa0  <-- 0.0
       0     4995        M 0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 1.0, ft0  = 1.0, fa0  = 0.0
       0     4996        M 0x800008dc bnez    a2, pc - 8             #; a2  = 97, taken, goto 0x800008d4
       0     4997        M 0x800008d4 addi    a2, a2, -1             #; a2  = 97, (wrb) a2  <-- 96
       0     4998        M                                           #; (f:fpu) fa0  <-- 1.0
       0     4999        M 0x800008dc bnez    a2, pc - 8             #; a2  = 96, taken, goto 0x800008d4
                         M 0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 2.0, ft0  = 2.0, fa0  = 1.0
       0     5000        M 0x800008d4 addi    a2, a2, -1             #; a2  = 96, (wrb) a2  <-- 95
       0     5002        M 0x800008dc bnez    a2, pc - 8             #; a2  = 95, taken, goto 0x800008d4
                         M                                           #; (f:fpu) fa0  <-- 5.0
       0     5003        M 0x800008d4 addi    a2, a2, -1             #; a2  = 95, (wrb) a2  <-- 94
                         M 0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 3.0, ft0  = 3.0, fa0  = 5.0
       0     5005        M 0x800008dc bnez    a2, pc - 8             #; a2  = 94, taken, goto 0x800008d4
       0     5006        M 0x800008d4 addi    a2, a2, -1             #; a2  = 94, (wrb) a2  <-- 93
                         M                                           #; (f:fpu) fa0  <-- 14.0
       0     5007        M 0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 4.0, ft0  = 4.0, fa0  = 14.0
       0     5008        M 0x800008dc bnez    a2, pc - 8             #; a2  = 93, taken, goto 0x800008d4
       0     5009        M 0x800008d4 addi    a2, a2, -1             #; a2  = 93, (wrb) a2  <-- 92
       0     5010        M                                           #; (f:fpu) fa0  <-- 30.0
       0     5011        M 0x800008dc bnez    a2, pc - 8             #; a2  = 92, taken, goto 0x800008d4
                         M 0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 5.0, ft0  = 5.0, fa0  = 30.0
       0     5012        M 0x800008d4 addi    a2, a2, -1             #; a2  = 92, (wrb) a2  <-- 91
       0     5014        M 0x800008dc bnez    a2, pc - 8             #; a2  = 91, taken, goto 0x800008d4
                         M                                           #; (f:fpu) fa0  <-- 55.0
       0     5015        M 0x800008d4 addi    a2, a2, -1             #; a2  = 91, (wrb) a2  <-- 90
                         M 0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 6.0, ft0  = 6.0, fa0  = 55.0
       0     5017        M 0x800008dc bnez    a2, pc - 8             #; a2  = 90, taken, goto 0x800008d4
       0     5018        M 0x800008d4 addi    a2, a2, -1             #; a2  = 90, (wrb) a2  <-- 89
                         M                                           #; (f:fpu) fa0  <-- 91.0
       0     5019        M 0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 7.0, ft0  = 7.0, fa0  = 91.0
       0     5020        M 0x800008dc bnez    a2, pc - 8             #; a2  = 89, taken, goto 0x800008d4
       0     5021        M 0x800008d4 addi    a2, a2, -1             #; a2  = 89, (wrb) a2  <-- 88
       0     5022        M                                           #; (f:fpu) fa0  <-- 140.0
       0     5023        M 0x800008dc bnez    a2, pc - 8             #; a2  = 88, taken, goto 0x800008d4
                         M 0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 8.0, ft0  = 8.0, fa0  = 140.0
       0     5024        M 0x800008d4 addi    a2, a2, -1             #; a2  = 88, (wrb) a2  <-- 87
       0     5026        M 0x800008dc bnez    a2, pc - 8             #; a2  = 87, taken, goto 0x800008d4
                         M                                           #; (f:fpu) fa0  <-- 204.0
       0     5027        M 0x800008d4 addi    a2, a2, -1             #; a2  = 87, (wrb) a2  <-- 86
                         M 0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 9.0, ft0  = 9.0, fa0  = 204.0
       0     5029        M 0x800008dc bnez    a2, pc - 8             #; a2  = 86, taken, goto 0x800008d4
       0     5030        M 0x800008d4 addi    a2, a2, -1             #; a2  = 86, (wrb) a2  <-- 85
                         M                                           #; (f:fpu) fa0  <-- 285.0
       0     5031        M 0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 0.0, ft0  = 0.0, fa0  = 285.0
       0     5032        M 0x800008dc bnez    a2, pc - 8             #; a2  = 85, taken, goto 0x800008d4
       0     5033        M 0x800008d4 addi    a2, a2, -1             #; a2  = 85, (wrb) a2  <-- 84
       0     5034        M                                           #; (f:fpu) fa0  <-- 285.0
       0     5035        M 0x800008dc bnez    a2, pc - 8             #; a2  = 84, taken, goto 0x800008d4
                         M 0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 1.0, ft0  = 1.0, fa0  = 285.0
       0     5036        M 0x800008d4 addi    a2, a2, -1             #; a2  = 84, (wrb) a2  <-- 83
       0     5038        M 0x800008dc bnez    a2, pc - 8             #; a2  = 83, taken, goto 0x800008d4
                         M                                           #; (f:fpu) fa0  <-- 286.0
       0     5039        M 0x800008d4 addi    a2, a2, -1             #; a2  = 83, (wrb) a2  <-- 82
                         M 0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 2.0, ft0  = 2.0, fa0  = 286.0
       0     5041        M 0x800008dc bnez    a2, pc - 8             #; a2  = 82, taken, goto 0x800008d4
       0     5042        M 0x800008d4 addi    a2, a2, -1             #; a2  = 82, (wrb) a2  <-- 81
                         M                                           #; (f:fpu) fa0  <-- 290.0
       0     5043        M 0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 3.0, ft0  = 3.0, fa0  = 290.0
       0     5044        M 0x800008dc bnez    a2, pc - 8             #; a2  = 81, taken, goto 0x800008d4
       0     5045        M 0x800008d4 addi    a2, a2, -1             #; a2  = 81, (wrb) a2  <-- 80
       0     5046        M                                           #; (f:fpu) fa0  <-- 299.0
       0     5047        M 0x800008dc bnez    a2, pc - 8             #; a2  = 80, taken, goto 0x800008d4
                         M 0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 4.0, ft0  = 4.0, fa0  = 299.0
       0     5048        M 0x800008d4 addi    a2, a2, -1             #; a2  = 80, (wrb) a2  <-- 79
       0     5050        M 0x800008dc bnez    a2, pc - 8             #; a2  = 79, taken, goto 0x800008d4
                         M                                           #; (f:fpu) fa0  <-- 315.0
       0     5051        M 0x800008d4 addi    a2, a2, -1             #; a2  = 79, (wrb) a2  <-- 78
                         M 0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 5.0, ft0  = 5.0, fa0  = 315.0
       0     5053        M 0x800008dc bnez    a2, pc - 8             #; a2  = 78, taken, goto 0x800008d4
       0     5054        M 0x800008d4 addi    a2, a2, -1             #; a2  = 78, (wrb) a2  <-- 77
                         M                                           #; (f:fpu) fa0  <-- 340.0
       0     5055        M 0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 6.0, ft0  = 6.0, fa0  = 340.0
       0     5056        M 0x800008dc bnez    a2, pc - 8             #; a2  = 77, taken, goto 0x800008d4
       0     5057        M 0x800008d4 addi    a2, a2, -1             #; a2  = 77, (wrb) a2  <-- 76
       0     5058        M                                           #; (f:fpu) fa0  <-- 376.0
       0     5059        M 0x800008dc bnez    a2, pc - 8             #; a2  = 76, taken, goto 0x800008d4
                         M 0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 7.0, ft0  = 7.0, fa0  = 376.0
       0     5060        M 0x800008d4 addi    a2, a2, -1             #; a2  = 76, (wrb) a2  <-- 75
       0     5062        M 0x800008dc bnez    a2, pc - 8             #; a2  = 75, taken, goto 0x800008d4
                         M                                           #; (f:fpu) fa0  <-- 425.0
       0     5063        M 0x800008d4 addi    a2, a2, -1             #; a2  = 75, (wrb) a2  <-- 74
                         M 0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 8.0, ft0  = 8.0, fa0  = 425.0
       0     5065        M 0x800008dc bnez    a2, pc - 8             #; a2  = 74, taken, goto 0x800008d4
       0     5066        M 0x800008d4 addi    a2, a2, -1             #; a2  = 74, (wrb) a2  <-- 73
                         M                                           #; (f:fpu) fa0  <-- 489.0
       0     5067        M 0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 9.0, ft0  = 9.0, fa0  = 489.0
       0     5068        M 0x800008dc bnez    a2, pc - 8             #; a2  = 73, taken, goto 0x800008d4
       0     5069        M 0x800008d4 addi    a2, a2, -1             #; a2  = 73, (wrb) a2  <-- 72
       0     5070        M                                           #; (f:fpu) fa0  <-- 570.0
       0     5071        M 0x800008dc bnez    a2, pc - 8             #; a2  = 72, taken, goto 0x800008d4
                         M 0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 0.0, ft0  = 0.0, fa0  = 570.0
       0     5072        M 0x800008d4 addi    a2, a2, -1             #; a2  = 72, (wrb) a2  <-- 71
       0     5074        M 0x800008dc bnez    a2, pc - 8             #; a2  = 71, taken, goto 0x800008d4
                         M                                           #; (f:fpu) fa0  <-- 570.0
       0     5075        M 0x800008d4 addi    a2, a2, -1             #; a2  = 71, (wrb) a2  <-- 70
                         M 0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 1.0, ft0  = 1.0, fa0  = 570.0
       0     5077        M 0x800008dc bnez    a2, pc - 8             #; a2  = 70, taken, goto 0x800008d4
       0     5078        M 0x800008d4 addi    a2, a2, -1             #; a2  = 70, (wrb) a2  <-- 69
                         M                                           #; (f:fpu) fa0  <-- 571.0
       0     5079        M 0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 2.0, ft0  = 2.0, fa0  = 571.0
       0     5080        M 0x800008dc bnez    a2, pc - 8             #; a2  = 69, taken, goto 0x800008d4
       0     5081        M 0x800008d4 addi    a2, a2, -1             #; a2  = 69, (wrb) a2  <-- 68
       0     5082        M                                           #; (f:fpu) fa0  <-- 575.0
       0     5083        M 0x800008dc bnez    a2, pc - 8             #; a2  = 68, taken, goto 0x800008d4
                         M 0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 3.0, ft0  = 3.0, fa0  = 575.0
       0     5084        M 0x800008d4 addi    a2, a2, -1             #; a2  = 68, (wrb) a2  <-- 67
       0     5086        M 0x800008dc bnez    a2, pc - 8             #; a2  = 67, taken, goto 0x800008d4
                         M                                           #; (f:fpu) fa0  <-- 584.0
       0     5087        M 0x800008d4 addi    a2, a2, -1             #; a2  = 67, (wrb) a2  <-- 66
                         M 0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 4.0, ft0  = 4.0, fa0  = 584.0
       0     5089        M 0x800008dc bnez    a2, pc - 8             #; a2  = 66, taken, goto 0x800008d4
       0     5090        M 0x800008d4 addi    a2, a2, -1             #; a2  = 66, (wrb) a2  <-- 65
                         M                                           #; (f:fpu) fa0  <-- 600.0
       0     5091        M 0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 5.0, ft0  = 5.0, fa0  = 600.0
       0     5092        M 0x800008dc bnez    a2, pc - 8             #; a2  = 65, taken, goto 0x800008d4
       0     5093        M 0x800008d4 addi    a2, a2, -1             #; a2  = 65, (wrb) a2  <-- 64
       0     5094        M                                           #; (f:fpu) fa0  <-- 625.0
       0     5095        M 0x800008dc bnez    a2, pc - 8             #; a2  = 64, taken, goto 0x800008d4
                         M 0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 6.0, ft0  = 6.0, fa0  = 625.0
       0     5096        M 0x800008d4 addi    a2, a2, -1             #; a2  = 64, (wrb) a2  <-- 63
       0     5098        M 0x800008dc bnez    a2, pc - 8             #; a2  = 63, taken, goto 0x800008d4
                         M                                           #; (f:fpu) fa0  <-- 661.0
       0     5099        M 0x800008d4 addi    a2, a2, -1             #; a2  = 63, (wrb) a2  <-- 62
                         M 0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 7.0, ft0  = 7.0, fa0  = 661.0
       0     5101        M 0x800008dc bnez    a2, pc - 8             #; a2  = 62, taken, goto 0x800008d4
       0     5102        M 0x800008d4 addi    a2, a2, -1             #; a2  = 62, (wrb) a2  <-- 61
                         M                                           #; (f:fpu) fa0  <-- 710.0
       0     5103        M 0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 8.0, ft0  = 8.0, fa0  = 710.0
       0     5104        M 0x800008dc bnez    a2, pc - 8             #; a2  = 61, taken, goto 0x800008d4
       0     5105        M 0x800008d4 addi    a2, a2, -1             #; a2  = 61, (wrb) a2  <-- 60
       0     5106        M                                           #; (f:fpu) fa0  <-- 774.0
       0     5107        M 0x800008dc bnez    a2, pc - 8             #; a2  = 60, taken, goto 0x800008d4
                         M 0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 9.0, ft0  = 9.0, fa0  = 774.0
       0     5108        M 0x800008d4 addi    a2, a2, -1             #; a2  = 60, (wrb) a2  <-- 59
       0     5110        M 0x800008dc bnez    a2, pc - 8             #; a2  = 59, taken, goto 0x800008d4
                         M                                           #; (f:fpu) fa0  <-- 855.0
       0     5111        M 0x800008d4 addi    a2, a2, -1             #; a2  = 59, (wrb) a2  <-- 58
                         M 0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 0.0, ft0  = 0.0, fa0  = 855.0
       0     5113        M 0x800008dc bnez    a2, pc - 8             #; a2  = 58, taken, goto 0x800008d4
       0     5114        M 0x800008d4 addi    a2, a2, -1             #; a2  = 58, (wrb) a2  <-- 57
                         M                                           #; (f:fpu) fa0  <-- 855.0
       0     5115        M 0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 1.0, ft0  = 1.0, fa0  = 855.0
       0     5116        M 0x800008dc bnez    a2, pc - 8             #; a2  = 57, taken, goto 0x800008d4
       0     5117        M 0x800008d4 addi    a2, a2, -1             #; a2  = 57, (wrb) a2  <-- 56
       0     5118        M                                           #; (f:fpu) fa0  <-- 856.0
       0     5119        M 0x800008dc bnez    a2, pc - 8             #; a2  = 56, taken, goto 0x800008d4
                         M 0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 2.0, ft0  = 2.0, fa0  = 856.0
       0     5120        M 0x800008d4 addi    a2, a2, -1             #; a2  = 56, (wrb) a2  <-- 55
       0     5122        M 0x800008dc bnez    a2, pc - 8             #; a2  = 55, taken, goto 0x800008d4
                         M                                           #; (f:fpu) fa0  <-- 860.0
       0     5123        M 0x800008d4 addi    a2, a2, -1             #; a2  = 55, (wrb) a2  <-- 54
                         M 0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 3.0, ft0  = 3.0, fa0  = 860.0
       0     5125        M 0x800008dc bnez    a2, pc - 8             #; a2  = 54, taken, goto 0x800008d4
       0     5126        M 0x800008d4 addi    a2, a2, -1             #; a2  = 54, (wrb) a2  <-- 53
                         M                                           #; (f:fpu) fa0  <-- 869.0
       0     5127        M 0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 4.0, ft0  = 4.0, fa0  = 869.0
       0     5128        M 0x800008dc bnez    a2, pc - 8             #; a2  = 53, taken, goto 0x800008d4
       0     5129        M 0x800008d4 addi    a2, a2, -1             #; a2  = 53, (wrb) a2  <-- 52
       0     5130        M                                           #; (f:fpu) fa0  <-- 885.0
       0     5131        M 0x800008dc bnez    a2, pc - 8             #; a2  = 52, taken, goto 0x800008d4
                         M 0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 5.0, ft0  = 5.0, fa0  = 885.0
       0     5132        M 0x800008d4 addi    a2, a2, -1             #; a2  = 52, (wrb) a2  <-- 51
       0     5134        M 0x800008dc bnez    a2, pc - 8             #; a2  = 51, taken, goto 0x800008d4
                         M                                           #; (f:fpu) fa0  <-- 910.0
       0     5135        M 0x800008d4 addi    a2, a2, -1             #; a2  = 51, (wrb) a2  <-- 50
                         M 0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 6.0, ft0  = 6.0, fa0  = 910.0
       0     5137        M 0x800008dc bnez    a2, pc - 8             #; a2  = 50, taken, goto 0x800008d4
       0     5138        M 0x800008d4 addi    a2, a2, -1             #; a2  = 50, (wrb) a2  <-- 49
                         M                                           #; (f:fpu) fa0  <-- 946.0
       0     5139        M 0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 7.0, ft0  = 7.0, fa0  = 946.0
       0     5140        M 0x800008dc bnez    a2, pc - 8             #; a2  = 49, taken, goto 0x800008d4
       0     5141        M 0x800008d4 addi    a2, a2, -1             #; a2  = 49, (wrb) a2  <-- 48
       0     5142        M                                           #; (f:fpu) fa0  <-- 995.0
       0     5143        M 0x800008dc bnez    a2, pc - 8             #; a2  = 48, taken, goto 0x800008d4
                         M 0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 8.0, ft0  = 8.0, fa0  = 995.0
       0     5144        M 0x800008d4 addi    a2, a2, -1             #; a2  = 48, (wrb) a2  <-- 47
       0     5146        M 0x800008dc bnez    a2, pc - 8             #; a2  = 47, taken, goto 0x800008d4
                         M                                           #; (f:fpu) fa0  <-- 1059.0
       0     5147        M 0x800008d4 addi    a2, a2, -1             #; a2  = 47, (wrb) a2  <-- 46
                         M 0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 9.0, ft0  = 9.0, fa0  = 1059.0
       0     5149        M 0x800008dc bnez    a2, pc - 8             #; a2  = 46, taken, goto 0x800008d4
       0     5150        M 0x800008d4 addi    a2, a2, -1             #; a2  = 46, (wrb) a2  <-- 45
                         M                                           #; (f:fpu) fa0  <-- 1140.0
       0     5151        M 0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 0.0, ft0  = 0.0, fa0  = 1140.0
       0     5152        M 0x800008dc bnez    a2, pc - 8             #; a2  = 45, taken, goto 0x800008d4
       0     5153        M 0x800008d4 addi    a2, a2, -1             #; a2  = 45, (wrb) a2  <-- 44
       0     5154        M                                           #; (f:fpu) fa0  <-- 1140.0
       0     5155        M 0x800008dc bnez    a2, pc - 8             #; a2  = 44, taken, goto 0x800008d4
                         M 0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 1.0, ft0  = 1.0, fa0  = 1140.0
       0     5156        M 0x800008d4 addi    a2, a2, -1             #; a2  = 44, (wrb) a2  <-- 43
       0     5158        M 0x800008dc bnez    a2, pc - 8             #; a2  = 43, taken, goto 0x800008d4
                         M                                           #; (f:fpu) fa0  <-- 1141.0
       0     5159        M 0x800008d4 addi    a2, a2, -1             #; a2  = 43, (wrb) a2  <-- 42
                         M 0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 2.0, ft0  = 2.0, fa0  = 1141.0
       0     5161        M 0x800008dc bnez    a2, pc - 8             #; a2  = 42, taken, goto 0x800008d4
       0     5162        M 0x800008d4 addi    a2, a2, -1             #; a2  = 42, (wrb) a2  <-- 41
                         M                                           #; (f:fpu) fa0  <-- 1145.0
       0     5163        M 0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 3.0, ft0  = 3.0, fa0  = 1145.0
       0     5164        M 0x800008dc bnez    a2, pc - 8             #; a2  = 41, taken, goto 0x800008d4
       0     5165        M 0x800008d4 addi    a2, a2, -1             #; a2  = 41, (wrb) a2  <-- 40
       0     5166        M                                           #; (f:fpu) fa0  <-- 1154.0
       0     5167        M 0x800008dc bnez    a2, pc - 8             #; a2  = 40, taken, goto 0x800008d4
                         M 0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 4.0, ft0  = 4.0, fa0  = 1154.0
       0     5168        M 0x800008d4 addi    a2, a2, -1             #; a2  = 40, (wrb) a2  <-- 39
       0     5170        M 0x800008dc bnez    a2, pc - 8             #; a2  = 39, taken, goto 0x800008d4
                         M                                           #; (f:fpu) fa0  <-- 1170.0
       0     5171        M 0x800008d4 addi    a2, a2, -1             #; a2  = 39, (wrb) a2  <-- 38
                         M 0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 5.0, ft0  = 5.0, fa0  = 1170.0
       0     5173        M 0x800008dc bnez    a2, pc - 8             #; a2  = 38, taken, goto 0x800008d4
       0     5174        M 0x800008d4 addi    a2, a2, -1             #; a2  = 38, (wrb) a2  <-- 37
                         M                                           #; (f:fpu) fa0  <-- 1195.0
       0     5175        M 0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 6.0, ft0  = 6.0, fa0  = 1195.0
       0     5176        M 0x800008dc bnez    a2, pc - 8             #; a2  = 37, taken, goto 0x800008d4
       0     5177        M 0x800008d4 addi    a2, a2, -1             #; a2  = 37, (wrb) a2  <-- 36
       0     5178        M                                           #; (f:fpu) fa0  <-- 1231.0
       0     5179        M 0x800008dc bnez    a2, pc - 8             #; a2  = 36, taken, goto 0x800008d4
                         M 0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 7.0, ft0  = 7.0, fa0  = 1231.0
       0     5180        M 0x800008d4 addi    a2, a2, -1             #; a2  = 36, (wrb) a2  <-- 35
       0     5182        M 0x800008dc bnez    a2, pc - 8             #; a2  = 35, taken, goto 0x800008d4
                         M                                           #; (f:fpu) fa0  <-- 1280.0
       0     5183        M 0x800008d4 addi    a2, a2, -1             #; a2  = 35, (wrb) a2  <-- 34
                         M 0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 8.0, ft0  = 8.0, fa0  = 1280.0
       0     5185        M 0x800008dc bnez    a2, pc - 8             #; a2  = 34, taken, goto 0x800008d4
       0     5186        M 0x800008d4 addi    a2, a2, -1             #; a2  = 34, (wrb) a2  <-- 33
                         M                                           #; (f:fpu) fa0  <-- 1344.0
       0     5187        M 0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 9.0, ft0  = 9.0, fa0  = 1344.0
       0     5188        M 0x800008dc bnez    a2, pc - 8             #; a2  = 33, taken, goto 0x800008d4
       0     5189        M 0x800008d4 addi    a2, a2, -1             #; a2  = 33, (wrb) a2  <-- 32
       0     5190        M                                           #; (f:fpu) fa0  <-- 1425.0
       0     5191        M 0x800008dc bnez    a2, pc - 8             #; a2  = 32, taken, goto 0x800008d4
                         M 0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 0.0, ft0  = 0.0, fa0  = 1425.0
       0     5192        M 0x800008d4 addi    a2, a2, -1             #; a2  = 32, (wrb) a2  <-- 31
       0     5194        M 0x800008dc bnez    a2, pc - 8             #; a2  = 31, taken, goto 0x800008d4
                         M                                           #; (f:fpu) fa0  <-- 1425.0
       0     5195        M 0x800008d4 addi    a2, a2, -1             #; a2  = 31, (wrb) a2  <-- 30
                         M 0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 1.0, ft0  = 1.0, fa0  = 1425.0
       0     5198        M 0x800008dc bnez    a2, pc - 8             #; a2  = 30, taken, goto 0x800008d4
                         M                                           #; (f:fpu) fa0  <-- 1426.0
       0     5199        M 0x800008d4 addi    a2, a2, -1             #; a2  = 30, (wrb) a2  <-- 29
                         M 0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 2.0, ft0  = 2.0, fa0  = 1426.0
       0     5202        M 0x800008dc bnez    a2, pc - 8             #; a2  = 29, taken, goto 0x800008d4
                         M                                           #; (f:fpu) fa0  <-- 1430.0
       0     5203        M 0x800008d4 addi    a2, a2, -1             #; a2  = 29, (wrb) a2  <-- 28
                         M 0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 3.0, ft0  = 3.0, fa0  = 1430.0
       0     5206        M 0x800008dc bnez    a2, pc - 8             #; a2  = 28, taken, goto 0x800008d4
                         M                                           #; (f:fpu) fa0  <-- 1439.0
       0     5207        M 0x800008d4 addi    a2, a2, -1             #; a2  = 28, (wrb) a2  <-- 27
                         M 0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 4.0, ft0  = 4.0, fa0  = 1439.0
       0     5210        M 0x800008dc bnez    a2, pc - 8             #; a2  = 27, taken, goto 0x800008d4
                         M                                           #; (f:fpu) fa0  <-- 1455.0
       0     5211        M 0x800008d4 addi    a2, a2, -1             #; a2  = 27, (wrb) a2  <-- 26
                         M 0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 5.0, ft0  = 5.0, fa0  = 1455.0
       0     5214        M 0x800008dc bnez    a2, pc - 8             #; a2  = 26, taken, goto 0x800008d4
                         M                                           #; (f:fpu) fa0  <-- 1480.0
       0     5215        M 0x800008d4 addi    a2, a2, -1             #; a2  = 26, (wrb) a2  <-- 25
                         M 0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 6.0, ft0  = 6.0, fa0  = 1480.0
       0     5218        M 0x800008dc bnez    a2, pc - 8             #; a2  = 25, taken, goto 0x800008d4
                         M                                           #; (f:fpu) fa0  <-- 1516.0
       0     5219        M 0x800008d4 addi    a2, a2, -1             #; a2  = 25, (wrb) a2  <-- 24
                         M 0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 7.0, ft0  = 7.0, fa0  = 1516.0
       0     5222        M 0x800008dc bnez    a2, pc - 8             #; a2  = 24, taken, goto 0x800008d4
                         M                                           #; (f:fpu) fa0  <-- 1565.0
       0     5223        M 0x800008d4 addi    a2, a2, -1             #; a2  = 24, (wrb) a2  <-- 23
                         M 0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 8.0, ft0  = 8.0, fa0  = 1565.0
       0     5226        M 0x800008dc bnez    a2, pc - 8             #; a2  = 23, taken, goto 0x800008d4
                         M                                           #; (f:fpu) fa0  <-- 1629.0
       0     5227        M 0x800008d4 addi    a2, a2, -1             #; a2  = 23, (wrb) a2  <-- 22
                         M 0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 9.0, ft0  = 9.0, fa0  = 1629.0
       0     5230        M 0x800008dc bnez    a2, pc - 8             #; a2  = 22, taken, goto 0x800008d4
                         M                                           #; (f:fpu) fa0  <-- 1710.0
       0     5231        M 0x800008d4 addi    a2, a2, -1             #; a2  = 22, (wrb) a2  <-- 21
                         M 0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 0.0, ft0  = 0.0, fa0  = 1710.0
       0     5234        M 0x800008dc bnez    a2, pc - 8             #; a2  = 21, taken, goto 0x800008d4
                         M                                           #; (f:fpu) fa0  <-- 1710.0
       0     5235        M 0x800008d4 addi    a2, a2, -1             #; a2  = 21, (wrb) a2  <-- 20
                         M 0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 1.0, ft0  = 1.0, fa0  = 1710.0
       0     5238        M 0x800008dc bnez    a2, pc - 8             #; a2  = 20, taken, goto 0x800008d4
                         M                                           #; (f:fpu) fa0  <-- 1711.0
       0     5239        M 0x800008d4 addi    a2, a2, -1             #; a2  = 20, (wrb) a2  <-- 19
                         M 0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 2.0, ft0  = 2.0, fa0  = 1711.0
       0     5242        M 0x800008dc bnez    a2, pc - 8             #; a2  = 19, taken, goto 0x800008d4
                         M                                           #; (f:fpu) fa0  <-- 1715.0
       0     5243        M 0x800008d4 addi    a2, a2, -1             #; a2  = 19, (wrb) a2  <-- 18
                         M 0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 3.0, ft0  = 3.0, fa0  = 1715.0
       0     5246        M 0x800008dc bnez    a2, pc - 8             #; a2  = 18, taken, goto 0x800008d4
                         M                                           #; (f:fpu) fa0  <-- 1724.0
       0     5247        M 0x800008d4 addi    a2, a2, -1             #; a2  = 18, (wrb) a2  <-- 17
                         M 0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 4.0, ft0  = 4.0, fa0  = 1724.0
       0     5250        M 0x800008dc bnez    a2, pc - 8             #; a2  = 17, taken, goto 0x800008d4
                         M                                           #; (f:fpu) fa0  <-- 1740.0
       0     5251        M 0x800008d4 addi    a2, a2, -1             #; a2  = 17, (wrb) a2  <-- 16
                         M 0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 5.0, ft0  = 5.0, fa0  = 1740.0
       0     5254        M 0x800008dc bnez    a2, pc - 8             #; a2  = 16, taken, goto 0x800008d4
                         M                                           #; (f:fpu) fa0  <-- 1765.0
       0     5255        M 0x800008d4 addi    a2, a2, -1             #; a2  = 16, (wrb) a2  <-- 15
                         M 0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 6.0, ft0  = 6.0, fa0  = 1765.0
       0     5258        M 0x800008dc bnez    a2, pc - 8             #; a2  = 15, taken, goto 0x800008d4
                         M                                           #; (f:fpu) fa0  <-- 1801.0
       0     5259        M 0x800008d4 addi    a2, a2, -1             #; a2  = 15, (wrb) a2  <-- 14
                         M 0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 7.0, ft0  = 7.0, fa0  = 1801.0
       0     5262        M 0x800008dc bnez    a2, pc - 8             #; a2  = 14, taken, goto 0x800008d4
                         M                                           #; (f:fpu) fa0  <-- 1850.0
       0     5263        M 0x800008d4 addi    a2, a2, -1             #; a2  = 14, (wrb) a2  <-- 13
                         M 0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 8.0, ft0  = 8.0, fa0  = 1850.0
       0     5266        M 0x800008dc bnez    a2, pc - 8             #; a2  = 13, taken, goto 0x800008d4
                         M                                           #; (f:fpu) fa0  <-- 1914.0
       0     5267        M 0x800008d4 addi    a2, a2, -1             #; a2  = 13, (wrb) a2  <-- 12
                         M 0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 9.0, ft0  = 9.0, fa0  = 1914.0
       0     5270        M 0x800008dc bnez    a2, pc - 8             #; a2  = 12, taken, goto 0x800008d4
                         M                                           #; (f:fpu) fa0  <-- 1995.0
       0     5271        M 0x800008d4 addi    a2, a2, -1             #; a2  = 12, (wrb) a2  <-- 11
                         M 0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 0.0, ft0  = 0.0, fa0  = 1995.0
       0     5274        M 0x800008dc bnez    a2, pc - 8             #; a2  = 11, taken, goto 0x800008d4
                         M                                           #; (f:fpu) fa0  <-- 1995.0
       0     5275        M 0x800008d4 addi    a2, a2, -1             #; a2  = 11, (wrb) a2  <-- 10
                         M 0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 1.0, ft0  = 1.0, fa0  = 1995.0
       0     5278        M 0x800008dc bnez    a2, pc - 8             #; a2  = 10, taken, goto 0x800008d4
                         M                                           #; (f:fpu) fa0  <-- 1996.0
       0     5279        M 0x800008d4 addi    a2, a2, -1             #; a2  = 10, (wrb) a2  <-- 9
                         M 0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 2.0, ft0  = 2.0, fa0  = 1996.0
       0     5282        M 0x800008dc bnez    a2, pc - 8             #; a2  = 9, taken, goto 0x800008d4
                         M                                           #; (f:fpu) fa0  <-- 2000.0
       0     5283        M 0x800008d4 addi    a2, a2, -1             #; a2  = 9, (wrb) a2  <-- 8
                         M 0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 3.0, ft0  = 3.0, fa0  = 2000.0
       0     5286        M 0x800008dc bnez    a2, pc - 8             #; a2  = 8, taken, goto 0x800008d4
                         M                                           #; (f:fpu) fa0  <-- 2009.0
       0     5287        M 0x800008d4 addi    a2, a2, -1             #; a2  = 8, (wrb) a2  <-- 7
                         M 0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 4.0, ft0  = 4.0, fa0  = 2009.0
       0     5290        M 0x800008dc bnez    a2, pc - 8             #; a2  = 7, taken, goto 0x800008d4
                         M                                           #; (f:fpu) fa0  <-- 2025.0
       0     5291        M 0x800008d4 addi    a2, a2, -1             #; a2  = 7, (wrb) a2  <-- 6
                         M 0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 5.0, ft0  = 5.0, fa0  = 2025.0
       0     5294        M 0x800008dc bnez    a2, pc - 8             #; a2  = 6, taken, goto 0x800008d4
                         M                                           #; (f:fpu) fa0  <-- 2050.0
       0     5295        M 0x800008d4 addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
                         M 0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 6.0, ft0  = 6.0, fa0  = 2050.0
       0     5298        M 0x800008dc bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x800008d4
                         M                                           #; (f:fpu) fa0  <-- 2086.0
       0     5299        M 0x800008d4 addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
                         M 0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 7.0, ft0  = 7.0, fa0  = 2086.0
       0     5302        M 0x800008dc bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x800008d4
                         M                                           #; (f:fpu) fa0  <-- 2135.0
       0     5303        M 0x800008d4 addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                         M 0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 8.0, ft0  = 8.0, fa0  = 2135.0
       0     5306        M 0x800008dc bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x800008d4
                         M                                           #; (f:fpu) fa0  <-- 2199.0
       0     5307        M 0x800008d4 addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                         M 0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 9.0, ft0  = 9.0, fa0  = 2199.0
       0     5310        M 0x800008dc bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x800008d4
                         M                                           #; (f:fpu) fa0  <-- 2280.0
       0     5311        M 0x800008d4 addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
                         M 0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 0.0, ft0  = 0.0, fa0  = 2280.0
       0     5314        M 0x800008dc bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x800008d4
                         M                                           #; (f:fpu) fa0  <-- 2280.0
       0     5315        M 0x800008d4 addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
                         M 0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 1.0, ft0  = 1.0, fa0  = 2280.0
       0     5318        M 0x800008dc bnez    a2, pc - 8             #; a2  = 0, not taken
                         M                                           #; (f:fpu) fa0  <-- 2281.0
       0     5319        M 0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 2.0, ft0  = 2.0, fa0  = 2281.0
       0     5322        M                                           #; (f:fpu) fa0  <-- 2285.0
       0     5323        M 0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 3.0, ft0  = 3.0, fa0  = 2285.0
       0     5326        M                                           #; (f:fpu) fa0  <-- 2294.0
       0     5327        M 0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 4.0, ft0  = 4.0, fa0  = 2294.0
       0     5330        M                                           #; (f:fpu) fa0  <-- 2310.0
       0     5331        M 0x800008e4 j       pc + 0x24              #; goto 0x80000908
                         M 0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 5.0, ft0  = 5.0, fa0  = 2310.0
       0     5334        M                                           #; (f:fpu) fa0  <-- 2335.0
       0     5335        M 0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 6.0, ft0  = 6.0, fa0  = 2335.0
       0     5338        M                                           #; (f:fpu) fa0  <-- 2371.0
       0     5339        M 0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 7.0, ft0  = 7.0, fa0  = 2371.0
       0     5342        M 0x80000908 ret                            #; ra  = 0x800007ac, goto 0x800007ac
                         M                                           #; (f:fpu) fa0  <-- 2420.0
       0     5343        M 0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 8.0, ft0  = 8.0, fa0  = 2420.0
       0     5346        M                                           #; (f:fpu) fa0  <-- 2484.0
       0     5347        M 0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 9.0, ft0  = 9.0, fa0  = 2484.0
       0     5350        M                                           #; (f:fpu) fa0  <-- 2565.0
       0     5351        M 0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 0.0, ft0  = 0.0, fa0  = 2565.0
       0     5354        M                                           #; (f:fpu) fa0  <-- 2565.0
       0     5355        M 0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 1.0, ft0  = 1.0, fa0  = 2565.0
       0     5358        M                                           #; (f:fpu) fa0  <-- 2566.0
       0     5359        M 0x800007b0 csrr    a0, mcycle             #; mcycle = 5358, (wrb) a0  <-- 5358
                         M 0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 2.0, ft0  = 2.0, fa0  = 2566.0
       0     5360        M 0x800007b4 sub     a1, a0, s1             #; a0  = 5358, s1  = 4847, (wrb) a1  <-- 511
       0     5361        M 0x800007b8 auipc   a0, 0x2                #; (wrb) a0  <-- 0x800027b8
       0     5362        M 0x800007bc addi    a0, a0, 1165           #; a0  = 0x800027b8, (wrb) a0  <-- 0x80002c45
                         M                                           #; (f:fpu) fa0  <-- 2570.0
       0     5363        M 0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 3.0, ft0  = 3.0, fa0  = 2570.0
       0     5366        M                                           #; (f:fpu) fa0  <-- 2579.0
       0     5367        M 0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 4.0, ft0  = 4.0, fa0  = 2579.0
       0     5370        M                                           #; (f:fpu) fa0  <-- 2595.0
       0     5371        M 0x800007c0 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800007c0
                         M 0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 5.0, ft0  = 5.0, fa0  = 2595.0
       0     5372        M 0x800007c4 jalr    ra, ra, 332            #; ra  = 0x800007c0, (wrb) ra  <-- 0x800007c8, goto 0x8000090c
       0     5373        M 0x8000090c addi    sp, sp, -48            #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff10
       0     5374        M 0x80000910 sw      ra, 12(sp)             #; sp  = 0x0011ff10, 0x800007c8 ~~> Word[0x0011ff1c]
                         M                                           #; (f:fpu) fa0  <-- 2620.0
       0     5375        M 0x80000914 mv      t0, a0                 #; a0  = 0x80002c45, (wrb) t0  <-- 0x80002c45
                         M 0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 6.0, ft0  = 6.0, fa0  = 2620.0
       0     5376        M 0x80000918 sw      a7, 44(sp)             #; sp  = 0x0011ff10, 0x00120001 ~~> Word[0x0011ff3c]
       0     5377        M 0x8000091c sw      a6, 40(sp)             #; sp  = 0x0011ff10, 99 ~~> Word[0x0011ff38]
       0     5378        M                                           #; (f:fpu) fa0  <-- 2656.0
       0     5379        M 0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 7.0, ft0  = 7.0, fa0  = 2656.0
       0     5382        M                                           #; (f:fpu) fa0  <-- 2705.0
       0     5383        M 0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 8.0, ft0  = 8.0, fa0  = 2705.0
       0     5386        M                                           #; (f:fpu) fa0  <-- 2769.0
       0     5387        M 0x800008d8 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 9.0, ft0  = 9.0, fa0  = 2769.0
       0     5388        M 0x800008e0 csrrci  a0, ssr, 1             #; 
       0     5390        M                                           #; (f:fpu) fa0  <-- 2850.0
       0     5391        M 0x800007ac fsgnj.d fs0, fa0, fa0          #; fa0  = 2850.0, fa0  = 2850.0
       0     5392        M                                           #; (f:fpu) fs0  <-- 2850.0
       0     5394        M 0x80000920 sw      a5, 36(sp)             #; sp  = 0x0011ff10, 193 ~~> Word[0x0011ff34]
       0     5395        M 0x80000924 sw      a4, 32(sp)             #; sp  = 0x0011ff10, 65 ~~> Word[0x0011ff30]
       0     5396        M 0x80000928 sw      a3, 28(sp)             #; sp  = 0x0011ff10, 8 ~~> Word[0x0011ff2c]
       0     5397        M 0x8000092c sw      a2, 24(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff28]
       0     5406        M 0x80000930 sw      a1, 20(sp)             #; sp  = 0x0011ff10, 511 ~~> Word[0x0011ff24]
       0     5407        M 0x80000934 addi    a0, sp, 20             #; sp  = 0x0011ff10, (wrb) a0  <-- 0x0011ff24
       0     5408        M 0x80000938 sw      a0, 8(sp)              #; sp  = 0x0011ff10, 0x0011ff24 ~~> Word[0x0011ff18]
       0     5409        M 0x8000093c auipc   a0, 0x1                #; (wrb) a0  <-- 0x8000193c
       0     5418        M 0x80000940 addi    a0, a0, -988           #; a0  = 0x8000193c, (wrb) a0  <-- 0x80001560
       0     5419        M 0x80000944 addi    a1, sp, 7              #; sp  = 0x0011ff10, (wrb) a1  <-- 0x0011ff17
       0     5420        M 0x80000948 li      a2, -1                 #; (wrb) a2  <-- -1
       0     5421        M 0x8000094c addi    a4, sp, 20             #; sp  = 0x0011ff10, (wrb) a4  <-- 0x0011ff24
       0     5430        M 0x80000950 mv      a3, t0                 #; t0  = 0x80002c45, (wrb) a3  <-- 0x80002c45
       0     5431        M 0x80000954 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000954
       0     5432        M 0x80000958 jalr    ra, ra, 20             #; ra  = 0x80000954, (wrb) ra  <-- 0x8000095c, goto 0x80000968
       0     5442        M 0x80000968 addi    sp, sp, -112           #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011fea0
       0     5443        M 0x8000096c sw      ra, 108(sp)            #; sp  = 0x0011fea0, 0x8000095c ~~> Word[0x0011ff0c]
       0     5454        M 0x80000970 sw      s0, 104(sp)            #; sp  = 0x0011fea0, 0x00100320 ~~> Word[0x0011ff08]
       0     5455        M 0x80000974 sw      s1, 100(sp)            #; sp  = 0x0011fea0, 4847 ~~> Word[0x0011ff04]
       0     5456        M 0x80000978 sw      s2, 96(sp)             #; sp  = 0x0011fea0, 0x00100000 ~~> Word[0x0011ff00]
       0     5457        M 0x8000097c sw      s3, 92(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fefc]
       0     5466        M 0x80000980 sw      s4, 88(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef8]
       0     5467        M 0x80000984 sw      s5, 84(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef4]
       0     5468        M 0x80000988 sw      s6, 80(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef0]
       0     5469        M 0x8000098c sw      s7, 76(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011feec]
       0     5478        M 0x80000990 sw      s8, 72(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee8]
       0     5479        M 0x80000994 sw      s9, 68(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee4]
       0     5480        M 0x80000998 sw      s10, 64(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee0]
       0     5481        M 0x8000099c sw      s11, 60(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fedc]
       0     5490        M 0x800009a0 mv      s3, a4                 #; a4  = 0x0011ff24, (wrb) s3  <-- 0x0011ff24
       0     5491        M 0x800009a4 mv      s0, a3                 #; a3  = 0x80002c45, (wrb) s0  <-- 0x80002c45
       0     5492        M 0x800009a8 mv      s5, a2                 #; a2  = -1, (wrb) s5  <-- -1
       0     5493        M 0x800009ac mv      s4, a1                 #; a1  = 0x0011ff17, (wrb) s4  <-- 0x0011ff17
       0     5502        M 0x800009b0 beqz    a1, pc + 12            #; a1  = 0x0011ff17, not taken
       0     5503        M 0x800009b4 mv      s2, a0                 #; a0  = 0x80001560, (wrb) s2  <-- 0x80001560
       0     5504        M 0x800009b8 j       pc + 0xc               #; goto 0x800009c4
       0     5514        M 0x800009c4 li      s8, 0                  #; (wrb) s8  <-- 0
       0     5515        M 0x800009c8 li      s6, 37                 #; (wrb) s6  <-- 37
       0     5516        M 0x800009cc li      s11, 16                #; (wrb) s11 <-- 16
       0     5526        M 0x800009d0 li      s7, 46                 #; (wrb) s7  <-- 46
       0     5527        M 0x800009d4 lui     a0, 0x1                #; (wrb) a0  <-- 4096
       0     5528        M 0x800009d8 addi    a0, a0, -2048          #; a0  = 4096, (wrb) a0  <-- 2048
       0     5529        M 0x800009dc sw      a0, 24(sp)             #; sp  = 0x0011fea0, 2048 ~~> Word[0x0011feb8]
       0     5538        M 0x800009e0 lui     a0, 0x10               #; (wrb) a0  <-- 0x00010000
       0     5539        M 0x800009e4 addi    a0, a0, -1             #; a0  = 0x00010000, (wrb) a0  <-- 65535
       0     5540        M 0x800009e8 sw      a0, 16(sp)             #; sp  = 0x0011fea0, 65535 ~~> Word[0x0011feb0]
       0     5541        M 0x800009ec addi    s10, s0, 2             #; s0  = 0x80002c45, (wrb) s10 <-- 0x80002c47
       0     5550        M 0x800009f0 mv      s9, s8                 #; s8  = 0, (wrb) s9  <-- 0
       0     5551        M 0x800009f4 li      s8, 10                 #; (wrb) s8  <-- 10
       0     5552        M 0x800009f8 lbu     a0, 0(s0)              #; s0  = 0x80002c45, a0  <~~ Byte[0x80002c45]
       0     5563        M                                           #; (lsu) a0  <-- 99
       0     5564        M 0x800009fc beqz    a0, pc + 2824          #; a0  = 99, not taken
       0     5565        M 0x80000a00 beq     a0, s6, pc + 48        #; a0  = 99, s6  = 37, not taken
       0     5566        M 0x80000a04 addi    s1, s9, 1              #; s9  = 0, (wrb) s1  <-- 1
       0     5567        M 0x80000a08 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5568        M 0x80000a0c mv      a2, s9                 #; s9  = 0, (wrb) a2  <-- 0
       0     5577        M 0x80000a10 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5578        M 0x80000a14 jalr    s2                     #; s2  = 0x80001560, (wrb) ra  <-- 0x80000a18, goto 0x80001560
       0     5600        M 0x80001560 beqz    a0, pc + 168           #; a0  = 99, not taken
       0     5601        M 0x80001564 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5602        M 0x80001568 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5603        M 0x8000156c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5612        M 0x80001570 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003570
       0     5613        M 0x80001574 addi    a3, a3, -1500          #; a3  = 0x80003570, (wrb) a3  <-- 0x80002f94
       0     5614        M 0x80001578 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
       0     5615        M 0x8000157c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     5626        M                                           #; (lsu) a4  <-- 0
       0     5627        M 0x80001580 addi    a5, a4, 1              #; a4  = 0, (wrb) a5  <-- 1
       0     5628        M 0x80001584 sw      a5, 0(a1)              #; a1  = 0x80002f94, 1 ~~> Word[0x80002f94]
       0     5629        M 0x80001588 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 0, (wrb) a4  <-- 0x80002f94
       0     5630        M 0x8000158c sb      a0, 72(a4)             #; a4  = 0x80002f94, 99 ~~> Byte[0x80002fdc]
       0     5636        M 0x80001590 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     5652        M                                           #; (lsu) a4  <-- 1
       0     5653        M 0x80001594 addi    a4, a4, -1020          #; a4  = 1, (wrb) a4  <-- -1019
       0     5654        M 0x80001598 snez    a4, a4                 #; a4  = -1019, (wrb) a4  <-- 1
       0     5655        M 0x8000159c addi    a0, a0, -10            #; a0  = 99, (wrb) a0  <-- 89
       0     5656        M 0x800015a0 snez    a0, a0                 #; a0  = 89, (wrb) a0  <-- 1
       0     5657        M 0x800015a4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5658        M 0x800015a8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001608
       0     5679        M 0x80001608 ret                            #; ra  = 0x80000a18, goto 0x80000a18
       0     5693        M 0x80000a18 addi    s0, s0, 1              #; s0  = 0x80002c45, (wrb) s0  <-- 0x80002c46
       0     5694        M 0x80000a1c addi    s10, s10, 1            #; s10 = 0x80002c47, (wrb) s10 <-- 0x80002c48
       0     5696        M 0x80000a20 mv      s9, s1                 #; s1  = 1, (wrb) s9  <-- 1
       0     5697        M 0x80000a24 lbu     a0, 0(s0)              #; s0  = 0x80002c46, a0  <~~ Byte[0x80002c46]
       0     5708        M                                           #; (lsu) a0  <-- 121
       0     5709        M 0x80000a28 bnez    a0, pc - 40            #; a0  = 121, taken, goto 0x80000a00
       0     5710        M 0x80000a00 beq     a0, s6, pc + 48        #; a0  = 121, s6  = 37, not taken
       0     5711        M 0x80000a04 addi    s1, s9, 1              #; s9  = 1, (wrb) s1  <-- 2
       0     5712        M 0x80000a08 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5713        M 0x80000a0c mv      a2, s9                 #; s9  = 1, (wrb) a2  <-- 1
       0     5714        M 0x80000a10 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5715        M 0x80000a14 jalr    s2                     #; s2  = 0x80001560, (wrb) ra  <-- 0x80000a18, goto 0x80001560
       0     5718        M 0x80001560 beqz    a0, pc + 168           #; a0  = 121, not taken
       0     5719        M 0x80001564 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5720        M 0x80001568 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5721        M 0x8000156c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5722        M 0x80001570 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003570
       0     5723        M 0x80001574 addi    a3, a3, -1500          #; a3  = 0x80003570, (wrb) a3  <-- 0x80002f94
       0     5724        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5725        M 0x80001578 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
       0     5726        M 0x8000157c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     5737        M                                           #; (lsu) a4  <-- 1
       0     5738        M 0x80001580 addi    a5, a4, 1              #; a4  = 1, (wrb) a5  <-- 2
       0     5739        M 0x80001584 sw      a5, 0(a1)              #; a1  = 0x80002f94, 2 ~~> Word[0x80002f94]
       0     5740        M 0x80001588 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 1, (wrb) a4  <-- 0x80002f95
       0     5741        M 0x8000158c sb      a0, 72(a4)             #; a4  = 0x80002f95, 121 ~~> Byte[0x80002fdd]
       0     5742        M 0x80001590 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     5763        M                                           #; (lsu) a4  <-- 2
       0     5764        M 0x80001594 addi    a4, a4, -1020          #; a4  = 2, (wrb) a4  <-- -1018
       0     5765        M 0x80001598 snez    a4, a4                 #; a4  = -1018, (wrb) a4  <-- 1
       0     5766        M 0x8000159c addi    a0, a0, -10            #; a0  = 121, (wrb) a0  <-- 111
       0     5767        M 0x800015a0 snez    a0, a0                 #; a0  = 111, (wrb) a0  <-- 1
       0     5768        M 0x800015a4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5769        M 0x800015a8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001608
       0     5772        M 0x80001608 ret                            #; ra  = 0x80000a18, goto 0x80000a18
       0     5777        M 0x80000a18 addi    s0, s0, 1              #; s0  = 0x80002c46, (wrb) s0  <-- 0x80002c47
       0     5778        M 0x80000a1c addi    s10, s10, 1            #; s10 = 0x80002c48, (wrb) s10 <-- 0x80002c49
       0     5780        M 0x80000a20 mv      s9, s1                 #; s1  = 2, (wrb) s9  <-- 2
       0     5781        M 0x80000a24 lbu     a0, 0(s0)              #; s0  = 0x80002c47, a0  <~~ Byte[0x80002c47]
       0     5792        M                                           #; (lsu) a0  <-- 99
       0     5793        M 0x80000a28 bnez    a0, pc - 40            #; a0  = 99, taken, goto 0x80000a00
       0     5794        M 0x80000a00 beq     a0, s6, pc + 48        #; a0  = 99, s6  = 37, not taken
       0     5795        M 0x80000a04 addi    s1, s9, 1              #; s9  = 2, (wrb) s1  <-- 3
       0     5796        M 0x80000a08 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5797        M 0x80000a0c mv      a2, s9                 #; s9  = 2, (wrb) a2  <-- 2
       0     5798        M 0x80000a10 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5799        M 0x80000a14 jalr    s2                     #; s2  = 0x80001560, (wrb) ra  <-- 0x80000a18, goto 0x80001560
       0     5802        M 0x80001560 beqz    a0, pc + 168           #; a0  = 99, not taken
       0     5803        M 0x80001564 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5804        M 0x80001568 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5805        M 0x8000156c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5806        M 0x80001570 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003570
       0     5807        M 0x80001574 addi    a3, a3, -1500          #; a3  = 0x80003570, (wrb) a3  <-- 0x80002f94
       0     5808        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5809        M 0x80001578 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
       0     5810        M 0x8000157c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     5821        M                                           #; (lsu) a4  <-- 2
       0     5822        M 0x80001580 addi    a5, a4, 1              #; a4  = 2, (wrb) a5  <-- 3
       0     5823        M 0x80001584 sw      a5, 0(a1)              #; a1  = 0x80002f94, 3 ~~> Word[0x80002f94]
       0     5824        M 0x80001588 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 2, (wrb) a4  <-- 0x80002f96
       0     5825        M 0x8000158c sb      a0, 72(a4)             #; a4  = 0x80002f96, 99 ~~> Byte[0x80002fde]
       0     5826        M 0x80001590 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     5847        M                                           #; (lsu) a4  <-- 3
       0     5848        M 0x80001594 addi    a4, a4, -1020          #; a4  = 3, (wrb) a4  <-- -1017
       0     5849        M 0x80001598 snez    a4, a4                 #; a4  = -1017, (wrb) a4  <-- 1
       0     5850        M 0x8000159c addi    a0, a0, -10            #; a0  = 99, (wrb) a0  <-- 89
       0     5851        M 0x800015a0 snez    a0, a0                 #; a0  = 89, (wrb) a0  <-- 1
       0     5852        M 0x800015a4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5853        M 0x800015a8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001608
       0     5856        M 0x80001608 ret                            #; ra  = 0x80000a18, goto 0x80000a18
       0     5861        M 0x80000a18 addi    s0, s0, 1              #; s0  = 0x80002c47, (wrb) s0  <-- 0x80002c48
       0     5862        M 0x80000a1c addi    s10, s10, 1            #; s10 = 0x80002c49, (wrb) s10 <-- 0x80002c4a
       0     5864        M 0x80000a20 mv      s9, s1                 #; s1  = 3, (wrb) s9  <-- 3
       0     5865        M 0x80000a24 lbu     a0, 0(s0)              #; s0  = 0x80002c48, a0  <~~ Byte[0x80002c48]
       0     5876        M                                           #; (lsu) a0  <-- 108
       0     5877        M 0x80000a28 bnez    a0, pc - 40            #; a0  = 108, taken, goto 0x80000a00
       0     5878        M 0x80000a00 beq     a0, s6, pc + 48        #; a0  = 108, s6  = 37, not taken
       0     5879        M 0x80000a04 addi    s1, s9, 1              #; s9  = 3, (wrb) s1  <-- 4
       0     5880        M 0x80000a08 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5881        M 0x80000a0c mv      a2, s9                 #; s9  = 3, (wrb) a2  <-- 3
       0     5882        M 0x80000a10 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5883        M 0x80000a14 jalr    s2                     #; s2  = 0x80001560, (wrb) ra  <-- 0x80000a18, goto 0x80001560
       0     5886        M 0x80001560 beqz    a0, pc + 168           #; a0  = 108, not taken
       0     5887        M 0x80001564 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5888        M 0x80001568 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5889        M 0x8000156c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5890        M 0x80001570 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003570
       0     5891        M 0x80001574 addi    a3, a3, -1500          #; a3  = 0x80003570, (wrb) a3  <-- 0x80002f94
       0     5892        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5893        M 0x80001578 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
       0     5894        M 0x8000157c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     5905        M                                           #; (lsu) a4  <-- 3
       0     5906        M 0x80001580 addi    a5, a4, 1              #; a4  = 3, (wrb) a5  <-- 4
       0     5907        M 0x80001584 sw      a5, 0(a1)              #; a1  = 0x80002f94, 4 ~~> Word[0x80002f94]
       0     5908        M 0x80001588 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 3, (wrb) a4  <-- 0x80002f97
       0     5909        M 0x8000158c sb      a0, 72(a4)             #; a4  = 0x80002f97, 108 ~~> Byte[0x80002fdf]
       0     5910        M 0x80001590 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     5931        M                                           #; (lsu) a4  <-- 4
       0     5932        M 0x80001594 addi    a4, a4, -1020          #; a4  = 4, (wrb) a4  <-- -1016
       0     5933        M 0x80001598 snez    a4, a4                 #; a4  = -1016, (wrb) a4  <-- 1
       0     5934        M 0x8000159c addi    a0, a0, -10            #; a0  = 108, (wrb) a0  <-- 98
       0     5935        M 0x800015a0 snez    a0, a0                 #; a0  = 98, (wrb) a0  <-- 1
       0     5936        M 0x800015a4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5937        M 0x800015a8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001608
       0     5940        M 0x80001608 ret                            #; ra  = 0x80000a18, goto 0x80000a18
       0     5945        M 0x80000a18 addi    s0, s0, 1              #; s0  = 0x80002c48, (wrb) s0  <-- 0x80002c49
       0     5946        M 0x80000a1c addi    s10, s10, 1            #; s10 = 0x80002c4a, (wrb) s10 <-- 0x80002c4b
       0     5948        M 0x80000a20 mv      s9, s1                 #; s1  = 4, (wrb) s9  <-- 4
       0     5949        M 0x80000a24 lbu     a0, 0(s0)              #; s0  = 0x80002c49, a0  <~~ Byte[0x80002c49]
       0     5960        M                                           #; (lsu) a0  <-- 101
       0     5961        M 0x80000a28 bnez    a0, pc - 40            #; a0  = 101, taken, goto 0x80000a00
       0     5962        M 0x80000a00 beq     a0, s6, pc + 48        #; a0  = 101, s6  = 37, not taken
       0     5963        M 0x80000a04 addi    s1, s9, 1              #; s9  = 4, (wrb) s1  <-- 5
       0     5964        M 0x80000a08 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5965        M 0x80000a0c mv      a2, s9                 #; s9  = 4, (wrb) a2  <-- 4
       0     5966        M 0x80000a10 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5967        M 0x80000a14 jalr    s2                     #; s2  = 0x80001560, (wrb) ra  <-- 0x80000a18, goto 0x80001560
       0     5970        M 0x80001560 beqz    a0, pc + 168           #; a0  = 101, not taken
       0     5971        M 0x80001564 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5972        M 0x80001568 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5973        M 0x8000156c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5974        M 0x80001570 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003570
       0     5975        M 0x80001574 addi    a3, a3, -1500          #; a3  = 0x80003570, (wrb) a3  <-- 0x80002f94
       0     5976        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5977        M 0x80001578 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
       0     5978        M 0x8000157c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     5989        M                                           #; (lsu) a4  <-- 4
       0     5990        M 0x80001580 addi    a5, a4, 1              #; a4  = 4, (wrb) a5  <-- 5
       0     5991        M 0x80001584 sw      a5, 0(a1)              #; a1  = 0x80002f94, 5 ~~> Word[0x80002f94]
       0     5992        M 0x80001588 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 4, (wrb) a4  <-- 0x80002f98
       0     5993        M 0x8000158c sb      a0, 72(a4)             #; a4  = 0x80002f98, 101 ~~> Byte[0x80002fe0]
       0     5994        M 0x80001590 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     6015        M                                           #; (lsu) a4  <-- 5
       0     6016        M 0x80001594 addi    a4, a4, -1020          #; a4  = 5, (wrb) a4  <-- -1015
       0     6017        M 0x80001598 snez    a4, a4                 #; a4  = -1015, (wrb) a4  <-- 1
       0     6018        M 0x8000159c addi    a0, a0, -10            #; a0  = 101, (wrb) a0  <-- 91
       0     6019        M 0x800015a0 snez    a0, a0                 #; a0  = 91, (wrb) a0  <-- 1
       0     6020        M 0x800015a4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     6021        M 0x800015a8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001608
       0     6024        M 0x80001608 ret                            #; ra  = 0x80000a18, goto 0x80000a18
       0     6029        M 0x80000a18 addi    s0, s0, 1              #; s0  = 0x80002c49, (wrb) s0  <-- 0x80002c4a
       0     6030        M 0x80000a1c addi    s10, s10, 1            #; s10 = 0x80002c4b, (wrb) s10 <-- 0x80002c4c
       0     6032        M 0x80000a20 mv      s9, s1                 #; s1  = 5, (wrb) s9  <-- 5
       0     6033        M 0x80000a24 lbu     a0, 0(s0)              #; s0  = 0x80002c4a, a0  <~~ Byte[0x80002c4a]
       0     6044        M                                           #; (lsu) a0  <-- 115
       0     6045        M 0x80000a28 bnez    a0, pc - 40            #; a0  = 115, taken, goto 0x80000a00
       0     6046        M 0x80000a00 beq     a0, s6, pc + 48        #; a0  = 115, s6  = 37, not taken
       0     6047        M 0x80000a04 addi    s1, s9, 1              #; s9  = 5, (wrb) s1  <-- 6
       0     6048        M 0x80000a08 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     6049        M 0x80000a0c mv      a2, s9                 #; s9  = 5, (wrb) a2  <-- 5
       0     6050        M 0x80000a10 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     6051        M 0x80000a14 jalr    s2                     #; s2  = 0x80001560, (wrb) ra  <-- 0x80000a18, goto 0x80001560
       0     6054        M 0x80001560 beqz    a0, pc + 168           #; a0  = 115, not taken
       0     6055        M 0x80001564 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6056        M 0x80001568 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     6057        M 0x8000156c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     6058        M 0x80001570 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003570
       0     6059        M 0x80001574 addi    a3, a3, -1500          #; a3  = 0x80003570, (wrb) a3  <-- 0x80002f94
       0     6060        M                                           #; (acc) a1  <-- 0x00d605b3
       0     6061        M 0x80001578 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
       0     6062        M 0x8000157c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     6073        M                                           #; (lsu) a4  <-- 5
       0     6074        M 0x80001580 addi    a5, a4, 1              #; a4  = 5, (wrb) a5  <-- 6
       0     6075        M 0x80001584 sw      a5, 0(a1)              #; a1  = 0x80002f94, 6 ~~> Word[0x80002f94]
       0     6076        M 0x80001588 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 5, (wrb) a4  <-- 0x80002f99
       0     6077        M 0x8000158c sb      a0, 72(a4)             #; a4  = 0x80002f99, 115 ~~> Byte[0x80002fe1]
       0     6078        M 0x80001590 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     6099        M                                           #; (lsu) a4  <-- 6
       0     6100        M 0x80001594 addi    a4, a4, -1020          #; a4  = 6, (wrb) a4  <-- -1014
       0     6101        M 0x80001598 snez    a4, a4                 #; a4  = -1014, (wrb) a4  <-- 1
       0     6102        M 0x8000159c addi    a0, a0, -10            #; a0  = 115, (wrb) a0  <-- 105
       0     6103        M 0x800015a0 snez    a0, a0                 #; a0  = 105, (wrb) a0  <-- 1
       0     6104        M 0x800015a4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     6105        M 0x800015a8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001608
       0     6108        M 0x80001608 ret                            #; ra  = 0x80000a18, goto 0x80000a18
       0     6113        M 0x80000a18 addi    s0, s0, 1              #; s0  = 0x80002c4a, (wrb) s0  <-- 0x80002c4b
       0     6114        M 0x80000a1c addi    s10, s10, 1            #; s10 = 0x80002c4c, (wrb) s10 <-- 0x80002c4d
       0     6116        M 0x80000a20 mv      s9, s1                 #; s1  = 6, (wrb) s9  <-- 6
       0     6117        M 0x80000a24 lbu     a0, 0(s0)              #; s0  = 0x80002c4b, a0  <~~ Byte[0x80002c4b]
       0     6128        M                                           #; (lsu) a0  <-- 32
       0     6129        M 0x80000a28 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000a00
       0     6130        M 0x80000a00 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     6131        M 0x80000a04 addi    s1, s9, 1              #; s9  = 6, (wrb) s1  <-- 7
       0     6132        M 0x80000a08 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     6133        M 0x80000a0c mv      a2, s9                 #; s9  = 6, (wrb) a2  <-- 6
       0     6134        M 0x80000a10 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     6135        M 0x80000a14 jalr    s2                     #; s2  = 0x80001560, (wrb) ra  <-- 0x80000a18, goto 0x80001560
       0     6138        M 0x80001560 beqz    a0, pc + 168           #; a0  = 32, not taken
       0     6139        M 0x80001564 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6140        M 0x80001568 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     6141        M 0x8000156c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     6142        M 0x80001570 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003570
       0     6143        M 0x80001574 addi    a3, a3, -1500          #; a3  = 0x80003570, (wrb) a3  <-- 0x80002f94
       0     6144        M                                           #; (acc) a1  <-- 0x00d605b3
       0     6145        M 0x80001578 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
       0     6146        M 0x8000157c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     6157        M                                           #; (lsu) a4  <-- 6
       0     6158        M 0x80001580 addi    a5, a4, 1              #; a4  = 6, (wrb) a5  <-- 7
       0     6159        M 0x80001584 sw      a5, 0(a1)              #; a1  = 0x80002f94, 7 ~~> Word[0x80002f94]
       0     6160        M 0x80001588 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 6, (wrb) a4  <-- 0x80002f9a
       0     6161        M 0x8000158c sb      a0, 72(a4)             #; a4  = 0x80002f9a, 32 ~~> Byte[0x80002fe2]
       0     6162        M 0x80001590 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     6183        M                                           #; (lsu) a4  <-- 7
       0     6184        M 0x80001594 addi    a4, a4, -1020          #; a4  = 7, (wrb) a4  <-- -1013
       0     6185        M 0x80001598 snez    a4, a4                 #; a4  = -1013, (wrb) a4  <-- 1
       0     6186        M 0x8000159c addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
       0     6187        M 0x800015a0 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
       0     6188        M 0x800015a4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     6189        M 0x800015a8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001608
       0     6192        M 0x80001608 ret                            #; ra  = 0x80000a18, goto 0x80000a18
       0     6197        M 0x80000a18 addi    s0, s0, 1              #; s0  = 0x80002c4b, (wrb) s0  <-- 0x80002c4c
       0     6198        M 0x80000a1c addi    s10, s10, 1            #; s10 = 0x80002c4d, (wrb) s10 <-- 0x80002c4e
       0     6200        M 0x80000a20 mv      s9, s1                 #; s1  = 7, (wrb) s9  <-- 7
       0     6201        M 0x80000a24 lbu     a0, 0(s0)              #; s0  = 0x80002c4c, a0  <~~ Byte[0x80002c4c]
       0     6212        M                                           #; (lsu) a0  <-- 61
       0     6213        M 0x80000a28 bnez    a0, pc - 40            #; a0  = 61, taken, goto 0x80000a00
       0     6214        M 0x80000a00 beq     a0, s6, pc + 48        #; a0  = 61, s6  = 37, not taken
       0     6215        M 0x80000a04 addi    s1, s9, 1              #; s9  = 7, (wrb) s1  <-- 8
       0     6216        M 0x80000a08 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     6217        M 0x80000a0c mv      a2, s9                 #; s9  = 7, (wrb) a2  <-- 7
       0     6218        M 0x80000a10 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     6219        M 0x80000a14 jalr    s2                     #; s2  = 0x80001560, (wrb) ra  <-- 0x80000a18, goto 0x80001560
       0     6222        M 0x80001560 beqz    a0, pc + 168           #; a0  = 61, not taken
       0     6223        M 0x80001564 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6224        M 0x80001568 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     6225        M 0x8000156c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     6226        M 0x80001570 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003570
       0     6227        M 0x80001574 addi    a3, a3, -1500          #; a3  = 0x80003570, (wrb) a3  <-- 0x80002f94
       0     6228        M                                           #; (acc) a1  <-- 0x00d605b3
       0     6229        M 0x80001578 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
       0     6230        M 0x8000157c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     6241        M                                           #; (lsu) a4  <-- 7
       0     6242        M 0x80001580 addi    a5, a4, 1              #; a4  = 7, (wrb) a5  <-- 8
       0     6243        M 0x80001584 sw      a5, 0(a1)              #; a1  = 0x80002f94, 8 ~~> Word[0x80002f94]
       0     6244        M 0x80001588 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 7, (wrb) a4  <-- 0x80002f9b
       0     6245        M 0x8000158c sb      a0, 72(a4)             #; a4  = 0x80002f9b, 61 ~~> Byte[0x80002fe3]
       0     6246        M 0x80001590 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     6267        M                                           #; (lsu) a4  <-- 8
       0     6268        M 0x80001594 addi    a4, a4, -1020          #; a4  = 8, (wrb) a4  <-- -1012
       0     6269        M 0x80001598 snez    a4, a4                 #; a4  = -1012, (wrb) a4  <-- 1
       0     6270        M 0x8000159c addi    a0, a0, -10            #; a0  = 61, (wrb) a0  <-- 51
       0     6271        M 0x800015a0 snez    a0, a0                 #; a0  = 51, (wrb) a0  <-- 1
       0     6272        M 0x800015a4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     6273        M 0x800015a8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001608
       0     6276        M 0x80001608 ret                            #; ra  = 0x80000a18, goto 0x80000a18
       0     6281        M 0x80000a18 addi    s0, s0, 1              #; s0  = 0x80002c4c, (wrb) s0  <-- 0x80002c4d
       0     6282        M 0x80000a1c addi    s10, s10, 1            #; s10 = 0x80002c4e, (wrb) s10 <-- 0x80002c4f
       0     6284        M 0x80000a20 mv      s9, s1                 #; s1  = 8, (wrb) s9  <-- 8
       0     6285        M 0x80000a24 lbu     a0, 0(s0)              #; s0  = 0x80002c4d, a0  <~~ Byte[0x80002c4d]
       0     6296        M                                           #; (lsu) a0  <-- 32
       0     6297        M 0x80000a28 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000a00
       0     6298        M 0x80000a00 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     6299        M 0x80000a04 addi    s1, s9, 1              #; s9  = 8, (wrb) s1  <-- 9
       0     6300        M 0x80000a08 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     6301        M 0x80000a0c mv      a2, s9                 #; s9  = 8, (wrb) a2  <-- 8
       0     6302        M 0x80000a10 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     6303        M 0x80000a14 jalr    s2                     #; s2  = 0x80001560, (wrb) ra  <-- 0x80000a18, goto 0x80001560
       0     6306        M 0x80001560 beqz    a0, pc + 168           #; a0  = 32, not taken
       0     6307        M 0x80001564 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6308        M 0x80001568 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     6309        M 0x8000156c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     6310        M 0x80001570 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003570
       0     6311        M 0x80001574 addi    a3, a3, -1500          #; a3  = 0x80003570, (wrb) a3  <-- 0x80002f94
       0     6312        M                                           #; (acc) a1  <-- 0x00d605b3
       0     6313        M 0x80001578 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
       0     6314        M 0x8000157c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     6325        M                                           #; (lsu) a4  <-- 8
       0     6326        M 0x80001580 addi    a5, a4, 1              #; a4  = 8, (wrb) a5  <-- 9
       0     6327        M 0x80001584 sw      a5, 0(a1)              #; a1  = 0x80002f94, 9 ~~> Word[0x80002f94]
       0     6328        M 0x80001588 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 8, (wrb) a4  <-- 0x80002f9c
       0     6329        M 0x8000158c sb      a0, 72(a4)             #; a4  = 0x80002f9c, 32 ~~> Byte[0x80002fe4]
       0     6330        M 0x80001590 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     6351        M                                           #; (lsu) a4  <-- 9
       0     6352        M 0x80001594 addi    a4, a4, -1020          #; a4  = 9, (wrb) a4  <-- -1011
       0     6353        M 0x80001598 snez    a4, a4                 #; a4  = -1011, (wrb) a4  <-- 1
       0     6354        M 0x8000159c addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
       0     6355        M 0x800015a0 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
       0     6356        M 0x800015a4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     6357        M 0x800015a8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001608
       0     6360        M 0x80001608 ret                            #; ra  = 0x80000a18, goto 0x80000a18
       0     6365        M 0x80000a18 addi    s0, s0, 1              #; s0  = 0x80002c4d, (wrb) s0  <-- 0x80002c4e
       0     6366        M 0x80000a1c addi    s10, s10, 1            #; s10 = 0x80002c4f, (wrb) s10 <-- 0x80002c50
       0     6368        M 0x80000a20 mv      s9, s1                 #; s1  = 9, (wrb) s9  <-- 9
       0     6369        M 0x80000a24 lbu     a0, 0(s0)              #; s0  = 0x80002c4e, a0  <~~ Byte[0x80002c4e]
       0     6380        M                                           #; (lsu) a0  <-- 37
       0     6381        M 0x80000a28 bnez    a0, pc - 40            #; a0  = 37, taken, goto 0x80000a00
       0     6382        M 0x80000a00 beq     a0, s6, pc + 48        #; a0  = 37, s6  = 37, taken, goto 0x80000a30
       0     6394        M 0x80000a30 li      s0, 0                  #; (wrb) s0  <-- 0
       0     6395        M 0x80000a34 j       pc + 0x10              #; goto 0x80000a44
       0     6406        M 0x80000a44 lbu     a0, -1(s10)            #; s10 = 0x80002c50, a0  <~~ Byte[0x80002c4f]
       0     6417        M                                           #; (lsu) a0  <-- 102
       0     6418        M 0x80000a48 addi    a1, a0, -32            #; a0  = 102, (wrb) a1  <-- 70
       0     6419        M 0x80000a4c bltu    s11, a1, pc + 56       #; s11 = 16, a1  = 70, taken, goto 0x80000a84
       0     6431        M 0x80000a84 addi    a1, a0, -48            #; a0  = 102, (wrb) a1  <-- 54
       0     6432        M 0x80000a88 andi    a2, a1, 255            #; a1  = 54, (wrb) a2  <-- 54
       0     6433        M 0x80000a8c addi    a1, s10, -1            #; s10 = 0x80002c50, (wrb) a1  <-- 0x80002c4f
       0     6443        M 0x80000a90 li      a3, 9                  #; (wrb) a3  <-- 9
       0     6444        M 0x80000a94 bltu    a3, a2, pc + 124       #; a3  = 9, a2  = 54, taken, goto 0x80000b10
       0     6466        M 0x80000b10 li      a2, 42                 #; (wrb) a2  <-- 42
       0     6467        M 0x80000b14 bne     a0, a2, pc + 80        #; a0  = 102, a2  = 42, taken, goto 0x80000b64
       0     6489        M 0x80000b64 li      s6, 0                  #; (wrb) s6  <-- 0
       0     6490        M 0x80000b68 mv      s10, a1                #; a1  = 0x80002c4f, (wrb) s10 <-- 0x80002c4f
       0     6491        M 0x80000b6c beq     a0, s7, pc - 164       #; a0  = 102, s7  = 46, not taken
       0     6512        M 0x80000b70 li      s7, 0                  #; (wrb) s7  <-- 0
       0     6513        M 0x80000b74 j       pc + 0xc               #; goto 0x80000b80
       0     6524        M 0x80000b80 addi    a1, a0, -104           #; a0  = 102, (wrb) a1  <-- -2
       0     6525        M 0x80000b84 srli    a2, a1, 1              #; a1  = -2, (wrb) a2  <-- 0x7fffffff
       0     6526        M 0x80000b88 slli    a1, a1, 31             #; a1  = -2, (wrb) a1  <-- 0
       0     6527        M 0x80000b8c or      a1, a1, a2             #; a1  = 0, a2  = 0x7fffffff, (wrb) a1  <-- 0x7fffffff
       0     6536        M 0x80000b90 li      a2, 9                  #; (wrb) a2  <-- 9
       0     6537        M 0x80000b94 bltu    a2, a1, pc + 100       #; a2  = 9, a1  = 0x7fffffff, taken, goto 0x80000bf8
       0     6559        M 0x80000bf8 addi    a1, a0, -37            #; a0  = 102, (wrb) a1  <-- 65
       0     6560        M 0x80000bfc li      a2, 83                 #; (wrb) a2  <-- 83
       0     6571        M 0x80000c00 bltu    a2, a1, pc + 264       #; a2  = 83, a1  = 65, not taken
       0     6572        M 0x80000c04 slli    a1, a1, 2              #; a1  = 65, (wrb) a1  <-- 260
       0     6573        M 0x80000c08 auipc   a2, 0x2                #; (wrb) a2  <-- 0x80002c08
       0     6574        M 0x80000c0c addi    a2, a2, 200            #; a2  = 0x80002c08, (wrb) a2  <-- 0x80002cd0
       0     6583        M 0x80000c10 add     a1, a1, a2             #; a1  = 260, a2  = 0x80002cd0, (wrb) a1  <-- 0x80002dd4
       0     6584        M 0x80000c14 lw      a2, 0(a1)              #; a1  = 0x80002dd4, a2  <~~ Word[0x80002dd4]
       0     6585        M 0x80000c18 li      a1, 8                  #; (wrb) a1  <-- 8
       0     6586        M 0x80000c1c li      s8, 16                 #; (wrb) s8  <-- 16
       0     6595        M                                           #; (lsu) a2  <-- 0x80000c50
       0     6596        M 0x80000c20 jr      a2                     #; a2  = 0x80000c50, goto 0x80000c50
       0     6618        M 0x80000c50 li      a1, 70                 #; (wrb) a1  <-- 70
       0     6619        M 0x80000c54 bne     a0, a1, pc + 8         #; a0  = 102, a1  = 70, taken, goto 0x80000c5c
       0     6620        M 0x80000c5c addi    a0, s3, 7              #; s3  = 0x0011ff24, (wrb) a0  <-- 0x0011ff2b
       0     6630        M 0x80000c60 andi    a0, a0, -8             #; a0  = 0x0011ff2b, (wrb) a0  <-- 0x0011ff28
       0     6632        M 0x80000c68 addi    s3, a0, 8              #; a0  = 0x0011ff28, (wrb) s3  <-- 0x0011ff30
       0     6633        M 0x80000c6c mv      a0, s2                 #; s2  = 0x80001560, (wrb) a0  <-- 0x80001560
                         M 0x80000c64 fld     fa0, 0(a0)             #; fa0  <~~ Doub[0x0011ff28]
       0     6634        M                                           #; (f:lsu) fa0  <-- 0.0000000
       0     6642        M 0x80000c70 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     6643        M 0x80000c74 mv      a2, s9                 #; s9  = 9, (wrb) a2  <-- 9
       0     6644        M 0x80000c78 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     6645        M 0x80000c7c mv      a4, s7                 #; s7  = 0, (wrb) a4  <-- 0
       0     6654        M 0x80000c80 mv      a5, s6                 #; s6  = 0, (wrb) a5  <-- 0
       0     6655        M 0x80000c84 mv      a6, s0                 #; s0  = 0, (wrb) a6  <-- 0
       0     6656        M 0x80000c88 auipc   ra, 0x1                #; (wrb) ra  <-- 0x80001c88
       0     6657        M 0x80000c8c jalr    ra, ra, -1656          #; ra  = 0x80001c88, (wrb) ra  <-- 0x80000c90, goto 0x80001610
       0     6668        M 0x80001610 addi    sp, sp, -112           #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011fe30
       0     6669        M 0x80001614 sw      ra, 108(sp)            #; sp  = 0x0011fe30, 0x80000c90 ~~> Word[0x0011fe9c]
       0     6670        M 0x80001618 sw      s0, 104(sp)            #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe98]
       0     6671        M 0x8000161c sw      s1, 100(sp)            #; sp  = 0x0011fe30, 9 ~~> Word[0x0011fe94]
       0     6680        M 0x80001620 sw      s2, 96(sp)             #; sp  = 0x0011fe30, 0x80001560 ~~> Word[0x0011fe90]
       0     6681        M 0x80001624 sw      s3, 92(sp)             #; sp  = 0x0011fe30, 0x0011ff30 ~~> Word[0x0011fe8c]
       0     6682        M 0x80001628 sw      s4, 88(sp)             #; sp  = 0x0011fe30, 0x0011ff17 ~~> Word[0x0011fe88]
       0     6683        M 0x8000162c sw      s5, 84(sp)             #; sp  = 0x0011fe30, -1 ~~> Word[0x0011fe84]
       0     6692        M 0x80001630 sw      s6, 80(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe80]
       0     6693        M 0x80001634 sw      s7, 76(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe7c]
       0     6694        M 0x80001638 sw      s8, 72(sp)             #; sp  = 0x0011fe30, 16 ~~> Word[0x0011fe78]
       0     6695        M 0x8000163c sw      s9, 68(sp)             #; sp  = 0x0011fe30, 9 ~~> Word[0x0011fe74]
       0     6704        M 0x80001640 sw      s10, 64(sp)            #; sp  = 0x0011fe30, 0x80002c4f ~~> Word[0x0011fe70]
       0     6707        M 0x80001644 fsd     fs0, 56(sp)            #; 2850.0 ~~> Doub[0x0011fe68]
       0     6708        M 0x80001648 fsd     fs1, 48(sp)            #; 0.0 ~~> Doub[0x0011fe60]
       0     6709        M 0x8000164c fsd     fs2, 40(sp)            #; 0.0 ~~> Doub[0x0011fe58]
       0     6716        M 0x80001650 auipc   s1, 0x2                #; (wrb) s1  <-- 0x80003650
       0     6717        M 0x80001654 addi    s1, s1, -1896          #; s1  = 0x80003650, (wrb) s1  <-- 0x80002ee8
       0     6720        M 0x80001658 fld     ft0, 0(s1)             #; ft0  <~~ Doub[0x80002ee8]
       0     6728        M 0x80001660 mv      s5, a6                 #; a6  = 0, (wrb) s5  <-- 0
       0     6729        M 0x80001664 mv      s2, a5                 #; a5  = 0, (wrb) s2  <-- 0
                         M                                           #; (f:lsu) ft0  <-- -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     6730        M 0x80001668 mv      s3, a3                 #; a3  = -1, (wrb) s3  <-- -1
                         M 0x8000165c fle.d   s1, ft0, fa0           #; ft0  = -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000, fa0  = 0.0000000
       0     6731        M 0x8000166c mv      s4, a2                 #; a2  = 9, (wrb) s4  <-- 9
       0     6740        M 0x80001670 mv      s6, a1                 #; a1  = 0x0011ff17, (wrb) s6  <-- 0x0011ff17
       0     6741        M 0x80001674 mv      s7, a0                 #; a0  = 0x80001560, (wrb) s7  <-- 0x80001560
       0     6742        M 0x80001678 bnez    s1, pc + 240           #; s1  = 1, taken, goto 0x80001768
       0     6764        M 0x8000176c auipc   a0, 0x1                #; (wrb) a0  <-- 0x8000276c
       0     6765        M 0x80001768 fsgnj.d fs0, fa0, fa0          #; fa0  = 0.0000000, fa0  = 0.0000000
       0     6766        M                                           #; (f:fpu) fs0  <-- 0.0000000
       0     6775        M 0x80001770 addi    a0, a0, 1924           #; a0  = 0x8000276c, (wrb) a0  <-- 0x80002ef0
       0     6778        M 0x80001774 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002ef0]
       0     6787        M                                           #; (f:lsu) ft0  <-- 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     6788        M 0x80001778 fle.d   a0, fa0, ft0           #; fa0  = 0.0000000, ft0  = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     6790        M                                           #; (acc) t3  <-- 0x00051e63
       0     6791        M 0x8000177c bnez    a0, pc + 28            #; a0  = 1, taken, goto 0x80001798
       0     6803        M 0x80001798 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002798
       0     6804        M 0x8000179c addi    a0, a0, 1888           #; a0  = 0x80002798, (wrb) a0  <-- 0x80002ef8
       0     6816        M 0x800017a4 auipc   a0, 0x1                #; (wrb) a0  <-- 0x800027a4
       0     6817        M 0x800017a8 addi    a0, a0, 1884           #; a0  = 0x800027a4, (wrb) a0  <-- 0x80002f00
                         M 0x800017a0 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002ef8]
       0     6820        M 0x800017ac fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80002f00]
       0     6826        M                                           #; (f:lsu) ft0  <-- 1000000000.0000000
       0     6828        M 0x800017b0 fle.d   a0, fs0, ft0           #; fs0  = 0.0000000, ft0  = 1000000000.0000000
       0     6829        M                                           #; (f:lsu) ft1  <-- -1000000000.0000000
       0     6830        M                                           #; (acc) a0  <-- 0x00b57533
                         M 0x800017b4 fle.d   a1, ft1, fs0           #; ft1  = -1000000000.0000000, fs0  = 0.0000000
       0     6832        M                                           #; (acc) a0  <-- 0x00b57533
       0     6833        M 0x800017b8 and     a0, a0, a1             #; a0  = 1, a1  = 1, (wrb) a0  <-- 1
       0     6834        M 0x800017bc bnez    a0, pc + 252           #; a0  = 1, taken, goto 0x800018b8
       0     6850        M 0x800018b8 andi    a0, s5, 1024           #; s5  = 0, (wrb) a0  <-- 0
       0     6851        M 0x800018bc li      s8, 6                  #; (wrb) s8  <-- 6
       0     6862        M 0x800018c0 beqz    a0, pc + 8             #; a0  = 0, taken, goto 0x800018c8
       0     6863        M 0x800018c8 li      a0, 10                 #; (wrb) a0  <-- 10
       0     6866        M 0x800018cc fsgnjx.d fs2, fs0, fs0         #; fs0  = 0.0000000, fs0  = 0.0000000
       0     6867        M                                           #; (f:fpu) fs2  <-- 0.0000000
       0     6874        M 0x800018d0 bltu    s8, a0, pc + 56        #; s8  = 6, a0  = 10, taken, goto 0x80001908
       0     6897        M 0x80001908 li      s0, 0                  #; (wrb) s0  <-- 0
       0     6898        M 0x8000190c slli    a0, s8, 3              #; s8  = 6, (wrb) a0  <-- 48
       0     6909        M 0x80001910 auipc   a1, 0x1                #; (wrb) a1  <-- 0x80002910
       0     6910        M 0x80001914 addi    a1, a1, 1296           #; a1  = 0x80002910, (wrb) a1  <-- 0x80002e20
       0     6911        M 0x80001918 add     a0, a0, a1             #; a0  = 48, a1  = 0x80002e20, (wrb) a0  <-- 0x80002e50
       0     6914        M 0x8000191c fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80002e50]
       0     6922        M 0x80001920 fcvt.w.d s1, fs2               #; fs2  = 0.0000000
       0     6923        M                                           #; (f:lsu) ft1  <-- 1000000.0000000
       0     6926        M 0x80001924 fcvt.d.w ft0, s1               #; ac1  = 0
       0     6927        M                                           #; (f:fpu) ft0  <-- 0.0
       0     6928        M 0x80001928 fsub.d  ft0, fs2, ft0          #; fs2  = 0.0000000, ft0  = 0.0
       0     6931        M                                           #; (f:fpu) ft0  <-- 0.0000000
       0     6932        M 0x8000192c fmul.d  ft2, ft1, ft0          #; ft1  = 1000000.0000000, ft0  = 0.0000000
       0     6933        M 0x80001930 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002930
       0     6934        M 0x80001934 addi    a0, a0, 1496           #; a0  = 0x80002930, (wrb) a0  <-- 0x80002f08
       0     6935        M                                           #; (f:fpu) ft2  <-- 0.0000000
       0     6937        M 0x80001938 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002f08]
       0     6938        M 0x8000193c fcvt.wu.d a0, ft2              #; ft2  = 0.0000000
       0     6946        M 0x80001940 fcvt.d.wu ft3, a0              #; ac1  = 0, (f:lsu) ft0  <-- 0.5
       0     6947        M                                           #; (f:fpu) ft3  <-- 0.0
       0     6948        M 0x80001944 fsub.d  ft2, ft2, ft3          #; ft2  = 0.0000000, ft3  = 0.0
       0     6951        M                                           #; (f:fpu) ft2  <-- 0.0000000
       0     6952        M 0x80001948 fle.d   a1, ft2, ft0           #; ft2  = 0.0000000, ft0  = 0.5
       0     6955        M 0x8000194c bnez    a1, pc + 32            #; a1  = 1, taken, goto 0x8000196c
       0     6969        M 0x8000196c flt.d   a1, ft2, ft0           #; ft2  = 0.0000000, ft0  = 0.5
       0     6980        M 0x80001970 bnez    a1, pc + 20            #; a1  = 1, taken, goto 0x80001984
       0     6993        M 0x80001988 beqz    s8, pc + 216           #; s8  = 6, not taken
                         M 0x80001984 fcvt.d.w fs1, zero             #; ac1  = 0
       0     6994        M 0x8000198c li      a2, 0                  #; (wrb) a2  <-- 0
                         M                                           #; (f:fpu) fs1  <-- 0.0
       0     7004        M 0x80001990 addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
       0     7005        M 0x80001994 add     t1, a1, s0             #; a1  = 0x0011fe38, s0  = 0, (wrb) t1  <-- 0x0011fe38
       0     7006        M 0x80001998 li      t0, 32                 #; (wrb) t0  <-- 32
       0     7007        M 0x8000199c sub     a4, t0, s0             #; t0  = 32, s0  = 0, (wrb) a4  <-- 32
       0     7016        M 0x800019a0 lui     a1, 0xccccd            #; (wrb) a1  <-- 0xccccd000
       0     7017        M 0x800019a4 addi    t2, a1, -819           #; a1  = 0xccccd000, (wrb) t2  <-- 0xcccccccd
       0     7018        M 0x800019a8 li      a6, 10                 #; (wrb) a6  <-- 10
       0     7019        M 0x800019ac li      a7, 9                  #; (wrb) a7  <-- 9
       0     7028        M 0x800019b0 beq     a4, a2, pc + 200       #; a4  = 32, a2  = 0, not taken
       0     7029        M 0x800019b4 mv      a1, a0                 #; a0  = 0, (wrb) a1  <-- 0
       0     7030        M 0x800019b8 mulhu   a0, a0, t2             #; a0  = 0, t2  = 0xcccccccd
       0     7033        M                                           #; (acc) a0  <-- 0x00355513
       0     7034        M 0x800019bc srli    a0, a0, 3              #; a0  = 0, (wrb) a0  <-- 0
       0     7040        M 0x800019c0 mul     a3, a0, a6             #; a0  = 0, a6  = 10
       0     7043        M                                           #; (acc) a3  <-- 0x40d586b3
       0     7044        M 0x800019c4 sub     a3, a1, a3             #; a1  = 0, a3  = 0, (wrb) a3  <-- 0
       0     7045        M 0x800019c8 ori     a3, a3, 48             #; a3  = 0, (wrb) a3  <-- 48
       0     7046        M 0x800019cc add     a5, t1, a2             #; t1  = 0x0011fe38, a2  = 0, (wrb) a5  <-- 0x0011fe38
       0     7052        M 0x800019d0 sb      a3, 0(a5)              #; a5  = 0x0011fe38, 48 ~~> Byte[0x0011fe38]
       0     7053        M 0x800019d4 addi    a2, a2, 1              #; a2  = 0, (wrb) a2  <-- 1
       0     7054        M 0x800019d8 bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 0, not taken
       0     7055        M 0x800019dc add     a0, s0, a2             #; s0  = 0, a2  = 1, (wrb) a0  <-- 1
       0     7067        M 0x800019e0 addi    a1, a0, -1             #; a0  = 1, (wrb) a1  <-- 0
       0     7068        M 0x800019e4 li      a3, 30                 #; (wrb) a3  <-- 30
       0     7069        M 0x800019e8 sltu    a3, a3, a1             #; a3  = 30, a1  = 0, (wrb) a3  <-- 0
       0     7070        M 0x800019ec xor     a4, s8, a2             #; s8  = 6, a2  = 1, (wrb) a4  <-- 7
       0     7079        M 0x800019f0 seqz    a4, a4                 #; a4  = 7, (wrb) a4  <-- 0
       0     7080        M 0x800019f4 or      a3, a3, a4             #; a3  = 0, a4  = 0, (wrb) a3  <-- 0
       0     7081        M 0x800019f8 bnez    a3, pc + 136           #; a3  = 0, not taken
       0     7082        M 0x800019fc addi    a0, sp, 8              #; sp  = 0x0011fe30, (wrb) a0  <-- 0x0011fe38
       0     7091        M 0x80001a00 add     a0, a0, s0             #; a0  = 0x0011fe38, s0  = 0, (wrb) a0  <-- 0x0011fe38
       0     7092        M 0x80001a04 not     a1, a2                 #; a2  = 1, (wrb) a1  <-- -2
       0     7093        M 0x80001a08 add     s8, a1, s8             #; a1  = -2, s8  = 6, (wrb) s8  <-- 4
       0     7094        M 0x80001a0c add     s0, s0, a2             #; s0  = 0, a2  = 1, (wrb) s0  <-- 1
       0     7103        M 0x80001a10 li      a1, 31                 #; (wrb) a1  <-- 31
       0     7104        M 0x80001a14 sub     a3, a1, s0             #; a1  = 31, s0  = 1, (wrb) a3  <-- 30
       0     7105        M 0x80001a18 add     a0, a0, a2             #; a0  = 0x0011fe38, a2  = 1, (wrb) a0  <-- 0x0011fe39
       0     7106        M 0x80001a1c mv      a1, s8                 #; s8  = 4, (wrb) a1  <-- 4
       0     7115        M 0x80001a20 bltu    s8, a3, pc + 8         #; s8  = 4, a3  = 30, taken, goto 0x80001a28
       0     7116        M 0x80001a28 addi    a2, a1, 1              #; a1  = 4, (wrb) a2  <-- 5
       0     7117        M 0x80001a2c li      a1, 48                 #; (wrb) a1  <-- 48
       0     7127        M 0x80001a30 auipc   ra, 0xfffff            #; (wrb) ra  <-- 0x80000a30
       0     7128        M 0x80001a34 jalr    ra, ra, -1240          #; ra  = 0x80000a30, (wrb) ra  <-- 0x80001a38, goto 0x80000558
       0     7150        M 0x80000558 li      t1, 15                 #; (wrb) t1  <-- 15
       0     7151        M 0x8000055c mv      a4, a0                 #; a0  = 0x0011fe39, (wrb) a4  <-- 0x0011fe39
       0     7162        M 0x80000560 bgeu    t1, a2, pc + 60        #; t1  = 15, a2  = 5, taken, goto 0x8000059c
       0     7185        M 0x8000059c sub     a3, t1, a2             #; t1  = 15, a2  = 5, (wrb) a3  <-- 10
       0     7197        M 0x800005a0 slli    a3, a3, 2              #; a3  = 10, (wrb) a3  <-- 40
       0     7198        M 0x800005a4 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800005a4
       0     7199        M 0x800005a8 add     a3, a3, t0             #; a3  = 40, t0  = 0x800005a4, (wrb) a3  <-- 0x800005cc
       0     7200        M 0x800005ac jalr    zero, a3, 12           #; a3  = 0x800005cc, goto 0x800005d8
       0     7220        M 0x800005d8 sb      a1, 4(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3d]
       0     7221        M 0x800005dc sb      a1, 3(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3c]
       0     7232        M 0x800005e0 sb      a1, 2(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3b]
       0     7233        M 0x800005e4 sb      a1, 1(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3a]
       0     7234        M 0x800005e8 sb      a1, 0(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe39]
       0     7235        M 0x800005ec ret                            #; ra  = 0x80001a38, goto 0x80001a38
       0     7246        M 0x80001a38 li      a0, 0                  #; (wrb) a0  <-- 0
       0     7247        M 0x80001a3c add     a1, s0, a0             #; s0  = 1, a0  = 0, (wrb) a1  <-- 1
       0     7249        M 0x80001a40 sltiu   a1, a1, 31             #; a1  = 1, (wrb) a1  <-- 1
       0     7250        M 0x80001a44 xor     a2, s8, a0             #; s8  = 4, a0  = 0, (wrb) a2  <-- 4
       0     7251        M 0x80001a48 snez    a2, a2                 #; a2  = 4, (wrb) a2  <-- 1
       0     7252        M 0x80001a4c and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     7261        M 0x80001a50 addi    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0     7262        M 0x80001a54 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001a3c
       0     7263        M 0x80001a3c add     a1, s0, a0             #; s0  = 1, a0  = 1, (wrb) a1  <-- 2
       0     7264        M 0x80001a40 sltiu   a1, a1, 31             #; a1  = 2, (wrb) a1  <-- 1
       0     7265        M 0x80001a44 xor     a2, s8, a0             #; s8  = 4, a0  = 1, (wrb) a2  <-- 5
       0     7266        M 0x80001a48 snez    a2, a2                 #; a2  = 5, (wrb) a2  <-- 1
       0     7267        M 0x80001a4c and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     7268        M 0x80001a50 addi    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 2
       0     7269        M 0x80001a54 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001a3c
       0     7270        M 0x80001a3c add     a1, s0, a0             #; s0  = 1, a0  = 2, (wrb) a1  <-- 3
       0     7271        M 0x80001a40 sltiu   a1, a1, 31             #; a1  = 3, (wrb) a1  <-- 1
       0     7272        M 0x80001a44 xor     a2, s8, a0             #; s8  = 4, a0  = 2, (wrb) a2  <-- 6
       0     7273        M 0x80001a48 snez    a2, a2                 #; a2  = 6, (wrb) a2  <-- 1
       0     7274        M 0x80001a4c and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     7275        M 0x80001a50 addi    a0, a0, 1              #; a0  = 2, (wrb) a0  <-- 3
       0     7276        M 0x80001a54 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001a3c
       0     7277        M 0x80001a3c add     a1, s0, a0             #; s0  = 1, a0  = 3, (wrb) a1  <-- 4
       0     7278        M 0x80001a40 sltiu   a1, a1, 31             #; a1  = 4, (wrb) a1  <-- 1
       0     7279        M 0x80001a44 xor     a2, s8, a0             #; s8  = 4, a0  = 3, (wrb) a2  <-- 7
       0     7280        M 0x80001a48 snez    a2, a2                 #; a2  = 7, (wrb) a2  <-- 1
       0     7281        M 0x80001a4c and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     7282        M 0x80001a50 addi    a0, a0, 1              #; a0  = 3, (wrb) a0  <-- 4
       0     7283        M 0x80001a54 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001a3c
       0     7284        M 0x80001a3c add     a1, s0, a0             #; s0  = 1, a0  = 4, (wrb) a1  <-- 5
       0     7285        M 0x80001a40 sltiu   a1, a1, 31             #; a1  = 5, (wrb) a1  <-- 1
       0     7286        M 0x80001a44 xor     a2, s8, a0             #; s8  = 4, a0  = 4, (wrb) a2  <-- 0
       0     7287        M 0x80001a48 snez    a2, a2                 #; a2  = 0, (wrb) a2  <-- 0
       0     7288        M 0x80001a4c and     a2, a1, a2             #; a1  = 1, a2  = 0, (wrb) a2  <-- 0
       0     7289        M 0x80001a50 addi    a0, a0, 1              #; a0  = 4, (wrb) a0  <-- 5
       0     7290        M 0x80001a54 bnez    a2, pc - 24            #; a2  = 0, not taken
       0     7291        M 0x80001a58 add     a0, s0, a0             #; s0  = 1, a0  = 5, (wrb) a0  <-- 6
       0     7292        M 0x80001a5c j       pc + 0x28              #; goto 0x80001a84
       0     7303        M 0x80001a84 beqz    a1, pc + 28            #; a1  = 1, not taken
       0     7304        M 0x80001a88 addi    s0, a0, 1              #; a0  = 6, (wrb) s0  <-- 7
       0     7305        M 0x80001a8c addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
       0     7315        M 0x80001a90 add     a0, a1, a0             #; a1  = 0x0011fe38, a0  = 6, (wrb) a0  <-- 0x0011fe3e
       0     7316        M 0x80001a94 li      a1, 46                 #; (wrb) a1  <-- 46
       0     7317        M 0x80001a98 sb      a1, 0(a0)              #; a0  = 0x0011fe3e, 46 ~~> Byte[0x0011fe3e]
       0     7318        M 0x80001a9c j       pc + 0x8               #; goto 0x80001aa4
       0     7327        M 0x80001aa4 li      a0, 32                 #; (wrb) a0  <-- 32
       0     7328        M 0x80001aa8 mv      t0, s0                 #; s0  = 7, (wrb) t0  <-- 7
       0     7329        M 0x80001aac bltu    a0, s0, pc + 8         #; a0  = 32, s0  = 7, not taken
       0     7339        M 0x80001ab0 li      t0, 32                 #; (wrb) t0  <-- 32
       0     7341        M 0x80001ab8 lui     a0, 0x66666            #; (wrb) a0  <-- 0x66666000
                         M 0x80001ab4 flt.d   s9, fs0, fs1           #; fs0  = 0.0000000, fs1  = 0.0
       0     7342        M 0x80001abc addi    a1, a0, 1639           #; a0  = 0x66666000, (wrb) a1  <-- 0x66666667
       0     7351        M 0x80001ac0 li      a6, 10                 #; (wrb) a6  <-- 10
       0     7352        M 0x80001ac4 addi    a3, sp, 8              #; sp  = 0x0011fe30, (wrb) a3  <-- 0x0011fe38
       0     7353        M 0x80001ac8 li      a4, 18                 #; (wrb) a4  <-- 18
       0     7354        M 0x80001acc beq     t0, s0, pc + 64        #; t0  = 32, s0  = 7, not taken
       0     7363        M 0x80001ad0 mulh    a0, s1, a1             #; s1  = 0, a1  = 0x66666667
       0     7366        M                                           #; (acc) a5  <-- 0x01f55793
       0     7367        M 0x80001ad4 srli    a5, a0, 31             #; a0  = 0, (wrb) a5  <-- 0
       0     7368        M 0x80001ad8 srai    a0, a0, 2              #; a0  = 0, (wrb) a0  <-- 0
       0     7369        M 0x80001adc add     a0, a0, a5             #; a0  = 0, a5  = 0, (wrb) a0  <-- 0
       0     7375        M 0x80001ae0 mul     a5, a0, a6             #; a0  = 0, a6  = 10
       0     7378        M                                           #; (acc) a5  <-- 0x40f487b3
       0     7379        M 0x80001ae4 sub     a5, s1, a5             #; s1  = 0, a5  = 0, (wrb) a5  <-- 0
       0     7380        M 0x80001ae8 addi    a5, a5, 48             #; a5  = 0, (wrb) a5  <-- 48
       0     7381        M 0x80001aec addi    s8, s0, 1              #; s0  = 7, (wrb) s8  <-- 8
       0     7387        M 0x80001af0 add     s0, a3, s0             #; a3  = 0x0011fe38, s0  = 7, (wrb) s0  <-- 0x0011fe3f
       0     7388        M 0x80001af4 addi    a2, s1, 9              #; s1  = 0, (wrb) a2  <-- 9
       0     7389        M 0x80001af8 sb      a5, 0(s0)              #; s0  = 0x0011fe3f, 48 ~~> Byte[0x0011fe3f]
       0     7390        M 0x80001afc mv      s0, s8                 #; s8  = 8, (wrb) s0  <-- 8
       0     7399        M 0x80001b00 mv      s1, a0                 #; a0  = 0, (wrb) s1  <-- 0
       0     7400        M 0x80001b04 bltu    a4, a2, pc - 56        #; a4  = 18, a2  = 9, not taken
       0     7401        M 0x80001b08 j       pc + 0x8               #; goto 0x80001b10
       0     7413        M 0x80001b10 andi    s1, s5, 3              #; s5  = 0, (wrb) s1  <-- 0
       0     7414        M 0x80001b14 li      a0, 1                  #; (wrb) a0  <-- 1
       0     7415        M 0x80001b18 bne     s1, a0, pc + 108       #; s1  = 0, a0  = 1, taken, goto 0x80001b84
       0     7436        M 0x80001b84 li      a0, 31                 #; (wrb) a0  <-- 31
       0     7437        M 0x80001b88 bltu    a0, s8, pc + 84        #; a0  = 31, s8  = 8, not taken
       0     7438        M 0x80001b8c beqz    s9, pc + 24            #; s9  = 0, taken, goto 0x80001ba4
       0     7459        M 0x80001ba4 andi    a0, s5, 4              #; s5  = 0, (wrb) a0  <-- 0
       0     7460        M 0x80001ba8 bnez    a0, pc + 32            #; a0  = 0, not taken
       0     7461        M 0x80001bac andi    a0, s5, 8              #; s5  = 0, (wrb) a0  <-- 0
       0     7471        M 0x80001bb0 beqz    a0, pc + 44            #; a0  = 0, taken, goto 0x80001bdc
       0     7494        M 0x80001bdc snez    a0, s1                 #; s1  = 0, (wrb) a0  <-- 0
       0     7506        M 0x80001be0 sltu    a1, s8, s2             #; s8  = 8, s2  = 0, (wrb) a1  <-- 0
       0     7507        M 0x80001be4 xori    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
       0     7508        M 0x80001be8 or      a0, a0, a1             #; a0  = 0, a1  = 1, (wrb) a0  <-- 1
       0     7509        M 0x80001bec andi    s5, s5, 2              #; s5  = 0, (wrb) s5  <-- 0
       0     7518        M 0x80001bf0 mv      s0, s4                 #; s4  = 9, (wrb) s0  <-- 9
       0     7519        M 0x80001bf4 bnez    a0, pc + 44            #; a0  = 1, taken, goto 0x80001c20
       0     7541        M 0x80001c20 srli    s5, s5, 1              #; s5  = 0, (wrb) s5  <-- 0
       0     7542        M 0x80001c24 beqz    s8, pc + 56            #; s8  = 8, not taken
       0     7543        M 0x80001c28 addi    s9, sp, 7              #; sp  = 0x0011fe30, (wrb) s9  <-- 0x0011fe37
       0     7544        M 0x80001c2c add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 8, (wrb) a0  <-- 0x0011fe3f
       0     7553        M 0x80001c30 lbu     a0, 0(a0)              #; a0  = 0x0011fe3f, a0  <~~ Byte[0x0011fe3f]
       0     7554        M 0x80001c34 addi    s10, s8, -1            #; s8  = 8, (wrb) s10 <-- 7
       0     7555        M 0x80001c38 addi    s1, s0, 1              #; s0  = 9, (wrb) s1  <-- 10
       0     7556        M 0x80001c3c mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     7557        M                                           #; (lsu) a0  <-- 48
       0     7565        M 0x80001c40 mv      a2, s0                 #; s0  = 9, (wrb) a2  <-- 9
       0     7566        M 0x80001c44 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     7567        M 0x80001c48 jalr    s7                     #; s7  = 0x80001560, (wrb) ra  <-- 0x80001c4c, goto 0x80001560
       0     7588        M 0x80001560 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     7589        M 0x80001564 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     7590        M 0x80001568 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     7591        M 0x8000156c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     7600        M 0x80001570 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003570
       0     7601        M 0x80001574 addi    a3, a3, -1500          #; a3  = 0x80003570, (wrb) a3  <-- 0x80002f94
       0     7602        M 0x80001578 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
       0     7603        M 0x8000157c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     7614        M                                           #; (lsu) a4  <-- 9
       0     7615        M 0x80001580 addi    a5, a4, 1              #; a4  = 9, (wrb) a5  <-- 10
       0     7616        M 0x80001584 sw      a5, 0(a1)              #; a1  = 0x80002f94, 10 ~~> Word[0x80002f94]
       0     7617        M 0x80001588 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 9, (wrb) a4  <-- 0x80002f9d
       0     7618        M 0x8000158c sb      a0, 72(a4)             #; a4  = 0x80002f9d, 48 ~~> Byte[0x80002fe5]
       0     7619        M 0x80001590 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     7640        M                                           #; (lsu) a4  <-- 10
       0     7641        M 0x80001594 addi    a4, a4, -1020          #; a4  = 10, (wrb) a4  <-- -1010
       0     7642        M 0x80001598 snez    a4, a4                 #; a4  = -1010, (wrb) a4  <-- 1
       0     7643        M 0x8000159c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     7644        M 0x800015a0 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     7645        M 0x800015a4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     7646        M 0x800015a8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001608
       0     7649        M 0x80001608 ret                            #; ra  = 0x80001c4c, goto 0x80001c4c
       0     7654        M 0x80001c4c mv      s0, s1                 #; s1  = 10, (wrb) s0  <-- 10
       0     7657        M 0x80001c50 mv      s8, s10                #; s10 = 7, (wrb) s8  <-- 7
       0     7658        M 0x80001c54 bnez    s10, pc - 40           #; s10 = 7, taken, goto 0x80001c2c
       0     7660        M 0x80001c2c add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 7, (wrb) a0  <-- 0x0011fe3e
       0     7663        M 0x80001c30 lbu     a0, 0(a0)              #; a0  = 0x0011fe3e, a0  <~~ Byte[0x0011fe3e]
       0     7664        M 0x80001c34 addi    s10, s8, -1            #; s8  = 7, (wrb) s10 <-- 6
       0     7665        M 0x80001c38 addi    s1, s0, 1              #; s0  = 10, (wrb) s1  <-- 11
       0     7666        M 0x80001c3c mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     7667        M 0x80001c40 mv      a2, s0                 #; s0  = 10, (wrb) a2  <-- 10
       0     7668        M 0x80001c44 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     7669        M 0x80001c48 jalr    s7                     #; s7  = 0x80001560, (wrb) ra  <-- 0x80001c4c, goto 0x80001560
       0     7670        M                                           #; (lsu) a0  <-- 46
       0     7672        M 0x80001560 beqz    a0, pc + 168           #; a0  = 46, not taken
       0     7673        M 0x80001564 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     7674        M 0x80001568 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     7675        M 0x8000156c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     7676        M 0x80001570 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003570
       0     7677        M 0x80001574 addi    a3, a3, -1500          #; a3  = 0x80003570, (wrb) a3  <-- 0x80002f94
       0     7678        M                                           #; (acc) a1  <-- 0x00d605b3
       0     7679        M 0x80001578 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
       0     7680        M 0x8000157c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     7691        M                                           #; (lsu) a4  <-- 10
       0     7692        M 0x80001580 addi    a5, a4, 1              #; a4  = 10, (wrb) a5  <-- 11
       0     7693        M 0x80001584 sw      a5, 0(a1)              #; a1  = 0x80002f94, 11 ~~> Word[0x80002f94]
       0     7694        M 0x80001588 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 10, (wrb) a4  <-- 0x80002f9e
       0     7695        M 0x8000158c sb      a0, 72(a4)             #; a4  = 0x80002f9e, 46 ~~> Byte[0x80002fe6]
       0     7696        M 0x80001590 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     7717        M                                           #; (lsu) a4  <-- 11
       0     7718        M 0x80001594 addi    a4, a4, -1020          #; a4  = 11, (wrb) a4  <-- -1009
       0     7719        M 0x80001598 snez    a4, a4                 #; a4  = -1009, (wrb) a4  <-- 1
       0     7720        M 0x8000159c addi    a0, a0, -10            #; a0  = 46, (wrb) a0  <-- 36
       0     7721        M 0x800015a0 snez    a0, a0                 #; a0  = 36, (wrb) a0  <-- 1
       0     7722        M 0x800015a4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     7723        M 0x800015a8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001608
       0     7726        M 0x80001608 ret                            #; ra  = 0x80001c4c, goto 0x80001c4c
       0     7731        M 0x80001c4c mv      s0, s1                 #; s1  = 11, (wrb) s0  <-- 11
       0     7734        M 0x80001c50 mv      s8, s10                #; s10 = 6, (wrb) s8  <-- 6
       0     7735        M 0x80001c54 bnez    s10, pc - 40           #; s10 = 6, taken, goto 0x80001c2c
       0     7737        M 0x80001c2c add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 6, (wrb) a0  <-- 0x0011fe3d
       0     7740        M 0x80001c30 lbu     a0, 0(a0)              #; a0  = 0x0011fe3d, a0  <~~ Byte[0x0011fe3d]
       0     7741        M 0x80001c34 addi    s10, s8, -1            #; s8  = 6, (wrb) s10 <-- 5
       0     7742        M 0x80001c38 addi    s1, s0, 1              #; s0  = 11, (wrb) s1  <-- 12
       0     7743        M 0x80001c3c mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     7744        M 0x80001c40 mv      a2, s0                 #; s0  = 11, (wrb) a2  <-- 11
       0     7745        M 0x80001c44 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     7746        M 0x80001c48 jalr    s7                     #; s7  = 0x80001560, (wrb) ra  <-- 0x80001c4c, goto 0x80001560
       0     7747        M                                           #; (lsu) a0  <-- 48
       0     7749        M 0x80001560 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     7750        M 0x80001564 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     7751        M 0x80001568 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     7752        M 0x8000156c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     7753        M 0x80001570 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003570
       0     7754        M 0x80001574 addi    a3, a3, -1500          #; a3  = 0x80003570, (wrb) a3  <-- 0x80002f94
       0     7755        M                                           #; (acc) a1  <-- 0x00d605b3
       0     7756        M 0x80001578 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
       0     7757        M 0x8000157c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     7768        M                                           #; (lsu) a4  <-- 11
       0     7769        M 0x80001580 addi    a5, a4, 1              #; a4  = 11, (wrb) a5  <-- 12
       0     7770        M 0x80001584 sw      a5, 0(a1)              #; a1  = 0x80002f94, 12 ~~> Word[0x80002f94]
       0     7771        M 0x80001588 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 11, (wrb) a4  <-- 0x80002f9f
       0     7772        M 0x8000158c sb      a0, 72(a4)             #; a4  = 0x80002f9f, 48 ~~> Byte[0x80002fe7]
       0     7773        M 0x80001590 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     7794        M                                           #; (lsu) a4  <-- 12
       0     7795        M 0x80001594 addi    a4, a4, -1020          #; a4  = 12, (wrb) a4  <-- -1008
       0     7796        M 0x80001598 snez    a4, a4                 #; a4  = -1008, (wrb) a4  <-- 1
       0     7797        M 0x8000159c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     7798        M 0x800015a0 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     7799        M 0x800015a4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     7800        M 0x800015a8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001608
       0     7803        M 0x80001608 ret                            #; ra  = 0x80001c4c, goto 0x80001c4c
       0     7808        M 0x80001c4c mv      s0, s1                 #; s1  = 12, (wrb) s0  <-- 12
       0     7811        M 0x80001c50 mv      s8, s10                #; s10 = 5, (wrb) s8  <-- 5
       0     7812        M 0x80001c54 bnez    s10, pc - 40           #; s10 = 5, taken, goto 0x80001c2c
       0     7814        M 0x80001c2c add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 5, (wrb) a0  <-- 0x0011fe3c
       0     7817        M 0x80001c30 lbu     a0, 0(a0)              #; a0  = 0x0011fe3c, a0  <~~ Byte[0x0011fe3c]
       0     7818        M 0x80001c34 addi    s10, s8, -1            #; s8  = 5, (wrb) s10 <-- 4
       0     7819        M 0x80001c38 addi    s1, s0, 1              #; s0  = 12, (wrb) s1  <-- 13
       0     7820        M 0x80001c3c mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     7821        M 0x80001c40 mv      a2, s0                 #; s0  = 12, (wrb) a2  <-- 12
       0     7822        M 0x80001c44 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     7823        M 0x80001c48 jalr    s7                     #; s7  = 0x80001560, (wrb) ra  <-- 0x80001c4c, goto 0x80001560
       0     7824        M                                           #; (lsu) a0  <-- 48
       0     7826        M 0x80001560 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     7827        M 0x80001564 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     7828        M 0x80001568 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     7829        M 0x8000156c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     7830        M 0x80001570 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003570
       0     7831        M 0x80001574 addi    a3, a3, -1500          #; a3  = 0x80003570, (wrb) a3  <-- 0x80002f94
       0     7832        M                                           #; (acc) a1  <-- 0x00d605b3
       0     7833        M 0x80001578 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
       0     7834        M 0x8000157c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     7845        M                                           #; (lsu) a4  <-- 12
       0     7846        M 0x80001580 addi    a5, a4, 1              #; a4  = 12, (wrb) a5  <-- 13
       0     7847        M 0x80001584 sw      a5, 0(a1)              #; a1  = 0x80002f94, 13 ~~> Word[0x80002f94]
       0     7848        M 0x80001588 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 12, (wrb) a4  <-- 0x80002fa0
       0     7849        M 0x8000158c sb      a0, 72(a4)             #; a4  = 0x80002fa0, 48 ~~> Byte[0x80002fe8]
       0     7850        M 0x80001590 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     7871        M                                           #; (lsu) a4  <-- 13
       0     7872        M 0x80001594 addi    a4, a4, -1020          #; a4  = 13, (wrb) a4  <-- -1007
       0     7873        M 0x80001598 snez    a4, a4                 #; a4  = -1007, (wrb) a4  <-- 1
       0     7874        M 0x8000159c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     7875        M 0x800015a0 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     7876        M 0x800015a4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     7877        M 0x800015a8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001608
       0     7880        M 0x80001608 ret                            #; ra  = 0x80001c4c, goto 0x80001c4c
       0     7885        M 0x80001c4c mv      s0, s1                 #; s1  = 13, (wrb) s0  <-- 13
       0     7888        M 0x80001c50 mv      s8, s10                #; s10 = 4, (wrb) s8  <-- 4
       0     7889        M 0x80001c54 bnez    s10, pc - 40           #; s10 = 4, taken, goto 0x80001c2c
       0     7891        M 0x80001c2c add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 4, (wrb) a0  <-- 0x0011fe3b
       0     7894        M 0x80001c30 lbu     a0, 0(a0)              #; a0  = 0x0011fe3b, a0  <~~ Byte[0x0011fe3b]
       0     7895        M 0x80001c34 addi    s10, s8, -1            #; s8  = 4, (wrb) s10 <-- 3
       0     7896        M 0x80001c38 addi    s1, s0, 1              #; s0  = 13, (wrb) s1  <-- 14
       0     7897        M 0x80001c3c mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     7898        M 0x80001c40 mv      a2, s0                 #; s0  = 13, (wrb) a2  <-- 13
       0     7899        M 0x80001c44 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     7900        M 0x80001c48 jalr    s7                     #; s7  = 0x80001560, (wrb) ra  <-- 0x80001c4c, goto 0x80001560
       0     7901        M                                           #; (lsu) a0  <-- 48
       0     7903        M 0x80001560 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     7904        M 0x80001564 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     7905        M 0x80001568 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     7906        M 0x8000156c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     7907        M 0x80001570 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003570
       0     7908        M 0x80001574 addi    a3, a3, -1500          #; a3  = 0x80003570, (wrb) a3  <-- 0x80002f94
       0     7909        M                                           #; (acc) a1  <-- 0x00d605b3
       0     7910        M 0x80001578 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
       0     7911        M 0x8000157c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     7922        M                                           #; (lsu) a4  <-- 13
       0     7923        M 0x80001580 addi    a5, a4, 1              #; a4  = 13, (wrb) a5  <-- 14
       0     7924        M 0x80001584 sw      a5, 0(a1)              #; a1  = 0x80002f94, 14 ~~> Word[0x80002f94]
       0     7925        M 0x80001588 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 13, (wrb) a4  <-- 0x80002fa1
       0     7926        M 0x8000158c sb      a0, 72(a4)             #; a4  = 0x80002fa1, 48 ~~> Byte[0x80002fe9]
       0     7927        M 0x80001590 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     7948        M                                           #; (lsu) a4  <-- 14
       0     7949        M 0x80001594 addi    a4, a4, -1020          #; a4  = 14, (wrb) a4  <-- -1006
       0     7950        M 0x80001598 snez    a4, a4                 #; a4  = -1006, (wrb) a4  <-- 1
       0     7951        M 0x8000159c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     7952        M 0x800015a0 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     7953        M 0x800015a4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     7954        M 0x800015a8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001608
       0     7957        M 0x80001608 ret                            #; ra  = 0x80001c4c, goto 0x80001c4c
       0     7962        M 0x80001c4c mv      s0, s1                 #; s1  = 14, (wrb) s0  <-- 14
       0     7965        M 0x80001c50 mv      s8, s10                #; s10 = 3, (wrb) s8  <-- 3
       0     7966        M 0x80001c54 bnez    s10, pc - 40           #; s10 = 3, taken, goto 0x80001c2c
       0     7968        M 0x80001c2c add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 3, (wrb) a0  <-- 0x0011fe3a
       0     7971        M 0x80001c30 lbu     a0, 0(a0)              #; a0  = 0x0011fe3a, a0  <~~ Byte[0x0011fe3a]
       0     7972        M 0x80001c34 addi    s10, s8, -1            #; s8  = 3, (wrb) s10 <-- 2
       0     7973        M 0x80001c38 addi    s1, s0, 1              #; s0  = 14, (wrb) s1  <-- 15
       0     7974        M 0x80001c3c mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     7975        M 0x80001c40 mv      a2, s0                 #; s0  = 14, (wrb) a2  <-- 14
       0     7976        M 0x80001c44 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     7977        M 0x80001c48 jalr    s7                     #; s7  = 0x80001560, (wrb) ra  <-- 0x80001c4c, goto 0x80001560
       0     7978        M                                           #; (lsu) a0  <-- 48
       0     7980        M 0x80001560 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     7981        M 0x80001564 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     7982        M 0x80001568 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     7983        M 0x8000156c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     7984        M 0x80001570 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003570
       0     7985        M 0x80001574 addi    a3, a3, -1500          #; a3  = 0x80003570, (wrb) a3  <-- 0x80002f94
       0     7986        M                                           #; (acc) a1  <-- 0x00d605b3
       0     7987        M 0x80001578 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
       0     7988        M 0x8000157c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     7999        M                                           #; (lsu) a4  <-- 14
       0     8000        M 0x80001580 addi    a5, a4, 1              #; a4  = 14, (wrb) a5  <-- 15
       0     8001        M 0x80001584 sw      a5, 0(a1)              #; a1  = 0x80002f94, 15 ~~> Word[0x80002f94]
       0     8002        M 0x80001588 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 14, (wrb) a4  <-- 0x80002fa2
       0     8003        M 0x8000158c sb      a0, 72(a4)             #; a4  = 0x80002fa2, 48 ~~> Byte[0x80002fea]
       0     8004        M 0x80001590 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     8025        M                                           #; (lsu) a4  <-- 15
       0     8026        M 0x80001594 addi    a4, a4, -1020          #; a4  = 15, (wrb) a4  <-- -1005
       0     8027        M 0x80001598 snez    a4, a4                 #; a4  = -1005, (wrb) a4  <-- 1
       0     8028        M 0x8000159c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     8029        M 0x800015a0 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     8030        M 0x800015a4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     8031        M 0x800015a8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001608
       0     8034        M 0x80001608 ret                            #; ra  = 0x80001c4c, goto 0x80001c4c
       0     8039        M 0x80001c4c mv      s0, s1                 #; s1  = 15, (wrb) s0  <-- 15
       0     8042        M 0x80001c50 mv      s8, s10                #; s10 = 2, (wrb) s8  <-- 2
       0     8043        M 0x80001c54 bnez    s10, pc - 40           #; s10 = 2, taken, goto 0x80001c2c
       0     8045        M 0x80001c2c add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 2, (wrb) a0  <-- 0x0011fe39
       0     8048        M 0x80001c30 lbu     a0, 0(a0)              #; a0  = 0x0011fe39, a0  <~~ Byte[0x0011fe39]
       0     8049        M 0x80001c34 addi    s10, s8, -1            #; s8  = 2, (wrb) s10 <-- 1
       0     8050        M 0x80001c38 addi    s1, s0, 1              #; s0  = 15, (wrb) s1  <-- 16
       0     8051        M 0x80001c3c mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     8052        M 0x80001c40 mv      a2, s0                 #; s0  = 15, (wrb) a2  <-- 15
       0     8053        M 0x80001c44 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     8054        M 0x80001c48 jalr    s7                     #; s7  = 0x80001560, (wrb) ra  <-- 0x80001c4c, goto 0x80001560
       0     8055        M                                           #; (lsu) a0  <-- 48
       0     8057        M 0x80001560 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     8058        M 0x80001564 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     8059        M 0x80001568 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     8060        M 0x8000156c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     8061        M 0x80001570 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003570
       0     8062        M 0x80001574 addi    a3, a3, -1500          #; a3  = 0x80003570, (wrb) a3  <-- 0x80002f94
       0     8063        M                                           #; (acc) a1  <-- 0x00d605b3
       0     8064        M 0x80001578 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
       0     8065        M 0x8000157c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     8076        M                                           #; (lsu) a4  <-- 15
       0     8077        M 0x80001580 addi    a5, a4, 1              #; a4  = 15, (wrb) a5  <-- 16
       0     8078        M 0x80001584 sw      a5, 0(a1)              #; a1  = 0x80002f94, 16 ~~> Word[0x80002f94]
       0     8079        M 0x80001588 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 15, (wrb) a4  <-- 0x80002fa3
       0     8080        M 0x8000158c sb      a0, 72(a4)             #; a4  = 0x80002fa3, 48 ~~> Byte[0x80002feb]
       0     8081        M 0x80001590 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     8102        M                                           #; (lsu) a4  <-- 16
       0     8103        M 0x80001594 addi    a4, a4, -1020          #; a4  = 16, (wrb) a4  <-- -1004
       0     8104        M 0x80001598 snez    a4, a4                 #; a4  = -1004, (wrb) a4  <-- 1
       0     8105        M 0x8000159c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     8106        M 0x800015a0 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     8107        M 0x800015a4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     8108        M 0x800015a8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001608
       0     8111        M 0x80001608 ret                            #; ra  = 0x80001c4c, goto 0x80001c4c
       0     8116        M 0x80001c4c mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
       0     8119        M 0x80001c50 mv      s8, s10                #; s10 = 1, (wrb) s8  <-- 1
       0     8120        M 0x80001c54 bnez    s10, pc - 40           #; s10 = 1, taken, goto 0x80001c2c
       0     8122        M 0x80001c2c add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 1, (wrb) a0  <-- 0x0011fe38
       0     8125        M 0x80001c30 lbu     a0, 0(a0)              #; a0  = 0x0011fe38, a0  <~~ Byte[0x0011fe38]
       0     8126        M 0x80001c34 addi    s10, s8, -1            #; s8  = 1, (wrb) s10 <-- 0
       0     8127        M 0x80001c38 addi    s1, s0, 1              #; s0  = 16, (wrb) s1  <-- 17
       0     8128        M 0x80001c3c mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     8129        M 0x80001c40 mv      a2, s0                 #; s0  = 16, (wrb) a2  <-- 16
       0     8130        M 0x80001c44 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     8131        M 0x80001c48 jalr    s7                     #; s7  = 0x80001560, (wrb) ra  <-- 0x80001c4c, goto 0x80001560
       0     8132        M                                           #; (lsu) a0  <-- 48
       0     8134        M 0x80001560 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     8135        M 0x80001564 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     8136        M 0x80001568 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     8137        M 0x8000156c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     8138        M 0x80001570 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003570
       0     8139        M 0x80001574 addi    a3, a3, -1500          #; a3  = 0x80003570, (wrb) a3  <-- 0x80002f94
       0     8140        M                                           #; (acc) a1  <-- 0x00d605b3
       0     8141        M 0x80001578 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
       0     8142        M 0x8000157c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     8153        M                                           #; (lsu) a4  <-- 16
       0     8154        M 0x80001580 addi    a5, a4, 1              #; a4  = 16, (wrb) a5  <-- 17
       0     8155        M 0x80001584 sw      a5, 0(a1)              #; a1  = 0x80002f94, 17 ~~> Word[0x80002f94]
       0     8156        M 0x80001588 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 16, (wrb) a4  <-- 0x80002fa4
       0     8157        M 0x8000158c sb      a0, 72(a4)             #; a4  = 0x80002fa4, 48 ~~> Byte[0x80002fec]
       0     8158        M 0x80001590 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     8179        M                                           #; (lsu) a4  <-- 17
       0     8180        M 0x80001594 addi    a4, a4, -1020          #; a4  = 17, (wrb) a4  <-- -1003
       0     8181        M 0x80001598 snez    a4, a4                 #; a4  = -1003, (wrb) a4  <-- 1
       0     8182        M 0x8000159c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     8183        M 0x800015a0 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     8184        M 0x800015a4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     8185        M 0x800015a8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001608
       0     8188        M 0x80001608 ret                            #; ra  = 0x80001c4c, goto 0x80001c4c
       0     8193        M 0x80001c4c mv      s0, s1                 #; s1  = 17, (wrb) s0  <-- 17
       0     8196        M 0x80001c50 mv      s8, s10                #; s10 = 0, (wrb) s8  <-- 0
       0     8197        M 0x80001c54 bnez    s10, pc - 40           #; s10 = 0, not taken
       0     8198        M 0x80001c58 j       pc + 0x8               #; goto 0x80001c60
       0     8210        M 0x80001c60 sub     a0, s1, s4             #; s1  = 17, s4  = 9, (wrb) a0  <-- 8
       0     8211        M 0x80001c64 sltu    a0, a0, s2             #; a0  = 8, s2  = 0, (wrb) a0  <-- 0
       0     8212        M 0x80001c68 xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0     8213        M 0x80001c6c xori    a1, s5, 1              #; s5  = 0, (wrb) a1  <-- 1
       0     8222        M 0x80001c70 or      a0, a1, a0             #; a1  = 1, a0  = 1, (wrb) a0  <-- 1
       0     8223        M 0x80001c74 bnez    a0, pc + 48            #; a0  = 1, taken, goto 0x80001ca4
       0     8245        M 0x80001ca4 mv      s0, s1                 #; s1  = 17, (wrb) s0  <-- 17
       0     8246        M 0x80001ca8 mv      a0, s0                 #; s0  = 17, (wrb) a0  <-- 17
       0     8249        M 0x80001cac fld     fs2, 40(sp)            #; fs2  <~~ Doub[0x0011fe58]
       0     8250        M                                           #; (f:lsu) fs2  <-- 0.0
       0     8259        M 0x80001cb8 lw      s10, 64(sp)            #; sp  = 0x0011fe30, s10 <~~ Word[0x0011fe70]
                         M 0x80001cb0 fld     fs1, 48(sp)            #; fs1  <~~ Doub[0x0011fe60]
       0     8260        M 0x80001cb4 fld     fs0, 56(sp)            #; fs0  <~~ Doub[0x0011fe68], (f:lsu) fs1  <-- 0.0
       0     8261        M                                           #; (f:lsu) fs0  <-- 2850.0
       0     8263        M                                           #; (lsu) s10 <-- 0x80002c4f
       0     8264        M 0x80001cbc lw      s9, 68(sp)             #; sp  = 0x0011fe30, s9  <~~ Word[0x0011fe74]
       0     8267        M                                           #; (lsu) s9  <-- 9
       0     8269        M 0x80001cc0 lw      s8, 72(sp)             #; sp  = 0x0011fe30, s8  <~~ Word[0x0011fe78]
       0     8272        M                                           #; (lsu) s8  <-- 16
       0     8273        M 0x80001cc4 lw      s7, 76(sp)             #; sp  = 0x0011fe30, s7  <~~ Word[0x0011fe7c]
       0     8276        M                                           #; (lsu) s7  <-- 0
       0     8277        M 0x80001cc8 lw      s6, 80(sp)             #; sp  = 0x0011fe30, s6  <~~ Word[0x0011fe80]
       0     8280        M                                           #; (lsu) s6  <-- 0
       0     8281        M 0x80001ccc lw      s5, 84(sp)             #; sp  = 0x0011fe30, s5  <~~ Word[0x0011fe84]
       0     8284        M                                           #; (lsu) s5  <-- -1
       0     8285        M 0x80001cd0 lw      s4, 88(sp)             #; sp  = 0x0011fe30, s4  <~~ Word[0x0011fe88]
       0     8288        M                                           #; (lsu) s4  <-- 0x0011ff17
       0     8289        M 0x80001cd4 lw      s3, 92(sp)             #; sp  = 0x0011fe30, s3  <~~ Word[0x0011fe8c]
       0     8292        M                                           #; (lsu) s3  <-- 0x0011ff30
       0     8293        M 0x80001cd8 lw      s2, 96(sp)             #; sp  = 0x0011fe30, s2  <~~ Word[0x0011fe90]
       0     8296        M                                           #; (lsu) s2  <-- 0x80001560
       0     8297        M 0x80001cdc lw      s1, 100(sp)            #; sp  = 0x0011fe30, s1  <~~ Word[0x0011fe94]
       0     8300        M                                           #; (lsu) s1  <-- 9
       0     8301        M 0x80001ce0 lw      s0, 104(sp)            #; sp  = 0x0011fe30, s0  <~~ Word[0x0011fe98]
       0     8304        M                                           #; (lsu) s0  <-- 0
       0     8305        M 0x80001ce4 lw      ra, 108(sp)            #; sp  = 0x0011fe30, ra  <~~ Word[0x0011fe9c]
       0     8306        M 0x80001ce8 addi    sp, sp, 112            #; sp  = 0x0011fe30, (wrb) sp  <-- 0x0011fea0
       0     8308        M                                           #; (lsu) ra  <-- 0x80000c90
       0     8309        M 0x80001cec ret                            #; ra  = 0x80000c90, goto 0x80000c90
       0     8312        M 0x80000c90 j       pc + 0x7c0             #; goto 0x80001450
       0     8324        M 0x80001450 mv      s8, a0                 #; a0  = 17, (wrb) s8  <-- 17
       0     8325        M 0x80001454 li      s6, 37                 #; (wrb) s6  <-- 37
       0     8326        M 0x80001458 li      s7, 46                 #; (wrb) s7  <-- 46
       0     8327        M 0x8000145c addi    s0, s10, 1             #; s10 = 0x80002c4f, (wrb) s0  <-- 0x80002c50
       0     8336        M 0x80001460 j       pc - 0xa74             #; goto 0x800009ec
       0     8339        M 0x800009ec addi    s10, s0, 2             #; s0  = 0x80002c50, (wrb) s10 <-- 0x80002c52
       0     8342        M 0x800009f0 mv      s9, s8                 #; s8  = 17, (wrb) s9  <-- 17
       0     8343        M 0x800009f4 li      s8, 10                 #; (wrb) s8  <-- 10
       0     8344        M 0x800009f8 lbu     a0, 0(s0)              #; s0  = 0x80002c50, a0  <~~ Byte[0x80002c50]
       0     8355        M                                           #; (lsu) a0  <-- 10
       0     8356        M 0x800009fc beqz    a0, pc + 2824          #; a0  = 10, not taken
       0     8357        M 0x80000a00 beq     a0, s6, pc + 48        #; a0  = 10, s6  = 37, not taken
       0     8358        M 0x80000a04 addi    s1, s9, 1              #; s9  = 17, (wrb) s1  <-- 18
       0     8359        M 0x80000a08 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     8360        M 0x80000a0c mv      a2, s9                 #; s9  = 17, (wrb) a2  <-- 17
       0     8361        M 0x80000a10 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     8362        M 0x80000a14 jalr    s2                     #; s2  = 0x80001560, (wrb) ra  <-- 0x80000a18, goto 0x80001560
       0     8366        M 0x80001560 beqz    a0, pc + 168           #; a0  = 10, not taken
       0     8367        M 0x80001564 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     8368        M 0x80001568 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     8369        M 0x8000156c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     8370        M 0x80001570 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003570
       0     8371        M 0x80001574 addi    a3, a3, -1500          #; a3  = 0x80003570, (wrb) a3  <-- 0x80002f94
       0     8372        M                                           #; (acc) a1  <-- 0x00d605b3
       0     8373        M 0x80001578 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
       0     8374        M 0x8000157c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     8385        M                                           #; (lsu) a4  <-- 17
       0     8386        M 0x80001580 addi    a5, a4, 1              #; a4  = 17, (wrb) a5  <-- 18
       0     8387        M 0x80001584 sw      a5, 0(a1)              #; a1  = 0x80002f94, 18 ~~> Word[0x80002f94]
       0     8388        M 0x80001588 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 17, (wrb) a4  <-- 0x80002fa5
       0     8389        M 0x8000158c sb      a0, 72(a4)             #; a4  = 0x80002fa5, 10 ~~> Byte[0x80002fed]
       0     8390        M 0x80001590 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     8411        M                                           #; (lsu) a4  <-- 18
       0     8412        M 0x80001594 addi    a4, a4, -1020          #; a4  = 18, (wrb) a4  <-- -1002
       0     8413        M 0x80001598 snez    a4, a4                 #; a4  = -1002, (wrb) a4  <-- 1
       0     8414        M 0x8000159c addi    a0, a0, -10            #; a0  = 10, (wrb) a0  <-- 0
       0     8415        M 0x800015a0 snez    a0, a0                 #; a0  = 0, (wrb) a0  <-- 0
       0     8416        M 0x800015a4 and     a0, a0, a4             #; a0  = 0, a4  = 1, (wrb) a0  <-- 0
       0     8417        M 0x800015a8 bnez    a0, pc + 96            #; a0  = 0, not taken
       0     8418        M 0x800015ac add     a0, a3, a2             #; a3  = 0x80002f94, a2  = 0, (wrb) a0  <-- 0x80002f94
       0     8419        M 0x800015b0 addi    a2, a0, 72             #; a0  = 0x80002f94, (wrb) a2  <-- 0x80002fdc
       0     8420        M 0x800015b4 sw      zero, 12(a0)           #; a0  = 0x80002f94, 0 ~~> Word[0x80002fa0]
       0     8421        M 0x800015b8 li      a3, 64                 #; (wrb) a3  <-- 64
       0     8422        M 0x800015bc sw      a3, 8(a0)              #; a0  = 0x80002f94, 64 ~~> Word[0x80002f9c]
       0     8431        M 0x800015c0 sw      zero, 20(a0)           #; a0  = 0x80002f94, 0 ~~> Word[0x80002fa8]
       0     8432        M 0x800015c4 li      a3, 1                  #; (wrb) a3  <-- 1
       0     8433        M 0x800015c8 sw      a3, 16(a0)             #; a0  = 0x80002f94, 1 ~~> Word[0x80002fa4]
       0     8434        M 0x800015cc sw      zero, 28(a0)           #; a0  = 0x80002f94, 0 ~~> Word[0x80002fb0]
       0     8443        M 0x800015d0 sw      a2, 24(a0)             #; a0  = 0x80002f94, 0x80002fdc ~~> Word[0x80002fac]
       0     8446        M 0x800015d4 lw      a2, 0(a1)              #; a1  = 0x80002f94, a2  <~~ Word[0x80002f94]
       0     8447        M 0x800015d8 addi    a3, a0, 8              #; a0  = 0x80002f94, (wrb) a3  <-- 0x80002f9c
       0     8448        M 0x800015dc sw      zero, 36(a0)           #; a0  = 0x80002f94, 0 ~~> Word[0x80002fb8]
       0     8468        M                                           #; (lsu) a2  <-- 18
       0     8469        M 0x800015e0 sw      a2, 32(a0)             #; a0  = 0x80002f94, 18 ~~> Word[0x80002fb4]
       0     8470        M 0x800015e4 auipc   a0, 0x2                #; (wrb) a0  <-- 0x800035e4
       0     8471        M 0x800015e8 addi    a0, a0, -1892          #; a0  = 0x800035e4, (wrb) a0  <-- 0x80002e80
       0     8472        M 0x800015ec sw      a3, 0(a0)              #; a0  = 0x80002e80, 0x80002f9c ~~> Word[0x80002e80]
       0     8473        M 0x800015f0 auipc   a0, 0x2                #; (wrb) a0  <-- 0x800035f0
       0     8474        M 0x800015f4 addi    a0, a0, -1840          #; a0  = 0x800035f0, (wrb) a0  <-- 0x80002ec0
       0     8475        M 0x800015f8 lw      a2, 0(a0)              #; a0  = 0x80002ec0, a2  <~~ Word[0x80002ec0]
       0     8498        M                                           #; (lsu) a2  <-- 0
       0     8499        M 0x800015fc beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x800015f8
       0     8500        M 0x800015f8 lw      a2, 0(a0)              #; a0  = 0x80002ec0, a2  <~~ Word[0x80002ec0]
       0     8511        M                                           #; (lsu) a2  <-- 1
       0     8512        M 0x800015fc beqz    a2, pc - 4             #; a2  = 1, not taken
       0     8515        M 0x80001600 sw      zero, 0(a0)            #; a0  = 0x80002ec0, 0 ~~> Word[0x80002ec0]
       0     8516        M 0x80001604 sw      zero, 0(a1)            #; a1  = 0x80002f94, 0 ~~> Word[0x80002f94]
       0     8517        M 0x80001608 ret                            #; ra  = 0x80000a18, goto 0x80000a18
       0     8520        M 0x80000a18 addi    s0, s0, 1              #; s0  = 0x80002c50, (wrb) s0  <-- 0x80002c51
       0     8521        M 0x80000a1c addi    s10, s10, 1            #; s10 = 0x80002c52, (wrb) s10 <-- 0x80002c53
       0     8523        M 0x80000a20 mv      s9, s1                 #; s1  = 18, (wrb) s9  <-- 18
       0     8524        M 0x80000a24 lbu     a0, 0(s0)              #; s0  = 0x80002c51, a0  <~~ Byte[0x80002c51]
       0     8538        M                                           #; (lsu) a0  <-- 0
       0     8539        M 0x80000a28 bnez    a0, pc - 40            #; a0  = 0, not taken
       0     8540        M 0x80000a2c j       pc + 0xad8             #; goto 0x80001504
       0     8552        M 0x80001504 mv      a2, s9                 #; s9  = 18, (wrb) a2  <-- 18
       0     8553        M 0x80001508 bltu    s9, s5, pc + 8         #; s9  = 18, s5  = -1, taken, goto 0x80001510
       0     8564        M 0x80001510 li      a0, 0                  #; (wrb) a0  <-- 0
       0     8565        M 0x80001514 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     8566        M 0x80001518 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     8567        M 0x8000151c jalr    s2                     #; s2  = 0x80001560, (wrb) ra  <-- 0x80001520, goto 0x80001560
       0     8578        M 0x80001560 beqz    a0, pc + 168           #; a0  = 0, taken, goto 0x80001608
       0     8583        M 0x80001608 ret                            #; ra  = 0x80001520, goto 0x80001520
       0     8584        M 0x80001520 mv      a0, s9                 #; s9  = 18, (wrb) a0  <-- 18
       0     8585        M 0x80001524 lw      s11, 60(sp)            #; sp  = 0x0011fea0, s11 <~~ Word[0x0011fedc]
       0     8588        M                                           #; (lsu) s11 <-- 0
       0     8589        M 0x80001528 lw      s10, 64(sp)            #; sp  = 0x0011fea0, s10 <~~ Word[0x0011fee0]
       0     8592        M                                           #; (lsu) s10 <-- 0
       0     8593        M 0x8000152c lw      s9, 68(sp)             #; sp  = 0x0011fea0, s9  <~~ Word[0x0011fee4]
       0     8596        M                                           #; (lsu) s9  <-- 0
       0     8598        M 0x80001530 lw      s8, 72(sp)             #; sp  = 0x0011fea0, s8  <~~ Word[0x0011fee8]
       0     8601        M                                           #; (lsu) s8  <-- 0
       0     8602        M 0x80001534 lw      s7, 76(sp)             #; sp  = 0x0011fea0, s7  <~~ Word[0x0011feec]
       0     8605        M                                           #; (lsu) s7  <-- 0
       0     8606        M 0x80001538 lw      s6, 80(sp)             #; sp  = 0x0011fea0, s6  <~~ Word[0x0011fef0]
       0     8609        M                                           #; (lsu) s6  <-- 0
       0     8610        M 0x8000153c lw      s5, 84(sp)             #; sp  = 0x0011fea0, s5  <~~ Word[0x0011fef4]
       0     8613        M                                           #; (lsu) s5  <-- 0
       0     8614        M 0x80001540 lw      s4, 88(sp)             #; sp  = 0x0011fea0, s4  <~~ Word[0x0011fef8]
       0     8617        M                                           #; (lsu) s4  <-- 0
       0     8618        M 0x80001544 lw      s3, 92(sp)             #; sp  = 0x0011fea0, s3  <~~ Word[0x0011fefc]
       0     8621        M                                           #; (lsu) s3  <-- 0
       0     8622        M 0x80001548 lw      s2, 96(sp)             #; sp  = 0x0011fea0, s2  <~~ Word[0x0011ff00]
       0     8625        M                                           #; (lsu) s2  <-- 0x00100000
       0     8626        M 0x8000154c lw      s1, 100(sp)            #; sp  = 0x0011fea0, s1  <~~ Word[0x0011ff04]
       0     8629        M                                           #; (lsu) s1  <-- 4847
       0     8630        M 0x80001550 lw      s0, 104(sp)            #; sp  = 0x0011fea0, s0  <~~ Word[0x0011ff08]
       0     8633        M                                           #; (lsu) s0  <-- 0x00100320
       0     8634        M 0x80001554 lw      ra, 108(sp)            #; sp  = 0x0011fea0, ra  <~~ Word[0x0011ff0c]
       0     8635        M 0x80001558 addi    sp, sp, 112            #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011ff10
       0     8637        M                                           #; (lsu) ra  <-- 0x8000095c
       0     8638        M 0x8000155c ret                            #; ra  = 0x8000095c, goto 0x8000095c
       0     8641        M 0x8000095c lw      ra, 12(sp)             #; sp  = 0x0011ff10, ra  <~~ Word[0x0011ff1c]
       0     8644        M 0x80000960 addi    sp, sp, 48             #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011ff40
       0     8645        M                                           #; (lsu) ra  <-- 0x800007c8
       0     8646        M 0x80000964 ret                            #; ra  = 0x800007c8, goto 0x800007c8
       0     8658        M 0x800007c8 auipc   a0, 0x2                #; (wrb) a0  <-- 0x800027c8
       0     8659        M 0x800007cc addi    a0, a0, 1808           #; a0  = 0x800027c8, (wrb) a0  <-- 0x80002ed8
       0     8663        M 0x800007d0 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002ed8]
       0     8672        M                                           #; (f:lsu) ft0  <-- 2850.0
       0     8673        M 0x800007e0 lw      a2, 0(sp)              #; sp  = 0x0011ff40, a2  <~~ Word[0x0011ff40]
                         M 0x800007d4 fadd.d  ft0, fs0, ft0          #; fs0  = 2850.0, ft0  = 2850.0
       0     8676        M                                           #; (lsu) a2  <-- 0
                         M                                           #; (f:fpu) ft0  <-- 5700.0
       0     8677        M 0x800007e4 lw      a3, 4(sp)              #; sp  = 0x0011ff40, a3  <~~ Word[0x0011ff44]
                         M 0x800007d8 fsgnjx.d fs0, ft0, ft0         #; ft0  = 5700.0, ft0  = 5700.0
       0     8678        M 0x800007e8 auipc   a0, 0x2                #; (wrb) a0  <-- 0x800027e8
                         M                                           #; (f:fpu) fs0  <-- 5700.0
       0     8679        M 0x800007ec addi    a0, a0, 1130           #; a0  = 0x800027e8, (wrb) a0  <-- 0x80002c52
                         M 0x800007dc fsd     fs0, 0(sp)             #; 5700.0 ~~> Doub[0x0011ff40]
       0     8680        M                                           #; (lsu) a3  <-- 0
       0     8685        M 0x800007f0 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800007f0
       0     8686        M 0x800007f4 jalr    ra, ra, 284            #; ra  = 0x800007f0, (wrb) ra  <-- 0x800007f8, goto 0x8000090c
       0     8690        M 0x8000090c addi    sp, sp, -48            #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff10
       0     8693        M 0x80000910 sw      ra, 12(sp)             #; sp  = 0x0011ff10, 0x800007f8 ~~> Word[0x0011ff1c]
       0     8694        M 0x80000914 mv      t0, a0                 #; a0  = 0x80002c52, (wrb) t0  <-- 0x80002c52
       0     8695        M 0x80000918 sw      a7, 44(sp)             #; sp  = 0x0011ff10, 9 ~~> Word[0x0011ff3c]
       0     8696        M 0x8000091c sw      a6, 40(sp)             #; sp  = 0x0011ff10, 10 ~~> Word[0x0011ff38]
       0     8697        M 0x80000920 sw      a5, 36(sp)             #; sp  = 0x0011ff10, 18 ~~> Word[0x0011ff34]
       0     8698        M 0x80000924 sw      a4, 32(sp)             #; sp  = 0x0011ff10, 1 ~~> Word[0x0011ff30]
       0     8699        M 0x80000928 sw      a3, 28(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff2c]
       0     8700        M 0x8000092c sw      a2, 24(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff28]
       0     8701        M 0x80000930 sw      a1, 20(sp)             #; sp  = 0x0011ff10, 0x0011ff17 ~~> Word[0x0011ff24]
       0     8702        M 0x80000934 addi    a0, sp, 20             #; sp  = 0x0011ff10, (wrb) a0  <-- 0x0011ff24
       0     8703        M 0x80000938 sw      a0, 8(sp)              #; sp  = 0x0011ff10, 0x0011ff24 ~~> Word[0x0011ff18]
       0     8704        M 0x8000093c auipc   a0, 0x1                #; (wrb) a0  <-- 0x8000193c
       0     8705        M 0x80000940 addi    a0, a0, -988           #; a0  = 0x8000193c, (wrb) a0  <-- 0x80001560
       0     8706        M 0x80000944 addi    a1, sp, 7              #; sp  = 0x0011ff10, (wrb) a1  <-- 0x0011ff17
       0     8707        M 0x80000948 li      a2, -1                 #; (wrb) a2  <-- -1
       0     8708        M 0x8000094c addi    a4, sp, 20             #; sp  = 0x0011ff10, (wrb) a4  <-- 0x0011ff24
       0     8709        M 0x80000950 mv      a3, t0                 #; t0  = 0x80002c52, (wrb) a3  <-- 0x80002c52
       0     8710        M 0x80000954 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000954
       0     8711        M 0x80000958 jalr    ra, ra, 20             #; ra  = 0x80000954, (wrb) ra  <-- 0x8000095c, goto 0x80000968
       0     8712        M 0x80000968 addi    sp, sp, -112           #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011fea0
       0     8713        M 0x8000096c sw      ra, 108(sp)            #; sp  = 0x0011fea0, 0x8000095c ~~> Word[0x0011ff0c]
       0     8715        M 0x80000970 sw      s0, 104(sp)            #; sp  = 0x0011fea0, 0x00100320 ~~> Word[0x0011ff08]
       0     8716        M 0x80000974 sw      s1, 100(sp)            #; sp  = 0x0011fea0, 4847 ~~> Word[0x0011ff04]
       0     8717        M 0x80000978 sw      s2, 96(sp)             #; sp  = 0x0011fea0, 0x00100000 ~~> Word[0x0011ff00]
       0     8718        M 0x8000097c sw      s3, 92(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fefc]
       0     8719        M 0x80000980 sw      s4, 88(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef8]
       0     8720        M 0x80000984 sw      s5, 84(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef4]
       0     8721        M 0x80000988 sw      s6, 80(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef0]
       0     8722        M 0x8000098c sw      s7, 76(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011feec]
       0     8723        M 0x80000990 sw      s8, 72(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee8]
       0     8724        M 0x80000994 sw      s9, 68(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee4]
       0     8725        M 0x80000998 sw      s10, 64(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee0]
       0     8726        M 0x8000099c sw      s11, 60(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fedc]
       0     8727        M 0x800009a0 mv      s3, a4                 #; a4  = 0x0011ff24, (wrb) s3  <-- 0x0011ff24
       0     8728        M 0x800009a4 mv      s0, a3                 #; a3  = 0x80002c52, (wrb) s0  <-- 0x80002c52
       0     8729        M 0x800009a8 mv      s5, a2                 #; a2  = -1, (wrb) s5  <-- -1
       0     8730        M 0x800009ac mv      s4, a1                 #; a1  = 0x0011ff17, (wrb) s4  <-- 0x0011ff17
       0     8731        M 0x800009b0 beqz    a1, pc + 12            #; a1  = 0x0011ff17, not taken
       0     8732        M 0x800009b4 mv      s2, a0                 #; a0  = 0x80001560, (wrb) s2  <-- 0x80001560
       0     8733        M 0x800009b8 j       pc + 0xc               #; goto 0x800009c4
       0     8734        M 0x800009c4 li      s8, 0                  #; (wrb) s8  <-- 0
       0     8735        M 0x800009c8 li      s6, 37                 #; (wrb) s6  <-- 37
       0     8736        M 0x800009cc li      s11, 16                #; (wrb) s11 <-- 16
       0     8737        M 0x800009d0 li      s7, 46                 #; (wrb) s7  <-- 46
       0     8738        M 0x800009d4 lui     a0, 0x1                #; (wrb) a0  <-- 4096
       0     8739        M 0x800009d8 addi    a0, a0, -2048          #; a0  = 4096, (wrb) a0  <-- 2048
       0     8740        M 0x800009dc sw      a0, 24(sp)             #; sp  = 0x0011fea0, 2048 ~~> Word[0x0011feb8]
       0     8741        M 0x800009e0 lui     a0, 0x10               #; (wrb) a0  <-- 0x00010000
       0     8742        M 0x800009e4 addi    a0, a0, -1             #; a0  = 0x00010000, (wrb) a0  <-- 65535
       0     8743        M 0x800009e8 sw      a0, 16(sp)             #; sp  = 0x0011fea0, 65535 ~~> Word[0x0011feb0]
       0     8744        M 0x800009ec addi    s10, s0, 2             #; s0  = 0x80002c52, (wrb) s10 <-- 0x80002c54
       0     8745        M 0x800009f0 mv      s9, s8                 #; s8  = 0, (wrb) s9  <-- 0
       0     8746        M 0x800009f4 li      s8, 10                 #; (wrb) s8  <-- 10
       0     8747        M 0x800009f8 lbu     a0, 0(s0)              #; s0  = 0x80002c52, a0  <~~ Byte[0x80002c52]
       0     8758        M                                           #; (lsu) a0  <-- 101
       0     8759        M 0x800009fc beqz    a0, pc + 2824          #; a0  = 101, not taken
       0     8760        M 0x80000a00 beq     a0, s6, pc + 48        #; a0  = 101, s6  = 37, not taken
       0     8761        M 0x80000a04 addi    s1, s9, 1              #; s9  = 0, (wrb) s1  <-- 1
       0     8762        M 0x80000a08 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     8763        M 0x80000a0c mv      a2, s9                 #; s9  = 0, (wrb) a2  <-- 0
       0     8764        M 0x80000a10 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     8765        M 0x80000a14 jalr    s2                     #; s2  = 0x80001560, (wrb) ra  <-- 0x80000a18, goto 0x80001560
       0     8769        M 0x80001560 beqz    a0, pc + 168           #; a0  = 101, not taken
       0     8770        M 0x80001564 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     8771        M 0x80001568 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     8772        M 0x8000156c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     8773        M 0x80001570 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003570
       0     8774        M 0x80001574 addi    a3, a3, -1500          #; a3  = 0x80003570, (wrb) a3  <-- 0x80002f94
       0     8775        M                                           #; (acc) a1  <-- 0x00d605b3
       0     8776        M 0x80001578 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
       0     8777        M 0x8000157c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     8788        M                                           #; (lsu) a4  <-- 0
       0     8789        M 0x80001580 addi    a5, a4, 1              #; a4  = 0, (wrb) a5  <-- 1
       0     8790        M 0x80001584 sw      a5, 0(a1)              #; a1  = 0x80002f94, 1 ~~> Word[0x80002f94]
       0     8791        M 0x80001588 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 0, (wrb) a4  <-- 0x80002f94
       0     8792        M 0x8000158c sb      a0, 72(a4)             #; a4  = 0x80002f94, 101 ~~> Byte[0x80002fdc]
       0     8793        M 0x80001590 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     8814        M                                           #; (lsu) a4  <-- 1
       0     8815        M 0x80001594 addi    a4, a4, -1020          #; a4  = 1, (wrb) a4  <-- -1019
       0     8816        M 0x80001598 snez    a4, a4                 #; a4  = -1019, (wrb) a4  <-- 1
       0     8817        M 0x8000159c addi    a0, a0, -10            #; a0  = 101, (wrb) a0  <-- 91
       0     8818        M 0x800015a0 snez    a0, a0                 #; a0  = 91, (wrb) a0  <-- 1
       0     8819        M 0x800015a4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     8820        M 0x800015a8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001608
       0     8823        M 0x80001608 ret                            #; ra  = 0x80000a18, goto 0x80000a18
       0     8828        M 0x80000a18 addi    s0, s0, 1              #; s0  = 0x80002c52, (wrb) s0  <-- 0x80002c53
       0     8829        M 0x80000a1c addi    s10, s10, 1            #; s10 = 0x80002c54, (wrb) s10 <-- 0x80002c55
       0     8831        M 0x80000a20 mv      s9, s1                 #; s1  = 1, (wrb) s9  <-- 1
       0     8832        M 0x80000a24 lbu     a0, 0(s0)              #; s0  = 0x80002c53, a0  <~~ Byte[0x80002c53]
       0     8843        M                                           #; (lsu) a0  <-- 114
       0     8844        M 0x80000a28 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000a00
       0     8845        M 0x80000a00 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     8846        M 0x80000a04 addi    s1, s9, 1              #; s9  = 1, (wrb) s1  <-- 2
       0     8847        M 0x80000a08 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     8848        M 0x80000a0c mv      a2, s9                 #; s9  = 1, (wrb) a2  <-- 1
       0     8849        M 0x80000a10 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     8850        M 0x80000a14 jalr    s2                     #; s2  = 0x80001560, (wrb) ra  <-- 0x80000a18, goto 0x80001560
       0     8853        M 0x80001560 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     8854        M 0x80001564 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     8855        M 0x80001568 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     8856        M 0x8000156c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     8857        M 0x80001570 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003570
       0     8858        M 0x80001574 addi    a3, a3, -1500          #; a3  = 0x80003570, (wrb) a3  <-- 0x80002f94
       0     8859        M                                           #; (acc) a1  <-- 0x00d605b3
       0     8860        M 0x80001578 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
       0     8861        M 0x8000157c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     8872        M                                           #; (lsu) a4  <-- 1
       0     8873        M 0x80001580 addi    a5, a4, 1              #; a4  = 1, (wrb) a5  <-- 2
       0     8874        M 0x80001584 sw      a5, 0(a1)              #; a1  = 0x80002f94, 2 ~~> Word[0x80002f94]
       0     8875        M 0x80001588 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 1, (wrb) a4  <-- 0x80002f95
       0     8876        M 0x8000158c sb      a0, 72(a4)             #; a4  = 0x80002f95, 114 ~~> Byte[0x80002fdd]
       0     8877        M 0x80001590 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     8898        M                                           #; (lsu) a4  <-- 2
       0     8899        M 0x80001594 addi    a4, a4, -1020          #; a4  = 2, (wrb) a4  <-- -1018
       0     8900        M 0x80001598 snez    a4, a4                 #; a4  = -1018, (wrb) a4  <-- 1
       0     8901        M 0x8000159c addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     8902        M 0x800015a0 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     8903        M 0x800015a4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     8904        M 0x800015a8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001608
       0     8907        M 0x80001608 ret                            #; ra  = 0x80000a18, goto 0x80000a18
       0     8912        M 0x80000a18 addi    s0, s0, 1              #; s0  = 0x80002c53, (wrb) s0  <-- 0x80002c54
       0     8913        M 0x80000a1c addi    s10, s10, 1            #; s10 = 0x80002c55, (wrb) s10 <-- 0x80002c56
       0     8915        M 0x80000a20 mv      s9, s1                 #; s1  = 2, (wrb) s9  <-- 2
       0     8916        M 0x80000a24 lbu     a0, 0(s0)              #; s0  = 0x80002c54, a0  <~~ Byte[0x80002c54]
       0     8927        M                                           #; (lsu) a0  <-- 114
       0     8928        M 0x80000a28 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000a00
       0     8929        M 0x80000a00 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     8930        M 0x80000a04 addi    s1, s9, 1              #; s9  = 2, (wrb) s1  <-- 3
       0     8931        M 0x80000a08 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     8932        M 0x80000a0c mv      a2, s9                 #; s9  = 2, (wrb) a2  <-- 2
       0     8933        M 0x80000a10 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     8934        M 0x80000a14 jalr    s2                     #; s2  = 0x80001560, (wrb) ra  <-- 0x80000a18, goto 0x80001560
       0     8937        M 0x80001560 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     8938        M 0x80001564 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     8939        M 0x80001568 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     8940        M 0x8000156c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     8941        M 0x80001570 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003570
       0     8942        M 0x80001574 addi    a3, a3, -1500          #; a3  = 0x80003570, (wrb) a3  <-- 0x80002f94
       0     8943        M                                           #; (acc) a1  <-- 0x00d605b3
       0     8944        M 0x80001578 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
       0     8945        M 0x8000157c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     8956        M                                           #; (lsu) a4  <-- 2
       0     8957        M 0x80001580 addi    a5, a4, 1              #; a4  = 2, (wrb) a5  <-- 3
       0     8958        M 0x80001584 sw      a5, 0(a1)              #; a1  = 0x80002f94, 3 ~~> Word[0x80002f94]
       0     8959        M 0x80001588 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 2, (wrb) a4  <-- 0x80002f96
       0     8960        M 0x8000158c sb      a0, 72(a4)             #; a4  = 0x80002f96, 114 ~~> Byte[0x80002fde]
       0     8961        M 0x80001590 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     8982        M                                           #; (lsu) a4  <-- 3
       0     8983        M 0x80001594 addi    a4, a4, -1020          #; a4  = 3, (wrb) a4  <-- -1017
       0     8984        M 0x80001598 snez    a4, a4                 #; a4  = -1017, (wrb) a4  <-- 1
       0     8985        M 0x8000159c addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     8986        M 0x800015a0 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     8987        M 0x800015a4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     8988        M 0x800015a8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001608
       0     8991        M 0x80001608 ret                            #; ra  = 0x80000a18, goto 0x80000a18
       0     8996        M 0x80000a18 addi    s0, s0, 1              #; s0  = 0x80002c54, (wrb) s0  <-- 0x80002c55
       0     8997        M 0x80000a1c addi    s10, s10, 1            #; s10 = 0x80002c56, (wrb) s10 <-- 0x80002c57
       0     8999        M 0x80000a20 mv      s9, s1                 #; s1  = 3, (wrb) s9  <-- 3
       0     9000        M 0x80000a24 lbu     a0, 0(s0)              #; s0  = 0x80002c55, a0  <~~ Byte[0x80002c55]
       0     9011        M                                           #; (lsu) a0  <-- 111
       0     9012        M 0x80000a28 bnez    a0, pc - 40            #; a0  = 111, taken, goto 0x80000a00
       0     9013        M 0x80000a00 beq     a0, s6, pc + 48        #; a0  = 111, s6  = 37, not taken
       0     9014        M 0x80000a04 addi    s1, s9, 1              #; s9  = 3, (wrb) s1  <-- 4
       0     9015        M 0x80000a08 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     9016        M 0x80000a0c mv      a2, s9                 #; s9  = 3, (wrb) a2  <-- 3
       0     9017        M 0x80000a10 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     9018        M 0x80000a14 jalr    s2                     #; s2  = 0x80001560, (wrb) ra  <-- 0x80000a18, goto 0x80001560
       0     9021        M 0x80001560 beqz    a0, pc + 168           #; a0  = 111, not taken
       0     9022        M 0x80001564 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     9023        M 0x80001568 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     9024        M 0x8000156c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     9025        M 0x80001570 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003570
       0     9026        M 0x80001574 addi    a3, a3, -1500          #; a3  = 0x80003570, (wrb) a3  <-- 0x80002f94
       0     9027        M                                           #; (acc) a1  <-- 0x00d605b3
       0     9028        M 0x80001578 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
       0     9029        M 0x8000157c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     9040        M                                           #; (lsu) a4  <-- 3
       0     9041        M 0x80001580 addi    a5, a4, 1              #; a4  = 3, (wrb) a5  <-- 4
       0     9042        M 0x80001584 sw      a5, 0(a1)              #; a1  = 0x80002f94, 4 ~~> Word[0x80002f94]
       0     9043        M 0x80001588 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 3, (wrb) a4  <-- 0x80002f97
       0     9044        M 0x8000158c sb      a0, 72(a4)             #; a4  = 0x80002f97, 111 ~~> Byte[0x80002fdf]
       0     9045        M 0x80001590 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     9066        M                                           #; (lsu) a4  <-- 4
       0     9067        M 0x80001594 addi    a4, a4, -1020          #; a4  = 4, (wrb) a4  <-- -1016
       0     9068        M 0x80001598 snez    a4, a4                 #; a4  = -1016, (wrb) a4  <-- 1
       0     9069        M 0x8000159c addi    a0, a0, -10            #; a0  = 111, (wrb) a0  <-- 101
       0     9070        M 0x800015a0 snez    a0, a0                 #; a0  = 101, (wrb) a0  <-- 1
       0     9071        M 0x800015a4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     9072        M 0x800015a8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001608
       0     9075        M 0x80001608 ret                            #; ra  = 0x80000a18, goto 0x80000a18
       0     9080        M 0x80000a18 addi    s0, s0, 1              #; s0  = 0x80002c55, (wrb) s0  <-- 0x80002c56
       0     9081        M 0x80000a1c addi    s10, s10, 1            #; s10 = 0x80002c57, (wrb) s10 <-- 0x80002c58
       0     9083        M 0x80000a20 mv      s9, s1                 #; s1  = 4, (wrb) s9  <-- 4
       0     9084        M 0x80000a24 lbu     a0, 0(s0)              #; s0  = 0x80002c56, a0  <~~ Byte[0x80002c56]
       0     9095        M                                           #; (lsu) a0  <-- 114
       0     9096        M 0x80000a28 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000a00
       0     9097        M 0x80000a00 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     9098        M 0x80000a04 addi    s1, s9, 1              #; s9  = 4, (wrb) s1  <-- 5
       0     9099        M 0x80000a08 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     9100        M 0x80000a0c mv      a2, s9                 #; s9  = 4, (wrb) a2  <-- 4
       0     9101        M 0x80000a10 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     9102        M 0x80000a14 jalr    s2                     #; s2  = 0x80001560, (wrb) ra  <-- 0x80000a18, goto 0x80001560
       0     9105        M 0x80001560 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     9106        M 0x80001564 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     9107        M 0x80001568 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     9108        M 0x8000156c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     9109        M 0x80001570 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003570
       0     9110        M 0x80001574 addi    a3, a3, -1500          #; a3  = 0x80003570, (wrb) a3  <-- 0x80002f94
       0     9111        M                                           #; (acc) a1  <-- 0x00d605b3
       0     9112        M 0x80001578 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
       0     9113        M 0x8000157c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     9124        M                                           #; (lsu) a4  <-- 4
       0     9125        M 0x80001580 addi    a5, a4, 1              #; a4  = 4, (wrb) a5  <-- 5
       0     9126        M 0x80001584 sw      a5, 0(a1)              #; a1  = 0x80002f94, 5 ~~> Word[0x80002f94]
       0     9127        M 0x80001588 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 4, (wrb) a4  <-- 0x80002f98
       0     9128        M 0x8000158c sb      a0, 72(a4)             #; a4  = 0x80002f98, 114 ~~> Byte[0x80002fe0]
       0     9129        M 0x80001590 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     9150        M                                           #; (lsu) a4  <-- 5
       0     9151        M 0x80001594 addi    a4, a4, -1020          #; a4  = 5, (wrb) a4  <-- -1015
       0     9152        M 0x80001598 snez    a4, a4                 #; a4  = -1015, (wrb) a4  <-- 1
       0     9153        M 0x8000159c addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     9154        M 0x800015a0 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     9155        M 0x800015a4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     9156        M 0x800015a8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001608
       0     9159        M 0x80001608 ret                            #; ra  = 0x80000a18, goto 0x80000a18
       0     9164        M 0x80000a18 addi    s0, s0, 1              #; s0  = 0x80002c56, (wrb) s0  <-- 0x80002c57
       0     9165        M 0x80000a1c addi    s10, s10, 1            #; s10 = 0x80002c58, (wrb) s10 <-- 0x80002c59
       0     9167        M 0x80000a20 mv      s9, s1                 #; s1  = 5, (wrb) s9  <-- 5
       0     9168        M 0x80000a24 lbu     a0, 0(s0)              #; s0  = 0x80002c57, a0  <~~ Byte[0x80002c57]
       0     9179        M                                           #; (lsu) a0  <-- 32
       0     9180        M 0x80000a28 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000a00
       0     9181        M 0x80000a00 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     9182        M 0x80000a04 addi    s1, s9, 1              #; s9  = 5, (wrb) s1  <-- 6
       0     9183        M 0x80000a08 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     9184        M 0x80000a0c mv      a2, s9                 #; s9  = 5, (wrb) a2  <-- 5
       0     9185        M 0x80000a10 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     9186        M 0x80000a14 jalr    s2                     #; s2  = 0x80001560, (wrb) ra  <-- 0x80000a18, goto 0x80001560
       0     9189        M 0x80001560 beqz    a0, pc + 168           #; a0  = 32, not taken
       0     9190        M 0x80001564 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     9191        M 0x80001568 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     9192        M 0x8000156c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     9193        M 0x80001570 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003570
       0     9194        M 0x80001574 addi    a3, a3, -1500          #; a3  = 0x80003570, (wrb) a3  <-- 0x80002f94
       0     9195        M                                           #; (acc) a1  <-- 0x00d605b3
       0     9196        M 0x80001578 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
       0     9197        M 0x8000157c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     9208        M                                           #; (lsu) a4  <-- 5
       0     9209        M 0x80001580 addi    a5, a4, 1              #; a4  = 5, (wrb) a5  <-- 6
       0     9210        M 0x80001584 sw      a5, 0(a1)              #; a1  = 0x80002f94, 6 ~~> Word[0x80002f94]
       0     9211        M 0x80001588 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 5, (wrb) a4  <-- 0x80002f99
       0     9212        M 0x8000158c sb      a0, 72(a4)             #; a4  = 0x80002f99, 32 ~~> Byte[0x80002fe1]
       0     9213        M 0x80001590 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     9234        M                                           #; (lsu) a4  <-- 6
       0     9235        M 0x80001594 addi    a4, a4, -1020          #; a4  = 6, (wrb) a4  <-- -1014
       0     9236        M 0x80001598 snez    a4, a4                 #; a4  = -1014, (wrb) a4  <-- 1
       0     9237        M 0x8000159c addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
       0     9238        M 0x800015a0 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
       0     9239        M 0x800015a4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     9240        M 0x800015a8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001608
       0     9243        M 0x80001608 ret                            #; ra  = 0x80000a18, goto 0x80000a18
       0     9248        M 0x80000a18 addi    s0, s0, 1              #; s0  = 0x80002c57, (wrb) s0  <-- 0x80002c58
       0     9249        M 0x80000a1c addi    s10, s10, 1            #; s10 = 0x80002c59, (wrb) s10 <-- 0x80002c5a
       0     9251        M 0x80000a20 mv      s9, s1                 #; s1  = 6, (wrb) s9  <-- 6
       0     9252        M 0x80000a24 lbu     a0, 0(s0)              #; s0  = 0x80002c58, a0  <~~ Byte[0x80002c58]
       0     9263        M                                           #; (lsu) a0  <-- 61
       0     9264        M 0x80000a28 bnez    a0, pc - 40            #; a0  = 61, taken, goto 0x80000a00
       0     9265        M 0x80000a00 beq     a0, s6, pc + 48        #; a0  = 61, s6  = 37, not taken
       0     9266        M 0x80000a04 addi    s1, s9, 1              #; s9  = 6, (wrb) s1  <-- 7
       0     9267        M 0x80000a08 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     9268        M 0x80000a0c mv      a2, s9                 #; s9  = 6, (wrb) a2  <-- 6
       0     9269        M 0x80000a10 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     9270        M 0x80000a14 jalr    s2                     #; s2  = 0x80001560, (wrb) ra  <-- 0x80000a18, goto 0x80001560
       0     9273        M 0x80001560 beqz    a0, pc + 168           #; a0  = 61, not taken
       0     9274        M 0x80001564 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     9275        M 0x80001568 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     9276        M 0x8000156c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     9277        M 0x80001570 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003570
       0     9278        M 0x80001574 addi    a3, a3, -1500          #; a3  = 0x80003570, (wrb) a3  <-- 0x80002f94
       0     9279        M                                           #; (acc) a1  <-- 0x00d605b3
       0     9280        M 0x80001578 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
       0     9281        M 0x8000157c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     9292        M                                           #; (lsu) a4  <-- 6
       0     9293        M 0x80001580 addi    a5, a4, 1              #; a4  = 6, (wrb) a5  <-- 7
       0     9294        M 0x80001584 sw      a5, 0(a1)              #; a1  = 0x80002f94, 7 ~~> Word[0x80002f94]
       0     9295        M 0x80001588 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 6, (wrb) a4  <-- 0x80002f9a
       0     9296        M 0x8000158c sb      a0, 72(a4)             #; a4  = 0x80002f9a, 61 ~~> Byte[0x80002fe2]
       0     9297        M 0x80001590 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     9318        M                                           #; (lsu) a4  <-- 7
       0     9319        M 0x80001594 addi    a4, a4, -1020          #; a4  = 7, (wrb) a4  <-- -1013
       0     9320        M 0x80001598 snez    a4, a4                 #; a4  = -1013, (wrb) a4  <-- 1
       0     9321        M 0x8000159c addi    a0, a0, -10            #; a0  = 61, (wrb) a0  <-- 51
       0     9322        M 0x800015a0 snez    a0, a0                 #; a0  = 51, (wrb) a0  <-- 1
       0     9323        M 0x800015a4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     9324        M 0x800015a8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001608
       0     9327        M 0x80001608 ret                            #; ra  = 0x80000a18, goto 0x80000a18
       0     9332        M 0x80000a18 addi    s0, s0, 1              #; s0  = 0x80002c58, (wrb) s0  <-- 0x80002c59
       0     9333        M 0x80000a1c addi    s10, s10, 1            #; s10 = 0x80002c5a, (wrb) s10 <-- 0x80002c5b
       0     9335        M 0x80000a20 mv      s9, s1                 #; s1  = 7, (wrb) s9  <-- 7
       0     9336        M 0x80000a24 lbu     a0, 0(s0)              #; s0  = 0x80002c59, a0  <~~ Byte[0x80002c59]
       0     9347        M                                           #; (lsu) a0  <-- 32
       0     9348        M 0x80000a28 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000a00
       0     9349        M 0x80000a00 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     9350        M 0x80000a04 addi    s1, s9, 1              #; s9  = 7, (wrb) s1  <-- 8
       0     9351        M 0x80000a08 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     9352        M 0x80000a0c mv      a2, s9                 #; s9  = 7, (wrb) a2  <-- 7
       0     9353        M 0x80000a10 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     9354        M 0x80000a14 jalr    s2                     #; s2  = 0x80001560, (wrb) ra  <-- 0x80000a18, goto 0x80001560
       0     9357        M 0x80001560 beqz    a0, pc + 168           #; a0  = 32, not taken
       0     9358        M 0x80001564 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     9359        M 0x80001568 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     9360        M 0x8000156c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     9361        M 0x80001570 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003570
       0     9362        M 0x80001574 addi    a3, a3, -1500          #; a3  = 0x80003570, (wrb) a3  <-- 0x80002f94
       0     9363        M                                           #; (acc) a1  <-- 0x00d605b3
       0     9364        M 0x80001578 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
       0     9365        M 0x8000157c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     9376        M                                           #; (lsu) a4  <-- 7
       0     9377        M 0x80001580 addi    a5, a4, 1              #; a4  = 7, (wrb) a5  <-- 8
       0     9378        M 0x80001584 sw      a5, 0(a1)              #; a1  = 0x80002f94, 8 ~~> Word[0x80002f94]
       0     9379        M 0x80001588 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 7, (wrb) a4  <-- 0x80002f9b
       0     9380        M 0x8000158c sb      a0, 72(a4)             #; a4  = 0x80002f9b, 32 ~~> Byte[0x80002fe3]
       0     9381        M 0x80001590 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     9402        M                                           #; (lsu) a4  <-- 8
       0     9403        M 0x80001594 addi    a4, a4, -1020          #; a4  = 8, (wrb) a4  <-- -1012
       0     9404        M 0x80001598 snez    a4, a4                 #; a4  = -1012, (wrb) a4  <-- 1
       0     9405        M 0x8000159c addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
       0     9406        M 0x800015a0 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
       0     9407        M 0x800015a4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     9408        M 0x800015a8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001608
       0     9411        M 0x80001608 ret                            #; ra  = 0x80000a18, goto 0x80000a18
       0     9416        M 0x80000a18 addi    s0, s0, 1              #; s0  = 0x80002c59, (wrb) s0  <-- 0x80002c5a
       0     9417        M 0x80000a1c addi    s10, s10, 1            #; s10 = 0x80002c5b, (wrb) s10 <-- 0x80002c5c
       0     9419        M 0x80000a20 mv      s9, s1                 #; s1  = 8, (wrb) s9  <-- 8
       0     9420        M 0x80000a24 lbu     a0, 0(s0)              #; s0  = 0x80002c5a, a0  <~~ Byte[0x80002c5a]
       0     9431        M                                           #; (lsu) a0  <-- 37
       0     9432        M 0x80000a28 bnez    a0, pc - 40            #; a0  = 37, taken, goto 0x80000a00
       0     9433        M 0x80000a00 beq     a0, s6, pc + 48        #; a0  = 37, s6  = 37, taken, goto 0x80000a30
       0     9436        M 0x80000a30 li      s0, 0                  #; (wrb) s0  <-- 0
       0     9437        M 0x80000a34 j       pc + 0x10              #; goto 0x80000a44
       0     9439        M 0x80000a44 lbu     a0, -1(s10)            #; s10 = 0x80002c5c, a0  <~~ Byte[0x80002c5b]
       0     9450        M                                           #; (lsu) a0  <-- 102
       0     9451        M 0x80000a48 addi    a1, a0, -32            #; a0  = 102, (wrb) a1  <-- 70
       0     9452        M 0x80000a4c bltu    s11, a1, pc + 56       #; s11 = 16, a1  = 70, taken, goto 0x80000a84
       0     9464        M 0x80000a84 addi    a1, a0, -48            #; a0  = 102, (wrb) a1  <-- 54
       0     9465        M 0x80000a88 andi    a2, a1, 255            #; a1  = 54, (wrb) a2  <-- 54
       0     9466        M 0x80000a8c addi    a1, s10, -1            #; s10 = 0x80002c5c, (wrb) a1  <-- 0x80002c5b
       0     9476        M 0x80000a90 li      a3, 9                  #; (wrb) a3  <-- 9
       0     9477        M 0x80000a94 bltu    a3, a2, pc + 124       #; a3  = 9, a2  = 54, taken, goto 0x80000b10
       0     9499        M 0x80000b10 li      a2, 42                 #; (wrb) a2  <-- 42
       0     9500        M 0x80000b14 bne     a0, a2, pc + 80        #; a0  = 102, a2  = 42, taken, goto 0x80000b64
       0     9513        M 0x80000b64 li      s6, 0                  #; (wrb) s6  <-- 0
       0     9514        M 0x80000b68 mv      s10, a1                #; a1  = 0x80002c5b, (wrb) s10 <-- 0x80002c5b
       0     9515        M 0x80000b6c beq     a0, s7, pc - 164       #; a0  = 102, s7  = 46, not taken
       0     9527        M 0x80000b70 li      s7, 0                  #; (wrb) s7  <-- 0
       0     9528        M 0x80000b74 j       pc + 0xc               #; goto 0x80000b80
       0     9530        M 0x80000b80 addi    a1, a0, -104           #; a0  = 102, (wrb) a1  <-- -2
       0     9531        M 0x80000b84 srli    a2, a1, 1              #; a1  = -2, (wrb) a2  <-- 0x7fffffff
       0     9532        M 0x80000b88 slli    a1, a1, 31             #; a1  = -2, (wrb) a1  <-- 0
       0     9533        M 0x80000b8c or      a1, a1, a2             #; a1  = 0, a2  = 0x7fffffff, (wrb) a1  <-- 0x7fffffff
       0     9534        M 0x80000b90 li      a2, 9                  #; (wrb) a2  <-- 9
       0     9535        M 0x80000b94 bltu    a2, a1, pc + 100       #; a2  = 9, a1  = 0x7fffffff, taken, goto 0x80000bf8
       0     9539        M 0x80000bf8 addi    a1, a0, -37            #; a0  = 102, (wrb) a1  <-- 65
       0     9540        M 0x80000bfc li      a2, 83                 #; (wrb) a2  <-- 83
       0     9542        M 0x80000c00 bltu    a2, a1, pc + 264       #; a2  = 83, a1  = 65, not taken
       0     9543        M 0x80000c04 slli    a1, a1, 2              #; a1  = 65, (wrb) a1  <-- 260
       0     9544        M 0x80000c08 auipc   a2, 0x2                #; (wrb) a2  <-- 0x80002c08
       0     9545        M 0x80000c0c addi    a2, a2, 200            #; a2  = 0x80002c08, (wrb) a2  <-- 0x80002cd0
       0     9546        M 0x80000c10 add     a1, a1, a2             #; a1  = 260, a2  = 0x80002cd0, (wrb) a1  <-- 0x80002dd4
       0     9547        M 0x80000c14 lw      a2, 0(a1)              #; a1  = 0x80002dd4, a2  <~~ Word[0x80002dd4]
       0     9548        M 0x80000c18 li      a1, 8                  #; (wrb) a1  <-- 8
       0     9549        M 0x80000c1c li      s8, 16                 #; (wrb) s8  <-- 16
       0     9558        M                                           #; (lsu) a2  <-- 0x80000c50
       0     9559        M 0x80000c20 jr      a2                     #; a2  = 0x80000c50, goto 0x80000c50
       0     9572        M 0x80000c50 li      a1, 70                 #; (wrb) a1  <-- 70
       0     9573        M 0x80000c54 bne     a0, a1, pc + 8         #; a0  = 102, a1  = 70, taken, goto 0x80000c5c
       0     9574        M 0x80000c5c addi    a0, s3, 7              #; s3  = 0x0011ff24, (wrb) a0  <-- 0x0011ff2b
       0     9575        M 0x80000c60 andi    a0, a0, -8             #; a0  = 0x0011ff2b, (wrb) a0  <-- 0x0011ff28
       0     9577        M 0x80000c68 addi    s3, a0, 8              #; a0  = 0x0011ff28, (wrb) s3  <-- 0x0011ff30
       0     9578        M 0x80000c6c mv      a0, s2                 #; s2  = 0x80001560, (wrb) a0  <-- 0x80001560
                         M 0x80000c64 fld     fa0, 0(a0)             #; fa0  <~~ Doub[0x0011ff28]
       0     9579        M 0x80000c70 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
                         M                                           #; (f:lsu) fa0  <-- 0.0
       0     9580        M 0x80000c74 mv      a2, s9                 #; s9  = 8, (wrb) a2  <-- 8
       0     9581        M 0x80000c78 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     9582        M 0x80000c7c mv      a4, s7                 #; s7  = 0, (wrb) a4  <-- 0
       0     9583        M 0x80000c80 mv      a5, s6                 #; s6  = 0, (wrb) a5  <-- 0
       0     9584        M 0x80000c84 mv      a6, s0                 #; s0  = 0, (wrb) a6  <-- 0
       0     9585        M 0x80000c88 auipc   ra, 0x1                #; (wrb) ra  <-- 0x80001c88
       0     9586        M 0x80000c8c jalr    ra, ra, -1656          #; ra  = 0x80001c88, (wrb) ra  <-- 0x80000c90, goto 0x80001610
       0     9589        M 0x80001610 addi    sp, sp, -112           #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011fe30
       0     9590        M 0x80001614 sw      ra, 108(sp)            #; sp  = 0x0011fe30, 0x80000c90 ~~> Word[0x0011fe9c]
       0     9591        M 0x80001618 sw      s0, 104(sp)            #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe98]
       0     9592        M 0x8000161c sw      s1, 100(sp)            #; sp  = 0x0011fe30, 8 ~~> Word[0x0011fe94]
       0     9593        M 0x80001620 sw      s2, 96(sp)             #; sp  = 0x0011fe30, 0x80001560 ~~> Word[0x0011fe90]
       0     9594        M 0x80001624 sw      s3, 92(sp)             #; sp  = 0x0011fe30, 0x0011ff30 ~~> Word[0x0011fe8c]
       0     9595        M 0x80001628 sw      s4, 88(sp)             #; sp  = 0x0011fe30, 0x0011ff17 ~~> Word[0x0011fe88]
       0     9596        M 0x8000162c sw      s5, 84(sp)             #; sp  = 0x0011fe30, -1 ~~> Word[0x0011fe84]
       0     9597        M 0x80001630 sw      s6, 80(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe80]
       0     9598        M 0x80001634 sw      s7, 76(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe7c]
       0     9599        M 0x80001638 sw      s8, 72(sp)             #; sp  = 0x0011fe30, 16 ~~> Word[0x0011fe78]
       0     9600        M 0x8000163c sw      s9, 68(sp)             #; sp  = 0x0011fe30, 8 ~~> Word[0x0011fe74]
       0     9601        M 0x80001640 sw      s10, 64(sp)            #; sp  = 0x0011fe30, 0x80002c5b ~~> Word[0x0011fe70]
       0     9604        M 0x80001644 fsd     fs0, 56(sp)            #; 5700.0 ~~> Doub[0x0011fe68]
       0     9605        M 0x80001650 auipc   s1, 0x2                #; (wrb) s1  <-- 0x80003650
                         M 0x80001648 fsd     fs1, 48(sp)            #; 0.0 ~~> Doub[0x0011fe60]
       0     9606        M 0x80001654 addi    s1, s1, -1896          #; s1  = 0x80003650, (wrb) s1  <-- 0x80002ee8
                         M 0x8000164c fsd     fs2, 40(sp)            #; 0.0 ~~> Doub[0x0011fe58]
       0     9609        M 0x80001660 mv      s5, a6                 #; a6  = 0, (wrb) s5  <-- 0
                         M 0x80001658 fld     ft0, 0(s1)             #; ft0  <~~ Doub[0x80002ee8]
       0     9610        M 0x80001664 mv      s2, a5                 #; a5  = 0, (wrb) s2  <-- 0
       0     9611        M 0x80001668 mv      s3, a3                 #; a3  = -1, (wrb) s3  <-- -1
       0     9612        M 0x8000166c mv      s4, a2                 #; a2  = 8, (wrb) s4  <-- 8
       0     9613        M 0x80001670 mv      s6, a1                 #; a1  = 0x0011ff17, (wrb) s6  <-- 0x0011ff17
       0     9614        M 0x80001674 mv      s7, a0                 #; a0  = 0x80001560, (wrb) s7  <-- 0x80001560
       0     9618        M                                           #; (f:lsu) ft0  <-- -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     9619        M 0x8000165c fle.d   s1, ft0, fa0           #; ft0  = -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000, fa0  = 0.0
       0     9621        M                                           #; (acc) a6  <-- 0x0e049863
       0     9622        M 0x80001678 bnez    s1, pc + 240           #; s1  = 1, taken, goto 0x80001768
       0     9626        M 0x8000176c auipc   a0, 0x1                #; (wrb) a0  <-- 0x8000276c
       0     9627        M 0x80001768 fsgnj.d fs0, fa0, fa0          #; fa0  = 0.0, fa0  = 0.0
       0     9628        M 0x80001770 addi    a0, a0, 1924           #; a0  = 0x8000276c, (wrb) a0  <-- 0x80002ef0
                         M                                           #; (f:fpu) fs0  <-- 0.0
       0     9631        M 0x80001774 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002ef0]
       0     9640        M                                           #; (f:lsu) ft0  <-- 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     9641        M 0x80001778 fle.d   a0, fa0, ft0           #; fa0  = 0.0, ft0  = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     9643        M                                           #; (acc) t3  <-- 0x00051e63
       0     9644        M 0x8000177c bnez    a0, pc + 28            #; a0  = 1, taken, goto 0x80001798
       0     9647        M 0x80001798 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002798
       0     9648        M 0x8000179c addi    a0, a0, 1888           #; a0  = 0x80002798, (wrb) a0  <-- 0x80002ef8
       0     9651        M 0x800017a4 auipc   a0, 0x1                #; (wrb) a0  <-- 0x800027a4
       0     9652        M 0x800017a8 addi    a0, a0, 1884           #; a0  = 0x800027a4, (wrb) a0  <-- 0x80002f00
                         M 0x800017a0 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002ef8]
       0     9655        M 0x800017ac fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80002f00]
       0     9661        M                                           #; (f:lsu) ft0  <-- 1000000000.0000000
       0     9662        M 0x800017b0 fle.d   a0, fs0, ft0           #; fs0  = 0.0, ft0  = 1000000000.0000000
       0     9664        M                                           #; (acc) a0  <-- 0x00b57533
                         M                                           #; (f:lsu) ft1  <-- -1000000000.0000000
       0     9665        M 0x800017b4 fle.d   a1, ft1, fs0           #; ft1  = -1000000000.0000000, fs0  = 0.0
       0     9667        M                                           #; (acc) a0  <-- 0x00b57533
       0     9668        M 0x800017b8 and     a0, a0, a1             #; a0  = 1, a1  = 1, (wrb) a0  <-- 1
       0     9669        M 0x800017bc bnez    a0, pc + 252           #; a0  = 1, taken, goto 0x800018b8
       0     9672        M 0x800018b8 andi    a0, s5, 1024           #; s5  = 0, (wrb) a0  <-- 0
       0     9673        M 0x800018bc li      s8, 6                  #; (wrb) s8  <-- 6
       0     9675        M 0x800018c0 beqz    a0, pc + 8             #; a0  = 0, taken, goto 0x800018c8
       0     9676        M 0x800018c8 li      a0, 10                 #; (wrb) a0  <-- 10
       0     9678        M 0x800018d0 bltu    s8, a0, pc + 56        #; s8  = 6, a0  = 10, taken, goto 0x80001908
       0     9679        M 0x800018cc fsgnjx.d fs2, fs0, fs0         #; fs0  = 0.0, fs0  = 0.0
       0     9680        M                                           #; (f:fpu) fs2  <-- 0.0
       0     9683        M 0x80001908 li      s0, 0                  #; (wrb) s0  <-- 0
       0     9684        M 0x8000190c slli    a0, s8, 3              #; s8  = 6, (wrb) a0  <-- 48
       0     9686        M 0x80001910 auipc   a1, 0x1                #; (wrb) a1  <-- 0x80002910
       0     9687        M 0x80001914 addi    a1, a1, 1296           #; a1  = 0x80002910, (wrb) a1  <-- 0x80002e20
       0     9688        M 0x80001918 add     a0, a0, a1             #; a0  = 48, a1  = 0x80002e20, (wrb) a0  <-- 0x80002e50
       0     9691        M 0x8000191c fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80002e50]
       0     9692        M 0x80001920 fcvt.w.d s1, fs2               #; fs2  = 0.0
       0     9696        M 0x80001924 fcvt.d.w ft0, s1               #; ac1  = 0
       0     9697        M                                           #; (f:fpu) ft0  <-- 0.0
       0     9698        M 0x80001930 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002930
                         M 0x80001928 fsub.d  ft0, fs2, ft0          #; fs2  = 0.0, ft0  = 0.0
       0     9699        M 0x80001934 addi    a0, a0, 1496           #; a0  = 0x80002930, (wrb) a0  <-- 0x80002f08
       0     9700        M                                           #; (f:lsu) ft1  <-- 1000000.0000000
       0     9701        M                                           #; (f:fpu) ft0  <-- 0.0
       0     9702        M 0x8000192c fmul.d  ft2, ft1, ft0          #; ft1  = 1000000.0000000, ft0  = 0.0
       0     9703        M 0x80001938 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002f08]
       0     9705        M                                           #; (f:fpu) ft2  <-- 0.0
       0     9706        M 0x8000193c fcvt.wu.d a0, ft2              #; ft2  = 0.0
       0     9708        M                                           #; (acc) gp  <-- 0xd21501d3
       0     9710        M 0x80001940 fcvt.d.wu ft3, a0              #; ac1  = 0
       0     9711        M                                           #; (f:fpu) ft3  <-- 0.0
       0     9712        M 0x80001944 fsub.d  ft2, ft2, ft3          #; ft2  = 0.0, ft3  = 0.0, (f:lsu) ft0  <-- 0.5
       0     9715        M                                           #; (f:fpu) ft2  <-- 0.0
       0     9716        M 0x80001948 fle.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
       0     9719        M 0x8000194c bnez    a1, pc + 32            #; a1  = 1, taken, goto 0x8000196c
       0     9723        M 0x8000196c flt.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
       0     9725        M                                           #; (acc) s4  <-- 0x00059a63
       0     9726        M 0x80001970 bnez    a1, pc + 20            #; a1  = 1, taken, goto 0x80001984
       0     9729        M 0x80001988 beqz    s8, pc + 216           #; s8  = 6, not taken
                         M 0x80001984 fcvt.d.w fs1, zero             #; ac1  = 0
       0     9730        M 0x8000198c li      a2, 0                  #; (wrb) a2  <-- 0
                         M                                           #; (f:fpu) fs1  <-- 0.0
       0     9731        M 0x80001990 addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
       0     9732        M 0x80001994 add     t1, a1, s0             #; a1  = 0x0011fe38, s0  = 0, (wrb) t1  <-- 0x0011fe38
       0     9733        M 0x80001998 li      t0, 32                 #; (wrb) t0  <-- 32
       0     9734        M 0x8000199c sub     a4, t0, s0             #; t0  = 32, s0  = 0, (wrb) a4  <-- 32
       0     9735        M 0x800019a0 lui     a1, 0xccccd            #; (wrb) a1  <-- 0xccccd000
       0     9736        M 0x800019a4 addi    t2, a1, -819           #; a1  = 0xccccd000, (wrb) t2  <-- 0xcccccccd
       0     9737        M 0x800019a8 li      a6, 10                 #; (wrb) a6  <-- 10
       0     9738        M 0x800019ac li      a7, 9                  #; (wrb) a7  <-- 9
       0     9739        M 0x800019b0 beq     a4, a2, pc + 200       #; a4  = 32, a2  = 0, not taken
       0     9740        M 0x800019b4 mv      a1, a0                 #; a0  = 0, (wrb) a1  <-- 0
       0     9741        M 0x800019b8 mulhu   a0, a0, t2             #; a0  = 0, t2  = 0xcccccccd
       0     9744        M                                           #; (acc) a0  <-- 0x00355513
       0     9745        M 0x800019bc srli    a0, a0, 3              #; a0  = 0, (wrb) a0  <-- 0
       0     9746        M 0x800019c0 mul     a3, a0, a6             #; a0  = 0, a6  = 10
       0     9749        M                                           #; (acc) a3  <-- 0x40d586b3
       0     9750        M 0x800019c4 sub     a3, a1, a3             #; a1  = 0, a3  = 0, (wrb) a3  <-- 0
       0     9751        M 0x800019c8 ori     a3, a3, 48             #; a3  = 0, (wrb) a3  <-- 48
       0     9752        M 0x800019cc add     a5, t1, a2             #; t1  = 0x0011fe38, a2  = 0, (wrb) a5  <-- 0x0011fe38
       0     9753        M 0x800019d0 sb      a3, 0(a5)              #; a5  = 0x0011fe38, 48 ~~> Byte[0x0011fe38]
       0     9754        M 0x800019d4 addi    a2, a2, 1              #; a2  = 0, (wrb) a2  <-- 1
       0     9755        M 0x800019d8 bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 0, not taken
       0     9756        M 0x800019dc add     a0, s0, a2             #; s0  = 0, a2  = 1, (wrb) a0  <-- 1
       0     9759        M 0x800019e0 addi    a1, a0, -1             #; a0  = 1, (wrb) a1  <-- 0
       0     9760        M 0x800019e4 li      a3, 30                 #; (wrb) a3  <-- 30
       0     9761        M 0x800019e8 sltu    a3, a3, a1             #; a3  = 30, a1  = 0, (wrb) a3  <-- 0
       0     9762        M 0x800019ec xor     a4, s8, a2             #; s8  = 6, a2  = 1, (wrb) a4  <-- 7
       0     9763        M 0x800019f0 seqz    a4, a4                 #; a4  = 7, (wrb) a4  <-- 0
       0     9764        M 0x800019f4 or      a3, a3, a4             #; a3  = 0, a4  = 0, (wrb) a3  <-- 0
       0     9765        M 0x800019f8 bnez    a3, pc + 136           #; a3  = 0, not taken
       0     9766        M 0x800019fc addi    a0, sp, 8              #; sp  = 0x0011fe30, (wrb) a0  <-- 0x0011fe38
       0     9767        M 0x80001a00 add     a0, a0, s0             #; a0  = 0x0011fe38, s0  = 0, (wrb) a0  <-- 0x0011fe38
       0     9768        M 0x80001a04 not     a1, a2                 #; a2  = 1, (wrb) a1  <-- -2
       0     9769        M 0x80001a08 add     s8, a1, s8             #; a1  = -2, s8  = 6, (wrb) s8  <-- 4
       0     9770        M 0x80001a0c add     s0, s0, a2             #; s0  = 0, a2  = 1, (wrb) s0  <-- 1
       0     9771        M 0x80001a10 li      a1, 31                 #; (wrb) a1  <-- 31
       0     9772        M 0x80001a14 sub     a3, a1, s0             #; a1  = 31, s0  = 1, (wrb) a3  <-- 30
       0     9773        M 0x80001a18 add     a0, a0, a2             #; a0  = 0x0011fe38, a2  = 1, (wrb) a0  <-- 0x0011fe39
       0     9774        M 0x80001a1c mv      a1, s8                 #; s8  = 4, (wrb) a1  <-- 4
       0     9775        M 0x80001a20 bltu    s8, a3, pc + 8         #; s8  = 4, a3  = 30, taken, goto 0x80001a28
       0     9776        M 0x80001a28 addi    a2, a1, 1              #; a1  = 4, (wrb) a2  <-- 5
       0     9777        M 0x80001a2c li      a1, 48                 #; (wrb) a1  <-- 48
       0     9778        M 0x80001a30 auipc   ra, 0xfffff            #; (wrb) ra  <-- 0x80000a30
       0     9779        M 0x80001a34 jalr    ra, ra, -1240          #; ra  = 0x80000a30, (wrb) ra  <-- 0x80001a38, goto 0x80000558
       0     9792        M 0x80000558 li      t1, 15                 #; (wrb) t1  <-- 15
       0     9793        M 0x8000055c mv      a4, a0                 #; a0  = 0x0011fe39, (wrb) a4  <-- 0x0011fe39
       0     9795        M 0x80000560 bgeu    t1, a2, pc + 60        #; t1  = 15, a2  = 5, taken, goto 0x8000059c
       0     9800        M 0x8000059c sub     a3, t1, a2             #; t1  = 15, a2  = 5, (wrb) a3  <-- 10
       0     9803        M 0x800005a0 slli    a3, a3, 2              #; a3  = 10, (wrb) a3  <-- 40
       0     9804        M 0x800005a4 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800005a4
       0     9805        M 0x800005a8 add     a3, a3, t0             #; a3  = 40, t0  = 0x800005a4, (wrb) a3  <-- 0x800005cc
       0     9806        M 0x800005ac jalr    zero, a3, 12           #; a3  = 0x800005cc, goto 0x800005d8
       0     9818        M 0x800005d8 sb      a1, 4(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3d]
       0     9819        M 0x800005dc sb      a1, 3(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3c]
       0     9830        M 0x800005e0 sb      a1, 2(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3b]
       0     9831        M 0x800005e4 sb      a1, 1(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3a]
       0     9832        M 0x800005e8 sb      a1, 0(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe39]
       0     9833        M 0x800005ec ret                            #; ra  = 0x80001a38, goto 0x80001a38
       0     9844        M 0x80001a38 li      a0, 0                  #; (wrb) a0  <-- 0
       0     9845        M 0x80001a3c add     a1, s0, a0             #; s0  = 1, a0  = 0, (wrb) a1  <-- 1
       0     9847        M 0x80001a40 sltiu   a1, a1, 31             #; a1  = 1, (wrb) a1  <-- 1
       0     9848        M 0x80001a44 xor     a2, s8, a0             #; s8  = 4, a0  = 0, (wrb) a2  <-- 4
       0     9849        M 0x80001a48 snez    a2, a2                 #; a2  = 4, (wrb) a2  <-- 1
       0     9850        M 0x80001a4c and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     9851        M 0x80001a50 addi    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0     9852        M 0x80001a54 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001a3c
       0     9853        M 0x80001a3c add     a1, s0, a0             #; s0  = 1, a0  = 1, (wrb) a1  <-- 2
       0     9854        M 0x80001a40 sltiu   a1, a1, 31             #; a1  = 2, (wrb) a1  <-- 1
       0     9855        M 0x80001a44 xor     a2, s8, a0             #; s8  = 4, a0  = 1, (wrb) a2  <-- 5
       0     9856        M 0x80001a48 snez    a2, a2                 #; a2  = 5, (wrb) a2  <-- 1
       0     9857        M 0x80001a4c and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     9858        M 0x80001a50 addi    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 2
       0     9859        M 0x80001a54 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001a3c
       0     9860        M 0x80001a3c add     a1, s0, a0             #; s0  = 1, a0  = 2, (wrb) a1  <-- 3
       0     9861        M 0x80001a40 sltiu   a1, a1, 31             #; a1  = 3, (wrb) a1  <-- 1
       0     9862        M 0x80001a44 xor     a2, s8, a0             #; s8  = 4, a0  = 2, (wrb) a2  <-- 6
       0     9863        M 0x80001a48 snez    a2, a2                 #; a2  = 6, (wrb) a2  <-- 1
       0     9864        M 0x80001a4c and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     9865        M 0x80001a50 addi    a0, a0, 1              #; a0  = 2, (wrb) a0  <-- 3
       0     9866        M 0x80001a54 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001a3c
       0     9867        M 0x80001a3c add     a1, s0, a0             #; s0  = 1, a0  = 3, (wrb) a1  <-- 4
       0     9868        M 0x80001a40 sltiu   a1, a1, 31             #; a1  = 4, (wrb) a1  <-- 1
       0     9869        M 0x80001a44 xor     a2, s8, a0             #; s8  = 4, a0  = 3, (wrb) a2  <-- 7
       0     9870        M 0x80001a48 snez    a2, a2                 #; a2  = 7, (wrb) a2  <-- 1
       0     9871        M 0x80001a4c and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     9872        M 0x80001a50 addi    a0, a0, 1              #; a0  = 3, (wrb) a0  <-- 4
       0     9873        M 0x80001a54 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001a3c
       0     9874        M 0x80001a3c add     a1, s0, a0             #; s0  = 1, a0  = 4, (wrb) a1  <-- 5
       0     9875        M 0x80001a40 sltiu   a1, a1, 31             #; a1  = 5, (wrb) a1  <-- 1
       0     9876        M 0x80001a44 xor     a2, s8, a0             #; s8  = 4, a0  = 4, (wrb) a2  <-- 0
       0     9877        M 0x80001a48 snez    a2, a2                 #; a2  = 0, (wrb) a2  <-- 0
       0     9878        M 0x80001a4c and     a2, a1, a2             #; a1  = 1, a2  = 0, (wrb) a2  <-- 0
       0     9879        M 0x80001a50 addi    a0, a0, 1              #; a0  = 4, (wrb) a0  <-- 5
       0     9880        M 0x80001a54 bnez    a2, pc - 24            #; a2  = 0, not taken
       0     9881        M 0x80001a58 add     a0, s0, a0             #; s0  = 1, a0  = 5, (wrb) a0  <-- 6
       0     9882        M 0x80001a5c j       pc + 0x28              #; goto 0x80001a84
       0     9884        M 0x80001a84 beqz    a1, pc + 28            #; a1  = 1, not taken
       0     9885        M 0x80001a88 addi    s0, a0, 1              #; a0  = 6, (wrb) s0  <-- 7
       0     9886        M 0x80001a8c addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
       0     9887        M 0x80001a90 add     a0, a1, a0             #; a1  = 0x0011fe38, a0  = 6, (wrb) a0  <-- 0x0011fe3e
       0     9888        M 0x80001a94 li      a1, 46                 #; (wrb) a1  <-- 46
       0     9889        M 0x80001a98 sb      a1, 0(a0)              #; a0  = 0x0011fe3e, 46 ~~> Byte[0x0011fe3e]
       0     9890        M 0x80001a9c j       pc + 0x8               #; goto 0x80001aa4
       0     9891        M 0x80001aa4 li      a0, 32                 #; (wrb) a0  <-- 32
       0     9892        M 0x80001aa8 mv      t0, s0                 #; s0  = 7, (wrb) t0  <-- 7
       0     9893        M 0x80001aac bltu    a0, s0, pc + 8         #; a0  = 32, s0  = 7, not taken
       0     9894        M 0x80001ab0 li      t0, 32                 #; (wrb) t0  <-- 32
       0     9896        M 0x80001ab8 lui     a0, 0x66666            #; (wrb) a0  <-- 0x66666000
                         M 0x80001ab4 flt.d   s9, fs0, fs1           #; fs0  = 0.0, fs1  = 0.0
       0     9897        M 0x80001abc addi    a1, a0, 1639           #; a0  = 0x66666000, (wrb) a1  <-- 0x66666667
       0     9906        M 0x80001ac0 li      a6, 10                 #; (wrb) a6  <-- 10
       0     9907        M 0x80001ac4 addi    a3, sp, 8              #; sp  = 0x0011fe30, (wrb) a3  <-- 0x0011fe38
       0     9908        M 0x80001ac8 li      a4, 18                 #; (wrb) a4  <-- 18
       0     9909        M 0x80001acc beq     t0, s0, pc + 64        #; t0  = 32, s0  = 7, not taken
       0     9910        M 0x80001ad0 mulh    a0, s1, a1             #; s1  = 0, a1  = 0x66666667
       0     9913        M                                           #; (acc) a5  <-- 0x01f55793
       0     9914        M 0x80001ad4 srli    a5, a0, 31             #; a0  = 0, (wrb) a5  <-- 0
       0     9915        M 0x80001ad8 srai    a0, a0, 2              #; a0  = 0, (wrb) a0  <-- 0
       0     9916        M 0x80001adc add     a0, a0, a5             #; a0  = 0, a5  = 0, (wrb) a0  <-- 0
       0     9917        M 0x80001ae0 mul     a5, a0, a6             #; a0  = 0, a6  = 10
       0     9920        M                                           #; (acc) a5  <-- 0x40f487b3
       0     9921        M 0x80001ae4 sub     a5, s1, a5             #; s1  = 0, a5  = 0, (wrb) a5  <-- 0
       0     9922        M 0x80001ae8 addi    a5, a5, 48             #; a5  = 0, (wrb) a5  <-- 48
       0     9923        M 0x80001aec addi    s8, s0, 1              #; s0  = 7, (wrb) s8  <-- 8
       0     9924        M 0x80001af0 add     s0, a3, s0             #; a3  = 0x0011fe38, s0  = 7, (wrb) s0  <-- 0x0011fe3f
       0     9925        M 0x80001af4 addi    a2, s1, 9              #; s1  = 0, (wrb) a2  <-- 9
       0     9926        M 0x80001af8 sb      a5, 0(s0)              #; s0  = 0x0011fe3f, 48 ~~> Byte[0x0011fe3f]
       0     9927        M 0x80001afc mv      s0, s8                 #; s8  = 8, (wrb) s0  <-- 8
       0     9928        M 0x80001b00 mv      s1, a0                 #; a0  = 0, (wrb) s1  <-- 0
       0     9929        M 0x80001b04 bltu    a4, a2, pc - 56        #; a4  = 18, a2  = 9, not taken
       0     9930        M 0x80001b08 j       pc + 0x8               #; goto 0x80001b10
       0     9933        M 0x80001b10 andi    s1, s5, 3              #; s5  = 0, (wrb) s1  <-- 0
       0     9934        M 0x80001b14 li      a0, 1                  #; (wrb) a0  <-- 1
       0     9935        M 0x80001b18 bne     s1, a0, pc + 108       #; s1  = 0, a0  = 1, taken, goto 0x80001b84
       0     9938        M 0x80001b84 li      a0, 31                 #; (wrb) a0  <-- 31
       0     9939        M 0x80001b88 bltu    a0, s8, pc + 84        #; a0  = 31, s8  = 8, not taken
       0     9940        M 0x80001b8c beqz    s9, pc + 24            #; s9  = 0, taken, goto 0x80001ba4
       0     9943        M 0x80001ba4 andi    a0, s5, 4              #; s5  = 0, (wrb) a0  <-- 0
       0     9944        M 0x80001ba8 bnez    a0, pc + 32            #; a0  = 0, not taken
       0     9945        M 0x80001bac andi    a0, s5, 8              #; s5  = 0, (wrb) a0  <-- 0
       0     9946        M 0x80001bb0 beqz    a0, pc + 44            #; a0  = 0, taken, goto 0x80001bdc
       0     9951        M 0x80001bdc snez    a0, s1                 #; s1  = 0, (wrb) a0  <-- 0
       0     9954        M 0x80001be0 sltu    a1, s8, s2             #; s8  = 8, s2  = 0, (wrb) a1  <-- 0
       0     9955        M 0x80001be4 xori    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
       0     9956        M 0x80001be8 or      a0, a0, a1             #; a0  = 0, a1  = 1, (wrb) a0  <-- 1
       0     9957        M 0x80001bec andi    s5, s5, 2              #; s5  = 0, (wrb) s5  <-- 0
       0     9958        M 0x80001bf0 mv      s0, s4                 #; s4  = 8, (wrb) s0  <-- 8
       0     9959        M 0x80001bf4 bnez    a0, pc + 44            #; a0  = 1, taken, goto 0x80001c20
       0     9963        M 0x80001c20 srli    s5, s5, 1              #; s5  = 0, (wrb) s5  <-- 0
       0     9964        M 0x80001c24 beqz    s8, pc + 56            #; s8  = 8, not taken
       0     9965        M 0x80001c28 addi    s9, sp, 7              #; sp  = 0x0011fe30, (wrb) s9  <-- 0x0011fe37
       0     9966        M 0x80001c2c add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 8, (wrb) a0  <-- 0x0011fe3f
       0     9967        M 0x80001c30 lbu     a0, 0(a0)              #; a0  = 0x0011fe3f, a0  <~~ Byte[0x0011fe3f]
       0     9968        M 0x80001c34 addi    s10, s8, -1            #; s8  = 8, (wrb) s10 <-- 7
       0     9969        M 0x80001c38 addi    s1, s0, 1              #; s0  = 8, (wrb) s1  <-- 9
       0     9970        M 0x80001c3c mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     9971        M 0x80001c40 mv      a2, s0                 #; s0  = 8, (wrb) a2  <-- 8
       0     9972        M 0x80001c44 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     9973        M 0x80001c48 jalr    s7                     #; s7  = 0x80001560, (wrb) ra  <-- 0x80001c4c, goto 0x80001560
       0     9974        M                                           #; (lsu) a0  <-- 48
       0     9976        M 0x80001560 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     9977        M 0x80001564 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     9978        M 0x80001568 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     9979        M 0x8000156c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     9980        M 0x80001570 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003570
       0     9981        M 0x80001574 addi    a3, a3, -1500          #; a3  = 0x80003570, (wrb) a3  <-- 0x80002f94
       0     9982        M                                           #; (acc) a1  <-- 0x00d605b3
       0     9983        M 0x80001578 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
       0     9984        M 0x8000157c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     9995        M                                           #; (lsu) a4  <-- 8
       0     9996        M 0x80001580 addi    a5, a4, 1              #; a4  = 8, (wrb) a5  <-- 9
       0     9997        M 0x80001584 sw      a5, 0(a1)              #; a1  = 0x80002f94, 9 ~~> Word[0x80002f94]
       0     9998        M 0x80001588 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 8, (wrb) a4  <-- 0x80002f9c
       0     9999        M 0x8000158c sb      a0, 72(a4)             #; a4  = 0x80002f9c, 48 ~~> Byte[0x80002fe4]
       0    10000        M 0x80001590 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0    10021        M                                           #; (lsu) a4  <-- 9
       0    10022        M 0x80001594 addi    a4, a4, -1020          #; a4  = 9, (wrb) a4  <-- -1011
       0    10023        M 0x80001598 snez    a4, a4                 #; a4  = -1011, (wrb) a4  <-- 1
       0    10024        M 0x8000159c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0    10025        M 0x800015a0 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0    10026        M 0x800015a4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0    10027        M 0x800015a8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001608
       0    10030        M 0x80001608 ret                            #; ra  = 0x80001c4c, goto 0x80001c4c
       0    10035        M 0x80001c4c mv      s0, s1                 #; s1  = 9, (wrb) s0  <-- 9
       0    10038        M 0x80001c50 mv      s8, s10                #; s10 = 7, (wrb) s8  <-- 7
       0    10039        M 0x80001c54 bnez    s10, pc - 40           #; s10 = 7, taken, goto 0x80001c2c
       0    10041        M 0x80001c2c add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 7, (wrb) a0  <-- 0x0011fe3e
       0    10044        M 0x80001c30 lbu     a0, 0(a0)              #; a0  = 0x0011fe3e, a0  <~~ Byte[0x0011fe3e]
       0    10045        M 0x80001c34 addi    s10, s8, -1            #; s8  = 7, (wrb) s10 <-- 6
       0    10046        M 0x80001c38 addi    s1, s0, 1              #; s0  = 9, (wrb) s1  <-- 10
       0    10047        M 0x80001c3c mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0    10048        M 0x80001c40 mv      a2, s0                 #; s0  = 9, (wrb) a2  <-- 9
       0    10049        M 0x80001c44 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0    10050        M 0x80001c48 jalr    s7                     #; s7  = 0x80001560, (wrb) ra  <-- 0x80001c4c, goto 0x80001560
       0    10051        M                                           #; (lsu) a0  <-- 46
       0    10053        M 0x80001560 beqz    a0, pc + 168           #; a0  = 46, not taken
       0    10054        M 0x80001564 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0    10055        M 0x80001568 li      a2, 1096               #; (wrb) a2  <-- 1096
       0    10056        M 0x8000156c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0    10057        M 0x80001570 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003570
       0    10058        M 0x80001574 addi    a3, a3, -1500          #; a3  = 0x80003570, (wrb) a3  <-- 0x80002f94
       0    10059        M                                           #; (acc) a1  <-- 0x00d605b3
       0    10060        M 0x80001578 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
       0    10061        M 0x8000157c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0    10072        M                                           #; (lsu) a4  <-- 9
       0    10073        M 0x80001580 addi    a5, a4, 1              #; a4  = 9, (wrb) a5  <-- 10
       0    10074        M 0x80001584 sw      a5, 0(a1)              #; a1  = 0x80002f94, 10 ~~> Word[0x80002f94]
       0    10075        M 0x80001588 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 9, (wrb) a4  <-- 0x80002f9d
       0    10076        M 0x8000158c sb      a0, 72(a4)             #; a4  = 0x80002f9d, 46 ~~> Byte[0x80002fe5]
       0    10077        M 0x80001590 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0    10098        M                                           #; (lsu) a4  <-- 10
       0    10099        M 0x80001594 addi    a4, a4, -1020          #; a4  = 10, (wrb) a4  <-- -1010
       0    10100        M 0x80001598 snez    a4, a4                 #; a4  = -1010, (wrb) a4  <-- 1
       0    10101        M 0x8000159c addi    a0, a0, -10            #; a0  = 46, (wrb) a0  <-- 36
       0    10102        M 0x800015a0 snez    a0, a0                 #; a0  = 36, (wrb) a0  <-- 1
       0    10103        M 0x800015a4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0    10104        M 0x800015a8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001608
       0    10107        M 0x80001608 ret                            #; ra  = 0x80001c4c, goto 0x80001c4c
       0    10112        M 0x80001c4c mv      s0, s1                 #; s1  = 10, (wrb) s0  <-- 10
       0    10115        M 0x80001c50 mv      s8, s10                #; s10 = 6, (wrb) s8  <-- 6
       0    10116        M 0x80001c54 bnez    s10, pc - 40           #; s10 = 6, taken, goto 0x80001c2c
       0    10118        M 0x80001c2c add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 6, (wrb) a0  <-- 0x0011fe3d
       0    10121        M 0x80001c30 lbu     a0, 0(a0)              #; a0  = 0x0011fe3d, a0  <~~ Byte[0x0011fe3d]
       0    10122        M 0x80001c34 addi    s10, s8, -1            #; s8  = 6, (wrb) s10 <-- 5
       0    10123        M 0x80001c38 addi    s1, s0, 1              #; s0  = 10, (wrb) s1  <-- 11
       0    10124        M 0x80001c3c mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0    10125        M 0x80001c40 mv      a2, s0                 #; s0  = 10, (wrb) a2  <-- 10
       0    10126        M 0x80001c44 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0    10127        M 0x80001c48 jalr    s7                     #; s7  = 0x80001560, (wrb) ra  <-- 0x80001c4c, goto 0x80001560
       0    10128        M                                           #; (lsu) a0  <-- 48
       0    10130        M 0x80001560 beqz    a0, pc + 168           #; a0  = 48, not taken
       0    10131        M 0x80001564 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0    10132        M 0x80001568 li      a2, 1096               #; (wrb) a2  <-- 1096
       0    10133        M 0x8000156c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0    10134        M 0x80001570 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003570
       0    10135        M 0x80001574 addi    a3, a3, -1500          #; a3  = 0x80003570, (wrb) a3  <-- 0x80002f94
       0    10136        M                                           #; (acc) a1  <-- 0x00d605b3
       0    10137        M 0x80001578 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
       0    10138        M 0x8000157c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0    10149        M                                           #; (lsu) a4  <-- 10
       0    10150        M 0x80001580 addi    a5, a4, 1              #; a4  = 10, (wrb) a5  <-- 11
       0    10151        M 0x80001584 sw      a5, 0(a1)              #; a1  = 0x80002f94, 11 ~~> Word[0x80002f94]
       0    10152        M 0x80001588 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 10, (wrb) a4  <-- 0x80002f9e
       0    10153        M 0x8000158c sb      a0, 72(a4)             #; a4  = 0x80002f9e, 48 ~~> Byte[0x80002fe6]
       0    10154        M 0x80001590 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0    10175        M                                           #; (lsu) a4  <-- 11
       0    10176        M 0x80001594 addi    a4, a4, -1020          #; a4  = 11, (wrb) a4  <-- -1009
       0    10177        M 0x80001598 snez    a4, a4                 #; a4  = -1009, (wrb) a4  <-- 1
       0    10178        M 0x8000159c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0    10179        M 0x800015a0 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0    10180        M 0x800015a4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0    10181        M 0x800015a8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001608
       0    10184        M 0x80001608 ret                            #; ra  = 0x80001c4c, goto 0x80001c4c
       0    10189        M 0x80001c4c mv      s0, s1                 #; s1  = 11, (wrb) s0  <-- 11
       0    10192        M 0x80001c50 mv      s8, s10                #; s10 = 5, (wrb) s8  <-- 5
       0    10193        M 0x80001c54 bnez    s10, pc - 40           #; s10 = 5, taken, goto 0x80001c2c
       0    10195        M 0x80001c2c add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 5, (wrb) a0  <-- 0x0011fe3c
       0    10198        M 0x80001c30 lbu     a0, 0(a0)              #; a0  = 0x0011fe3c, a0  <~~ Byte[0x0011fe3c]
       0    10199        M 0x80001c34 addi    s10, s8, -1            #; s8  = 5, (wrb) s10 <-- 4
       0    10200        M 0x80001c38 addi    s1, s0, 1              #; s0  = 11, (wrb) s1  <-- 12
       0    10201        M 0x80001c3c mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0    10202        M 0x80001c40 mv      a2, s0                 #; s0  = 11, (wrb) a2  <-- 11
       0    10203        M 0x80001c44 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0    10204        M 0x80001c48 jalr    s7                     #; s7  = 0x80001560, (wrb) ra  <-- 0x80001c4c, goto 0x80001560
       0    10205        M                                           #; (lsu) a0  <-- 48
       0    10207        M 0x80001560 beqz    a0, pc + 168           #; a0  = 48, not taken
       0    10208        M 0x80001564 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0    10209        M 0x80001568 li      a2, 1096               #; (wrb) a2  <-- 1096
       0    10210        M 0x8000156c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0    10211        M 0x80001570 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003570
       0    10212        M 0x80001574 addi    a3, a3, -1500          #; a3  = 0x80003570, (wrb) a3  <-- 0x80002f94
       0    10213        M                                           #; (acc) a1  <-- 0x00d605b3
       0    10214        M 0x80001578 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
       0    10215        M 0x8000157c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0    10226        M                                           #; (lsu) a4  <-- 11
       0    10227        M 0x80001580 addi    a5, a4, 1              #; a4  = 11, (wrb) a5  <-- 12
       0    10228        M 0x80001584 sw      a5, 0(a1)              #; a1  = 0x80002f94, 12 ~~> Word[0x80002f94]
       0    10229        M 0x80001588 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 11, (wrb) a4  <-- 0x80002f9f
       0    10230        M 0x8000158c sb      a0, 72(a4)             #; a4  = 0x80002f9f, 48 ~~> Byte[0x80002fe7]
       0    10231        M 0x80001590 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0    10252        M                                           #; (lsu) a4  <-- 12
       0    10253        M 0x80001594 addi    a4, a4, -1020          #; a4  = 12, (wrb) a4  <-- -1008
       0    10254        M 0x80001598 snez    a4, a4                 #; a4  = -1008, (wrb) a4  <-- 1
       0    10255        M 0x8000159c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0    10256        M 0x800015a0 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0    10257        M 0x800015a4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0    10258        M 0x800015a8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001608
       0    10261        M 0x80001608 ret                            #; ra  = 0x80001c4c, goto 0x80001c4c
       0    10266        M 0x80001c4c mv      s0, s1                 #; s1  = 12, (wrb) s0  <-- 12
       0    10269        M 0x80001c50 mv      s8, s10                #; s10 = 4, (wrb) s8  <-- 4
       0    10270        M 0x80001c54 bnez    s10, pc - 40           #; s10 = 4, taken, goto 0x80001c2c
       0    10272        M 0x80001c2c add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 4, (wrb) a0  <-- 0x0011fe3b
       0    10275        M 0x80001c30 lbu     a0, 0(a0)              #; a0  = 0x0011fe3b, a0  <~~ Byte[0x0011fe3b]
       0    10276        M 0x80001c34 addi    s10, s8, -1            #; s8  = 4, (wrb) s10 <-- 3
       0    10277        M 0x80001c38 addi    s1, s0, 1              #; s0  = 12, (wrb) s1  <-- 13
       0    10278        M 0x80001c3c mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0    10279        M 0x80001c40 mv      a2, s0                 #; s0  = 12, (wrb) a2  <-- 12
       0    10280        M 0x80001c44 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0    10281        M 0x80001c48 jalr    s7                     #; s7  = 0x80001560, (wrb) ra  <-- 0x80001c4c, goto 0x80001560
       0    10282        M                                           #; (lsu) a0  <-- 48
       0    10284        M 0x80001560 beqz    a0, pc + 168           #; a0  = 48, not taken
       0    10285        M 0x80001564 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0    10286        M 0x80001568 li      a2, 1096               #; (wrb) a2  <-- 1096
       0    10287        M 0x8000156c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0    10288        M 0x80001570 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003570
       0    10289        M 0x80001574 addi    a3, a3, -1500          #; a3  = 0x80003570, (wrb) a3  <-- 0x80002f94
       0    10290        M                                           #; (acc) a1  <-- 0x00d605b3
       0    10291        M 0x80001578 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
       0    10292        M 0x8000157c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0    10303        M                                           #; (lsu) a4  <-- 12
       0    10304        M 0x80001580 addi    a5, a4, 1              #; a4  = 12, (wrb) a5  <-- 13
       0    10305        M 0x80001584 sw      a5, 0(a1)              #; a1  = 0x80002f94, 13 ~~> Word[0x80002f94]
       0    10306        M 0x80001588 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 12, (wrb) a4  <-- 0x80002fa0
       0    10307        M 0x8000158c sb      a0, 72(a4)             #; a4  = 0x80002fa0, 48 ~~> Byte[0x80002fe8]
       0    10308        M 0x80001590 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0    10329        M                                           #; (lsu) a4  <-- 13
       0    10330        M 0x80001594 addi    a4, a4, -1020          #; a4  = 13, (wrb) a4  <-- -1007
       0    10331        M 0x80001598 snez    a4, a4                 #; a4  = -1007, (wrb) a4  <-- 1
       0    10332        M 0x8000159c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0    10333        M 0x800015a0 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0    10334        M 0x800015a4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0    10335        M 0x800015a8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001608
       0    10338        M 0x80001608 ret                            #; ra  = 0x80001c4c, goto 0x80001c4c
       0    10343        M 0x80001c4c mv      s0, s1                 #; s1  = 13, (wrb) s0  <-- 13
       0    10346        M 0x80001c50 mv      s8, s10                #; s10 = 3, (wrb) s8  <-- 3
       0    10347        M 0x80001c54 bnez    s10, pc - 40           #; s10 = 3, taken, goto 0x80001c2c
       0    10349        M 0x80001c2c add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 3, (wrb) a0  <-- 0x0011fe3a
       0    10352        M 0x80001c30 lbu     a0, 0(a0)              #; a0  = 0x0011fe3a, a0  <~~ Byte[0x0011fe3a]
       0    10353        M 0x80001c34 addi    s10, s8, -1            #; s8  = 3, (wrb) s10 <-- 2
       0    10354        M 0x80001c38 addi    s1, s0, 1              #; s0  = 13, (wrb) s1  <-- 14
       0    10355        M 0x80001c3c mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0    10356        M 0x80001c40 mv      a2, s0                 #; s0  = 13, (wrb) a2  <-- 13
       0    10357        M 0x80001c44 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0    10358        M 0x80001c48 jalr    s7                     #; s7  = 0x80001560, (wrb) ra  <-- 0x80001c4c, goto 0x80001560
       0    10359        M                                           #; (lsu) a0  <-- 48
       0    10361        M 0x80001560 beqz    a0, pc + 168           #; a0  = 48, not taken
       0    10362        M 0x80001564 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0    10363        M 0x80001568 li      a2, 1096               #; (wrb) a2  <-- 1096
       0    10364        M 0x8000156c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0    10365        M 0x80001570 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003570
       0    10366        M 0x80001574 addi    a3, a3, -1500          #; a3  = 0x80003570, (wrb) a3  <-- 0x80002f94
       0    10367        M                                           #; (acc) a1  <-- 0x00d605b3
       0    10368        M 0x80001578 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
       0    10369        M 0x8000157c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0    10380        M                                           #; (lsu) a4  <-- 13
       0    10381        M 0x80001580 addi    a5, a4, 1              #; a4  = 13, (wrb) a5  <-- 14
       0    10382        M 0x80001584 sw      a5, 0(a1)              #; a1  = 0x80002f94, 14 ~~> Word[0x80002f94]
       0    10383        M 0x80001588 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 13, (wrb) a4  <-- 0x80002fa1
       0    10384        M 0x8000158c sb      a0, 72(a4)             #; a4  = 0x80002fa1, 48 ~~> Byte[0x80002fe9]
       0    10385        M 0x80001590 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0    10406        M                                           #; (lsu) a4  <-- 14
       0    10407        M 0x80001594 addi    a4, a4, -1020          #; a4  = 14, (wrb) a4  <-- -1006
       0    10408        M 0x80001598 snez    a4, a4                 #; a4  = -1006, (wrb) a4  <-- 1
       0    10409        M 0x8000159c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0    10410        M 0x800015a0 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0    10411        M 0x800015a4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0    10412        M 0x800015a8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001608
       0    10415        M 0x80001608 ret                            #; ra  = 0x80001c4c, goto 0x80001c4c
       0    10420        M 0x80001c4c mv      s0, s1                 #; s1  = 14, (wrb) s0  <-- 14
       0    10423        M 0x80001c50 mv      s8, s10                #; s10 = 2, (wrb) s8  <-- 2
       0    10424        M 0x80001c54 bnez    s10, pc - 40           #; s10 = 2, taken, goto 0x80001c2c
       0    10426        M 0x80001c2c add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 2, (wrb) a0  <-- 0x0011fe39
       0    10429        M 0x80001c30 lbu     a0, 0(a0)              #; a0  = 0x0011fe39, a0  <~~ Byte[0x0011fe39]
       0    10430        M 0x80001c34 addi    s10, s8, -1            #; s8  = 2, (wrb) s10 <-- 1
       0    10431        M 0x80001c38 addi    s1, s0, 1              #; s0  = 14, (wrb) s1  <-- 15
       0    10432        M 0x80001c3c mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0    10433        M 0x80001c40 mv      a2, s0                 #; s0  = 14, (wrb) a2  <-- 14
       0    10434        M 0x80001c44 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0    10435        M 0x80001c48 jalr    s7                     #; s7  = 0x80001560, (wrb) ra  <-- 0x80001c4c, goto 0x80001560
       0    10436        M                                           #; (lsu) a0  <-- 48
       0    10438        M 0x80001560 beqz    a0, pc + 168           #; a0  = 48, not taken
       0    10439        M 0x80001564 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0    10440        M 0x80001568 li      a2, 1096               #; (wrb) a2  <-- 1096
       0    10441        M 0x8000156c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0    10442        M 0x80001570 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003570
       0    10443        M 0x80001574 addi    a3, a3, -1500          #; a3  = 0x80003570, (wrb) a3  <-- 0x80002f94
       0    10444        M                                           #; (acc) a1  <-- 0x00d605b3
       0    10445        M 0x80001578 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
       0    10446        M 0x8000157c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0    10457        M                                           #; (lsu) a4  <-- 14
       0    10458        M 0x80001580 addi    a5, a4, 1              #; a4  = 14, (wrb) a5  <-- 15
       0    10459        M 0x80001584 sw      a5, 0(a1)              #; a1  = 0x80002f94, 15 ~~> Word[0x80002f94]
       0    10460        M 0x80001588 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 14, (wrb) a4  <-- 0x80002fa2
       0    10461        M 0x8000158c sb      a0, 72(a4)             #; a4  = 0x80002fa2, 48 ~~> Byte[0x80002fea]
       0    10462        M 0x80001590 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0    10483        M                                           #; (lsu) a4  <-- 15
       0    10484        M 0x80001594 addi    a4, a4, -1020          #; a4  = 15, (wrb) a4  <-- -1005
       0    10485        M 0x80001598 snez    a4, a4                 #; a4  = -1005, (wrb) a4  <-- 1
       0    10486        M 0x8000159c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0    10487        M 0x800015a0 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0    10488        M 0x800015a4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0    10489        M 0x800015a8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001608
       0    10492        M 0x80001608 ret                            #; ra  = 0x80001c4c, goto 0x80001c4c
       0    10497        M 0x80001c4c mv      s0, s1                 #; s1  = 15, (wrb) s0  <-- 15
       0    10500        M 0x80001c50 mv      s8, s10                #; s10 = 1, (wrb) s8  <-- 1
       0    10501        M 0x80001c54 bnez    s10, pc - 40           #; s10 = 1, taken, goto 0x80001c2c
       0    10503        M 0x80001c2c add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 1, (wrb) a0  <-- 0x0011fe38
       0    10506        M 0x80001c30 lbu     a0, 0(a0)              #; a0  = 0x0011fe38, a0  <~~ Byte[0x0011fe38]
       0    10507        M 0x80001c34 addi    s10, s8, -1            #; s8  = 1, (wrb) s10 <-- 0
       0    10508        M 0x80001c38 addi    s1, s0, 1              #; s0  = 15, (wrb) s1  <-- 16
       0    10509        M 0x80001c3c mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0    10510        M 0x80001c40 mv      a2, s0                 #; s0  = 15, (wrb) a2  <-- 15
       0    10511        M 0x80001c44 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0    10512        M 0x80001c48 jalr    s7                     #; s7  = 0x80001560, (wrb) ra  <-- 0x80001c4c, goto 0x80001560
       0    10513        M                                           #; (lsu) a0  <-- 48
       0    10515        M 0x80001560 beqz    a0, pc + 168           #; a0  = 48, not taken
       0    10516        M 0x80001564 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0    10517        M 0x80001568 li      a2, 1096               #; (wrb) a2  <-- 1096
       0    10518        M 0x8000156c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0    10519        M 0x80001570 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003570
       0    10520        M 0x80001574 addi    a3, a3, -1500          #; a3  = 0x80003570, (wrb) a3  <-- 0x80002f94
       0    10521        M                                           #; (acc) a1  <-- 0x00d605b3
       0    10522        M 0x80001578 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
       0    10523        M 0x8000157c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0    10534        M                                           #; (lsu) a4  <-- 15
       0    10535        M 0x80001580 addi    a5, a4, 1              #; a4  = 15, (wrb) a5  <-- 16
       0    10536        M 0x80001584 sw      a5, 0(a1)              #; a1  = 0x80002f94, 16 ~~> Word[0x80002f94]
       0    10537        M 0x80001588 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 15, (wrb) a4  <-- 0x80002fa3
       0    10538        M 0x8000158c sb      a0, 72(a4)             #; a4  = 0x80002fa3, 48 ~~> Byte[0x80002feb]
       0    10539        M 0x80001590 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0    10560        M                                           #; (lsu) a4  <-- 16
       0    10561        M 0x80001594 addi    a4, a4, -1020          #; a4  = 16, (wrb) a4  <-- -1004
       0    10562        M 0x80001598 snez    a4, a4                 #; a4  = -1004, (wrb) a4  <-- 1
       0    10563        M 0x8000159c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0    10564        M 0x800015a0 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0    10565        M 0x800015a4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0    10566        M 0x800015a8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001608
       0    10569        M 0x80001608 ret                            #; ra  = 0x80001c4c, goto 0x80001c4c
       0    10574        M 0x80001c4c mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
       0    10577        M 0x80001c50 mv      s8, s10                #; s10 = 0, (wrb) s8  <-- 0
       0    10578        M 0x80001c54 bnez    s10, pc - 40           #; s10 = 0, not taken
       0    10579        M 0x80001c58 j       pc + 0x8               #; goto 0x80001c60
       0    10582        M 0x80001c60 sub     a0, s1, s4             #; s1  = 16, s4  = 8, (wrb) a0  <-- 8
       0    10583        M 0x80001c64 sltu    a0, a0, s2             #; a0  = 8, s2  = 0, (wrb) a0  <-- 0
       0    10584        M 0x80001c68 xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0    10585        M 0x80001c6c xori    a1, s5, 1              #; s5  = 0, (wrb) a1  <-- 1
       0    10586        M 0x80001c70 or      a0, a1, a0             #; a1  = 1, a0  = 1, (wrb) a0  <-- 1
       0    10587        M 0x80001c74 bnez    a0, pc + 48            #; a0  = 1, taken, goto 0x80001ca4
       0    10591        M 0x80001ca4 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
       0    10592        M 0x80001ca8 mv      a0, s0                 #; s0  = 16, (wrb) a0  <-- 16
       0    10595        M 0x80001cac fld     fs2, 40(sp)            #; fs2  <~~ Doub[0x0011fe58]
       0    10596        M 0x80001cb8 lw      s10, 64(sp)            #; sp  = 0x0011fe30, s10 <~~ Word[0x0011fe70]
                         M 0x80001cb0 fld     fs1, 48(sp)            #; fs1  <~~ Doub[0x0011fe60], (f:lsu) fs2  <-- 0.0
       0    10597        M 0x80001cb4 fld     fs0, 56(sp)            #; fs0  <~~ Doub[0x0011fe68], (f:lsu) fs1  <-- 0.0
       0    10598        M                                           #; (f:lsu) fs0  <-- 5700.0
       0    10600        M                                           #; (lsu) s10 <-- 0x80002c5b
       0    10601        M 0x80001cbc lw      s9, 68(sp)             #; sp  = 0x0011fe30, s9  <~~ Word[0x0011fe74]
       0    10604        M                                           #; (lsu) s9  <-- 8
       0    10605        M 0x80001cc0 lw      s8, 72(sp)             #; sp  = 0x0011fe30, s8  <~~ Word[0x0011fe78]
       0    10608        M                                           #; (lsu) s8  <-- 16
       0    10609        M 0x80001cc4 lw      s7, 76(sp)             #; sp  = 0x0011fe30, s7  <~~ Word[0x0011fe7c]
       0    10612        M                                           #; (lsu) s7  <-- 0
       0    10613        M 0x80001cc8 lw      s6, 80(sp)             #; sp  = 0x0011fe30, s6  <~~ Word[0x0011fe80]
       0    10616        M                                           #; (lsu) s6  <-- 0
       0    10617        M 0x80001ccc lw      s5, 84(sp)             #; sp  = 0x0011fe30, s5  <~~ Word[0x0011fe84]
       0    10620        M                                           #; (lsu) s5  <-- -1
       0    10621        M 0x80001cd0 lw      s4, 88(sp)             #; sp  = 0x0011fe30, s4  <~~ Word[0x0011fe88]
       0    10624        M                                           #; (lsu) s4  <-- 0x0011ff17
       0    10625        M 0x80001cd4 lw      s3, 92(sp)             #; sp  = 0x0011fe30, s3  <~~ Word[0x0011fe8c]
       0    10628        M                                           #; (lsu) s3  <-- 0x0011ff30
       0    10629        M 0x80001cd8 lw      s2, 96(sp)             #; sp  = 0x0011fe30, s2  <~~ Word[0x0011fe90]
       0    10632        M                                           #; (lsu) s2  <-- 0x80001560
       0    10633        M 0x80001cdc lw      s1, 100(sp)            #; sp  = 0x0011fe30, s1  <~~ Word[0x0011fe94]
       0    10636        M                                           #; (lsu) s1  <-- 8
       0    10637        M 0x80001ce0 lw      s0, 104(sp)            #; sp  = 0x0011fe30, s0  <~~ Word[0x0011fe98]
       0    10640        M                                           #; (lsu) s0  <-- 0
       0    10641        M 0x80001ce4 lw      ra, 108(sp)            #; sp  = 0x0011fe30, ra  <~~ Word[0x0011fe9c]
       0    10642        M 0x80001ce8 addi    sp, sp, 112            #; sp  = 0x0011fe30, (wrb) sp  <-- 0x0011fea0
       0    10644        M                                           #; (lsu) ra  <-- 0x80000c90
       0    10645        M 0x80001cec ret                            #; ra  = 0x80000c90, goto 0x80000c90
       0    10648        M 0x80000c90 j       pc + 0x7c0             #; goto 0x80001450
       0    10651        M 0x80001450 mv      s8, a0                 #; a0  = 16, (wrb) s8  <-- 16
       0    10652        M 0x80001454 li      s6, 37                 #; (wrb) s6  <-- 37
       0    10653        M 0x80001458 li      s7, 46                 #; (wrb) s7  <-- 46
       0    10654        M 0x8000145c addi    s0, s10, 1             #; s10 = 0x80002c5b, (wrb) s0  <-- 0x80002c5c
       0    10655        M 0x80001460 j       pc - 0xa74             #; goto 0x800009ec
       0    10658        M 0x800009ec addi    s10, s0, 2             #; s0  = 0x80002c5c, (wrb) s10 <-- 0x80002c5e
       0    10661        M 0x800009f0 mv      s9, s8                 #; s8  = 16, (wrb) s9  <-- 16
       0    10662        M 0x800009f4 li      s8, 10                 #; (wrb) s8  <-- 10
       0    10663        M 0x800009f8 lbu     a0, 0(s0)              #; s0  = 0x80002c5c, a0  <~~ Byte[0x80002c5c]
       0    10674        M                                           #; (lsu) a0  <-- 10
       0    10675        M 0x800009fc beqz    a0, pc + 2824          #; a0  = 10, not taken
       0    10676        M 0x80000a00 beq     a0, s6, pc + 48        #; a0  = 10, s6  = 37, not taken
       0    10677        M 0x80000a04 addi    s1, s9, 1              #; s9  = 16, (wrb) s1  <-- 17
       0    10678        M 0x80000a08 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0    10679        M 0x80000a0c mv      a2, s9                 #; s9  = 16, (wrb) a2  <-- 16
       0    10680        M 0x80000a10 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0    10681        M 0x80000a14 jalr    s2                     #; s2  = 0x80001560, (wrb) ra  <-- 0x80000a18, goto 0x80001560
       0    10685        M 0x80001560 beqz    a0, pc + 168           #; a0  = 10, not taken
       0    10686        M 0x80001564 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0    10687        M 0x80001568 li      a2, 1096               #; (wrb) a2  <-- 1096
       0    10688        M 0x8000156c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0    10689        M 0x80001570 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003570
       0    10690        M 0x80001574 addi    a3, a3, -1500          #; a3  = 0x80003570, (wrb) a3  <-- 0x80002f94
       0    10691        M                                           #; (acc) a1  <-- 0x00d605b3
       0    10692        M 0x80001578 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
       0    10693        M 0x8000157c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0    10704        M                                           #; (lsu) a4  <-- 16
       0    10705        M 0x80001580 addi    a5, a4, 1              #; a4  = 16, (wrb) a5  <-- 17
       0    10706        M 0x80001584 sw      a5, 0(a1)              #; a1  = 0x80002f94, 17 ~~> Word[0x80002f94]
       0    10707        M 0x80001588 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 16, (wrb) a4  <-- 0x80002fa4
       0    10708        M 0x8000158c sb      a0, 72(a4)             #; a4  = 0x80002fa4, 10 ~~> Byte[0x80002fec]
       0    10709        M 0x80001590 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0    10730        M                                           #; (lsu) a4  <-- 17
       0    10731        M 0x80001594 addi    a4, a4, -1020          #; a4  = 17, (wrb) a4  <-- -1003
       0    10732        M 0x80001598 snez    a4, a4                 #; a4  = -1003, (wrb) a4  <-- 1
       0    10733        M 0x8000159c addi    a0, a0, -10            #; a0  = 10, (wrb) a0  <-- 0
       0    10734        M 0x800015a0 snez    a0, a0                 #; a0  = 0, (wrb) a0  <-- 0
       0    10735        M 0x800015a4 and     a0, a0, a4             #; a0  = 0, a4  = 1, (wrb) a0  <-- 0
       0    10736        M 0x800015a8 bnez    a0, pc + 96            #; a0  = 0, not taken
       0    10737        M 0x800015ac add     a0, a3, a2             #; a3  = 0x80002f94, a2  = 0, (wrb) a0  <-- 0x80002f94
       0    10738        M 0x800015b0 addi    a2, a0, 72             #; a0  = 0x80002f94, (wrb) a2  <-- 0x80002fdc
       0    10739        M 0x800015b4 sw      zero, 12(a0)           #; a0  = 0x80002f94, 0 ~~> Word[0x80002fa0]
       0    10740        M 0x800015b8 li      a3, 64                 #; (wrb) a3  <-- 64
       0    10741        M 0x800015bc sw      a3, 8(a0)              #; a0  = 0x80002f94, 64 ~~> Word[0x80002f9c]
       0    10742        M 0x800015c0 sw      zero, 20(a0)           #; a0  = 0x80002f94, 0 ~~> Word[0x80002fa8]
       0    10743        M 0x800015c4 li      a3, 1                  #; (wrb) a3  <-- 1
       0    10744        M 0x800015c8 sw      a3, 16(a0)             #; a0  = 0x80002f94, 1 ~~> Word[0x80002fa4]
       0    10753        M 0x800015cc sw      zero, 28(a0)           #; a0  = 0x80002f94, 0 ~~> Word[0x80002fb0]
       0    10755        M 0x800015d0 sw      a2, 24(a0)             #; a0  = 0x80002f94, 0x80002fdc ~~> Word[0x80002fac]
       0    10765        M 0x800015d4 lw      a2, 0(a1)              #; a1  = 0x80002f94, a2  <~~ Word[0x80002f94]
       0    10766        M 0x800015d8 addi    a3, a0, 8              #; a0  = 0x80002f94, (wrb) a3  <-- 0x80002f9c
       0    10767        M 0x800015dc sw      zero, 36(a0)           #; a0  = 0x80002f94, 0 ~~> Word[0x80002fb8]
       0    10787        M                                           #; (lsu) a2  <-- 17
       0    10788        M 0x800015e0 sw      a2, 32(a0)             #; a0  = 0x80002f94, 17 ~~> Word[0x80002fb4]
       0    10789        M 0x800015e4 auipc   a0, 0x2                #; (wrb) a0  <-- 0x800035e4
       0    10790        M 0x800015e8 addi    a0, a0, -1892          #; a0  = 0x800035e4, (wrb) a0  <-- 0x80002e80
       0    10791        M 0x800015ec sw      a3, 0(a0)              #; a0  = 0x80002e80, 0x80002f9c ~~> Word[0x80002e80]
       0    10792        M 0x800015f0 auipc   a0, 0x2                #; (wrb) a0  <-- 0x800035f0
       0    10793        M 0x800015f4 addi    a0, a0, -1840          #; a0  = 0x800035f0, (wrb) a0  <-- 0x80002ec0
       0    10794        M 0x800015f8 lw      a2, 0(a0)              #; a0  = 0x80002ec0, a2  <~~ Word[0x80002ec0]
       0    10817        M                                           #; (lsu) a2  <-- 0
       0    10818        M 0x800015fc beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x800015f8
       0    10819        M 0x800015f8 lw      a2, 0(a0)              #; a0  = 0x80002ec0, a2  <~~ Word[0x80002ec0]
       0    10830        M                                           #; (lsu) a2  <-- 0
       0    10831        M 0x800015fc beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x800015f8
       0    10832        M 0x800015f8 lw      a2, 0(a0)              #; a0  = 0x80002ec0, a2  <~~ Word[0x80002ec0]
       0    10843        M                                           #; (lsu) a2  <-- 0
       0    10844        M 0x800015fc beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x800015f8
       0    10845        M 0x800015f8 lw      a2, 0(a0)              #; a0  = 0x80002ec0, a2  <~~ Word[0x80002ec0]
       0    10856        M                                           #; (lsu) a2  <-- 0
       0    10857        M 0x800015fc beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x800015f8
       0    10858        M 0x800015f8 lw      a2, 0(a0)              #; a0  = 0x80002ec0, a2  <~~ Word[0x80002ec0]
       0    10869        M                                           #; (lsu) a2  <-- 0
       0    10870        M 0x800015fc beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x800015f8
       0    10871        M 0x800015f8 lw      a2, 0(a0)              #; a0  = 0x80002ec0, a2  <~~ Word[0x80002ec0]
       0    10882        M                                           #; (lsu) a2  <-- 0
       0    10883        M 0x800015fc beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x800015f8
       0    10884        M 0x800015f8 lw      a2, 0(a0)              #; a0  = 0x80002ec0, a2  <~~ Word[0x80002ec0]
       0    10895        M                                           #; (lsu) a2  <-- 0
       0    10896        M 0x800015fc beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x800015f8
       0    10897        M 0x800015f8 lw      a2, 0(a0)              #; a0  = 0x80002ec0, a2  <~~ Word[0x80002ec0]
       0    10908        M                                           #; (lsu) a2  <-- 1
       0    10909        M 0x800015fc beqz    a2, pc - 4             #; a2  = 1, not taken
       0    10912        M 0x80001600 sw      zero, 0(a0)            #; a0  = 0x80002ec0, 0 ~~> Word[0x80002ec0]
       0    10913        M 0x80001604 sw      zero, 0(a1)            #; a1  = 0x80002f94, 0 ~~> Word[0x80002f94]
       0    10914        M 0x80001608 ret                            #; ra  = 0x80000a18, goto 0x80000a18
       0    10917        M 0x80000a18 addi    s0, s0, 1              #; s0  = 0x80002c5c, (wrb) s0  <-- 0x80002c5d
       0    10918        M 0x80000a1c addi    s10, s10, 1            #; s10 = 0x80002c5e, (wrb) s10 <-- 0x80002c5f
       0    10920        M 0x80000a20 mv      s9, s1                 #; s1  = 17, (wrb) s9  <-- 17
       0    10921        M 0x80000a24 lbu     a0, 0(s0)              #; s0  = 0x80002c5d, a0  <~~ Byte[0x80002c5d]
       0    10935        M                                           #; (lsu) a0  <-- 0
       0    10936        M 0x80000a28 bnez    a0, pc - 40            #; a0  = 0, not taken
       0    10937        M 0x80000a2c j       pc + 0xad8             #; goto 0x80001504
       0    10940        M 0x80001504 mv      a2, s9                 #; s9  = 17, (wrb) a2  <-- 17
       0    10941        M 0x80001508 bltu    s9, s5, pc + 8         #; s9  = 17, s5  = -1, taken, goto 0x80001510
       0    10943        M 0x80001510 li      a0, 0                  #; (wrb) a0  <-- 0
       0    10944        M 0x80001514 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0    10945        M 0x80001518 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0    10946        M 0x8000151c jalr    s2                     #; s2  = 0x80001560, (wrb) ra  <-- 0x80001520, goto 0x80001560
       0    10949        M 0x80001560 beqz    a0, pc + 168           #; a0  = 0, taken, goto 0x80001608
       0    10954        M 0x80001608 ret                            #; ra  = 0x80001520, goto 0x80001520
       0    10955        M 0x80001520 mv      a0, s9                 #; s9  = 17, (wrb) a0  <-- 17
       0    10956        M 0x80001524 lw      s11, 60(sp)            #; sp  = 0x0011fea0, s11 <~~ Word[0x0011fedc]
       0    10959        M                                           #; (lsu) s11 <-- 0
       0    10960        M 0x80001528 lw      s10, 64(sp)            #; sp  = 0x0011fea0, s10 <~~ Word[0x0011fee0]
       0    10963        M                                           #; (lsu) s10 <-- 0
       0    10964        M 0x8000152c lw      s9, 68(sp)             #; sp  = 0x0011fea0, s9  <~~ Word[0x0011fee4]
       0    10967        M                                           #; (lsu) s9  <-- 0
       0    10968        M 0x80001530 lw      s8, 72(sp)             #; sp  = 0x0011fea0, s8  <~~ Word[0x0011fee8]
       0    10971        M                                           #; (lsu) s8  <-- 0
       0    10972        M 0x80001534 lw      s7, 76(sp)             #; sp  = 0x0011fea0, s7  <~~ Word[0x0011feec]
       0    10975        M                                           #; (lsu) s7  <-- 0
       0    10976        M 0x80001538 lw      s6, 80(sp)             #; sp  = 0x0011fea0, s6  <~~ Word[0x0011fef0]
       0    10979        M                                           #; (lsu) s6  <-- 0
       0    10980        M 0x8000153c lw      s5, 84(sp)             #; sp  = 0x0011fea0, s5  <~~ Word[0x0011fef4]
       0    10983        M                                           #; (lsu) s5  <-- 0
       0    10984        M 0x80001540 lw      s4, 88(sp)             #; sp  = 0x0011fea0, s4  <~~ Word[0x0011fef8]
       0    10987        M                                           #; (lsu) s4  <-- 0
       0    10988        M 0x80001544 lw      s3, 92(sp)             #; sp  = 0x0011fea0, s3  <~~ Word[0x0011fefc]
       0    10991        M                                           #; (lsu) s3  <-- 0
       0    10992        M 0x80001548 lw      s2, 96(sp)             #; sp  = 0x0011fea0, s2  <~~ Word[0x0011ff00]
       0    10995        M                                           #; (lsu) s2  <-- 0x00100000
       0    10996        M 0x8000154c lw      s1, 100(sp)            #; sp  = 0x0011fea0, s1  <~~ Word[0x0011ff04]
       0    10999        M                                           #; (lsu) s1  <-- 4847
       0    11000        M 0x80001550 lw      s0, 104(sp)            #; sp  = 0x0011fea0, s0  <~~ Word[0x0011ff08]
       0    11003        M                                           #; (lsu) s0  <-- 0x00100320
       0    11004        M 0x80001554 lw      ra, 108(sp)            #; sp  = 0x0011fea0, ra  <~~ Word[0x0011ff0c]
       0    11005        M 0x80001558 addi    sp, sp, 112            #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011ff10
       0    11007        M                                           #; (lsu) ra  <-- 0x8000095c
       0    11008        M 0x8000155c ret                            #; ra  = 0x8000095c, goto 0x8000095c
       0    11011        M 0x8000095c lw      ra, 12(sp)             #; sp  = 0x0011ff10, ra  <~~ Word[0x0011ff1c]
       0    11014        M 0x80000960 addi    sp, sp, 48             #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011ff40
       0    11015        M                                           #; (lsu) ra  <-- 0x800007f8
       0    11016        M 0x80000964 ret                            #; ra  = 0x800007f8, goto 0x800007f8
       0    11019        M 0x800007f8 auipc   a0, 0x2                #; (wrb) a0  <-- 0x800027f8
       0    11020        M 0x800007fc addi    a0, a0, 1768           #; a0  = 0x800027f8, (wrb) a0  <-- 0x80002ee0
       0    11024        M 0x80000800 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002ee0]
       0    11025        M 0x8000080c lw      s2, 16(sp)             #; sp  = 0x0011ff40, s2  <~~ Word[0x0011ff50]
       0    11033        M                                           #; (f:lsu) ft0  <-- 0.0001
       0    11034        M 0x80000804 flt.d   a0, ft0, fs0           #; ft0  = 0.0001, fs0  = 5700.0
       0    11035        M                                           #; (lsu) s2  <-- 0
       0    11036        M 0x80000810 lw      s1, 20(sp)             #; sp  = 0x0011ff40, s1  <~~ Word[0x0011ff54], (acc) s1  <-- 0x01412483
                         M 0x80000808 fld     fs0, 8(sp)             #; fs0  <~~ Doub[0x0011ff48]
       0    11037        M                                           #; (f:lsu) fs0  <-- 0.0
       0    11039        M                                           #; (lsu) s1  <-- 0
       0    11040        M 0x80000814 lw      s0, 24(sp)             #; sp  = 0x0011ff40, s0  <~~ Word[0x0011ff58]
       0    11043        M                                           #; (lsu) s0  <-- 0
       0    11044        M 0x80000818 lw      ra, 28(sp)             #; sp  = 0x0011ff40, ra  <~~ Word[0x0011ff5c]
       0    11045        M 0x8000081c addi    sp, sp, 32             #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff60
       0    11047        M                                           #; (lsu) ra  <-- 0x800029c0
       0    11048        M 0x80000820 ret                            #; ra  = 0x800029c0, goto 0x800029c0
       0    11060        M 0x800029c0 mv      s0, a0                 #; a0  = 1, (wrb) s0  <-- 1
       0    11061        M 0x800029c4 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800029c4
       0    11062        M 0x800029c8 jalr    ra, ra, 524            #; ra  = 0x800029c4, (wrb) ra  <-- 0x800029cc, goto 0x80002bd0
       0    11083        M 0x80002bd0 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
       0    11084        M 0x80002bd4 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x800029cc ~~> Word[0x0011ff5c]
       0    11085        M 0x80002bd8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002bd8
       0    11086        M 0x80002bdc jalr    ra, ra, -1264          #; ra  = 0x80002bd8, (wrb) ra  <-- 0x80002be0, goto 0x800026e8
       0    11097        M 0x800026e8 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0    11098        M 0x800026ec add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0    11100        M 0x800026f0 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0    11103        M                                           #; (lsu) a0  <-- 0x0011ff70
       0    11104        M 0x800026f4 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0    11107        M                                           #; (lsu) a0  <-- 0x0011ff70
       0    11108        M 0x800026f8 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
       0    11109        M 0x800026fc ret                            #; ra  = 0x80002be0, goto 0x80002be0
       0    11111        M                                           #; (lsu) a0  <-- 0x00120190
       0    11112        M 0x80002be0 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
       0    11122        M                                           #; (lsu) a0  <-- 0
       0    11123        M 0x80002be4 mv      zero, a0               #; a0  = 0
       0    11124        M 0x80002be8 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
       0    11125        M 0x80002bec addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
       0    11127        M                                           #; (lsu) ra  <-- 0x800029cc
       0    11128        M 0x80002bf0 ret                            #; ra  = 0x800029cc, goto 0x800029cc
       0    11142        M 0x800029cc mv      a0, s0                 #; s0  = 1, (wrb) a0  <-- 1
       0    11146        M 0x800029d0 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800029d0
       0    11147        M 0x800029d4 jalr    ra, ra, 556            #; ra  = 0x800029d0, (wrb) ra  <-- 0x800029d8, goto 0x80002bfc
       0    11148        M 0x80002bfc addi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff58
       0    11149        M 0x80002c00 sw      a0, 0(sp)              #; sp  = 0x0011ff58, 1 ~~> Word[0x0011ff58]
       0    11150        M 0x80002c04 sw      ra, 4(sp)              #; sp  = 0x0011ff58, 0x800029d8 ~~> Word[0x0011ff5c]
       0    11151        M 0x80002c08 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002c08
       0    11152        M 0x80002c0c jalr    ra, ra, -1344          #; ra  = 0x80002c08, (wrb) ra  <-- 0x80002c10, goto 0x800026c8
       0    11163        M 0x800026c8 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0    11164        M 0x800026cc add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0    11167        M 0x800026d0 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0    11170        M                                           #; (lsu) a0  <-- 0x0011ff70
       0    11171        M 0x800026d4 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0    11174        M                                           #; (lsu) a0  <-- 0x0011ff70
       0    11175        M 0x800026d8 lw      a0, 8(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff78]
       0    11176        M 0x800026dc csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0    11178        M                                           #; (lsu) a0  <-- 0
       0    11179        M 0x800026e0 sub     a0, a1, a0             #; a1  = 0, a0  = 0, (wrb) a0  <-- 0
       0    11180        M 0x800026e4 ret                            #; ra  = 0x80002c10, goto 0x80002c10
       0    11181        M 0x80002c10 lw      t0, 0(sp)              #; sp  = 0x0011ff58, t0  <~~ Word[0x0011ff58]
       0    11184        M                                           #; (lsu) t0  <-- 1
       0    11185        M 0x80002c14 lw      ra, 4(sp)              #; sp  = 0x0011ff58, ra  <~~ Word[0x0011ff5c]
       0    11186        M 0x80002c18 addi    sp, sp, 8              #; sp  = 0x0011ff58, (wrb) sp  <-- 0x0011ff60
       0    11187        M 0x80002c1c bnez    a0, pc + 24            #; a0  = 0, not taken
       0    11188        M                                           #; (lsu) ra  <-- 0x800029d8
       0    11192        M 0x80002c20 slli    t0, t0, 1              #; t0  = 1, (wrb) t0  <-- 2
       0    11193        M 0x80002c24 ori     t0, t0, 1              #; t0  = 2, (wrb) t0  <-- 3
       0    11194        M 0x80002c28 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002c28
       0    11195        M 0x80002c2c addi    t1, t1, 600            #; t1  = 0x80002c28, (wrb) t1  <-- 0x80002e80
       0    11203        M 0x80002c30 sw      t0, 0(t1)              #; t1  = 0x80002e80, 3 ~~> Word[0x80002e80]
       0    11204        M 0x80002c34 ret                            #; ra  = 0x800029d8, goto 0x800029d8
       0    11217        M 0x800029d8 wfi                            #; 

## Performance metrics

Performance metrics for section 0 @ (12, 4847):
snitch_loads                                    38
snitch_stores                                   53
fpss_stores                                      1
fpss_loads                                       0
snitch_avg_load_latency                    18.2632
snitch_occupancy                            0.3499
snitch_fseq_rel_offloads                    0.2053
fseq_yield                                     1.0
fseq_fpu_yield                                 1.0
fpss_section_latency                             0
fpss_avg_fpu_latency                           1.0
fpss_avg_load_latency                            0
fpss_occupancy                              0.0904
fpss_fpu_occupancy                          0.0893
fpss_fpu_rel_occupancy                      0.9886
cycles                                        4836
total_ipc                                   0.4402

Performance metrics for section 1 @ (4849, 5358):
snitch_loads                                     0
fpss_loads                                       0
snitch_avg_load_latency                          0
snitch_occupancy                            0.4494
snitch_fseq_rel_offloads                    0.2989
fseq_yield                                     1.0
fseq_fpu_yield                                 1.0
fpss_section_latency                            33
fpss_avg_fpu_latency                        3.2473
fpss_avg_load_latency                            0
fpss_occupancy                              0.1915
fpss_fpu_occupancy                          0.1713
fpss_fpu_rel_occupancy                      0.8942
cycles                                         543
total_ipc                                   0.6409

Performance metrics for section 2 @ (5360, 11217):
snitch_stores                                  184
snitch_loads                                   193
fpss_loads                                      23
fpss_stores                                      7
snitch_avg_load_latency                     9.9845
snitch_occupancy                            0.3298
snitch_fseq_rel_offloads                    0.0335
fseq_yield                                     1.0
fseq_fpu_yield                                 1.0
fpss_section_latency                             0
fpss_avg_fpu_latency                        0.6957
fpss_avg_load_latency                       5.8696
fpss_occupancy                              0.0114
fpss_fpu_occupancy                          0.0079
fpss_fpu_rel_occupancy                      0.6866
cycles                                        5858
total_ipc                                   0.3412
