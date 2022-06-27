       0       12        M 0x00001000 csrr    a0, mhartid            #; mhartid = 0, (wrb) a0  <-- 0
       0       32        M 0x00001004 auipc   a1, 0x0                #; (wrb) a1  <-- 4100
       0       56        M 0x00001008 addi    a1, a1, 32             #; a1  = 4100, (wrb) a1  <-- 4132
       0       84        M 0x0000100c auipc   t0, 0x0                #; (wrb) t0  <-- 4108
       0      104        M 0x00001010 lw      t0, 20(t0)             #; t0  = 4108, t0  <~~ Word[0x00001020]
       0      115        M                                           #; (lsu) t0  <-- 0x800027e0
       0      128        M 0x00001014 jalr    t0                     #; t0  = 0x800027e0, (wrb) ra  <-- 4120, goto 0x800027e0
       0      269        M 0x800027e0 auipc   gp, 0x1                #; (wrb) gp  <-- 0x800037e0
       0      270        M 0x800027e4 addi    gp, gp, -280           #; gp  = 0x800037e0, (wrb) gp  <-- 0x800036c8
       0      271        M 0x800027e8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800027e8
       0      272        M 0x800027ec jalr    ra, ra, 964            #; ra  = 0x800027e8, (wrb) ra  <-- 0x800027f0, goto 0x80002bac
       0      292        M 0x80002bac mv      a4, a1                 #; a1  = 4132, (wrb) a4  <-- 4132
       0      304        M 0x80002bb0 lw      a1, 4(a4)              #; a4  = 4132, a1  <~~ Word[0x00001028]
       0      334        M                                           #; (lsu) a1  <-- 8
       0      335        M 0x80002bb4 lw      t0, 8(a4)              #; a4  = 4132, t0  <~~ Word[0x0000102c]
       0      374        M                                           #; (lsu) t0  <-- 0
       0      375        M 0x80002bb8 lw      a2, 12(a4)             #; a4  = 4132, a2  <~~ Word[0x00001030]
       0      414        M                                           #; (lsu) a2  <-- 0x00100000
       0      415        M 0x80002bbc lw      t1, 16(a4)             #; a4  = 4132, t1  <~~ Word[0x00001034]
       0      454        M                                           #; (lsu) t1  <-- 0x00020000
       0      455        M 0x80002bc0 lw      t2, 20(a4)             #; a4  = 4132, t2  <~~ Word[0x00001038]
       0      456        M 0x80002bc4 sub     a0, a0, t0             #; a0  = 0, t0  = 0, (wrb) a0  <-- 0
       0      457        M 0x80002bc8 div     t3, a0, a1             #; a0  = 0, a1  = 8
       0      460        M                                           #; (acc) t4  <-- 0x027e0eb3
       0      494        M                                           #; (lsu) t2  <-- 0
       0      495        M 0x80002bcc mul     t4, t3, t2             #; t3  = 0, t2  = 0
       0      498        M                                           #; (acc) a2  <-- 0x01d60633
       0      499        M 0x80002bd0 add     a2, a2, t4             #; a2  = 0x00100000, t4  = 0, (wrb) a2  <-- 0x00100000
       0      500        M 0x80002bd4 add     a3, a2, t1             #; a2  = 0x00100000, t1  = 0x00020000, (wrb) a3  <-- 0x00120000
       0      501        M 0x80002bd8 remu    a0, a0, a1             #; a0  = 0, a1  = 8
       0      502        M 0x80002bdc ret                            #; ra  = 0x800027f0, goto 0x800027f0
       0      504        M                                           #; (acc) s0  <-- 0x00050413
       0      505        M 0x800027f0 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
       0      506        M 0x800027f4 mv      a0, a4                 #; a4  = 4132, (wrb) a0  <-- 4132
       0      507        M 0x800027f8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800027f8
       0      508        M 0x800027fc jalr    ra, ra, 1036           #; ra  = 0x800027f8, (wrb) ra  <-- 0x80002800, goto 0x80002c04
       0      523        M 0x80002c04 lw      a0, 8(a0)              #; a0  = 4132, a0  <~~ Word[0x0000102c]
       0      524        M 0x80002c08 ret                            #; ra  = 0x80002800, goto 0x80002800
       0      543        M                                           #; (lsu) a0  <-- 0
       0      544        M 0x80002800 mv      t0, a0                 #; a0  = 0, (wrb) t0  <-- 0
       0      545        M 0x80002804 mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
       0      546        M 0x80002808 csrr    t1, mhartid            #; mhartid = 0, (wrb) t1  <-- 0
       0      547        M 0x8000280c sub     t0, t1, t0             #; t1  = 0, t0  = 0, (wrb) t0  <-- 0
       0      549        M 0x80002810 bnez    t0, pc + 36            #; t0  = 0, not taken
       0      550        M 0x80002814 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002814
       0      551        M 0x80002818 addi    t0, t0, 1916           #; t0  = 0x80002814, (wrb) t0  <-- 0x80002f90
       0      552        M 0x8000281c auipc   t1, 0x0                #; (wrb) t1  <-- 0x8000281c
       0      562        M 0x80002820 addi    t1, t1, 1912           #; t1  = 0x8000281c, (wrb) t1  <-- 0x80002f94
       0      563        M 0x80002824 bge     t0, t1, pc + 16        #; t0  = 0x80002f90, t1  = 0x80002f94, not taken
       0      564        M 0x80002828 sw      zero, 0(t0)            #; t0  = 0x80002f90, 0 ~~> Word[0x80002f90]
       0      565        M 0x8000282c addi    t0, t0, 4              #; t0  = 0x80002f90, (wrb) t0  <-- 0x80002f94
       0      573        M 0x80002830 blt     t0, t1, pc - 8         #; t0  = 0x80002f94, t1  = 0x80002f94, not taken
       0      574        M 0x80002834 csrr    t0, misa               #; misa = 0x40801129, (wrb) t0  <-- 0x40801129
       0      575        M 0x80002838 andi    t0, t0, 40             #; t0  = 0x40801129, (wrb) t0  <-- 40
       0      576        M 0x8000283c beqz    t0, pc + 132           #; t0  = 40, not taken
       0      586        M 0x80002840 fcvt.d.w ft0, zero             #; ac1  = 0
       0      587        M 0x80002844 fcvt.d.w ft1, zero             #; ac1  = 0, (f:fpu) ft0  <-- 0.0
       0      588        M 0x80002848 fcvt.d.w ft2, zero             #; ac1  = 0, (f:fpu) ft1  <-- 0.0
       0      589        M 0x8000284c fcvt.d.w ft3, zero             #; ac1  = 0, (f:fpu) ft2  <-- 0.0
       0      590        M                                           #; (f:fpu) ft3  <-- 0.0
       0      598        M 0x80002850 fcvt.d.w ft4, zero             #; ac1  = 0
       0      599        M 0x80002854 fcvt.d.w ft5, zero             #; ac1  = 0, (f:fpu) ft4  <-- 0.0
       0      600        M 0x80002858 fcvt.d.w ft6, zero             #; ac1  = 0, (f:fpu) ft5  <-- 0.0
       0      601        M 0x8000285c fcvt.d.w ft7, zero             #; ac1  = 0, (f:fpu) ft6  <-- 0.0
       0      602        M                                           #; (f:fpu) ft7  <-- 0.0
       0      610        M 0x80002860 fcvt.d.w fs0, zero             #; ac1  = 0
       0      611        M 0x80002864 fcvt.d.w fs1, zero             #; ac1  = 0, (f:fpu) fs0  <-- 0.0
       0      612        M 0x80002868 fcvt.d.w fa0, zero             #; ac1  = 0, (f:fpu) fs1  <-- 0.0
       0      613        M 0x8000286c fcvt.d.w fa1, zero             #; ac1  = 0, (f:fpu) fa0  <-- 0.0
       0      614        M                                           #; (f:fpu) fa1  <-- 0.0
       0      622        M 0x80002870 fcvt.d.w fa2, zero             #; ac1  = 0
       0      623        M 0x80002874 fcvt.d.w fa3, zero             #; ac1  = 0, (f:fpu) fa2  <-- 0.0
       0      624        M 0x80002878 fcvt.d.w fa4, zero             #; ac1  = 0, (f:fpu) fa3  <-- 0.0
       0      625        M 0x8000287c fcvt.d.w fa5, zero             #; ac1  = 0, (f:fpu) fa4  <-- 0.0
       0      626        M                                           #; (f:fpu) fa5  <-- 0.0
       0      634        M 0x80002880 fcvt.d.w fa6, zero             #; ac1  = 0
       0      635        M 0x80002884 fcvt.d.w fa7, zero             #; ac1  = 0, (f:fpu) fa6  <-- 0.0
       0      636        M 0x80002888 fcvt.d.w fs2, zero             #; ac1  = 0, (f:fpu) fa7  <-- 0.0
       0      637        M 0x8000288c fcvt.d.w fs3, zero             #; ac1  = 0, (f:fpu) fs2  <-- 0.0
       0      638        M                                           #; (f:fpu) fs3  <-- 0.0
       0      646        M 0x80002890 fcvt.d.w fs4, zero             #; ac1  = 0
       0      647        M 0x80002894 fcvt.d.w fs5, zero             #; ac1  = 0, (f:fpu) fs4  <-- 0.0
       0      648        M 0x80002898 fcvt.d.w fs6, zero             #; ac1  = 0, (f:fpu) fs5  <-- 0.0
       0      649        M 0x8000289c fcvt.d.w fs7, zero             #; ac1  = 0, (f:fpu) fs6  <-- 0.0
       0      650        M                                           #; (f:fpu) fs7  <-- 0.0
       0      658        M 0x800028a0 fcvt.d.w fs8, zero             #; ac1  = 0
       0      659        M 0x800028a4 fcvt.d.w fs9, zero             #; ac1  = 0, (f:fpu) fs8  <-- 0.0
       0      660        M 0x800028a8 fcvt.d.w fs10, zero            #; ac1  = 0, (f:fpu) fs9  <-- 0.0
       0      661        M 0x800028ac fcvt.d.w fs11, zero            #; ac1  = 0, (f:fpu) fs10 <-- 0.0
       0      662        M                                           #; (f:fpu) fs11 <-- 0.0
       0      670        M 0x800028b0 fcvt.d.w ft8, zero             #; ac1  = 0
       0      671        M 0x800028b4 fcvt.d.w ft9, zero             #; ac1  = 0, (f:fpu) ft8  <-- 0.0
       0      672        M 0x800028b8 fcvt.d.w ft10, zero            #; ac1  = 0, (f:fpu) ft9  <-- 0.0
       0      673        M 0x800028bc fcvt.d.w ft11, zero            #; ac1  = 0, (f:fpu) ft10 <-- 0.0
       0      674        M                                           #; (f:fpu) ft11 <-- 0.0
       0      681        M 0x800028c0 addi    a3, a3, -8             #; a3  = 0x00120000, (wrb) a3  <-- 0x0011fff8
       0      682        M 0x800028c4 sw      zero, 0(a3)            #; a3  = 0x0011fff8, 0 ~~> Word[0x0011fff8]
       0      683        M 0x800028c8 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800028c8
       0      684        M 0x800028cc lw      t0, 900(t0)            #; t0  = 0x800028c8, t0  <~~ Word[0x80002c4c]
       0      704        M                                           #; (lsu) t0  <-- 136
       0      705        M 0x800028d0 sub     a3, a3, t0             #; a3  = 0x0011fff8, t0  = 136, (wrb) a3  <-- 0x0011ff70
       0      706        M 0x800028d4 mv      a5, a3                 #; a3  = 0x0011ff70, (wrb) a5  <-- 0x0011ff70
       0      707        M 0x800028d8 auipc   t2, 0x0                #; (wrb) t2  <-- 0x800028d8
       0      708        M 0x800028dc lw      t2, 880(t2)            #; t2  = 0x800028d8, t2  <~~ Word[0x80002c48]
       0      744        M                                           #; (lsu) t2  <-- 10
       0      745        M 0x800028e0 sll     t0, a0, t2             #; a0  = 0, t2  = 10, (wrb) t0  <-- 0
       0      746        M 0x800028e4 sll     t1, a1, t2             #; a1  = 8, t2  = 10, (wrb) t1  <-- 8192
       0      747        M 0x800028e8 sub     sp, a3, t0             #; a3  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
       0      748        M 0x800028ec sub     a3, a3, t1             #; a3  = 0x0011ff70, t1  = 8192, (wrb) a3  <-- 0x0011df70
       0      749        M 0x800028f0 slli    t0, a0, 3              #; a0  = 0, (wrb) t0  <-- 0
       0      750        M 0x800028f4 slli    t1, a1, 3              #; a1  = 8, (wrb) t1  <-- 64
       0      751        M 0x800028f8 sub     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
       0      752        M 0x800028fc sub     a3, a3, t1             #; a3  = 0x0011df70, t1  = 64, (wrb) a3  <-- 0x0011df30
       0      761        M 0x80002900 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002900
       0      762        M 0x80002904 addi    t0, t0, 1480           #; t0  = 0x80002900, (wrb) t0  <-- 0x80002ec8
       0      763        M 0x80002908 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002908
       0      764        M 0x8000290c addi    t1, t1, 1472           #; t1  = 0x80002908, (wrb) t1  <-- 0x80002ec8
       0      775        M 0x80002910 auipc   t2, 0x0                #; (wrb) t2  <-- 0x80002910
       0      776        M 0x80002914 addi    t2, t2, 1464           #; t2  = 0x80002910, (wrb) t2  <-- 0x80002ec8
       0      777        M 0x80002918 auipc   t3, 0x0                #; (wrb) t3  <-- 0x80002918
       0      778        M 0x8000291c addi    t3, t3, 1472           #; t3  = 0x80002918, (wrb) t3  <-- 0x80002ed8
       0      787        M 0x80002920 add     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0x80002ec8, (wrb) sp  <-- 0x80122e38
       0      788        M 0x80002924 sub     sp, sp, t1             #; sp  = 0x80122e38, t1  = 0x80002ec8, (wrb) sp  <-- 0x0011ff70
       0      789        M 0x80002928 add     sp, sp, t2             #; sp  = 0x0011ff70, t2  = 0x80002ec8, (wrb) sp  <-- 0x80122e38
       0      790        M 0x8000292c sub     sp, sp, t3             #; sp  = 0x80122e38, t3  = 0x80002ed8, (wrb) sp  <-- 0x0011ff60
       0      799        M 0x80002930 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
       0      800        M 0x80002934 mv      tp, sp                 #; sp  = 0x0011ff60, (wrb) tp  <-- 0x0011ff60
       0      801        M 0x80002938 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
       0      802        M 0x8000293c mv      t4, tp                 #; tp  = 0x0011ff60, (wrb) t4  <-- 0x0011ff60
       0      811        M 0x80002940 bge     t0, t1, pc + 24        #; t0  = 0x80002ec8, t1  = 0x80002ec8, taken, goto 0x80002958
       0      823        M 0x80002958 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002958
       0      824        M 0x8000295c addi    t0, t0, 1392           #; t0  = 0x80002958, (wrb) t0  <-- 0x80002ec8
       0      835        M 0x80002960 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002960
       0      836        M 0x80002964 addi    t1, t1, 1400           #; t1  = 0x80002960, (wrb) t1  <-- 0x80002ed8
       0      837        M 0x80002968 bge     t0, t1, pc + 20        #; t0  = 0x80002ec8, t1  = 0x80002ed8, not taken
       0      838        M 0x8000296c sw      zero, 0(t4)            #; t4  = 0x0011ff60, 0 ~~> Word[0x0011ff60]
       0      847        M 0x80002970 addi    t0, t0, 4              #; t0  = 0x80002ec8, (wrb) t0  <-- 0x80002ecc
       0      848        M 0x80002974 addi    t4, t4, 4              #; t4  = 0x0011ff60, (wrb) t4  <-- 0x0011ff64
       0      849        M 0x80002978 blt     t0, t2, pc - 12        #; t0  = 0x80002ecc, t2  = 0x80002ec8, not taken
       0      850        M 0x8000297c addi    sp, sp, -20            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff4c
       0      862        M 0x80002980 sw      a0, 0(sp)              #; sp  = 0x0011ff4c, 0 ~~> Word[0x0011ff4c]
       0      863        M 0x80002984 sw      a1, 4(sp)              #; sp  = 0x0011ff4c, 8 ~~> Word[0x0011ff50]
       0      864        M 0x80002988 sw      a2, 8(sp)              #; sp  = 0x0011ff4c, 0x00100000 ~~> Word[0x0011ff54]
       0      865        M 0x8000298c sw      a3, 12(sp)             #; sp  = 0x0011ff4c, 0x0011df30 ~~> Word[0x0011ff58]
       0      875        M 0x80002990 sw      a4, 16(sp)             #; sp  = 0x0011ff4c, 4132 ~~> Word[0x0011ff5c]
       0      876        M 0x80002994 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002994
       0      877        M 0x80002998 jalr    ra, ra, -1060          #; ra  = 0x80002994, (wrb) ra  <-- 0x8000299c, goto 0x80002570
       0      898        M 0x80002570 sw      a5, 0(a5)              #; a5  = 0x0011ff70, 0x0011ff70 ~~> Word[0x0011ff70]
       0      899        M 0x80002574 sw      a4, 4(a5)              #; a5  = 0x0011ff70, 4132 ~~> Word[0x0011ff74]
       0      901        M 0x80002578 lw      t1, 8(a4)              #; a4  = 4132, t1  <~~ Word[0x0000102c]
       0      923        M                                           #; (lsu) t1  <-- 0
       0      924        M 0x8000257c sw      t1, 8(a5)              #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff78]
       0      925        M 0x80002580 lw      a6, 40(a4)             #; a4  = 4132, a6  <~~ Word[0x0000104c]
       0      963        M                                           #; (lsu) a6  <-- 1
       0      964        M 0x80002584 lw      a7, 44(a4)             #; a4  = 4132, a7  <~~ Word[0x00001050]
       0     1003        M                                           #; (lsu) a7  <-- 1
       0     1004        M 0x80002588 lw      t0, 4(a4)              #; a4  = 4132, t0  <~~ Word[0x00001028]
       0     1005        M 0x8000258c mul     a6, a7, a6             #; a7  = 1, a6  = 1
       0     1008        M                                           #; (acc) a0  <-- 0x02580533
       0     1043        M                                           #; (lsu) t0  <-- 8
       0     1044        M 0x80002590 mul     a0, a6, t0             #; a6  = 1, t0  = 8
       0     1047        M                                           #; (acc) a2  <-- 0x00a7a623
       0     1048        M 0x80002594 sw      a0, 12(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff7c]
       0     1049        M 0x80002598 csrr    a7, mhartid            #; mhartid = 0, (wrb) a7  <-- 0
       0     1050        M 0x8000259c sub     a0, a7, t1             #; a7  = 0, t1  = 0, (wrb) a0  <-- 0
       0     1051        M 0x800025a0 divu    a0, a0, t0             #; a0  = 0, t0  = 8
       0     1054        M                                           #; (acc) a6  <-- 0x00a7a823
       0     1055        M 0x800025a4 sw      a0, 16(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff80]
       0     1056        M 0x800025a8 sw      a6, 20(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff84]
       0     1057        M 0x800025ac sw      t1, 24(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff88]
       0     1063        M 0x800025b0 sw      a1, 28(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff8c]
       0     1064        M 0x800025b4 lw      a0, 24(a4)             #; a4  = 4132, a0  <~~ Word[0x0000103c]
       0     1065        M 0x800025b8 lui     a1, 0x10000            #; (wrb) a1  <-- 0x10000000
       0     1083        M                                           #; (lsu) a0  <-- 0x80000000
       0     1084        M 0x800025bc add     a0, a0, a1             #; a0  = 0x80000000, a1  = 0x10000000, (wrb) a0  <-- 0x90000000
       0     1085        M 0x800025c0 sw      zero, 36(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff94]
       0     1086        M 0x800025c4 sw      a0, 32(a5)             #; a5  = 0x0011ff70, 0x90000000 ~~> Word[0x0011ff90]
       0     1087        M 0x800025c8 lw      a0, 32(a4)             #; a4  = 4132, a0  <~~ Word[0x00001044]
       0     1123        M                                           #; (lsu) a0  <-- 0
       0     1124        M 0x800025cc lw      a1, 36(a4)             #; a4  = 4132, a1  <~~ Word[0x00001048]
       0     1125        M 0x800025d0 sw      a0, 40(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff98]
       0     1163        M                                           #; (lsu) a1  <-- 1
       0     1164        M 0x800025d4 sw      a1, 44(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff9c]
       0     1165        M 0x800025d8 sw      a2, 48(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffa0]
       0     1166        M 0x800025dc sw      zero, 52(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffa4]
       0     1167        M 0x800025e0 sw      a3, 56(a5)             #; a5  = 0x0011ff70, 0x0011df30 ~~> Word[0x0011ffa8]
       0     1168        M 0x800025e4 sw      zero, 60(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffac]
       0     1169        M 0x800025e8 lw      a0, 16(a4)             #; a4  = 4132, a0  <~~ Word[0x00001034]
       0     1190        M                                           #; (lsu) a0  <-- 0x00020000
       0     1191        M 0x800025ec add     a6, a2, a0             #; a2  = 0x00100000, a0  = 0x00020000, (wrb) a6  <-- 0x00120000
       0     1192        M 0x800025f0 addi    a1, a6, 400            #; a6  = 0x00120000, (wrb) a1  <-- 0x00120190
       0     1193        M 0x800025f4 sw      a1, 112(a5)            #; a5  = 0x0011ff70, 0x00120190 ~~> Word[0x0011ffe0]
       0     1194        M 0x800025f8 sltu    t0, a6, a0             #; a6  = 0x00120000, a0  = 0x00020000, (wrb) t0  <-- 0
       0     1195        M 0x800025fc srli    a1, a0, 1              #; a0  = 0x00020000, (wrb) a1  <-- 0x00010000
       0     1205        M 0x80002600 add     t1, a6, a1             #; a6  = 0x00120000, a1  = 0x00010000, (wrb) t1  <-- 0x00130000
       0     1206        M 0x80002604 sltu    a1, t1, a6             #; t1  = 0x00130000, a6  = 0x00120000, (wrb) a1  <-- 0
       0     1207        M 0x80002608 add     a1, t0, a1             #; t0  = 0, a1  = 0, (wrb) a1  <-- 0
       0     1208        M 0x8000260c sw      t1, 64(a5)             #; a5  = 0x0011ff70, 0x00130000 ~~> Word[0x0011ffb0]
       0     1219        M 0x80002610 sw      a1, 68(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffb4]
       0     1220        M 0x80002614 slli    a0, a0, 1              #; a0  = 0x00020000, (wrb) a0  <-- 0x00040000
       0     1221        M 0x80002618 add     a1, a0, a2             #; a0  = 0x00040000, a2  = 0x00100000, (wrb) a1  <-- 0x00140000
       0     1222        M 0x8000261c sltu    a0, a1, a0             #; a1  = 0x00140000, a0  = 0x00040000, (wrb) a0  <-- 0
       0     1231        M 0x80002620 sw      a1, 72(a5)             #; a5  = 0x0011ff70, 0x00140000 ~~> Word[0x0011ffb8]
       0     1232        M 0x80002624 sw      a0, 76(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffbc]
       0     1234        M 0x80002628 sw      zero, 104(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd8]
       0     1238        M 0x8000262c sw      zero, 108(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffdc]
       0     1243        M 0x80002630 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1244        M 0x80002634 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1245        M 0x80002638 sw      a5, 0(a0)              #; a0  = 0x0011ff60, 0x0011ff70 ~~> Word[0x0011ff60]
       0     1246        M 0x8000263c lw      a0, 0(a5)              #; a5  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1250        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1255        M 0x80002640 lw      a1, 24(a0)             #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ff88]
       0     1259        M                                           #; (lsu) a1  <-- 0
       0     1260        M 0x80002644 lw      a0, 28(a0)             #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff8c]
       0     1261        M 0x80002648 sub     a1, a7, a1             #; a7  = 0, a1  = 0, (wrb) a1  <-- 0
       0     1263        M                                           #; (lsu) a0  <-- 8
       0     1264        M 0x8000264c remu    a0, a1, a0             #; a1  = 0, a0  = 8
       0     1267        M 0x80002650 lui     a1, 0x0                #; (wrb) a1  <-- 0
       0     1268        M 0x80002654 add     a1, a1, tp             #; a1  = 0, tp  = 0x0011ff60, (wrb) a1  <-- 0x0011ff60
       0     1269        M                                           #; (acc) tp  <-- 0x00a5a223
       0     1270        M 0x80002658 sw      a0, 4(a1)              #; a1  = 0x0011ff60, 0 ~~> Word[0x0011ff64]
       0     1271        M 0x8000265c li      a0, 1096               #; (wrb) a0  <-- 1096
       0     1279        M 0x80002660 mul     a0, a7, a0             #; a7  = 0, a0  = 1096
       0     1280        M 0x80002664 auipc   a1, 0x1                #; (wrb) a1  <-- 0x80003664
       0     1281        M 0x80002668 addi    a1, a1, -1744          #; a1  = 0x80003664, (wrb) a1  <-- 0x80002f94
       0     1283        M                                           #; (acc) a0  <-- 0x00b50533
       0     1284        M 0x8000266c add     a0, a0, a1             #; a0  = 0, a1  = 0x80002f94, (wrb) a0  <-- 0x80002f94
       0     1291        M 0x80002670 sw      zero, 0(a0)            #; a0  = 0x80002f94, 0 ~~> Word[0x80002f94]
       0     1292        M 0x80002674 lw      a7, 48(a4)             #; a4  = 4132, a7  <~~ Word[0x00001054]
       0     1362        M                                           #; (lsu) a7  <-- 0xffff0000
       0     1363        M 0x80002678 sw      a7, 116(a5)            #; a5  = 0x0011ff70, 0xffff0000 ~~> Word[0x0011ffe4]
       0     1364        M 0x8000267c sw      a6, 124(a5)            #; a5  = 0x0011ff70, 0x00120000 ~~> Word[0x0011ffec]
       0     1365        M 0x80002680 sw      zero, 120(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffe8]
       0     1366        M 0x80002684 addi    a4, a6, 384            #; a6  = 0x00120000, (wrb) a4  <-- 0x00120180
       0     1367        M 0x80002688 sw      a4, 128(a5)            #; a5  = 0x0011ff70, 0x00120180 ~~> Word[0x0011fff0]
       0     1368        M 0x8000268c addi    a0, a2, 7              #; a2  = 0x00100000, (wrb) a0  <-- 0x00100007
       0     1369        M 0x80002690 andi    a0, a0, -8             #; a0  = 0x00100007, (wrb) a0  <-- 0x00100000
       0     1370        M 0x80002694 sw      a0, 80(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc0]
       0     1371        M 0x80002698 sub     a2, a3, a2             #; a3  = 0x0011df30, a2  = 0x00100000, (wrb) a2  <-- 0x0001df30
       0     1372        M 0x8000269c sw      a2, 84(a5)             #; a5  = 0x0011ff70, 0x0001df30 ~~> Word[0x0011ffc4]
       0     1373        M 0x800026a0 sw      a0, 88(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc8]
       0     1374        M 0x800026a4 lw      a0, 0(a1)              #; a1  = 0x80002f94, a0  <~~ Word[0x80002f94]
       0     1385        M                                           #; (lsu) a0  <-- 0
       0     1386        M 0x800026a8 addi    a0, a0, 1103           #; a0  = 0, (wrb) a0  <-- 1103
       0     1387        M 0x800026ac andi    a0, a0, -8             #; a0  = 1103, (wrb) a0  <-- 1096
       0     1388        M 0x800026b0 sw      a0, 92(a5)             #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffcc]
       0     1389        M 0x800026b4 sw      zero, 96(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd0]
       0     1390        M 0x800026b8 sw      a0, 100(a5)            #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffd4]
       0     1391        M 0x800026bc lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1392        M 0x800026c0 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1393        M 0x800026c4 sw      a7, 8(a0)              #; a0  = 0x0011ff60, 0xffff0000 ~~> Word[0x0011ff68]
       0     1394        M 0x800026c8 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1395        M 0x800026cc add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1400        M 0x800026d0 sw      a4, 12(a0)             #; a0  = 0x0011ff60, 0x00120180 ~~> Word[0x0011ff6c]
       0     1401        M 0x800026d4 ret                            #; ra  = 0x8000299c, goto 0x8000299c
       0     1415        M 0x8000299c lw      a0, 0(sp)              #; sp  = 0x0011ff4c, a0  <~~ Word[0x0011ff4c]
       0     1418        M                                           #; (lsu) a0  <-- 0
       0     1419        M 0x800029a0 lw      a1, 4(sp)              #; sp  = 0x0011ff4c, a1  <~~ Word[0x0011ff50]
       0     1422        M                                           #; (lsu) a1  <-- 8
       0     1423        M 0x800029a4 lw      a2, 8(sp)              #; sp  = 0x0011ff4c, a2  <~~ Word[0x0011ff54]
       0     1426        M                                           #; (lsu) a2  <-- 0x00100000
       0     1427        M 0x800029a8 lw      a3, 12(sp)             #; sp  = 0x0011ff4c, a3  <~~ Word[0x0011ff58]
       0     1430        M                                           #; (lsu) a3  <-- 0x0011df30
       0     1431        M 0x800029ac lw      a4, 16(sp)             #; sp  = 0x0011ff4c, a4  <~~ Word[0x0011ff5c]
       0     1432        M 0x800029b0 addi    sp, sp, 20             #; sp  = 0x0011ff4c, (wrb) sp  <-- 0x0011ff60
       0     1433        M 0x800029b4 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800029b4
       0     1434        M 0x800029b8 addi    t0, t0, 60             #; t0  = 0x800029b4, (wrb) t0  <-- 0x800029f0
       0     1435        M 0x800029bc csrw    mtvec, t0              #; t0  = 0x800029f0, (lsu) a4  <-- 4132
       0     1443        M 0x800029c0 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800029c0
       0     1444        M 0x800029c4 jalr    ra, ra, 544            #; ra  = 0x800029c0, (wrb) ra  <-- 0x800029c8, goto 0x80002be0
       0     1460        M 0x80002be0 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
       0     1461        M 0x80002be4 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x800029c8 ~~> Word[0x0011ff5c]
       0     1462        M 0x80002be8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002be8
       0     1463        M 0x80002bec jalr    ra, ra, -1264          #; ra  = 0x80002be8, (wrb) ra  <-- 0x80002bf0, goto 0x800026f8
       0     1481        M 0x800026f8 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1482        M 0x800026fc add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1493        M 0x80002700 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     1496        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1497        M 0x80002704 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1501        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1502        M 0x80002708 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
       0     1503        M 0x8000270c ret                            #; ra  = 0x80002bf0, goto 0x80002bf0
       0     1505        M                                           #; (lsu) a0  <-- 0x00120190
       0     1506        M 0x80002bf0 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
       0     1535        M                                           #; (lsu) a0  <-- 0
       0     1536        M 0x80002bf4 mv      zero, a0               #; a0  = 0
       0     1537        M 0x80002bf8 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
       0     1538        M 0x80002bfc addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
       0     1540        M                                           #; (lsu) ra  <-- 0x800029c8
       0     1541        M 0x80002c00 ret                            #; ra  = 0x800029c8, goto 0x800029c8
       0     1545        M 0x800029c8 auipc   ra, 0xffffe            #; (wrb) ra  <-- 0x800009c8
       0     1546        M 0x800029cc jalr    ra, ra, -916           #; ra  = 0x800009c8, (wrb) ra  <-- 0x800029d0, goto 0x80000634
       0     1551        M 0x80000634 addi    sp, sp, -112           #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011fef0
       0     1552        M 0x80000638 sw      ra, 108(sp)            #; sp  = 0x0011fef0, 0x800029d0 ~~> Word[0x0011ff5c]
       0     1555        M 0x8000063c fsd     fs0, 96(sp)            #; 0.0 ~~> Doub[0x0011ff50]
       0     1556        M 0x80000640 fsd     fs1, 88(sp)            #; 0.0 ~~> Doub[0x0011ff48]
       0     1557        M 0x80000644 fsd     fs2, 80(sp)            #; 0.0 ~~> Doub[0x0011ff40]
       0     1558        M 0x80000648 fsd     fs3, 72(sp)            #; 0.0 ~~> Doub[0x0011ff38]
       0     1559        M 0x8000064c fsd     fs4, 64(sp)            #; 0.0 ~~> Doub[0x0011ff30]
       0     1569        M 0x80000650 fsd     fs5, 56(sp)            #; 0.0 ~~> Doub[0x0011ff28]
       0     1571        M 0x80000654 fsd     fs6, 48(sp)            #; 0.0 ~~> Doub[0x0011ff20]
       0     1572        M 0x80000658 fsd     fs7, 40(sp)            #; 0.0 ~~> Doub[0x0011ff18]
       0     1573        M 0x8000065c fsd     fs8, 32(sp)            #; 0.0 ~~> Doub[0x0011ff10]
       0     1581        M 0x80000660 fsd     fs9, 24(sp)            #; 0.0 ~~> Doub[0x0011ff08]
       0     1582        M 0x8000066c lui     a0, 0x0                #; (wrb) a0  <-- 0
                         M 0x80000664 fsd     fs10, 16(sp)           #; 0.0 ~~> Doub[0x0011ff00]
       0     1583        M 0x80000668 fsd     fs11, 8(sp)            #; 0.0 ~~> Doub[0x0011fef8]
       0     1591        M 0x80000670 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1592        M 0x80000674 lw      a1, 4(a0)              #; a0  = 0x0011ff60, a1  <~~ Word[0x0011ff64]
       0     1593        M 0x80000678 li      a0, 0                  #; (wrb) a0  <-- 0
       0     1595        M                                           #; (lsu) a1  <-- 0
       0     1596        M 0x8000067c bnez    a1, pc + 612           #; a1  = 0, not taken
       0     1603        M 0x80000680 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1604        M 0x80000684 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1605        M 0x80000688 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     1608        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1609        M 0x8000068c lw      a2, 0(a0)              #; a0  = 0x0011ff70, a2  <~~ Word[0x0011ff70]
       0     1612        M                                           #; (lsu) a2  <-- 0x0011ff70
       0     1619        M 0x80000690 lw      a0, 88(a2)             #; a2  = 0x0011ff70, a0  <~~ Word[0x0011ffc8]
       0     1622        M                                           #; (lsu) a0  <-- 0x00100000
       0     1623        M 0x80000694 lw      a1, 80(a2)             #; a2  = 0x0011ff70, a1  <~~ Word[0x0011ffc0]
       0     1626        M                                           #; (lsu) a1  <-- 0x00100000
       0     1627        M 0x80000698 lw      a3, 84(a2)             #; a2  = 0x0011ff70, a3  <~~ Word[0x0011ffc4]
       0     1628        M 0x8000069c addi    a4, a0, 800            #; a0  = 0x00100000, (wrb) a4  <-- 0x00100320
       0     1630        M                                           #; (lsu) a3  <-- 0x0001df30
       0     1632        M 0x800006a0 add     a3, a3, a1             #; a3  = 0x0001df30, a1  = 0x00100000, (wrb) a3  <-- 0x0011df30
       0     1633        M 0x800006a4 bgeu    a3, a4, pc + 24        #; a3  = 0x0011df30, a4  = 0x00100320, taken, goto 0x800006bc
       0     1645        M 0x800006bc mv      a1, a0                 #; a0  = 0x00100000, (wrb) a1  <-- 0x00100000
       0     1658        M 0x800006c0 sw      a4, 88(a2)             #; a2  = 0x0011ff70, 0x00100320 ~~> Word[0x0011ffc8]
       0     1659        M 0x800006c4 addi    a5, a0, 1600           #; a0  = 0x00100000, (wrb) a5  <-- 0x00100640
       0     1660        M 0x800006c8 mv      a0, a4                 #; a4  = 0x00100320, (wrb) a0  <-- 0x00100320
       0     1661        M 0x800006cc bgeu    a3, a5, pc - 24        #; a3  = 0x0011df30, a5  = 0x00100640, taken, goto 0x800006b4
       0     1662        M 0x800006b4 sw      a5, 88(a2)             #; a2  = 0x0011ff70, 0x00100640 ~~> Word[0x0011ffc8]
       0     1663        M 0x800006b8 j       pc + 0x1c              #; goto 0x800006d4
       0     1674        M 0x800006d4 srli    a2, a1, 20             #; a1  = 0x00100000, (wrb) a2  <-- 1
       0     1675        M 0x800006d8 snez    a2, a2                 #; a2  = 1, (wrb) a2  <-- 1
       0     1676        M 0x800006dc lui     a3, 0x120              #; (wrb) a3  <-- 0x00120000
       0     1698        M 0x800006e0 addi    a3, a3, -791           #; a3  = 0x00120000, (wrb) a3  <-- 0x0011fce9
       0     1699        M 0x800006e4 sltu    a3, a1, a3             #; a1  = 0x00100000, a3  = 0x0011fce9, (wrb) a3  <-- 1
       0     1700        M 0x800006e8 and     a2, a2, a3             #; a2  = 1, a3  = 1, (wrb) a2  <-- 1
       0     1701        M 0x800006ec beqz    a2, pc + 108           #; a2  = 1, not taken
       0     1710        M 0x800006f0 li      a2, 0                  #; (wrb) a2  <-- 0
       0     1711        M 0x800006f4 li      a3, 8                  #; (wrb) a3  <-- 8
       0     1712        M 0x800006f8 li      a4, 99                 #; (wrb) a4  <-- 99
       0     1713        M 0x800006fc li      a5, 64                 #; (wrb) a5  <-- 64
       0     1722        M 0x80000700 scfgw   a4, a5                 #; a4  = 99, a5  = 64
       0     1723        M 0x80000704 li      a4, 192                #; (wrb) a4  <-- 192
       0     1724        M 0x80000708 scfgw   a3, a4                 #; a3  = 8, a4  = 192
       0     1725        M 0x8000070c li      a3, 32                 #; (wrb) a3  <-- 32
       0     1734        M 0x80000710 scfgw   zero, a3               #; a3  = 32
       0     1735        M 0x80000714 scfgwi  a1, 896                #; a1  = 0x00100000
       0     1737        M 0x8000071c li      a3, 100                #; (wrb) a3  <-- 100
                         M 0x80000718 csrrsi  a3, ssr, 1             #; 
       0     1746        M 0x80000720 lui     a4, 0xccccd            #; (wrb) a4  <-- 0xccccd000
       0     1747        M 0x80000724 addi    a4, a4, -819           #; a4  = 0xccccd000, (wrb) a4  <-- 0xcccccccd
       0     1748        M 0x80000728 li      a6, 10                 #; (wrb) a6  <-- 10
       0     1749        M 0x8000072c mulhu   a5, a2, a4             #; a2  = 0, a4  = 0xcccccccd
       0     1758        M 0x80000730 srli    a5, a5, 3              #; a5  = 0, (wrb) a5  <-- 0
       0     1759        M 0x80000734 mul     a5, a5, a6             #; a5  = 0, a6  = 10
       0     1762        M                                           #; (acc) a5  <-- 0x40f607b3
       0     1763        M 0x80000738 sub     a5, a2, a5             #; a2  = 0, a5  = 0, (wrb) a5  <-- 0
       0     1765        M 0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 0
       0     1766        M                                           #; (f:fpu) ft3  <-- 0.0
       0     1771        M 0x80000744 addi    a3, a3, -1             #; a3  = 100, (wrb) a3  <-- 99
       0     1772        M 0x80000748 addi    a2, a2, 1              #; a2  = 0, (wrb) a2  <-- 1
                         M 0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     1773        M 0x8000074c bnez    a3, pc - 32            #; a3  = 99, taken, goto 0x8000072c
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     1774        M 0x8000072c mulhu   a5, a2, a4             #; a2  = 1, a4  = 0xcccccccd
       0     1777        M                                           #; (acc) a5  <-- 0x0037d793
       0     1778        M 0x80000730 srli    a5, a5, 3              #; a5  = 0, (wrb) a5  <-- 0
       0     1779        M 0x80000734 mul     a5, a5, a6             #; a5  = 0, a6  = 10
       0     1782        M                                           #; (acc) a5  <-- 0x40f607b3
       0     1783        M 0x80000738 sub     a5, a2, a5             #; a2  = 1, a5  = 0, (wrb) a5  <-- 1
       0     1785        M 0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 1
       0     1786        M 0x80000744 addi    a3, a3, -1             #; a3  = 99, (wrb) a3  <-- 98
                         M                                           #; (f:fpu) ft3  <-- 1.0
       0     1787        M 0x80000748 addi    a2, a2, 1              #; a2  = 1, (wrb) a2  <-- 2
                         M 0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
       0     1788        M 0x8000074c bnez    a3, pc - 32            #; a3  = 98, taken, goto 0x8000072c
                         M                                           #; (f:fpu) ft0  <-- 1.0
       0     1789        M 0x8000072c mulhu   a5, a2, a4             #; a2  = 2, a4  = 0xcccccccd
       0     1792        M                                           #; (acc) a5  <-- 0x0037d793
       0     1793        M 0x80000730 srli    a5, a5, 3              #; a5  = 1, (wrb) a5  <-- 0
       0     1794        M 0x80000734 mul     a5, a5, a6             #; a5  = 0, a6  = 10
       0     1797        M                                           #; (acc) a5  <-- 0x40f607b3
       0     1798        M 0x80000738 sub     a5, a2, a5             #; a2  = 2, a5  = 0, (wrb) a5  <-- 2
       0     1800        M 0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 2
       0     1801        M 0x80000744 addi    a3, a3, -1             #; a3  = 98, (wrb) a3  <-- 97
                         M                                           #; (f:fpu) ft3  <-- 2.0
       0     1802        M 0x80000748 addi    a2, a2, 1              #; a2  = 2, (wrb) a2  <-- 3
                         M 0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
       0     1803        M 0x8000074c bnez    a3, pc - 32            #; a3  = 97, taken, goto 0x8000072c
                         M                                           #; (f:fpu) ft0  <-- 2.0
       0     1804        M 0x8000072c mulhu   a5, a2, a4             #; a2  = 3, a4  = 0xcccccccd
       0     1807        M                                           #; (acc) a5  <-- 0x0037d793
       0     1808        M 0x80000730 srli    a5, a5, 3              #; a5  = 2, (wrb) a5  <-- 0
       0     1809        M 0x80000734 mul     a5, a5, a6             #; a5  = 0, a6  = 10
       0     1812        M                                           #; (acc) a5  <-- 0x40f607b3
       0     1813        M 0x80000738 sub     a5, a2, a5             #; a2  = 3, a5  = 0, (wrb) a5  <-- 3
       0     1815        M 0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 3
       0     1816        M 0x80000744 addi    a3, a3, -1             #; a3  = 97, (wrb) a3  <-- 96
                         M                                           #; (f:fpu) ft3  <-- 3.0
       0     1817        M 0x80000748 addi    a2, a2, 1              #; a2  = 3, (wrb) a2  <-- 4
                         M 0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
       0     1818        M 0x8000074c bnez    a3, pc - 32            #; a3  = 96, taken, goto 0x8000072c
                         M                                           #; (f:fpu) ft0  <-- 3.0
       0     1819        M 0x8000072c mulhu   a5, a2, a4             #; a2  = 4, a4  = 0xcccccccd
       0     1822        M                                           #; (acc) a5  <-- 0x0037d793
       0     1823        M 0x80000730 srli    a5, a5, 3              #; a5  = 3, (wrb) a5  <-- 0
       0     1824        M 0x80000734 mul     a5, a5, a6             #; a5  = 0, a6  = 10
       0     1827        M                                           #; (acc) a5  <-- 0x40f607b3
       0     1828        M 0x80000738 sub     a5, a2, a5             #; a2  = 4, a5  = 0, (wrb) a5  <-- 4
       0     1830        M 0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 4
       0     1831        M 0x80000744 addi    a3, a3, -1             #; a3  = 96, (wrb) a3  <-- 95
                         M                                           #; (f:fpu) ft3  <-- 4.0
       0     1832        M 0x80000748 addi    a2, a2, 1              #; a2  = 4, (wrb) a2  <-- 5
                         M 0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
       0     1833        M 0x8000074c bnez    a3, pc - 32            #; a3  = 95, taken, goto 0x8000072c
                         M                                           #; (f:fpu) ft0  <-- 4.0
       0     1834        M 0x8000072c mulhu   a5, a2, a4             #; a2  = 5, a4  = 0xcccccccd
       0     1837        M                                           #; (acc) a5  <-- 0x0037d793
       0     1838        M 0x80000730 srli    a5, a5, 3              #; a5  = 4, (wrb) a5  <-- 0
       0     1839        M 0x80000734 mul     a5, a5, a6             #; a5  = 0, a6  = 10
       0     1842        M                                           #; (acc) a5  <-- 0x40f607b3
       0     1843        M 0x80000738 sub     a5, a2, a5             #; a2  = 5, a5  = 0, (wrb) a5  <-- 5
       0     1845        M 0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 5
       0     1846        M 0x80000744 addi    a3, a3, -1             #; a3  = 95, (wrb) a3  <-- 94
                         M                                           #; (f:fpu) ft3  <-- 5.0
       0     1847        M 0x80000748 addi    a2, a2, 1              #; a2  = 5, (wrb) a2  <-- 6
                         M 0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
       0     1848        M 0x8000074c bnez    a3, pc - 32            #; a3  = 94, taken, goto 0x8000072c
                         M                                           #; (f:fpu) ft0  <-- 5.0
       0     1849        M 0x8000072c mulhu   a5, a2, a4             #; a2  = 6, a4  = 0xcccccccd
       0     1852        M                                           #; (acc) a5  <-- 0x0037d793
       0     1853        M 0x80000730 srli    a5, a5, 3              #; a5  = 4, (wrb) a5  <-- 0
       0     1854        M 0x80000734 mul     a5, a5, a6             #; a5  = 0, a6  = 10
       0     1857        M                                           #; (acc) a5  <-- 0x40f607b3
       0     1858        M 0x80000738 sub     a5, a2, a5             #; a2  = 6, a5  = 0, (wrb) a5  <-- 6
       0     1860        M 0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 6
       0     1861        M 0x80000744 addi    a3, a3, -1             #; a3  = 94, (wrb) a3  <-- 93
                         M                                           #; (f:fpu) ft3  <-- 6.0
       0     1862        M 0x80000748 addi    a2, a2, 1              #; a2  = 6, (wrb) a2  <-- 7
                         M 0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
       0     1863        M 0x8000074c bnez    a3, pc - 32            #; a3  = 93, taken, goto 0x8000072c
                         M                                           #; (f:fpu) ft0  <-- 6.0
       0     1864        M 0x8000072c mulhu   a5, a2, a4             #; a2  = 7, a4  = 0xcccccccd
       0     1867        M                                           #; (acc) a5  <-- 0x0037d793
       0     1868        M 0x80000730 srli    a5, a5, 3              #; a5  = 5, (wrb) a5  <-- 0
       0     1869        M 0x80000734 mul     a5, a5, a6             #; a5  = 0, a6  = 10
       0     1872        M                                           #; (acc) a5  <-- 0x40f607b3
       0     1873        M 0x80000738 sub     a5, a2, a5             #; a2  = 7, a5  = 0, (wrb) a5  <-- 7
       0     1875        M 0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 7
       0     1876        M 0x80000744 addi    a3, a3, -1             #; a3  = 93, (wrb) a3  <-- 92
                         M                                           #; (f:fpu) ft3  <-- 7.0
       0     1877        M 0x80000748 addi    a2, a2, 1              #; a2  = 7, (wrb) a2  <-- 8
                         M 0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
       0     1878        M 0x8000074c bnez    a3, pc - 32            #; a3  = 92, taken, goto 0x8000072c
                         M                                           #; (f:fpu) ft0  <-- 7.0
       0     1879        M 0x8000072c mulhu   a5, a2, a4             #; a2  = 8, a4  = 0xcccccccd
       0     1882        M                                           #; (acc) a5  <-- 0x0037d793
       0     1883        M 0x80000730 srli    a5, a5, 3              #; a5  = 6, (wrb) a5  <-- 0
       0     1884        M 0x80000734 mul     a5, a5, a6             #; a5  = 0, a6  = 10
       0     1887        M                                           #; (acc) a5  <-- 0x40f607b3
       0     1888        M 0x80000738 sub     a5, a2, a5             #; a2  = 8, a5  = 0, (wrb) a5  <-- 8
       0     1890        M 0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 8
       0     1891        M 0x80000744 addi    a3, a3, -1             #; a3  = 92, (wrb) a3  <-- 91
                         M                                           #; (f:fpu) ft3  <-- 8.0
       0     1892        M 0x80000748 addi    a2, a2, 1              #; a2  = 8, (wrb) a2  <-- 9
                         M 0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
       0     1893        M 0x8000074c bnez    a3, pc - 32            #; a3  = 91, taken, goto 0x8000072c
                         M                                           #; (f:fpu) ft0  <-- 8.0
       0     1894        M 0x8000072c mulhu   a5, a2, a4             #; a2  = 9, a4  = 0xcccccccd
       0     1897        M                                           #; (acc) a5  <-- 0x0037d793
       0     1898        M 0x80000730 srli    a5, a5, 3              #; a5  = 7, (wrb) a5  <-- 0
       0     1899        M 0x80000734 mul     a5, a5, a6             #; a5  = 0, a6  = 10
       0     1902        M                                           #; (acc) a5  <-- 0x40f607b3
       0     1903        M 0x80000738 sub     a5, a2, a5             #; a2  = 9, a5  = 0, (wrb) a5  <-- 9
       0     1905        M 0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 9
       0     1906        M 0x80000744 addi    a3, a3, -1             #; a3  = 91, (wrb) a3  <-- 90
                         M                                           #; (f:fpu) ft3  <-- 9.0
       0     1907        M 0x80000748 addi    a2, a2, 1              #; a2  = 9, (wrb) a2  <-- 10
                         M 0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
       0     1908        M 0x8000074c bnez    a3, pc - 32            #; a3  = 90, taken, goto 0x8000072c
                         M                                           #; (f:fpu) ft0  <-- 9.0
       0     1909        M 0x8000072c mulhu   a5, a2, a4             #; a2  = 10, a4  = 0xcccccccd
       0     1912        M                                           #; (acc) a5  <-- 0x0037d793
       0     1913        M 0x80000730 srli    a5, a5, 3              #; a5  = 8, (wrb) a5  <-- 1
       0     1914        M 0x80000734 mul     a5, a5, a6             #; a5  = 1, a6  = 10
       0     1917        M                                           #; (acc) a5  <-- 0x40f607b3
       0     1918        M 0x80000738 sub     a5, a2, a5             #; a2  = 10, a5  = 10, (wrb) a5  <-- 0
       0     1920        M 0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 0
       0     1921        M 0x80000744 addi    a3, a3, -1             #; a3  = 90, (wrb) a3  <-- 89
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     1922        M 0x80000748 addi    a2, a2, 1              #; a2  = 10, (wrb) a2  <-- 11
                         M 0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     1923        M 0x8000074c bnez    a3, pc - 32            #; a3  = 89, taken, goto 0x8000072c
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     1924        M 0x8000072c mulhu   a5, a2, a4             #; a2  = 11, a4  = 0xcccccccd
       0     1927        M                                           #; (acc) a5  <-- 0x0037d793
       0     1928        M 0x80000730 srli    a5, a5, 3              #; a5  = 8, (wrb) a5  <-- 1
       0     1929        M 0x80000734 mul     a5, a5, a6             #; a5  = 1, a6  = 10
       0     1932        M                                           #; (acc) a5  <-- 0x40f607b3
       0     1933        M 0x80000738 sub     a5, a2, a5             #; a2  = 11, a5  = 10, (wrb) a5  <-- 1
       0     1935        M 0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 1
       0     1936        M 0x80000744 addi    a3, a3, -1             #; a3  = 89, (wrb) a3  <-- 88
                         M                                           #; (f:fpu) ft3  <-- 1.0
       0     1937        M 0x80000748 addi    a2, a2, 1              #; a2  = 11, (wrb) a2  <-- 12
                         M 0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
       0     1938        M 0x8000074c bnez    a3, pc - 32            #; a3  = 88, taken, goto 0x8000072c
                         M                                           #; (f:fpu) ft0  <-- 1.0
       0     1939        M 0x8000072c mulhu   a5, a2, a4             #; a2  = 12, a4  = 0xcccccccd
       0     1942        M                                           #; (acc) a5  <-- 0x0037d793
       0     1943        M 0x80000730 srli    a5, a5, 3              #; a5  = 9, (wrb) a5  <-- 1
       0     1944        M 0x80000734 mul     a5, a5, a6             #; a5  = 1, a6  = 10
       0     1947        M                                           #; (acc) a5  <-- 0x40f607b3
       0     1948        M 0x80000738 sub     a5, a2, a5             #; a2  = 12, a5  = 10, (wrb) a5  <-- 2
       0     1950        M 0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 2
       0     1951        M 0x80000744 addi    a3, a3, -1             #; a3  = 88, (wrb) a3  <-- 87
                         M                                           #; (f:fpu) ft3  <-- 2.0
       0     1952        M 0x80000748 addi    a2, a2, 1              #; a2  = 12, (wrb) a2  <-- 13
                         M 0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
       0     1953        M 0x8000074c bnez    a3, pc - 32            #; a3  = 87, taken, goto 0x8000072c
                         M                                           #; (f:fpu) ft0  <-- 2.0
       0     1954        M 0x8000072c mulhu   a5, a2, a4             #; a2  = 13, a4  = 0xcccccccd
       0     1957        M                                           #; (acc) a5  <-- 0x0037d793
       0     1958        M 0x80000730 srli    a5, a5, 3              #; a5  = 10, (wrb) a5  <-- 1
       0     1959        M 0x80000734 mul     a5, a5, a6             #; a5  = 1, a6  = 10
       0     1962        M                                           #; (acc) a5  <-- 0x40f607b3
       0     1963        M 0x80000738 sub     a5, a2, a5             #; a2  = 13, a5  = 10, (wrb) a5  <-- 3
       0     1965        M 0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 3
       0     1966        M 0x80000744 addi    a3, a3, -1             #; a3  = 87, (wrb) a3  <-- 86
                         M                                           #; (f:fpu) ft3  <-- 3.0
       0     1967        M 0x80000748 addi    a2, a2, 1              #; a2  = 13, (wrb) a2  <-- 14
                         M 0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
       0     1968        M 0x8000074c bnez    a3, pc - 32            #; a3  = 86, taken, goto 0x8000072c
                         M                                           #; (f:fpu) ft0  <-- 3.0
       0     1969        M 0x8000072c mulhu   a5, a2, a4             #; a2  = 14, a4  = 0xcccccccd
       0     1972        M                                           #; (acc) a5  <-- 0x0037d793
       0     1973        M 0x80000730 srli    a5, a5, 3              #; a5  = 11, (wrb) a5  <-- 1
       0     1974        M 0x80000734 mul     a5, a5, a6             #; a5  = 1, a6  = 10
       0     1977        M                                           #; (acc) a5  <-- 0x40f607b3
       0     1978        M 0x80000738 sub     a5, a2, a5             #; a2  = 14, a5  = 10, (wrb) a5  <-- 4
       0     1980        M 0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 4
       0     1981        M 0x80000744 addi    a3, a3, -1             #; a3  = 86, (wrb) a3  <-- 85
                         M                                           #; (f:fpu) ft3  <-- 4.0
       0     1982        M 0x80000748 addi    a2, a2, 1              #; a2  = 14, (wrb) a2  <-- 15
                         M 0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
       0     1983        M 0x8000074c bnez    a3, pc - 32            #; a3  = 85, taken, goto 0x8000072c
                         M                                           #; (f:fpu) ft0  <-- 4.0
       0     1984        M 0x8000072c mulhu   a5, a2, a4             #; a2  = 15, a4  = 0xcccccccd
       0     1987        M                                           #; (acc) a5  <-- 0x0037d793
       0     1988        M 0x80000730 srli    a5, a5, 3              #; a5  = 12, (wrb) a5  <-- 1
       0     1989        M 0x80000734 mul     a5, a5, a6             #; a5  = 1, a6  = 10
       0     1992        M                                           #; (acc) a5  <-- 0x40f607b3
       0     1993        M 0x80000738 sub     a5, a2, a5             #; a2  = 15, a5  = 10, (wrb) a5  <-- 5
       0     1995        M 0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 5
       0     1996        M 0x80000744 addi    a3, a3, -1             #; a3  = 85, (wrb) a3  <-- 84
                         M                                           #; (f:fpu) ft3  <-- 5.0
       0     1997        M 0x80000748 addi    a2, a2, 1              #; a2  = 15, (wrb) a2  <-- 16
                         M 0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
       0     1998        M 0x8000074c bnez    a3, pc - 32            #; a3  = 84, taken, goto 0x8000072c
                         M                                           #; (f:fpu) ft0  <-- 5.0
       0     1999        M 0x8000072c mulhu   a5, a2, a4             #; a2  = 16, a4  = 0xcccccccd
       0     2002        M                                           #; (acc) a5  <-- 0x0037d793
       0     2003        M 0x80000730 srli    a5, a5, 3              #; a5  = 12, (wrb) a5  <-- 1
       0     2004        M 0x80000734 mul     a5, a5, a6             #; a5  = 1, a6  = 10
       0     2007        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2008        M 0x80000738 sub     a5, a2, a5             #; a2  = 16, a5  = 10, (wrb) a5  <-- 6
       0     2010        M 0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 6
       0     2011        M 0x80000744 addi    a3, a3, -1             #; a3  = 84, (wrb) a3  <-- 83
                         M                                           #; (f:fpu) ft3  <-- 6.0
       0     2012        M 0x80000748 addi    a2, a2, 1              #; a2  = 16, (wrb) a2  <-- 17
                         M 0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
       0     2013        M 0x8000074c bnez    a3, pc - 32            #; a3  = 83, taken, goto 0x8000072c
                         M                                           #; (f:fpu) ft0  <-- 6.0
       0     2014        M 0x8000072c mulhu   a5, a2, a4             #; a2  = 17, a4  = 0xcccccccd
       0     2017        M                                           #; (acc) a5  <-- 0x0037d793
       0     2018        M 0x80000730 srli    a5, a5, 3              #; a5  = 13, (wrb) a5  <-- 1
       0     2019        M 0x80000734 mul     a5, a5, a6             #; a5  = 1, a6  = 10
       0     2022        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2023        M 0x80000738 sub     a5, a2, a5             #; a2  = 17, a5  = 10, (wrb) a5  <-- 7
       0     2025        M 0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 7
       0     2026        M 0x80000744 addi    a3, a3, -1             #; a3  = 83, (wrb) a3  <-- 82
                         M                                           #; (f:fpu) ft3  <-- 7.0
       0     2027        M 0x80000748 addi    a2, a2, 1              #; a2  = 17, (wrb) a2  <-- 18
                         M 0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
       0     2028        M 0x8000074c bnez    a3, pc - 32            #; a3  = 82, taken, goto 0x8000072c
                         M                                           #; (f:fpu) ft0  <-- 7.0
       0     2029        M 0x8000072c mulhu   a5, a2, a4             #; a2  = 18, a4  = 0xcccccccd
       0     2032        M                                           #; (acc) a5  <-- 0x0037d793
       0     2033        M 0x80000730 srli    a5, a5, 3              #; a5  = 14, (wrb) a5  <-- 1
       0     2034        M 0x80000734 mul     a5, a5, a6             #; a5  = 1, a6  = 10
       0     2037        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2038        M 0x80000738 sub     a5, a2, a5             #; a2  = 18, a5  = 10, (wrb) a5  <-- 8
       0     2040        M 0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 8
       0     2041        M 0x80000744 addi    a3, a3, -1             #; a3  = 82, (wrb) a3  <-- 81
                         M                                           #; (f:fpu) ft3  <-- 8.0
       0     2042        M 0x80000748 addi    a2, a2, 1              #; a2  = 18, (wrb) a2  <-- 19
                         M 0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
       0     2043        M 0x8000074c bnez    a3, pc - 32            #; a3  = 81, taken, goto 0x8000072c
                         M                                           #; (f:fpu) ft0  <-- 8.0
       0     2044        M 0x8000072c mulhu   a5, a2, a4             #; a2  = 19, a4  = 0xcccccccd
       0     2047        M                                           #; (acc) a5  <-- 0x0037d793
       0     2048        M 0x80000730 srli    a5, a5, 3              #; a5  = 15, (wrb) a5  <-- 1
       0     2049        M 0x80000734 mul     a5, a5, a6             #; a5  = 1, a6  = 10
       0     2052        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2053        M 0x80000738 sub     a5, a2, a5             #; a2  = 19, a5  = 10, (wrb) a5  <-- 9
       0     2055        M 0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 9
       0     2056        M 0x80000744 addi    a3, a3, -1             #; a3  = 81, (wrb) a3  <-- 80
                         M                                           #; (f:fpu) ft3  <-- 9.0
       0     2057        M 0x80000748 addi    a2, a2, 1              #; a2  = 19, (wrb) a2  <-- 20
                         M 0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
       0     2058        M 0x8000074c bnez    a3, pc - 32            #; a3  = 80, taken, goto 0x8000072c
                         M                                           #; (f:fpu) ft0  <-- 9.0
       0     2059        M 0x8000072c mulhu   a5, a2, a4             #; a2  = 20, a4  = 0xcccccccd
       0     2062        M                                           #; (acc) a5  <-- 0x0037d793
       0     2063        M 0x80000730 srli    a5, a5, 3              #; a5  = 16, (wrb) a5  <-- 2
       0     2064        M 0x80000734 mul     a5, a5, a6             #; a5  = 2, a6  = 10
       0     2067        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2068        M 0x80000738 sub     a5, a2, a5             #; a2  = 20, a5  = 20, (wrb) a5  <-- 0
       0     2070        M 0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 0
       0     2071        M 0x80000744 addi    a3, a3, -1             #; a3  = 80, (wrb) a3  <-- 79
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     2072        M 0x80000748 addi    a2, a2, 1              #; a2  = 20, (wrb) a2  <-- 21
                         M 0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     2073        M 0x8000074c bnez    a3, pc - 32            #; a3  = 79, taken, goto 0x8000072c
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     2074        M 0x8000072c mulhu   a5, a2, a4             #; a2  = 21, a4  = 0xcccccccd
       0     2077        M                                           #; (acc) a5  <-- 0x0037d793
       0     2078        M 0x80000730 srli    a5, a5, 3              #; a5  = 16, (wrb) a5  <-- 2
       0     2079        M 0x80000734 mul     a5, a5, a6             #; a5  = 2, a6  = 10
       0     2082        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2083        M 0x80000738 sub     a5, a2, a5             #; a2  = 21, a5  = 20, (wrb) a5  <-- 1
       0     2085        M 0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 1
       0     2086        M 0x80000744 addi    a3, a3, -1             #; a3  = 79, (wrb) a3  <-- 78
                         M                                           #; (f:fpu) ft3  <-- 1.0
       0     2087        M 0x80000748 addi    a2, a2, 1              #; a2  = 21, (wrb) a2  <-- 22
                         M 0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
       0     2088        M 0x8000074c bnez    a3, pc - 32            #; a3  = 78, taken, goto 0x8000072c
                         M                                           #; (f:fpu) ft0  <-- 1.0
       0     2089        M 0x8000072c mulhu   a5, a2, a4             #; a2  = 22, a4  = 0xcccccccd
       0     2092        M                                           #; (acc) a5  <-- 0x0037d793
       0     2093        M 0x80000730 srli    a5, a5, 3              #; a5  = 17, (wrb) a5  <-- 2
       0     2094        M 0x80000734 mul     a5, a5, a6             #; a5  = 2, a6  = 10
       0     2097        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2098        M 0x80000738 sub     a5, a2, a5             #; a2  = 22, a5  = 20, (wrb) a5  <-- 2
       0     2100        M 0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 2
       0     2101        M 0x80000744 addi    a3, a3, -1             #; a3  = 78, (wrb) a3  <-- 77
                         M                                           #; (f:fpu) ft3  <-- 2.0
       0     2102        M 0x80000748 addi    a2, a2, 1              #; a2  = 22, (wrb) a2  <-- 23
                         M 0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
       0     2103        M 0x8000074c bnez    a3, pc - 32            #; a3  = 77, taken, goto 0x8000072c
                         M                                           #; (f:fpu) ft0  <-- 2.0
       0     2104        M 0x8000072c mulhu   a5, a2, a4             #; a2  = 23, a4  = 0xcccccccd
       0     2107        M                                           #; (acc) a5  <-- 0x0037d793
       0     2108        M 0x80000730 srli    a5, a5, 3              #; a5  = 18, (wrb) a5  <-- 2
       0     2109        M 0x80000734 mul     a5, a5, a6             #; a5  = 2, a6  = 10
       0     2112        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2113        M 0x80000738 sub     a5, a2, a5             #; a2  = 23, a5  = 20, (wrb) a5  <-- 3
       0     2115        M 0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 3
       0     2116        M 0x80000744 addi    a3, a3, -1             #; a3  = 77, (wrb) a3  <-- 76
                         M                                           #; (f:fpu) ft3  <-- 3.0
       0     2117        M 0x80000748 addi    a2, a2, 1              #; a2  = 23, (wrb) a2  <-- 24
                         M 0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
       0     2118        M 0x8000074c bnez    a3, pc - 32            #; a3  = 76, taken, goto 0x8000072c
                         M                                           #; (f:fpu) ft0  <-- 3.0
       0     2119        M 0x8000072c mulhu   a5, a2, a4             #; a2  = 24, a4  = 0xcccccccd
       0     2122        M                                           #; (acc) a5  <-- 0x0037d793
       0     2123        M 0x80000730 srli    a5, a5, 3              #; a5  = 19, (wrb) a5  <-- 2
       0     2124        M 0x80000734 mul     a5, a5, a6             #; a5  = 2, a6  = 10
       0     2127        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2128        M 0x80000738 sub     a5, a2, a5             #; a2  = 24, a5  = 20, (wrb) a5  <-- 4
       0     2130        M 0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 4
       0     2131        M 0x80000744 addi    a3, a3, -1             #; a3  = 76, (wrb) a3  <-- 75
                         M                                           #; (f:fpu) ft3  <-- 4.0
       0     2132        M 0x80000748 addi    a2, a2, 1              #; a2  = 24, (wrb) a2  <-- 25
                         M 0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
       0     2133        M 0x8000074c bnez    a3, pc - 32            #; a3  = 75, taken, goto 0x8000072c
                         M                                           #; (f:fpu) ft0  <-- 4.0
       0     2134        M 0x8000072c mulhu   a5, a2, a4             #; a2  = 25, a4  = 0xcccccccd
       0     2137        M                                           #; (acc) a5  <-- 0x0037d793
       0     2138        M 0x80000730 srli    a5, a5, 3              #; a5  = 20, (wrb) a5  <-- 2
       0     2139        M 0x80000734 mul     a5, a5, a6             #; a5  = 2, a6  = 10
       0     2142        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2143        M 0x80000738 sub     a5, a2, a5             #; a2  = 25, a5  = 20, (wrb) a5  <-- 5
       0     2145        M 0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 5
       0     2146        M 0x80000744 addi    a3, a3, -1             #; a3  = 75, (wrb) a3  <-- 74
                         M                                           #; (f:fpu) ft3  <-- 5.0
       0     2147        M 0x80000748 addi    a2, a2, 1              #; a2  = 25, (wrb) a2  <-- 26
                         M 0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
       0     2148        M 0x8000074c bnez    a3, pc - 32            #; a3  = 74, taken, goto 0x8000072c
                         M                                           #; (f:fpu) ft0  <-- 5.0
       0     2149        M 0x8000072c mulhu   a5, a2, a4             #; a2  = 26, a4  = 0xcccccccd
       0     2152        M                                           #; (acc) a5  <-- 0x0037d793
       0     2153        M 0x80000730 srli    a5, a5, 3              #; a5  = 20, (wrb) a5  <-- 2
       0     2154        M 0x80000734 mul     a5, a5, a6             #; a5  = 2, a6  = 10
       0     2157        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2158        M 0x80000738 sub     a5, a2, a5             #; a2  = 26, a5  = 20, (wrb) a5  <-- 6
       0     2160        M 0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 6
       0     2161        M 0x80000744 addi    a3, a3, -1             #; a3  = 74, (wrb) a3  <-- 73
                         M                                           #; (f:fpu) ft3  <-- 6.0
       0     2162        M 0x80000748 addi    a2, a2, 1              #; a2  = 26, (wrb) a2  <-- 27
                         M 0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
       0     2163        M 0x8000074c bnez    a3, pc - 32            #; a3  = 73, taken, goto 0x8000072c
                         M                                           #; (f:fpu) ft0  <-- 6.0
       0     2164        M 0x8000072c mulhu   a5, a2, a4             #; a2  = 27, a4  = 0xcccccccd
       0     2167        M                                           #; (acc) a5  <-- 0x0037d793
       0     2168        M 0x80000730 srli    a5, a5, 3              #; a5  = 21, (wrb) a5  <-- 2
       0     2169        M 0x80000734 mul     a5, a5, a6             #; a5  = 2, a6  = 10
       0     2172        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2173        M 0x80000738 sub     a5, a2, a5             #; a2  = 27, a5  = 20, (wrb) a5  <-- 7
       0     2175        M 0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 7
       0     2176        M 0x80000744 addi    a3, a3, -1             #; a3  = 73, (wrb) a3  <-- 72
                         M                                           #; (f:fpu) ft3  <-- 7.0
       0     2177        M 0x80000748 addi    a2, a2, 1              #; a2  = 27, (wrb) a2  <-- 28
                         M 0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
       0     2178        M 0x8000074c bnez    a3, pc - 32            #; a3  = 72, taken, goto 0x8000072c
                         M                                           #; (f:fpu) ft0  <-- 7.0
       0     2179        M 0x8000072c mulhu   a5, a2, a4             #; a2  = 28, a4  = 0xcccccccd
       0     2182        M                                           #; (acc) a5  <-- 0x0037d793
       0     2183        M 0x80000730 srli    a5, a5, 3              #; a5  = 22, (wrb) a5  <-- 2
       0     2184        M 0x80000734 mul     a5, a5, a6             #; a5  = 2, a6  = 10
       0     2187        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2188        M 0x80000738 sub     a5, a2, a5             #; a2  = 28, a5  = 20, (wrb) a5  <-- 8
       0     2190        M 0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 8
       0     2191        M 0x80000744 addi    a3, a3, -1             #; a3  = 72, (wrb) a3  <-- 71
                         M                                           #; (f:fpu) ft3  <-- 8.0
       0     2192        M 0x80000748 addi    a2, a2, 1              #; a2  = 28, (wrb) a2  <-- 29
                         M 0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
       0     2193        M 0x8000074c bnez    a3, pc - 32            #; a3  = 71, taken, goto 0x8000072c
                         M                                           #; (f:fpu) ft0  <-- 8.0
       0     2194        M 0x8000072c mulhu   a5, a2, a4             #; a2  = 29, a4  = 0xcccccccd
       0     2197        M                                           #; (acc) a5  <-- 0x0037d793
       0     2198        M 0x80000730 srli    a5, a5, 3              #; a5  = 23, (wrb) a5  <-- 2
       0     2199        M 0x80000734 mul     a5, a5, a6             #; a5  = 2, a6  = 10
       0     2202        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2203        M 0x80000738 sub     a5, a2, a5             #; a2  = 29, a5  = 20, (wrb) a5  <-- 9
       0     2205        M 0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 9
       0     2206        M 0x80000744 addi    a3, a3, -1             #; a3  = 71, (wrb) a3  <-- 70
                         M                                           #; (f:fpu) ft3  <-- 9.0
       0     2207        M 0x80000748 addi    a2, a2, 1              #; a2  = 29, (wrb) a2  <-- 30
                         M 0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
       0     2208        M 0x8000074c bnez    a3, pc - 32            #; a3  = 70, taken, goto 0x8000072c
                         M                                           #; (f:fpu) ft0  <-- 9.0
       0     2209        M 0x8000072c mulhu   a5, a2, a4             #; a2  = 30, a4  = 0xcccccccd
       0     2212        M                                           #; (acc) a5  <-- 0x0037d793
       0     2213        M 0x80000730 srli    a5, a5, 3              #; a5  = 24, (wrb) a5  <-- 3
       0     2214        M 0x80000734 mul     a5, a5, a6             #; a5  = 3, a6  = 10
       0     2217        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2218        M 0x80000738 sub     a5, a2, a5             #; a2  = 30, a5  = 30, (wrb) a5  <-- 0
       0     2220        M 0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 0
       0     2221        M 0x80000744 addi    a3, a3, -1             #; a3  = 70, (wrb) a3  <-- 69
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     2222        M 0x80000748 addi    a2, a2, 1              #; a2  = 30, (wrb) a2  <-- 31
                         M 0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     2223        M 0x8000074c bnez    a3, pc - 32            #; a3  = 69, taken, goto 0x8000072c
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     2224        M 0x8000072c mulhu   a5, a2, a4             #; a2  = 31, a4  = 0xcccccccd
       0     2227        M                                           #; (acc) a5  <-- 0x0037d793
       0     2228        M 0x80000730 srli    a5, a5, 3              #; a5  = 24, (wrb) a5  <-- 3
       0     2229        M 0x80000734 mul     a5, a5, a6             #; a5  = 3, a6  = 10
       0     2232        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2233        M 0x80000738 sub     a5, a2, a5             #; a2  = 31, a5  = 30, (wrb) a5  <-- 1
       0     2235        M 0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 1
       0     2236        M 0x80000744 addi    a3, a3, -1             #; a3  = 69, (wrb) a3  <-- 68
                         M                                           #; (f:fpu) ft3  <-- 1.0
       0     2237        M 0x80000748 addi    a2, a2, 1              #; a2  = 31, (wrb) a2  <-- 32
                         M 0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
       0     2238        M 0x8000074c bnez    a3, pc - 32            #; a3  = 68, taken, goto 0x8000072c
                         M                                           #; (f:fpu) ft0  <-- 1.0
       0     2239        M 0x8000072c mulhu   a5, a2, a4             #; a2  = 32, a4  = 0xcccccccd
       0     2242        M                                           #; (acc) a5  <-- 0x0037d793
       0     2243        M 0x80000730 srli    a5, a5, 3              #; a5  = 25, (wrb) a5  <-- 3
       0     2244        M 0x80000734 mul     a5, a5, a6             #; a5  = 3, a6  = 10
       0     2247        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2248        M 0x80000738 sub     a5, a2, a5             #; a2  = 32, a5  = 30, (wrb) a5  <-- 2
       0     2250        M 0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 2
       0     2251        M 0x80000744 addi    a3, a3, -1             #; a3  = 68, (wrb) a3  <-- 67
                         M                                           #; (f:fpu) ft3  <-- 2.0
       0     2252        M 0x80000748 addi    a2, a2, 1              #; a2  = 32, (wrb) a2  <-- 33
                         M 0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
       0     2253        M 0x8000074c bnez    a3, pc - 32            #; a3  = 67, taken, goto 0x8000072c
                         M                                           #; (f:fpu) ft0  <-- 2.0
       0     2254        M 0x8000072c mulhu   a5, a2, a4             #; a2  = 33, a4  = 0xcccccccd
       0     2257        M                                           #; (acc) a5  <-- 0x0037d793
       0     2258        M 0x80000730 srli    a5, a5, 3              #; a5  = 26, (wrb) a5  <-- 3
       0     2259        M 0x80000734 mul     a5, a5, a6             #; a5  = 3, a6  = 10
       0     2262        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2263        M 0x80000738 sub     a5, a2, a5             #; a2  = 33, a5  = 30, (wrb) a5  <-- 3
       0     2265        M 0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 3
       0     2266        M 0x80000744 addi    a3, a3, -1             #; a3  = 67, (wrb) a3  <-- 66
                         M                                           #; (f:fpu) ft3  <-- 3.0
       0     2267        M 0x80000748 addi    a2, a2, 1              #; a2  = 33, (wrb) a2  <-- 34
                         M 0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
       0     2268        M 0x8000074c bnez    a3, pc - 32            #; a3  = 66, taken, goto 0x8000072c
                         M                                           #; (f:fpu) ft0  <-- 3.0
       0     2269        M 0x8000072c mulhu   a5, a2, a4             #; a2  = 34, a4  = 0xcccccccd
       0     2272        M                                           #; (acc) a5  <-- 0x0037d793
       0     2273        M 0x80000730 srli    a5, a5, 3              #; a5  = 27, (wrb) a5  <-- 3
       0     2274        M 0x80000734 mul     a5, a5, a6             #; a5  = 3, a6  = 10
       0     2277        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2278        M 0x80000738 sub     a5, a2, a5             #; a2  = 34, a5  = 30, (wrb) a5  <-- 4
       0     2280        M 0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 4
       0     2281        M 0x80000744 addi    a3, a3, -1             #; a3  = 66, (wrb) a3  <-- 65
                         M                                           #; (f:fpu) ft3  <-- 4.0
       0     2282        M 0x80000748 addi    a2, a2, 1              #; a2  = 34, (wrb) a2  <-- 35
                         M 0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
       0     2283        M 0x8000074c bnez    a3, pc - 32            #; a3  = 65, taken, goto 0x8000072c
                         M                                           #; (f:fpu) ft0  <-- 4.0
       0     2284        M 0x8000072c mulhu   a5, a2, a4             #; a2  = 35, a4  = 0xcccccccd
       0     2287        M                                           #; (acc) a5  <-- 0x0037d793
       0     2288        M 0x80000730 srli    a5, a5, 3              #; a5  = 28, (wrb) a5  <-- 3
       0     2289        M 0x80000734 mul     a5, a5, a6             #; a5  = 3, a6  = 10
       0     2292        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2293        M 0x80000738 sub     a5, a2, a5             #; a2  = 35, a5  = 30, (wrb) a5  <-- 5
       0     2295        M 0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 5
       0     2296        M 0x80000744 addi    a3, a3, -1             #; a3  = 65, (wrb) a3  <-- 64
                         M                                           #; (f:fpu) ft3  <-- 5.0
       0     2297        M 0x80000748 addi    a2, a2, 1              #; a2  = 35, (wrb) a2  <-- 36
                         M 0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
       0     2298        M 0x8000074c bnez    a3, pc - 32            #; a3  = 64, taken, goto 0x8000072c
                         M                                           #; (f:fpu) ft0  <-- 5.0
       0     2299        M 0x8000072c mulhu   a5, a2, a4             #; a2  = 36, a4  = 0xcccccccd
       0     2302        M                                           #; (acc) a5  <-- 0x0037d793
       0     2303        M 0x80000730 srli    a5, a5, 3              #; a5  = 28, (wrb) a5  <-- 3
       0     2304        M 0x80000734 mul     a5, a5, a6             #; a5  = 3, a6  = 10
       0     2307        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2308        M 0x80000738 sub     a5, a2, a5             #; a2  = 36, a5  = 30, (wrb) a5  <-- 6
       0     2310        M 0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 6
       0     2311        M 0x80000744 addi    a3, a3, -1             #; a3  = 64, (wrb) a3  <-- 63
                         M                                           #; (f:fpu) ft3  <-- 6.0
       0     2312        M 0x80000748 addi    a2, a2, 1              #; a2  = 36, (wrb) a2  <-- 37
                         M 0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
       0     2313        M 0x8000074c bnez    a3, pc - 32            #; a3  = 63, taken, goto 0x8000072c
                         M                                           #; (f:fpu) ft0  <-- 6.0
       0     2314        M 0x8000072c mulhu   a5, a2, a4             #; a2  = 37, a4  = 0xcccccccd
       0     2317        M                                           #; (acc) a5  <-- 0x0037d793
       0     2318        M 0x80000730 srli    a5, a5, 3              #; a5  = 29, (wrb) a5  <-- 3
       0     2319        M 0x80000734 mul     a5, a5, a6             #; a5  = 3, a6  = 10
       0     2322        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2323        M 0x80000738 sub     a5, a2, a5             #; a2  = 37, a5  = 30, (wrb) a5  <-- 7
       0     2325        M 0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 7
       0     2326        M 0x80000744 addi    a3, a3, -1             #; a3  = 63, (wrb) a3  <-- 62
                         M                                           #; (f:fpu) ft3  <-- 7.0
       0     2327        M 0x80000748 addi    a2, a2, 1              #; a2  = 37, (wrb) a2  <-- 38
                         M 0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
       0     2328        M 0x8000074c bnez    a3, pc - 32            #; a3  = 62, taken, goto 0x8000072c
                         M                                           #; (f:fpu) ft0  <-- 7.0
       0     2329        M 0x8000072c mulhu   a5, a2, a4             #; a2  = 38, a4  = 0xcccccccd
       0     2332        M                                           #; (acc) a5  <-- 0x0037d793
       0     2333        M 0x80000730 srli    a5, a5, 3              #; a5  = 30, (wrb) a5  <-- 3
       0     2334        M 0x80000734 mul     a5, a5, a6             #; a5  = 3, a6  = 10
       0     2337        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2338        M 0x80000738 sub     a5, a2, a5             #; a2  = 38, a5  = 30, (wrb) a5  <-- 8
       0     2340        M 0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 8
       0     2341        M 0x80000744 addi    a3, a3, -1             #; a3  = 62, (wrb) a3  <-- 61
                         M                                           #; (f:fpu) ft3  <-- 8.0
       0     2342        M 0x80000748 addi    a2, a2, 1              #; a2  = 38, (wrb) a2  <-- 39
                         M 0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
       0     2343        M 0x8000074c bnez    a3, pc - 32            #; a3  = 61, taken, goto 0x8000072c
                         M                                           #; (f:fpu) ft0  <-- 8.0
       0     2344        M 0x8000072c mulhu   a5, a2, a4             #; a2  = 39, a4  = 0xcccccccd
       0     2347        M                                           #; (acc) a5  <-- 0x0037d793
       0     2348        M 0x80000730 srli    a5, a5, 3              #; a5  = 31, (wrb) a5  <-- 3
       0     2349        M 0x80000734 mul     a5, a5, a6             #; a5  = 3, a6  = 10
       0     2352        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2353        M 0x80000738 sub     a5, a2, a5             #; a2  = 39, a5  = 30, (wrb) a5  <-- 9
       0     2355        M 0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 9
       0     2356        M 0x80000744 addi    a3, a3, -1             #; a3  = 61, (wrb) a3  <-- 60
                         M                                           #; (f:fpu) ft3  <-- 9.0
       0     2357        M 0x80000748 addi    a2, a2, 1              #; a2  = 39, (wrb) a2  <-- 40
                         M 0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
       0     2358        M 0x8000074c bnez    a3, pc - 32            #; a3  = 60, taken, goto 0x8000072c
                         M                                           #; (f:fpu) ft0  <-- 9.0
       0     2359        M 0x8000072c mulhu   a5, a2, a4             #; a2  = 40, a4  = 0xcccccccd
       0     2362        M                                           #; (acc) a5  <-- 0x0037d793
       0     2363        M 0x80000730 srli    a5, a5, 3              #; a5  = 32, (wrb) a5  <-- 4
       0     2364        M 0x80000734 mul     a5, a5, a6             #; a5  = 4, a6  = 10
       0     2367        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2368        M 0x80000738 sub     a5, a2, a5             #; a2  = 40, a5  = 40, (wrb) a5  <-- 0
       0     2370        M 0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 0
       0     2371        M 0x80000744 addi    a3, a3, -1             #; a3  = 60, (wrb) a3  <-- 59
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     2372        M 0x80000748 addi    a2, a2, 1              #; a2  = 40, (wrb) a2  <-- 41
                         M 0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     2373        M 0x8000074c bnez    a3, pc - 32            #; a3  = 59, taken, goto 0x8000072c
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     2374        M 0x8000072c mulhu   a5, a2, a4             #; a2  = 41, a4  = 0xcccccccd
       0     2377        M                                           #; (acc) a5  <-- 0x0037d793
       0     2378        M 0x80000730 srli    a5, a5, 3              #; a5  = 32, (wrb) a5  <-- 4
       0     2379        M 0x80000734 mul     a5, a5, a6             #; a5  = 4, a6  = 10
       0     2382        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2383        M 0x80000738 sub     a5, a2, a5             #; a2  = 41, a5  = 40, (wrb) a5  <-- 1
       0     2385        M 0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 1
       0     2386        M 0x80000744 addi    a3, a3, -1             #; a3  = 59, (wrb) a3  <-- 58
                         M                                           #; (f:fpu) ft3  <-- 1.0
       0     2387        M 0x80000748 addi    a2, a2, 1              #; a2  = 41, (wrb) a2  <-- 42
                         M 0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
       0     2388        M 0x8000074c bnez    a3, pc - 32            #; a3  = 58, taken, goto 0x8000072c
                         M                                           #; (f:fpu) ft0  <-- 1.0
       0     2389        M 0x8000072c mulhu   a5, a2, a4             #; a2  = 42, a4  = 0xcccccccd
       0     2392        M                                           #; (acc) a5  <-- 0x0037d793
       0     2393        M 0x80000730 srli    a5, a5, 3              #; a5  = 33, (wrb) a5  <-- 4
       0     2394        M 0x80000734 mul     a5, a5, a6             #; a5  = 4, a6  = 10
       0     2397        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2398        M 0x80000738 sub     a5, a2, a5             #; a2  = 42, a5  = 40, (wrb) a5  <-- 2
       0     2400        M 0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 2
       0     2401        M 0x80000744 addi    a3, a3, -1             #; a3  = 58, (wrb) a3  <-- 57
                         M                                           #; (f:fpu) ft3  <-- 2.0
       0     2402        M 0x80000748 addi    a2, a2, 1              #; a2  = 42, (wrb) a2  <-- 43
                         M 0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
       0     2403        M 0x8000074c bnez    a3, pc - 32            #; a3  = 57, taken, goto 0x8000072c
                         M                                           #; (f:fpu) ft0  <-- 2.0
       0     2404        M 0x8000072c mulhu   a5, a2, a4             #; a2  = 43, a4  = 0xcccccccd
       0     2407        M                                           #; (acc) a5  <-- 0x0037d793
       0     2408        M 0x80000730 srli    a5, a5, 3              #; a5  = 34, (wrb) a5  <-- 4
       0     2409        M 0x80000734 mul     a5, a5, a6             #; a5  = 4, a6  = 10
       0     2412        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2413        M 0x80000738 sub     a5, a2, a5             #; a2  = 43, a5  = 40, (wrb) a5  <-- 3
       0     2415        M 0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 3
       0     2416        M 0x80000744 addi    a3, a3, -1             #; a3  = 57, (wrb) a3  <-- 56
                         M                                           #; (f:fpu) ft3  <-- 3.0
       0     2417        M 0x80000748 addi    a2, a2, 1              #; a2  = 43, (wrb) a2  <-- 44
                         M 0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
       0     2418        M 0x8000074c bnez    a3, pc - 32            #; a3  = 56, taken, goto 0x8000072c
                         M                                           #; (f:fpu) ft0  <-- 3.0
       0     2419        M 0x8000072c mulhu   a5, a2, a4             #; a2  = 44, a4  = 0xcccccccd
       0     2422        M                                           #; (acc) a5  <-- 0x0037d793
       0     2423        M 0x80000730 srli    a5, a5, 3              #; a5  = 35, (wrb) a5  <-- 4
       0     2424        M 0x80000734 mul     a5, a5, a6             #; a5  = 4, a6  = 10
       0     2427        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2428        M 0x80000738 sub     a5, a2, a5             #; a2  = 44, a5  = 40, (wrb) a5  <-- 4
       0     2430        M 0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 4
       0     2431        M 0x80000744 addi    a3, a3, -1             #; a3  = 56, (wrb) a3  <-- 55
                         M                                           #; (f:fpu) ft3  <-- 4.0
       0     2432        M 0x80000748 addi    a2, a2, 1              #; a2  = 44, (wrb) a2  <-- 45
                         M 0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
       0     2433        M 0x8000074c bnez    a3, pc - 32            #; a3  = 55, taken, goto 0x8000072c
                         M                                           #; (f:fpu) ft0  <-- 4.0
       0     2434        M 0x8000072c mulhu   a5, a2, a4             #; a2  = 45, a4  = 0xcccccccd
       0     2437        M                                           #; (acc) a5  <-- 0x0037d793
       0     2438        M 0x80000730 srli    a5, a5, 3              #; a5  = 36, (wrb) a5  <-- 4
       0     2439        M 0x80000734 mul     a5, a5, a6             #; a5  = 4, a6  = 10
       0     2442        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2443        M 0x80000738 sub     a5, a2, a5             #; a2  = 45, a5  = 40, (wrb) a5  <-- 5
       0     2445        M 0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 5
       0     2446        M 0x80000744 addi    a3, a3, -1             #; a3  = 55, (wrb) a3  <-- 54
                         M                                           #; (f:fpu) ft3  <-- 5.0
       0     2447        M 0x80000748 addi    a2, a2, 1              #; a2  = 45, (wrb) a2  <-- 46
                         M 0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
       0     2448        M 0x8000074c bnez    a3, pc - 32            #; a3  = 54, taken, goto 0x8000072c
                         M                                           #; (f:fpu) ft0  <-- 5.0
       0     2449        M 0x8000072c mulhu   a5, a2, a4             #; a2  = 46, a4  = 0xcccccccd
       0     2452        M                                           #; (acc) a5  <-- 0x0037d793
       0     2453        M 0x80000730 srli    a5, a5, 3              #; a5  = 36, (wrb) a5  <-- 4
       0     2454        M 0x80000734 mul     a5, a5, a6             #; a5  = 4, a6  = 10
       0     2457        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2458        M 0x80000738 sub     a5, a2, a5             #; a2  = 46, a5  = 40, (wrb) a5  <-- 6
       0     2460        M 0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 6
       0     2461        M 0x80000744 addi    a3, a3, -1             #; a3  = 54, (wrb) a3  <-- 53
                         M                                           #; (f:fpu) ft3  <-- 6.0
       0     2462        M 0x80000748 addi    a2, a2, 1              #; a2  = 46, (wrb) a2  <-- 47
                         M 0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
       0     2463        M 0x8000074c bnez    a3, pc - 32            #; a3  = 53, taken, goto 0x8000072c
                         M                                           #; (f:fpu) ft0  <-- 6.0
       0     2464        M 0x8000072c mulhu   a5, a2, a4             #; a2  = 47, a4  = 0xcccccccd
       0     2467        M                                           #; (acc) a5  <-- 0x0037d793
       0     2468        M 0x80000730 srli    a5, a5, 3              #; a5  = 37, (wrb) a5  <-- 4
       0     2469        M 0x80000734 mul     a5, a5, a6             #; a5  = 4, a6  = 10
       0     2472        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2473        M 0x80000738 sub     a5, a2, a5             #; a2  = 47, a5  = 40, (wrb) a5  <-- 7
       0     2475        M 0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 7
       0     2476        M 0x80000744 addi    a3, a3, -1             #; a3  = 53, (wrb) a3  <-- 52
                         M                                           #; (f:fpu) ft3  <-- 7.0
       0     2477        M 0x80000748 addi    a2, a2, 1              #; a2  = 47, (wrb) a2  <-- 48
                         M 0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
       0     2478        M 0x8000074c bnez    a3, pc - 32            #; a3  = 52, taken, goto 0x8000072c
                         M                                           #; (f:fpu) ft0  <-- 7.0
       0     2479        M 0x8000072c mulhu   a5, a2, a4             #; a2  = 48, a4  = 0xcccccccd
       0     2482        M                                           #; (acc) a5  <-- 0x0037d793
       0     2483        M 0x80000730 srli    a5, a5, 3              #; a5  = 38, (wrb) a5  <-- 4
       0     2484        M 0x80000734 mul     a5, a5, a6             #; a5  = 4, a6  = 10
       0     2487        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2488        M 0x80000738 sub     a5, a2, a5             #; a2  = 48, a5  = 40, (wrb) a5  <-- 8
       0     2490        M 0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 8
       0     2491        M 0x80000744 addi    a3, a3, -1             #; a3  = 52, (wrb) a3  <-- 51
                         M                                           #; (f:fpu) ft3  <-- 8.0
       0     2492        M 0x80000748 addi    a2, a2, 1              #; a2  = 48, (wrb) a2  <-- 49
                         M 0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
       0     2493        M 0x8000074c bnez    a3, pc - 32            #; a3  = 51, taken, goto 0x8000072c
                         M                                           #; (f:fpu) ft0  <-- 8.0
       0     2494        M 0x8000072c mulhu   a5, a2, a4             #; a2  = 49, a4  = 0xcccccccd
       0     2497        M                                           #; (acc) a5  <-- 0x0037d793
       0     2498        M 0x80000730 srli    a5, a5, 3              #; a5  = 39, (wrb) a5  <-- 4
       0     2499        M 0x80000734 mul     a5, a5, a6             #; a5  = 4, a6  = 10
       0     2502        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2503        M 0x80000738 sub     a5, a2, a5             #; a2  = 49, a5  = 40, (wrb) a5  <-- 9
       0     2505        M 0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 9
       0     2506        M 0x80000744 addi    a3, a3, -1             #; a3  = 51, (wrb) a3  <-- 50
                         M                                           #; (f:fpu) ft3  <-- 9.0
       0     2507        M 0x80000748 addi    a2, a2, 1              #; a2  = 49, (wrb) a2  <-- 50
                         M 0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
       0     2508        M 0x8000074c bnez    a3, pc - 32            #; a3  = 50, taken, goto 0x8000072c
                         M                                           #; (f:fpu) ft0  <-- 9.0
       0     2509        M 0x8000072c mulhu   a5, a2, a4             #; a2  = 50, a4  = 0xcccccccd
       0     2512        M                                           #; (acc) a5  <-- 0x0037d793
       0     2513        M 0x80000730 srli    a5, a5, 3              #; a5  = 40, (wrb) a5  <-- 5
       0     2514        M 0x80000734 mul     a5, a5, a6             #; a5  = 5, a6  = 10
       0     2517        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2518        M 0x80000738 sub     a5, a2, a5             #; a2  = 50, a5  = 50, (wrb) a5  <-- 0
       0     2520        M 0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 0
       0     2521        M 0x80000744 addi    a3, a3, -1             #; a3  = 50, (wrb) a3  <-- 49
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     2522        M 0x80000748 addi    a2, a2, 1              #; a2  = 50, (wrb) a2  <-- 51
                         M 0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     2523        M 0x8000074c bnez    a3, pc - 32            #; a3  = 49, taken, goto 0x8000072c
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     2524        M 0x8000072c mulhu   a5, a2, a4             #; a2  = 51, a4  = 0xcccccccd
       0     2527        M                                           #; (acc) a5  <-- 0x0037d793
       0     2528        M 0x80000730 srli    a5, a5, 3              #; a5  = 40, (wrb) a5  <-- 5
       0     2529        M 0x80000734 mul     a5, a5, a6             #; a5  = 5, a6  = 10
       0     2532        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2533        M 0x80000738 sub     a5, a2, a5             #; a2  = 51, a5  = 50, (wrb) a5  <-- 1
       0     2535        M 0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 1
       0     2536        M 0x80000744 addi    a3, a3, -1             #; a3  = 49, (wrb) a3  <-- 48
                         M                                           #; (f:fpu) ft3  <-- 1.0
       0     2537        M 0x80000748 addi    a2, a2, 1              #; a2  = 51, (wrb) a2  <-- 52
                         M 0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
       0     2538        M 0x8000074c bnez    a3, pc - 32            #; a3  = 48, taken, goto 0x8000072c
                         M                                           #; (f:fpu) ft0  <-- 1.0
       0     2539        M 0x8000072c mulhu   a5, a2, a4             #; a2  = 52, a4  = 0xcccccccd
       0     2542        M                                           #; (acc) a5  <-- 0x0037d793
       0     2543        M 0x80000730 srli    a5, a5, 3              #; a5  = 41, (wrb) a5  <-- 5
       0     2544        M 0x80000734 mul     a5, a5, a6             #; a5  = 5, a6  = 10
       0     2547        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2548        M 0x80000738 sub     a5, a2, a5             #; a2  = 52, a5  = 50, (wrb) a5  <-- 2
       0     2550        M 0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 2
       0     2551        M 0x80000744 addi    a3, a3, -1             #; a3  = 48, (wrb) a3  <-- 47
                         M                                           #; (f:fpu) ft3  <-- 2.0
       0     2552        M 0x80000748 addi    a2, a2, 1              #; a2  = 52, (wrb) a2  <-- 53
                         M 0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
       0     2553        M 0x8000074c bnez    a3, pc - 32            #; a3  = 47, taken, goto 0x8000072c
                         M                                           #; (f:fpu) ft0  <-- 2.0
       0     2554        M 0x8000072c mulhu   a5, a2, a4             #; a2  = 53, a4  = 0xcccccccd
       0     2557        M                                           #; (acc) a5  <-- 0x0037d793
       0     2558        M 0x80000730 srli    a5, a5, 3              #; a5  = 42, (wrb) a5  <-- 5
       0     2559        M 0x80000734 mul     a5, a5, a6             #; a5  = 5, a6  = 10
       0     2562        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2563        M 0x80000738 sub     a5, a2, a5             #; a2  = 53, a5  = 50, (wrb) a5  <-- 3
       0     2565        M 0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 3
       0     2566        M 0x80000744 addi    a3, a3, -1             #; a3  = 47, (wrb) a3  <-- 46
                         M                                           #; (f:fpu) ft3  <-- 3.0
       0     2567        M 0x80000748 addi    a2, a2, 1              #; a2  = 53, (wrb) a2  <-- 54
                         M 0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
       0     2568        M 0x8000074c bnez    a3, pc - 32            #; a3  = 46, taken, goto 0x8000072c
                         M                                           #; (f:fpu) ft0  <-- 3.0
       0     2569        M 0x8000072c mulhu   a5, a2, a4             #; a2  = 54, a4  = 0xcccccccd
       0     2572        M                                           #; (acc) a5  <-- 0x0037d793
       0     2573        M 0x80000730 srli    a5, a5, 3              #; a5  = 43, (wrb) a5  <-- 5
       0     2574        M 0x80000734 mul     a5, a5, a6             #; a5  = 5, a6  = 10
       0     2577        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2578        M 0x80000738 sub     a5, a2, a5             #; a2  = 54, a5  = 50, (wrb) a5  <-- 4
       0     2580        M 0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 4
       0     2581        M 0x80000744 addi    a3, a3, -1             #; a3  = 46, (wrb) a3  <-- 45
                         M                                           #; (f:fpu) ft3  <-- 4.0
       0     2582        M 0x80000748 addi    a2, a2, 1              #; a2  = 54, (wrb) a2  <-- 55
                         M 0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
       0     2583        M 0x8000074c bnez    a3, pc - 32            #; a3  = 45, taken, goto 0x8000072c
                         M                                           #; (f:fpu) ft0  <-- 4.0
       0     2584        M 0x8000072c mulhu   a5, a2, a4             #; a2  = 55, a4  = 0xcccccccd
       0     2587        M                                           #; (acc) a5  <-- 0x0037d793
       0     2588        M 0x80000730 srli    a5, a5, 3              #; a5  = 44, (wrb) a5  <-- 5
       0     2589        M 0x80000734 mul     a5, a5, a6             #; a5  = 5, a6  = 10
       0     2592        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2593        M 0x80000738 sub     a5, a2, a5             #; a2  = 55, a5  = 50, (wrb) a5  <-- 5
       0     2595        M 0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 5
       0     2596        M 0x80000744 addi    a3, a3, -1             #; a3  = 45, (wrb) a3  <-- 44
                         M                                           #; (f:fpu) ft3  <-- 5.0
       0     2597        M 0x80000748 addi    a2, a2, 1              #; a2  = 55, (wrb) a2  <-- 56
                         M 0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
       0     2598        M 0x8000074c bnez    a3, pc - 32            #; a3  = 44, taken, goto 0x8000072c
                         M                                           #; (f:fpu) ft0  <-- 5.0
       0     2599        M 0x8000072c mulhu   a5, a2, a4             #; a2  = 56, a4  = 0xcccccccd
       0     2602        M                                           #; (acc) a5  <-- 0x0037d793
       0     2603        M 0x80000730 srli    a5, a5, 3              #; a5  = 44, (wrb) a5  <-- 5
       0     2604        M 0x80000734 mul     a5, a5, a6             #; a5  = 5, a6  = 10
       0     2607        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2608        M 0x80000738 sub     a5, a2, a5             #; a2  = 56, a5  = 50, (wrb) a5  <-- 6
       0     2610        M 0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 6
       0     2611        M 0x80000744 addi    a3, a3, -1             #; a3  = 44, (wrb) a3  <-- 43
                         M                                           #; (f:fpu) ft3  <-- 6.0
       0     2612        M 0x80000748 addi    a2, a2, 1              #; a2  = 56, (wrb) a2  <-- 57
                         M 0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
       0     2613        M 0x8000074c bnez    a3, pc - 32            #; a3  = 43, taken, goto 0x8000072c
                         M                                           #; (f:fpu) ft0  <-- 6.0
       0     2614        M 0x8000072c mulhu   a5, a2, a4             #; a2  = 57, a4  = 0xcccccccd
       0     2617        M                                           #; (acc) a5  <-- 0x0037d793
       0     2618        M 0x80000730 srli    a5, a5, 3              #; a5  = 45, (wrb) a5  <-- 5
       0     2619        M 0x80000734 mul     a5, a5, a6             #; a5  = 5, a6  = 10
       0     2622        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2623        M 0x80000738 sub     a5, a2, a5             #; a2  = 57, a5  = 50, (wrb) a5  <-- 7
       0     2625        M 0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 7
       0     2626        M 0x80000744 addi    a3, a3, -1             #; a3  = 43, (wrb) a3  <-- 42
                         M                                           #; (f:fpu) ft3  <-- 7.0
       0     2627        M 0x80000748 addi    a2, a2, 1              #; a2  = 57, (wrb) a2  <-- 58
                         M 0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
       0     2628        M 0x8000074c bnez    a3, pc - 32            #; a3  = 42, taken, goto 0x8000072c
                         M                                           #; (f:fpu) ft0  <-- 7.0
       0     2629        M 0x8000072c mulhu   a5, a2, a4             #; a2  = 58, a4  = 0xcccccccd
       0     2632        M                                           #; (acc) a5  <-- 0x0037d793
       0     2633        M 0x80000730 srli    a5, a5, 3              #; a5  = 46, (wrb) a5  <-- 5
       0     2634        M 0x80000734 mul     a5, a5, a6             #; a5  = 5, a6  = 10
       0     2637        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2638        M 0x80000738 sub     a5, a2, a5             #; a2  = 58, a5  = 50, (wrb) a5  <-- 8
       0     2640        M 0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 8
       0     2641        M 0x80000744 addi    a3, a3, -1             #; a3  = 42, (wrb) a3  <-- 41
                         M                                           #; (f:fpu) ft3  <-- 8.0
       0     2642        M 0x80000748 addi    a2, a2, 1              #; a2  = 58, (wrb) a2  <-- 59
                         M 0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
       0     2643        M 0x8000074c bnez    a3, pc - 32            #; a3  = 41, taken, goto 0x8000072c
                         M                                           #; (f:fpu) ft0  <-- 8.0
       0     2644        M 0x8000072c mulhu   a5, a2, a4             #; a2  = 59, a4  = 0xcccccccd
       0     2647        M                                           #; (acc) a5  <-- 0x0037d793
       0     2648        M 0x80000730 srli    a5, a5, 3              #; a5  = 47, (wrb) a5  <-- 5
       0     2649        M 0x80000734 mul     a5, a5, a6             #; a5  = 5, a6  = 10
       0     2652        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2653        M 0x80000738 sub     a5, a2, a5             #; a2  = 59, a5  = 50, (wrb) a5  <-- 9
       0     2655        M 0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 9
       0     2656        M 0x80000744 addi    a3, a3, -1             #; a3  = 41, (wrb) a3  <-- 40
                         M                                           #; (f:fpu) ft3  <-- 9.0
       0     2657        M 0x80000748 addi    a2, a2, 1              #; a2  = 59, (wrb) a2  <-- 60
                         M 0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
       0     2658        M 0x8000074c bnez    a3, pc - 32            #; a3  = 40, taken, goto 0x8000072c
                         M                                           #; (f:fpu) ft0  <-- 9.0
       0     2659        M 0x8000072c mulhu   a5, a2, a4             #; a2  = 60, a4  = 0xcccccccd
       0     2662        M                                           #; (acc) a5  <-- 0x0037d793
       0     2663        M 0x80000730 srli    a5, a5, 3              #; a5  = 48, (wrb) a5  <-- 6
       0     2664        M 0x80000734 mul     a5, a5, a6             #; a5  = 6, a6  = 10
       0     2667        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2668        M 0x80000738 sub     a5, a2, a5             #; a2  = 60, a5  = 60, (wrb) a5  <-- 0
       0     2670        M 0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 0
       0     2671        M 0x80000744 addi    a3, a3, -1             #; a3  = 40, (wrb) a3  <-- 39
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     2672        M 0x80000748 addi    a2, a2, 1              #; a2  = 60, (wrb) a2  <-- 61
                         M 0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     2673        M 0x8000074c bnez    a3, pc - 32            #; a3  = 39, taken, goto 0x8000072c
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     2674        M 0x8000072c mulhu   a5, a2, a4             #; a2  = 61, a4  = 0xcccccccd
       0     2677        M                                           #; (acc) a5  <-- 0x0037d793
       0     2678        M 0x80000730 srli    a5, a5, 3              #; a5  = 48, (wrb) a5  <-- 6
       0     2679        M 0x80000734 mul     a5, a5, a6             #; a5  = 6, a6  = 10
       0     2682        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2683        M 0x80000738 sub     a5, a2, a5             #; a2  = 61, a5  = 60, (wrb) a5  <-- 1
       0     2685        M 0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 1
       0     2686        M 0x80000744 addi    a3, a3, -1             #; a3  = 39, (wrb) a3  <-- 38
                         M                                           #; (f:fpu) ft3  <-- 1.0
       0     2687        M 0x80000748 addi    a2, a2, 1              #; a2  = 61, (wrb) a2  <-- 62
                         M 0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
       0     2688        M 0x8000074c bnez    a3, pc - 32            #; a3  = 38, taken, goto 0x8000072c
                         M                                           #; (f:fpu) ft0  <-- 1.0
       0     2689        M 0x8000072c mulhu   a5, a2, a4             #; a2  = 62, a4  = 0xcccccccd
       0     2692        M                                           #; (acc) a5  <-- 0x0037d793
       0     2693        M 0x80000730 srli    a5, a5, 3              #; a5  = 49, (wrb) a5  <-- 6
       0     2694        M 0x80000734 mul     a5, a5, a6             #; a5  = 6, a6  = 10
       0     2697        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2698        M 0x80000738 sub     a5, a2, a5             #; a2  = 62, a5  = 60, (wrb) a5  <-- 2
       0     2700        M 0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 2
       0     2701        M 0x80000744 addi    a3, a3, -1             #; a3  = 38, (wrb) a3  <-- 37
                         M                                           #; (f:fpu) ft3  <-- 2.0
       0     2702        M 0x80000748 addi    a2, a2, 1              #; a2  = 62, (wrb) a2  <-- 63
                         M 0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
       0     2703        M 0x8000074c bnez    a3, pc - 32            #; a3  = 37, taken, goto 0x8000072c
                         M                                           #; (f:fpu) ft0  <-- 2.0
       0     2704        M 0x8000072c mulhu   a5, a2, a4             #; a2  = 63, a4  = 0xcccccccd
       0     2707        M                                           #; (acc) a5  <-- 0x0037d793
       0     2708        M 0x80000730 srli    a5, a5, 3              #; a5  = 50, (wrb) a5  <-- 6
       0     2709        M 0x80000734 mul     a5, a5, a6             #; a5  = 6, a6  = 10
       0     2712        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2713        M 0x80000738 sub     a5, a2, a5             #; a2  = 63, a5  = 60, (wrb) a5  <-- 3
       0     2715        M 0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 3
       0     2716        M 0x80000744 addi    a3, a3, -1             #; a3  = 37, (wrb) a3  <-- 36
                         M                                           #; (f:fpu) ft3  <-- 3.0
       0     2717        M 0x80000748 addi    a2, a2, 1              #; a2  = 63, (wrb) a2  <-- 64
                         M 0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
       0     2718        M 0x8000074c bnez    a3, pc - 32            #; a3  = 36, taken, goto 0x8000072c
                         M                                           #; (f:fpu) ft0  <-- 3.0
       0     2719        M 0x8000072c mulhu   a5, a2, a4             #; a2  = 64, a4  = 0xcccccccd
       0     2722        M                                           #; (acc) a5  <-- 0x0037d793
       0     2723        M 0x80000730 srli    a5, a5, 3              #; a5  = 51, (wrb) a5  <-- 6
       0     2724        M 0x80000734 mul     a5, a5, a6             #; a5  = 6, a6  = 10
       0     2727        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2728        M 0x80000738 sub     a5, a2, a5             #; a2  = 64, a5  = 60, (wrb) a5  <-- 4
       0     2730        M 0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 4
       0     2731        M 0x80000744 addi    a3, a3, -1             #; a3  = 36, (wrb) a3  <-- 35
                         M                                           #; (f:fpu) ft3  <-- 4.0
       0     2732        M 0x80000748 addi    a2, a2, 1              #; a2  = 64, (wrb) a2  <-- 65
                         M 0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
       0     2733        M 0x8000074c bnez    a3, pc - 32            #; a3  = 35, taken, goto 0x8000072c
                         M                                           #; (f:fpu) ft0  <-- 4.0
       0     2734        M 0x8000072c mulhu   a5, a2, a4             #; a2  = 65, a4  = 0xcccccccd
       0     2737        M                                           #; (acc) a5  <-- 0x0037d793
       0     2738        M 0x80000730 srli    a5, a5, 3              #; a5  = 52, (wrb) a5  <-- 6
       0     2739        M 0x80000734 mul     a5, a5, a6             #; a5  = 6, a6  = 10
       0     2742        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2743        M 0x80000738 sub     a5, a2, a5             #; a2  = 65, a5  = 60, (wrb) a5  <-- 5
       0     2745        M 0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 5
       0     2746        M 0x80000744 addi    a3, a3, -1             #; a3  = 35, (wrb) a3  <-- 34
                         M                                           #; (f:fpu) ft3  <-- 5.0
       0     2747        M 0x80000748 addi    a2, a2, 1              #; a2  = 65, (wrb) a2  <-- 66
                         M 0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
       0     2748        M 0x8000074c bnez    a3, pc - 32            #; a3  = 34, taken, goto 0x8000072c
                         M                                           #; (f:fpu) ft0  <-- 5.0
       0     2749        M 0x8000072c mulhu   a5, a2, a4             #; a2  = 66, a4  = 0xcccccccd
       0     2752        M                                           #; (acc) a5  <-- 0x0037d793
       0     2753        M 0x80000730 srli    a5, a5, 3              #; a5  = 52, (wrb) a5  <-- 6
       0     2754        M 0x80000734 mul     a5, a5, a6             #; a5  = 6, a6  = 10
       0     2757        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2758        M 0x80000738 sub     a5, a2, a5             #; a2  = 66, a5  = 60, (wrb) a5  <-- 6
       0     2760        M 0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 6
       0     2761        M 0x80000744 addi    a3, a3, -1             #; a3  = 34, (wrb) a3  <-- 33
                         M                                           #; (f:fpu) ft3  <-- 6.0
       0     2762        M 0x80000748 addi    a2, a2, 1              #; a2  = 66, (wrb) a2  <-- 67
                         M 0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
       0     2763        M 0x8000074c bnez    a3, pc - 32            #; a3  = 33, taken, goto 0x8000072c
                         M                                           #; (f:fpu) ft0  <-- 6.0
       0     2764        M 0x8000072c mulhu   a5, a2, a4             #; a2  = 67, a4  = 0xcccccccd
       0     2767        M                                           #; (acc) a5  <-- 0x0037d793
       0     2768        M 0x80000730 srli    a5, a5, 3              #; a5  = 53, (wrb) a5  <-- 6
       0     2769        M 0x80000734 mul     a5, a5, a6             #; a5  = 6, a6  = 10
       0     2772        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2773        M 0x80000738 sub     a5, a2, a5             #; a2  = 67, a5  = 60, (wrb) a5  <-- 7
       0     2775        M 0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 7
       0     2776        M 0x80000744 addi    a3, a3, -1             #; a3  = 33, (wrb) a3  <-- 32
                         M                                           #; (f:fpu) ft3  <-- 7.0
       0     2777        M 0x80000748 addi    a2, a2, 1              #; a2  = 67, (wrb) a2  <-- 68
                         M 0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
       0     2778        M 0x8000074c bnez    a3, pc - 32            #; a3  = 32, taken, goto 0x8000072c
                         M                                           #; (f:fpu) ft0  <-- 7.0
       0     2779        M 0x8000072c mulhu   a5, a2, a4             #; a2  = 68, a4  = 0xcccccccd
       0     2782        M                                           #; (acc) a5  <-- 0x0037d793
       0     2783        M 0x80000730 srli    a5, a5, 3              #; a5  = 54, (wrb) a5  <-- 6
       0     2784        M 0x80000734 mul     a5, a5, a6             #; a5  = 6, a6  = 10
       0     2787        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2788        M 0x80000738 sub     a5, a2, a5             #; a2  = 68, a5  = 60, (wrb) a5  <-- 8
       0     2790        M 0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 8
       0     2791        M 0x80000744 addi    a3, a3, -1             #; a3  = 32, (wrb) a3  <-- 31
                         M                                           #; (f:fpu) ft3  <-- 8.0
       0     2792        M 0x80000748 addi    a2, a2, 1              #; a2  = 68, (wrb) a2  <-- 69
                         M 0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
       0     2793        M 0x8000074c bnez    a3, pc - 32            #; a3  = 31, taken, goto 0x8000072c
                         M                                           #; (f:fpu) ft0  <-- 8.0
       0     2794        M 0x8000072c mulhu   a5, a2, a4             #; a2  = 69, a4  = 0xcccccccd
       0     2797        M                                           #; (acc) a5  <-- 0x0037d793
       0     2798        M 0x80000730 srli    a5, a5, 3              #; a5  = 55, (wrb) a5  <-- 6
       0     2799        M 0x80000734 mul     a5, a5, a6             #; a5  = 6, a6  = 10
       0     2802        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2803        M 0x80000738 sub     a5, a2, a5             #; a2  = 69, a5  = 60, (wrb) a5  <-- 9
       0     2805        M 0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 9
       0     2806        M 0x80000744 addi    a3, a3, -1             #; a3  = 31, (wrb) a3  <-- 30
                         M                                           #; (f:fpu) ft3  <-- 9.0
       0     2807        M 0x80000748 addi    a2, a2, 1              #; a2  = 69, (wrb) a2  <-- 70
                         M 0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
       0     2808        M 0x8000074c bnez    a3, pc - 32            #; a3  = 30, taken, goto 0x8000072c
                         M                                           #; (f:fpu) ft0  <-- 9.0
       0     2809        M 0x8000072c mulhu   a5, a2, a4             #; a2  = 70, a4  = 0xcccccccd
       0     2812        M                                           #; (acc) a5  <-- 0x0037d793
       0     2813        M 0x80000730 srli    a5, a5, 3              #; a5  = 56, (wrb) a5  <-- 7
       0     2814        M 0x80000734 mul     a5, a5, a6             #; a5  = 7, a6  = 10
       0     2817        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2818        M 0x80000738 sub     a5, a2, a5             #; a2  = 70, a5  = 70, (wrb) a5  <-- 0
       0     2820        M 0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 0
       0     2821        M 0x80000744 addi    a3, a3, -1             #; a3  = 30, (wrb) a3  <-- 29
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     2822        M 0x80000748 addi    a2, a2, 1              #; a2  = 70, (wrb) a2  <-- 71
                         M 0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     2823        M 0x8000074c bnez    a3, pc - 32            #; a3  = 29, taken, goto 0x8000072c
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     2824        M 0x8000072c mulhu   a5, a2, a4             #; a2  = 71, a4  = 0xcccccccd
       0     2827        M                                           #; (acc) a5  <-- 0x0037d793
       0     2828        M 0x80000730 srli    a5, a5, 3              #; a5  = 56, (wrb) a5  <-- 7
       0     2829        M 0x80000734 mul     a5, a5, a6             #; a5  = 7, a6  = 10
       0     2832        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2833        M 0x80000738 sub     a5, a2, a5             #; a2  = 71, a5  = 70, (wrb) a5  <-- 1
       0     2835        M 0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 1
       0     2836        M 0x80000744 addi    a3, a3, -1             #; a3  = 29, (wrb) a3  <-- 28
                         M                                           #; (f:fpu) ft3  <-- 1.0
       0     2837        M 0x80000748 addi    a2, a2, 1              #; a2  = 71, (wrb) a2  <-- 72
                         M 0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
       0     2838        M 0x8000074c bnez    a3, pc - 32            #; a3  = 28, taken, goto 0x8000072c
                         M                                           #; (f:fpu) ft0  <-- 1.0
       0     2839        M 0x8000072c mulhu   a5, a2, a4             #; a2  = 72, a4  = 0xcccccccd
       0     2842        M                                           #; (acc) a5  <-- 0x0037d793
       0     2843        M 0x80000730 srli    a5, a5, 3              #; a5  = 57, (wrb) a5  <-- 7
       0     2844        M 0x80000734 mul     a5, a5, a6             #; a5  = 7, a6  = 10
       0     2847        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2848        M 0x80000738 sub     a5, a2, a5             #; a2  = 72, a5  = 70, (wrb) a5  <-- 2
       0     2850        M 0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 2
       0     2851        M 0x80000744 addi    a3, a3, -1             #; a3  = 28, (wrb) a3  <-- 27
                         M                                           #; (f:fpu) ft3  <-- 2.0
       0     2852        M 0x80000748 addi    a2, a2, 1              #; a2  = 72, (wrb) a2  <-- 73
                         M 0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
       0     2853        M 0x8000074c bnez    a3, pc - 32            #; a3  = 27, taken, goto 0x8000072c
                         M                                           #; (f:fpu) ft0  <-- 2.0
       0     2854        M 0x8000072c mulhu   a5, a2, a4             #; a2  = 73, a4  = 0xcccccccd
       0     2857        M                                           #; (acc) a5  <-- 0x0037d793
       0     2858        M 0x80000730 srli    a5, a5, 3              #; a5  = 58, (wrb) a5  <-- 7
       0     2859        M 0x80000734 mul     a5, a5, a6             #; a5  = 7, a6  = 10
       0     2862        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2863        M 0x80000738 sub     a5, a2, a5             #; a2  = 73, a5  = 70, (wrb) a5  <-- 3
       0     2865        M 0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 3
       0     2866        M 0x80000744 addi    a3, a3, -1             #; a3  = 27, (wrb) a3  <-- 26
                         M                                           #; (f:fpu) ft3  <-- 3.0
       0     2867        M 0x80000748 addi    a2, a2, 1              #; a2  = 73, (wrb) a2  <-- 74
                         M 0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
       0     2868        M 0x8000074c bnez    a3, pc - 32            #; a3  = 26, taken, goto 0x8000072c
                         M                                           #; (f:fpu) ft0  <-- 3.0
       0     2869        M 0x8000072c mulhu   a5, a2, a4             #; a2  = 74, a4  = 0xcccccccd
       0     2872        M                                           #; (acc) a5  <-- 0x0037d793
       0     2873        M 0x80000730 srli    a5, a5, 3              #; a5  = 59, (wrb) a5  <-- 7
       0     2874        M 0x80000734 mul     a5, a5, a6             #; a5  = 7, a6  = 10
       0     2877        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2878        M 0x80000738 sub     a5, a2, a5             #; a2  = 74, a5  = 70, (wrb) a5  <-- 4
       0     2880        M 0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 4
       0     2881        M 0x80000744 addi    a3, a3, -1             #; a3  = 26, (wrb) a3  <-- 25
                         M                                           #; (f:fpu) ft3  <-- 4.0
       0     2882        M 0x80000748 addi    a2, a2, 1              #; a2  = 74, (wrb) a2  <-- 75
                         M 0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
       0     2883        M 0x8000074c bnez    a3, pc - 32            #; a3  = 25, taken, goto 0x8000072c
                         M                                           #; (f:fpu) ft0  <-- 4.0
       0     2884        M 0x8000072c mulhu   a5, a2, a4             #; a2  = 75, a4  = 0xcccccccd
       0     2887        M                                           #; (acc) a5  <-- 0x0037d793
       0     2888        M 0x80000730 srli    a5, a5, 3              #; a5  = 60, (wrb) a5  <-- 7
       0     2889        M 0x80000734 mul     a5, a5, a6             #; a5  = 7, a6  = 10
       0     2892        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2893        M 0x80000738 sub     a5, a2, a5             #; a2  = 75, a5  = 70, (wrb) a5  <-- 5
       0     2895        M 0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 5
       0     2896        M 0x80000744 addi    a3, a3, -1             #; a3  = 25, (wrb) a3  <-- 24
                         M                                           #; (f:fpu) ft3  <-- 5.0
       0     2897        M 0x80000748 addi    a2, a2, 1              #; a2  = 75, (wrb) a2  <-- 76
                         M 0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
       0     2898        M 0x8000074c bnez    a3, pc - 32            #; a3  = 24, taken, goto 0x8000072c
                         M                                           #; (f:fpu) ft0  <-- 5.0
       0     2899        M 0x8000072c mulhu   a5, a2, a4             #; a2  = 76, a4  = 0xcccccccd
       0     2902        M                                           #; (acc) a5  <-- 0x0037d793
       0     2903        M 0x80000730 srli    a5, a5, 3              #; a5  = 60, (wrb) a5  <-- 7
       0     2904        M 0x80000734 mul     a5, a5, a6             #; a5  = 7, a6  = 10
       0     2907        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2908        M 0x80000738 sub     a5, a2, a5             #; a2  = 76, a5  = 70, (wrb) a5  <-- 6
       0     2910        M 0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 6
       0     2911        M 0x80000744 addi    a3, a3, -1             #; a3  = 24, (wrb) a3  <-- 23
                         M                                           #; (f:fpu) ft3  <-- 6.0
       0     2912        M 0x80000748 addi    a2, a2, 1              #; a2  = 76, (wrb) a2  <-- 77
                         M 0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
       0     2913        M 0x8000074c bnez    a3, pc - 32            #; a3  = 23, taken, goto 0x8000072c
                         M                                           #; (f:fpu) ft0  <-- 6.0
       0     2914        M 0x8000072c mulhu   a5, a2, a4             #; a2  = 77, a4  = 0xcccccccd
       0     2917        M                                           #; (acc) a5  <-- 0x0037d793
       0     2918        M 0x80000730 srli    a5, a5, 3              #; a5  = 61, (wrb) a5  <-- 7
       0     2919        M 0x80000734 mul     a5, a5, a6             #; a5  = 7, a6  = 10
       0     2922        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2923        M 0x80000738 sub     a5, a2, a5             #; a2  = 77, a5  = 70, (wrb) a5  <-- 7
       0     2925        M 0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 7
       0     2926        M 0x80000744 addi    a3, a3, -1             #; a3  = 23, (wrb) a3  <-- 22
                         M                                           #; (f:fpu) ft3  <-- 7.0
       0     2927        M 0x80000748 addi    a2, a2, 1              #; a2  = 77, (wrb) a2  <-- 78
                         M 0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
       0     2928        M 0x8000074c bnez    a3, pc - 32            #; a3  = 22, taken, goto 0x8000072c
                         M                                           #; (f:fpu) ft0  <-- 7.0
       0     2929        M 0x8000072c mulhu   a5, a2, a4             #; a2  = 78, a4  = 0xcccccccd
       0     2932        M                                           #; (acc) a5  <-- 0x0037d793
       0     2933        M 0x80000730 srli    a5, a5, 3              #; a5  = 62, (wrb) a5  <-- 7
       0     2934        M 0x80000734 mul     a5, a5, a6             #; a5  = 7, a6  = 10
       0     2937        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2938        M 0x80000738 sub     a5, a2, a5             #; a2  = 78, a5  = 70, (wrb) a5  <-- 8
       0     2940        M 0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 8
       0     2941        M 0x80000744 addi    a3, a3, -1             #; a3  = 22, (wrb) a3  <-- 21
                         M                                           #; (f:fpu) ft3  <-- 8.0
       0     2942        M 0x80000748 addi    a2, a2, 1              #; a2  = 78, (wrb) a2  <-- 79
                         M 0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
       0     2943        M 0x8000074c bnez    a3, pc - 32            #; a3  = 21, taken, goto 0x8000072c
                         M                                           #; (f:fpu) ft0  <-- 8.0
       0     2944        M 0x8000072c mulhu   a5, a2, a4             #; a2  = 79, a4  = 0xcccccccd
       0     2947        M                                           #; (acc) a5  <-- 0x0037d793
       0     2948        M 0x80000730 srli    a5, a5, 3              #; a5  = 63, (wrb) a5  <-- 7
       0     2949        M 0x80000734 mul     a5, a5, a6             #; a5  = 7, a6  = 10
       0     2952        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2953        M 0x80000738 sub     a5, a2, a5             #; a2  = 79, a5  = 70, (wrb) a5  <-- 9
       0     2955        M 0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 9
       0     2956        M 0x80000744 addi    a3, a3, -1             #; a3  = 21, (wrb) a3  <-- 20
                         M                                           #; (f:fpu) ft3  <-- 9.0
       0     2957        M 0x80000748 addi    a2, a2, 1              #; a2  = 79, (wrb) a2  <-- 80
                         M 0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
       0     2958        M 0x8000074c bnez    a3, pc - 32            #; a3  = 20, taken, goto 0x8000072c
                         M                                           #; (f:fpu) ft0  <-- 9.0
       0     2959        M 0x8000072c mulhu   a5, a2, a4             #; a2  = 80, a4  = 0xcccccccd
       0     2962        M                                           #; (acc) a5  <-- 0x0037d793
       0     2963        M 0x80000730 srli    a5, a5, 3              #; a5  = 64, (wrb) a5  <-- 8
       0     2964        M 0x80000734 mul     a5, a5, a6             #; a5  = 8, a6  = 10
       0     2967        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2968        M 0x80000738 sub     a5, a2, a5             #; a2  = 80, a5  = 80, (wrb) a5  <-- 0
       0     2970        M 0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 0
       0     2971        M 0x80000744 addi    a3, a3, -1             #; a3  = 20, (wrb) a3  <-- 19
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     2972        M 0x80000748 addi    a2, a2, 1              #; a2  = 80, (wrb) a2  <-- 81
                         M 0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     2973        M 0x8000074c bnez    a3, pc - 32            #; a3  = 19, taken, goto 0x8000072c
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     2974        M 0x8000072c mulhu   a5, a2, a4             #; a2  = 81, a4  = 0xcccccccd
       0     2977        M                                           #; (acc) a5  <-- 0x0037d793
       0     2978        M 0x80000730 srli    a5, a5, 3              #; a5  = 64, (wrb) a5  <-- 8
       0     2979        M 0x80000734 mul     a5, a5, a6             #; a5  = 8, a6  = 10
       0     2982        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2983        M 0x80000738 sub     a5, a2, a5             #; a2  = 81, a5  = 80, (wrb) a5  <-- 1
       0     2985        M 0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 1
       0     2986        M 0x80000744 addi    a3, a3, -1             #; a3  = 19, (wrb) a3  <-- 18
                         M                                           #; (f:fpu) ft3  <-- 1.0
       0     2987        M 0x80000748 addi    a2, a2, 1              #; a2  = 81, (wrb) a2  <-- 82
                         M 0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
       0     2988        M 0x8000074c bnez    a3, pc - 32            #; a3  = 18, taken, goto 0x8000072c
                         M                                           #; (f:fpu) ft0  <-- 1.0
       0     2989        M 0x8000072c mulhu   a5, a2, a4             #; a2  = 82, a4  = 0xcccccccd
       0     2992        M                                           #; (acc) a5  <-- 0x0037d793
       0     2993        M 0x80000730 srli    a5, a5, 3              #; a5  = 65, (wrb) a5  <-- 8
       0     2994        M 0x80000734 mul     a5, a5, a6             #; a5  = 8, a6  = 10
       0     2997        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2998        M 0x80000738 sub     a5, a2, a5             #; a2  = 82, a5  = 80, (wrb) a5  <-- 2
       0     3000        M 0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 2
       0     3001        M 0x80000744 addi    a3, a3, -1             #; a3  = 18, (wrb) a3  <-- 17
                         M                                           #; (f:fpu) ft3  <-- 2.0
       0     3002        M 0x80000748 addi    a2, a2, 1              #; a2  = 82, (wrb) a2  <-- 83
                         M 0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
       0     3003        M 0x8000074c bnez    a3, pc - 32            #; a3  = 17, taken, goto 0x8000072c
                         M                                           #; (f:fpu) ft0  <-- 2.0
       0     3004        M 0x8000072c mulhu   a5, a2, a4             #; a2  = 83, a4  = 0xcccccccd
       0     3007        M                                           #; (acc) a5  <-- 0x0037d793
       0     3008        M 0x80000730 srli    a5, a5, 3              #; a5  = 66, (wrb) a5  <-- 8
       0     3009        M 0x80000734 mul     a5, a5, a6             #; a5  = 8, a6  = 10
       0     3012        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3013        M 0x80000738 sub     a5, a2, a5             #; a2  = 83, a5  = 80, (wrb) a5  <-- 3
       0     3015        M 0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 3
       0     3016        M 0x80000744 addi    a3, a3, -1             #; a3  = 17, (wrb) a3  <-- 16
                         M                                           #; (f:fpu) ft3  <-- 3.0
       0     3017        M 0x80000748 addi    a2, a2, 1              #; a2  = 83, (wrb) a2  <-- 84
                         M 0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
       0     3018        M 0x8000074c bnez    a3, pc - 32            #; a3  = 16, taken, goto 0x8000072c
                         M                                           #; (f:fpu) ft0  <-- 3.0
       0     3019        M 0x8000072c mulhu   a5, a2, a4             #; a2  = 84, a4  = 0xcccccccd
       0     3022        M                                           #; (acc) a5  <-- 0x0037d793
       0     3023        M 0x80000730 srli    a5, a5, 3              #; a5  = 67, (wrb) a5  <-- 8
       0     3024        M 0x80000734 mul     a5, a5, a6             #; a5  = 8, a6  = 10
       0     3027        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3028        M 0x80000738 sub     a5, a2, a5             #; a2  = 84, a5  = 80, (wrb) a5  <-- 4
       0     3030        M 0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 4
       0     3031        M 0x80000744 addi    a3, a3, -1             #; a3  = 16, (wrb) a3  <-- 15
                         M                                           #; (f:fpu) ft3  <-- 4.0
       0     3032        M 0x80000748 addi    a2, a2, 1              #; a2  = 84, (wrb) a2  <-- 85
                         M 0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
       0     3033        M 0x8000074c bnez    a3, pc - 32            #; a3  = 15, taken, goto 0x8000072c
                         M                                           #; (f:fpu) ft0  <-- 4.0
       0     3034        M 0x8000072c mulhu   a5, a2, a4             #; a2  = 85, a4  = 0xcccccccd
       0     3037        M                                           #; (acc) a5  <-- 0x0037d793
       0     3038        M 0x80000730 srli    a5, a5, 3              #; a5  = 68, (wrb) a5  <-- 8
       0     3039        M 0x80000734 mul     a5, a5, a6             #; a5  = 8, a6  = 10
       0     3042        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3043        M 0x80000738 sub     a5, a2, a5             #; a2  = 85, a5  = 80, (wrb) a5  <-- 5
       0     3045        M 0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 5
       0     3046        M 0x80000744 addi    a3, a3, -1             #; a3  = 15, (wrb) a3  <-- 14
                         M                                           #; (f:fpu) ft3  <-- 5.0
       0     3047        M 0x80000748 addi    a2, a2, 1              #; a2  = 85, (wrb) a2  <-- 86
                         M 0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
       0     3048        M 0x8000074c bnez    a3, pc - 32            #; a3  = 14, taken, goto 0x8000072c
                         M                                           #; (f:fpu) ft0  <-- 5.0
       0     3049        M 0x8000072c mulhu   a5, a2, a4             #; a2  = 86, a4  = 0xcccccccd
       0     3052        M                                           #; (acc) a5  <-- 0x0037d793
       0     3053        M 0x80000730 srli    a5, a5, 3              #; a5  = 68, (wrb) a5  <-- 8
       0     3054        M 0x80000734 mul     a5, a5, a6             #; a5  = 8, a6  = 10
       0     3057        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3058        M 0x80000738 sub     a5, a2, a5             #; a2  = 86, a5  = 80, (wrb) a5  <-- 6
       0     3060        M 0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 6
       0     3061        M 0x80000744 addi    a3, a3, -1             #; a3  = 14, (wrb) a3  <-- 13
                         M                                           #; (f:fpu) ft3  <-- 6.0
       0     3062        M 0x80000748 addi    a2, a2, 1              #; a2  = 86, (wrb) a2  <-- 87
                         M 0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
       0     3063        M 0x8000074c bnez    a3, pc - 32            #; a3  = 13, taken, goto 0x8000072c
                         M                                           #; (f:fpu) ft0  <-- 6.0
       0     3064        M 0x8000072c mulhu   a5, a2, a4             #; a2  = 87, a4  = 0xcccccccd
       0     3067        M                                           #; (acc) a5  <-- 0x0037d793
       0     3068        M 0x80000730 srli    a5, a5, 3              #; a5  = 69, (wrb) a5  <-- 8
       0     3069        M 0x80000734 mul     a5, a5, a6             #; a5  = 8, a6  = 10
       0     3072        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3073        M 0x80000738 sub     a5, a2, a5             #; a2  = 87, a5  = 80, (wrb) a5  <-- 7
       0     3075        M 0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 7
       0     3076        M 0x80000744 addi    a3, a3, -1             #; a3  = 13, (wrb) a3  <-- 12
                         M                                           #; (f:fpu) ft3  <-- 7.0
       0     3077        M 0x80000748 addi    a2, a2, 1              #; a2  = 87, (wrb) a2  <-- 88
                         M 0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
       0     3078        M 0x8000074c bnez    a3, pc - 32            #; a3  = 12, taken, goto 0x8000072c
                         M                                           #; (f:fpu) ft0  <-- 7.0
       0     3079        M 0x8000072c mulhu   a5, a2, a4             #; a2  = 88, a4  = 0xcccccccd
       0     3082        M                                           #; (acc) a5  <-- 0x0037d793
       0     3083        M 0x80000730 srli    a5, a5, 3              #; a5  = 70, (wrb) a5  <-- 8
       0     3084        M 0x80000734 mul     a5, a5, a6             #; a5  = 8, a6  = 10
       0     3087        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3088        M 0x80000738 sub     a5, a2, a5             #; a2  = 88, a5  = 80, (wrb) a5  <-- 8
       0     3090        M 0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 8
       0     3091        M 0x80000744 addi    a3, a3, -1             #; a3  = 12, (wrb) a3  <-- 11
                         M                                           #; (f:fpu) ft3  <-- 8.0
       0     3092        M 0x80000748 addi    a2, a2, 1              #; a2  = 88, (wrb) a2  <-- 89
                         M 0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
       0     3093        M 0x8000074c bnez    a3, pc - 32            #; a3  = 11, taken, goto 0x8000072c
                         M                                           #; (f:fpu) ft0  <-- 8.0
       0     3094        M 0x8000072c mulhu   a5, a2, a4             #; a2  = 89, a4  = 0xcccccccd
       0     3097        M                                           #; (acc) a5  <-- 0x0037d793
       0     3098        M 0x80000730 srli    a5, a5, 3              #; a5  = 71, (wrb) a5  <-- 8
       0     3099        M 0x80000734 mul     a5, a5, a6             #; a5  = 8, a6  = 10
       0     3102        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3103        M 0x80000738 sub     a5, a2, a5             #; a2  = 89, a5  = 80, (wrb) a5  <-- 9
       0     3105        M 0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 9
       0     3106        M 0x80000744 addi    a3, a3, -1             #; a3  = 11, (wrb) a3  <-- 10
                         M                                           #; (f:fpu) ft3  <-- 9.0
       0     3107        M 0x80000748 addi    a2, a2, 1              #; a2  = 89, (wrb) a2  <-- 90
                         M 0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
       0     3108        M 0x8000074c bnez    a3, pc - 32            #; a3  = 10, taken, goto 0x8000072c
                         M                                           #; (f:fpu) ft0  <-- 9.0
       0     3109        M 0x8000072c mulhu   a5, a2, a4             #; a2  = 90, a4  = 0xcccccccd
       0     3112        M                                           #; (acc) a5  <-- 0x0037d793
       0     3113        M 0x80000730 srli    a5, a5, 3              #; a5  = 72, (wrb) a5  <-- 9
       0     3114        M 0x80000734 mul     a5, a5, a6             #; a5  = 9, a6  = 10
       0     3117        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3118        M 0x80000738 sub     a5, a2, a5             #; a2  = 90, a5  = 90, (wrb) a5  <-- 0
       0     3120        M 0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 0
       0     3121        M 0x80000744 addi    a3, a3, -1             #; a3  = 10, (wrb) a3  <-- 9
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     3122        M 0x80000748 addi    a2, a2, 1              #; a2  = 90, (wrb) a2  <-- 91
                         M 0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     3123        M 0x8000074c bnez    a3, pc - 32            #; a3  = 9, taken, goto 0x8000072c
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     3124        M 0x8000072c mulhu   a5, a2, a4             #; a2  = 91, a4  = 0xcccccccd
       0     3127        M                                           #; (acc) a5  <-- 0x0037d793
       0     3128        M 0x80000730 srli    a5, a5, 3              #; a5  = 72, (wrb) a5  <-- 9
       0     3129        M 0x80000734 mul     a5, a5, a6             #; a5  = 9, a6  = 10
       0     3132        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3133        M 0x80000738 sub     a5, a2, a5             #; a2  = 91, a5  = 90, (wrb) a5  <-- 1
       0     3135        M 0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 1
       0     3136        M 0x80000744 addi    a3, a3, -1             #; a3  = 9, (wrb) a3  <-- 8
                         M                                           #; (f:fpu) ft3  <-- 1.0
       0     3137        M 0x80000748 addi    a2, a2, 1              #; a2  = 91, (wrb) a2  <-- 92
                         M 0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
       0     3138        M 0x8000074c bnez    a3, pc - 32            #; a3  = 8, taken, goto 0x8000072c
                         M                                           #; (f:fpu) ft0  <-- 1.0
       0     3139        M 0x8000072c mulhu   a5, a2, a4             #; a2  = 92, a4  = 0xcccccccd
       0     3142        M                                           #; (acc) a5  <-- 0x0037d793
       0     3143        M 0x80000730 srli    a5, a5, 3              #; a5  = 73, (wrb) a5  <-- 9
       0     3144        M 0x80000734 mul     a5, a5, a6             #; a5  = 9, a6  = 10
       0     3147        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3148        M 0x80000738 sub     a5, a2, a5             #; a2  = 92, a5  = 90, (wrb) a5  <-- 2
       0     3150        M 0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 2
       0     3151        M 0x80000744 addi    a3, a3, -1             #; a3  = 8, (wrb) a3  <-- 7
                         M                                           #; (f:fpu) ft3  <-- 2.0
       0     3152        M 0x80000748 addi    a2, a2, 1              #; a2  = 92, (wrb) a2  <-- 93
                         M 0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
       0     3153        M 0x8000074c bnez    a3, pc - 32            #; a3  = 7, taken, goto 0x8000072c
                         M                                           #; (f:fpu) ft0  <-- 2.0
       0     3154        M 0x8000072c mulhu   a5, a2, a4             #; a2  = 93, a4  = 0xcccccccd
       0     3157        M                                           #; (acc) a5  <-- 0x0037d793
       0     3158        M 0x80000730 srli    a5, a5, 3              #; a5  = 74, (wrb) a5  <-- 9
       0     3159        M 0x80000734 mul     a5, a5, a6             #; a5  = 9, a6  = 10
       0     3162        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3163        M 0x80000738 sub     a5, a2, a5             #; a2  = 93, a5  = 90, (wrb) a5  <-- 3
       0     3165        M 0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 3
       0     3166        M 0x80000744 addi    a3, a3, -1             #; a3  = 7, (wrb) a3  <-- 6
                         M                                           #; (f:fpu) ft3  <-- 3.0
       0     3167        M 0x80000748 addi    a2, a2, 1              #; a2  = 93, (wrb) a2  <-- 94
                         M 0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
       0     3168        M 0x8000074c bnez    a3, pc - 32            #; a3  = 6, taken, goto 0x8000072c
                         M                                           #; (f:fpu) ft0  <-- 3.0
       0     3169        M 0x8000072c mulhu   a5, a2, a4             #; a2  = 94, a4  = 0xcccccccd
       0     3172        M                                           #; (acc) a5  <-- 0x0037d793
       0     3173        M 0x80000730 srli    a5, a5, 3              #; a5  = 75, (wrb) a5  <-- 9
       0     3174        M 0x80000734 mul     a5, a5, a6             #; a5  = 9, a6  = 10
       0     3177        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3178        M 0x80000738 sub     a5, a2, a5             #; a2  = 94, a5  = 90, (wrb) a5  <-- 4
       0     3180        M 0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 4
       0     3181        M 0x80000744 addi    a3, a3, -1             #; a3  = 6, (wrb) a3  <-- 5
                         M                                           #; (f:fpu) ft3  <-- 4.0
       0     3182        M 0x80000748 addi    a2, a2, 1              #; a2  = 94, (wrb) a2  <-- 95
                         M 0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
       0     3183        M 0x8000074c bnez    a3, pc - 32            #; a3  = 5, taken, goto 0x8000072c
                         M                                           #; (f:fpu) ft0  <-- 4.0
       0     3184        M 0x8000072c mulhu   a5, a2, a4             #; a2  = 95, a4  = 0xcccccccd
       0     3187        M                                           #; (acc) a5  <-- 0x0037d793
       0     3188        M 0x80000730 srli    a5, a5, 3              #; a5  = 76, (wrb) a5  <-- 9
       0     3189        M 0x80000734 mul     a5, a5, a6             #; a5  = 9, a6  = 10
       0     3192        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3193        M 0x80000738 sub     a5, a2, a5             #; a2  = 95, a5  = 90, (wrb) a5  <-- 5
       0     3195        M 0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 5
       0     3196        M 0x80000744 addi    a3, a3, -1             #; a3  = 5, (wrb) a3  <-- 4
                         M                                           #; (f:fpu) ft3  <-- 5.0
       0     3197        M 0x80000748 addi    a2, a2, 1              #; a2  = 95, (wrb) a2  <-- 96
                         M 0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
       0     3198        M 0x8000074c bnez    a3, pc - 32            #; a3  = 4, taken, goto 0x8000072c
                         M                                           #; (f:fpu) ft0  <-- 5.0
       0     3199        M 0x8000072c mulhu   a5, a2, a4             #; a2  = 96, a4  = 0xcccccccd
       0     3202        M                                           #; (acc) a5  <-- 0x0037d793
       0     3203        M 0x80000730 srli    a5, a5, 3              #; a5  = 76, (wrb) a5  <-- 9
       0     3204        M 0x80000734 mul     a5, a5, a6             #; a5  = 9, a6  = 10
       0     3207        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3208        M 0x80000738 sub     a5, a2, a5             #; a2  = 96, a5  = 90, (wrb) a5  <-- 6
       0     3210        M 0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 6
       0     3211        M 0x80000744 addi    a3, a3, -1             #; a3  = 4, (wrb) a3  <-- 3
                         M                                           #; (f:fpu) ft3  <-- 6.0
       0     3212        M 0x80000748 addi    a2, a2, 1              #; a2  = 96, (wrb) a2  <-- 97
                         M 0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
       0     3213        M 0x8000074c bnez    a3, pc - 32            #; a3  = 3, taken, goto 0x8000072c
                         M                                           #; (f:fpu) ft0  <-- 6.0
       0     3214        M 0x8000072c mulhu   a5, a2, a4             #; a2  = 97, a4  = 0xcccccccd
       0     3217        M                                           #; (acc) a5  <-- 0x0037d793
       0     3218        M 0x80000730 srli    a5, a5, 3              #; a5  = 77, (wrb) a5  <-- 9
       0     3219        M 0x80000734 mul     a5, a5, a6             #; a5  = 9, a6  = 10
       0     3222        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3223        M 0x80000738 sub     a5, a2, a5             #; a2  = 97, a5  = 90, (wrb) a5  <-- 7
       0     3225        M 0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 7
       0     3226        M 0x80000744 addi    a3, a3, -1             #; a3  = 3, (wrb) a3  <-- 2
                         M                                           #; (f:fpu) ft3  <-- 7.0
       0     3227        M 0x80000748 addi    a2, a2, 1              #; a2  = 97, (wrb) a2  <-- 98
                         M 0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
       0     3228        M 0x8000074c bnez    a3, pc - 32            #; a3  = 2, taken, goto 0x8000072c
                         M                                           #; (f:fpu) ft0  <-- 7.0
       0     3229        M 0x8000072c mulhu   a5, a2, a4             #; a2  = 98, a4  = 0xcccccccd
       0     3232        M                                           #; (acc) a5  <-- 0x0037d793
       0     3233        M 0x80000730 srli    a5, a5, 3              #; a5  = 78, (wrb) a5  <-- 9
       0     3234        M 0x80000734 mul     a5, a5, a6             #; a5  = 9, a6  = 10
       0     3237        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3238        M 0x80000738 sub     a5, a2, a5             #; a2  = 98, a5  = 90, (wrb) a5  <-- 8
       0     3240        M 0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 8
       0     3241        M 0x80000744 addi    a3, a3, -1             #; a3  = 2, (wrb) a3  <-- 1
                         M                                           #; (f:fpu) ft3  <-- 8.0
       0     3242        M 0x80000748 addi    a2, a2, 1              #; a2  = 98, (wrb) a2  <-- 99
                         M 0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
       0     3243        M 0x8000074c bnez    a3, pc - 32            #; a3  = 1, taken, goto 0x8000072c
                         M                                           #; (f:fpu) ft0  <-- 8.0
       0     3244        M 0x8000072c mulhu   a5, a2, a4             #; a2  = 99, a4  = 0xcccccccd
       0     3247        M                                           #; (acc) a5  <-- 0x0037d793
       0     3248        M 0x80000730 srli    a5, a5, 3              #; a5  = 79, (wrb) a5  <-- 9
       0     3249        M 0x80000734 mul     a5, a5, a6             #; a5  = 9, a6  = 10
       0     3252        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3253        M 0x80000738 sub     a5, a2, a5             #; a2  = 99, a5  = 90, (wrb) a5  <-- 9
       0     3255        M 0x8000073c fcvt.d.wu ft3, a5              #; ac1  = 9
       0     3256        M 0x80000744 addi    a3, a3, -1             #; a3  = 1, (wrb) a3  <-- 0
                         M                                           #; (f:fpu) ft3  <-- 9.0
       0     3257        M 0x80000748 addi    a2, a2, 1              #; a2  = 99, (wrb) a2  <-- 100
                         M 0x80000740 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
       0     3258        M 0x8000074c bnez    a3, pc - 32            #; a3  = 0, not taken
                         M                                           #; (f:fpu) ft0  <-- 9.0
       0     3271        M 0x80000754 j       pc + 0x44              #; goto 0x80000798
                         M 0x80000750 csrrci  a2, ssr, 1             #; 
       0     3282        M 0x80000798 srli    a2, a0, 20             #; a0  = 0x00100320, (wrb) a2  <-- 1
       0     3283        M 0x8000079c snez    a2, a2                 #; a2  = 1, (wrb) a2  <-- 1
       0     3294        M 0x800007a0 lui     a3, 0x120              #; (wrb) a3  <-- 0x00120000
       0     3295        M 0x800007a4 addi    a3, a3, -791           #; a3  = 0x00120000, (wrb) a3  <-- 0x0011fce9
       0     3296        M 0x800007a8 sltu    a3, a0, a3             #; a0  = 0x00100320, a3  = 0x0011fce9, (wrb) a3  <-- 1
       0     3297        M 0x800007ac and     a2, a2, a3             #; a2  = 1, a3  = 1, (wrb) a2  <-- 1
       0     3306        M 0x800007b0 beqz    a2, pc + 108           #; a2  = 1, not taken
       0     3307        M 0x800007b4 li      a2, 0                  #; (wrb) a2  <-- 0
       0     3308        M 0x800007b8 li      a3, 8                  #; (wrb) a3  <-- 8
       0     3309        M 0x800007bc li      a4, 99                 #; (wrb) a4  <-- 99
       0     3318        M 0x800007c0 li      a5, 64                 #; (wrb) a5  <-- 64
       0     3319        M 0x800007c4 scfgw   a4, a5                 #; a4  = 99, a5  = 64
       0     3320        M 0x800007c8 li      a4, 192                #; (wrb) a4  <-- 192
       0     3321        M 0x800007cc scfgw   a3, a4                 #; a3  = 8, a4  = 192
       0     3330        M 0x800007d0 li      a3, 32                 #; (wrb) a3  <-- 32
       0     3331        M 0x800007d4 scfgw   zero, a3               #; a3  = 32
       0     3332        M 0x800007d8 scfgwi  a0, 896                #; a0  = 0x00100320
       0     3334        M 0x800007dc csrrsi  a3, ssr, 1             #; 
       0     3342        M 0x800007e0 li      a3, 100                #; (wrb) a3  <-- 100
       0     3343        M 0x800007e4 lui     a4, 0xccccd            #; (wrb) a4  <-- 0xccccd000
       0     3344        M 0x800007e8 addi    a4, a4, -819           #; a4  = 0xccccd000, (wrb) a4  <-- 0xcccccccd
       0     3345        M 0x800007ec li      a6, 10                 #; (wrb) a6  <-- 10
       0     3354        M 0x800007f0 mulhu   a5, a2, a4             #; a2  = 0, a4  = 0xcccccccd
       0     3357        M                                           #; (acc) a5  <-- 0x0037d793
       0     3358        M 0x800007f4 srli    a5, a5, 3              #; a5  = 0, (wrb) a5  <-- 0
       0     3359        M 0x800007f8 mul     a5, a5, a6             #; a5  = 0, a6  = 10
       0     3362        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3363        M 0x800007fc sub     a5, a2, a5             #; a2  = 0, a5  = 0, (wrb) a5  <-- 0
       0     3367        M 0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 0
       0     3368        M 0x80000808 addi    a3, a3, -1             #; a3  = 100, (wrb) a3  <-- 99
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     3369        M 0x8000080c addi    a2, a2, 1              #; a2  = 0, (wrb) a2  <-- 1
                         M 0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     3370        M                                           #; (f:fpu) ft0  <-- 0.0
       0     3378        M 0x80000810 bnez    a3, pc - 32            #; a3  = 99, taken, goto 0x800007f0
       0     3379        M 0x800007f0 mulhu   a5, a2, a4             #; a2  = 1, a4  = 0xcccccccd
       0     3382        M                                           #; (acc) a5  <-- 0x0037d793
       0     3383        M 0x800007f4 srli    a5, a5, 3              #; a5  = 0, (wrb) a5  <-- 0
       0     3384        M 0x800007f8 mul     a5, a5, a6             #; a5  = 0, a6  = 10
       0     3387        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3388        M 0x800007fc sub     a5, a2, a5             #; a2  = 1, a5  = 0, (wrb) a5  <-- 1
       0     3390        M 0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 1
       0     3391        M 0x80000808 addi    a3, a3, -1             #; a3  = 99, (wrb) a3  <-- 98
                         M                                           #; (f:fpu) ft3  <-- 1.0
       0     3392        M 0x8000080c addi    a2, a2, 1              #; a2  = 1, (wrb) a2  <-- 2
                         M 0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
       0     3393        M 0x80000810 bnez    a3, pc - 32            #; a3  = 98, taken, goto 0x800007f0
                         M                                           #; (f:fpu) ft0  <-- 1.0
       0     3394        M 0x800007f0 mulhu   a5, a2, a4             #; a2  = 2, a4  = 0xcccccccd
       0     3397        M                                           #; (acc) a5  <-- 0x0037d793
       0     3398        M 0x800007f4 srli    a5, a5, 3              #; a5  = 1, (wrb) a5  <-- 0
       0     3399        M 0x800007f8 mul     a5, a5, a6             #; a5  = 0, a6  = 10
       0     3402        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3403        M 0x800007fc sub     a5, a2, a5             #; a2  = 2, a5  = 0, (wrb) a5  <-- 2
       0     3405        M 0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 2
       0     3406        M 0x80000808 addi    a3, a3, -1             #; a3  = 98, (wrb) a3  <-- 97
                         M                                           #; (f:fpu) ft3  <-- 2.0
       0     3407        M 0x8000080c addi    a2, a2, 1              #; a2  = 2, (wrb) a2  <-- 3
                         M 0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
       0     3408        M 0x80000810 bnez    a3, pc - 32            #; a3  = 97, taken, goto 0x800007f0
                         M                                           #; (f:fpu) ft0  <-- 2.0
       0     3409        M 0x800007f0 mulhu   a5, a2, a4             #; a2  = 3, a4  = 0xcccccccd
       0     3412        M                                           #; (acc) a5  <-- 0x0037d793
       0     3413        M 0x800007f4 srli    a5, a5, 3              #; a5  = 2, (wrb) a5  <-- 0
       0     3414        M 0x800007f8 mul     a5, a5, a6             #; a5  = 0, a6  = 10
       0     3417        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3418        M 0x800007fc sub     a5, a2, a5             #; a2  = 3, a5  = 0, (wrb) a5  <-- 3
       0     3420        M 0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 3
       0     3421        M 0x80000808 addi    a3, a3, -1             #; a3  = 97, (wrb) a3  <-- 96
                         M                                           #; (f:fpu) ft3  <-- 3.0
       0     3422        M 0x8000080c addi    a2, a2, 1              #; a2  = 3, (wrb) a2  <-- 4
                         M 0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
       0     3423        M 0x80000810 bnez    a3, pc - 32            #; a3  = 96, taken, goto 0x800007f0
                         M                                           #; (f:fpu) ft0  <-- 3.0
       0     3424        M 0x800007f0 mulhu   a5, a2, a4             #; a2  = 4, a4  = 0xcccccccd
       0     3427        M                                           #; (acc) a5  <-- 0x0037d793
       0     3428        M 0x800007f4 srli    a5, a5, 3              #; a5  = 3, (wrb) a5  <-- 0
       0     3429        M 0x800007f8 mul     a5, a5, a6             #; a5  = 0, a6  = 10
       0     3432        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3433        M 0x800007fc sub     a5, a2, a5             #; a2  = 4, a5  = 0, (wrb) a5  <-- 4
       0     3435        M 0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 4
       0     3436        M 0x80000808 addi    a3, a3, -1             #; a3  = 96, (wrb) a3  <-- 95
                         M                                           #; (f:fpu) ft3  <-- 4.0
       0     3437        M 0x8000080c addi    a2, a2, 1              #; a2  = 4, (wrb) a2  <-- 5
                         M 0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
       0     3438        M 0x80000810 bnez    a3, pc - 32            #; a3  = 95, taken, goto 0x800007f0
                         M                                           #; (f:fpu) ft0  <-- 4.0
       0     3439        M 0x800007f0 mulhu   a5, a2, a4             #; a2  = 5, a4  = 0xcccccccd
       0     3442        M                                           #; (acc) a5  <-- 0x0037d793
       0     3443        M 0x800007f4 srli    a5, a5, 3              #; a5  = 4, (wrb) a5  <-- 0
       0     3444        M 0x800007f8 mul     a5, a5, a6             #; a5  = 0, a6  = 10
       0     3447        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3448        M 0x800007fc sub     a5, a2, a5             #; a2  = 5, a5  = 0, (wrb) a5  <-- 5
       0     3450        M 0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 5
       0     3451        M 0x80000808 addi    a3, a3, -1             #; a3  = 95, (wrb) a3  <-- 94
                         M                                           #; (f:fpu) ft3  <-- 5.0
       0     3452        M 0x8000080c addi    a2, a2, 1              #; a2  = 5, (wrb) a2  <-- 6
                         M 0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
       0     3453        M 0x80000810 bnez    a3, pc - 32            #; a3  = 94, taken, goto 0x800007f0
                         M                                           #; (f:fpu) ft0  <-- 5.0
       0     3454        M 0x800007f0 mulhu   a5, a2, a4             #; a2  = 6, a4  = 0xcccccccd
       0     3457        M                                           #; (acc) a5  <-- 0x0037d793
       0     3458        M 0x800007f4 srli    a5, a5, 3              #; a5  = 4, (wrb) a5  <-- 0
       0     3459        M 0x800007f8 mul     a5, a5, a6             #; a5  = 0, a6  = 10
       0     3462        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3463        M 0x800007fc sub     a5, a2, a5             #; a2  = 6, a5  = 0, (wrb) a5  <-- 6
       0     3465        M 0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 6
       0     3466        M 0x80000808 addi    a3, a3, -1             #; a3  = 94, (wrb) a3  <-- 93
                         M                                           #; (f:fpu) ft3  <-- 6.0
       0     3467        M 0x8000080c addi    a2, a2, 1              #; a2  = 6, (wrb) a2  <-- 7
                         M 0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
       0     3468        M 0x80000810 bnez    a3, pc - 32            #; a3  = 93, taken, goto 0x800007f0
                         M                                           #; (f:fpu) ft0  <-- 6.0
       0     3469        M 0x800007f0 mulhu   a5, a2, a4             #; a2  = 7, a4  = 0xcccccccd
       0     3472        M                                           #; (acc) a5  <-- 0x0037d793
       0     3473        M 0x800007f4 srli    a5, a5, 3              #; a5  = 5, (wrb) a5  <-- 0
       0     3474        M 0x800007f8 mul     a5, a5, a6             #; a5  = 0, a6  = 10
       0     3477        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3478        M 0x800007fc sub     a5, a2, a5             #; a2  = 7, a5  = 0, (wrb) a5  <-- 7
       0     3480        M 0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 7
       0     3481        M 0x80000808 addi    a3, a3, -1             #; a3  = 93, (wrb) a3  <-- 92
                         M                                           #; (f:fpu) ft3  <-- 7.0
       0     3482        M 0x8000080c addi    a2, a2, 1              #; a2  = 7, (wrb) a2  <-- 8
                         M 0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
       0     3483        M 0x80000810 bnez    a3, pc - 32            #; a3  = 92, taken, goto 0x800007f0
                         M                                           #; (f:fpu) ft0  <-- 7.0
       0     3484        M 0x800007f0 mulhu   a5, a2, a4             #; a2  = 8, a4  = 0xcccccccd
       0     3487        M                                           #; (acc) a5  <-- 0x0037d793
       0     3488        M 0x800007f4 srli    a5, a5, 3              #; a5  = 6, (wrb) a5  <-- 0
       0     3489        M 0x800007f8 mul     a5, a5, a6             #; a5  = 0, a6  = 10
       0     3492        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3493        M 0x800007fc sub     a5, a2, a5             #; a2  = 8, a5  = 0, (wrb) a5  <-- 8
       0     3495        M 0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 8
       0     3496        M 0x80000808 addi    a3, a3, -1             #; a3  = 92, (wrb) a3  <-- 91
                         M                                           #; (f:fpu) ft3  <-- 8.0
       0     3497        M 0x8000080c addi    a2, a2, 1              #; a2  = 8, (wrb) a2  <-- 9
                         M 0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
       0     3498        M 0x80000810 bnez    a3, pc - 32            #; a3  = 91, taken, goto 0x800007f0
                         M                                           #; (f:fpu) ft0  <-- 8.0
       0     3499        M 0x800007f0 mulhu   a5, a2, a4             #; a2  = 9, a4  = 0xcccccccd
       0     3502        M                                           #; (acc) a5  <-- 0x0037d793
       0     3503        M 0x800007f4 srli    a5, a5, 3              #; a5  = 7, (wrb) a5  <-- 0
       0     3504        M 0x800007f8 mul     a5, a5, a6             #; a5  = 0, a6  = 10
       0     3507        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3508        M 0x800007fc sub     a5, a2, a5             #; a2  = 9, a5  = 0, (wrb) a5  <-- 9
       0     3510        M 0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 9
       0     3511        M 0x80000808 addi    a3, a3, -1             #; a3  = 91, (wrb) a3  <-- 90
                         M                                           #; (f:fpu) ft3  <-- 9.0
       0     3512        M 0x8000080c addi    a2, a2, 1              #; a2  = 9, (wrb) a2  <-- 10
                         M 0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
       0     3513        M 0x80000810 bnez    a3, pc - 32            #; a3  = 90, taken, goto 0x800007f0
                         M                                           #; (f:fpu) ft0  <-- 9.0
       0     3514        M 0x800007f0 mulhu   a5, a2, a4             #; a2  = 10, a4  = 0xcccccccd
       0     3517        M                                           #; (acc) a5  <-- 0x0037d793
       0     3518        M 0x800007f4 srli    a5, a5, 3              #; a5  = 8, (wrb) a5  <-- 1
       0     3519        M 0x800007f8 mul     a5, a5, a6             #; a5  = 1, a6  = 10
       0     3522        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3523        M 0x800007fc sub     a5, a2, a5             #; a2  = 10, a5  = 10, (wrb) a5  <-- 0
       0     3525        M 0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 0
       0     3526        M 0x80000808 addi    a3, a3, -1             #; a3  = 90, (wrb) a3  <-- 89
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     3527        M 0x8000080c addi    a2, a2, 1              #; a2  = 10, (wrb) a2  <-- 11
                         M 0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     3528        M 0x80000810 bnez    a3, pc - 32            #; a3  = 89, taken, goto 0x800007f0
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     3529        M 0x800007f0 mulhu   a5, a2, a4             #; a2  = 11, a4  = 0xcccccccd
       0     3532        M                                           #; (acc) a5  <-- 0x0037d793
       0     3533        M 0x800007f4 srli    a5, a5, 3              #; a5  = 8, (wrb) a5  <-- 1
       0     3534        M 0x800007f8 mul     a5, a5, a6             #; a5  = 1, a6  = 10
       0     3537        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3538        M 0x800007fc sub     a5, a2, a5             #; a2  = 11, a5  = 10, (wrb) a5  <-- 1
       0     3540        M 0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 1
       0     3541        M 0x80000808 addi    a3, a3, -1             #; a3  = 89, (wrb) a3  <-- 88
                         M                                           #; (f:fpu) ft3  <-- 1.0
       0     3542        M 0x8000080c addi    a2, a2, 1              #; a2  = 11, (wrb) a2  <-- 12
                         M 0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
       0     3543        M 0x80000810 bnez    a3, pc - 32            #; a3  = 88, taken, goto 0x800007f0
                         M                                           #; (f:fpu) ft0  <-- 1.0
       0     3544        M 0x800007f0 mulhu   a5, a2, a4             #; a2  = 12, a4  = 0xcccccccd
       0     3547        M                                           #; (acc) a5  <-- 0x0037d793
       0     3548        M 0x800007f4 srli    a5, a5, 3              #; a5  = 9, (wrb) a5  <-- 1
       0     3549        M 0x800007f8 mul     a5, a5, a6             #; a5  = 1, a6  = 10
       0     3552        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3553        M 0x800007fc sub     a5, a2, a5             #; a2  = 12, a5  = 10, (wrb) a5  <-- 2
       0     3555        M 0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 2
       0     3556        M 0x80000808 addi    a3, a3, -1             #; a3  = 88, (wrb) a3  <-- 87
                         M                                           #; (f:fpu) ft3  <-- 2.0
       0     3557        M 0x8000080c addi    a2, a2, 1              #; a2  = 12, (wrb) a2  <-- 13
                         M 0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
       0     3558        M 0x80000810 bnez    a3, pc - 32            #; a3  = 87, taken, goto 0x800007f0
                         M                                           #; (f:fpu) ft0  <-- 2.0
       0     3559        M 0x800007f0 mulhu   a5, a2, a4             #; a2  = 13, a4  = 0xcccccccd
       0     3562        M                                           #; (acc) a5  <-- 0x0037d793
       0     3563        M 0x800007f4 srli    a5, a5, 3              #; a5  = 10, (wrb) a5  <-- 1
       0     3564        M 0x800007f8 mul     a5, a5, a6             #; a5  = 1, a6  = 10
       0     3567        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3568        M 0x800007fc sub     a5, a2, a5             #; a2  = 13, a5  = 10, (wrb) a5  <-- 3
       0     3570        M 0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 3
       0     3571        M 0x80000808 addi    a3, a3, -1             #; a3  = 87, (wrb) a3  <-- 86
                         M                                           #; (f:fpu) ft3  <-- 3.0
       0     3572        M 0x8000080c addi    a2, a2, 1              #; a2  = 13, (wrb) a2  <-- 14
                         M 0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
       0     3573        M 0x80000810 bnez    a3, pc - 32            #; a3  = 86, taken, goto 0x800007f0
                         M                                           #; (f:fpu) ft0  <-- 3.0
       0     3574        M 0x800007f0 mulhu   a5, a2, a4             #; a2  = 14, a4  = 0xcccccccd
       0     3577        M                                           #; (acc) a5  <-- 0x0037d793
       0     3578        M 0x800007f4 srli    a5, a5, 3              #; a5  = 11, (wrb) a5  <-- 1
       0     3579        M 0x800007f8 mul     a5, a5, a6             #; a5  = 1, a6  = 10
       0     3582        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3583        M 0x800007fc sub     a5, a2, a5             #; a2  = 14, a5  = 10, (wrb) a5  <-- 4
       0     3585        M 0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 4
       0     3586        M 0x80000808 addi    a3, a3, -1             #; a3  = 86, (wrb) a3  <-- 85
                         M                                           #; (f:fpu) ft3  <-- 4.0
       0     3587        M 0x8000080c addi    a2, a2, 1              #; a2  = 14, (wrb) a2  <-- 15
                         M 0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
       0     3588        M 0x80000810 bnez    a3, pc - 32            #; a3  = 85, taken, goto 0x800007f0
                         M                                           #; (f:fpu) ft0  <-- 4.0
       0     3589        M 0x800007f0 mulhu   a5, a2, a4             #; a2  = 15, a4  = 0xcccccccd
       0     3592        M                                           #; (acc) a5  <-- 0x0037d793
       0     3593        M 0x800007f4 srli    a5, a5, 3              #; a5  = 12, (wrb) a5  <-- 1
       0     3594        M 0x800007f8 mul     a5, a5, a6             #; a5  = 1, a6  = 10
       0     3597        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3598        M 0x800007fc sub     a5, a2, a5             #; a2  = 15, a5  = 10, (wrb) a5  <-- 5
       0     3600        M 0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 5
       0     3601        M 0x80000808 addi    a3, a3, -1             #; a3  = 85, (wrb) a3  <-- 84
                         M                                           #; (f:fpu) ft3  <-- 5.0
       0     3602        M 0x8000080c addi    a2, a2, 1              #; a2  = 15, (wrb) a2  <-- 16
                         M 0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
       0     3603        M 0x80000810 bnez    a3, pc - 32            #; a3  = 84, taken, goto 0x800007f0
                         M                                           #; (f:fpu) ft0  <-- 5.0
       0     3604        M 0x800007f0 mulhu   a5, a2, a4             #; a2  = 16, a4  = 0xcccccccd
       0     3607        M                                           #; (acc) a5  <-- 0x0037d793
       0     3608        M 0x800007f4 srli    a5, a5, 3              #; a5  = 12, (wrb) a5  <-- 1
       0     3609        M 0x800007f8 mul     a5, a5, a6             #; a5  = 1, a6  = 10
       0     3612        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3613        M 0x800007fc sub     a5, a2, a5             #; a2  = 16, a5  = 10, (wrb) a5  <-- 6
       0     3615        M 0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 6
       0     3616        M 0x80000808 addi    a3, a3, -1             #; a3  = 84, (wrb) a3  <-- 83
                         M                                           #; (f:fpu) ft3  <-- 6.0
       0     3617        M 0x8000080c addi    a2, a2, 1              #; a2  = 16, (wrb) a2  <-- 17
                         M 0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
       0     3618        M 0x80000810 bnez    a3, pc - 32            #; a3  = 83, taken, goto 0x800007f0
                         M                                           #; (f:fpu) ft0  <-- 6.0
       0     3619        M 0x800007f0 mulhu   a5, a2, a4             #; a2  = 17, a4  = 0xcccccccd
       0     3622        M                                           #; (acc) a5  <-- 0x0037d793
       0     3623        M 0x800007f4 srli    a5, a5, 3              #; a5  = 13, (wrb) a5  <-- 1
       0     3624        M 0x800007f8 mul     a5, a5, a6             #; a5  = 1, a6  = 10
       0     3627        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3628        M 0x800007fc sub     a5, a2, a5             #; a2  = 17, a5  = 10, (wrb) a5  <-- 7
       0     3630        M 0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 7
       0     3631        M 0x80000808 addi    a3, a3, -1             #; a3  = 83, (wrb) a3  <-- 82
                         M                                           #; (f:fpu) ft3  <-- 7.0
       0     3632        M 0x8000080c addi    a2, a2, 1              #; a2  = 17, (wrb) a2  <-- 18
                         M 0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
       0     3633        M 0x80000810 bnez    a3, pc - 32            #; a3  = 82, taken, goto 0x800007f0
                         M                                           #; (f:fpu) ft0  <-- 7.0
       0     3634        M 0x800007f0 mulhu   a5, a2, a4             #; a2  = 18, a4  = 0xcccccccd
       0     3637        M                                           #; (acc) a5  <-- 0x0037d793
       0     3638        M 0x800007f4 srli    a5, a5, 3              #; a5  = 14, (wrb) a5  <-- 1
       0     3639        M 0x800007f8 mul     a5, a5, a6             #; a5  = 1, a6  = 10
       0     3642        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3643        M 0x800007fc sub     a5, a2, a5             #; a2  = 18, a5  = 10, (wrb) a5  <-- 8
       0     3645        M 0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 8
       0     3646        M 0x80000808 addi    a3, a3, -1             #; a3  = 82, (wrb) a3  <-- 81
                         M                                           #; (f:fpu) ft3  <-- 8.0
       0     3647        M 0x8000080c addi    a2, a2, 1              #; a2  = 18, (wrb) a2  <-- 19
                         M 0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
       0     3648        M 0x80000810 bnez    a3, pc - 32            #; a3  = 81, taken, goto 0x800007f0
                         M                                           #; (f:fpu) ft0  <-- 8.0
       0     3649        M 0x800007f0 mulhu   a5, a2, a4             #; a2  = 19, a4  = 0xcccccccd
       0     3652        M                                           #; (acc) a5  <-- 0x0037d793
       0     3653        M 0x800007f4 srli    a5, a5, 3              #; a5  = 15, (wrb) a5  <-- 1
       0     3654        M 0x800007f8 mul     a5, a5, a6             #; a5  = 1, a6  = 10
       0     3657        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3658        M 0x800007fc sub     a5, a2, a5             #; a2  = 19, a5  = 10, (wrb) a5  <-- 9
       0     3660        M 0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 9
       0     3661        M 0x80000808 addi    a3, a3, -1             #; a3  = 81, (wrb) a3  <-- 80
                         M                                           #; (f:fpu) ft3  <-- 9.0
       0     3662        M 0x8000080c addi    a2, a2, 1              #; a2  = 19, (wrb) a2  <-- 20
                         M 0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
       0     3663        M 0x80000810 bnez    a3, pc - 32            #; a3  = 80, taken, goto 0x800007f0
                         M                                           #; (f:fpu) ft0  <-- 9.0
       0     3664        M 0x800007f0 mulhu   a5, a2, a4             #; a2  = 20, a4  = 0xcccccccd
       0     3667        M                                           #; (acc) a5  <-- 0x0037d793
       0     3668        M 0x800007f4 srli    a5, a5, 3              #; a5  = 16, (wrb) a5  <-- 2
       0     3669        M 0x800007f8 mul     a5, a5, a6             #; a5  = 2, a6  = 10
       0     3672        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3673        M 0x800007fc sub     a5, a2, a5             #; a2  = 20, a5  = 20, (wrb) a5  <-- 0
       0     3675        M 0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 0
       0     3676        M 0x80000808 addi    a3, a3, -1             #; a3  = 80, (wrb) a3  <-- 79
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     3677        M 0x8000080c addi    a2, a2, 1              #; a2  = 20, (wrb) a2  <-- 21
                         M 0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     3678        M 0x80000810 bnez    a3, pc - 32            #; a3  = 79, taken, goto 0x800007f0
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     3679        M 0x800007f0 mulhu   a5, a2, a4             #; a2  = 21, a4  = 0xcccccccd
       0     3682        M                                           #; (acc) a5  <-- 0x0037d793
       0     3683        M 0x800007f4 srli    a5, a5, 3              #; a5  = 16, (wrb) a5  <-- 2
       0     3684        M 0x800007f8 mul     a5, a5, a6             #; a5  = 2, a6  = 10
       0     3687        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3688        M 0x800007fc sub     a5, a2, a5             #; a2  = 21, a5  = 20, (wrb) a5  <-- 1
       0     3690        M 0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 1
       0     3691        M 0x80000808 addi    a3, a3, -1             #; a3  = 79, (wrb) a3  <-- 78
                         M                                           #; (f:fpu) ft3  <-- 1.0
       0     3692        M 0x8000080c addi    a2, a2, 1              #; a2  = 21, (wrb) a2  <-- 22
                         M 0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
       0     3693        M 0x80000810 bnez    a3, pc - 32            #; a3  = 78, taken, goto 0x800007f0
                         M                                           #; (f:fpu) ft0  <-- 1.0
       0     3694        M 0x800007f0 mulhu   a5, a2, a4             #; a2  = 22, a4  = 0xcccccccd
       0     3697        M                                           #; (acc) a5  <-- 0x0037d793
       0     3698        M 0x800007f4 srli    a5, a5, 3              #; a5  = 17, (wrb) a5  <-- 2
       0     3699        M 0x800007f8 mul     a5, a5, a6             #; a5  = 2, a6  = 10
       0     3702        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3703        M 0x800007fc sub     a5, a2, a5             #; a2  = 22, a5  = 20, (wrb) a5  <-- 2
       0     3705        M 0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 2
       0     3706        M 0x80000808 addi    a3, a3, -1             #; a3  = 78, (wrb) a3  <-- 77
                         M                                           #; (f:fpu) ft3  <-- 2.0
       0     3707        M 0x8000080c addi    a2, a2, 1              #; a2  = 22, (wrb) a2  <-- 23
                         M 0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
       0     3708        M 0x80000810 bnez    a3, pc - 32            #; a3  = 77, taken, goto 0x800007f0
                         M                                           #; (f:fpu) ft0  <-- 2.0
       0     3709        M 0x800007f0 mulhu   a5, a2, a4             #; a2  = 23, a4  = 0xcccccccd
       0     3712        M                                           #; (acc) a5  <-- 0x0037d793
       0     3713        M 0x800007f4 srli    a5, a5, 3              #; a5  = 18, (wrb) a5  <-- 2
       0     3714        M 0x800007f8 mul     a5, a5, a6             #; a5  = 2, a6  = 10
       0     3717        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3718        M 0x800007fc sub     a5, a2, a5             #; a2  = 23, a5  = 20, (wrb) a5  <-- 3
       0     3720        M 0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 3
       0     3721        M 0x80000808 addi    a3, a3, -1             #; a3  = 77, (wrb) a3  <-- 76
                         M                                           #; (f:fpu) ft3  <-- 3.0
       0     3722        M 0x8000080c addi    a2, a2, 1              #; a2  = 23, (wrb) a2  <-- 24
                         M 0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
       0     3723        M 0x80000810 bnez    a3, pc - 32            #; a3  = 76, taken, goto 0x800007f0
                         M                                           #; (f:fpu) ft0  <-- 3.0
       0     3724        M 0x800007f0 mulhu   a5, a2, a4             #; a2  = 24, a4  = 0xcccccccd
       0     3727        M                                           #; (acc) a5  <-- 0x0037d793
       0     3728        M 0x800007f4 srli    a5, a5, 3              #; a5  = 19, (wrb) a5  <-- 2
       0     3729        M 0x800007f8 mul     a5, a5, a6             #; a5  = 2, a6  = 10
       0     3732        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3733        M 0x800007fc sub     a5, a2, a5             #; a2  = 24, a5  = 20, (wrb) a5  <-- 4
       0     3735        M 0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 4
       0     3736        M 0x80000808 addi    a3, a3, -1             #; a3  = 76, (wrb) a3  <-- 75
                         M                                           #; (f:fpu) ft3  <-- 4.0
       0     3737        M 0x8000080c addi    a2, a2, 1              #; a2  = 24, (wrb) a2  <-- 25
                         M 0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
       0     3738        M 0x80000810 bnez    a3, pc - 32            #; a3  = 75, taken, goto 0x800007f0
                         M                                           #; (f:fpu) ft0  <-- 4.0
       0     3739        M 0x800007f0 mulhu   a5, a2, a4             #; a2  = 25, a4  = 0xcccccccd
       0     3742        M                                           #; (acc) a5  <-- 0x0037d793
       0     3743        M 0x800007f4 srli    a5, a5, 3              #; a5  = 20, (wrb) a5  <-- 2
       0     3744        M 0x800007f8 mul     a5, a5, a6             #; a5  = 2, a6  = 10
       0     3747        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3748        M 0x800007fc sub     a5, a2, a5             #; a2  = 25, a5  = 20, (wrb) a5  <-- 5
       0     3750        M 0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 5
       0     3751        M 0x80000808 addi    a3, a3, -1             #; a3  = 75, (wrb) a3  <-- 74
                         M                                           #; (f:fpu) ft3  <-- 5.0
       0     3752        M 0x8000080c addi    a2, a2, 1              #; a2  = 25, (wrb) a2  <-- 26
                         M 0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
       0     3753        M 0x80000810 bnez    a3, pc - 32            #; a3  = 74, taken, goto 0x800007f0
                         M                                           #; (f:fpu) ft0  <-- 5.0
       0     3754        M 0x800007f0 mulhu   a5, a2, a4             #; a2  = 26, a4  = 0xcccccccd
       0     3757        M                                           #; (acc) a5  <-- 0x0037d793
       0     3758        M 0x800007f4 srli    a5, a5, 3              #; a5  = 20, (wrb) a5  <-- 2
       0     3759        M 0x800007f8 mul     a5, a5, a6             #; a5  = 2, a6  = 10
       0     3762        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3763        M 0x800007fc sub     a5, a2, a5             #; a2  = 26, a5  = 20, (wrb) a5  <-- 6
       0     3765        M 0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 6
       0     3766        M 0x80000808 addi    a3, a3, -1             #; a3  = 74, (wrb) a3  <-- 73
                         M                                           #; (f:fpu) ft3  <-- 6.0
       0     3767        M 0x8000080c addi    a2, a2, 1              #; a2  = 26, (wrb) a2  <-- 27
                         M 0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
       0     3768        M 0x80000810 bnez    a3, pc - 32            #; a3  = 73, taken, goto 0x800007f0
                         M                                           #; (f:fpu) ft0  <-- 6.0
       0     3769        M 0x800007f0 mulhu   a5, a2, a4             #; a2  = 27, a4  = 0xcccccccd
       0     3772        M                                           #; (acc) a5  <-- 0x0037d793
       0     3773        M 0x800007f4 srli    a5, a5, 3              #; a5  = 21, (wrb) a5  <-- 2
       0     3774        M 0x800007f8 mul     a5, a5, a6             #; a5  = 2, a6  = 10
       0     3777        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3778        M 0x800007fc sub     a5, a2, a5             #; a2  = 27, a5  = 20, (wrb) a5  <-- 7
       0     3780        M 0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 7
       0     3781        M 0x80000808 addi    a3, a3, -1             #; a3  = 73, (wrb) a3  <-- 72
                         M                                           #; (f:fpu) ft3  <-- 7.0
       0     3782        M 0x8000080c addi    a2, a2, 1              #; a2  = 27, (wrb) a2  <-- 28
                         M 0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
       0     3783        M 0x80000810 bnez    a3, pc - 32            #; a3  = 72, taken, goto 0x800007f0
                         M                                           #; (f:fpu) ft0  <-- 7.0
       0     3784        M 0x800007f0 mulhu   a5, a2, a4             #; a2  = 28, a4  = 0xcccccccd
       0     3787        M                                           #; (acc) a5  <-- 0x0037d793
       0     3788        M 0x800007f4 srli    a5, a5, 3              #; a5  = 22, (wrb) a5  <-- 2
       0     3789        M 0x800007f8 mul     a5, a5, a6             #; a5  = 2, a6  = 10
       0     3792        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3793        M 0x800007fc sub     a5, a2, a5             #; a2  = 28, a5  = 20, (wrb) a5  <-- 8
       0     3795        M 0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 8
       0     3796        M 0x80000808 addi    a3, a3, -1             #; a3  = 72, (wrb) a3  <-- 71
                         M                                           #; (f:fpu) ft3  <-- 8.0
       0     3797        M 0x8000080c addi    a2, a2, 1              #; a2  = 28, (wrb) a2  <-- 29
                         M 0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
       0     3798        M 0x80000810 bnez    a3, pc - 32            #; a3  = 71, taken, goto 0x800007f0
                         M                                           #; (f:fpu) ft0  <-- 8.0
       0     3799        M 0x800007f0 mulhu   a5, a2, a4             #; a2  = 29, a4  = 0xcccccccd
       0     3802        M                                           #; (acc) a5  <-- 0x0037d793
       0     3803        M 0x800007f4 srli    a5, a5, 3              #; a5  = 23, (wrb) a5  <-- 2
       0     3804        M 0x800007f8 mul     a5, a5, a6             #; a5  = 2, a6  = 10
       0     3807        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3808        M 0x800007fc sub     a5, a2, a5             #; a2  = 29, a5  = 20, (wrb) a5  <-- 9
       0     3810        M 0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 9
       0     3811        M 0x80000808 addi    a3, a3, -1             #; a3  = 71, (wrb) a3  <-- 70
                         M                                           #; (f:fpu) ft3  <-- 9.0
       0     3812        M 0x8000080c addi    a2, a2, 1              #; a2  = 29, (wrb) a2  <-- 30
                         M 0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
       0     3813        M 0x80000810 bnez    a3, pc - 32            #; a3  = 70, taken, goto 0x800007f0
                         M                                           #; (f:fpu) ft0  <-- 9.0
       0     3814        M 0x800007f0 mulhu   a5, a2, a4             #; a2  = 30, a4  = 0xcccccccd
       0     3817        M                                           #; (acc) a5  <-- 0x0037d793
       0     3818        M 0x800007f4 srli    a5, a5, 3              #; a5  = 24, (wrb) a5  <-- 3
       0     3819        M 0x800007f8 mul     a5, a5, a6             #; a5  = 3, a6  = 10
       0     3822        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3823        M 0x800007fc sub     a5, a2, a5             #; a2  = 30, a5  = 30, (wrb) a5  <-- 0
       0     3825        M 0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 0
       0     3826        M 0x80000808 addi    a3, a3, -1             #; a3  = 70, (wrb) a3  <-- 69
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     3827        M 0x8000080c addi    a2, a2, 1              #; a2  = 30, (wrb) a2  <-- 31
                         M 0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     3828        M 0x80000810 bnez    a3, pc - 32            #; a3  = 69, taken, goto 0x800007f0
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     3829        M 0x800007f0 mulhu   a5, a2, a4             #; a2  = 31, a4  = 0xcccccccd
       0     3832        M                                           #; (acc) a5  <-- 0x0037d793
       0     3833        M 0x800007f4 srli    a5, a5, 3              #; a5  = 24, (wrb) a5  <-- 3
       0     3834        M 0x800007f8 mul     a5, a5, a6             #; a5  = 3, a6  = 10
       0     3837        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3838        M 0x800007fc sub     a5, a2, a5             #; a2  = 31, a5  = 30, (wrb) a5  <-- 1
       0     3840        M 0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 1
       0     3841        M 0x80000808 addi    a3, a3, -1             #; a3  = 69, (wrb) a3  <-- 68
                         M                                           #; (f:fpu) ft3  <-- 1.0
       0     3842        M 0x8000080c addi    a2, a2, 1              #; a2  = 31, (wrb) a2  <-- 32
                         M 0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
       0     3843        M 0x80000810 bnez    a3, pc - 32            #; a3  = 68, taken, goto 0x800007f0
                         M                                           #; (f:fpu) ft0  <-- 1.0
       0     3844        M 0x800007f0 mulhu   a5, a2, a4             #; a2  = 32, a4  = 0xcccccccd
       0     3847        M                                           #; (acc) a5  <-- 0x0037d793
       0     3848        M 0x800007f4 srli    a5, a5, 3              #; a5  = 25, (wrb) a5  <-- 3
       0     3849        M 0x800007f8 mul     a5, a5, a6             #; a5  = 3, a6  = 10
       0     3852        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3853        M 0x800007fc sub     a5, a2, a5             #; a2  = 32, a5  = 30, (wrb) a5  <-- 2
       0     3855        M 0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 2
       0     3856        M 0x80000808 addi    a3, a3, -1             #; a3  = 68, (wrb) a3  <-- 67
                         M                                           #; (f:fpu) ft3  <-- 2.0
       0     3857        M 0x8000080c addi    a2, a2, 1              #; a2  = 32, (wrb) a2  <-- 33
                         M 0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
       0     3858        M 0x80000810 bnez    a3, pc - 32            #; a3  = 67, taken, goto 0x800007f0
                         M                                           #; (f:fpu) ft0  <-- 2.0
       0     3859        M 0x800007f0 mulhu   a5, a2, a4             #; a2  = 33, a4  = 0xcccccccd
       0     3862        M                                           #; (acc) a5  <-- 0x0037d793
       0     3863        M 0x800007f4 srli    a5, a5, 3              #; a5  = 26, (wrb) a5  <-- 3
       0     3864        M 0x800007f8 mul     a5, a5, a6             #; a5  = 3, a6  = 10
       0     3867        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3868        M 0x800007fc sub     a5, a2, a5             #; a2  = 33, a5  = 30, (wrb) a5  <-- 3
       0     3870        M 0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 3
       0     3871        M 0x80000808 addi    a3, a3, -1             #; a3  = 67, (wrb) a3  <-- 66
                         M                                           #; (f:fpu) ft3  <-- 3.0
       0     3872        M 0x8000080c addi    a2, a2, 1              #; a2  = 33, (wrb) a2  <-- 34
                         M 0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
       0     3873        M 0x80000810 bnez    a3, pc - 32            #; a3  = 66, taken, goto 0x800007f0
                         M                                           #; (f:fpu) ft0  <-- 3.0
       0     3874        M 0x800007f0 mulhu   a5, a2, a4             #; a2  = 34, a4  = 0xcccccccd
       0     3877        M                                           #; (acc) a5  <-- 0x0037d793
       0     3878        M 0x800007f4 srli    a5, a5, 3              #; a5  = 27, (wrb) a5  <-- 3
       0     3879        M 0x800007f8 mul     a5, a5, a6             #; a5  = 3, a6  = 10
       0     3882        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3883        M 0x800007fc sub     a5, a2, a5             #; a2  = 34, a5  = 30, (wrb) a5  <-- 4
       0     3885        M 0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 4
       0     3886        M 0x80000808 addi    a3, a3, -1             #; a3  = 66, (wrb) a3  <-- 65
                         M                                           #; (f:fpu) ft3  <-- 4.0
       0     3887        M 0x8000080c addi    a2, a2, 1              #; a2  = 34, (wrb) a2  <-- 35
                         M 0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
       0     3888        M 0x80000810 bnez    a3, pc - 32            #; a3  = 65, taken, goto 0x800007f0
                         M                                           #; (f:fpu) ft0  <-- 4.0
       0     3889        M 0x800007f0 mulhu   a5, a2, a4             #; a2  = 35, a4  = 0xcccccccd
       0     3892        M                                           #; (acc) a5  <-- 0x0037d793
       0     3893        M 0x800007f4 srli    a5, a5, 3              #; a5  = 28, (wrb) a5  <-- 3
       0     3894        M 0x800007f8 mul     a5, a5, a6             #; a5  = 3, a6  = 10
       0     3897        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3898        M 0x800007fc sub     a5, a2, a5             #; a2  = 35, a5  = 30, (wrb) a5  <-- 5
       0     3900        M 0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 5
       0     3901        M 0x80000808 addi    a3, a3, -1             #; a3  = 65, (wrb) a3  <-- 64
                         M                                           #; (f:fpu) ft3  <-- 5.0
       0     3902        M 0x8000080c addi    a2, a2, 1              #; a2  = 35, (wrb) a2  <-- 36
                         M 0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
       0     3903        M 0x80000810 bnez    a3, pc - 32            #; a3  = 64, taken, goto 0x800007f0
                         M                                           #; (f:fpu) ft0  <-- 5.0
       0     3904        M 0x800007f0 mulhu   a5, a2, a4             #; a2  = 36, a4  = 0xcccccccd
       0     3907        M                                           #; (acc) a5  <-- 0x0037d793
       0     3908        M 0x800007f4 srli    a5, a5, 3              #; a5  = 28, (wrb) a5  <-- 3
       0     3909        M 0x800007f8 mul     a5, a5, a6             #; a5  = 3, a6  = 10
       0     3912        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3913        M 0x800007fc sub     a5, a2, a5             #; a2  = 36, a5  = 30, (wrb) a5  <-- 6
       0     3915        M 0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 6
       0     3916        M 0x80000808 addi    a3, a3, -1             #; a3  = 64, (wrb) a3  <-- 63
                         M                                           #; (f:fpu) ft3  <-- 6.0
       0     3917        M 0x8000080c addi    a2, a2, 1              #; a2  = 36, (wrb) a2  <-- 37
                         M 0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
       0     3918        M 0x80000810 bnez    a3, pc - 32            #; a3  = 63, taken, goto 0x800007f0
                         M                                           #; (f:fpu) ft0  <-- 6.0
       0     3919        M 0x800007f0 mulhu   a5, a2, a4             #; a2  = 37, a4  = 0xcccccccd
       0     3922        M                                           #; (acc) a5  <-- 0x0037d793
       0     3923        M 0x800007f4 srli    a5, a5, 3              #; a5  = 29, (wrb) a5  <-- 3
       0     3924        M 0x800007f8 mul     a5, a5, a6             #; a5  = 3, a6  = 10
       0     3927        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3928        M 0x800007fc sub     a5, a2, a5             #; a2  = 37, a5  = 30, (wrb) a5  <-- 7
       0     3930        M 0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 7
       0     3931        M 0x80000808 addi    a3, a3, -1             #; a3  = 63, (wrb) a3  <-- 62
                         M                                           #; (f:fpu) ft3  <-- 7.0
       0     3932        M 0x8000080c addi    a2, a2, 1              #; a2  = 37, (wrb) a2  <-- 38
                         M 0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
       0     3933        M 0x80000810 bnez    a3, pc - 32            #; a3  = 62, taken, goto 0x800007f0
                         M                                           #; (f:fpu) ft0  <-- 7.0
       0     3934        M 0x800007f0 mulhu   a5, a2, a4             #; a2  = 38, a4  = 0xcccccccd
       0     3937        M                                           #; (acc) a5  <-- 0x0037d793
       0     3938        M 0x800007f4 srli    a5, a5, 3              #; a5  = 30, (wrb) a5  <-- 3
       0     3939        M 0x800007f8 mul     a5, a5, a6             #; a5  = 3, a6  = 10
       0     3942        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3943        M 0x800007fc sub     a5, a2, a5             #; a2  = 38, a5  = 30, (wrb) a5  <-- 8
       0     3945        M 0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 8
       0     3946        M 0x80000808 addi    a3, a3, -1             #; a3  = 62, (wrb) a3  <-- 61
                         M                                           #; (f:fpu) ft3  <-- 8.0
       0     3947        M 0x8000080c addi    a2, a2, 1              #; a2  = 38, (wrb) a2  <-- 39
                         M 0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
       0     3948        M 0x80000810 bnez    a3, pc - 32            #; a3  = 61, taken, goto 0x800007f0
                         M                                           #; (f:fpu) ft0  <-- 8.0
       0     3949        M 0x800007f0 mulhu   a5, a2, a4             #; a2  = 39, a4  = 0xcccccccd
       0     3952        M                                           #; (acc) a5  <-- 0x0037d793
       0     3953        M 0x800007f4 srli    a5, a5, 3              #; a5  = 31, (wrb) a5  <-- 3
       0     3954        M 0x800007f8 mul     a5, a5, a6             #; a5  = 3, a6  = 10
       0     3957        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3958        M 0x800007fc sub     a5, a2, a5             #; a2  = 39, a5  = 30, (wrb) a5  <-- 9
       0     3960        M 0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 9
       0     3961        M 0x80000808 addi    a3, a3, -1             #; a3  = 61, (wrb) a3  <-- 60
                         M                                           #; (f:fpu) ft3  <-- 9.0
       0     3962        M 0x8000080c addi    a2, a2, 1              #; a2  = 39, (wrb) a2  <-- 40
                         M 0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
       0     3963        M 0x80000810 bnez    a3, pc - 32            #; a3  = 60, taken, goto 0x800007f0
                         M                                           #; (f:fpu) ft0  <-- 9.0
       0     3964        M 0x800007f0 mulhu   a5, a2, a4             #; a2  = 40, a4  = 0xcccccccd
       0     3967        M                                           #; (acc) a5  <-- 0x0037d793
       0     3968        M 0x800007f4 srli    a5, a5, 3              #; a5  = 32, (wrb) a5  <-- 4
       0     3969        M 0x800007f8 mul     a5, a5, a6             #; a5  = 4, a6  = 10
       0     3972        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3973        M 0x800007fc sub     a5, a2, a5             #; a2  = 40, a5  = 40, (wrb) a5  <-- 0
       0     3975        M 0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 0
       0     3976        M 0x80000808 addi    a3, a3, -1             #; a3  = 60, (wrb) a3  <-- 59
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     3977        M 0x8000080c addi    a2, a2, 1              #; a2  = 40, (wrb) a2  <-- 41
                         M 0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     3978        M 0x80000810 bnez    a3, pc - 32            #; a3  = 59, taken, goto 0x800007f0
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     3979        M 0x800007f0 mulhu   a5, a2, a4             #; a2  = 41, a4  = 0xcccccccd
       0     3982        M                                           #; (acc) a5  <-- 0x0037d793
       0     3983        M 0x800007f4 srli    a5, a5, 3              #; a5  = 32, (wrb) a5  <-- 4
       0     3984        M 0x800007f8 mul     a5, a5, a6             #; a5  = 4, a6  = 10
       0     3987        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3988        M 0x800007fc sub     a5, a2, a5             #; a2  = 41, a5  = 40, (wrb) a5  <-- 1
       0     3990        M 0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 1
       0     3991        M 0x80000808 addi    a3, a3, -1             #; a3  = 59, (wrb) a3  <-- 58
                         M                                           #; (f:fpu) ft3  <-- 1.0
       0     3992        M 0x8000080c addi    a2, a2, 1              #; a2  = 41, (wrb) a2  <-- 42
                         M 0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
       0     3993        M 0x80000810 bnez    a3, pc - 32            #; a3  = 58, taken, goto 0x800007f0
                         M                                           #; (f:fpu) ft0  <-- 1.0
       0     3994        M 0x800007f0 mulhu   a5, a2, a4             #; a2  = 42, a4  = 0xcccccccd
       0     3997        M                                           #; (acc) a5  <-- 0x0037d793
       0     3998        M 0x800007f4 srli    a5, a5, 3              #; a5  = 33, (wrb) a5  <-- 4
       0     3999        M 0x800007f8 mul     a5, a5, a6             #; a5  = 4, a6  = 10
       0     4002        M                                           #; (acc) a5  <-- 0x40f607b3
       0     4003        M 0x800007fc sub     a5, a2, a5             #; a2  = 42, a5  = 40, (wrb) a5  <-- 2
       0     4005        M 0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 2
       0     4006        M 0x80000808 addi    a3, a3, -1             #; a3  = 58, (wrb) a3  <-- 57
                         M                                           #; (f:fpu) ft3  <-- 2.0
       0     4007        M 0x8000080c addi    a2, a2, 1              #; a2  = 42, (wrb) a2  <-- 43
                         M 0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
       0     4008        M 0x80000810 bnez    a3, pc - 32            #; a3  = 57, taken, goto 0x800007f0
                         M                                           #; (f:fpu) ft0  <-- 2.0
       0     4009        M 0x800007f0 mulhu   a5, a2, a4             #; a2  = 43, a4  = 0xcccccccd
       0     4012        M                                           #; (acc) a5  <-- 0x0037d793
       0     4013        M 0x800007f4 srli    a5, a5, 3              #; a5  = 34, (wrb) a5  <-- 4
       0     4014        M 0x800007f8 mul     a5, a5, a6             #; a5  = 4, a6  = 10
       0     4017        M                                           #; (acc) a5  <-- 0x40f607b3
       0     4018        M 0x800007fc sub     a5, a2, a5             #; a2  = 43, a5  = 40, (wrb) a5  <-- 3
       0     4020        M 0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 3
       0     4021        M 0x80000808 addi    a3, a3, -1             #; a3  = 57, (wrb) a3  <-- 56
                         M                                           #; (f:fpu) ft3  <-- 3.0
       0     4022        M 0x8000080c addi    a2, a2, 1              #; a2  = 43, (wrb) a2  <-- 44
                         M 0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
       0     4023        M 0x80000810 bnez    a3, pc - 32            #; a3  = 56, taken, goto 0x800007f0
                         M                                           #; (f:fpu) ft0  <-- 3.0
       0     4024        M 0x800007f0 mulhu   a5, a2, a4             #; a2  = 44, a4  = 0xcccccccd
       0     4027        M                                           #; (acc) a5  <-- 0x0037d793
       0     4028        M 0x800007f4 srli    a5, a5, 3              #; a5  = 35, (wrb) a5  <-- 4
       0     4029        M 0x800007f8 mul     a5, a5, a6             #; a5  = 4, a6  = 10
       0     4032        M                                           #; (acc) a5  <-- 0x40f607b3
       0     4033        M 0x800007fc sub     a5, a2, a5             #; a2  = 44, a5  = 40, (wrb) a5  <-- 4
       0     4035        M 0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 4
       0     4036        M 0x80000808 addi    a3, a3, -1             #; a3  = 56, (wrb) a3  <-- 55
                         M                                           #; (f:fpu) ft3  <-- 4.0
       0     4037        M 0x8000080c addi    a2, a2, 1              #; a2  = 44, (wrb) a2  <-- 45
                         M 0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
       0     4038        M 0x80000810 bnez    a3, pc - 32            #; a3  = 55, taken, goto 0x800007f0
                         M                                           #; (f:fpu) ft0  <-- 4.0
       0     4039        M 0x800007f0 mulhu   a5, a2, a4             #; a2  = 45, a4  = 0xcccccccd
       0     4042        M                                           #; (acc) a5  <-- 0x0037d793
       0     4043        M 0x800007f4 srli    a5, a5, 3              #; a5  = 36, (wrb) a5  <-- 4
       0     4044        M 0x800007f8 mul     a5, a5, a6             #; a5  = 4, a6  = 10
       0     4047        M                                           #; (acc) a5  <-- 0x40f607b3
       0     4048        M 0x800007fc sub     a5, a2, a5             #; a2  = 45, a5  = 40, (wrb) a5  <-- 5
       0     4050        M 0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 5
       0     4051        M 0x80000808 addi    a3, a3, -1             #; a3  = 55, (wrb) a3  <-- 54
                         M                                           #; (f:fpu) ft3  <-- 5.0
       0     4052        M 0x8000080c addi    a2, a2, 1              #; a2  = 45, (wrb) a2  <-- 46
                         M 0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
       0     4053        M 0x80000810 bnez    a3, pc - 32            #; a3  = 54, taken, goto 0x800007f0
                         M                                           #; (f:fpu) ft0  <-- 5.0
       0     4054        M 0x800007f0 mulhu   a5, a2, a4             #; a2  = 46, a4  = 0xcccccccd
       0     4057        M                                           #; (acc) a5  <-- 0x0037d793
       0     4058        M 0x800007f4 srli    a5, a5, 3              #; a5  = 36, (wrb) a5  <-- 4
       0     4059        M 0x800007f8 mul     a5, a5, a6             #; a5  = 4, a6  = 10
       0     4062        M                                           #; (acc) a5  <-- 0x40f607b3
       0     4063        M 0x800007fc sub     a5, a2, a5             #; a2  = 46, a5  = 40, (wrb) a5  <-- 6
       0     4065        M 0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 6
       0     4066        M 0x80000808 addi    a3, a3, -1             #; a3  = 54, (wrb) a3  <-- 53
                         M                                           #; (f:fpu) ft3  <-- 6.0
       0     4067        M 0x8000080c addi    a2, a2, 1              #; a2  = 46, (wrb) a2  <-- 47
                         M 0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
       0     4068        M 0x80000810 bnez    a3, pc - 32            #; a3  = 53, taken, goto 0x800007f0
                         M                                           #; (f:fpu) ft0  <-- 6.0
       0     4069        M 0x800007f0 mulhu   a5, a2, a4             #; a2  = 47, a4  = 0xcccccccd
       0     4072        M                                           #; (acc) a5  <-- 0x0037d793
       0     4073        M 0x800007f4 srli    a5, a5, 3              #; a5  = 37, (wrb) a5  <-- 4
       0     4074        M 0x800007f8 mul     a5, a5, a6             #; a5  = 4, a6  = 10
       0     4077        M                                           #; (acc) a5  <-- 0x40f607b3
       0     4078        M 0x800007fc sub     a5, a2, a5             #; a2  = 47, a5  = 40, (wrb) a5  <-- 7
       0     4080        M 0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 7
       0     4081        M 0x80000808 addi    a3, a3, -1             #; a3  = 53, (wrb) a3  <-- 52
                         M                                           #; (f:fpu) ft3  <-- 7.0
       0     4082        M 0x8000080c addi    a2, a2, 1              #; a2  = 47, (wrb) a2  <-- 48
                         M 0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
       0     4083        M 0x80000810 bnez    a3, pc - 32            #; a3  = 52, taken, goto 0x800007f0
                         M                                           #; (f:fpu) ft0  <-- 7.0
       0     4084        M 0x800007f0 mulhu   a5, a2, a4             #; a2  = 48, a4  = 0xcccccccd
       0     4087        M                                           #; (acc) a5  <-- 0x0037d793
       0     4088        M 0x800007f4 srli    a5, a5, 3              #; a5  = 38, (wrb) a5  <-- 4
       0     4089        M 0x800007f8 mul     a5, a5, a6             #; a5  = 4, a6  = 10
       0     4092        M                                           #; (acc) a5  <-- 0x40f607b3
       0     4093        M 0x800007fc sub     a5, a2, a5             #; a2  = 48, a5  = 40, (wrb) a5  <-- 8
       0     4095        M 0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 8
       0     4096        M 0x80000808 addi    a3, a3, -1             #; a3  = 52, (wrb) a3  <-- 51
                         M                                           #; (f:fpu) ft3  <-- 8.0
       0     4097        M 0x8000080c addi    a2, a2, 1              #; a2  = 48, (wrb) a2  <-- 49
                         M 0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
       0     4098        M 0x80000810 bnez    a3, pc - 32            #; a3  = 51, taken, goto 0x800007f0
                         M                                           #; (f:fpu) ft0  <-- 8.0
       0     4099        M 0x800007f0 mulhu   a5, a2, a4             #; a2  = 49, a4  = 0xcccccccd
       0     4102        M                                           #; (acc) a5  <-- 0x0037d793
       0     4103        M 0x800007f4 srli    a5, a5, 3              #; a5  = 39, (wrb) a5  <-- 4
       0     4104        M 0x800007f8 mul     a5, a5, a6             #; a5  = 4, a6  = 10
       0     4107        M                                           #; (acc) a5  <-- 0x40f607b3
       0     4108        M 0x800007fc sub     a5, a2, a5             #; a2  = 49, a5  = 40, (wrb) a5  <-- 9
       0     4110        M 0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 9
       0     4111        M 0x80000808 addi    a3, a3, -1             #; a3  = 51, (wrb) a3  <-- 50
                         M                                           #; (f:fpu) ft3  <-- 9.0
       0     4112        M 0x8000080c addi    a2, a2, 1              #; a2  = 49, (wrb) a2  <-- 50
                         M 0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
       0     4113        M 0x80000810 bnez    a3, pc - 32            #; a3  = 50, taken, goto 0x800007f0
                         M                                           #; (f:fpu) ft0  <-- 9.0
       0     4114        M 0x800007f0 mulhu   a5, a2, a4             #; a2  = 50, a4  = 0xcccccccd
       0     4117        M                                           #; (acc) a5  <-- 0x0037d793
       0     4118        M 0x800007f4 srli    a5, a5, 3              #; a5  = 40, (wrb) a5  <-- 5
       0     4119        M 0x800007f8 mul     a5, a5, a6             #; a5  = 5, a6  = 10
       0     4122        M                                           #; (acc) a5  <-- 0x40f607b3
       0     4123        M 0x800007fc sub     a5, a2, a5             #; a2  = 50, a5  = 50, (wrb) a5  <-- 0
       0     4125        M 0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 0
       0     4126        M 0x80000808 addi    a3, a3, -1             #; a3  = 50, (wrb) a3  <-- 49
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     4127        M 0x8000080c addi    a2, a2, 1              #; a2  = 50, (wrb) a2  <-- 51
                         M 0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4128        M 0x80000810 bnez    a3, pc - 32            #; a3  = 49, taken, goto 0x800007f0
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     4129        M 0x800007f0 mulhu   a5, a2, a4             #; a2  = 51, a4  = 0xcccccccd
       0     4132        M                                           #; (acc) a5  <-- 0x0037d793
       0     4133        M 0x800007f4 srli    a5, a5, 3              #; a5  = 40, (wrb) a5  <-- 5
       0     4134        M 0x800007f8 mul     a5, a5, a6             #; a5  = 5, a6  = 10
       0     4137        M                                           #; (acc) a5  <-- 0x40f607b3
       0     4138        M 0x800007fc sub     a5, a2, a5             #; a2  = 51, a5  = 50, (wrb) a5  <-- 1
       0     4140        M 0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 1
       0     4141        M 0x80000808 addi    a3, a3, -1             #; a3  = 49, (wrb) a3  <-- 48
                         M                                           #; (f:fpu) ft3  <-- 1.0
       0     4142        M 0x8000080c addi    a2, a2, 1              #; a2  = 51, (wrb) a2  <-- 52
                         M 0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
       0     4143        M 0x80000810 bnez    a3, pc - 32            #; a3  = 48, taken, goto 0x800007f0
                         M                                           #; (f:fpu) ft0  <-- 1.0
       0     4144        M 0x800007f0 mulhu   a5, a2, a4             #; a2  = 52, a4  = 0xcccccccd
       0     4147        M                                           #; (acc) a5  <-- 0x0037d793
       0     4148        M 0x800007f4 srli    a5, a5, 3              #; a5  = 41, (wrb) a5  <-- 5
       0     4149        M 0x800007f8 mul     a5, a5, a6             #; a5  = 5, a6  = 10
       0     4152        M                                           #; (acc) a5  <-- 0x40f607b3
       0     4153        M 0x800007fc sub     a5, a2, a5             #; a2  = 52, a5  = 50, (wrb) a5  <-- 2
       0     4155        M 0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 2
       0     4156        M 0x80000808 addi    a3, a3, -1             #; a3  = 48, (wrb) a3  <-- 47
                         M                                           #; (f:fpu) ft3  <-- 2.0
       0     4157        M 0x8000080c addi    a2, a2, 1              #; a2  = 52, (wrb) a2  <-- 53
                         M 0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
       0     4158        M 0x80000810 bnez    a3, pc - 32            #; a3  = 47, taken, goto 0x800007f0
                         M                                           #; (f:fpu) ft0  <-- 2.0
       0     4159        M 0x800007f0 mulhu   a5, a2, a4             #; a2  = 53, a4  = 0xcccccccd
       0     4162        M                                           #; (acc) a5  <-- 0x0037d793
       0     4163        M 0x800007f4 srli    a5, a5, 3              #; a5  = 42, (wrb) a5  <-- 5
       0     4164        M 0x800007f8 mul     a5, a5, a6             #; a5  = 5, a6  = 10
       0     4167        M                                           #; (acc) a5  <-- 0x40f607b3
       0     4168        M 0x800007fc sub     a5, a2, a5             #; a2  = 53, a5  = 50, (wrb) a5  <-- 3
       0     4170        M 0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 3
       0     4171        M 0x80000808 addi    a3, a3, -1             #; a3  = 47, (wrb) a3  <-- 46
                         M                                           #; (f:fpu) ft3  <-- 3.0
       0     4172        M 0x8000080c addi    a2, a2, 1              #; a2  = 53, (wrb) a2  <-- 54
                         M 0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
       0     4173        M 0x80000810 bnez    a3, pc - 32            #; a3  = 46, taken, goto 0x800007f0
                         M                                           #; (f:fpu) ft0  <-- 3.0
       0     4174        M 0x800007f0 mulhu   a5, a2, a4             #; a2  = 54, a4  = 0xcccccccd
       0     4177        M                                           #; (acc) a5  <-- 0x0037d793
       0     4178        M 0x800007f4 srli    a5, a5, 3              #; a5  = 43, (wrb) a5  <-- 5
       0     4179        M 0x800007f8 mul     a5, a5, a6             #; a5  = 5, a6  = 10
       0     4182        M                                           #; (acc) a5  <-- 0x40f607b3
       0     4183        M 0x800007fc sub     a5, a2, a5             #; a2  = 54, a5  = 50, (wrb) a5  <-- 4
       0     4185        M 0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 4
       0     4186        M 0x80000808 addi    a3, a3, -1             #; a3  = 46, (wrb) a3  <-- 45
                         M                                           #; (f:fpu) ft3  <-- 4.0
       0     4187        M 0x8000080c addi    a2, a2, 1              #; a2  = 54, (wrb) a2  <-- 55
                         M 0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
       0     4188        M 0x80000810 bnez    a3, pc - 32            #; a3  = 45, taken, goto 0x800007f0
                         M                                           #; (f:fpu) ft0  <-- 4.0
       0     4189        M 0x800007f0 mulhu   a5, a2, a4             #; a2  = 55, a4  = 0xcccccccd
       0     4192        M                                           #; (acc) a5  <-- 0x0037d793
       0     4193        M 0x800007f4 srli    a5, a5, 3              #; a5  = 44, (wrb) a5  <-- 5
       0     4194        M 0x800007f8 mul     a5, a5, a6             #; a5  = 5, a6  = 10
       0     4197        M                                           #; (acc) a5  <-- 0x40f607b3
       0     4198        M 0x800007fc sub     a5, a2, a5             #; a2  = 55, a5  = 50, (wrb) a5  <-- 5
       0     4200        M 0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 5
       0     4201        M 0x80000808 addi    a3, a3, -1             #; a3  = 45, (wrb) a3  <-- 44
                         M                                           #; (f:fpu) ft3  <-- 5.0
       0     4202        M 0x8000080c addi    a2, a2, 1              #; a2  = 55, (wrb) a2  <-- 56
                         M 0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
       0     4203        M 0x80000810 bnez    a3, pc - 32            #; a3  = 44, taken, goto 0x800007f0
                         M                                           #; (f:fpu) ft0  <-- 5.0
       0     4204        M 0x800007f0 mulhu   a5, a2, a4             #; a2  = 56, a4  = 0xcccccccd
       0     4207        M                                           #; (acc) a5  <-- 0x0037d793
       0     4208        M 0x800007f4 srli    a5, a5, 3              #; a5  = 44, (wrb) a5  <-- 5
       0     4209        M 0x800007f8 mul     a5, a5, a6             #; a5  = 5, a6  = 10
       0     4212        M                                           #; (acc) a5  <-- 0x40f607b3
       0     4213        M 0x800007fc sub     a5, a2, a5             #; a2  = 56, a5  = 50, (wrb) a5  <-- 6
       0     4215        M 0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 6
       0     4216        M 0x80000808 addi    a3, a3, -1             #; a3  = 44, (wrb) a3  <-- 43
                         M                                           #; (f:fpu) ft3  <-- 6.0
       0     4217        M 0x8000080c addi    a2, a2, 1              #; a2  = 56, (wrb) a2  <-- 57
                         M 0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
       0     4218        M 0x80000810 bnez    a3, pc - 32            #; a3  = 43, taken, goto 0x800007f0
                         M                                           #; (f:fpu) ft0  <-- 6.0
       0     4219        M 0x800007f0 mulhu   a5, a2, a4             #; a2  = 57, a4  = 0xcccccccd
       0     4222        M                                           #; (acc) a5  <-- 0x0037d793
       0     4223        M 0x800007f4 srli    a5, a5, 3              #; a5  = 45, (wrb) a5  <-- 5
       0     4224        M 0x800007f8 mul     a5, a5, a6             #; a5  = 5, a6  = 10
       0     4227        M                                           #; (acc) a5  <-- 0x40f607b3
       0     4228        M 0x800007fc sub     a5, a2, a5             #; a2  = 57, a5  = 50, (wrb) a5  <-- 7
       0     4230        M 0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 7
       0     4231        M 0x80000808 addi    a3, a3, -1             #; a3  = 43, (wrb) a3  <-- 42
                         M                                           #; (f:fpu) ft3  <-- 7.0
       0     4232        M 0x8000080c addi    a2, a2, 1              #; a2  = 57, (wrb) a2  <-- 58
                         M 0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
       0     4233        M 0x80000810 bnez    a3, pc - 32            #; a3  = 42, taken, goto 0x800007f0
                         M                                           #; (f:fpu) ft0  <-- 7.0
       0     4234        M 0x800007f0 mulhu   a5, a2, a4             #; a2  = 58, a4  = 0xcccccccd
       0     4237        M                                           #; (acc) a5  <-- 0x0037d793
       0     4238        M 0x800007f4 srli    a5, a5, 3              #; a5  = 46, (wrb) a5  <-- 5
       0     4239        M 0x800007f8 mul     a5, a5, a6             #; a5  = 5, a6  = 10
       0     4242        M                                           #; (acc) a5  <-- 0x40f607b3
       0     4243        M 0x800007fc sub     a5, a2, a5             #; a2  = 58, a5  = 50, (wrb) a5  <-- 8
       0     4245        M 0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 8
       0     4246        M 0x80000808 addi    a3, a3, -1             #; a3  = 42, (wrb) a3  <-- 41
                         M                                           #; (f:fpu) ft3  <-- 8.0
       0     4247        M 0x8000080c addi    a2, a2, 1              #; a2  = 58, (wrb) a2  <-- 59
                         M 0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
       0     4248        M 0x80000810 bnez    a3, pc - 32            #; a3  = 41, taken, goto 0x800007f0
                         M                                           #; (f:fpu) ft0  <-- 8.0
       0     4249        M 0x800007f0 mulhu   a5, a2, a4             #; a2  = 59, a4  = 0xcccccccd
       0     4252        M                                           #; (acc) a5  <-- 0x0037d793
       0     4253        M 0x800007f4 srli    a5, a5, 3              #; a5  = 47, (wrb) a5  <-- 5
       0     4254        M 0x800007f8 mul     a5, a5, a6             #; a5  = 5, a6  = 10
       0     4257        M                                           #; (acc) a5  <-- 0x40f607b3
       0     4258        M 0x800007fc sub     a5, a2, a5             #; a2  = 59, a5  = 50, (wrb) a5  <-- 9
       0     4260        M 0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 9
       0     4261        M 0x80000808 addi    a3, a3, -1             #; a3  = 41, (wrb) a3  <-- 40
                         M                                           #; (f:fpu) ft3  <-- 9.0
       0     4262        M 0x8000080c addi    a2, a2, 1              #; a2  = 59, (wrb) a2  <-- 60
                         M 0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
       0     4263        M 0x80000810 bnez    a3, pc - 32            #; a3  = 40, taken, goto 0x800007f0
                         M                                           #; (f:fpu) ft0  <-- 9.0
       0     4264        M 0x800007f0 mulhu   a5, a2, a4             #; a2  = 60, a4  = 0xcccccccd
       0     4267        M                                           #; (acc) a5  <-- 0x0037d793
       0     4268        M 0x800007f4 srli    a5, a5, 3              #; a5  = 48, (wrb) a5  <-- 6
       0     4269        M 0x800007f8 mul     a5, a5, a6             #; a5  = 6, a6  = 10
       0     4272        M                                           #; (acc) a5  <-- 0x40f607b3
       0     4273        M 0x800007fc sub     a5, a2, a5             #; a2  = 60, a5  = 60, (wrb) a5  <-- 0
       0     4275        M 0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 0
       0     4276        M 0x80000808 addi    a3, a3, -1             #; a3  = 40, (wrb) a3  <-- 39
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     4277        M 0x8000080c addi    a2, a2, 1              #; a2  = 60, (wrb) a2  <-- 61
                         M 0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4278        M 0x80000810 bnez    a3, pc - 32            #; a3  = 39, taken, goto 0x800007f0
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     4279        M 0x800007f0 mulhu   a5, a2, a4             #; a2  = 61, a4  = 0xcccccccd
       0     4282        M                                           #; (acc) a5  <-- 0x0037d793
       0     4283        M 0x800007f4 srli    a5, a5, 3              #; a5  = 48, (wrb) a5  <-- 6
       0     4284        M 0x800007f8 mul     a5, a5, a6             #; a5  = 6, a6  = 10
       0     4287        M                                           #; (acc) a5  <-- 0x40f607b3
       0     4288        M 0x800007fc sub     a5, a2, a5             #; a2  = 61, a5  = 60, (wrb) a5  <-- 1
       0     4290        M 0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 1
       0     4291        M 0x80000808 addi    a3, a3, -1             #; a3  = 39, (wrb) a3  <-- 38
                         M                                           #; (f:fpu) ft3  <-- 1.0
       0     4292        M 0x8000080c addi    a2, a2, 1              #; a2  = 61, (wrb) a2  <-- 62
                         M 0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
       0     4293        M 0x80000810 bnez    a3, pc - 32            #; a3  = 38, taken, goto 0x800007f0
                         M                                           #; (f:fpu) ft0  <-- 1.0
       0     4294        M 0x800007f0 mulhu   a5, a2, a4             #; a2  = 62, a4  = 0xcccccccd
       0     4297        M                                           #; (acc) a5  <-- 0x0037d793
       0     4298        M 0x800007f4 srli    a5, a5, 3              #; a5  = 49, (wrb) a5  <-- 6
       0     4299        M 0x800007f8 mul     a5, a5, a6             #; a5  = 6, a6  = 10
       0     4302        M                                           #; (acc) a5  <-- 0x40f607b3
       0     4303        M 0x800007fc sub     a5, a2, a5             #; a2  = 62, a5  = 60, (wrb) a5  <-- 2
       0     4305        M 0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 2
       0     4306        M 0x80000808 addi    a3, a3, -1             #; a3  = 38, (wrb) a3  <-- 37
                         M                                           #; (f:fpu) ft3  <-- 2.0
       0     4307        M 0x8000080c addi    a2, a2, 1              #; a2  = 62, (wrb) a2  <-- 63
                         M 0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
       0     4308        M 0x80000810 bnez    a3, pc - 32            #; a3  = 37, taken, goto 0x800007f0
                         M                                           #; (f:fpu) ft0  <-- 2.0
       0     4309        M 0x800007f0 mulhu   a5, a2, a4             #; a2  = 63, a4  = 0xcccccccd
       0     4312        M                                           #; (acc) a5  <-- 0x0037d793
       0     4313        M 0x800007f4 srli    a5, a5, 3              #; a5  = 50, (wrb) a5  <-- 6
       0     4314        M 0x800007f8 mul     a5, a5, a6             #; a5  = 6, a6  = 10
       0     4317        M                                           #; (acc) a5  <-- 0x40f607b3
       0     4318        M 0x800007fc sub     a5, a2, a5             #; a2  = 63, a5  = 60, (wrb) a5  <-- 3
       0     4320        M 0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 3
       0     4321        M 0x80000808 addi    a3, a3, -1             #; a3  = 37, (wrb) a3  <-- 36
                         M                                           #; (f:fpu) ft3  <-- 3.0
       0     4322        M 0x8000080c addi    a2, a2, 1              #; a2  = 63, (wrb) a2  <-- 64
                         M 0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
       0     4323        M 0x80000810 bnez    a3, pc - 32            #; a3  = 36, taken, goto 0x800007f0
                         M                                           #; (f:fpu) ft0  <-- 3.0
       0     4324        M 0x800007f0 mulhu   a5, a2, a4             #; a2  = 64, a4  = 0xcccccccd
       0     4327        M                                           #; (acc) a5  <-- 0x0037d793
       0     4328        M 0x800007f4 srli    a5, a5, 3              #; a5  = 51, (wrb) a5  <-- 6
       0     4329        M 0x800007f8 mul     a5, a5, a6             #; a5  = 6, a6  = 10
       0     4332        M                                           #; (acc) a5  <-- 0x40f607b3
       0     4333        M 0x800007fc sub     a5, a2, a5             #; a2  = 64, a5  = 60, (wrb) a5  <-- 4
       0     4335        M 0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 4
       0     4336        M 0x80000808 addi    a3, a3, -1             #; a3  = 36, (wrb) a3  <-- 35
                         M                                           #; (f:fpu) ft3  <-- 4.0
       0     4337        M 0x8000080c addi    a2, a2, 1              #; a2  = 64, (wrb) a2  <-- 65
                         M 0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
       0     4338        M 0x80000810 bnez    a3, pc - 32            #; a3  = 35, taken, goto 0x800007f0
                         M                                           #; (f:fpu) ft0  <-- 4.0
       0     4339        M 0x800007f0 mulhu   a5, a2, a4             #; a2  = 65, a4  = 0xcccccccd
       0     4342        M                                           #; (acc) a5  <-- 0x0037d793
       0     4343        M 0x800007f4 srli    a5, a5, 3              #; a5  = 52, (wrb) a5  <-- 6
       0     4344        M 0x800007f8 mul     a5, a5, a6             #; a5  = 6, a6  = 10
       0     4347        M                                           #; (acc) a5  <-- 0x40f607b3
       0     4348        M 0x800007fc sub     a5, a2, a5             #; a2  = 65, a5  = 60, (wrb) a5  <-- 5
       0     4350        M 0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 5
       0     4351        M 0x80000808 addi    a3, a3, -1             #; a3  = 35, (wrb) a3  <-- 34
                         M                                           #; (f:fpu) ft3  <-- 5.0
       0     4352        M 0x8000080c addi    a2, a2, 1              #; a2  = 65, (wrb) a2  <-- 66
                         M 0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
       0     4353        M 0x80000810 bnez    a3, pc - 32            #; a3  = 34, taken, goto 0x800007f0
                         M                                           #; (f:fpu) ft0  <-- 5.0
       0     4354        M 0x800007f0 mulhu   a5, a2, a4             #; a2  = 66, a4  = 0xcccccccd
       0     4357        M                                           #; (acc) a5  <-- 0x0037d793
       0     4358        M 0x800007f4 srli    a5, a5, 3              #; a5  = 52, (wrb) a5  <-- 6
       0     4359        M 0x800007f8 mul     a5, a5, a6             #; a5  = 6, a6  = 10
       0     4362        M                                           #; (acc) a5  <-- 0x40f607b3
       0     4363        M 0x800007fc sub     a5, a2, a5             #; a2  = 66, a5  = 60, (wrb) a5  <-- 6
       0     4365        M 0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 6
       0     4366        M 0x80000808 addi    a3, a3, -1             #; a3  = 34, (wrb) a3  <-- 33
                         M                                           #; (f:fpu) ft3  <-- 6.0
       0     4367        M 0x8000080c addi    a2, a2, 1              #; a2  = 66, (wrb) a2  <-- 67
                         M 0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
       0     4368        M 0x80000810 bnez    a3, pc - 32            #; a3  = 33, taken, goto 0x800007f0
                         M                                           #; (f:fpu) ft0  <-- 6.0
       0     4369        M 0x800007f0 mulhu   a5, a2, a4             #; a2  = 67, a4  = 0xcccccccd
       0     4372        M                                           #; (acc) a5  <-- 0x0037d793
       0     4373        M 0x800007f4 srli    a5, a5, 3              #; a5  = 53, (wrb) a5  <-- 6
       0     4374        M 0x800007f8 mul     a5, a5, a6             #; a5  = 6, a6  = 10
       0     4377        M                                           #; (acc) a5  <-- 0x40f607b3
       0     4378        M 0x800007fc sub     a5, a2, a5             #; a2  = 67, a5  = 60, (wrb) a5  <-- 7
       0     4380        M 0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 7
       0     4381        M 0x80000808 addi    a3, a3, -1             #; a3  = 33, (wrb) a3  <-- 32
                         M                                           #; (f:fpu) ft3  <-- 7.0
       0     4382        M 0x8000080c addi    a2, a2, 1              #; a2  = 67, (wrb) a2  <-- 68
                         M 0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
       0     4383        M 0x80000810 bnez    a3, pc - 32            #; a3  = 32, taken, goto 0x800007f0
                         M                                           #; (f:fpu) ft0  <-- 7.0
       0     4384        M 0x800007f0 mulhu   a5, a2, a4             #; a2  = 68, a4  = 0xcccccccd
       0     4387        M                                           #; (acc) a5  <-- 0x0037d793
       0     4388        M 0x800007f4 srli    a5, a5, 3              #; a5  = 54, (wrb) a5  <-- 6
       0     4389        M 0x800007f8 mul     a5, a5, a6             #; a5  = 6, a6  = 10
       0     4392        M                                           #; (acc) a5  <-- 0x40f607b3
       0     4393        M 0x800007fc sub     a5, a2, a5             #; a2  = 68, a5  = 60, (wrb) a5  <-- 8
       0     4395        M 0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 8
       0     4396        M 0x80000808 addi    a3, a3, -1             #; a3  = 32, (wrb) a3  <-- 31
                         M                                           #; (f:fpu) ft3  <-- 8.0
       0     4397        M 0x8000080c addi    a2, a2, 1              #; a2  = 68, (wrb) a2  <-- 69
                         M 0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
       0     4398        M 0x80000810 bnez    a3, pc - 32            #; a3  = 31, taken, goto 0x800007f0
                         M                                           #; (f:fpu) ft0  <-- 8.0
       0     4399        M 0x800007f0 mulhu   a5, a2, a4             #; a2  = 69, a4  = 0xcccccccd
       0     4402        M                                           #; (acc) a5  <-- 0x0037d793
       0     4403        M 0x800007f4 srli    a5, a5, 3              #; a5  = 55, (wrb) a5  <-- 6
       0     4404        M 0x800007f8 mul     a5, a5, a6             #; a5  = 6, a6  = 10
       0     4407        M                                           #; (acc) a5  <-- 0x40f607b3
       0     4408        M 0x800007fc sub     a5, a2, a5             #; a2  = 69, a5  = 60, (wrb) a5  <-- 9
       0     4410        M 0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 9
       0     4411        M 0x80000808 addi    a3, a3, -1             #; a3  = 31, (wrb) a3  <-- 30
                         M                                           #; (f:fpu) ft3  <-- 9.0
       0     4412        M 0x8000080c addi    a2, a2, 1              #; a2  = 69, (wrb) a2  <-- 70
                         M 0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
       0     4413        M 0x80000810 bnez    a3, pc - 32            #; a3  = 30, taken, goto 0x800007f0
                         M                                           #; (f:fpu) ft0  <-- 9.0
       0     4414        M 0x800007f0 mulhu   a5, a2, a4             #; a2  = 70, a4  = 0xcccccccd
       0     4417        M                                           #; (acc) a5  <-- 0x0037d793
       0     4418        M 0x800007f4 srli    a5, a5, 3              #; a5  = 56, (wrb) a5  <-- 7
       0     4419        M 0x800007f8 mul     a5, a5, a6             #; a5  = 7, a6  = 10
       0     4422        M                                           #; (acc) a5  <-- 0x40f607b3
       0     4423        M 0x800007fc sub     a5, a2, a5             #; a2  = 70, a5  = 70, (wrb) a5  <-- 0
       0     4425        M 0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 0
       0     4426        M 0x80000808 addi    a3, a3, -1             #; a3  = 30, (wrb) a3  <-- 29
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     4427        M 0x8000080c addi    a2, a2, 1              #; a2  = 70, (wrb) a2  <-- 71
                         M 0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4428        M 0x80000810 bnez    a3, pc - 32            #; a3  = 29, taken, goto 0x800007f0
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     4429        M 0x800007f0 mulhu   a5, a2, a4             #; a2  = 71, a4  = 0xcccccccd
       0     4432        M                                           #; (acc) a5  <-- 0x0037d793
       0     4433        M 0x800007f4 srli    a5, a5, 3              #; a5  = 56, (wrb) a5  <-- 7
       0     4434        M 0x800007f8 mul     a5, a5, a6             #; a5  = 7, a6  = 10
       0     4437        M                                           #; (acc) a5  <-- 0x40f607b3
       0     4438        M 0x800007fc sub     a5, a2, a5             #; a2  = 71, a5  = 70, (wrb) a5  <-- 1
       0     4440        M 0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 1
       0     4441        M 0x80000808 addi    a3, a3, -1             #; a3  = 29, (wrb) a3  <-- 28
                         M                                           #; (f:fpu) ft3  <-- 1.0
       0     4442        M 0x8000080c addi    a2, a2, 1              #; a2  = 71, (wrb) a2  <-- 72
                         M 0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
       0     4443        M 0x80000810 bnez    a3, pc - 32            #; a3  = 28, taken, goto 0x800007f0
                         M                                           #; (f:fpu) ft0  <-- 1.0
       0     4444        M 0x800007f0 mulhu   a5, a2, a4             #; a2  = 72, a4  = 0xcccccccd
       0     4447        M                                           #; (acc) a5  <-- 0x0037d793
       0     4448        M 0x800007f4 srli    a5, a5, 3              #; a5  = 57, (wrb) a5  <-- 7
       0     4449        M 0x800007f8 mul     a5, a5, a6             #; a5  = 7, a6  = 10
       0     4452        M                                           #; (acc) a5  <-- 0x40f607b3
       0     4453        M 0x800007fc sub     a5, a2, a5             #; a2  = 72, a5  = 70, (wrb) a5  <-- 2
       0     4455        M 0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 2
       0     4456        M 0x80000808 addi    a3, a3, -1             #; a3  = 28, (wrb) a3  <-- 27
                         M                                           #; (f:fpu) ft3  <-- 2.0
       0     4457        M 0x8000080c addi    a2, a2, 1              #; a2  = 72, (wrb) a2  <-- 73
                         M 0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
       0     4458        M 0x80000810 bnez    a3, pc - 32            #; a3  = 27, taken, goto 0x800007f0
                         M                                           #; (f:fpu) ft0  <-- 2.0
       0     4459        M 0x800007f0 mulhu   a5, a2, a4             #; a2  = 73, a4  = 0xcccccccd
       0     4462        M                                           #; (acc) a5  <-- 0x0037d793
       0     4463        M 0x800007f4 srli    a5, a5, 3              #; a5  = 58, (wrb) a5  <-- 7
       0     4464        M 0x800007f8 mul     a5, a5, a6             #; a5  = 7, a6  = 10
       0     4467        M                                           #; (acc) a5  <-- 0x40f607b3
       0     4468        M 0x800007fc sub     a5, a2, a5             #; a2  = 73, a5  = 70, (wrb) a5  <-- 3
       0     4470        M 0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 3
       0     4471        M 0x80000808 addi    a3, a3, -1             #; a3  = 27, (wrb) a3  <-- 26
                         M                                           #; (f:fpu) ft3  <-- 3.0
       0     4472        M 0x8000080c addi    a2, a2, 1              #; a2  = 73, (wrb) a2  <-- 74
                         M 0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
       0     4473        M 0x80000810 bnez    a3, pc - 32            #; a3  = 26, taken, goto 0x800007f0
                         M                                           #; (f:fpu) ft0  <-- 3.0
       0     4474        M 0x800007f0 mulhu   a5, a2, a4             #; a2  = 74, a4  = 0xcccccccd
       0     4477        M                                           #; (acc) a5  <-- 0x0037d793
       0     4478        M 0x800007f4 srli    a5, a5, 3              #; a5  = 59, (wrb) a5  <-- 7
       0     4479        M 0x800007f8 mul     a5, a5, a6             #; a5  = 7, a6  = 10
       0     4482        M                                           #; (acc) a5  <-- 0x40f607b3
       0     4483        M 0x800007fc sub     a5, a2, a5             #; a2  = 74, a5  = 70, (wrb) a5  <-- 4
       0     4485        M 0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 4
       0     4486        M 0x80000808 addi    a3, a3, -1             #; a3  = 26, (wrb) a3  <-- 25
                         M                                           #; (f:fpu) ft3  <-- 4.0
       0     4487        M 0x8000080c addi    a2, a2, 1              #; a2  = 74, (wrb) a2  <-- 75
                         M 0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
       0     4488        M 0x80000810 bnez    a3, pc - 32            #; a3  = 25, taken, goto 0x800007f0
                         M                                           #; (f:fpu) ft0  <-- 4.0
       0     4489        M 0x800007f0 mulhu   a5, a2, a4             #; a2  = 75, a4  = 0xcccccccd
       0     4492        M                                           #; (acc) a5  <-- 0x0037d793
       0     4493        M 0x800007f4 srli    a5, a5, 3              #; a5  = 60, (wrb) a5  <-- 7
       0     4494        M 0x800007f8 mul     a5, a5, a6             #; a5  = 7, a6  = 10
       0     4497        M                                           #; (acc) a5  <-- 0x40f607b3
       0     4498        M 0x800007fc sub     a5, a2, a5             #; a2  = 75, a5  = 70, (wrb) a5  <-- 5
       0     4500        M 0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 5
       0     4501        M 0x80000808 addi    a3, a3, -1             #; a3  = 25, (wrb) a3  <-- 24
                         M                                           #; (f:fpu) ft3  <-- 5.0
       0     4502        M 0x8000080c addi    a2, a2, 1              #; a2  = 75, (wrb) a2  <-- 76
                         M 0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
       0     4503        M 0x80000810 bnez    a3, pc - 32            #; a3  = 24, taken, goto 0x800007f0
                         M                                           #; (f:fpu) ft0  <-- 5.0
       0     4504        M 0x800007f0 mulhu   a5, a2, a4             #; a2  = 76, a4  = 0xcccccccd
       0     4507        M                                           #; (acc) a5  <-- 0x0037d793
       0     4508        M 0x800007f4 srli    a5, a5, 3              #; a5  = 60, (wrb) a5  <-- 7
       0     4509        M 0x800007f8 mul     a5, a5, a6             #; a5  = 7, a6  = 10
       0     4512        M                                           #; (acc) a5  <-- 0x40f607b3
       0     4513        M 0x800007fc sub     a5, a2, a5             #; a2  = 76, a5  = 70, (wrb) a5  <-- 6
       0     4515        M 0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 6
       0     4516        M 0x80000808 addi    a3, a3, -1             #; a3  = 24, (wrb) a3  <-- 23
                         M                                           #; (f:fpu) ft3  <-- 6.0
       0     4517        M 0x8000080c addi    a2, a2, 1              #; a2  = 76, (wrb) a2  <-- 77
                         M 0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
       0     4518        M 0x80000810 bnez    a3, pc - 32            #; a3  = 23, taken, goto 0x800007f0
                         M                                           #; (f:fpu) ft0  <-- 6.0
       0     4519        M 0x800007f0 mulhu   a5, a2, a4             #; a2  = 77, a4  = 0xcccccccd
       0     4522        M                                           #; (acc) a5  <-- 0x0037d793
       0     4523        M 0x800007f4 srli    a5, a5, 3              #; a5  = 61, (wrb) a5  <-- 7
       0     4524        M 0x800007f8 mul     a5, a5, a6             #; a5  = 7, a6  = 10
       0     4527        M                                           #; (acc) a5  <-- 0x40f607b3
       0     4528        M 0x800007fc sub     a5, a2, a5             #; a2  = 77, a5  = 70, (wrb) a5  <-- 7
       0     4530        M 0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 7
       0     4531        M 0x80000808 addi    a3, a3, -1             #; a3  = 23, (wrb) a3  <-- 22
                         M                                           #; (f:fpu) ft3  <-- 7.0
       0     4532        M 0x8000080c addi    a2, a2, 1              #; a2  = 77, (wrb) a2  <-- 78
                         M 0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
       0     4533        M 0x80000810 bnez    a3, pc - 32            #; a3  = 22, taken, goto 0x800007f0
                         M                                           #; (f:fpu) ft0  <-- 7.0
       0     4534        M 0x800007f0 mulhu   a5, a2, a4             #; a2  = 78, a4  = 0xcccccccd
       0     4537        M                                           #; (acc) a5  <-- 0x0037d793
       0     4538        M 0x800007f4 srli    a5, a5, 3              #; a5  = 62, (wrb) a5  <-- 7
       0     4539        M 0x800007f8 mul     a5, a5, a6             #; a5  = 7, a6  = 10
       0     4542        M                                           #; (acc) a5  <-- 0x40f607b3
       0     4543        M 0x800007fc sub     a5, a2, a5             #; a2  = 78, a5  = 70, (wrb) a5  <-- 8
       0     4545        M 0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 8
       0     4546        M 0x80000808 addi    a3, a3, -1             #; a3  = 22, (wrb) a3  <-- 21
                         M                                           #; (f:fpu) ft3  <-- 8.0
       0     4547        M 0x8000080c addi    a2, a2, 1              #; a2  = 78, (wrb) a2  <-- 79
                         M 0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
       0     4548        M 0x80000810 bnez    a3, pc - 32            #; a3  = 21, taken, goto 0x800007f0
                         M                                           #; (f:fpu) ft0  <-- 8.0
       0     4549        M 0x800007f0 mulhu   a5, a2, a4             #; a2  = 79, a4  = 0xcccccccd
       0     4552        M                                           #; (acc) a5  <-- 0x0037d793
       0     4553        M 0x800007f4 srli    a5, a5, 3              #; a5  = 63, (wrb) a5  <-- 7
       0     4554        M 0x800007f8 mul     a5, a5, a6             #; a5  = 7, a6  = 10
       0     4557        M                                           #; (acc) a5  <-- 0x40f607b3
       0     4558        M 0x800007fc sub     a5, a2, a5             #; a2  = 79, a5  = 70, (wrb) a5  <-- 9
       0     4560        M 0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 9
       0     4561        M 0x80000808 addi    a3, a3, -1             #; a3  = 21, (wrb) a3  <-- 20
                         M                                           #; (f:fpu) ft3  <-- 9.0
       0     4562        M 0x8000080c addi    a2, a2, 1              #; a2  = 79, (wrb) a2  <-- 80
                         M 0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
       0     4563        M 0x80000810 bnez    a3, pc - 32            #; a3  = 20, taken, goto 0x800007f0
                         M                                           #; (f:fpu) ft0  <-- 9.0
       0     4564        M 0x800007f0 mulhu   a5, a2, a4             #; a2  = 80, a4  = 0xcccccccd
       0     4567        M                                           #; (acc) a5  <-- 0x0037d793
       0     4568        M 0x800007f4 srli    a5, a5, 3              #; a5  = 64, (wrb) a5  <-- 8
       0     4569        M 0x800007f8 mul     a5, a5, a6             #; a5  = 8, a6  = 10
       0     4572        M                                           #; (acc) a5  <-- 0x40f607b3
       0     4573        M 0x800007fc sub     a5, a2, a5             #; a2  = 80, a5  = 80, (wrb) a5  <-- 0
       0     4575        M 0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 0
       0     4576        M 0x80000808 addi    a3, a3, -1             #; a3  = 20, (wrb) a3  <-- 19
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     4577        M 0x8000080c addi    a2, a2, 1              #; a2  = 80, (wrb) a2  <-- 81
                         M 0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4578        M 0x80000810 bnez    a3, pc - 32            #; a3  = 19, taken, goto 0x800007f0
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     4579        M 0x800007f0 mulhu   a5, a2, a4             #; a2  = 81, a4  = 0xcccccccd
       0     4582        M                                           #; (acc) a5  <-- 0x0037d793
       0     4583        M 0x800007f4 srli    a5, a5, 3              #; a5  = 64, (wrb) a5  <-- 8
       0     4584        M 0x800007f8 mul     a5, a5, a6             #; a5  = 8, a6  = 10
       0     4587        M                                           #; (acc) a5  <-- 0x40f607b3
       0     4588        M 0x800007fc sub     a5, a2, a5             #; a2  = 81, a5  = 80, (wrb) a5  <-- 1
       0     4590        M 0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 1
       0     4591        M 0x80000808 addi    a3, a3, -1             #; a3  = 19, (wrb) a3  <-- 18
                         M                                           #; (f:fpu) ft3  <-- 1.0
       0     4592        M 0x8000080c addi    a2, a2, 1              #; a2  = 81, (wrb) a2  <-- 82
                         M 0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
       0     4593        M 0x80000810 bnez    a3, pc - 32            #; a3  = 18, taken, goto 0x800007f0
                         M                                           #; (f:fpu) ft0  <-- 1.0
       0     4594        M 0x800007f0 mulhu   a5, a2, a4             #; a2  = 82, a4  = 0xcccccccd
       0     4597        M                                           #; (acc) a5  <-- 0x0037d793
       0     4598        M 0x800007f4 srli    a5, a5, 3              #; a5  = 65, (wrb) a5  <-- 8
       0     4599        M 0x800007f8 mul     a5, a5, a6             #; a5  = 8, a6  = 10
       0     4602        M                                           #; (acc) a5  <-- 0x40f607b3
       0     4603        M 0x800007fc sub     a5, a2, a5             #; a2  = 82, a5  = 80, (wrb) a5  <-- 2
       0     4605        M 0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 2
       0     4606        M 0x80000808 addi    a3, a3, -1             #; a3  = 18, (wrb) a3  <-- 17
                         M                                           #; (f:fpu) ft3  <-- 2.0
       0     4607        M 0x8000080c addi    a2, a2, 1              #; a2  = 82, (wrb) a2  <-- 83
                         M 0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
       0     4608        M 0x80000810 bnez    a3, pc - 32            #; a3  = 17, taken, goto 0x800007f0
                         M                                           #; (f:fpu) ft0  <-- 2.0
       0     4609        M 0x800007f0 mulhu   a5, a2, a4             #; a2  = 83, a4  = 0xcccccccd
       0     4612        M                                           #; (acc) a5  <-- 0x0037d793
       0     4613        M 0x800007f4 srli    a5, a5, 3              #; a5  = 66, (wrb) a5  <-- 8
       0     4614        M 0x800007f8 mul     a5, a5, a6             #; a5  = 8, a6  = 10
       0     4617        M                                           #; (acc) a5  <-- 0x40f607b3
       0     4618        M 0x800007fc sub     a5, a2, a5             #; a2  = 83, a5  = 80, (wrb) a5  <-- 3
       0     4620        M 0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 3
       0     4621        M 0x80000808 addi    a3, a3, -1             #; a3  = 17, (wrb) a3  <-- 16
                         M                                           #; (f:fpu) ft3  <-- 3.0
       0     4622        M 0x8000080c addi    a2, a2, 1              #; a2  = 83, (wrb) a2  <-- 84
                         M 0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
       0     4623        M 0x80000810 bnez    a3, pc - 32            #; a3  = 16, taken, goto 0x800007f0
                         M                                           #; (f:fpu) ft0  <-- 3.0
       0     4624        M 0x800007f0 mulhu   a5, a2, a4             #; a2  = 84, a4  = 0xcccccccd
       0     4627        M                                           #; (acc) a5  <-- 0x0037d793
       0     4628        M 0x800007f4 srli    a5, a5, 3              #; a5  = 67, (wrb) a5  <-- 8
       0     4629        M 0x800007f8 mul     a5, a5, a6             #; a5  = 8, a6  = 10
       0     4632        M                                           #; (acc) a5  <-- 0x40f607b3
       0     4633        M 0x800007fc sub     a5, a2, a5             #; a2  = 84, a5  = 80, (wrb) a5  <-- 4
       0     4635        M 0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 4
       0     4636        M 0x80000808 addi    a3, a3, -1             #; a3  = 16, (wrb) a3  <-- 15
                         M                                           #; (f:fpu) ft3  <-- 4.0
       0     4637        M 0x8000080c addi    a2, a2, 1              #; a2  = 84, (wrb) a2  <-- 85
                         M 0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
       0     4638        M 0x80000810 bnez    a3, pc - 32            #; a3  = 15, taken, goto 0x800007f0
                         M                                           #; (f:fpu) ft0  <-- 4.0
       0     4639        M 0x800007f0 mulhu   a5, a2, a4             #; a2  = 85, a4  = 0xcccccccd
       0     4642        M                                           #; (acc) a5  <-- 0x0037d793
       0     4643        M 0x800007f4 srli    a5, a5, 3              #; a5  = 68, (wrb) a5  <-- 8
       0     4644        M 0x800007f8 mul     a5, a5, a6             #; a5  = 8, a6  = 10
       0     4647        M                                           #; (acc) a5  <-- 0x40f607b3
       0     4648        M 0x800007fc sub     a5, a2, a5             #; a2  = 85, a5  = 80, (wrb) a5  <-- 5
       0     4650        M 0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 5
       0     4651        M 0x80000808 addi    a3, a3, -1             #; a3  = 15, (wrb) a3  <-- 14
                         M                                           #; (f:fpu) ft3  <-- 5.0
       0     4652        M 0x8000080c addi    a2, a2, 1              #; a2  = 85, (wrb) a2  <-- 86
                         M 0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
       0     4653        M 0x80000810 bnez    a3, pc - 32            #; a3  = 14, taken, goto 0x800007f0
                         M                                           #; (f:fpu) ft0  <-- 5.0
       0     4654        M 0x800007f0 mulhu   a5, a2, a4             #; a2  = 86, a4  = 0xcccccccd
       0     4657        M                                           #; (acc) a5  <-- 0x0037d793
       0     4658        M 0x800007f4 srli    a5, a5, 3              #; a5  = 68, (wrb) a5  <-- 8
       0     4659        M 0x800007f8 mul     a5, a5, a6             #; a5  = 8, a6  = 10
       0     4662        M                                           #; (acc) a5  <-- 0x40f607b3
       0     4663        M 0x800007fc sub     a5, a2, a5             #; a2  = 86, a5  = 80, (wrb) a5  <-- 6
       0     4665        M 0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 6
       0     4666        M 0x80000808 addi    a3, a3, -1             #; a3  = 14, (wrb) a3  <-- 13
                         M                                           #; (f:fpu) ft3  <-- 6.0
       0     4667        M 0x8000080c addi    a2, a2, 1              #; a2  = 86, (wrb) a2  <-- 87
                         M 0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
       0     4668        M 0x80000810 bnez    a3, pc - 32            #; a3  = 13, taken, goto 0x800007f0
                         M                                           #; (f:fpu) ft0  <-- 6.0
       0     4669        M 0x800007f0 mulhu   a5, a2, a4             #; a2  = 87, a4  = 0xcccccccd
       0     4672        M                                           #; (acc) a5  <-- 0x0037d793
       0     4673        M 0x800007f4 srli    a5, a5, 3              #; a5  = 69, (wrb) a5  <-- 8
       0     4674        M 0x800007f8 mul     a5, a5, a6             #; a5  = 8, a6  = 10
       0     4677        M                                           #; (acc) a5  <-- 0x40f607b3
       0     4678        M 0x800007fc sub     a5, a2, a5             #; a2  = 87, a5  = 80, (wrb) a5  <-- 7
       0     4680        M 0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 7
       0     4681        M 0x80000808 addi    a3, a3, -1             #; a3  = 13, (wrb) a3  <-- 12
                         M                                           #; (f:fpu) ft3  <-- 7.0
       0     4682        M 0x8000080c addi    a2, a2, 1              #; a2  = 87, (wrb) a2  <-- 88
                         M 0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
       0     4683        M 0x80000810 bnez    a3, pc - 32            #; a3  = 12, taken, goto 0x800007f0
                         M                                           #; (f:fpu) ft0  <-- 7.0
       0     4684        M 0x800007f0 mulhu   a5, a2, a4             #; a2  = 88, a4  = 0xcccccccd
       0     4687        M                                           #; (acc) a5  <-- 0x0037d793
       0     4688        M 0x800007f4 srli    a5, a5, 3              #; a5  = 70, (wrb) a5  <-- 8
       0     4689        M 0x800007f8 mul     a5, a5, a6             #; a5  = 8, a6  = 10
       0     4692        M                                           #; (acc) a5  <-- 0x40f607b3
       0     4693        M 0x800007fc sub     a5, a2, a5             #; a2  = 88, a5  = 80, (wrb) a5  <-- 8
       0     4695        M 0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 8
       0     4696        M 0x80000808 addi    a3, a3, -1             #; a3  = 12, (wrb) a3  <-- 11
                         M                                           #; (f:fpu) ft3  <-- 8.0
       0     4697        M 0x8000080c addi    a2, a2, 1              #; a2  = 88, (wrb) a2  <-- 89
                         M 0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
       0     4698        M 0x80000810 bnez    a3, pc - 32            #; a3  = 11, taken, goto 0x800007f0
                         M                                           #; (f:fpu) ft0  <-- 8.0
       0     4699        M 0x800007f0 mulhu   a5, a2, a4             #; a2  = 89, a4  = 0xcccccccd
       0     4702        M                                           #; (acc) a5  <-- 0x0037d793
       0     4703        M 0x800007f4 srli    a5, a5, 3              #; a5  = 71, (wrb) a5  <-- 8
       0     4704        M 0x800007f8 mul     a5, a5, a6             #; a5  = 8, a6  = 10
       0     4707        M                                           #; (acc) a5  <-- 0x40f607b3
       0     4708        M 0x800007fc sub     a5, a2, a5             #; a2  = 89, a5  = 80, (wrb) a5  <-- 9
       0     4710        M 0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 9
       0     4711        M 0x80000808 addi    a3, a3, -1             #; a3  = 11, (wrb) a3  <-- 10
                         M                                           #; (f:fpu) ft3  <-- 9.0
       0     4712        M 0x8000080c addi    a2, a2, 1              #; a2  = 89, (wrb) a2  <-- 90
                         M 0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
       0     4713        M 0x80000810 bnez    a3, pc - 32            #; a3  = 10, taken, goto 0x800007f0
                         M                                           #; (f:fpu) ft0  <-- 9.0
       0     4714        M 0x800007f0 mulhu   a5, a2, a4             #; a2  = 90, a4  = 0xcccccccd
       0     4717        M                                           #; (acc) a5  <-- 0x0037d793
       0     4718        M 0x800007f4 srli    a5, a5, 3              #; a5  = 72, (wrb) a5  <-- 9
       0     4719        M 0x800007f8 mul     a5, a5, a6             #; a5  = 9, a6  = 10
       0     4722        M                                           #; (acc) a5  <-- 0x40f607b3
       0     4723        M 0x800007fc sub     a5, a2, a5             #; a2  = 90, a5  = 90, (wrb) a5  <-- 0
       0     4725        M 0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 0
       0     4726        M 0x80000808 addi    a3, a3, -1             #; a3  = 10, (wrb) a3  <-- 9
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     4727        M 0x8000080c addi    a2, a2, 1              #; a2  = 90, (wrb) a2  <-- 91
                         M 0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4728        M 0x80000810 bnez    a3, pc - 32            #; a3  = 9, taken, goto 0x800007f0
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     4729        M 0x800007f0 mulhu   a5, a2, a4             #; a2  = 91, a4  = 0xcccccccd
       0     4732        M                                           #; (acc) a5  <-- 0x0037d793
       0     4733        M 0x800007f4 srli    a5, a5, 3              #; a5  = 72, (wrb) a5  <-- 9
       0     4734        M 0x800007f8 mul     a5, a5, a6             #; a5  = 9, a6  = 10
       0     4737        M                                           #; (acc) a5  <-- 0x40f607b3
       0     4738        M 0x800007fc sub     a5, a2, a5             #; a2  = 91, a5  = 90, (wrb) a5  <-- 1
       0     4740        M 0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 1
       0     4741        M 0x80000808 addi    a3, a3, -1             #; a3  = 9, (wrb) a3  <-- 8
                         M                                           #; (f:fpu) ft3  <-- 1.0
       0     4742        M 0x8000080c addi    a2, a2, 1              #; a2  = 91, (wrb) a2  <-- 92
                         M 0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
       0     4743        M 0x80000810 bnez    a3, pc - 32            #; a3  = 8, taken, goto 0x800007f0
                         M                                           #; (f:fpu) ft0  <-- 1.0
       0     4744        M 0x800007f0 mulhu   a5, a2, a4             #; a2  = 92, a4  = 0xcccccccd
       0     4747        M                                           #; (acc) a5  <-- 0x0037d793
       0     4748        M 0x800007f4 srli    a5, a5, 3              #; a5  = 73, (wrb) a5  <-- 9
       0     4749        M 0x800007f8 mul     a5, a5, a6             #; a5  = 9, a6  = 10
       0     4752        M                                           #; (acc) a5  <-- 0x40f607b3
       0     4753        M 0x800007fc sub     a5, a2, a5             #; a2  = 92, a5  = 90, (wrb) a5  <-- 2
       0     4755        M 0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 2
       0     4756        M 0x80000808 addi    a3, a3, -1             #; a3  = 8, (wrb) a3  <-- 7
                         M                                           #; (f:fpu) ft3  <-- 2.0
       0     4757        M 0x8000080c addi    a2, a2, 1              #; a2  = 92, (wrb) a2  <-- 93
                         M 0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
       0     4758        M 0x80000810 bnez    a3, pc - 32            #; a3  = 7, taken, goto 0x800007f0
                         M                                           #; (f:fpu) ft0  <-- 2.0
       0     4759        M 0x800007f0 mulhu   a5, a2, a4             #; a2  = 93, a4  = 0xcccccccd
       0     4762        M                                           #; (acc) a5  <-- 0x0037d793
       0     4763        M 0x800007f4 srli    a5, a5, 3              #; a5  = 74, (wrb) a5  <-- 9
       0     4764        M 0x800007f8 mul     a5, a5, a6             #; a5  = 9, a6  = 10
       0     4767        M                                           #; (acc) a5  <-- 0x40f607b3
       0     4768        M 0x800007fc sub     a5, a2, a5             #; a2  = 93, a5  = 90, (wrb) a5  <-- 3
       0     4770        M 0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 3
       0     4771        M 0x80000808 addi    a3, a3, -1             #; a3  = 7, (wrb) a3  <-- 6
                         M                                           #; (f:fpu) ft3  <-- 3.0
       0     4772        M 0x8000080c addi    a2, a2, 1              #; a2  = 93, (wrb) a2  <-- 94
                         M 0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
       0     4773        M 0x80000810 bnez    a3, pc - 32            #; a3  = 6, taken, goto 0x800007f0
                         M                                           #; (f:fpu) ft0  <-- 3.0
       0     4774        M 0x800007f0 mulhu   a5, a2, a4             #; a2  = 94, a4  = 0xcccccccd
       0     4777        M                                           #; (acc) a5  <-- 0x0037d793
       0     4778        M 0x800007f4 srli    a5, a5, 3              #; a5  = 75, (wrb) a5  <-- 9
       0     4779        M 0x800007f8 mul     a5, a5, a6             #; a5  = 9, a6  = 10
       0     4782        M                                           #; (acc) a5  <-- 0x40f607b3
       0     4783        M 0x800007fc sub     a5, a2, a5             #; a2  = 94, a5  = 90, (wrb) a5  <-- 4
       0     4785        M 0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 4
       0     4786        M 0x80000808 addi    a3, a3, -1             #; a3  = 6, (wrb) a3  <-- 5
                         M                                           #; (f:fpu) ft3  <-- 4.0
       0     4787        M 0x8000080c addi    a2, a2, 1              #; a2  = 94, (wrb) a2  <-- 95
                         M 0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
       0     4788        M 0x80000810 bnez    a3, pc - 32            #; a3  = 5, taken, goto 0x800007f0
                         M                                           #; (f:fpu) ft0  <-- 4.0
       0     4789        M 0x800007f0 mulhu   a5, a2, a4             #; a2  = 95, a4  = 0xcccccccd
       0     4792        M                                           #; (acc) a5  <-- 0x0037d793
       0     4793        M 0x800007f4 srli    a5, a5, 3              #; a5  = 76, (wrb) a5  <-- 9
       0     4794        M 0x800007f8 mul     a5, a5, a6             #; a5  = 9, a6  = 10
       0     4797        M                                           #; (acc) a5  <-- 0x40f607b3
       0     4798        M 0x800007fc sub     a5, a2, a5             #; a2  = 95, a5  = 90, (wrb) a5  <-- 5
       0     4800        M 0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 5
       0     4801        M 0x80000808 addi    a3, a3, -1             #; a3  = 5, (wrb) a3  <-- 4
                         M                                           #; (f:fpu) ft3  <-- 5.0
       0     4802        M 0x8000080c addi    a2, a2, 1              #; a2  = 95, (wrb) a2  <-- 96
                         M 0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
       0     4803        M 0x80000810 bnez    a3, pc - 32            #; a3  = 4, taken, goto 0x800007f0
                         M                                           #; (f:fpu) ft0  <-- 5.0
       0     4804        M 0x800007f0 mulhu   a5, a2, a4             #; a2  = 96, a4  = 0xcccccccd
       0     4807        M                                           #; (acc) a5  <-- 0x0037d793
       0     4808        M 0x800007f4 srli    a5, a5, 3              #; a5  = 76, (wrb) a5  <-- 9
       0     4809        M 0x800007f8 mul     a5, a5, a6             #; a5  = 9, a6  = 10
       0     4812        M                                           #; (acc) a5  <-- 0x40f607b3
       0     4813        M 0x800007fc sub     a5, a2, a5             #; a2  = 96, a5  = 90, (wrb) a5  <-- 6
       0     4815        M 0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 6
       0     4816        M 0x80000808 addi    a3, a3, -1             #; a3  = 4, (wrb) a3  <-- 3
                         M                                           #; (f:fpu) ft3  <-- 6.0
       0     4817        M 0x8000080c addi    a2, a2, 1              #; a2  = 96, (wrb) a2  <-- 97
                         M 0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
       0     4818        M 0x80000810 bnez    a3, pc - 32            #; a3  = 3, taken, goto 0x800007f0
                         M                                           #; (f:fpu) ft0  <-- 6.0
       0     4819        M 0x800007f0 mulhu   a5, a2, a4             #; a2  = 97, a4  = 0xcccccccd
       0     4822        M                                           #; (acc) a5  <-- 0x0037d793
       0     4823        M 0x800007f4 srli    a5, a5, 3              #; a5  = 77, (wrb) a5  <-- 9
       0     4824        M 0x800007f8 mul     a5, a5, a6             #; a5  = 9, a6  = 10
       0     4827        M                                           #; (acc) a5  <-- 0x40f607b3
       0     4828        M 0x800007fc sub     a5, a2, a5             #; a2  = 97, a5  = 90, (wrb) a5  <-- 7
       0     4830        M 0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 7
       0     4831        M 0x80000808 addi    a3, a3, -1             #; a3  = 3, (wrb) a3  <-- 2
                         M                                           #; (f:fpu) ft3  <-- 7.0
       0     4832        M 0x8000080c addi    a2, a2, 1              #; a2  = 97, (wrb) a2  <-- 98
                         M 0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
       0     4833        M 0x80000810 bnez    a3, pc - 32            #; a3  = 2, taken, goto 0x800007f0
                         M                                           #; (f:fpu) ft0  <-- 7.0
       0     4834        M 0x800007f0 mulhu   a5, a2, a4             #; a2  = 98, a4  = 0xcccccccd
       0     4837        M                                           #; (acc) a5  <-- 0x0037d793
       0     4838        M 0x800007f4 srli    a5, a5, 3              #; a5  = 78, (wrb) a5  <-- 9
       0     4839        M 0x800007f8 mul     a5, a5, a6             #; a5  = 9, a6  = 10
       0     4842        M                                           #; (acc) a5  <-- 0x40f607b3
       0     4843        M 0x800007fc sub     a5, a2, a5             #; a2  = 98, a5  = 90, (wrb) a5  <-- 8
       0     4845        M 0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 8
       0     4846        M 0x80000808 addi    a3, a3, -1             #; a3  = 2, (wrb) a3  <-- 1
                         M                                           #; (f:fpu) ft3  <-- 8.0
       0     4847        M 0x8000080c addi    a2, a2, 1              #; a2  = 98, (wrb) a2  <-- 99
                         M 0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
       0     4848        M 0x80000810 bnez    a3, pc - 32            #; a3  = 1, taken, goto 0x800007f0
                         M                                           #; (f:fpu) ft0  <-- 8.0
       0     4849        M 0x800007f0 mulhu   a5, a2, a4             #; a2  = 99, a4  = 0xcccccccd
       0     4852        M                                           #; (acc) a5  <-- 0x0037d793
       0     4853        M 0x800007f4 srli    a5, a5, 3              #; a5  = 79, (wrb) a5  <-- 9
       0     4854        M 0x800007f8 mul     a5, a5, a6             #; a5  = 9, a6  = 10
       0     4857        M                                           #; (acc) a5  <-- 0x40f607b3
       0     4858        M 0x800007fc sub     a5, a2, a5             #; a2  = 99, a5  = 90, (wrb) a5  <-- 9
       0     4860        M 0x80000800 fcvt.d.wu ft3, a5              #; ac1  = 9
       0     4861        M 0x80000808 addi    a3, a3, -1             #; a3  = 1, (wrb) a3  <-- 0
                         M                                           #; (f:fpu) ft3  <-- 9.0
       0     4862        M 0x8000080c addi    a2, a2, 1              #; a2  = 99, (wrb) a2  <-- 100
                         M 0x80000804 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
       0     4863        M 0x80000810 bnez    a3, pc - 32            #; a3  = 0, not taken
                         M                                           #; (f:fpu) ft0  <-- 9.0
       0     4865        M 0x80000818 j       pc + 0x44              #; goto 0x8000085c
                         M 0x80000814 csrrci  a2, ssr, 1             #; 
       0     4876        M 0x8000085c li      a3, 0                  #; (wrb) a3  <-- 0
       0     4888        M 0x80000860 csrr    a2, mcycle             #; mcycle = 4887, (wrb) a2  <-- 4887
       0     4890        M 0x80000868 li      a4, 800                #; (wrb) a4  <-- 800
                         M 0x80000864 fcvt.d.w fs0, zero             #; ac1  = 0
       0     4891        M 0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 0, (wrb) a5  <-- 0x00100000
                         M                                           #; (f:fpu) fs0  <-- 0.0
       0     4901        M 0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 0, (wrb) a5  <-- 0x00100320
       0     4902        M 0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100000]
       0     4903        M 0x8000087c addi    a3, a3, 8              #; a3  = 0, (wrb) a3  <-- 8
                         M                                           #; (f:lsu) ft3  <-- 0.0
       0     4904        M 0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100320]
       0     4905        M                                           #; (f:lsu) ft4  <-- 0.0
       0     4913        M 0x80000884 bne     a3, a4, pc - 24        #; a3  = 8, a4  = 800, taken, goto 0x8000086c
       0     4914        M 0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 8, (wrb) a5  <-- 0x00100008
                         M 0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 0.0, ft3  = 0.0, fs0  = 0.0
       0     4916        M 0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 8, (wrb) a5  <-- 0x00100328
       0     4917        M 0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100008], (f:fpu) fs0  <-- 0.0
       0     4918        M 0x8000087c addi    a3, a3, 8              #; a3  = 8, (wrb) a3  <-- 16
                         M                                           #; (f:lsu) ft3  <-- 1.0
       0     4919        M 0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100328]
       0     4920        M 0x80000884 bne     a3, a4, pc - 24        #; a3  = 16, a4  = 800, taken, goto 0x8000086c
                         M                                           #; (f:lsu) ft4  <-- 1.0
       0     4921        M 0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 16, (wrb) a5  <-- 0x00100010
                         M 0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 1.0, ft3  = 1.0, fs0  = 0.0
       0     4923        M 0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 16, (wrb) a5  <-- 0x00100330
       0     4924        M 0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100010], (f:fpu) fs0  <-- 1.0
       0     4925        M 0x8000087c addi    a3, a3, 8              #; a3  = 16, (wrb) a3  <-- 24
                         M                                           #; (f:lsu) ft3  <-- 2.0
       0     4926        M 0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100330]
       0     4927        M 0x80000884 bne     a3, a4, pc - 24        #; a3  = 24, a4  = 800, taken, goto 0x8000086c
                         M                                           #; (f:lsu) ft4  <-- 2.0
       0     4928        M 0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 24, (wrb) a5  <-- 0x00100018
                         M 0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 2.0, ft3  = 2.0, fs0  = 1.0
       0     4930        M 0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 24, (wrb) a5  <-- 0x00100338
       0     4931        M 0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100018], (f:fpu) fs0  <-- 5.0
       0     4932        M 0x8000087c addi    a3, a3, 8              #; a3  = 24, (wrb) a3  <-- 32
                         M                                           #; (f:lsu) ft3  <-- 3.0
       0     4933        M 0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100338]
       0     4934        M 0x80000884 bne     a3, a4, pc - 24        #; a3  = 32, a4  = 800, taken, goto 0x8000086c
                         M                                           #; (f:lsu) ft4  <-- 3.0
       0     4935        M 0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 32, (wrb) a5  <-- 0x00100020
                         M 0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 3.0, ft3  = 3.0, fs0  = 5.0
       0     4937        M 0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 32, (wrb) a5  <-- 0x00100340
       0     4938        M 0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100020], (f:fpu) fs0  <-- 14.0
       0     4939        M 0x8000087c addi    a3, a3, 8              #; a3  = 32, (wrb) a3  <-- 40
                         M                                           #; (f:lsu) ft3  <-- 4.0
       0     4940        M 0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100340]
       0     4941        M 0x80000884 bne     a3, a4, pc - 24        #; a3  = 40, a4  = 800, taken, goto 0x8000086c
                         M                                           #; (f:lsu) ft4  <-- 4.0
       0     4942        M 0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 40, (wrb) a5  <-- 0x00100028
                         M 0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 4.0, ft3  = 4.0, fs0  = 14.0
       0     4944        M 0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 40, (wrb) a5  <-- 0x00100348
       0     4945        M 0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100028], (f:fpu) fs0  <-- 30.0
       0     4946        M 0x8000087c addi    a3, a3, 8              #; a3  = 40, (wrb) a3  <-- 48
                         M                                           #; (f:lsu) ft3  <-- 5.0
       0     4947        M 0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100348]
       0     4948        M 0x80000884 bne     a3, a4, pc - 24        #; a3  = 48, a4  = 800, taken, goto 0x8000086c
                         M                                           #; (f:lsu) ft4  <-- 5.0
       0     4949        M 0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 48, (wrb) a5  <-- 0x00100030
                         M 0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 5.0, ft3  = 5.0, fs0  = 30.0
       0     4951        M 0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 48, (wrb) a5  <-- 0x00100350
       0     4952        M 0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100030], (f:fpu) fs0  <-- 55.0
       0     4953        M 0x8000087c addi    a3, a3, 8              #; a3  = 48, (wrb) a3  <-- 56
                         M                                           #; (f:lsu) ft3  <-- 6.0
       0     4954        M 0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100350]
       0     4955        M 0x80000884 bne     a3, a4, pc - 24        #; a3  = 56, a4  = 800, taken, goto 0x8000086c
                         M                                           #; (f:lsu) ft4  <-- 6.0
       0     4956        M 0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 56, (wrb) a5  <-- 0x00100038
                         M 0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 6.0, ft3  = 6.0, fs0  = 55.0
       0     4958        M 0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 56, (wrb) a5  <-- 0x00100358
       0     4959        M 0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100038], (f:fpu) fs0  <-- 91.0
       0     4960        M 0x8000087c addi    a3, a3, 8              #; a3  = 56, (wrb) a3  <-- 64
                         M                                           #; (f:lsu) ft3  <-- 7.0
       0     4961        M 0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100358]
       0     4962        M 0x80000884 bne     a3, a4, pc - 24        #; a3  = 64, a4  = 800, taken, goto 0x8000086c
                         M                                           #; (f:lsu) ft4  <-- 7.0
       0     4963        M 0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 64, (wrb) a5  <-- 0x00100040
                         M 0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 7.0, ft3  = 7.0, fs0  = 91.0
       0     4965        M 0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 64, (wrb) a5  <-- 0x00100360
       0     4966        M 0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100040], (f:fpu) fs0  <-- 140.0
       0     4967        M 0x8000087c addi    a3, a3, 8              #; a3  = 64, (wrb) a3  <-- 72
                         M                                           #; (f:lsu) ft3  <-- 8.0
       0     4968        M 0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100360]
       0     4969        M 0x80000884 bne     a3, a4, pc - 24        #; a3  = 72, a4  = 800, taken, goto 0x8000086c
                         M                                           #; (f:lsu) ft4  <-- 8.0
       0     4970        M 0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 72, (wrb) a5  <-- 0x00100048
                         M 0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 8.0, ft3  = 8.0, fs0  = 140.0
       0     4972        M 0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 72, (wrb) a5  <-- 0x00100368
       0     4973        M 0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100048], (f:fpu) fs0  <-- 204.0
       0     4974        M 0x8000087c addi    a3, a3, 8              #; a3  = 72, (wrb) a3  <-- 80
                         M                                           #; (f:lsu) ft3  <-- 9.0
       0     4975        M 0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100368]
       0     4976        M 0x80000884 bne     a3, a4, pc - 24        #; a3  = 80, a4  = 800, taken, goto 0x8000086c
                         M                                           #; (f:lsu) ft4  <-- 9.0
       0     4977        M 0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 80, (wrb) a5  <-- 0x00100050
                         M 0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 9.0, ft3  = 9.0, fs0  = 204.0
       0     4979        M 0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 80, (wrb) a5  <-- 0x00100370
       0     4980        M 0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100050], (f:fpu) fs0  <-- 285.0
       0     4981        M 0x8000087c addi    a3, a3, 8              #; a3  = 80, (wrb) a3  <-- 88
                         M                                           #; (f:lsu) ft3  <-- 0.0
       0     4982        M 0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100370]
       0     4983        M 0x80000884 bne     a3, a4, pc - 24        #; a3  = 88, a4  = 800, taken, goto 0x8000086c
                         M                                           #; (f:lsu) ft4  <-- 0.0
       0     4984        M 0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 88, (wrb) a5  <-- 0x00100058
                         M 0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 0.0, ft3  = 0.0, fs0  = 285.0
       0     4986        M 0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 88, (wrb) a5  <-- 0x00100378
       0     4987        M 0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100058], (f:fpu) fs0  <-- 285.0
       0     4988        M 0x8000087c addi    a3, a3, 8              #; a3  = 88, (wrb) a3  <-- 96
                         M                                           #; (f:lsu) ft3  <-- 1.0
       0     4989        M 0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100378]
       0     4990        M 0x80000884 bne     a3, a4, pc - 24        #; a3  = 96, a4  = 800, taken, goto 0x8000086c
                         M                                           #; (f:lsu) ft4  <-- 1.0
       0     4991        M 0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 96, (wrb) a5  <-- 0x00100060
                         M 0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 1.0, ft3  = 1.0, fs0  = 285.0
       0     4993        M 0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 96, (wrb) a5  <-- 0x00100380
       0     4994        M 0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100060], (f:fpu) fs0  <-- 286.0
       0     4995        M 0x8000087c addi    a3, a3, 8              #; a3  = 96, (wrb) a3  <-- 104
                         M                                           #; (f:lsu) ft3  <-- 2.0
       0     4996        M 0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100380]
       0     4997        M 0x80000884 bne     a3, a4, pc - 24        #; a3  = 104, a4  = 800, taken, goto 0x8000086c
                         M                                           #; (f:lsu) ft4  <-- 2.0
       0     4998        M 0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 104, (wrb) a5  <-- 0x00100068
                         M 0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 2.0, ft3  = 2.0, fs0  = 286.0
       0     5000        M 0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 104, (wrb) a5  <-- 0x00100388
       0     5001        M 0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100068], (f:fpu) fs0  <-- 290.0
       0     5002        M 0x8000087c addi    a3, a3, 8              #; a3  = 104, (wrb) a3  <-- 112
                         M                                           #; (f:lsu) ft3  <-- 3.0
       0     5003        M 0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100388]
       0     5004        M 0x80000884 bne     a3, a4, pc - 24        #; a3  = 112, a4  = 800, taken, goto 0x8000086c
                         M                                           #; (f:lsu) ft4  <-- 3.0
       0     5005        M 0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 112, (wrb) a5  <-- 0x00100070
                         M 0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 3.0, ft3  = 3.0, fs0  = 290.0
       0     5007        M 0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 112, (wrb) a5  <-- 0x00100390
       0     5008        M 0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100070], (f:fpu) fs0  <-- 299.0
       0     5009        M 0x8000087c addi    a3, a3, 8              #; a3  = 112, (wrb) a3  <-- 120
                         M                                           #; (f:lsu) ft3  <-- 4.0
       0     5010        M 0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100390]
       0     5011        M 0x80000884 bne     a3, a4, pc - 24        #; a3  = 120, a4  = 800, taken, goto 0x8000086c
                         M                                           #; (f:lsu) ft4  <-- 4.0
       0     5012        M 0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 120, (wrb) a5  <-- 0x00100078
                         M 0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 4.0, ft3  = 4.0, fs0  = 299.0
       0     5014        M 0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 120, (wrb) a5  <-- 0x00100398
       0     5015        M 0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100078], (f:fpu) fs0  <-- 315.0
       0     5016        M 0x8000087c addi    a3, a3, 8              #; a3  = 120, (wrb) a3  <-- 128
                         M                                           #; (f:lsu) ft3  <-- 5.0
       0     5017        M 0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100398]
       0     5018        M 0x80000884 bne     a3, a4, pc - 24        #; a3  = 128, a4  = 800, taken, goto 0x8000086c
                         M                                           #; (f:lsu) ft4  <-- 5.0
       0     5019        M 0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 128, (wrb) a5  <-- 0x00100080
                         M 0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 5.0, ft3  = 5.0, fs0  = 315.0
       0     5021        M 0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 128, (wrb) a5  <-- 0x001003a0
       0     5022        M 0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100080], (f:fpu) fs0  <-- 340.0
       0     5023        M 0x8000087c addi    a3, a3, 8              #; a3  = 128, (wrb) a3  <-- 136
                         M                                           #; (f:lsu) ft3  <-- 6.0
       0     5024        M 0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x001003a0]
       0     5025        M 0x80000884 bne     a3, a4, pc - 24        #; a3  = 136, a4  = 800, taken, goto 0x8000086c
                         M                                           #; (f:lsu) ft4  <-- 6.0
       0     5026        M 0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 136, (wrb) a5  <-- 0x00100088
                         M 0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 6.0, ft3  = 6.0, fs0  = 340.0
       0     5028        M 0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 136, (wrb) a5  <-- 0x001003a8
       0     5029        M 0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100088], (f:fpu) fs0  <-- 376.0
       0     5030        M 0x8000087c addi    a3, a3, 8              #; a3  = 136, (wrb) a3  <-- 144
                         M                                           #; (f:lsu) ft3  <-- 7.0
       0     5031        M 0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x001003a8]
       0     5032        M 0x80000884 bne     a3, a4, pc - 24        #; a3  = 144, a4  = 800, taken, goto 0x8000086c
                         M                                           #; (f:lsu) ft4  <-- 7.0
       0     5033        M 0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 144, (wrb) a5  <-- 0x00100090
                         M 0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 7.0, ft3  = 7.0, fs0  = 376.0
       0     5035        M 0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 144, (wrb) a5  <-- 0x001003b0
       0     5036        M 0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100090], (f:fpu) fs0  <-- 425.0
       0     5037        M 0x8000087c addi    a3, a3, 8              #; a3  = 144, (wrb) a3  <-- 152
                         M                                           #; (f:lsu) ft3  <-- 8.0
       0     5038        M 0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x001003b0]
       0     5039        M 0x80000884 bne     a3, a4, pc - 24        #; a3  = 152, a4  = 800, taken, goto 0x8000086c
                         M                                           #; (f:lsu) ft4  <-- 8.0
       0     5040        M 0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 152, (wrb) a5  <-- 0x00100098
                         M 0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 8.0, ft3  = 8.0, fs0  = 425.0
       0     5042        M 0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 152, (wrb) a5  <-- 0x001003b8
       0     5043        M 0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100098], (f:fpu) fs0  <-- 489.0
       0     5044        M 0x8000087c addi    a3, a3, 8              #; a3  = 152, (wrb) a3  <-- 160
                         M                                           #; (f:lsu) ft3  <-- 9.0
       0     5045        M 0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x001003b8]
       0     5046        M 0x80000884 bne     a3, a4, pc - 24        #; a3  = 160, a4  = 800, taken, goto 0x8000086c
                         M                                           #; (f:lsu) ft4  <-- 9.0
       0     5047        M 0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 160, (wrb) a5  <-- 0x001000a0
                         M 0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 9.0, ft3  = 9.0, fs0  = 489.0
       0     5049        M 0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 160, (wrb) a5  <-- 0x001003c0
       0     5050        M 0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x001000a0], (f:fpu) fs0  <-- 570.0
       0     5051        M 0x8000087c addi    a3, a3, 8              #; a3  = 160, (wrb) a3  <-- 168
                         M                                           #; (f:lsu) ft3  <-- 0.0
       0     5052        M 0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x001003c0]
       0     5053        M 0x80000884 bne     a3, a4, pc - 24        #; a3  = 168, a4  = 800, taken, goto 0x8000086c
                         M                                           #; (f:lsu) ft4  <-- 0.0
       0     5054        M 0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 168, (wrb) a5  <-- 0x001000a8
                         M 0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 0.0, ft3  = 0.0, fs0  = 570.0
       0     5056        M 0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 168, (wrb) a5  <-- 0x001003c8
       0     5057        M 0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x001000a8], (f:fpu) fs0  <-- 570.0
       0     5058        M 0x8000087c addi    a3, a3, 8              #; a3  = 168, (wrb) a3  <-- 176
                         M                                           #; (f:lsu) ft3  <-- 1.0
       0     5059        M 0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x001003c8]
       0     5060        M 0x80000884 bne     a3, a4, pc - 24        #; a3  = 176, a4  = 800, taken, goto 0x8000086c
                         M                                           #; (f:lsu) ft4  <-- 1.0
       0     5061        M 0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 176, (wrb) a5  <-- 0x001000b0
                         M 0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 1.0, ft3  = 1.0, fs0  = 570.0
       0     5063        M 0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 176, (wrb) a5  <-- 0x001003d0
       0     5064        M 0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x001000b0], (f:fpu) fs0  <-- 571.0
       0     5065        M 0x8000087c addi    a3, a3, 8              #; a3  = 176, (wrb) a3  <-- 184
                         M                                           #; (f:lsu) ft3  <-- 2.0
       0     5066        M 0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x001003d0]
       0     5067        M 0x80000884 bne     a3, a4, pc - 24        #; a3  = 184, a4  = 800, taken, goto 0x8000086c
                         M                                           #; (f:lsu) ft4  <-- 2.0
       0     5068        M 0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 184, (wrb) a5  <-- 0x001000b8
                         M 0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 2.0, ft3  = 2.0, fs0  = 571.0
       0     5070        M 0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 184, (wrb) a5  <-- 0x001003d8
       0     5071        M 0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x001000b8], (f:fpu) fs0  <-- 575.0
       0     5072        M 0x8000087c addi    a3, a3, 8              #; a3  = 184, (wrb) a3  <-- 192
                         M                                           #; (f:lsu) ft3  <-- 3.0
       0     5073        M 0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x001003d8]
       0     5074        M 0x80000884 bne     a3, a4, pc - 24        #; a3  = 192, a4  = 800, taken, goto 0x8000086c
                         M                                           #; (f:lsu) ft4  <-- 3.0
       0     5075        M 0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 192, (wrb) a5  <-- 0x001000c0
                         M 0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 3.0, ft3  = 3.0, fs0  = 575.0
       0     5077        M 0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 192, (wrb) a5  <-- 0x001003e0
       0     5078        M 0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x001000c0], (f:fpu) fs0  <-- 584.0
       0     5079        M 0x8000087c addi    a3, a3, 8              #; a3  = 192, (wrb) a3  <-- 200
                         M                                           #; (f:lsu) ft3  <-- 4.0
       0     5080        M 0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x001003e0]
       0     5081        M 0x80000884 bne     a3, a4, pc - 24        #; a3  = 200, a4  = 800, taken, goto 0x8000086c
                         M                                           #; (f:lsu) ft4  <-- 4.0
       0     5082        M 0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 200, (wrb) a5  <-- 0x001000c8
                         M 0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 4.0, ft3  = 4.0, fs0  = 584.0
       0     5084        M 0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 200, (wrb) a5  <-- 0x001003e8
       0     5085        M 0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x001000c8], (f:fpu) fs0  <-- 600.0
       0     5086        M 0x8000087c addi    a3, a3, 8              #; a3  = 200, (wrb) a3  <-- 208
                         M                                           #; (f:lsu) ft3  <-- 5.0
       0     5087        M 0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x001003e8]
       0     5088        M 0x80000884 bne     a3, a4, pc - 24        #; a3  = 208, a4  = 800, taken, goto 0x8000086c
                         M                                           #; (f:lsu) ft4  <-- 5.0
       0     5089        M 0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 208, (wrb) a5  <-- 0x001000d0
                         M 0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 5.0, ft3  = 5.0, fs0  = 600.0
       0     5091        M 0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 208, (wrb) a5  <-- 0x001003f0
       0     5092        M 0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x001000d0], (f:fpu) fs0  <-- 625.0
       0     5093        M 0x8000087c addi    a3, a3, 8              #; a3  = 208, (wrb) a3  <-- 216
                         M                                           #; (f:lsu) ft3  <-- 6.0
       0     5094        M 0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x001003f0]
       0     5095        M 0x80000884 bne     a3, a4, pc - 24        #; a3  = 216, a4  = 800, taken, goto 0x8000086c
                         M                                           #; (f:lsu) ft4  <-- 6.0
       0     5096        M 0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 216, (wrb) a5  <-- 0x001000d8
                         M 0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 6.0, ft3  = 6.0, fs0  = 625.0
       0     5098        M 0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 216, (wrb) a5  <-- 0x001003f8
       0     5099        M 0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x001000d8], (f:fpu) fs0  <-- 661.0
       0     5100        M 0x8000087c addi    a3, a3, 8              #; a3  = 216, (wrb) a3  <-- 224
                         M                                           #; (f:lsu) ft3  <-- 7.0
       0     5101        M 0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x001003f8]
       0     5102        M 0x80000884 bne     a3, a4, pc - 24        #; a3  = 224, a4  = 800, taken, goto 0x8000086c
                         M                                           #; (f:lsu) ft4  <-- 7.0
       0     5103        M 0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 224, (wrb) a5  <-- 0x001000e0
                         M 0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 7.0, ft3  = 7.0, fs0  = 661.0
       0     5105        M 0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 224, (wrb) a5  <-- 0x00100400
       0     5106        M 0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x001000e0], (f:fpu) fs0  <-- 710.0
       0     5107        M 0x8000087c addi    a3, a3, 8              #; a3  = 224, (wrb) a3  <-- 232
                         M                                           #; (f:lsu) ft3  <-- 8.0
       0     5108        M 0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100400]
       0     5109        M 0x80000884 bne     a3, a4, pc - 24        #; a3  = 232, a4  = 800, taken, goto 0x8000086c
                         M                                           #; (f:lsu) ft4  <-- 8.0
       0     5110        M 0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 232, (wrb) a5  <-- 0x001000e8
                         M 0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 8.0, ft3  = 8.0, fs0  = 710.0
       0     5112        M 0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 232, (wrb) a5  <-- 0x00100408
       0     5113        M 0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x001000e8], (f:fpu) fs0  <-- 774.0
       0     5114        M 0x8000087c addi    a3, a3, 8              #; a3  = 232, (wrb) a3  <-- 240
                         M                                           #; (f:lsu) ft3  <-- 9.0
       0     5115        M 0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100408]
       0     5116        M 0x80000884 bne     a3, a4, pc - 24        #; a3  = 240, a4  = 800, taken, goto 0x8000086c
                         M                                           #; (f:lsu) ft4  <-- 9.0
       0     5117        M 0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 240, (wrb) a5  <-- 0x001000f0
                         M 0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 9.0, ft3  = 9.0, fs0  = 774.0
       0     5119        M 0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 240, (wrb) a5  <-- 0x00100410
       0     5120        M 0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x001000f0], (f:fpu) fs0  <-- 855.0
       0     5121        M 0x8000087c addi    a3, a3, 8              #; a3  = 240, (wrb) a3  <-- 248
                         M                                           #; (f:lsu) ft3  <-- 0.0
       0     5122        M 0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100410]
       0     5123        M 0x80000884 bne     a3, a4, pc - 24        #; a3  = 248, a4  = 800, taken, goto 0x8000086c
                         M                                           #; (f:lsu) ft4  <-- 0.0
       0     5124        M 0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 248, (wrb) a5  <-- 0x001000f8
                         M 0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 0.0, ft3  = 0.0, fs0  = 855.0
       0     5126        M 0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 248, (wrb) a5  <-- 0x00100418
       0     5127        M 0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x001000f8], (f:fpu) fs0  <-- 855.0
       0     5128        M 0x8000087c addi    a3, a3, 8              #; a3  = 248, (wrb) a3  <-- 256
                         M                                           #; (f:lsu) ft3  <-- 1.0
       0     5129        M 0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100418]
       0     5130        M 0x80000884 bne     a3, a4, pc - 24        #; a3  = 256, a4  = 800, taken, goto 0x8000086c
                         M                                           #; (f:lsu) ft4  <-- 1.0
       0     5131        M 0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 256, (wrb) a5  <-- 0x00100100
                         M 0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 1.0, ft3  = 1.0, fs0  = 855.0
       0     5133        M 0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 256, (wrb) a5  <-- 0x00100420
       0     5134        M 0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100100], (f:fpu) fs0  <-- 856.0
       0     5135        M 0x8000087c addi    a3, a3, 8              #; a3  = 256, (wrb) a3  <-- 264
                         M                                           #; (f:lsu) ft3  <-- 2.0
       0     5136        M 0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100420]
       0     5137        M 0x80000884 bne     a3, a4, pc - 24        #; a3  = 264, a4  = 800, taken, goto 0x8000086c
                         M                                           #; (f:lsu) ft4  <-- 2.0
       0     5138        M 0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 264, (wrb) a5  <-- 0x00100108
                         M 0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 2.0, ft3  = 2.0, fs0  = 856.0
       0     5140        M 0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 264, (wrb) a5  <-- 0x00100428
       0     5141        M 0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100108], (f:fpu) fs0  <-- 860.0
       0     5142        M 0x8000087c addi    a3, a3, 8              #; a3  = 264, (wrb) a3  <-- 272
                         M                                           #; (f:lsu) ft3  <-- 3.0
       0     5143        M 0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100428]
       0     5144        M 0x80000884 bne     a3, a4, pc - 24        #; a3  = 272, a4  = 800, taken, goto 0x8000086c
                         M                                           #; (f:lsu) ft4  <-- 3.0
       0     5145        M 0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 272, (wrb) a5  <-- 0x00100110
                         M 0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 3.0, ft3  = 3.0, fs0  = 860.0
       0     5147        M 0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 272, (wrb) a5  <-- 0x00100430
       0     5148        M 0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100110], (f:fpu) fs0  <-- 869.0
       0     5149        M 0x8000087c addi    a3, a3, 8              #; a3  = 272, (wrb) a3  <-- 280
                         M                                           #; (f:lsu) ft3  <-- 4.0
       0     5150        M 0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100430]
       0     5151        M 0x80000884 bne     a3, a4, pc - 24        #; a3  = 280, a4  = 800, taken, goto 0x8000086c
                         M                                           #; (f:lsu) ft4  <-- 4.0
       0     5152        M 0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 280, (wrb) a5  <-- 0x00100118
                         M 0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 4.0, ft3  = 4.0, fs0  = 869.0
       0     5154        M 0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 280, (wrb) a5  <-- 0x00100438
       0     5155        M 0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100118], (f:fpu) fs0  <-- 885.0
       0     5156        M 0x8000087c addi    a3, a3, 8              #; a3  = 280, (wrb) a3  <-- 288
                         M                                           #; (f:lsu) ft3  <-- 5.0
       0     5157        M 0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100438]
       0     5158        M 0x80000884 bne     a3, a4, pc - 24        #; a3  = 288, a4  = 800, taken, goto 0x8000086c
                         M                                           #; (f:lsu) ft4  <-- 5.0
       0     5159        M 0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 288, (wrb) a5  <-- 0x00100120
                         M 0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 5.0, ft3  = 5.0, fs0  = 885.0
       0     5161        M 0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 288, (wrb) a5  <-- 0x00100440
       0     5162        M 0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100120], (f:fpu) fs0  <-- 910.0
       0     5163        M 0x8000087c addi    a3, a3, 8              #; a3  = 288, (wrb) a3  <-- 296
                         M                                           #; (f:lsu) ft3  <-- 6.0
       0     5164        M 0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100440]
       0     5165        M 0x80000884 bne     a3, a4, pc - 24        #; a3  = 296, a4  = 800, taken, goto 0x8000086c
                         M                                           #; (f:lsu) ft4  <-- 6.0
       0     5166        M 0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 296, (wrb) a5  <-- 0x00100128
                         M 0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 6.0, ft3  = 6.0, fs0  = 910.0
       0     5168        M 0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 296, (wrb) a5  <-- 0x00100448
       0     5169        M 0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100128], (f:fpu) fs0  <-- 946.0
       0     5170        M 0x8000087c addi    a3, a3, 8              #; a3  = 296, (wrb) a3  <-- 304
                         M                                           #; (f:lsu) ft3  <-- 7.0
       0     5171        M 0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100448]
       0     5172        M 0x80000884 bne     a3, a4, pc - 24        #; a3  = 304, a4  = 800, taken, goto 0x8000086c
                         M                                           #; (f:lsu) ft4  <-- 7.0
       0     5173        M 0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 304, (wrb) a5  <-- 0x00100130
                         M 0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 7.0, ft3  = 7.0, fs0  = 946.0
       0     5175        M 0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 304, (wrb) a5  <-- 0x00100450
       0     5176        M 0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100130], (f:fpu) fs0  <-- 995.0
       0     5177        M 0x8000087c addi    a3, a3, 8              #; a3  = 304, (wrb) a3  <-- 312
                         M                                           #; (f:lsu) ft3  <-- 8.0
       0     5178        M 0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100450]
       0     5179        M 0x80000884 bne     a3, a4, pc - 24        #; a3  = 312, a4  = 800, taken, goto 0x8000086c
                         M                                           #; (f:lsu) ft4  <-- 8.0
       0     5180        M 0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 312, (wrb) a5  <-- 0x00100138
                         M 0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 8.0, ft3  = 8.0, fs0  = 995.0
       0     5182        M 0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 312, (wrb) a5  <-- 0x00100458
       0     5183        M 0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100138], (f:fpu) fs0  <-- 1059.0
       0     5184        M 0x8000087c addi    a3, a3, 8              #; a3  = 312, (wrb) a3  <-- 320
                         M                                           #; (f:lsu) ft3  <-- 9.0
       0     5185        M 0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100458]
       0     5186        M 0x80000884 bne     a3, a4, pc - 24        #; a3  = 320, a4  = 800, taken, goto 0x8000086c
                         M                                           #; (f:lsu) ft4  <-- 9.0
       0     5187        M 0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 320, (wrb) a5  <-- 0x00100140
                         M 0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 9.0, ft3  = 9.0, fs0  = 1059.0
       0     5189        M 0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 320, (wrb) a5  <-- 0x00100460
       0     5190        M 0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100140], (f:fpu) fs0  <-- 1140.0
       0     5191        M 0x8000087c addi    a3, a3, 8              #; a3  = 320, (wrb) a3  <-- 328
                         M                                           #; (f:lsu) ft3  <-- 0.0
       0     5192        M 0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100460]
       0     5193        M 0x80000884 bne     a3, a4, pc - 24        #; a3  = 328, a4  = 800, taken, goto 0x8000086c
                         M                                           #; (f:lsu) ft4  <-- 0.0
       0     5194        M 0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 328, (wrb) a5  <-- 0x00100148
                         M 0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 0.0, ft3  = 0.0, fs0  = 1140.0
       0     5196        M 0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 328, (wrb) a5  <-- 0x00100468
       0     5197        M 0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100148], (f:fpu) fs0  <-- 1140.0
       0     5198        M 0x8000087c addi    a3, a3, 8              #; a3  = 328, (wrb) a3  <-- 336
                         M                                           #; (f:lsu) ft3  <-- 1.0
       0     5199        M 0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100468]
       0     5200        M 0x80000884 bne     a3, a4, pc - 24        #; a3  = 336, a4  = 800, taken, goto 0x8000086c
                         M                                           #; (f:lsu) ft4  <-- 1.0
       0     5201        M 0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 336, (wrb) a5  <-- 0x00100150
                         M 0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 1.0, ft3  = 1.0, fs0  = 1140.0
       0     5203        M 0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 336, (wrb) a5  <-- 0x00100470
       0     5204        M 0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100150], (f:fpu) fs0  <-- 1141.0
       0     5205        M 0x8000087c addi    a3, a3, 8              #; a3  = 336, (wrb) a3  <-- 344
                         M                                           #; (f:lsu) ft3  <-- 2.0
       0     5206        M 0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100470]
       0     5207        M 0x80000884 bne     a3, a4, pc - 24        #; a3  = 344, a4  = 800, taken, goto 0x8000086c
                         M                                           #; (f:lsu) ft4  <-- 2.0
       0     5208        M 0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 344, (wrb) a5  <-- 0x00100158
                         M 0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 2.0, ft3  = 2.0, fs0  = 1141.0
       0     5210        M 0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 344, (wrb) a5  <-- 0x00100478
       0     5211        M 0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100158], (f:fpu) fs0  <-- 1145.0
       0     5212        M 0x8000087c addi    a3, a3, 8              #; a3  = 344, (wrb) a3  <-- 352
                         M                                           #; (f:lsu) ft3  <-- 3.0
       0     5213        M 0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100478]
       0     5214        M 0x80000884 bne     a3, a4, pc - 24        #; a3  = 352, a4  = 800, taken, goto 0x8000086c
                         M                                           #; (f:lsu) ft4  <-- 3.0
       0     5215        M 0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 352, (wrb) a5  <-- 0x00100160
                         M 0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 3.0, ft3  = 3.0, fs0  = 1145.0
       0     5217        M 0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 352, (wrb) a5  <-- 0x00100480
       0     5218        M 0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100160], (f:fpu) fs0  <-- 1154.0
       0     5219        M 0x8000087c addi    a3, a3, 8              #; a3  = 352, (wrb) a3  <-- 360
                         M                                           #; (f:lsu) ft3  <-- 4.0
       0     5220        M 0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100480]
       0     5221        M 0x80000884 bne     a3, a4, pc - 24        #; a3  = 360, a4  = 800, taken, goto 0x8000086c
                         M                                           #; (f:lsu) ft4  <-- 4.0
       0     5222        M 0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 360, (wrb) a5  <-- 0x00100168
                         M 0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 4.0, ft3  = 4.0, fs0  = 1154.0
       0     5224        M 0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 360, (wrb) a5  <-- 0x00100488
       0     5225        M 0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100168], (f:fpu) fs0  <-- 1170.0
       0     5226        M 0x8000087c addi    a3, a3, 8              #; a3  = 360, (wrb) a3  <-- 368
                         M                                           #; (f:lsu) ft3  <-- 5.0
       0     5227        M 0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100488]
       0     5228        M 0x80000884 bne     a3, a4, pc - 24        #; a3  = 368, a4  = 800, taken, goto 0x8000086c
                         M                                           #; (f:lsu) ft4  <-- 5.0
       0     5229        M 0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 368, (wrb) a5  <-- 0x00100170
                         M 0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 5.0, ft3  = 5.0, fs0  = 1170.0
       0     5231        M 0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 368, (wrb) a5  <-- 0x00100490
       0     5232        M 0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100170], (f:fpu) fs0  <-- 1195.0
       0     5233        M 0x8000087c addi    a3, a3, 8              #; a3  = 368, (wrb) a3  <-- 376
                         M                                           #; (f:lsu) ft3  <-- 6.0
       0     5234        M 0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100490]
       0     5235        M 0x80000884 bne     a3, a4, pc - 24        #; a3  = 376, a4  = 800, taken, goto 0x8000086c
                         M                                           #; (f:lsu) ft4  <-- 6.0
       0     5236        M 0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 376, (wrb) a5  <-- 0x00100178
                         M 0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 6.0, ft3  = 6.0, fs0  = 1195.0
       0     5238        M 0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 376, (wrb) a5  <-- 0x00100498
       0     5239        M 0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100178], (f:fpu) fs0  <-- 1231.0
       0     5240        M 0x8000087c addi    a3, a3, 8              #; a3  = 376, (wrb) a3  <-- 384
                         M                                           #; (f:lsu) ft3  <-- 7.0
       0     5241        M 0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100498]
       0     5242        M 0x80000884 bne     a3, a4, pc - 24        #; a3  = 384, a4  = 800, taken, goto 0x8000086c
                         M                                           #; (f:lsu) ft4  <-- 7.0
       0     5243        M 0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 384, (wrb) a5  <-- 0x00100180
                         M 0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 7.0, ft3  = 7.0, fs0  = 1231.0
       0     5245        M 0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 384, (wrb) a5  <-- 0x001004a0
       0     5246        M 0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100180], (f:fpu) fs0  <-- 1280.0
       0     5247        M 0x8000087c addi    a3, a3, 8              #; a3  = 384, (wrb) a3  <-- 392
                         M                                           #; (f:lsu) ft3  <-- 8.0
       0     5248        M 0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x001004a0]
       0     5249        M 0x80000884 bne     a3, a4, pc - 24        #; a3  = 392, a4  = 800, taken, goto 0x8000086c
                         M                                           #; (f:lsu) ft4  <-- 8.0
       0     5250        M 0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 392, (wrb) a5  <-- 0x00100188
                         M 0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 8.0, ft3  = 8.0, fs0  = 1280.0
       0     5252        M 0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 392, (wrb) a5  <-- 0x001004a8
       0     5253        M 0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100188], (f:fpu) fs0  <-- 1344.0
       0     5254        M 0x8000087c addi    a3, a3, 8              #; a3  = 392, (wrb) a3  <-- 400
                         M                                           #; (f:lsu) ft3  <-- 9.0
       0     5255        M 0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x001004a8]
       0     5256        M 0x80000884 bne     a3, a4, pc - 24        #; a3  = 400, a4  = 800, taken, goto 0x8000086c
                         M                                           #; (f:lsu) ft4  <-- 9.0
       0     5257        M 0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 400, (wrb) a5  <-- 0x00100190
                         M 0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 9.0, ft3  = 9.0, fs0  = 1344.0
       0     5259        M 0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 400, (wrb) a5  <-- 0x001004b0
       0     5260        M 0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100190], (f:fpu) fs0  <-- 1425.0
       0     5261        M 0x8000087c addi    a3, a3, 8              #; a3  = 400, (wrb) a3  <-- 408
                         M                                           #; (f:lsu) ft3  <-- 0.0
       0     5262        M 0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x001004b0]
       0     5263        M 0x80000884 bne     a3, a4, pc - 24        #; a3  = 408, a4  = 800, taken, goto 0x8000086c
                         M                                           #; (f:lsu) ft4  <-- 0.0
       0     5264        M 0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 408, (wrb) a5  <-- 0x00100198
                         M 0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 0.0, ft3  = 0.0, fs0  = 1425.0
       0     5266        M 0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 408, (wrb) a5  <-- 0x001004b8
       0     5267        M 0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100198], (f:fpu) fs0  <-- 1425.0
       0     5268        M 0x8000087c addi    a3, a3, 8              #; a3  = 408, (wrb) a3  <-- 416
                         M                                           #; (f:lsu) ft3  <-- 1.0
       0     5269        M 0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x001004b8]
       0     5270        M 0x80000884 bne     a3, a4, pc - 24        #; a3  = 416, a4  = 800, taken, goto 0x8000086c
                         M                                           #; (f:lsu) ft4  <-- 1.0
       0     5271        M 0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 416, (wrb) a5  <-- 0x001001a0
                         M 0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 1.0, ft3  = 1.0, fs0  = 1425.0
       0     5273        M 0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 416, (wrb) a5  <-- 0x001004c0
       0     5274        M 0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x001001a0], (f:fpu) fs0  <-- 1426.0
       0     5275        M 0x8000087c addi    a3, a3, 8              #; a3  = 416, (wrb) a3  <-- 424
                         M                                           #; (f:lsu) ft3  <-- 2.0
       0     5276        M 0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x001004c0]
       0     5277        M 0x80000884 bne     a3, a4, pc - 24        #; a3  = 424, a4  = 800, taken, goto 0x8000086c
                         M                                           #; (f:lsu) ft4  <-- 2.0
       0     5278        M 0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 424, (wrb) a5  <-- 0x001001a8
                         M 0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 2.0, ft3  = 2.0, fs0  = 1426.0
       0     5280        M 0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 424, (wrb) a5  <-- 0x001004c8
       0     5281        M 0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x001001a8], (f:fpu) fs0  <-- 1430.0
       0     5282        M 0x8000087c addi    a3, a3, 8              #; a3  = 424, (wrb) a3  <-- 432
                         M                                           #; (f:lsu) ft3  <-- 3.0
       0     5283        M 0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x001004c8]
       0     5284        M 0x80000884 bne     a3, a4, pc - 24        #; a3  = 432, a4  = 800, taken, goto 0x8000086c
                         M                                           #; (f:lsu) ft4  <-- 3.0
       0     5285        M 0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 432, (wrb) a5  <-- 0x001001b0
                         M 0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 3.0, ft3  = 3.0, fs0  = 1430.0
       0     5287        M 0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 432, (wrb) a5  <-- 0x001004d0
       0     5288        M 0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x001001b0], (f:fpu) fs0  <-- 1439.0
       0     5289        M 0x8000087c addi    a3, a3, 8              #; a3  = 432, (wrb) a3  <-- 440
                         M                                           #; (f:lsu) ft3  <-- 4.0
       0     5290        M 0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x001004d0]
       0     5291        M 0x80000884 bne     a3, a4, pc - 24        #; a3  = 440, a4  = 800, taken, goto 0x8000086c
                         M                                           #; (f:lsu) ft4  <-- 4.0
       0     5292        M 0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 440, (wrb) a5  <-- 0x001001b8
                         M 0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 4.0, ft3  = 4.0, fs0  = 1439.0
       0     5294        M 0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 440, (wrb) a5  <-- 0x001004d8
       0     5295        M 0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x001001b8], (f:fpu) fs0  <-- 1455.0
       0     5296        M 0x8000087c addi    a3, a3, 8              #; a3  = 440, (wrb) a3  <-- 448
                         M                                           #; (f:lsu) ft3  <-- 5.0
       0     5297        M 0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x001004d8]
       0     5298        M 0x80000884 bne     a3, a4, pc - 24        #; a3  = 448, a4  = 800, taken, goto 0x8000086c
                         M                                           #; (f:lsu) ft4  <-- 5.0
       0     5299        M 0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 448, (wrb) a5  <-- 0x001001c0
                         M 0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 5.0, ft3  = 5.0, fs0  = 1455.0
       0     5301        M 0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 448, (wrb) a5  <-- 0x001004e0
       0     5302        M 0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x001001c0], (f:fpu) fs0  <-- 1480.0
       0     5303        M 0x8000087c addi    a3, a3, 8              #; a3  = 448, (wrb) a3  <-- 456
                         M                                           #; (f:lsu) ft3  <-- 6.0
       0     5304        M 0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x001004e0]
       0     5305        M 0x80000884 bne     a3, a4, pc - 24        #; a3  = 456, a4  = 800, taken, goto 0x8000086c
                         M                                           #; (f:lsu) ft4  <-- 6.0
       0     5306        M 0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 456, (wrb) a5  <-- 0x001001c8
                         M 0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 6.0, ft3  = 6.0, fs0  = 1480.0
       0     5308        M 0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 456, (wrb) a5  <-- 0x001004e8
       0     5309        M 0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x001001c8], (f:fpu) fs0  <-- 1516.0
       0     5310        M 0x8000087c addi    a3, a3, 8              #; a3  = 456, (wrb) a3  <-- 464
                         M                                           #; (f:lsu) ft3  <-- 7.0
       0     5311        M 0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x001004e8]
       0     5312        M 0x80000884 bne     a3, a4, pc - 24        #; a3  = 464, a4  = 800, taken, goto 0x8000086c
                         M                                           #; (f:lsu) ft4  <-- 7.0
       0     5313        M 0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 464, (wrb) a5  <-- 0x001001d0
                         M 0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 7.0, ft3  = 7.0, fs0  = 1516.0
       0     5315        M 0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 464, (wrb) a5  <-- 0x001004f0
       0     5316        M 0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x001001d0], (f:fpu) fs0  <-- 1565.0
       0     5317        M 0x8000087c addi    a3, a3, 8              #; a3  = 464, (wrb) a3  <-- 472
                         M                                           #; (f:lsu) ft3  <-- 8.0
       0     5318        M 0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x001004f0]
       0     5319        M 0x80000884 bne     a3, a4, pc - 24        #; a3  = 472, a4  = 800, taken, goto 0x8000086c
                         M                                           #; (f:lsu) ft4  <-- 8.0
       0     5320        M 0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 472, (wrb) a5  <-- 0x001001d8
                         M 0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 8.0, ft3  = 8.0, fs0  = 1565.0
       0     5322        M 0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 472, (wrb) a5  <-- 0x001004f8
       0     5323        M 0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x001001d8], (f:fpu) fs0  <-- 1629.0
       0     5324        M 0x8000087c addi    a3, a3, 8              #; a3  = 472, (wrb) a3  <-- 480
                         M                                           #; (f:lsu) ft3  <-- 9.0
       0     5325        M 0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x001004f8]
       0     5326        M 0x80000884 bne     a3, a4, pc - 24        #; a3  = 480, a4  = 800, taken, goto 0x8000086c
                         M                                           #; (f:lsu) ft4  <-- 9.0
       0     5327        M 0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 480, (wrb) a5  <-- 0x001001e0
                         M 0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 9.0, ft3  = 9.0, fs0  = 1629.0
       0     5329        M 0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 480, (wrb) a5  <-- 0x00100500
       0     5330        M 0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x001001e0], (f:fpu) fs0  <-- 1710.0
       0     5331        M 0x8000087c addi    a3, a3, 8              #; a3  = 480, (wrb) a3  <-- 488
                         M                                           #; (f:lsu) ft3  <-- 0.0
       0     5332        M 0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100500]
       0     5333        M 0x80000884 bne     a3, a4, pc - 24        #; a3  = 488, a4  = 800, taken, goto 0x8000086c
                         M                                           #; (f:lsu) ft4  <-- 0.0
       0     5334        M 0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 488, (wrb) a5  <-- 0x001001e8
                         M 0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 0.0, ft3  = 0.0, fs0  = 1710.0
       0     5336        M 0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 488, (wrb) a5  <-- 0x00100508
       0     5337        M 0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x001001e8], (f:fpu) fs0  <-- 1710.0
       0     5338        M 0x8000087c addi    a3, a3, 8              #; a3  = 488, (wrb) a3  <-- 496
                         M                                           #; (f:lsu) ft3  <-- 1.0
       0     5339        M 0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100508]
       0     5340        M 0x80000884 bne     a3, a4, pc - 24        #; a3  = 496, a4  = 800, taken, goto 0x8000086c
                         M                                           #; (f:lsu) ft4  <-- 1.0
       0     5341        M 0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 496, (wrb) a5  <-- 0x001001f0
                         M 0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 1.0, ft3  = 1.0, fs0  = 1710.0
       0     5343        M 0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 496, (wrb) a5  <-- 0x00100510
       0     5344        M 0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x001001f0], (f:fpu) fs0  <-- 1711.0
       0     5345        M 0x8000087c addi    a3, a3, 8              #; a3  = 496, (wrb) a3  <-- 504
                         M                                           #; (f:lsu) ft3  <-- 2.0
       0     5346        M 0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100510]
       0     5347        M 0x80000884 bne     a3, a4, pc - 24        #; a3  = 504, a4  = 800, taken, goto 0x8000086c
                         M                                           #; (f:lsu) ft4  <-- 2.0
       0     5348        M 0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 504, (wrb) a5  <-- 0x001001f8
                         M 0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 2.0, ft3  = 2.0, fs0  = 1711.0
       0     5350        M 0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 504, (wrb) a5  <-- 0x00100518
       0     5351        M 0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x001001f8], (f:fpu) fs0  <-- 1715.0
       0     5352        M 0x8000087c addi    a3, a3, 8              #; a3  = 504, (wrb) a3  <-- 512
                         M                                           #; (f:lsu) ft3  <-- 3.0
       0     5353        M 0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100518]
       0     5354        M 0x80000884 bne     a3, a4, pc - 24        #; a3  = 512, a4  = 800, taken, goto 0x8000086c
                         M                                           #; (f:lsu) ft4  <-- 3.0
       0     5355        M 0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 512, (wrb) a5  <-- 0x00100200
                         M 0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 3.0, ft3  = 3.0, fs0  = 1715.0
       0     5357        M 0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 512, (wrb) a5  <-- 0x00100520
       0     5358        M 0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100200], (f:fpu) fs0  <-- 1724.0
       0     5359        M 0x8000087c addi    a3, a3, 8              #; a3  = 512, (wrb) a3  <-- 520
                         M                                           #; (f:lsu) ft3  <-- 4.0
       0     5360        M 0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100520]
       0     5361        M 0x80000884 bne     a3, a4, pc - 24        #; a3  = 520, a4  = 800, taken, goto 0x8000086c
                         M                                           #; (f:lsu) ft4  <-- 4.0
       0     5362        M 0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 520, (wrb) a5  <-- 0x00100208
                         M 0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 4.0, ft3  = 4.0, fs0  = 1724.0
       0     5364        M 0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 520, (wrb) a5  <-- 0x00100528
       0     5365        M 0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100208], (f:fpu) fs0  <-- 1740.0
       0     5366        M 0x8000087c addi    a3, a3, 8              #; a3  = 520, (wrb) a3  <-- 528
                         M                                           #; (f:lsu) ft3  <-- 5.0
       0     5367        M 0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100528]
       0     5368        M 0x80000884 bne     a3, a4, pc - 24        #; a3  = 528, a4  = 800, taken, goto 0x8000086c
                         M                                           #; (f:lsu) ft4  <-- 5.0
       0     5369        M 0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 528, (wrb) a5  <-- 0x00100210
                         M 0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 5.0, ft3  = 5.0, fs0  = 1740.0
       0     5371        M 0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 528, (wrb) a5  <-- 0x00100530
       0     5372        M 0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100210], (f:fpu) fs0  <-- 1765.0
       0     5373        M 0x8000087c addi    a3, a3, 8              #; a3  = 528, (wrb) a3  <-- 536
                         M                                           #; (f:lsu) ft3  <-- 6.0
       0     5374        M 0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100530]
       0     5375        M 0x80000884 bne     a3, a4, pc - 24        #; a3  = 536, a4  = 800, taken, goto 0x8000086c
                         M                                           #; (f:lsu) ft4  <-- 6.0
       0     5376        M 0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 536, (wrb) a5  <-- 0x00100218
                         M 0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 6.0, ft3  = 6.0, fs0  = 1765.0
       0     5378        M 0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 536, (wrb) a5  <-- 0x00100538
       0     5379        M 0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100218], (f:fpu) fs0  <-- 1801.0
       0     5380        M 0x8000087c addi    a3, a3, 8              #; a3  = 536, (wrb) a3  <-- 544
                         M                                           #; (f:lsu) ft3  <-- 7.0
       0     5381        M 0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100538]
       0     5382        M 0x80000884 bne     a3, a4, pc - 24        #; a3  = 544, a4  = 800, taken, goto 0x8000086c
                         M                                           #; (f:lsu) ft4  <-- 7.0
       0     5383        M 0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 544, (wrb) a5  <-- 0x00100220
                         M 0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 7.0, ft3  = 7.0, fs0  = 1801.0
       0     5385        M 0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 544, (wrb) a5  <-- 0x00100540
       0     5386        M 0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100220], (f:fpu) fs0  <-- 1850.0
       0     5387        M 0x8000087c addi    a3, a3, 8              #; a3  = 544, (wrb) a3  <-- 552
                         M                                           #; (f:lsu) ft3  <-- 8.0
       0     5388        M 0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100540]
       0     5389        M 0x80000884 bne     a3, a4, pc - 24        #; a3  = 552, a4  = 800, taken, goto 0x8000086c
                         M                                           #; (f:lsu) ft4  <-- 8.0
       0     5390        M 0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 552, (wrb) a5  <-- 0x00100228
                         M 0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 8.0, ft3  = 8.0, fs0  = 1850.0
       0     5392        M 0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 552, (wrb) a5  <-- 0x00100548
       0     5393        M 0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100228], (f:fpu) fs0  <-- 1914.0
       0     5394        M 0x8000087c addi    a3, a3, 8              #; a3  = 552, (wrb) a3  <-- 560
                         M                                           #; (f:lsu) ft3  <-- 9.0
       0     5395        M 0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100548]
       0     5396        M 0x80000884 bne     a3, a4, pc - 24        #; a3  = 560, a4  = 800, taken, goto 0x8000086c
                         M                                           #; (f:lsu) ft4  <-- 9.0
       0     5397        M 0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 560, (wrb) a5  <-- 0x00100230
                         M 0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 9.0, ft3  = 9.0, fs0  = 1914.0
       0     5399        M 0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 560, (wrb) a5  <-- 0x00100550
       0     5400        M 0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100230], (f:fpu) fs0  <-- 1995.0
       0     5401        M 0x8000087c addi    a3, a3, 8              #; a3  = 560, (wrb) a3  <-- 568
                         M                                           #; (f:lsu) ft3  <-- 0.0
       0     5402        M 0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100550]
       0     5403        M 0x80000884 bne     a3, a4, pc - 24        #; a3  = 568, a4  = 800, taken, goto 0x8000086c
                         M                                           #; (f:lsu) ft4  <-- 0.0
       0     5404        M 0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 568, (wrb) a5  <-- 0x00100238
                         M 0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 0.0, ft3  = 0.0, fs0  = 1995.0
       0     5406        M 0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 568, (wrb) a5  <-- 0x00100558
       0     5407        M 0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100238], (f:fpu) fs0  <-- 1995.0
       0     5408        M 0x8000087c addi    a3, a3, 8              #; a3  = 568, (wrb) a3  <-- 576
                         M                                           #; (f:lsu) ft3  <-- 1.0
       0     5409        M 0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100558]
       0     5410        M 0x80000884 bne     a3, a4, pc - 24        #; a3  = 576, a4  = 800, taken, goto 0x8000086c
                         M                                           #; (f:lsu) ft4  <-- 1.0
       0     5411        M 0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 576, (wrb) a5  <-- 0x00100240
                         M 0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 1.0, ft3  = 1.0, fs0  = 1995.0
       0     5413        M 0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 576, (wrb) a5  <-- 0x00100560
       0     5414        M 0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100240], (f:fpu) fs0  <-- 1996.0
       0     5415        M 0x8000087c addi    a3, a3, 8              #; a3  = 576, (wrb) a3  <-- 584
                         M                                           #; (f:lsu) ft3  <-- 2.0
       0     5416        M 0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100560]
       0     5417        M 0x80000884 bne     a3, a4, pc - 24        #; a3  = 584, a4  = 800, taken, goto 0x8000086c
                         M                                           #; (f:lsu) ft4  <-- 2.0
       0     5418        M 0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 584, (wrb) a5  <-- 0x00100248
                         M 0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 2.0, ft3  = 2.0, fs0  = 1996.0
       0     5420        M 0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 584, (wrb) a5  <-- 0x00100568
       0     5421        M 0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100248], (f:fpu) fs0  <-- 2000.0
       0     5422        M 0x8000087c addi    a3, a3, 8              #; a3  = 584, (wrb) a3  <-- 592
                         M                                           #; (f:lsu) ft3  <-- 3.0
       0     5423        M 0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100568]
       0     5424        M 0x80000884 bne     a3, a4, pc - 24        #; a3  = 592, a4  = 800, taken, goto 0x8000086c
                         M                                           #; (f:lsu) ft4  <-- 3.0
       0     5425        M 0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 592, (wrb) a5  <-- 0x00100250
                         M 0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 3.0, ft3  = 3.0, fs0  = 2000.0
       0     5427        M 0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 592, (wrb) a5  <-- 0x00100570
       0     5428        M 0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100250], (f:fpu) fs0  <-- 2009.0
       0     5429        M 0x8000087c addi    a3, a3, 8              #; a3  = 592, (wrb) a3  <-- 600
                         M                                           #; (f:lsu) ft3  <-- 4.0
       0     5430        M 0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100570]
       0     5431        M 0x80000884 bne     a3, a4, pc - 24        #; a3  = 600, a4  = 800, taken, goto 0x8000086c
                         M                                           #; (f:lsu) ft4  <-- 4.0
       0     5432        M 0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 600, (wrb) a5  <-- 0x00100258
                         M 0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 4.0, ft3  = 4.0, fs0  = 2009.0
       0     5434        M 0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 600, (wrb) a5  <-- 0x00100578
       0     5435        M 0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100258], (f:fpu) fs0  <-- 2025.0
       0     5436        M 0x8000087c addi    a3, a3, 8              #; a3  = 600, (wrb) a3  <-- 608
                         M                                           #; (f:lsu) ft3  <-- 5.0
       0     5437        M 0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100578]
       0     5438        M 0x80000884 bne     a3, a4, pc - 24        #; a3  = 608, a4  = 800, taken, goto 0x8000086c
                         M                                           #; (f:lsu) ft4  <-- 5.0
       0     5439        M 0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 608, (wrb) a5  <-- 0x00100260
                         M 0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 5.0, ft3  = 5.0, fs0  = 2025.0
       0     5441        M 0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 608, (wrb) a5  <-- 0x00100580
       0     5442        M 0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100260], (f:fpu) fs0  <-- 2050.0
       0     5443        M 0x8000087c addi    a3, a3, 8              #; a3  = 608, (wrb) a3  <-- 616
                         M                                           #; (f:lsu) ft3  <-- 6.0
       0     5444        M 0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100580]
       0     5445        M 0x80000884 bne     a3, a4, pc - 24        #; a3  = 616, a4  = 800, taken, goto 0x8000086c
                         M                                           #; (f:lsu) ft4  <-- 6.0
       0     5446        M 0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 616, (wrb) a5  <-- 0x00100268
                         M 0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 6.0, ft3  = 6.0, fs0  = 2050.0
       0     5448        M 0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 616, (wrb) a5  <-- 0x00100588
       0     5449        M 0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100268], (f:fpu) fs0  <-- 2086.0
       0     5450        M 0x8000087c addi    a3, a3, 8              #; a3  = 616, (wrb) a3  <-- 624
                         M                                           #; (f:lsu) ft3  <-- 7.0
       0     5451        M 0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100588]
       0     5452        M 0x80000884 bne     a3, a4, pc - 24        #; a3  = 624, a4  = 800, taken, goto 0x8000086c
                         M                                           #; (f:lsu) ft4  <-- 7.0
       0     5453        M 0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 624, (wrb) a5  <-- 0x00100270
                         M 0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 7.0, ft3  = 7.0, fs0  = 2086.0
       0     5455        M 0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 624, (wrb) a5  <-- 0x00100590
       0     5456        M 0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100270], (f:fpu) fs0  <-- 2135.0
       0     5457        M 0x8000087c addi    a3, a3, 8              #; a3  = 624, (wrb) a3  <-- 632
                         M                                           #; (f:lsu) ft3  <-- 8.0
       0     5458        M 0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100590]
       0     5459        M 0x80000884 bne     a3, a4, pc - 24        #; a3  = 632, a4  = 800, taken, goto 0x8000086c
                         M                                           #; (f:lsu) ft4  <-- 8.0
       0     5460        M 0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 632, (wrb) a5  <-- 0x00100278
                         M 0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 8.0, ft3  = 8.0, fs0  = 2135.0
       0     5462        M 0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 632, (wrb) a5  <-- 0x00100598
       0     5463        M 0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100278], (f:fpu) fs0  <-- 2199.0
       0     5464        M 0x8000087c addi    a3, a3, 8              #; a3  = 632, (wrb) a3  <-- 640
                         M                                           #; (f:lsu) ft3  <-- 9.0
       0     5465        M 0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100598]
       0     5466        M 0x80000884 bne     a3, a4, pc - 24        #; a3  = 640, a4  = 800, taken, goto 0x8000086c
                         M                                           #; (f:lsu) ft4  <-- 9.0
       0     5467        M 0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 640, (wrb) a5  <-- 0x00100280
                         M 0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 9.0, ft3  = 9.0, fs0  = 2199.0
       0     5469        M 0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 640, (wrb) a5  <-- 0x001005a0
       0     5470        M 0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100280], (f:fpu) fs0  <-- 2280.0
       0     5471        M 0x8000087c addi    a3, a3, 8              #; a3  = 640, (wrb) a3  <-- 648
                         M                                           #; (f:lsu) ft3  <-- 0.0
       0     5472        M 0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x001005a0]
       0     5473        M 0x80000884 bne     a3, a4, pc - 24        #; a3  = 648, a4  = 800, taken, goto 0x8000086c
                         M                                           #; (f:lsu) ft4  <-- 0.0
       0     5474        M 0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 648, (wrb) a5  <-- 0x00100288
                         M 0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 0.0, ft3  = 0.0, fs0  = 2280.0
       0     5476        M 0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 648, (wrb) a5  <-- 0x001005a8
       0     5477        M 0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100288], (f:fpu) fs0  <-- 2280.0
       0     5478        M 0x8000087c addi    a3, a3, 8              #; a3  = 648, (wrb) a3  <-- 656
                         M                                           #; (f:lsu) ft3  <-- 1.0
       0     5479        M 0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x001005a8]
       0     5480        M 0x80000884 bne     a3, a4, pc - 24        #; a3  = 656, a4  = 800, taken, goto 0x8000086c
                         M                                           #; (f:lsu) ft4  <-- 1.0
       0     5481        M 0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 656, (wrb) a5  <-- 0x00100290
                         M 0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 1.0, ft3  = 1.0, fs0  = 2280.0
       0     5483        M 0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 656, (wrb) a5  <-- 0x001005b0
       0     5484        M 0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100290], (f:fpu) fs0  <-- 2281.0
       0     5485        M 0x8000087c addi    a3, a3, 8              #; a3  = 656, (wrb) a3  <-- 664
                         M                                           #; (f:lsu) ft3  <-- 2.0
       0     5486        M 0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x001005b0]
       0     5487        M 0x80000884 bne     a3, a4, pc - 24        #; a3  = 664, a4  = 800, taken, goto 0x8000086c
                         M                                           #; (f:lsu) ft4  <-- 2.0
       0     5488        M 0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 664, (wrb) a5  <-- 0x00100298
                         M 0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 2.0, ft3  = 2.0, fs0  = 2281.0
       0     5490        M 0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 664, (wrb) a5  <-- 0x001005b8
       0     5491        M 0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100298], (f:fpu) fs0  <-- 2285.0
       0     5492        M 0x8000087c addi    a3, a3, 8              #; a3  = 664, (wrb) a3  <-- 672
                         M                                           #; (f:lsu) ft3  <-- 3.0
       0     5493        M 0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x001005b8]
       0     5494        M 0x80000884 bne     a3, a4, pc - 24        #; a3  = 672, a4  = 800, taken, goto 0x8000086c
                         M                                           #; (f:lsu) ft4  <-- 3.0
       0     5495        M 0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 672, (wrb) a5  <-- 0x001002a0
                         M 0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 3.0, ft3  = 3.0, fs0  = 2285.0
       0     5497        M 0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 672, (wrb) a5  <-- 0x001005c0
       0     5498        M 0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x001002a0], (f:fpu) fs0  <-- 2294.0
       0     5499        M 0x8000087c addi    a3, a3, 8              #; a3  = 672, (wrb) a3  <-- 680
                         M                                           #; (f:lsu) ft3  <-- 4.0
       0     5500        M 0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x001005c0]
       0     5501        M 0x80000884 bne     a3, a4, pc - 24        #; a3  = 680, a4  = 800, taken, goto 0x8000086c
                         M                                           #; (f:lsu) ft4  <-- 4.0
       0     5502        M 0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 680, (wrb) a5  <-- 0x001002a8
                         M 0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 4.0, ft3  = 4.0, fs0  = 2294.0
       0     5504        M 0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 680, (wrb) a5  <-- 0x001005c8
       0     5505        M 0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x001002a8], (f:fpu) fs0  <-- 2310.0
       0     5506        M 0x8000087c addi    a3, a3, 8              #; a3  = 680, (wrb) a3  <-- 688
                         M                                           #; (f:lsu) ft3  <-- 5.0
       0     5507        M 0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x001005c8]
       0     5508        M 0x80000884 bne     a3, a4, pc - 24        #; a3  = 688, a4  = 800, taken, goto 0x8000086c
                         M                                           #; (f:lsu) ft4  <-- 5.0
       0     5509        M 0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 688, (wrb) a5  <-- 0x001002b0
                         M 0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 5.0, ft3  = 5.0, fs0  = 2310.0
       0     5511        M 0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 688, (wrb) a5  <-- 0x001005d0
       0     5512        M 0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x001002b0], (f:fpu) fs0  <-- 2335.0
       0     5513        M 0x8000087c addi    a3, a3, 8              #; a3  = 688, (wrb) a3  <-- 696
                         M                                           #; (f:lsu) ft3  <-- 6.0
       0     5514        M 0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x001005d0]
       0     5515        M 0x80000884 bne     a3, a4, pc - 24        #; a3  = 696, a4  = 800, taken, goto 0x8000086c
                         M                                           #; (f:lsu) ft4  <-- 6.0
       0     5516        M 0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 696, (wrb) a5  <-- 0x001002b8
                         M 0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 6.0, ft3  = 6.0, fs0  = 2335.0
       0     5518        M 0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 696, (wrb) a5  <-- 0x001005d8
       0     5519        M 0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x001002b8], (f:fpu) fs0  <-- 2371.0
       0     5520        M 0x8000087c addi    a3, a3, 8              #; a3  = 696, (wrb) a3  <-- 704
                         M                                           #; (f:lsu) ft3  <-- 7.0
       0     5521        M 0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x001005d8]
       0     5522        M 0x80000884 bne     a3, a4, pc - 24        #; a3  = 704, a4  = 800, taken, goto 0x8000086c
                         M                                           #; (f:lsu) ft4  <-- 7.0
       0     5523        M 0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 704, (wrb) a5  <-- 0x001002c0
                         M 0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 7.0, ft3  = 7.0, fs0  = 2371.0
       0     5525        M 0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 704, (wrb) a5  <-- 0x001005e0
       0     5526        M 0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x001002c0], (f:fpu) fs0  <-- 2420.0
       0     5527        M 0x8000087c addi    a3, a3, 8              #; a3  = 704, (wrb) a3  <-- 712
                         M                                           #; (f:lsu) ft3  <-- 8.0
       0     5528        M 0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x001005e0]
       0     5529        M 0x80000884 bne     a3, a4, pc - 24        #; a3  = 712, a4  = 800, taken, goto 0x8000086c
                         M                                           #; (f:lsu) ft4  <-- 8.0
       0     5530        M 0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 712, (wrb) a5  <-- 0x001002c8
                         M 0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 8.0, ft3  = 8.0, fs0  = 2420.0
       0     5532        M 0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 712, (wrb) a5  <-- 0x001005e8
       0     5533        M 0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x001002c8], (f:fpu) fs0  <-- 2484.0
       0     5534        M 0x8000087c addi    a3, a3, 8              #; a3  = 712, (wrb) a3  <-- 720
                         M                                           #; (f:lsu) ft3  <-- 9.0
       0     5535        M 0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x001005e8]
       0     5536        M 0x80000884 bne     a3, a4, pc - 24        #; a3  = 720, a4  = 800, taken, goto 0x8000086c
                         M                                           #; (f:lsu) ft4  <-- 9.0
       0     5537        M 0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 720, (wrb) a5  <-- 0x001002d0
                         M 0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 9.0, ft3  = 9.0, fs0  = 2484.0
       0     5539        M 0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 720, (wrb) a5  <-- 0x001005f0
       0     5540        M 0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x001002d0], (f:fpu) fs0  <-- 2565.0
       0     5541        M 0x8000087c addi    a3, a3, 8              #; a3  = 720, (wrb) a3  <-- 728
                         M                                           #; (f:lsu) ft3  <-- 0.0
       0     5542        M 0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x001005f0]
       0     5543        M 0x80000884 bne     a3, a4, pc - 24        #; a3  = 728, a4  = 800, taken, goto 0x8000086c
                         M                                           #; (f:lsu) ft4  <-- 0.0
       0     5544        M 0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 728, (wrb) a5  <-- 0x001002d8
                         M 0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 0.0, ft3  = 0.0, fs0  = 2565.0
       0     5546        M 0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 728, (wrb) a5  <-- 0x001005f8
       0     5547        M 0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x001002d8], (f:fpu) fs0  <-- 2565.0
       0     5548        M 0x8000087c addi    a3, a3, 8              #; a3  = 728, (wrb) a3  <-- 736
                         M                                           #; (f:lsu) ft3  <-- 1.0
       0     5549        M 0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x001005f8]
       0     5550        M 0x80000884 bne     a3, a4, pc - 24        #; a3  = 736, a4  = 800, taken, goto 0x8000086c
                         M                                           #; (f:lsu) ft4  <-- 1.0
       0     5551        M 0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 736, (wrb) a5  <-- 0x001002e0
                         M 0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 1.0, ft3  = 1.0, fs0  = 2565.0
       0     5553        M 0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 736, (wrb) a5  <-- 0x00100600
       0     5554        M 0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x001002e0], (f:fpu) fs0  <-- 2566.0
       0     5555        M 0x8000087c addi    a3, a3, 8              #; a3  = 736, (wrb) a3  <-- 744
                         M                                           #; (f:lsu) ft3  <-- 2.0
       0     5556        M 0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100600]
       0     5557        M 0x80000884 bne     a3, a4, pc - 24        #; a3  = 744, a4  = 800, taken, goto 0x8000086c
                         M                                           #; (f:lsu) ft4  <-- 2.0
       0     5558        M 0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 744, (wrb) a5  <-- 0x001002e8
                         M 0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 2.0, ft3  = 2.0, fs0  = 2566.0
       0     5560        M 0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 744, (wrb) a5  <-- 0x00100608
       0     5561        M 0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x001002e8], (f:fpu) fs0  <-- 2570.0
       0     5562        M 0x8000087c addi    a3, a3, 8              #; a3  = 744, (wrb) a3  <-- 752
                         M                                           #; (f:lsu) ft3  <-- 3.0
       0     5563        M 0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100608]
       0     5564        M 0x80000884 bne     a3, a4, pc - 24        #; a3  = 752, a4  = 800, taken, goto 0x8000086c
                         M                                           #; (f:lsu) ft4  <-- 3.0
       0     5565        M 0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 752, (wrb) a5  <-- 0x001002f0
                         M 0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 3.0, ft3  = 3.0, fs0  = 2570.0
       0     5567        M 0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 752, (wrb) a5  <-- 0x00100610
       0     5568        M 0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x001002f0], (f:fpu) fs0  <-- 2579.0
       0     5569        M 0x8000087c addi    a3, a3, 8              #; a3  = 752, (wrb) a3  <-- 760
                         M                                           #; (f:lsu) ft3  <-- 4.0
       0     5570        M 0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100610]
       0     5571        M 0x80000884 bne     a3, a4, pc - 24        #; a3  = 760, a4  = 800, taken, goto 0x8000086c
                         M                                           #; (f:lsu) ft4  <-- 4.0
       0     5572        M 0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 760, (wrb) a5  <-- 0x001002f8
                         M 0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 4.0, ft3  = 4.0, fs0  = 2579.0
       0     5574        M 0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 760, (wrb) a5  <-- 0x00100618
       0     5575        M 0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x001002f8], (f:fpu) fs0  <-- 2595.0
       0     5576        M 0x8000087c addi    a3, a3, 8              #; a3  = 760, (wrb) a3  <-- 768
                         M                                           #; (f:lsu) ft3  <-- 5.0
       0     5577        M 0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100618]
       0     5578        M 0x80000884 bne     a3, a4, pc - 24        #; a3  = 768, a4  = 800, taken, goto 0x8000086c
                         M                                           #; (f:lsu) ft4  <-- 5.0
       0     5579        M 0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 768, (wrb) a5  <-- 0x00100300
                         M 0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 5.0, ft3  = 5.0, fs0  = 2595.0
       0     5581        M 0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 768, (wrb) a5  <-- 0x00100620
       0     5582        M 0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100300], (f:fpu) fs0  <-- 2620.0
       0     5583        M 0x8000087c addi    a3, a3, 8              #; a3  = 768, (wrb) a3  <-- 776
                         M                                           #; (f:lsu) ft3  <-- 6.0
       0     5584        M 0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100620]
       0     5585        M 0x80000884 bne     a3, a4, pc - 24        #; a3  = 776, a4  = 800, taken, goto 0x8000086c
                         M                                           #; (f:lsu) ft4  <-- 6.0
       0     5586        M 0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 776, (wrb) a5  <-- 0x00100308
                         M 0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 6.0, ft3  = 6.0, fs0  = 2620.0
       0     5588        M 0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 776, (wrb) a5  <-- 0x00100628
       0     5589        M 0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100308], (f:fpu) fs0  <-- 2656.0
       0     5590        M 0x8000087c addi    a3, a3, 8              #; a3  = 776, (wrb) a3  <-- 784
                         M                                           #; (f:lsu) ft3  <-- 7.0
       0     5591        M 0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100628]
       0     5592        M 0x80000884 bne     a3, a4, pc - 24        #; a3  = 784, a4  = 800, taken, goto 0x8000086c
                         M                                           #; (f:lsu) ft4  <-- 7.0
       0     5593        M 0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 784, (wrb) a5  <-- 0x00100310
                         M 0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 7.0, ft3  = 7.0, fs0  = 2656.0
       0     5595        M 0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 784, (wrb) a5  <-- 0x00100630
       0     5596        M 0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100310], (f:fpu) fs0  <-- 2705.0
       0     5597        M 0x8000087c addi    a3, a3, 8              #; a3  = 784, (wrb) a3  <-- 792
                         M                                           #; (f:lsu) ft3  <-- 8.0
       0     5598        M 0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100630]
       0     5599        M 0x80000884 bne     a3, a4, pc - 24        #; a3  = 792, a4  = 800, taken, goto 0x8000086c
                         M                                           #; (f:lsu) ft4  <-- 8.0
       0     5600        M 0x8000086c add     a5, a1, a3             #; a1  = 0x00100000, a3  = 792, (wrb) a5  <-- 0x00100318
                         M 0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 8.0, ft3  = 8.0, fs0  = 2705.0
       0     5602        M 0x80000874 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 792, (wrb) a5  <-- 0x00100638
       0     5603        M 0x80000870 fld     ft3, 0(a5)             #; ft3  <~~ Doub[0x00100318], (f:fpu) fs0  <-- 2769.0
       0     5604        M 0x8000087c addi    a3, a3, 8              #; a3  = 792, (wrb) a3  <-- 800
                         M                                           #; (f:lsu) ft3  <-- 9.0
       0     5605        M 0x80000878 fld     ft4, 0(a5)             #; ft4  <~~ Doub[0x00100638]
       0     5606        M 0x80000884 bne     a3, a4, pc - 24        #; a3  = 800, a4  = 800, not taken
                         M                                           #; (f:lsu) ft4  <-- 9.0
       0     5607        M 0x80000888 csrr    a0, mcycle             #; mcycle = 5606, (wrb) a0  <-- 5606
                         M 0x80000880 fmadd.d fs0, ft4, ft3, fs0     #; ft4  = 9.0, ft3  = 9.0, fs0  = 2769.0
       0     5608        M 0x8000088c sub     a1, a0, a2             #; a0  = 5606, a2  = 4887, (wrb) a1  <-- 719
       0     5610        M                                           #; (f:fpu) fs0  <-- 2850.0
       0     5619        M 0x80000890 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002890
       0     5620        M 0x80000894 addi    a0, a0, 977            #; a0  = 0x80002890, (wrb) a0  <-- 0x80002c61
       0     5621        M 0x80000898 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000898
       0     5622        M 0x8000089c jalr    ra, ra, 132            #; ra  = 0x80000898, (wrb) ra  <-- 0x800008a0, goto 0x8000091c
       0     5633        M 0x8000091c addi    sp, sp, -48            #; sp  = 0x0011fef0, (wrb) sp  <-- 0x0011fec0
       0     5636        M 0x80000920 sw      ra, 12(sp)             #; sp  = 0x0011fec0, 0x800008a0 ~~> Word[0x0011fecc]
       0     5637        M 0x80000924 mv      t0, a0                 #; a0  = 0x80002c61, (wrb) t0  <-- 0x80002c61
       0     5638        M 0x80000928 sw      a7, 44(sp)             #; sp  = 0x0011fec0, 0xffff0000 ~~> Word[0x0011feec]
       0     5639        M 0x8000092c sw      a6, 40(sp)             #; sp  = 0x0011fec0, 10 ~~> Word[0x0011fee8]
       0     5648        M 0x80000930 sw      a5, 36(sp)             #; sp  = 0x0011fec0, 0x00100638 ~~> Word[0x0011fee4]
       0     5649        M 0x80000934 sw      a4, 32(sp)             #; sp  = 0x0011fec0, 800 ~~> Word[0x0011fee0]
       0     5650        M 0x80000938 sw      a3, 28(sp)             #; sp  = 0x0011fec0, 800 ~~> Word[0x0011fedc]
       0     5651        M 0x8000093c sw      a2, 24(sp)             #; sp  = 0x0011fec0, 4887 ~~> Word[0x0011fed8]
       0     5660        M 0x80000940 sw      a1, 20(sp)             #; sp  = 0x0011fec0, 719 ~~> Word[0x0011fed4]
       0     5661        M 0x80000944 addi    a0, sp, 20             #; sp  = 0x0011fec0, (wrb) a0  <-- 0x0011fed4
       0     5662        M 0x80000948 sw      a0, 8(sp)              #; sp  = 0x0011fec0, 0x0011fed4 ~~> Word[0x0011fec8]
       0     5663        M 0x8000094c auipc   a0, 0x1                #; (wrb) a0  <-- 0x8000194c
       0     5672        M 0x80000950 addi    a0, a0, -988           #; a0  = 0x8000194c, (wrb) a0  <-- 0x80001570
       0     5673        M 0x80000954 addi    a1, sp, 7              #; sp  = 0x0011fec0, (wrb) a1  <-- 0x0011fec7
       0     5674        M 0x80000958 li      a2, -1                 #; (wrb) a2  <-- -1
       0     5675        M 0x8000095c addi    a4, sp, 20             #; sp  = 0x0011fec0, (wrb) a4  <-- 0x0011fed4
       0     5684        M 0x80000960 mv      a3, t0                 #; t0  = 0x80002c61, (wrb) a3  <-- 0x80002c61
       0     5685        M 0x80000964 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000964
       0     5686        M 0x80000968 jalr    ra, ra, 20             #; ra  = 0x80000964, (wrb) ra  <-- 0x8000096c, goto 0x80000978
       0     5696        M 0x80000978 addi    sp, sp, -112           #; sp  = 0x0011fec0, (wrb) sp  <-- 0x0011fe50
       0     5697        M 0x8000097c sw      ra, 108(sp)            #; sp  = 0x0011fe50, 0x8000096c ~~> Word[0x0011febc]
       0     5708        M 0x80000980 sw      s0, 104(sp)            #; sp  = 0x0011fe50, 0 ~~> Word[0x0011feb8]
       0     5709        M 0x80000984 sw      s1, 100(sp)            #; sp  = 0x0011fe50, 0 ~~> Word[0x0011feb4]
       0     5710        M 0x80000988 sw      s2, 96(sp)             #; sp  = 0x0011fe50, 0 ~~> Word[0x0011feb0]
       0     5711        M 0x8000098c sw      s3, 92(sp)             #; sp  = 0x0011fe50, 0 ~~> Word[0x0011feac]
       0     5720        M 0x80000990 sw      s4, 88(sp)             #; sp  = 0x0011fe50, 0 ~~> Word[0x0011fea8]
       0     5721        M 0x80000994 sw      s5, 84(sp)             #; sp  = 0x0011fe50, 0 ~~> Word[0x0011fea4]
       0     5722        M 0x80000998 sw      s6, 80(sp)             #; sp  = 0x0011fe50, 0 ~~> Word[0x0011fea0]
       0     5723        M 0x8000099c sw      s7, 76(sp)             #; sp  = 0x0011fe50, 0 ~~> Word[0x0011fe9c]
       0     5732        M 0x800009a0 sw      s8, 72(sp)             #; sp  = 0x0011fe50, 0 ~~> Word[0x0011fe98]
       0     5733        M 0x800009a4 sw      s9, 68(sp)             #; sp  = 0x0011fe50, 0 ~~> Word[0x0011fe94]
       0     5734        M 0x800009a8 sw      s10, 64(sp)            #; sp  = 0x0011fe50, 0 ~~> Word[0x0011fe90]
       0     5735        M 0x800009ac sw      s11, 60(sp)            #; sp  = 0x0011fe50, 0 ~~> Word[0x0011fe8c]
       0     5744        M 0x800009b0 mv      s3, a4                 #; a4  = 0x0011fed4, (wrb) s3  <-- 0x0011fed4
       0     5745        M 0x800009b4 mv      s0, a3                 #; a3  = 0x80002c61, (wrb) s0  <-- 0x80002c61
       0     5746        M 0x800009b8 mv      s5, a2                 #; a2  = -1, (wrb) s5  <-- -1
       0     5747        M 0x800009bc mv      s4, a1                 #; a1  = 0x0011fec7, (wrb) s4  <-- 0x0011fec7
       0     5756        M 0x800009c0 beqz    a1, pc + 12            #; a1  = 0x0011fec7, not taken
       0     5757        M 0x800009c4 mv      s2, a0                 #; a0  = 0x80001570, (wrb) s2  <-- 0x80001570
       0     5758        M 0x800009c8 j       pc + 0xc               #; goto 0x800009d4
       0     5768        M 0x800009d4 li      s8, 0                  #; (wrb) s8  <-- 0
       0     5769        M 0x800009d8 li      s6, 37                 #; (wrb) s6  <-- 37
       0     5770        M 0x800009dc li      s11, 16                #; (wrb) s11 <-- 16
       0     5780        M 0x800009e0 li      s7, 46                 #; (wrb) s7  <-- 46
       0     5781        M 0x800009e4 lui     a0, 0x1                #; (wrb) a0  <-- 4096
       0     5782        M 0x800009e8 addi    a0, a0, -2048          #; a0  = 4096, (wrb) a0  <-- 2048
       0     5783        M 0x800009ec sw      a0, 24(sp)             #; sp  = 0x0011fe50, 2048 ~~> Word[0x0011fe68]
       0     5792        M 0x800009f0 lui     a0, 0x10               #; (wrb) a0  <-- 0x00010000
       0     5793        M 0x800009f4 addi    a0, a0, -1             #; a0  = 0x00010000, (wrb) a0  <-- 65535
       0     5794        M 0x800009f8 sw      a0, 16(sp)             #; sp  = 0x0011fe50, 65535 ~~> Word[0x0011fe60]
       0     5795        M 0x800009fc addi    s10, s0, 2             #; s0  = 0x80002c61, (wrb) s10 <-- 0x80002c63
       0     5804        M 0x80000a00 mv      s9, s8                 #; s8  = 0, (wrb) s9  <-- 0
       0     5805        M 0x80000a04 li      s8, 10                 #; (wrb) s8  <-- 10
       0     5806        M 0x80000a08 lbu     a0, 0(s0)              #; s0  = 0x80002c61, a0  <~~ Byte[0x80002c61]
       0     5817        M                                           #; (lsu) a0  <-- 99
       0     5818        M 0x80000a0c beqz    a0, pc + 2824          #; a0  = 99, not taken
       0     5819        M 0x80000a10 beq     a0, s6, pc + 48        #; a0  = 99, s6  = 37, not taken
       0     5820        M 0x80000a14 addi    s1, s9, 1              #; s9  = 0, (wrb) s1  <-- 1
       0     5821        M 0x80000a18 mv      a1, s4                 #; s4  = 0x0011fec7, (wrb) a1  <-- 0x0011fec7
       0     5822        M 0x80000a1c mv      a2, s9                 #; s9  = 0, (wrb) a2  <-- 0
       0     5831        M 0x80000a20 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5832        M 0x80000a24 jalr    s2                     #; s2  = 0x80001570, (wrb) ra  <-- 0x80000a28, goto 0x80001570
       0     5854        M 0x80001570 beqz    a0, pc + 168           #; a0  = 99, not taken
       0     5855        M 0x80001574 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5856        M 0x80001578 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5857        M 0x8000157c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5866        M 0x80001580 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003580
       0     5867        M 0x80001584 addi    a3, a3, -1516          #; a3  = 0x80003580, (wrb) a3  <-- 0x80002f94
       0     5868        M 0x80001588 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
       0     5869        M 0x8000158c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     5880        M                                           #; (lsu) a4  <-- 0
       0     5881        M 0x80001590 addi    a5, a4, 1              #; a4  = 0, (wrb) a5  <-- 1
       0     5882        M 0x80001594 sw      a5, 0(a1)              #; a1  = 0x80002f94, 1 ~~> Word[0x80002f94]
       0     5883        M 0x80001598 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 0, (wrb) a4  <-- 0x80002f94
       0     5884        M 0x8000159c sb      a0, 72(a4)             #; a4  = 0x80002f94, 99 ~~> Byte[0x80002fdc]
       0     5890        M 0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     5906        M                                           #; (lsu) a4  <-- 1
       0     5907        M 0x800015a4 addi    a4, a4, -1020          #; a4  = 1, (wrb) a4  <-- -1019
       0     5908        M 0x800015a8 snez    a4, a4                 #; a4  = -1019, (wrb) a4  <-- 1
       0     5909        M 0x800015ac addi    a0, a0, -10            #; a0  = 99, (wrb) a0  <-- 89
       0     5910        M 0x800015b0 snez    a0, a0                 #; a0  = 89, (wrb) a0  <-- 1
       0     5911        M 0x800015b4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5912        M 0x800015b8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001618
       0     5933        M 0x80001618 ret                            #; ra  = 0x80000a28, goto 0x80000a28
       0     5947        M 0x80000a28 addi    s0, s0, 1              #; s0  = 0x80002c61, (wrb) s0  <-- 0x80002c62
       0     5948        M 0x80000a2c addi    s10, s10, 1            #; s10 = 0x80002c63, (wrb) s10 <-- 0x80002c64
       0     5950        M 0x80000a30 mv      s9, s1                 #; s1  = 1, (wrb) s9  <-- 1
       0     5951        M 0x80000a34 lbu     a0, 0(s0)              #; s0  = 0x80002c62, a0  <~~ Byte[0x80002c62]
       0     5962        M                                           #; (lsu) a0  <-- 121
       0     5963        M 0x80000a38 bnez    a0, pc - 40            #; a0  = 121, taken, goto 0x80000a10
       0     5964        M 0x80000a10 beq     a0, s6, pc + 48        #; a0  = 121, s6  = 37, not taken
       0     5965        M 0x80000a14 addi    s1, s9, 1              #; s9  = 1, (wrb) s1  <-- 2
       0     5966        M 0x80000a18 mv      a1, s4                 #; s4  = 0x0011fec7, (wrb) a1  <-- 0x0011fec7
       0     5967        M 0x80000a1c mv      a2, s9                 #; s9  = 1, (wrb) a2  <-- 1
       0     5968        M 0x80000a20 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5969        M 0x80000a24 jalr    s2                     #; s2  = 0x80001570, (wrb) ra  <-- 0x80000a28, goto 0x80001570
       0     5972        M 0x80001570 beqz    a0, pc + 168           #; a0  = 121, not taken
       0     5973        M 0x80001574 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5974        M 0x80001578 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5975        M 0x8000157c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5976        M 0x80001580 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003580
       0     5977        M 0x80001584 addi    a3, a3, -1516          #; a3  = 0x80003580, (wrb) a3  <-- 0x80002f94
       0     5978        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5979        M 0x80001588 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
       0     5980        M 0x8000158c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     5991        M                                           #; (lsu) a4  <-- 1
       0     5992        M 0x80001590 addi    a5, a4, 1              #; a4  = 1, (wrb) a5  <-- 2
       0     5993        M 0x80001594 sw      a5, 0(a1)              #; a1  = 0x80002f94, 2 ~~> Word[0x80002f94]
       0     5994        M 0x80001598 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 1, (wrb) a4  <-- 0x80002f95
       0     5995        M 0x8000159c sb      a0, 72(a4)             #; a4  = 0x80002f95, 121 ~~> Byte[0x80002fdd]
       0     5996        M 0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     6017        M                                           #; (lsu) a4  <-- 2
       0     6018        M 0x800015a4 addi    a4, a4, -1020          #; a4  = 2, (wrb) a4  <-- -1018
       0     6019        M 0x800015a8 snez    a4, a4                 #; a4  = -1018, (wrb) a4  <-- 1
       0     6020        M 0x800015ac addi    a0, a0, -10            #; a0  = 121, (wrb) a0  <-- 111
       0     6021        M 0x800015b0 snez    a0, a0                 #; a0  = 111, (wrb) a0  <-- 1
       0     6022        M 0x800015b4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     6023        M 0x800015b8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001618
       0     6026        M 0x80001618 ret                            #; ra  = 0x80000a28, goto 0x80000a28
       0     6031        M 0x80000a28 addi    s0, s0, 1              #; s0  = 0x80002c62, (wrb) s0  <-- 0x80002c63
       0     6032        M 0x80000a2c addi    s10, s10, 1            #; s10 = 0x80002c64, (wrb) s10 <-- 0x80002c65
       0     6034        M 0x80000a30 mv      s9, s1                 #; s1  = 2, (wrb) s9  <-- 2
       0     6035        M 0x80000a34 lbu     a0, 0(s0)              #; s0  = 0x80002c63, a0  <~~ Byte[0x80002c63]
       0     6046        M                                           #; (lsu) a0  <-- 99
       0     6047        M 0x80000a38 bnez    a0, pc - 40            #; a0  = 99, taken, goto 0x80000a10
       0     6048        M 0x80000a10 beq     a0, s6, pc + 48        #; a0  = 99, s6  = 37, not taken
       0     6049        M 0x80000a14 addi    s1, s9, 1              #; s9  = 2, (wrb) s1  <-- 3
       0     6050        M 0x80000a18 mv      a1, s4                 #; s4  = 0x0011fec7, (wrb) a1  <-- 0x0011fec7
       0     6051        M 0x80000a1c mv      a2, s9                 #; s9  = 2, (wrb) a2  <-- 2
       0     6052        M 0x80000a20 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     6053        M 0x80000a24 jalr    s2                     #; s2  = 0x80001570, (wrb) ra  <-- 0x80000a28, goto 0x80001570
       0     6056        M 0x80001570 beqz    a0, pc + 168           #; a0  = 99, not taken
       0     6057        M 0x80001574 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6058        M 0x80001578 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     6059        M 0x8000157c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     6060        M 0x80001580 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003580
       0     6061        M 0x80001584 addi    a3, a3, -1516          #; a3  = 0x80003580, (wrb) a3  <-- 0x80002f94
       0     6062        M                                           #; (acc) a1  <-- 0x00d605b3
       0     6063        M 0x80001588 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
       0     6064        M 0x8000158c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     6075        M                                           #; (lsu) a4  <-- 2
       0     6076        M 0x80001590 addi    a5, a4, 1              #; a4  = 2, (wrb) a5  <-- 3
       0     6077        M 0x80001594 sw      a5, 0(a1)              #; a1  = 0x80002f94, 3 ~~> Word[0x80002f94]
       0     6078        M 0x80001598 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 2, (wrb) a4  <-- 0x80002f96
       0     6079        M 0x8000159c sb      a0, 72(a4)             #; a4  = 0x80002f96, 99 ~~> Byte[0x80002fde]
       0     6080        M 0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     6101        M                                           #; (lsu) a4  <-- 3
       0     6102        M 0x800015a4 addi    a4, a4, -1020          #; a4  = 3, (wrb) a4  <-- -1017
       0     6103        M 0x800015a8 snez    a4, a4                 #; a4  = -1017, (wrb) a4  <-- 1
       0     6104        M 0x800015ac addi    a0, a0, -10            #; a0  = 99, (wrb) a0  <-- 89
       0     6105        M 0x800015b0 snez    a0, a0                 #; a0  = 89, (wrb) a0  <-- 1
       0     6106        M 0x800015b4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     6107        M 0x800015b8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001618
       0     6110        M 0x80001618 ret                            #; ra  = 0x80000a28, goto 0x80000a28
       0     6115        M 0x80000a28 addi    s0, s0, 1              #; s0  = 0x80002c63, (wrb) s0  <-- 0x80002c64
       0     6116        M 0x80000a2c addi    s10, s10, 1            #; s10 = 0x80002c65, (wrb) s10 <-- 0x80002c66
       0     6118        M 0x80000a30 mv      s9, s1                 #; s1  = 3, (wrb) s9  <-- 3
       0     6119        M 0x80000a34 lbu     a0, 0(s0)              #; s0  = 0x80002c64, a0  <~~ Byte[0x80002c64]
       0     6130        M                                           #; (lsu) a0  <-- 108
       0     6131        M 0x80000a38 bnez    a0, pc - 40            #; a0  = 108, taken, goto 0x80000a10
       0     6132        M 0x80000a10 beq     a0, s6, pc + 48        #; a0  = 108, s6  = 37, not taken
       0     6133        M 0x80000a14 addi    s1, s9, 1              #; s9  = 3, (wrb) s1  <-- 4
       0     6134        M 0x80000a18 mv      a1, s4                 #; s4  = 0x0011fec7, (wrb) a1  <-- 0x0011fec7
       0     6135        M 0x80000a1c mv      a2, s9                 #; s9  = 3, (wrb) a2  <-- 3
       0     6136        M 0x80000a20 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     6137        M 0x80000a24 jalr    s2                     #; s2  = 0x80001570, (wrb) ra  <-- 0x80000a28, goto 0x80001570
       0     6140        M 0x80001570 beqz    a0, pc + 168           #; a0  = 108, not taken
       0     6141        M 0x80001574 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6142        M 0x80001578 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     6143        M 0x8000157c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     6144        M 0x80001580 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003580
       0     6145        M 0x80001584 addi    a3, a3, -1516          #; a3  = 0x80003580, (wrb) a3  <-- 0x80002f94
       0     6146        M                                           #; (acc) a1  <-- 0x00d605b3
       0     6147        M 0x80001588 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
       0     6148        M 0x8000158c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     6159        M                                           #; (lsu) a4  <-- 3
       0     6160        M 0x80001590 addi    a5, a4, 1              #; a4  = 3, (wrb) a5  <-- 4
       0     6161        M 0x80001594 sw      a5, 0(a1)              #; a1  = 0x80002f94, 4 ~~> Word[0x80002f94]
       0     6162        M 0x80001598 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 3, (wrb) a4  <-- 0x80002f97
       0     6163        M 0x8000159c sb      a0, 72(a4)             #; a4  = 0x80002f97, 108 ~~> Byte[0x80002fdf]
       0     6164        M 0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     6185        M                                           #; (lsu) a4  <-- 4
       0     6186        M 0x800015a4 addi    a4, a4, -1020          #; a4  = 4, (wrb) a4  <-- -1016
       0     6187        M 0x800015a8 snez    a4, a4                 #; a4  = -1016, (wrb) a4  <-- 1
       0     6188        M 0x800015ac addi    a0, a0, -10            #; a0  = 108, (wrb) a0  <-- 98
       0     6189        M 0x800015b0 snez    a0, a0                 #; a0  = 98, (wrb) a0  <-- 1
       0     6190        M 0x800015b4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     6191        M 0x800015b8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001618
       0     6194        M 0x80001618 ret                            #; ra  = 0x80000a28, goto 0x80000a28
       0     6199        M 0x80000a28 addi    s0, s0, 1              #; s0  = 0x80002c64, (wrb) s0  <-- 0x80002c65
       0     6200        M 0x80000a2c addi    s10, s10, 1            #; s10 = 0x80002c66, (wrb) s10 <-- 0x80002c67
       0     6202        M 0x80000a30 mv      s9, s1                 #; s1  = 4, (wrb) s9  <-- 4
       0     6203        M 0x80000a34 lbu     a0, 0(s0)              #; s0  = 0x80002c65, a0  <~~ Byte[0x80002c65]
       0     6214        M                                           #; (lsu) a0  <-- 101
       0     6215        M 0x80000a38 bnez    a0, pc - 40            #; a0  = 101, taken, goto 0x80000a10
       0     6216        M 0x80000a10 beq     a0, s6, pc + 48        #; a0  = 101, s6  = 37, not taken
       0     6217        M 0x80000a14 addi    s1, s9, 1              #; s9  = 4, (wrb) s1  <-- 5
       0     6218        M 0x80000a18 mv      a1, s4                 #; s4  = 0x0011fec7, (wrb) a1  <-- 0x0011fec7
       0     6219        M 0x80000a1c mv      a2, s9                 #; s9  = 4, (wrb) a2  <-- 4
       0     6220        M 0x80000a20 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     6221        M 0x80000a24 jalr    s2                     #; s2  = 0x80001570, (wrb) ra  <-- 0x80000a28, goto 0x80001570
       0     6224        M 0x80001570 beqz    a0, pc + 168           #; a0  = 101, not taken
       0     6225        M 0x80001574 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6226        M 0x80001578 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     6227        M 0x8000157c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     6228        M 0x80001580 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003580
       0     6229        M 0x80001584 addi    a3, a3, -1516          #; a3  = 0x80003580, (wrb) a3  <-- 0x80002f94
       0     6230        M                                           #; (acc) a1  <-- 0x00d605b3
       0     6231        M 0x80001588 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
       0     6232        M 0x8000158c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     6243        M                                           #; (lsu) a4  <-- 4
       0     6244        M 0x80001590 addi    a5, a4, 1              #; a4  = 4, (wrb) a5  <-- 5
       0     6245        M 0x80001594 sw      a5, 0(a1)              #; a1  = 0x80002f94, 5 ~~> Word[0x80002f94]
       0     6246        M 0x80001598 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 4, (wrb) a4  <-- 0x80002f98
       0     6247        M 0x8000159c sb      a0, 72(a4)             #; a4  = 0x80002f98, 101 ~~> Byte[0x80002fe0]
       0     6248        M 0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     6269        M                                           #; (lsu) a4  <-- 5
       0     6270        M 0x800015a4 addi    a4, a4, -1020          #; a4  = 5, (wrb) a4  <-- -1015
       0     6271        M 0x800015a8 snez    a4, a4                 #; a4  = -1015, (wrb) a4  <-- 1
       0     6272        M 0x800015ac addi    a0, a0, -10            #; a0  = 101, (wrb) a0  <-- 91
       0     6273        M 0x800015b0 snez    a0, a0                 #; a0  = 91, (wrb) a0  <-- 1
       0     6274        M 0x800015b4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     6275        M 0x800015b8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001618
       0     6278        M 0x80001618 ret                            #; ra  = 0x80000a28, goto 0x80000a28
       0     6283        M 0x80000a28 addi    s0, s0, 1              #; s0  = 0x80002c65, (wrb) s0  <-- 0x80002c66
       0     6284        M 0x80000a2c addi    s10, s10, 1            #; s10 = 0x80002c67, (wrb) s10 <-- 0x80002c68
       0     6286        M 0x80000a30 mv      s9, s1                 #; s1  = 5, (wrb) s9  <-- 5
       0     6287        M 0x80000a34 lbu     a0, 0(s0)              #; s0  = 0x80002c66, a0  <~~ Byte[0x80002c66]
       0     6298        M                                           #; (lsu) a0  <-- 115
       0     6299        M 0x80000a38 bnez    a0, pc - 40            #; a0  = 115, taken, goto 0x80000a10
       0     6300        M 0x80000a10 beq     a0, s6, pc + 48        #; a0  = 115, s6  = 37, not taken
       0     6301        M 0x80000a14 addi    s1, s9, 1              #; s9  = 5, (wrb) s1  <-- 6
       0     6302        M 0x80000a18 mv      a1, s4                 #; s4  = 0x0011fec7, (wrb) a1  <-- 0x0011fec7
       0     6303        M 0x80000a1c mv      a2, s9                 #; s9  = 5, (wrb) a2  <-- 5
       0     6304        M 0x80000a20 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     6305        M 0x80000a24 jalr    s2                     #; s2  = 0x80001570, (wrb) ra  <-- 0x80000a28, goto 0x80001570
       0     6308        M 0x80001570 beqz    a0, pc + 168           #; a0  = 115, not taken
       0     6309        M 0x80001574 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6310        M 0x80001578 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     6311        M 0x8000157c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     6312        M 0x80001580 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003580
       0     6313        M 0x80001584 addi    a3, a3, -1516          #; a3  = 0x80003580, (wrb) a3  <-- 0x80002f94
       0     6314        M                                           #; (acc) a1  <-- 0x00d605b3
       0     6315        M 0x80001588 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
       0     6316        M 0x8000158c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     6327        M                                           #; (lsu) a4  <-- 5
       0     6328        M 0x80001590 addi    a5, a4, 1              #; a4  = 5, (wrb) a5  <-- 6
       0     6329        M 0x80001594 sw      a5, 0(a1)              #; a1  = 0x80002f94, 6 ~~> Word[0x80002f94]
       0     6330        M 0x80001598 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 5, (wrb) a4  <-- 0x80002f99
       0     6331        M 0x8000159c sb      a0, 72(a4)             #; a4  = 0x80002f99, 115 ~~> Byte[0x80002fe1]
       0     6332        M 0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     6353        M                                           #; (lsu) a4  <-- 6
       0     6354        M 0x800015a4 addi    a4, a4, -1020          #; a4  = 6, (wrb) a4  <-- -1014
       0     6355        M 0x800015a8 snez    a4, a4                 #; a4  = -1014, (wrb) a4  <-- 1
       0     6356        M 0x800015ac addi    a0, a0, -10            #; a0  = 115, (wrb) a0  <-- 105
       0     6357        M 0x800015b0 snez    a0, a0                 #; a0  = 105, (wrb) a0  <-- 1
       0     6358        M 0x800015b4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     6359        M 0x800015b8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001618
       0     6362        M 0x80001618 ret                            #; ra  = 0x80000a28, goto 0x80000a28
       0     6367        M 0x80000a28 addi    s0, s0, 1              #; s0  = 0x80002c66, (wrb) s0  <-- 0x80002c67
       0     6368        M 0x80000a2c addi    s10, s10, 1            #; s10 = 0x80002c68, (wrb) s10 <-- 0x80002c69
       0     6370        M 0x80000a30 mv      s9, s1                 #; s1  = 6, (wrb) s9  <-- 6
       0     6371        M 0x80000a34 lbu     a0, 0(s0)              #; s0  = 0x80002c67, a0  <~~ Byte[0x80002c67]
       0     6382        M                                           #; (lsu) a0  <-- 32
       0     6383        M 0x80000a38 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000a10
       0     6384        M 0x80000a10 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     6385        M 0x80000a14 addi    s1, s9, 1              #; s9  = 6, (wrb) s1  <-- 7
       0     6386        M 0x80000a18 mv      a1, s4                 #; s4  = 0x0011fec7, (wrb) a1  <-- 0x0011fec7
       0     6387        M 0x80000a1c mv      a2, s9                 #; s9  = 6, (wrb) a2  <-- 6
       0     6388        M 0x80000a20 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     6389        M 0x80000a24 jalr    s2                     #; s2  = 0x80001570, (wrb) ra  <-- 0x80000a28, goto 0x80001570
       0     6392        M 0x80001570 beqz    a0, pc + 168           #; a0  = 32, not taken
       0     6393        M 0x80001574 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6394        M 0x80001578 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     6395        M 0x8000157c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     6396        M 0x80001580 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003580
       0     6397        M 0x80001584 addi    a3, a3, -1516          #; a3  = 0x80003580, (wrb) a3  <-- 0x80002f94
       0     6398        M                                           #; (acc) a1  <-- 0x00d605b3
       0     6399        M 0x80001588 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
       0     6400        M 0x8000158c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     6411        M                                           #; (lsu) a4  <-- 6
       0     6412        M 0x80001590 addi    a5, a4, 1              #; a4  = 6, (wrb) a5  <-- 7
       0     6413        M 0x80001594 sw      a5, 0(a1)              #; a1  = 0x80002f94, 7 ~~> Word[0x80002f94]
       0     6414        M 0x80001598 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 6, (wrb) a4  <-- 0x80002f9a
       0     6415        M 0x8000159c sb      a0, 72(a4)             #; a4  = 0x80002f9a, 32 ~~> Byte[0x80002fe2]
       0     6416        M 0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     6437        M                                           #; (lsu) a4  <-- 7
       0     6438        M 0x800015a4 addi    a4, a4, -1020          #; a4  = 7, (wrb) a4  <-- -1013
       0     6439        M 0x800015a8 snez    a4, a4                 #; a4  = -1013, (wrb) a4  <-- 1
       0     6440        M 0x800015ac addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
       0     6441        M 0x800015b0 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
       0     6442        M 0x800015b4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     6443        M 0x800015b8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001618
       0     6446        M 0x80001618 ret                            #; ra  = 0x80000a28, goto 0x80000a28
       0     6451        M 0x80000a28 addi    s0, s0, 1              #; s0  = 0x80002c67, (wrb) s0  <-- 0x80002c68
       0     6452        M 0x80000a2c addi    s10, s10, 1            #; s10 = 0x80002c69, (wrb) s10 <-- 0x80002c6a
       0     6454        M 0x80000a30 mv      s9, s1                 #; s1  = 7, (wrb) s9  <-- 7
       0     6455        M 0x80000a34 lbu     a0, 0(s0)              #; s0  = 0x80002c68, a0  <~~ Byte[0x80002c68]
       0     6466        M                                           #; (lsu) a0  <-- 61
       0     6467        M 0x80000a38 bnez    a0, pc - 40            #; a0  = 61, taken, goto 0x80000a10
       0     6468        M 0x80000a10 beq     a0, s6, pc + 48        #; a0  = 61, s6  = 37, not taken
       0     6469        M 0x80000a14 addi    s1, s9, 1              #; s9  = 7, (wrb) s1  <-- 8
       0     6470        M 0x80000a18 mv      a1, s4                 #; s4  = 0x0011fec7, (wrb) a1  <-- 0x0011fec7
       0     6471        M 0x80000a1c mv      a2, s9                 #; s9  = 7, (wrb) a2  <-- 7
       0     6472        M 0x80000a20 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     6473        M 0x80000a24 jalr    s2                     #; s2  = 0x80001570, (wrb) ra  <-- 0x80000a28, goto 0x80001570
       0     6476        M 0x80001570 beqz    a0, pc + 168           #; a0  = 61, not taken
       0     6477        M 0x80001574 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6478        M 0x80001578 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     6479        M 0x8000157c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     6480        M 0x80001580 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003580
       0     6481        M 0x80001584 addi    a3, a3, -1516          #; a3  = 0x80003580, (wrb) a3  <-- 0x80002f94
       0     6482        M                                           #; (acc) a1  <-- 0x00d605b3
       0     6483        M 0x80001588 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
       0     6484        M 0x8000158c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     6495        M                                           #; (lsu) a4  <-- 7
       0     6496        M 0x80001590 addi    a5, a4, 1              #; a4  = 7, (wrb) a5  <-- 8
       0     6497        M 0x80001594 sw      a5, 0(a1)              #; a1  = 0x80002f94, 8 ~~> Word[0x80002f94]
       0     6498        M 0x80001598 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 7, (wrb) a4  <-- 0x80002f9b
       0     6499        M 0x8000159c sb      a0, 72(a4)             #; a4  = 0x80002f9b, 61 ~~> Byte[0x80002fe3]
       0     6500        M 0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     6521        M                                           #; (lsu) a4  <-- 8
       0     6522        M 0x800015a4 addi    a4, a4, -1020          #; a4  = 8, (wrb) a4  <-- -1012
       0     6523        M 0x800015a8 snez    a4, a4                 #; a4  = -1012, (wrb) a4  <-- 1
       0     6524        M 0x800015ac addi    a0, a0, -10            #; a0  = 61, (wrb) a0  <-- 51
       0     6525        M 0x800015b0 snez    a0, a0                 #; a0  = 51, (wrb) a0  <-- 1
       0     6526        M 0x800015b4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     6527        M 0x800015b8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001618
       0     6530        M 0x80001618 ret                            #; ra  = 0x80000a28, goto 0x80000a28
       0     6535        M 0x80000a28 addi    s0, s0, 1              #; s0  = 0x80002c68, (wrb) s0  <-- 0x80002c69
       0     6536        M 0x80000a2c addi    s10, s10, 1            #; s10 = 0x80002c6a, (wrb) s10 <-- 0x80002c6b
       0     6538        M 0x80000a30 mv      s9, s1                 #; s1  = 8, (wrb) s9  <-- 8
       0     6539        M 0x80000a34 lbu     a0, 0(s0)              #; s0  = 0x80002c69, a0  <~~ Byte[0x80002c69]
       0     6550        M                                           #; (lsu) a0  <-- 32
       0     6551        M 0x80000a38 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000a10
       0     6552        M 0x80000a10 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     6553        M 0x80000a14 addi    s1, s9, 1              #; s9  = 8, (wrb) s1  <-- 9
       0     6554        M 0x80000a18 mv      a1, s4                 #; s4  = 0x0011fec7, (wrb) a1  <-- 0x0011fec7
       0     6555        M 0x80000a1c mv      a2, s9                 #; s9  = 8, (wrb) a2  <-- 8
       0     6556        M 0x80000a20 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     6557        M 0x80000a24 jalr    s2                     #; s2  = 0x80001570, (wrb) ra  <-- 0x80000a28, goto 0x80001570
       0     6560        M 0x80001570 beqz    a0, pc + 168           #; a0  = 32, not taken
       0     6561        M 0x80001574 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6562        M 0x80001578 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     6563        M 0x8000157c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     6564        M 0x80001580 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003580
       0     6565        M 0x80001584 addi    a3, a3, -1516          #; a3  = 0x80003580, (wrb) a3  <-- 0x80002f94
       0     6566        M                                           #; (acc) a1  <-- 0x00d605b3
       0     6567        M 0x80001588 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
       0     6568        M 0x8000158c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     6579        M                                           #; (lsu) a4  <-- 8
       0     6580        M 0x80001590 addi    a5, a4, 1              #; a4  = 8, (wrb) a5  <-- 9
       0     6581        M 0x80001594 sw      a5, 0(a1)              #; a1  = 0x80002f94, 9 ~~> Word[0x80002f94]
       0     6582        M 0x80001598 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 8, (wrb) a4  <-- 0x80002f9c
       0     6583        M 0x8000159c sb      a0, 72(a4)             #; a4  = 0x80002f9c, 32 ~~> Byte[0x80002fe4]
       0     6584        M 0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     6605        M                                           #; (lsu) a4  <-- 9
       0     6606        M 0x800015a4 addi    a4, a4, -1020          #; a4  = 9, (wrb) a4  <-- -1011
       0     6607        M 0x800015a8 snez    a4, a4                 #; a4  = -1011, (wrb) a4  <-- 1
       0     6608        M 0x800015ac addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
       0     6609        M 0x800015b0 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
       0     6610        M 0x800015b4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     6611        M 0x800015b8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001618
       0     6614        M 0x80001618 ret                            #; ra  = 0x80000a28, goto 0x80000a28
       0     6619        M 0x80000a28 addi    s0, s0, 1              #; s0  = 0x80002c69, (wrb) s0  <-- 0x80002c6a
       0     6620        M 0x80000a2c addi    s10, s10, 1            #; s10 = 0x80002c6b, (wrb) s10 <-- 0x80002c6c
       0     6622        M 0x80000a30 mv      s9, s1                 #; s1  = 9, (wrb) s9  <-- 9
       0     6623        M 0x80000a34 lbu     a0, 0(s0)              #; s0  = 0x80002c6a, a0  <~~ Byte[0x80002c6a]
       0     6634        M                                           #; (lsu) a0  <-- 37
       0     6635        M 0x80000a38 bnez    a0, pc - 40            #; a0  = 37, taken, goto 0x80000a10
       0     6636        M 0x80000a10 beq     a0, s6, pc + 48        #; a0  = 37, s6  = 37, taken, goto 0x80000a40
       0     6648        M 0x80000a40 li      s0, 0                  #; (wrb) s0  <-- 0
       0     6649        M 0x80000a44 j       pc + 0x10              #; goto 0x80000a54
       0     6660        M 0x80000a54 lbu     a0, -1(s10)            #; s10 = 0x80002c6c, a0  <~~ Byte[0x80002c6b]
       0     6671        M                                           #; (lsu) a0  <-- 108
       0     6672        M 0x80000a58 addi    a1, a0, -32            #; a0  = 108, (wrb) a1  <-- 76
       0     6673        M 0x80000a5c bltu    s11, a1, pc + 56       #; s11 = 16, a1  = 76, taken, goto 0x80000a94
       0     6685        M 0x80000a94 addi    a1, a0, -48            #; a0  = 108, (wrb) a1  <-- 60
       0     6686        M 0x80000a98 andi    a2, a1, 255            #; a1  = 60, (wrb) a2  <-- 60
       0     6687        M 0x80000a9c addi    a1, s10, -1            #; s10 = 0x80002c6c, (wrb) a1  <-- 0x80002c6b
       0     6697        M 0x80000aa0 li      a3, 9                  #; (wrb) a3  <-- 9
       0     6698        M 0x80000aa4 bltu    a3, a2, pc + 124       #; a3  = 9, a2  = 60, taken, goto 0x80000b20
       0     6720        M 0x80000b20 li      a2, 42                 #; (wrb) a2  <-- 42
       0     6721        M 0x80000b24 bne     a0, a2, pc + 80        #; a0  = 108, a2  = 42, taken, goto 0x80000b74
       0     6743        M 0x80000b74 li      s6, 0                  #; (wrb) s6  <-- 0
       0     6744        M 0x80000b78 mv      s10, a1                #; a1  = 0x80002c6b, (wrb) s10 <-- 0x80002c6b
       0     6745        M 0x80000b7c beq     a0, s7, pc - 164       #; a0  = 108, s7  = 46, not taken
       0     6766        M 0x80000b80 li      s7, 0                  #; (wrb) s7  <-- 0
       0     6767        M 0x80000b84 j       pc + 0xc               #; goto 0x80000b90
       0     6778        M 0x80000b90 addi    a1, a0, -104           #; a0  = 108, (wrb) a1  <-- 4
       0     6779        M 0x80000b94 srli    a2, a1, 1              #; a1  = 4, (wrb) a2  <-- 2
       0     6780        M 0x80000b98 slli    a1, a1, 31             #; a1  = 4, (wrb) a1  <-- 0
       0     6781        M 0x80000b9c or      a1, a1, a2             #; a1  = 0, a2  = 2, (wrb) a1  <-- 2
       0     6790        M 0x80000ba0 li      a2, 9                  #; (wrb) a2  <-- 9
       0     6791        M 0x80000ba4 bltu    a2, a1, pc + 100       #; a2  = 9, a1  = 2, not taken
       0     6792        M 0x80000ba8 slli    a1, a1, 2              #; a1  = 2, (wrb) a1  <-- 8
       0     6793        M 0x80000bac auipc   a2, 0x2                #; (wrb) a2  <-- 0x80002bac
       0     6802        M 0x80000bb0 addi    a2, a2, 268            #; a2  = 0x80002bac, (wrb) a2  <-- 0x80002cb8
       0     6803        M 0x80000bb4 add     a1, a1, a2             #; a1  = 8, a2  = 0x80002cb8, (wrb) a1  <-- 0x80002cc0
       0     6804        M 0x80000bb8 lw      a3, 0(a1)              #; a1  = 0x80002cc0, a3  <~~ Word[0x80002cc0]
       0     6805        M 0x80000bbc li      a1, 1                  #; (wrb) a1  <-- 1
       0     6814        M 0x80000bc0 li      a2, 256                #; (wrb) a2  <-- 256
       0     6815        M                                           #; (lsu) a3  <-- 0x80000be8
       0     6816        M 0x80000bc4 jr      a3                     #; a3  = 0x80000be8, goto 0x80000be8
       0     6837        M 0x80000be8 lbu     a0, 1(s10)             #; s10 = 0x80002c6b, a0  <~~ Byte[0x80002c6c]
       0     6838        M 0x80000bec li      a1, 108                #; (wrb) a1  <-- 108
       0     6848        M                                           #; (lsu) a0  <-- 117
       0     6849        M 0x80000bf0 bne     a0, a1, pc + 272       #; a0  = 117, a1  = 108, taken, goto 0x80000d00
       0     6872        M 0x80000d00 ori     s0, s0, 256            #; s0  = 0, (wrb) s0  <-- 256
       0     6873        M 0x80000d04 addi    s10, s10, 1            #; s10 = 0x80002c6b, (wrb) s10 <-- 0x80002c6c
       0     6874        M 0x80000d08 j       pc - 0x100             #; goto 0x80000c08
       0     6875        M 0x80000c08 addi    a1, a0, -37            #; a0  = 117, (wrb) a1  <-- 80
       0     6876        M 0x80000c0c li      a2, 83                 #; (wrb) a2  <-- 83
       0     6887        M 0x80000c10 bltu    a2, a1, pc + 264       #; a2  = 83, a1  = 80, not taken
       0     6888        M 0x80000c14 slli    a1, a1, 2              #; a1  = 80, (wrb) a1  <-- 320
       0     6889        M 0x80000c18 auipc   a2, 0x2                #; (wrb) a2  <-- 0x80002c18
       0     6890        M 0x80000c1c addi    a2, a2, 200            #; a2  = 0x80002c18, (wrb) a2  <-- 0x80002ce0
       0     6899        M 0x80000c20 add     a1, a1, a2             #; a1  = 320, a2  = 0x80002ce0, (wrb) a1  <-- 0x80002e20
       0     6900        M 0x80000c24 lw      a2, 0(a1)              #; a1  = 0x80002e20, a2  <~~ Word[0x80002e20]
       0     6901        M 0x80000c28 li      a1, 8                  #; (wrb) a1  <-- 8
       0     6902        M 0x80000c2c li      s8, 16                 #; (wrb) s8  <-- 16
       0     6911        M                                           #; (lsu) a2  <-- 0x80000c34
       0     6912        M 0x80000c30 jr      a2                     #; a2  = 0x80000c34
       0     6913        M 0x80000c34 andi    s0, s0, -17            #; s0  = 256, (wrb) s0  <-- 256
       0     6914        M 0x80000c38 li      s8, 10                 #; (wrb) s8  <-- 10
       0     6915        M 0x80000c3c li      a1, 88                 #; (wrb) a1  <-- 88
       0     6923        M 0x80000c40 bne     a0, a1, pc + 8         #; a0  = 117, a1  = 88, taken, goto 0x80000c48
       0     6924        M 0x80000c48 li      a1, 100                #; (wrb) a1  <-- 100
       0     6925        M 0x80000c4c beq     a0, a1, pc + 240       #; a0  = 117, a1  = 100, not taken
       0     6935        M 0x80000c50 mv      a1, s8                 #; s8  = 10, (wrb) a1  <-- 10
       0     6936        M 0x80000c54 li      a2, 105                #; (wrb) a2  <-- 105
       0     6937        M 0x80000c58 beq     a0, a2, pc + 228       #; a0  = 117, a2  = 105, not taken
       0     6938        M 0x80000c5c j       pc + 0xd8              #; goto 0x80000d34
       0     6947        M 0x80000d34 andi    s0, s0, -13            #; s0  = 256, (wrb) s0  <-- 256
       0     6948        M 0x80000d38 mv      s8, a1                 #; a1  = 10, (wrb) s8  <-- 10
       0     6949        M 0x80000d3c andi    a1, s0, 1024           #; s0  = 256, (wrb) a1  <-- 0
       0     6959        M 0x80000d40 beqz    a1, pc + 8             #; a1  = 0, taken, goto 0x80000d48
       0     6960        M 0x80000d48 li      a1, 105                #; (wrb) a1  <-- 105
       0     6961        M 0x80000d4c beq     a0, a1, pc + 12        #; a0  = 117, a1  = 105, not taken
       0     6971        M 0x80000d50 li      a1, 100                #; (wrb) a1  <-- 100
       0     6972        M 0x80000d54 bne     a0, a1, pc + 312       #; a0  = 117, a1  = 100, taken, goto 0x80000e8c
       0     6994        M 0x80000e8c andi    a0, s0, 512            #; s0  = 256, (wrb) a0  <-- 0
       0     7006        M 0x80000e90 bnez    a0, pc + 196           #; a0  = 0, not taken
       0     7007        M 0x80000e94 andi    a0, s0, 256            #; s0  = 256, (wrb) a0  <-- 256
       0     7008        M 0x80000e98 bnez    a0, pc + 1148          #; a0  = 256, taken, goto 0x80001314
       0     7029        M 0x80001314 lw      a0, 0(s3)              #; s3  = 0x0011fed4, a0  <~~ Word[0x0011fed4]
       0     7032        M                                           #; (lsu) a0  <-- 719
       0     7033        M 0x80001318 bnez    a0, pc + 8             #; a0  = 719, taken, goto 0x80001320
       0     7041        M 0x80001320 seqz    a1, a0                 #; a0  = 719, (wrb) a1  <-- 0
       0     7042        M 0x80001324 andi    a2, s0, 1024           #; s0  = 256, (wrb) a2  <-- 0
       0     7043        M 0x80001328 srli    a2, a2, 10             #; a2  = 0, (wrb) a2  <-- 0
       0     7044        M 0x8000132c and     a1, a1, a2             #; a1  = 0, a2  = 0, (wrb) a1  <-- 0
       0     7053        M 0x80001330 li      a5, 0                  #; (wrb) a5  <-- 0
       0     7054        M 0x80001334 bnez    a1, pc + 248           #; a1  = 0, not taken
       0     7055        M 0x80001338 li      a2, 0                  #; (wrb) a2  <-- 0
       0     7056        M 0x8000133c andi    a1, s0, 32             #; s0  = 256, (wrb) a1  <-- 0
       0     7065        M 0x80001340 xori    a1, a1, 97             #; a1  = 0, (wrb) a1  <-- 97
       0     7066        M 0x80001344 addi    a6, a1, 246            #; a1  = 97, (wrb) a6  <-- 343
       0     7067        M 0x80001348 j       pc + 0x34              #; goto 0x8000137c
       0     7077        M 0x8000137c divu    a3, a0, s8             #; a0  = 719, s8  = 10
       0     7089        M 0x80001380 mul     a4, a3, s8             #; a3  = 71, s8  = 10
       0     7092        M                                           #; (acc) a4  <-- 0x40e50733
       0     7093        M 0x80001384 sub     a4, a0, a4             #; a0  = 719, a4  = 710, (wrb) a4  <-- 9
       0     7094        M 0x80001388 andi    s1, a4, 254            #; a4  = 9, (wrb) s1  <-- 8
       0     7095        M 0x8000138c li      a5, 48                 #; (wrb) a5  <-- 48
       0     7101        M 0x80001390 li      a1, 10                 #; (wrb) a1  <-- 10
       0     7102        M 0x80001394 bltu    s1, a1, pc - 72        #; s1  = 8, a1  = 10, taken, goto 0x8000134c
       0     7103        M 0x8000134c add     a4, a5, a4             #; a5  = 48, a4  = 9, (wrb) a4  <-- 57
       0     7115        M 0x80001350 addi    a5, a2, 1              #; a2  = 0, (wrb) a5  <-- 1
       0     7116        M 0x80001354 addi    a1, sp, 28             #; sp  = 0x0011fe50, (wrb) a1  <-- 0x0011fe6c
       0     7117        M 0x80001358 add     s1, a1, a2             #; a1  = 0x0011fe6c, a2  = 0, (wrb) s1  <-- 0x0011fe6c
       0     7118        M 0x8000135c sltu    a0, a0, s8             #; a0  = 719, s8  = 10, (wrb) a0  <-- 0
       0     7127        M 0x80001360 xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0     7128        M 0x80001364 sltiu   a2, a2, 31             #; a2  = 0, (wrb) a2  <-- 1
       0     7129        M 0x80001368 and     a1, a2, a0             #; a2  = 1, a0  = 1, (wrb) a1  <-- 1
       0     7130        M 0x8000136c sb      a4, 0(s1)              #; s1  = 0x0011fe6c, 57 ~~> Byte[0x0011fe6c]
       0     7131        M 0x80001370 mv      a2, a5                 #; a5  = 1, (wrb) a2  <-- 1
       0     7132        M 0x80001374 mv      a0, a3                 #; a3  = 71, (wrb) a0  <-- 71
       0     7133        M 0x80001378 beqz    a1, pc + 180           #; a1  = 1, not taken
       0     7134        M 0x8000137c divu    a3, a0, s8             #; a0  = 71, s8  = 10
       0     7141        M                                           #; (acc) a4  <-- 0x03868733
       0     7142        M 0x80001380 mul     a4, a3, s8             #; a3  = 7, s8  = 10
       0     7145        M                                           #; (acc) a4  <-- 0x40e50733
       0     7146        M 0x80001384 sub     a4, a0, a4             #; a0  = 71, a4  = 70, (wrb) a4  <-- 1
       0     7147        M 0x80001388 andi    s1, a4, 254            #; a4  = 1, (wrb) s1  <-- 0
       0     7148        M 0x8000138c li      a5, 48                 #; (wrb) a5  <-- 48
       0     7149        M 0x80001390 li      a1, 10                 #; (wrb) a1  <-- 10
       0     7150        M 0x80001394 bltu    s1, a1, pc - 72        #; s1  = 0, a1  = 10, taken, goto 0x8000134c
       0     7151        M 0x8000134c add     a4, a5, a4             #; a5  = 48, a4  = 1, (wrb) a4  <-- 49
       0     7152        M 0x80001350 addi    a5, a2, 1              #; a2  = 1, (wrb) a5  <-- 2
       0     7153        M 0x80001354 addi    a1, sp, 28             #; sp  = 0x0011fe50, (wrb) a1  <-- 0x0011fe6c
       0     7154        M 0x80001358 add     s1, a1, a2             #; a1  = 0x0011fe6c, a2  = 1, (wrb) s1  <-- 0x0011fe6d
       0     7155        M 0x8000135c sltu    a0, a0, s8             #; a0  = 71, s8  = 10, (wrb) a0  <-- 0
       0     7156        M 0x80001360 xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0     7157        M 0x80001364 sltiu   a2, a2, 31             #; a2  = 1, (wrb) a2  <-- 1
       0     7158        M 0x80001368 and     a1, a2, a0             #; a2  = 1, a0  = 1, (wrb) a1  <-- 1
       0     7159        M 0x8000136c sb      a4, 0(s1)              #; s1  = 0x0011fe6d, 49 ~~> Byte[0x0011fe6d]
       0     7160        M 0x80001370 mv      a2, a5                 #; a5  = 2, (wrb) a2  <-- 2
       0     7161        M 0x80001374 mv      a0, a3                 #; a3  = 7, (wrb) a0  <-- 7
       0     7162        M 0x80001378 beqz    a1, pc + 180           #; a1  = 1, not taken
       0     7163        M 0x8000137c divu    a3, a0, s8             #; a0  = 7, s8  = 10
       0     7166        M                                           #; (acc) a4  <-- 0x03868733
       0     7167        M 0x80001380 mul     a4, a3, s8             #; a3  = 0, s8  = 10
       0     7170        M                                           #; (acc) a4  <-- 0x40e50733
       0     7171        M 0x80001384 sub     a4, a0, a4             #; a0  = 7, a4  = 0, (wrb) a4  <-- 7
       0     7172        M 0x80001388 andi    s1, a4, 254            #; a4  = 7, (wrb) s1  <-- 6
       0     7173        M 0x8000138c li      a5, 48                 #; (wrb) a5  <-- 48
       0     7174        M 0x80001390 li      a1, 10                 #; (wrb) a1  <-- 10
       0     7175        M 0x80001394 bltu    s1, a1, pc - 72        #; s1  = 6, a1  = 10, taken, goto 0x8000134c
       0     7176        M 0x8000134c add     a4, a5, a4             #; a5  = 48, a4  = 7, (wrb) a4  <-- 55
       0     7177        M 0x80001350 addi    a5, a2, 1              #; a2  = 2, (wrb) a5  <-- 3
       0     7178        M 0x80001354 addi    a1, sp, 28             #; sp  = 0x0011fe50, (wrb) a1  <-- 0x0011fe6c
       0     7179        M 0x80001358 add     s1, a1, a2             #; a1  = 0x0011fe6c, a2  = 2, (wrb) s1  <-- 0x0011fe6e
       0     7180        M 0x8000135c sltu    a0, a0, s8             #; a0  = 7, s8  = 10, (wrb) a0  <-- 1
       0     7181        M 0x80001360 xori    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 0
       0     7182        M 0x80001364 sltiu   a2, a2, 31             #; a2  = 2, (wrb) a2  <-- 1
       0     7183        M 0x80001368 and     a1, a2, a0             #; a2  = 1, a0  = 0, (wrb) a1  <-- 0
       0     7184        M 0x8000136c sb      a4, 0(s1)              #; s1  = 0x0011fe6e, 55 ~~> Byte[0x0011fe6e]
       0     7185        M 0x80001370 mv      a2, a5                 #; a5  = 3, (wrb) a2  <-- 3
       0     7186        M 0x80001374 mv      a0, a3                 #; a3  = 0, (wrb) a0  <-- 0
       0     7187        M 0x80001378 beqz    a1, pc + 180           #; a1  = 0, taken, goto 0x8000142c
       0     7199        M 0x8000142c addi    s3, s3, 4              #; s3  = 0x0011fed4, (wrb) s3  <-- 0x0011fed8
       0     7211        M 0x80001430 addi    a4, sp, 28             #; sp  = 0x0011fe50, (wrb) a4  <-- 0x0011fe6c
       0     7212        M 0x80001434 mv      a0, s2                 #; s2  = 0x80001570, (wrb) a0  <-- 0x80001570
       0     7213        M 0x80001438 mv      a1, s4                 #; s4  = 0x0011fec7, (wrb) a1  <-- 0x0011fec7
       0     7214        M 0x8000143c mv      a2, s9                 #; s9  = 9, (wrb) a2  <-- 9
       0     7223        M 0x80001440 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     7224        M 0x80001444 li      a6, 0                  #; (wrb) a6  <-- 0
       0     7225        M 0x80001448 mv      a7, s8                 #; s8  = 10, (wrb) a7  <-- 10
       0     7226        M 0x8000144c mv      t2, s7                 #; s7  = 0, (wrb) t2  <-- 0
       0     7235        M 0x80001450 mv      t3, s6                 #; s6  = 0, (wrb) t3  <-- 0
       0     7236        M 0x80001454 mv      t4, s0                 #; s0  = 256, (wrb) t4  <-- 256
       0     7237        M 0x80001458 auipc   ra, 0x1                #; (wrb) ra  <-- 0x80002458
       0     7238        M 0x8000145c jalr    ra, ra, -620           #; ra  = 0x80002458, (wrb) ra  <-- 0x80001460, goto 0x800021ec
       0     7258        M 0x800021ec addi    sp, sp, -64            #; sp  = 0x0011fe50, (wrb) sp  <-- 0x0011fe10
       0     7270        M 0x800021f0 sw      ra, 60(sp)             #; sp  = 0x0011fe10, 0x80001460 ~~> Word[0x0011fe4c]
       0     7271        M 0x800021f4 sw      s0, 56(sp)             #; sp  = 0x0011fe10, 256 ~~> Word[0x0011fe48]
       0     7272        M 0x800021f8 sw      s1, 52(sp)             #; sp  = 0x0011fe10, 0x0011fe6e ~~> Word[0x0011fe44]
       0     7273        M 0x800021fc sw      s2, 48(sp)             #; sp  = 0x0011fe10, 0x80001570 ~~> Word[0x0011fe40]
       0     7282        M 0x80002200 sw      s3, 44(sp)             #; sp  = 0x0011fe10, 0x0011fed8 ~~> Word[0x0011fe3c]
       0     7283        M 0x80002204 sw      s4, 40(sp)             #; sp  = 0x0011fe10, 0x0011fec7 ~~> Word[0x0011fe38]
       0     7284        M 0x80002208 sw      s5, 36(sp)             #; sp  = 0x0011fe10, -1 ~~> Word[0x0011fe34]
       0     7285        M 0x8000220c sw      s6, 32(sp)             #; sp  = 0x0011fe10, 0 ~~> Word[0x0011fe30]
       0     7294        M 0x80002210 sw      s7, 28(sp)             #; sp  = 0x0011fe10, 0 ~~> Word[0x0011fe2c]
       0     7295        M 0x80002214 sw      s8, 24(sp)             #; sp  = 0x0011fe10, 10 ~~> Word[0x0011fe28]
       0     7296        M 0x80002218 sw      s9, 20(sp)             #; sp  = 0x0011fe10, 9 ~~> Word[0x0011fe24]
       0     7297        M 0x8000221c sw      s10, 16(sp)            #; sp  = 0x0011fe10, 0x80002c6c ~~> Word[0x0011fe20]
       0     7306        M 0x80002220 sw      s11, 12(sp)            #; sp  = 0x0011fe10, 16 ~~> Word[0x0011fe1c]
       0     7307        M 0x80002224 mv      s7, t4                 #; t4  = 256, (wrb) s7  <-- 256
       0     7308        M 0x80002228 andi    s5, t4, 2              #; t4  = 256, (wrb) s5  <-- 0
       0     7309        M 0x8000222c mv      s2, t3                 #; t3  = 0, (wrb) s2  <-- 0
       0     7318        M 0x80002230 mv      s10, t2                #; t2  = 0, (wrb) s10 <-- 0
       0     7319        M 0x80002234 mv      s9, a7                 #; a7  = 10, (wrb) s9  <-- 10
       0     7320        M 0x80002238 mv      s8, a5                 #; a5  = 3, (wrb) s8  <-- 3
       0     7321        M 0x8000223c mv      s3, a3                 #; a3  = -1, (wrb) s3  <-- -1
       0     7330        M 0x80002240 mv      s4, a2                 #; a2  = 9, (wrb) s4  <-- 9
       0     7331        M 0x80002244 mv      s6, a1                 #; a1  = 0x0011fec7, (wrb) s6  <-- 0x0011fec7
       0     7332        M 0x80002248 mv      s11, a0                #; a0  = 0x80001570, (wrb) s11 <-- 0x80001570
       0     7333        M 0x8000224c sw      a4, 8(sp)              #; sp  = 0x0011fe10, 0x0011fe6c ~~> Word[0x0011fe18]
       0     7342        M 0x80002250 bnez    s5, pc + 220           #; s5  = 0, not taken
       0     7343        M 0x80002254 andi    s0, s7, 1              #; s7  = 256, (wrb) s0  <-- 0
       0     7344        M 0x80002258 beqz    s2, pc + 28            #; s2  = 0, taken, goto 0x80002274
       0     7365        M 0x80002274 li      s2, 0                  #; (wrb) s2  <-- 0
       0     7366        M 0x80002278 sltu    a0, s8, s10            #; s8  = 3, s10 = 0, (wrb) a0  <-- 0
       0     7367        M 0x8000227c xori    a1, a0, 1              #; a0  = 0, (wrb) a1  <-- 1
       0     7377        M 0x80002280 li      a0, 31                 #; (wrb) a0  <-- 31
       0     7378        M 0x80002284 sltu    a2, a0, s8             #; a0  = 31, s8  = 3, (wrb) a2  <-- 0
       0     7379        M 0x80002288 or      a1, a2, a1             #; a2  = 0, a1  = 1, (wrb) a1  <-- 1
       0     7380        M 0x8000228c bnez    a1, pc + 72            #; a1  = 1, taken, goto 0x800022d4
       0     7400        M 0x800022d4 beqz    s0, pc + 88            #; s0  = 0, taken, goto 0x8000232c
       0     7423        M 0x8000232c andi    a0, s7, 16             #; s7  = 256, (wrb) a0  <-- 0
       0     7435        M 0x80002330 beqz    a0, pc + 228           #; a0  = 0, taken, goto 0x80002414
       0     7458        M 0x80002414 li      a0, 31                 #; (wrb) a0  <-- 31
       0     7459        M 0x80002418 bltu    a0, s8, pc + 72        #; a0  = 31, s8  = 3, not taken
       0     7460        M 0x8000241c beqz    a6, pc + 20            #; a6  = 0, taken, goto 0x80002430
       0     7481        M 0x80002430 andi    a0, s7, 4              #; s7  = 256, (wrb) a0  <-- 0
       0     7482        M 0x80002434 bnez    a0, pc + 28            #; a0  = 0, not taken
       0     7483        M 0x80002438 andi    a0, s7, 8              #; s7  = 256, (wrb) a0  <-- 0
       0     7484        M 0x8000243c beqz    a0, pc + 36            #; a0  = 0, taken, goto 0x80002460
       0     7504        M 0x80002460 andi    a0, s7, 3              #; s7  = 256, (wrb) a0  <-- 0
       0     7505        M 0x80002464 snez    a0, a0                 #; a0  = 0, (wrb) a0  <-- 0
       0     7506        M 0x80002468 sltu    a1, s8, s2             #; s8  = 3, s2  = 0, (wrb) a1  <-- 0
       0     7507        M 0x8000246c xori    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
       0     7516        M 0x80002470 or      a0, a0, a1             #; a0  = 0, a1  = 1, (wrb) a0  <-- 1
       0     7517        M 0x80002474 mv      s0, s4                 #; s4  = 9, (wrb) s0  <-- 9
       0     7518        M 0x80002478 bnez    a0, pc + 44            #; a0  = 1, taken, goto 0x800024a4
       0     7539        M 0x800024a4 snez    s5, s5                 #; s5  = 0, (wrb) s5  <-- 0
       0     7540        M 0x800024a8 beqz    s8, pc + 60            #; s8  = 3, not taken
       0     7541        M 0x800024ac lw      a0, 8(sp)              #; sp  = 0x0011fe10, a0  <~~ Word[0x0011fe18]
       0     7544        M                                           #; (lsu) a0  <-- 0x0011fe6c
       0     7551        M 0x800024b0 addi    s7, a0, -1             #; a0  = 0x0011fe6c, (wrb) s7  <-- 0x0011fe6b
       0     7552        M 0x800024b4 add     a0, s7, s8             #; s7  = 0x0011fe6b, s8  = 3, (wrb) a0  <-- 0x0011fe6e
       0     7553        M 0x800024b8 lbu     a0, 0(a0)              #; a0  = 0x0011fe6e, a0  <~~ Byte[0x0011fe6e]
       0     7554        M 0x800024bc addi    s9, s8, -1             #; s8  = 3, (wrb) s9  <-- 2
       0     7556        M                                           #; (lsu) a0  <-- 55
       0     7563        M 0x800024c0 addi    s1, s0, 1              #; s0  = 9, (wrb) s1  <-- 10
       0     7564        M 0x800024c4 mv      a1, s6                 #; s6  = 0x0011fec7, (wrb) a1  <-- 0x0011fec7
       0     7565        M 0x800024c8 mv      a2, s0                 #; s0  = 9, (wrb) a2  <-- 9
       0     7566        M 0x800024cc mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     7575        M 0x800024d0 jalr    s11                    #; s11 = 0x80001570, (wrb) ra  <-- 0x800024d4, goto 0x80001570
       0     7578        M 0x80001570 beqz    a0, pc + 168           #; a0  = 55, not taken
       0     7579        M 0x80001574 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     7580        M 0x80001578 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     7581        M 0x8000157c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     7582        M 0x80001580 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003580
       0     7583        M 0x80001584 addi    a3, a3, -1516          #; a3  = 0x80003580, (wrb) a3  <-- 0x80002f94
       0     7584        M                                           #; (acc) a1  <-- 0x00d605b3
       0     7585        M 0x80001588 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
       0     7586        M 0x8000158c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     7597        M                                           #; (lsu) a4  <-- 9
       0     7598        M 0x80001590 addi    a5, a4, 1              #; a4  = 9, (wrb) a5  <-- 10
       0     7599        M 0x80001594 sw      a5, 0(a1)              #; a1  = 0x80002f94, 10 ~~> Word[0x80002f94]
       0     7600        M 0x80001598 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 9, (wrb) a4  <-- 0x80002f9d
       0     7601        M 0x8000159c sb      a0, 72(a4)             #; a4  = 0x80002f9d, 55 ~~> Byte[0x80002fe5]
       0     7602        M 0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     7623        M                                           #; (lsu) a4  <-- 10
       0     7624        M 0x800015a4 addi    a4, a4, -1020          #; a4  = 10, (wrb) a4  <-- -1010
       0     7625        M 0x800015a8 snez    a4, a4                 #; a4  = -1010, (wrb) a4  <-- 1
       0     7626        M 0x800015ac addi    a0, a0, -10            #; a0  = 55, (wrb) a0  <-- 45
       0     7627        M 0x800015b0 snez    a0, a0                 #; a0  = 45, (wrb) a0  <-- 1
       0     7628        M 0x800015b4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     7629        M 0x800015b8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001618
       0     7632        M 0x80001618 ret                            #; ra  = 0x800024d4, goto 0x800024d4
       0     7637        M 0x800024d4 mv      s0, s1                 #; s1  = 10, (wrb) s0  <-- 10
       0     7638        M 0x800024d8 mv      s8, s9                 #; s9  = 2, (wrb) s8  <-- 2
       0     7639        M 0x800024dc bnez    s9, pc - 40            #; s9  = 2, taken, goto 0x800024b4
       0     7640        M 0x800024b4 add     a0, s7, s8             #; s7  = 0x0011fe6b, s8  = 2, (wrb) a0  <-- 0x0011fe6d
       0     7641        M 0x800024b8 lbu     a0, 0(a0)              #; a0  = 0x0011fe6d, a0  <~~ Byte[0x0011fe6d]
       0     7642        M 0x800024bc addi    s9, s8, -1             #; s8  = 2, (wrb) s9  <-- 1
       0     7643        M 0x800024c0 addi    s1, s0, 1              #; s0  = 10, (wrb) s1  <-- 11
       0     7644        M 0x800024c4 mv      a1, s6                 #; s6  = 0x0011fec7, (wrb) a1  <-- 0x0011fec7
       0     7645        M 0x800024c8 mv      a2, s0                 #; s0  = 10, (wrb) a2  <-- 10
       0     7646        M 0x800024cc mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     7647        M 0x800024d0 jalr    s11                    #; s11 = 0x80001570, (wrb) ra  <-- 0x800024d4, goto 0x80001570
       0     7648        M                                           #; (lsu) a0  <-- 49
       0     7650        M 0x80001570 beqz    a0, pc + 168           #; a0  = 49, not taken
       0     7651        M 0x80001574 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     7652        M 0x80001578 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     7653        M 0x8000157c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     7654        M 0x80001580 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003580
       0     7655        M 0x80001584 addi    a3, a3, -1516          #; a3  = 0x80003580, (wrb) a3  <-- 0x80002f94
       0     7656        M                                           #; (acc) a1  <-- 0x00d605b3
       0     7657        M 0x80001588 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
       0     7658        M 0x8000158c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     7669        M                                           #; (lsu) a4  <-- 10
       0     7670        M 0x80001590 addi    a5, a4, 1              #; a4  = 10, (wrb) a5  <-- 11
       0     7671        M 0x80001594 sw      a5, 0(a1)              #; a1  = 0x80002f94, 11 ~~> Word[0x80002f94]
       0     7672        M 0x80001598 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 10, (wrb) a4  <-- 0x80002f9e
       0     7673        M 0x8000159c sb      a0, 72(a4)             #; a4  = 0x80002f9e, 49 ~~> Byte[0x80002fe6]
       0     7674        M 0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     7695        M                                           #; (lsu) a4  <-- 11
       0     7696        M 0x800015a4 addi    a4, a4, -1020          #; a4  = 11, (wrb) a4  <-- -1009
       0     7697        M 0x800015a8 snez    a4, a4                 #; a4  = -1009, (wrb) a4  <-- 1
       0     7698        M 0x800015ac addi    a0, a0, -10            #; a0  = 49, (wrb) a0  <-- 39
       0     7699        M 0x800015b0 snez    a0, a0                 #; a0  = 39, (wrb) a0  <-- 1
       0     7700        M 0x800015b4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     7701        M 0x800015b8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001618
       0     7704        M 0x80001618 ret                            #; ra  = 0x800024d4, goto 0x800024d4
       0     7709        M 0x800024d4 mv      s0, s1                 #; s1  = 11, (wrb) s0  <-- 11
       0     7710        M 0x800024d8 mv      s8, s9                 #; s9  = 1, (wrb) s8  <-- 1
       0     7711        M 0x800024dc bnez    s9, pc - 40            #; s9  = 1, taken, goto 0x800024b4
       0     7712        M 0x800024b4 add     a0, s7, s8             #; s7  = 0x0011fe6b, s8  = 1, (wrb) a0  <-- 0x0011fe6c
       0     7713        M 0x800024b8 lbu     a0, 0(a0)              #; a0  = 0x0011fe6c, a0  <~~ Byte[0x0011fe6c]
       0     7714        M 0x800024bc addi    s9, s8, -1             #; s8  = 1, (wrb) s9  <-- 0
       0     7715        M 0x800024c0 addi    s1, s0, 1              #; s0  = 11, (wrb) s1  <-- 12
       0     7716        M 0x800024c4 mv      a1, s6                 #; s6  = 0x0011fec7, (wrb) a1  <-- 0x0011fec7
       0     7717        M 0x800024c8 mv      a2, s0                 #; s0  = 11, (wrb) a2  <-- 11
       0     7718        M 0x800024cc mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     7719        M 0x800024d0 jalr    s11                    #; s11 = 0x80001570, (wrb) ra  <-- 0x800024d4, goto 0x80001570
       0     7720        M                                           #; (lsu) a0  <-- 57
       0     7722        M 0x80001570 beqz    a0, pc + 168           #; a0  = 57, not taken
       0     7723        M 0x80001574 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     7724        M 0x80001578 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     7725        M 0x8000157c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     7726        M 0x80001580 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003580
       0     7727        M 0x80001584 addi    a3, a3, -1516          #; a3  = 0x80003580, (wrb) a3  <-- 0x80002f94
       0     7728        M                                           #; (acc) a1  <-- 0x00d605b3
       0     7729        M 0x80001588 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
       0     7730        M 0x8000158c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     7741        M                                           #; (lsu) a4  <-- 11
       0     7742        M 0x80001590 addi    a5, a4, 1              #; a4  = 11, (wrb) a5  <-- 12
       0     7743        M 0x80001594 sw      a5, 0(a1)              #; a1  = 0x80002f94, 12 ~~> Word[0x80002f94]
       0     7744        M 0x80001598 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 11, (wrb) a4  <-- 0x80002f9f
       0     7745        M 0x8000159c sb      a0, 72(a4)             #; a4  = 0x80002f9f, 57 ~~> Byte[0x80002fe7]
       0     7746        M 0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     7767        M                                           #; (lsu) a4  <-- 12
       0     7768        M 0x800015a4 addi    a4, a4, -1020          #; a4  = 12, (wrb) a4  <-- -1008
       0     7769        M 0x800015a8 snez    a4, a4                 #; a4  = -1008, (wrb) a4  <-- 1
       0     7770        M 0x800015ac addi    a0, a0, -10            #; a0  = 57, (wrb) a0  <-- 47
       0     7771        M 0x800015b0 snez    a0, a0                 #; a0  = 47, (wrb) a0  <-- 1
       0     7772        M 0x800015b4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     7773        M 0x800015b8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001618
       0     7776        M 0x80001618 ret                            #; ra  = 0x800024d4, goto 0x800024d4
       0     7781        M 0x800024d4 mv      s0, s1                 #; s1  = 12, (wrb) s0  <-- 12
       0     7782        M 0x800024d8 mv      s8, s9                 #; s9  = 0, (wrb) s8  <-- 0
       0     7783        M 0x800024dc bnez    s9, pc - 40            #; s9  = 0, not taken
       0     7795        M 0x800024e0 j       pc + 0x8               #; goto 0x800024e8
       0     7796        M 0x800024e8 sub     a0, s1, s4             #; s1  = 12, s4  = 9, (wrb) a0  <-- 3
       0     7797        M 0x800024ec sltu    a0, a0, s2             #; a0  = 3, s2  = 0, (wrb) a0  <-- 0
       0     7808        M 0x800024f0 xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0     7809        M 0x800024f4 xori    a1, s5, 1              #; s5  = 0, (wrb) a1  <-- 1
       0     7810        M 0x800024f8 or      a0, a1, a0             #; a1  = 1, a0  = 1, (wrb) a0  <-- 1
       0     7811        M 0x800024fc bnez    a0, pc + 48            #; a0  = 1, taken, goto 0x8000252c
       0     7831        M 0x8000252c mv      s0, s1                 #; s1  = 12, (wrb) s0  <-- 12
       0     7843        M 0x80002530 mv      a0, s0                 #; s0  = 12, (wrb) a0  <-- 12
       0     7844        M 0x80002534 lw      s11, 12(sp)            #; sp  = 0x0011fe10, s11 <~~ Word[0x0011fe1c]
       0     7847        M                                           #; (lsu) s11 <-- 16
       0     7848        M 0x80002538 lw      s10, 16(sp)            #; sp  = 0x0011fe10, s10 <~~ Word[0x0011fe20]
       0     7851        M                                           #; (lsu) s10 <-- 0x80002c6c
       0     7852        M 0x8000253c lw      s9, 20(sp)             #; sp  = 0x0011fe10, s9  <~~ Word[0x0011fe24]
       0     7855        M                                           #; (lsu) s9  <-- 9
       0     7856        M 0x80002540 lw      s8, 24(sp)             #; sp  = 0x0011fe10, s8  <~~ Word[0x0011fe28]
       0     7859        M                                           #; (lsu) s8  <-- 10
       0     7860        M 0x80002544 lw      s7, 28(sp)             #; sp  = 0x0011fe10, s7  <~~ Word[0x0011fe2c]
       0     7863        M                                           #; (lsu) s7  <-- 0
       0     7864        M 0x80002548 lw      s6, 32(sp)             #; sp  = 0x0011fe10, s6  <~~ Word[0x0011fe30]
       0     7867        M                                           #; (lsu) s6  <-- 0
       0     7868        M 0x8000254c lw      s5, 36(sp)             #; sp  = 0x0011fe10, s5  <~~ Word[0x0011fe34]
       0     7871        M                                           #; (lsu) s5  <-- -1
       0     7872        M 0x80002550 lw      s4, 40(sp)             #; sp  = 0x0011fe10, s4  <~~ Word[0x0011fe38]
       0     7875        M                                           #; (lsu) s4  <-- 0x0011fec7
       0     7876        M 0x80002554 lw      s3, 44(sp)             #; sp  = 0x0011fe10, s3  <~~ Word[0x0011fe3c]
       0     7879        M                                           #; (lsu) s3  <-- 0x0011fed8
       0     7880        M 0x80002558 lw      s2, 48(sp)             #; sp  = 0x0011fe10, s2  <~~ Word[0x0011fe40]
       0     7883        M                                           #; (lsu) s2  <-- 0x80001570
       0     7884        M 0x8000255c lw      s1, 52(sp)             #; sp  = 0x0011fe10, s1  <~~ Word[0x0011fe44]
       0     7887        M                                           #; (lsu) s1  <-- 0x0011fe6e
       0     7888        M 0x80002560 lw      s0, 56(sp)             #; sp  = 0x0011fe10, s0  <~~ Word[0x0011fe48]
       0     7891        M                                           #; (lsu) s0  <-- 256
       0     7892        M 0x80002564 lw      ra, 60(sp)             #; sp  = 0x0011fe10, ra  <~~ Word[0x0011fe4c]
       0     7893        M 0x80002568 addi    sp, sp, 64             #; sp  = 0x0011fe10, (wrb) sp  <-- 0x0011fe50
       0     7895        M                                           #; (lsu) ra  <-- 0x80001460
       0     7896        M 0x8000256c ret                            #; ra  = 0x80001460, goto 0x80001460
       0     7908        M 0x80001460 mv      s8, a0                 #; a0  = 12, (wrb) s8  <-- 12
       0     7909        M 0x80001464 li      s6, 37                 #; (wrb) s6  <-- 37
       0     7910        M 0x80001468 li      s7, 46                 #; (wrb) s7  <-- 46
       0     7911        M 0x8000146c addi    s0, s10, 1             #; s10 = 0x80002c6c, (wrb) s0  <-- 0x80002c6d
       0     7920        M 0x80001470 j       pc - 0xa74             #; goto 0x800009fc
       0     7923        M 0x800009fc addi    s10, s0, 2             #; s0  = 0x80002c6d, (wrb) s10 <-- 0x80002c6f
       0     7926        M 0x80000a00 mv      s9, s8                 #; s8  = 12, (wrb) s9  <-- 12
       0     7927        M 0x80000a04 li      s8, 10                 #; (wrb) s8  <-- 10
       0     7928        M 0x80000a08 lbu     a0, 0(s0)              #; s0  = 0x80002c6d, a0  <~~ Byte[0x80002c6d]
       0     7939        M                                           #; (lsu) a0  <-- 10
       0     7940        M 0x80000a0c beqz    a0, pc + 2824          #; a0  = 10, not taken
       0     7941        M 0x80000a10 beq     a0, s6, pc + 48        #; a0  = 10, s6  = 37, not taken
       0     7942        M 0x80000a14 addi    s1, s9, 1              #; s9  = 12, (wrb) s1  <-- 13
       0     7943        M 0x80000a18 mv      a1, s4                 #; s4  = 0x0011fec7, (wrb) a1  <-- 0x0011fec7
       0     7944        M 0x80000a1c mv      a2, s9                 #; s9  = 12, (wrb) a2  <-- 12
       0     7945        M 0x80000a20 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     7946        M 0x80000a24 jalr    s2                     #; s2  = 0x80001570, (wrb) ra  <-- 0x80000a28, goto 0x80001570
       0     7960        M 0x80001570 beqz    a0, pc + 168           #; a0  = 10, not taken
       0     7961        M 0x80001574 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     7962        M 0x80001578 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     7963        M 0x8000157c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     7964        M 0x80001580 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003580
       0     7965        M 0x80001584 addi    a3, a3, -1516          #; a3  = 0x80003580, (wrb) a3  <-- 0x80002f94
       0     7966        M                                           #; (acc) a1  <-- 0x00d605b3
       0     7967        M 0x80001588 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
       0     7968        M 0x8000158c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     7979        M                                           #; (lsu) a4  <-- 12
       0     7980        M 0x80001590 addi    a5, a4, 1              #; a4  = 12, (wrb) a5  <-- 13
       0     7981        M 0x80001594 sw      a5, 0(a1)              #; a1  = 0x80002f94, 13 ~~> Word[0x80002f94]
       0     7982        M 0x80001598 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 12, (wrb) a4  <-- 0x80002fa0
       0     7983        M 0x8000159c sb      a0, 72(a4)             #; a4  = 0x80002fa0, 10 ~~> Byte[0x80002fe8]
       0     7984        M 0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     8005        M                                           #; (lsu) a4  <-- 13
       0     8006        M 0x800015a4 addi    a4, a4, -1020          #; a4  = 13, (wrb) a4  <-- -1007
       0     8007        M 0x800015a8 snez    a4, a4                 #; a4  = -1007, (wrb) a4  <-- 1
       0     8008        M 0x800015ac addi    a0, a0, -10            #; a0  = 10, (wrb) a0  <-- 0
       0     8009        M 0x800015b0 snez    a0, a0                 #; a0  = 0, (wrb) a0  <-- 0
       0     8010        M 0x800015b4 and     a0, a0, a4             #; a0  = 0, a4  = 1, (wrb) a0  <-- 0
       0     8011        M 0x800015b8 bnez    a0, pc + 96            #; a0  = 0, not taken
       0     8012        M 0x800015bc add     a0, a3, a2             #; a3  = 0x80002f94, a2  = 0, (wrb) a0  <-- 0x80002f94
       0     8013        M 0x800015c0 addi    a2, a0, 72             #; a0  = 0x80002f94, (wrb) a2  <-- 0x80002fdc
       0     8014        M 0x800015c4 sw      zero, 12(a0)           #; a0  = 0x80002f94, 0 ~~> Word[0x80002fa0]
       0     8015        M 0x800015c8 li      a3, 64                 #; (wrb) a3  <-- 64
       0     8016        M 0x800015cc sw      a3, 8(a0)              #; a0  = 0x80002f94, 64 ~~> Word[0x80002f9c]
       0     8025        M 0x800015d0 sw      zero, 20(a0)           #; a0  = 0x80002f94, 0 ~~> Word[0x80002fa8]
       0     8026        M 0x800015d4 li      a3, 1                  #; (wrb) a3  <-- 1
       0     8027        M 0x800015d8 sw      a3, 16(a0)             #; a0  = 0x80002f94, 1 ~~> Word[0x80002fa4]
       0     8028        M 0x800015dc sw      zero, 28(a0)           #; a0  = 0x80002f94, 0 ~~> Word[0x80002fb0]
       0     8037        M 0x800015e0 sw      a2, 24(a0)             #; a0  = 0x80002f94, 0x80002fdc ~~> Word[0x80002fac]
       0     8040        M 0x800015e4 lw      a2, 0(a1)              #; a1  = 0x80002f94, a2  <~~ Word[0x80002f94]
       0     8041        M 0x800015e8 addi    a3, a0, 8              #; a0  = 0x80002f94, (wrb) a3  <-- 0x80002f9c
       0     8042        M 0x800015ec sw      zero, 36(a0)           #; a0  = 0x80002f94, 0 ~~> Word[0x80002fb8]
       0     8062        M                                           #; (lsu) a2  <-- 13
       0     8063        M 0x800015f0 sw      a2, 32(a0)             #; a0  = 0x80002f94, 13 ~~> Word[0x80002fb4]
       0     8064        M 0x800015f4 auipc   a0, 0x2                #; (wrb) a0  <-- 0x800035f4
       0     8065        M 0x800015f8 addi    a0, a0, -1908          #; a0  = 0x800035f4, (wrb) a0  <-- 0x80002e80
       0     8066        M 0x800015fc sw      a3, 0(a0)              #; a0  = 0x80002e80, 0x80002f9c ~~> Word[0x80002e80]
       0     8067        M 0x80001600 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003600
       0     8068        M 0x80001604 addi    a0, a0, -1856          #; a0  = 0x80003600, (wrb) a0  <-- 0x80002ec0
       0     8069        M 0x80001608 lw      a2, 0(a0)              #; a0  = 0x80002ec0, a2  <~~ Word[0x80002ec0]
       0     8092        M                                           #; (lsu) a2  <-- 0
       0     8093        M 0x8000160c beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001608
       0     8094        M 0x80001608 lw      a2, 0(a0)              #; a0  = 0x80002ec0, a2  <~~ Word[0x80002ec0]
       0     8105        M                                           #; (lsu) a2  <-- 1
       0     8106        M 0x8000160c beqz    a2, pc - 4             #; a2  = 1, not taken
       0     8109        M 0x80001610 sw      zero, 0(a0)            #; a0  = 0x80002ec0, 0 ~~> Word[0x80002ec0]
       0     8110        M 0x80001614 sw      zero, 0(a1)            #; a1  = 0x80002f94, 0 ~~> Word[0x80002f94]
       0     8111        M 0x80001618 ret                            #; ra  = 0x80000a28, goto 0x80000a28
       0     8114        M 0x80000a28 addi    s0, s0, 1              #; s0  = 0x80002c6d, (wrb) s0  <-- 0x80002c6e
       0     8115        M 0x80000a2c addi    s10, s10, 1            #; s10 = 0x80002c6f, (wrb) s10 <-- 0x80002c70
       0     8117        M 0x80000a30 mv      s9, s1                 #; s1  = 13, (wrb) s9  <-- 13
       0     8118        M 0x80000a34 lbu     a0, 0(s0)              #; s0  = 0x80002c6e, a0  <~~ Byte[0x80002c6e]
       0     8132        M                                           #; (lsu) a0  <-- 0
       0     8133        M 0x80000a38 bnez    a0, pc - 40            #; a0  = 0, not taken
       0     8134        M 0x80000a3c j       pc + 0xad8             #; goto 0x80001514
       0     8146        M 0x80001514 mv      a2, s9                 #; s9  = 13, (wrb) a2  <-- 13
       0     8147        M 0x80001518 bltu    s9, s5, pc + 8         #; s9  = 13, s5  = -1, taken, goto 0x80001520
       0     8158        M 0x80001520 li      a0, 0                  #; (wrb) a0  <-- 0
       0     8159        M 0x80001524 mv      a1, s4                 #; s4  = 0x0011fec7, (wrb) a1  <-- 0x0011fec7
       0     8160        M 0x80001528 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     8161        M 0x8000152c jalr    s2                     #; s2  = 0x80001570, (wrb) ra  <-- 0x80001530, goto 0x80001570
       0     8172        M 0x80001570 beqz    a0, pc + 168           #; a0  = 0, taken, goto 0x80001618
       0     8177        M 0x80001618 ret                            #; ra  = 0x80001530, goto 0x80001530
       0     8178        M 0x80001530 mv      a0, s9                 #; s9  = 13, (wrb) a0  <-- 13
       0     8179        M 0x80001534 lw      s11, 60(sp)            #; sp  = 0x0011fe50, s11 <~~ Word[0x0011fe8c]
       0     8182        M                                           #; (lsu) s11 <-- 0
       0     8183        M 0x80001538 lw      s10, 64(sp)            #; sp  = 0x0011fe50, s10 <~~ Word[0x0011fe90]
       0     8186        M                                           #; (lsu) s10 <-- 0
       0     8187        M 0x8000153c lw      s9, 68(sp)             #; sp  = 0x0011fe50, s9  <~~ Word[0x0011fe94]
       0     8190        M                                           #; (lsu) s9  <-- 0
       0     8192        M 0x80001540 lw      s8, 72(sp)             #; sp  = 0x0011fe50, s8  <~~ Word[0x0011fe98]
       0     8195        M                                           #; (lsu) s8  <-- 0
       0     8196        M 0x80001544 lw      s7, 76(sp)             #; sp  = 0x0011fe50, s7  <~~ Word[0x0011fe9c]
       0     8199        M                                           #; (lsu) s7  <-- 0
       0     8200        M 0x80001548 lw      s6, 80(sp)             #; sp  = 0x0011fe50, s6  <~~ Word[0x0011fea0]
       0     8203        M                                           #; (lsu) s6  <-- 0
       0     8204        M 0x8000154c lw      s5, 84(sp)             #; sp  = 0x0011fe50, s5  <~~ Word[0x0011fea4]
       0     8207        M                                           #; (lsu) s5  <-- 0
       0     8208        M 0x80001550 lw      s4, 88(sp)             #; sp  = 0x0011fe50, s4  <~~ Word[0x0011fea8]
       0     8211        M                                           #; (lsu) s4  <-- 0
       0     8212        M 0x80001554 lw      s3, 92(sp)             #; sp  = 0x0011fe50, s3  <~~ Word[0x0011feac]
       0     8215        M                                           #; (lsu) s3  <-- 0
       0     8216        M 0x80001558 lw      s2, 96(sp)             #; sp  = 0x0011fe50, s2  <~~ Word[0x0011feb0]
       0     8219        M                                           #; (lsu) s2  <-- 0
       0     8220        M 0x8000155c lw      s1, 100(sp)            #; sp  = 0x0011fe50, s1  <~~ Word[0x0011feb4]
       0     8223        M                                           #; (lsu) s1  <-- 0
       0     8224        M 0x80001560 lw      s0, 104(sp)            #; sp  = 0x0011fe50, s0  <~~ Word[0x0011feb8]
       0     8227        M                                           #; (lsu) s0  <-- 0
       0     8228        M 0x80001564 lw      ra, 108(sp)            #; sp  = 0x0011fe50, ra  <~~ Word[0x0011febc]
       0     8229        M 0x80001568 addi    sp, sp, 112            #; sp  = 0x0011fe50, (wrb) sp  <-- 0x0011fec0
       0     8231        M                                           #; (lsu) ra  <-- 0x8000096c
       0     8232        M 0x8000156c ret                            #; ra  = 0x8000096c, goto 0x8000096c
       0     8235        M 0x8000096c lw      ra, 12(sp)             #; sp  = 0x0011fec0, ra  <~~ Word[0x0011fecc]
       0     8238        M 0x80000970 addi    sp, sp, 48             #; sp  = 0x0011fec0, (wrb) sp  <-- 0x0011fef0
       0     8239        M                                           #; (lsu) ra  <-- 0x800008a0
       0     8240        M 0x80000974 ret                            #; ra  = 0x800008a0, goto 0x800008a0
       0     8243        M 0x800008a0 auipc   a0, 0x2                #; (wrb) a0  <-- 0x800028a0
       0     8244        M 0x800008a4 addi    a0, a0, 1592           #; a0  = 0x800028a0, (wrb) a0  <-- 0x80002ed8
       0     8247        M 0x800008a8 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80002ed8]
       0     8256        M                                           #; (f:lsu) ft3  <-- -2850.0
       0     8257        M 0x800008b8 lw      a2, 0(sp)              #; sp  = 0x0011fef0, a2  <~~ Word[0x0011fef0]
                         M 0x800008ac fadd.d  ft3, fs0, ft3          #; fs0  = 2850.0, ft3  = -2850.0
       0     8260        M                                           #; (lsu) a2  <-- 0
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     8261        M 0x800008bc lw      a3, 4(sp)              #; sp  = 0x0011fef0, a3  <~~ Word[0x0011fef4]
                         M 0x800008b0 fsgnjx.d fs0, ft3, ft3         #; ft3  = 0.0, ft3  = 0.0
       0     8262        M                                           #; (f:fpu) fs0  <-- 0.0
       0     8263        M 0x800008b4 fsd     fs0, 0(sp)             #; 0.0 ~~> Doub[0x0011fef0]
       0     8264        M                                           #; (lsu) a3  <-- 0
       0     8267        M 0x800008c0 auipc   a0, 0x2                #; (wrb) a0  <-- 0x800028c0
       0     8268        M 0x800008c4 addi    a0, a0, 917            #; a0  = 0x800028c0, (wrb) a0  <-- 0x80002c55
       0     8269        M 0x800008c8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800008c8
       0     8270        M 0x800008cc jalr    ra, ra, 84             #; ra  = 0x800008c8, (wrb) ra  <-- 0x800008d0, goto 0x8000091c
       0     8281        M 0x8000091c addi    sp, sp, -48            #; sp  = 0x0011fef0, (wrb) sp  <-- 0x0011fec0
       0     8284        M 0x80000920 sw      ra, 12(sp)             #; sp  = 0x0011fec0, 0x800008d0 ~~> Word[0x0011fecc]
       0     8285        M 0x80000924 mv      t0, a0                 #; a0  = 0x80002c55, (wrb) t0  <-- 0x80002c55
       0     8286        M 0x80000928 sw      a7, 44(sp)             #; sp  = 0x0011fec0, 10 ~~> Word[0x0011feec]
       0     8287        M 0x8000092c sw      a6, 40(sp)             #; sp  = 0x0011fec0, 0 ~~> Word[0x0011fee8]
       0     8288        M 0x80000930 sw      a5, 36(sp)             #; sp  = 0x0011fec0, 13 ~~> Word[0x0011fee4]
       0     8289        M 0x80000934 sw      a4, 32(sp)             #; sp  = 0x0011fec0, 1 ~~> Word[0x0011fee0]
       0     8290        M 0x80000938 sw      a3, 28(sp)             #; sp  = 0x0011fec0, 0 ~~> Word[0x0011fedc]
       0     8291        M 0x8000093c sw      a2, 24(sp)             #; sp  = 0x0011fec0, 0 ~~> Word[0x0011fed8]
       0     8292        M 0x80000940 sw      a1, 20(sp)             #; sp  = 0x0011fec0, 0x0011fec7 ~~> Word[0x0011fed4]
       0     8293        M 0x80000944 addi    a0, sp, 20             #; sp  = 0x0011fec0, (wrb) a0  <-- 0x0011fed4
       0     8294        M 0x80000948 sw      a0, 8(sp)              #; sp  = 0x0011fec0, 0x0011fed4 ~~> Word[0x0011fec8]
       0     8295        M 0x8000094c auipc   a0, 0x1                #; (wrb) a0  <-- 0x8000194c
       0     8296        M 0x80000950 addi    a0, a0, -988           #; a0  = 0x8000194c, (wrb) a0  <-- 0x80001570
       0     8297        M 0x80000954 addi    a1, sp, 7              #; sp  = 0x0011fec0, (wrb) a1  <-- 0x0011fec7
       0     8298        M 0x80000958 li      a2, -1                 #; (wrb) a2  <-- -1
       0     8299        M 0x8000095c addi    a4, sp, 20             #; sp  = 0x0011fec0, (wrb) a4  <-- 0x0011fed4
       0     8300        M 0x80000960 mv      a3, t0                 #; t0  = 0x80002c55, (wrb) a3  <-- 0x80002c55
       0     8301        M 0x80000964 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000964
       0     8302        M 0x80000968 jalr    ra, ra, 20             #; ra  = 0x80000964, (wrb) ra  <-- 0x8000096c, goto 0x80000978
       0     8303        M 0x80000978 addi    sp, sp, -112           #; sp  = 0x0011fec0, (wrb) sp  <-- 0x0011fe50
       0     8304        M 0x8000097c sw      ra, 108(sp)            #; sp  = 0x0011fe50, 0x8000096c ~~> Word[0x0011febc]
       0     8306        M 0x80000980 sw      s0, 104(sp)            #; sp  = 0x0011fe50, 0 ~~> Word[0x0011feb8]
       0     8307        M 0x80000984 sw      s1, 100(sp)            #; sp  = 0x0011fe50, 0 ~~> Word[0x0011feb4]
       0     8308        M 0x80000988 sw      s2, 96(sp)             #; sp  = 0x0011fe50, 0 ~~> Word[0x0011feb0]
       0     8309        M 0x8000098c sw      s3, 92(sp)             #; sp  = 0x0011fe50, 0 ~~> Word[0x0011feac]
       0     8310        M 0x80000990 sw      s4, 88(sp)             #; sp  = 0x0011fe50, 0 ~~> Word[0x0011fea8]
       0     8311        M 0x80000994 sw      s5, 84(sp)             #; sp  = 0x0011fe50, 0 ~~> Word[0x0011fea4]
       0     8312        M 0x80000998 sw      s6, 80(sp)             #; sp  = 0x0011fe50, 0 ~~> Word[0x0011fea0]
       0     8313        M 0x8000099c sw      s7, 76(sp)             #; sp  = 0x0011fe50, 0 ~~> Word[0x0011fe9c]
       0     8314        M 0x800009a0 sw      s8, 72(sp)             #; sp  = 0x0011fe50, 0 ~~> Word[0x0011fe98]
       0     8315        M 0x800009a4 sw      s9, 68(sp)             #; sp  = 0x0011fe50, 0 ~~> Word[0x0011fe94]
       0     8316        M 0x800009a8 sw      s10, 64(sp)            #; sp  = 0x0011fe50, 0 ~~> Word[0x0011fe90]
       0     8317        M 0x800009ac sw      s11, 60(sp)            #; sp  = 0x0011fe50, 0 ~~> Word[0x0011fe8c]
       0     8318        M 0x800009b0 mv      s3, a4                 #; a4  = 0x0011fed4, (wrb) s3  <-- 0x0011fed4
       0     8319        M 0x800009b4 mv      s0, a3                 #; a3  = 0x80002c55, (wrb) s0  <-- 0x80002c55
       0     8320        M 0x800009b8 mv      s5, a2                 #; a2  = -1, (wrb) s5  <-- -1
       0     8321        M 0x800009bc mv      s4, a1                 #; a1  = 0x0011fec7, (wrb) s4  <-- 0x0011fec7
       0     8322        M 0x800009c0 beqz    a1, pc + 12            #; a1  = 0x0011fec7, not taken
       0     8323        M 0x800009c4 mv      s2, a0                 #; a0  = 0x80001570, (wrb) s2  <-- 0x80001570
       0     8324        M 0x800009c8 j       pc + 0xc               #; goto 0x800009d4
       0     8325        M 0x800009d4 li      s8, 0                  #; (wrb) s8  <-- 0
       0     8326        M 0x800009d8 li      s6, 37                 #; (wrb) s6  <-- 37
       0     8327        M 0x800009dc li      s11, 16                #; (wrb) s11 <-- 16
       0     8328        M 0x800009e0 li      s7, 46                 #; (wrb) s7  <-- 46
       0     8329        M 0x800009e4 lui     a0, 0x1                #; (wrb) a0  <-- 4096
       0     8330        M 0x800009e8 addi    a0, a0, -2048          #; a0  = 4096, (wrb) a0  <-- 2048
       0     8331        M 0x800009ec sw      a0, 24(sp)             #; sp  = 0x0011fe50, 2048 ~~> Word[0x0011fe68]
       0     8332        M 0x800009f0 lui     a0, 0x10               #; (wrb) a0  <-- 0x00010000
       0     8333        M 0x800009f4 addi    a0, a0, -1             #; a0  = 0x00010000, (wrb) a0  <-- 65535
       0     8334        M 0x800009f8 sw      a0, 16(sp)             #; sp  = 0x0011fe50, 65535 ~~> Word[0x0011fe60]
       0     8335        M 0x800009fc addi    s10, s0, 2             #; s0  = 0x80002c55, (wrb) s10 <-- 0x80002c57
       0     8336        M 0x80000a00 mv      s9, s8                 #; s8  = 0, (wrb) s9  <-- 0
       0     8337        M 0x80000a04 li      s8, 10                 #; (wrb) s8  <-- 10
       0     8338        M 0x80000a08 lbu     a0, 0(s0)              #; s0  = 0x80002c55, a0  <~~ Byte[0x80002c55]
       0     8349        M                                           #; (lsu) a0  <-- 101
       0     8350        M 0x80000a0c beqz    a0, pc + 2824          #; a0  = 101, not taken
       0     8351        M 0x80000a10 beq     a0, s6, pc + 48        #; a0  = 101, s6  = 37, not taken
       0     8352        M 0x80000a14 addi    s1, s9, 1              #; s9  = 0, (wrb) s1  <-- 1
       0     8353        M 0x80000a18 mv      a1, s4                 #; s4  = 0x0011fec7, (wrb) a1  <-- 0x0011fec7
       0     8354        M 0x80000a1c mv      a2, s9                 #; s9  = 0, (wrb) a2  <-- 0
       0     8355        M 0x80000a20 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     8356        M 0x80000a24 jalr    s2                     #; s2  = 0x80001570, (wrb) ra  <-- 0x80000a28, goto 0x80001570
       0     8360        M 0x80001570 beqz    a0, pc + 168           #; a0  = 101, not taken
       0     8361        M 0x80001574 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     8362        M 0x80001578 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     8363        M 0x8000157c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     8364        M 0x80001580 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003580
       0     8365        M 0x80001584 addi    a3, a3, -1516          #; a3  = 0x80003580, (wrb) a3  <-- 0x80002f94
       0     8366        M                                           #; (acc) a1  <-- 0x00d605b3
       0     8367        M 0x80001588 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
       0     8368        M 0x8000158c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     8379        M                                           #; (lsu) a4  <-- 0
       0     8380        M 0x80001590 addi    a5, a4, 1              #; a4  = 0, (wrb) a5  <-- 1
       0     8381        M 0x80001594 sw      a5, 0(a1)              #; a1  = 0x80002f94, 1 ~~> Word[0x80002f94]
       0     8382        M 0x80001598 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 0, (wrb) a4  <-- 0x80002f94
       0     8383        M 0x8000159c sb      a0, 72(a4)             #; a4  = 0x80002f94, 101 ~~> Byte[0x80002fdc]
       0     8384        M 0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     8405        M                                           #; (lsu) a4  <-- 1
       0     8406        M 0x800015a4 addi    a4, a4, -1020          #; a4  = 1, (wrb) a4  <-- -1019
       0     8407        M 0x800015a8 snez    a4, a4                 #; a4  = -1019, (wrb) a4  <-- 1
       0     8408        M 0x800015ac addi    a0, a0, -10            #; a0  = 101, (wrb) a0  <-- 91
       0     8409        M 0x800015b0 snez    a0, a0                 #; a0  = 91, (wrb) a0  <-- 1
       0     8410        M 0x800015b4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     8411        M 0x800015b8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001618
       0     8414        M 0x80001618 ret                            #; ra  = 0x80000a28, goto 0x80000a28
       0     8419        M 0x80000a28 addi    s0, s0, 1              #; s0  = 0x80002c55, (wrb) s0  <-- 0x80002c56
       0     8420        M 0x80000a2c addi    s10, s10, 1            #; s10 = 0x80002c57, (wrb) s10 <-- 0x80002c58
       0     8422        M 0x80000a30 mv      s9, s1                 #; s1  = 1, (wrb) s9  <-- 1
       0     8423        M 0x80000a34 lbu     a0, 0(s0)              #; s0  = 0x80002c56, a0  <~~ Byte[0x80002c56]
       0     8434        M                                           #; (lsu) a0  <-- 114
       0     8435        M 0x80000a38 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000a10
       0     8436        M 0x80000a10 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     8437        M 0x80000a14 addi    s1, s9, 1              #; s9  = 1, (wrb) s1  <-- 2
       0     8438        M 0x80000a18 mv      a1, s4                 #; s4  = 0x0011fec7, (wrb) a1  <-- 0x0011fec7
       0     8439        M 0x80000a1c mv      a2, s9                 #; s9  = 1, (wrb) a2  <-- 1
       0     8440        M 0x80000a20 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     8441        M 0x80000a24 jalr    s2                     #; s2  = 0x80001570, (wrb) ra  <-- 0x80000a28, goto 0x80001570
       0     8444        M 0x80001570 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     8445        M 0x80001574 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     8446        M 0x80001578 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     8447        M 0x8000157c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     8448        M 0x80001580 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003580
       0     8449        M 0x80001584 addi    a3, a3, -1516          #; a3  = 0x80003580, (wrb) a3  <-- 0x80002f94
       0     8450        M                                           #; (acc) a1  <-- 0x00d605b3
       0     8451        M 0x80001588 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
       0     8452        M 0x8000158c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     8463        M                                           #; (lsu) a4  <-- 1
       0     8464        M 0x80001590 addi    a5, a4, 1              #; a4  = 1, (wrb) a5  <-- 2
       0     8465        M 0x80001594 sw      a5, 0(a1)              #; a1  = 0x80002f94, 2 ~~> Word[0x80002f94]
       0     8466        M 0x80001598 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 1, (wrb) a4  <-- 0x80002f95
       0     8467        M 0x8000159c sb      a0, 72(a4)             #; a4  = 0x80002f95, 114 ~~> Byte[0x80002fdd]
       0     8468        M 0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     8489        M                                           #; (lsu) a4  <-- 2
       0     8490        M 0x800015a4 addi    a4, a4, -1020          #; a4  = 2, (wrb) a4  <-- -1018
       0     8491        M 0x800015a8 snez    a4, a4                 #; a4  = -1018, (wrb) a4  <-- 1
       0     8492        M 0x800015ac addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     8493        M 0x800015b0 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     8494        M 0x800015b4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     8495        M 0x800015b8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001618
       0     8498        M 0x80001618 ret                            #; ra  = 0x80000a28, goto 0x80000a28
       0     8503        M 0x80000a28 addi    s0, s0, 1              #; s0  = 0x80002c56, (wrb) s0  <-- 0x80002c57
       0     8504        M 0x80000a2c addi    s10, s10, 1            #; s10 = 0x80002c58, (wrb) s10 <-- 0x80002c59
       0     8506        M 0x80000a30 mv      s9, s1                 #; s1  = 2, (wrb) s9  <-- 2
       0     8507        M 0x80000a34 lbu     a0, 0(s0)              #; s0  = 0x80002c57, a0  <~~ Byte[0x80002c57]
       0     8518        M                                           #; (lsu) a0  <-- 114
       0     8519        M 0x80000a38 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000a10
       0     8520        M 0x80000a10 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     8521        M 0x80000a14 addi    s1, s9, 1              #; s9  = 2, (wrb) s1  <-- 3
       0     8522        M 0x80000a18 mv      a1, s4                 #; s4  = 0x0011fec7, (wrb) a1  <-- 0x0011fec7
       0     8523        M 0x80000a1c mv      a2, s9                 #; s9  = 2, (wrb) a2  <-- 2
       0     8524        M 0x80000a20 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     8525        M 0x80000a24 jalr    s2                     #; s2  = 0x80001570, (wrb) ra  <-- 0x80000a28, goto 0x80001570
       0     8528        M 0x80001570 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     8529        M 0x80001574 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     8530        M 0x80001578 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     8531        M 0x8000157c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     8532        M 0x80001580 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003580
       0     8533        M 0x80001584 addi    a3, a3, -1516          #; a3  = 0x80003580, (wrb) a3  <-- 0x80002f94
       0     8534        M                                           #; (acc) a1  <-- 0x00d605b3
       0     8535        M 0x80001588 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
       0     8536        M 0x8000158c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     8547        M                                           #; (lsu) a4  <-- 2
       0     8548        M 0x80001590 addi    a5, a4, 1              #; a4  = 2, (wrb) a5  <-- 3
       0     8549        M 0x80001594 sw      a5, 0(a1)              #; a1  = 0x80002f94, 3 ~~> Word[0x80002f94]
       0     8550        M 0x80001598 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 2, (wrb) a4  <-- 0x80002f96
       0     8551        M 0x8000159c sb      a0, 72(a4)             #; a4  = 0x80002f96, 114 ~~> Byte[0x80002fde]
       0     8552        M 0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     8573        M                                           #; (lsu) a4  <-- 3
       0     8574        M 0x800015a4 addi    a4, a4, -1020          #; a4  = 3, (wrb) a4  <-- -1017
       0     8575        M 0x800015a8 snez    a4, a4                 #; a4  = -1017, (wrb) a4  <-- 1
       0     8576        M 0x800015ac addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     8577        M 0x800015b0 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     8578        M 0x800015b4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     8579        M 0x800015b8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001618
       0     8582        M 0x80001618 ret                            #; ra  = 0x80000a28, goto 0x80000a28
       0     8587        M 0x80000a28 addi    s0, s0, 1              #; s0  = 0x80002c57, (wrb) s0  <-- 0x80002c58
       0     8588        M 0x80000a2c addi    s10, s10, 1            #; s10 = 0x80002c59, (wrb) s10 <-- 0x80002c5a
       0     8590        M 0x80000a30 mv      s9, s1                 #; s1  = 3, (wrb) s9  <-- 3
       0     8591        M 0x80000a34 lbu     a0, 0(s0)              #; s0  = 0x80002c58, a0  <~~ Byte[0x80002c58]
       0     8602        M                                           #; (lsu) a0  <-- 111
       0     8603        M 0x80000a38 bnez    a0, pc - 40            #; a0  = 111, taken, goto 0x80000a10
       0     8604        M 0x80000a10 beq     a0, s6, pc + 48        #; a0  = 111, s6  = 37, not taken
       0     8605        M 0x80000a14 addi    s1, s9, 1              #; s9  = 3, (wrb) s1  <-- 4
       0     8606        M 0x80000a18 mv      a1, s4                 #; s4  = 0x0011fec7, (wrb) a1  <-- 0x0011fec7
       0     8607        M 0x80000a1c mv      a2, s9                 #; s9  = 3, (wrb) a2  <-- 3
       0     8608        M 0x80000a20 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     8609        M 0x80000a24 jalr    s2                     #; s2  = 0x80001570, (wrb) ra  <-- 0x80000a28, goto 0x80001570
       0     8612        M 0x80001570 beqz    a0, pc + 168           #; a0  = 111, not taken
       0     8613        M 0x80001574 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     8614        M 0x80001578 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     8615        M 0x8000157c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     8616        M 0x80001580 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003580
       0     8617        M 0x80001584 addi    a3, a3, -1516          #; a3  = 0x80003580, (wrb) a3  <-- 0x80002f94
       0     8618        M                                           #; (acc) a1  <-- 0x00d605b3
       0     8619        M 0x80001588 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
       0     8620        M 0x8000158c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     8631        M                                           #; (lsu) a4  <-- 3
       0     8632        M 0x80001590 addi    a5, a4, 1              #; a4  = 3, (wrb) a5  <-- 4
       0     8633        M 0x80001594 sw      a5, 0(a1)              #; a1  = 0x80002f94, 4 ~~> Word[0x80002f94]
       0     8634        M 0x80001598 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 3, (wrb) a4  <-- 0x80002f97
       0     8635        M 0x8000159c sb      a0, 72(a4)             #; a4  = 0x80002f97, 111 ~~> Byte[0x80002fdf]
       0     8636        M 0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     8657        M                                           #; (lsu) a4  <-- 4
       0     8658        M 0x800015a4 addi    a4, a4, -1020          #; a4  = 4, (wrb) a4  <-- -1016
       0     8659        M 0x800015a8 snez    a4, a4                 #; a4  = -1016, (wrb) a4  <-- 1
       0     8660        M 0x800015ac addi    a0, a0, -10            #; a0  = 111, (wrb) a0  <-- 101
       0     8661        M 0x800015b0 snez    a0, a0                 #; a0  = 101, (wrb) a0  <-- 1
       0     8662        M 0x800015b4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     8663        M 0x800015b8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001618
       0     8666        M 0x80001618 ret                            #; ra  = 0x80000a28, goto 0x80000a28
       0     8671        M 0x80000a28 addi    s0, s0, 1              #; s0  = 0x80002c58, (wrb) s0  <-- 0x80002c59
       0     8672        M 0x80000a2c addi    s10, s10, 1            #; s10 = 0x80002c5a, (wrb) s10 <-- 0x80002c5b
       0     8674        M 0x80000a30 mv      s9, s1                 #; s1  = 4, (wrb) s9  <-- 4
       0     8675        M 0x80000a34 lbu     a0, 0(s0)              #; s0  = 0x80002c59, a0  <~~ Byte[0x80002c59]
       0     8686        M                                           #; (lsu) a0  <-- 114
       0     8687        M 0x80000a38 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000a10
       0     8688        M 0x80000a10 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     8689        M 0x80000a14 addi    s1, s9, 1              #; s9  = 4, (wrb) s1  <-- 5
       0     8690        M 0x80000a18 mv      a1, s4                 #; s4  = 0x0011fec7, (wrb) a1  <-- 0x0011fec7
       0     8691        M 0x80000a1c mv      a2, s9                 #; s9  = 4, (wrb) a2  <-- 4
       0     8692        M 0x80000a20 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     8693        M 0x80000a24 jalr    s2                     #; s2  = 0x80001570, (wrb) ra  <-- 0x80000a28, goto 0x80001570
       0     8696        M 0x80001570 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     8697        M 0x80001574 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     8698        M 0x80001578 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     8699        M 0x8000157c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     8700        M 0x80001580 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003580
       0     8701        M 0x80001584 addi    a3, a3, -1516          #; a3  = 0x80003580, (wrb) a3  <-- 0x80002f94
       0     8702        M                                           #; (acc) a1  <-- 0x00d605b3
       0     8703        M 0x80001588 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
       0     8704        M 0x8000158c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     8715        M                                           #; (lsu) a4  <-- 4
       0     8716        M 0x80001590 addi    a5, a4, 1              #; a4  = 4, (wrb) a5  <-- 5
       0     8717        M 0x80001594 sw      a5, 0(a1)              #; a1  = 0x80002f94, 5 ~~> Word[0x80002f94]
       0     8718        M 0x80001598 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 4, (wrb) a4  <-- 0x80002f98
       0     8719        M 0x8000159c sb      a0, 72(a4)             #; a4  = 0x80002f98, 114 ~~> Byte[0x80002fe0]
       0     8720        M 0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     8741        M                                           #; (lsu) a4  <-- 5
       0     8742        M 0x800015a4 addi    a4, a4, -1020          #; a4  = 5, (wrb) a4  <-- -1015
       0     8743        M 0x800015a8 snez    a4, a4                 #; a4  = -1015, (wrb) a4  <-- 1
       0     8744        M 0x800015ac addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     8745        M 0x800015b0 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     8746        M 0x800015b4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     8747        M 0x800015b8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001618
       0     8750        M 0x80001618 ret                            #; ra  = 0x80000a28, goto 0x80000a28
       0     8755        M 0x80000a28 addi    s0, s0, 1              #; s0  = 0x80002c59, (wrb) s0  <-- 0x80002c5a
       0     8756        M 0x80000a2c addi    s10, s10, 1            #; s10 = 0x80002c5b, (wrb) s10 <-- 0x80002c5c
       0     8758        M 0x80000a30 mv      s9, s1                 #; s1  = 5, (wrb) s9  <-- 5
       0     8759        M 0x80000a34 lbu     a0, 0(s0)              #; s0  = 0x80002c5a, a0  <~~ Byte[0x80002c5a]
       0     8770        M                                           #; (lsu) a0  <-- 32
       0     8771        M 0x80000a38 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000a10
       0     8772        M 0x80000a10 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     8773        M 0x80000a14 addi    s1, s9, 1              #; s9  = 5, (wrb) s1  <-- 6
       0     8774        M 0x80000a18 mv      a1, s4                 #; s4  = 0x0011fec7, (wrb) a1  <-- 0x0011fec7
       0     8775        M 0x80000a1c mv      a2, s9                 #; s9  = 5, (wrb) a2  <-- 5
       0     8776        M 0x80000a20 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     8777        M 0x80000a24 jalr    s2                     #; s2  = 0x80001570, (wrb) ra  <-- 0x80000a28, goto 0x80001570
       0     8780        M 0x80001570 beqz    a0, pc + 168           #; a0  = 32, not taken
       0     8781        M 0x80001574 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     8782        M 0x80001578 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     8783        M 0x8000157c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     8784        M 0x80001580 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003580
       0     8785        M 0x80001584 addi    a3, a3, -1516          #; a3  = 0x80003580, (wrb) a3  <-- 0x80002f94
       0     8786        M                                           #; (acc) a1  <-- 0x00d605b3
       0     8787        M 0x80001588 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
       0     8788        M 0x8000158c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     8799        M                                           #; (lsu) a4  <-- 5
       0     8800        M 0x80001590 addi    a5, a4, 1              #; a4  = 5, (wrb) a5  <-- 6
       0     8801        M 0x80001594 sw      a5, 0(a1)              #; a1  = 0x80002f94, 6 ~~> Word[0x80002f94]
       0     8802        M 0x80001598 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 5, (wrb) a4  <-- 0x80002f99
       0     8803        M 0x8000159c sb      a0, 72(a4)             #; a4  = 0x80002f99, 32 ~~> Byte[0x80002fe1]
       0     8804        M 0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     8825        M                                           #; (lsu) a4  <-- 6
       0     8826        M 0x800015a4 addi    a4, a4, -1020          #; a4  = 6, (wrb) a4  <-- -1014
       0     8827        M 0x800015a8 snez    a4, a4                 #; a4  = -1014, (wrb) a4  <-- 1
       0     8828        M 0x800015ac addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
       0     8829        M 0x800015b0 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
       0     8830        M 0x800015b4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     8831        M 0x800015b8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001618
       0     8834        M 0x80001618 ret                            #; ra  = 0x80000a28, goto 0x80000a28
       0     8839        M 0x80000a28 addi    s0, s0, 1              #; s0  = 0x80002c5a, (wrb) s0  <-- 0x80002c5b
       0     8840        M 0x80000a2c addi    s10, s10, 1            #; s10 = 0x80002c5c, (wrb) s10 <-- 0x80002c5d
       0     8842        M 0x80000a30 mv      s9, s1                 #; s1  = 6, (wrb) s9  <-- 6
       0     8843        M 0x80000a34 lbu     a0, 0(s0)              #; s0  = 0x80002c5b, a0  <~~ Byte[0x80002c5b]
       0     8854        M                                           #; (lsu) a0  <-- 61
       0     8855        M 0x80000a38 bnez    a0, pc - 40            #; a0  = 61, taken, goto 0x80000a10
       0     8856        M 0x80000a10 beq     a0, s6, pc + 48        #; a0  = 61, s6  = 37, not taken
       0     8857        M 0x80000a14 addi    s1, s9, 1              #; s9  = 6, (wrb) s1  <-- 7
       0     8858        M 0x80000a18 mv      a1, s4                 #; s4  = 0x0011fec7, (wrb) a1  <-- 0x0011fec7
       0     8859        M 0x80000a1c mv      a2, s9                 #; s9  = 6, (wrb) a2  <-- 6
       0     8860        M 0x80000a20 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     8861        M 0x80000a24 jalr    s2                     #; s2  = 0x80001570, (wrb) ra  <-- 0x80000a28, goto 0x80001570
       0     8864        M 0x80001570 beqz    a0, pc + 168           #; a0  = 61, not taken
       0     8865        M 0x80001574 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     8866        M 0x80001578 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     8867        M 0x8000157c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     8868        M 0x80001580 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003580
       0     8869        M 0x80001584 addi    a3, a3, -1516          #; a3  = 0x80003580, (wrb) a3  <-- 0x80002f94
       0     8870        M                                           #; (acc) a1  <-- 0x00d605b3
       0     8871        M 0x80001588 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
       0     8872        M 0x8000158c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     8883        M                                           #; (lsu) a4  <-- 6
       0     8884        M 0x80001590 addi    a5, a4, 1              #; a4  = 6, (wrb) a5  <-- 7
       0     8885        M 0x80001594 sw      a5, 0(a1)              #; a1  = 0x80002f94, 7 ~~> Word[0x80002f94]
       0     8886        M 0x80001598 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 6, (wrb) a4  <-- 0x80002f9a
       0     8887        M 0x8000159c sb      a0, 72(a4)             #; a4  = 0x80002f9a, 61 ~~> Byte[0x80002fe2]
       0     8888        M 0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     8909        M                                           #; (lsu) a4  <-- 7
       0     8910        M 0x800015a4 addi    a4, a4, -1020          #; a4  = 7, (wrb) a4  <-- -1013
       0     8911        M 0x800015a8 snez    a4, a4                 #; a4  = -1013, (wrb) a4  <-- 1
       0     8912        M 0x800015ac addi    a0, a0, -10            #; a0  = 61, (wrb) a0  <-- 51
       0     8913        M 0x800015b0 snez    a0, a0                 #; a0  = 51, (wrb) a0  <-- 1
       0     8914        M 0x800015b4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     8915        M 0x800015b8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001618
       0     8918        M 0x80001618 ret                            #; ra  = 0x80000a28, goto 0x80000a28
       0     8923        M 0x80000a28 addi    s0, s0, 1              #; s0  = 0x80002c5b, (wrb) s0  <-- 0x80002c5c
       0     8924        M 0x80000a2c addi    s10, s10, 1            #; s10 = 0x80002c5d, (wrb) s10 <-- 0x80002c5e
       0     8926        M 0x80000a30 mv      s9, s1                 #; s1  = 7, (wrb) s9  <-- 7
       0     8927        M 0x80000a34 lbu     a0, 0(s0)              #; s0  = 0x80002c5c, a0  <~~ Byte[0x80002c5c]
       0     8938        M                                           #; (lsu) a0  <-- 32
       0     8939        M 0x80000a38 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000a10
       0     8940        M 0x80000a10 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     8941        M 0x80000a14 addi    s1, s9, 1              #; s9  = 7, (wrb) s1  <-- 8
       0     8942        M 0x80000a18 mv      a1, s4                 #; s4  = 0x0011fec7, (wrb) a1  <-- 0x0011fec7
       0     8943        M 0x80000a1c mv      a2, s9                 #; s9  = 7, (wrb) a2  <-- 7
       0     8944        M 0x80000a20 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     8945        M 0x80000a24 jalr    s2                     #; s2  = 0x80001570, (wrb) ra  <-- 0x80000a28, goto 0x80001570
       0     8948        M 0x80001570 beqz    a0, pc + 168           #; a0  = 32, not taken
       0     8949        M 0x80001574 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     8950        M 0x80001578 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     8951        M 0x8000157c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     8952        M 0x80001580 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003580
       0     8953        M 0x80001584 addi    a3, a3, -1516          #; a3  = 0x80003580, (wrb) a3  <-- 0x80002f94
       0     8954        M                                           #; (acc) a1  <-- 0x00d605b3
       0     8955        M 0x80001588 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
       0     8956        M 0x8000158c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     8967        M                                           #; (lsu) a4  <-- 7
       0     8968        M 0x80001590 addi    a5, a4, 1              #; a4  = 7, (wrb) a5  <-- 8
       0     8969        M 0x80001594 sw      a5, 0(a1)              #; a1  = 0x80002f94, 8 ~~> Word[0x80002f94]
       0     8970        M 0x80001598 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 7, (wrb) a4  <-- 0x80002f9b
       0     8971        M 0x8000159c sb      a0, 72(a4)             #; a4  = 0x80002f9b, 32 ~~> Byte[0x80002fe3]
       0     8972        M 0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0     8993        M                                           #; (lsu) a4  <-- 8
       0     8994        M 0x800015a4 addi    a4, a4, -1020          #; a4  = 8, (wrb) a4  <-- -1012
       0     8995        M 0x800015a8 snez    a4, a4                 #; a4  = -1012, (wrb) a4  <-- 1
       0     8996        M 0x800015ac addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
       0     8997        M 0x800015b0 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
       0     8998        M 0x800015b4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     8999        M 0x800015b8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001618
       0     9002        M 0x80001618 ret                            #; ra  = 0x80000a28, goto 0x80000a28
       0     9007        M 0x80000a28 addi    s0, s0, 1              #; s0  = 0x80002c5c, (wrb) s0  <-- 0x80002c5d
       0     9008        M 0x80000a2c addi    s10, s10, 1            #; s10 = 0x80002c5e, (wrb) s10 <-- 0x80002c5f
       0     9010        M 0x80000a30 mv      s9, s1                 #; s1  = 8, (wrb) s9  <-- 8
       0     9011        M 0x80000a34 lbu     a0, 0(s0)              #; s0  = 0x80002c5d, a0  <~~ Byte[0x80002c5d]
       0     9022        M                                           #; (lsu) a0  <-- 37
       0     9023        M 0x80000a38 bnez    a0, pc - 40            #; a0  = 37, taken, goto 0x80000a10
       0     9024        M 0x80000a10 beq     a0, s6, pc + 48        #; a0  = 37, s6  = 37, taken, goto 0x80000a40
       0     9027        M 0x80000a40 li      s0, 0                  #; (wrb) s0  <-- 0
       0     9028        M 0x80000a44 j       pc + 0x10              #; goto 0x80000a54
       0     9030        M 0x80000a54 lbu     a0, -1(s10)            #; s10 = 0x80002c5f, a0  <~~ Byte[0x80002c5e]
       0     9041        M                                           #; (lsu) a0  <-- 102
       0     9042        M 0x80000a58 addi    a1, a0, -32            #; a0  = 102, (wrb) a1  <-- 70
       0     9043        M 0x80000a5c bltu    s11, a1, pc + 56       #; s11 = 16, a1  = 70, taken, goto 0x80000a94
       0     9046        M 0x80000a94 addi    a1, a0, -48            #; a0  = 102, (wrb) a1  <-- 54
       0     9047        M 0x80000a98 andi    a2, a1, 255            #; a1  = 54, (wrb) a2  <-- 54
       0     9048        M 0x80000a9c addi    a1, s10, -1            #; s10 = 0x80002c5f, (wrb) a1  <-- 0x80002c5e
       0     9049        M 0x80000aa0 li      a3, 9                  #; (wrb) a3  <-- 9
       0     9050        M 0x80000aa4 bltu    a3, a2, pc + 124       #; a3  = 9, a2  = 54, taken, goto 0x80000b20
       0     9054        M 0x80000b20 li      a2, 42                 #; (wrb) a2  <-- 42
       0     9055        M 0x80000b24 bne     a0, a2, pc + 80        #; a0  = 102, a2  = 42, taken, goto 0x80000b74
       0     9059        M 0x80000b74 li      s6, 0                  #; (wrb) s6  <-- 0
       0     9060        M 0x80000b78 mv      s10, a1                #; a1  = 0x80002c5e, (wrb) s10 <-- 0x80002c5e
       0     9061        M 0x80000b7c beq     a0, s7, pc - 164       #; a0  = 102, s7  = 46, not taken
       0     9064        M 0x80000b80 li      s7, 0                  #; (wrb) s7  <-- 0
       0     9065        M 0x80000b84 j       pc + 0xc               #; goto 0x80000b90
       0     9067        M 0x80000b90 addi    a1, a0, -104           #; a0  = 102, (wrb) a1  <-- -2
       0     9068        M 0x80000b94 srli    a2, a1, 1              #; a1  = -2, (wrb) a2  <-- 0x7fffffff
       0     9069        M 0x80000b98 slli    a1, a1, 31             #; a1  = -2, (wrb) a1  <-- 0
       0     9070        M 0x80000b9c or      a1, a1, a2             #; a1  = 0, a2  = 0x7fffffff, (wrb) a1  <-- 0x7fffffff
       0     9071        M 0x80000ba0 li      a2, 9                  #; (wrb) a2  <-- 9
       0     9072        M 0x80000ba4 bltu    a2, a1, pc + 100       #; a2  = 9, a1  = 0x7fffffff, taken, goto 0x80000c08
       0     9076        M 0x80000c08 addi    a1, a0, -37            #; a0  = 102, (wrb) a1  <-- 65
       0     9077        M 0x80000c0c li      a2, 83                 #; (wrb) a2  <-- 83
       0     9079        M 0x80000c10 bltu    a2, a1, pc + 264       #; a2  = 83, a1  = 65, not taken
       0     9080        M 0x80000c14 slli    a1, a1, 2              #; a1  = 65, (wrb) a1  <-- 260
       0     9081        M 0x80000c18 auipc   a2, 0x2                #; (wrb) a2  <-- 0x80002c18
       0     9082        M 0x80000c1c addi    a2, a2, 200            #; a2  = 0x80002c18, (wrb) a2  <-- 0x80002ce0
       0     9083        M 0x80000c20 add     a1, a1, a2             #; a1  = 260, a2  = 0x80002ce0, (wrb) a1  <-- 0x80002de4
       0     9084        M 0x80000c24 lw      a2, 0(a1)              #; a1  = 0x80002de4, a2  <~~ Word[0x80002de4]
       0     9085        M 0x80000c28 li      a1, 8                  #; (wrb) a1  <-- 8
       0     9086        M 0x80000c2c li      s8, 16                 #; (wrb) s8  <-- 16
       0     9095        M                                           #; (lsu) a2  <-- 0x80000c60
       0     9096        M 0x80000c30 jr      a2                     #; a2  = 0x80000c60, goto 0x80000c60
       0     9108        M 0x80000c60 li      a1, 70                 #; (wrb) a1  <-- 70
       0     9109        M 0x80000c64 bne     a0, a1, pc + 8         #; a0  = 102, a1  = 70, taken, goto 0x80000c6c
       0     9110        M 0x80000c6c addi    a0, s3, 7              #; s3  = 0x0011fed4, (wrb) a0  <-- 0x0011fedb
       0     9120        M 0x80000c70 andi    a0, a0, -8             #; a0  = 0x0011fedb, (wrb) a0  <-- 0x0011fed8
       0     9122        M 0x80000c78 addi    s3, a0, 8              #; a0  = 0x0011fed8, (wrb) s3  <-- 0x0011fee0
       0     9123        M 0x80000c7c mv      a0, s2                 #; s2  = 0x80001570, (wrb) a0  <-- 0x80001570
                         M 0x80000c74 fld     fa0, 0(a0)             #; fa0  <~~ Doub[0x0011fed8]
       0     9124        M                                           #; (f:lsu) fa0  <-- 0.0
       0     9132        M 0x80000c80 mv      a1, s4                 #; s4  = 0x0011fec7, (wrb) a1  <-- 0x0011fec7
       0     9133        M 0x80000c84 mv      a2, s9                 #; s9  = 8, (wrb) a2  <-- 8
       0     9134        M 0x80000c88 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     9135        M 0x80000c8c mv      a4, s7                 #; s7  = 0, (wrb) a4  <-- 0
       0     9144        M 0x80000c90 mv      a5, s6                 #; s6  = 0, (wrb) a5  <-- 0
       0     9145        M 0x80000c94 mv      a6, s0                 #; s0  = 0, (wrb) a6  <-- 0
       0     9146        M 0x80000c98 auipc   ra, 0x1                #; (wrb) ra  <-- 0x80001c98
       0     9147        M 0x80000c9c jalr    ra, ra, -1656          #; ra  = 0x80001c98, (wrb) ra  <-- 0x80000ca0, goto 0x80001620
       0     9158        M 0x80001620 addi    sp, sp, -112           #; sp  = 0x0011fe50, (wrb) sp  <-- 0x0011fde0
       0     9159        M 0x80001624 sw      ra, 108(sp)            #; sp  = 0x0011fde0, 0x80000ca0 ~~> Word[0x0011fe4c]
       0     9160        M 0x80001628 sw      s0, 104(sp)            #; sp  = 0x0011fde0, 0 ~~> Word[0x0011fe48]
       0     9161        M 0x8000162c sw      s1, 100(sp)            #; sp  = 0x0011fde0, 8 ~~> Word[0x0011fe44]
       0     9170        M 0x80001630 sw      s2, 96(sp)             #; sp  = 0x0011fde0, 0x80001570 ~~> Word[0x0011fe40]
       0     9171        M 0x80001634 sw      s3, 92(sp)             #; sp  = 0x0011fde0, 0x0011fee0 ~~> Word[0x0011fe3c]
       0     9172        M 0x80001638 sw      s4, 88(sp)             #; sp  = 0x0011fde0, 0x0011fec7 ~~> Word[0x0011fe38]
       0     9173        M 0x8000163c sw      s5, 84(sp)             #; sp  = 0x0011fde0, -1 ~~> Word[0x0011fe34]
       0     9182        M 0x80001640 sw      s6, 80(sp)             #; sp  = 0x0011fde0, 0 ~~> Word[0x0011fe30]
       0     9183        M 0x80001644 sw      s7, 76(sp)             #; sp  = 0x0011fde0, 0 ~~> Word[0x0011fe2c]
       0     9184        M 0x80001648 sw      s8, 72(sp)             #; sp  = 0x0011fde0, 16 ~~> Word[0x0011fe28]
       0     9185        M 0x8000164c sw      s9, 68(sp)             #; sp  = 0x0011fde0, 8 ~~> Word[0x0011fe24]
       0     9194        M 0x80001650 sw      s10, 64(sp)            #; sp  = 0x0011fde0, 0x80002c5e ~~> Word[0x0011fe20]
       0     9197        M 0x80001654 fsd     fs0, 56(sp)            #; 0.0 ~~> Doub[0x0011fe18]
       0     9198        M 0x80001658 fsd     fs1, 48(sp)            #; 0.0 ~~> Doub[0x0011fe10]
       0     9199        M 0x8000165c fsd     fs2, 40(sp)            #; 0.0 ~~> Doub[0x0011fe08]
       0     9206        M 0x80001660 auipc   s1, 0x2                #; (wrb) s1  <-- 0x80003660
       0     9207        M 0x80001664 addi    s1, s1, -1912          #; s1  = 0x80003660, (wrb) s1  <-- 0x80002ee8
       0     9210        M 0x80001668 fld     ft0, 0(s1)             #; ft0  <~~ Doub[0x80002ee8]
       0     9218        M 0x80001670 mv      s5, a6                 #; a6  = 0, (wrb) s5  <-- 0
       0     9219        M 0x80001674 mv      s2, a5                 #; a5  = 0, (wrb) s2  <-- 0
                         M                                           #; (f:lsu) ft0  <-- -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     9220        M 0x80001678 mv      s3, a3                 #; a3  = -1, (wrb) s3  <-- -1
                         M 0x8000166c fle.d   s1, ft0, fa0           #; ft0  = -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000, fa0  = 0.0
       0     9221        M 0x8000167c mv      s4, a2                 #; a2  = 8, (wrb) s4  <-- 8
       0     9230        M 0x80001680 mv      s6, a1                 #; a1  = 0x0011fec7, (wrb) s6  <-- 0x0011fec7
       0     9231        M 0x80001684 mv      s7, a0                 #; a0  = 0x80001570, (wrb) s7  <-- 0x80001570
       0     9232        M 0x80001688 bnez    s1, pc + 240           #; s1  = 1, taken, goto 0x80001778
       0     9254        M 0x8000177c auipc   a0, 0x1                #; (wrb) a0  <-- 0x8000277c
       0     9255        M 0x80001778 fsgnj.d fs0, fa0, fa0          #; fa0  = 0.0, fa0  = 0.0
       0     9256        M                                           #; (f:fpu) fs0  <-- 0.0
       0     9265        M 0x80001780 addi    a0, a0, 1908           #; a0  = 0x8000277c, (wrb) a0  <-- 0x80002ef0
       0     9268        M 0x80001784 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002ef0]
       0     9277        M                                           #; (f:lsu) ft0  <-- 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     9278        M 0x80001788 fle.d   a0, fa0, ft0           #; fa0  = 0.0, ft0  = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     9280        M                                           #; (acc) t3  <-- 0x00051e63
       0     9281        M 0x8000178c bnez    a0, pc + 28            #; a0  = 1, taken, goto 0x800017a8
       0     9293        M 0x800017a8 auipc   a0, 0x1                #; (wrb) a0  <-- 0x800027a8
       0     9294        M 0x800017ac addi    a0, a0, 1872           #; a0  = 0x800027a8, (wrb) a0  <-- 0x80002ef8
       0     9306        M 0x800017b4 auipc   a0, 0x1                #; (wrb) a0  <-- 0x800027b4
       0     9307        M 0x800017b8 addi    a0, a0, 1868           #; a0  = 0x800027b4, (wrb) a0  <-- 0x80002f00
                         M 0x800017b0 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002ef8]
       0     9310        M 0x800017bc fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80002f00]
       0     9316        M                                           #; (f:lsu) ft0  <-- 1000000000.0000000
       0     9318        M 0x800017c0 fle.d   a0, fs0, ft0           #; fs0  = 0.0, ft0  = 1000000000.0000000
       0     9319        M                                           #; (f:lsu) ft1  <-- -1000000000.0000000
       0     9320        M                                           #; (acc) a0  <-- 0x00b57533
                         M 0x800017c4 fle.d   a1, ft1, fs0           #; ft1  = -1000000000.0000000, fs0  = 0.0
       0     9322        M                                           #; (acc) a0  <-- 0x00b57533
       0     9323        M 0x800017c8 and     a0, a0, a1             #; a0  = 1, a1  = 1, (wrb) a0  <-- 1
       0     9324        M 0x800017cc bnez    a0, pc + 252           #; a0  = 1, taken, goto 0x800018c8
       0     9340        M 0x800018c8 andi    a0, s5, 1024           #; s5  = 0, (wrb) a0  <-- 0
       0     9341        M 0x800018cc li      s8, 6                  #; (wrb) s8  <-- 6
       0     9352        M 0x800018d0 beqz    a0, pc + 8             #; a0  = 0, taken, goto 0x800018d8
       0     9353        M 0x800018d8 li      a0, 10                 #; (wrb) a0  <-- 10
       0     9356        M 0x800018dc fsgnjx.d fs2, fs0, fs0         #; fs0  = 0.0, fs0  = 0.0
       0     9357        M                                           #; (f:fpu) fs2  <-- 0.0
       0     9364        M 0x800018e0 bltu    s8, a0, pc + 56        #; s8  = 6, a0  = 10, taken, goto 0x80001918
       0     9387        M 0x80001918 li      s0, 0                  #; (wrb) s0  <-- 0
       0     9388        M 0x8000191c slli    a0, s8, 3              #; s8  = 6, (wrb) a0  <-- 48
       0     9399        M 0x80001920 auipc   a1, 0x1                #; (wrb) a1  <-- 0x80002920
       0     9400        M 0x80001924 addi    a1, a1, 1296           #; a1  = 0x80002920, (wrb) a1  <-- 0x80002e30
       0     9401        M 0x80001928 add     a0, a0, a1             #; a0  = 48, a1  = 0x80002e30, (wrb) a0  <-- 0x80002e60
       0     9404        M 0x8000192c fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80002e60]
       0     9412        M 0x80001930 fcvt.w.d s1, fs2               #; fs2  = 0.0
       0     9413        M                                           #; (f:lsu) ft1  <-- 1000000.0000000
       0     9416        M 0x80001934 fcvt.d.w ft0, s1               #; ac1  = 0
       0     9417        M                                           #; (f:fpu) ft0  <-- 0.0
       0     9418        M 0x80001938 fsub.d  ft0, fs2, ft0          #; fs2  = 0.0, ft0  = 0.0
       0     9421        M                                           #; (f:fpu) ft0  <-- 0.0
       0     9422        M 0x8000193c fmul.d  ft2, ft1, ft0          #; ft1  = 1000000.0000000, ft0  = 0.0
       0     9423        M 0x80001940 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002940
       0     9424        M 0x80001944 addi    a0, a0, 1480           #; a0  = 0x80002940, (wrb) a0  <-- 0x80002f08
       0     9425        M                                           #; (f:fpu) ft2  <-- 0.0
       0     9427        M 0x80001948 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002f08]
       0     9428        M 0x8000194c fcvt.wu.d a0, ft2              #; ft2  = 0.0
       0     9436        M 0x80001950 fcvt.d.wu ft3, a0              #; ac1  = 0, (f:lsu) ft0  <-- 0.5
       0     9437        M                                           #; (f:fpu) ft3  <-- 0.0
       0     9438        M 0x80001954 fsub.d  ft2, ft2, ft3          #; ft2  = 0.0, ft3  = 0.0
       0     9441        M                                           #; (f:fpu) ft2  <-- 0.0
       0     9442        M 0x80001958 fle.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
       0     9445        M 0x8000195c bnez    a1, pc + 32            #; a1  = 1, taken, goto 0x8000197c
       0     9459        M 0x8000197c flt.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
       0     9470        M 0x80001980 bnez    a1, pc + 20            #; a1  = 1, taken, goto 0x80001994
       0     9483        M 0x80001998 beqz    s8, pc + 216           #; s8  = 6, not taken
                         M 0x80001994 fcvt.d.w fs1, zero             #; ac1  = 0
       0     9484        M 0x8000199c li      a2, 0                  #; (wrb) a2  <-- 0
                         M                                           #; (f:fpu) fs1  <-- 0.0
       0     9494        M 0x800019a0 addi    a1, sp, 8              #; sp  = 0x0011fde0, (wrb) a1  <-- 0x0011fde8
       0     9495        M 0x800019a4 add     t1, a1, s0             #; a1  = 0x0011fde8, s0  = 0, (wrb) t1  <-- 0x0011fde8
       0     9496        M 0x800019a8 li      t0, 32                 #; (wrb) t0  <-- 32
       0     9497        M 0x800019ac sub     a4, t0, s0             #; t0  = 32, s0  = 0, (wrb) a4  <-- 32
       0     9506        M 0x800019b0 lui     a1, 0xccccd            #; (wrb) a1  <-- 0xccccd000
       0     9507        M 0x800019b4 addi    t2, a1, -819           #; a1  = 0xccccd000, (wrb) t2  <-- 0xcccccccd
       0     9508        M 0x800019b8 li      a6, 10                 #; (wrb) a6  <-- 10
       0     9509        M 0x800019bc li      a7, 9                  #; (wrb) a7  <-- 9
       0     9518        M 0x800019c0 beq     a4, a2, pc + 200       #; a4  = 32, a2  = 0, not taken
       0     9519        M 0x800019c4 mv      a1, a0                 #; a0  = 0, (wrb) a1  <-- 0
       0     9520        M 0x800019c8 mulhu   a0, a0, t2             #; a0  = 0, t2  = 0xcccccccd
       0     9523        M                                           #; (acc) a0  <-- 0x00355513
       0     9524        M 0x800019cc srli    a0, a0, 3              #; a0  = 0, (wrb) a0  <-- 0
       0     9530        M 0x800019d0 mul     a3, a0, a6             #; a0  = 0, a6  = 10
       0     9533        M                                           #; (acc) a3  <-- 0x40d586b3
       0     9534        M 0x800019d4 sub     a3, a1, a3             #; a1  = 0, a3  = 0, (wrb) a3  <-- 0
       0     9535        M 0x800019d8 ori     a3, a3, 48             #; a3  = 0, (wrb) a3  <-- 48
       0     9536        M 0x800019dc add     a5, t1, a2             #; t1  = 0x0011fde8, a2  = 0, (wrb) a5  <-- 0x0011fde8
       0     9542        M 0x800019e0 sb      a3, 0(a5)              #; a5  = 0x0011fde8, 48 ~~> Byte[0x0011fde8]
       0     9543        M 0x800019e4 addi    a2, a2, 1              #; a2  = 0, (wrb) a2  <-- 1
       0     9544        M 0x800019e8 bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 0, not taken
       0     9545        M 0x800019ec add     a0, s0, a2             #; s0  = 0, a2  = 1, (wrb) a0  <-- 1
       0     9557        M 0x800019f0 addi    a1, a0, -1             #; a0  = 1, (wrb) a1  <-- 0
       0     9558        M 0x800019f4 li      a3, 30                 #; (wrb) a3  <-- 30
       0     9559        M 0x800019f8 sltu    a3, a3, a1             #; a3  = 30, a1  = 0, (wrb) a3  <-- 0
       0     9560        M 0x800019fc xor     a4, s8, a2             #; s8  = 6, a2  = 1, (wrb) a4  <-- 7
       0     9569        M 0x80001a00 seqz    a4, a4                 #; a4  = 7, (wrb) a4  <-- 0
       0     9570        M 0x80001a04 or      a3, a3, a4             #; a3  = 0, a4  = 0, (wrb) a3  <-- 0
       0     9571        M 0x80001a08 bnez    a3, pc + 136           #; a3  = 0, not taken
       0     9572        M 0x80001a0c addi    a0, sp, 8              #; sp  = 0x0011fde0, (wrb) a0  <-- 0x0011fde8
       0     9581        M 0x80001a10 add     a0, a0, s0             #; a0  = 0x0011fde8, s0  = 0, (wrb) a0  <-- 0x0011fde8
       0     9582        M 0x80001a14 not     a1, a2                 #; a2  = 1, (wrb) a1  <-- -2
       0     9583        M 0x80001a18 add     s8, a1, s8             #; a1  = -2, s8  = 6, (wrb) s8  <-- 4
       0     9584        M 0x80001a1c add     s0, s0, a2             #; s0  = 0, a2  = 1, (wrb) s0  <-- 1
       0     9593        M 0x80001a20 li      a1, 31                 #; (wrb) a1  <-- 31
       0     9594        M 0x80001a24 sub     a3, a1, s0             #; a1  = 31, s0  = 1, (wrb) a3  <-- 30
       0     9595        M 0x80001a28 add     a0, a0, a2             #; a0  = 0x0011fde8, a2  = 1, (wrb) a0  <-- 0x0011fde9
       0     9596        M 0x80001a2c mv      a1, s8                 #; s8  = 4, (wrb) a1  <-- 4
       0     9605        M 0x80001a30 bltu    s8, a3, pc + 8         #; s8  = 4, a3  = 30, taken, goto 0x80001a38
       0     9606        M 0x80001a38 addi    a2, a1, 1              #; a1  = 4, (wrb) a2  <-- 5
       0     9607        M 0x80001a3c li      a1, 48                 #; (wrb) a1  <-- 48
       0     9617        M 0x80001a40 auipc   ra, 0xfffff            #; (wrb) ra  <-- 0x80000a40
       0     9618        M 0x80001a44 jalr    ra, ra, -1256          #; ra  = 0x80000a40, (wrb) ra  <-- 0x80001a48, goto 0x80000558
       0     9640        M 0x80000558 li      t1, 15                 #; (wrb) t1  <-- 15
       0     9641        M 0x8000055c mv      a4, a0                 #; a0  = 0x0011fde9, (wrb) a4  <-- 0x0011fde9
       0     9652        M 0x80000560 bgeu    t1, a2, pc + 60        #; t1  = 15, a2  = 5, taken, goto 0x8000059c
       0     9675        M 0x8000059c sub     a3, t1, a2             #; t1  = 15, a2  = 5, (wrb) a3  <-- 10
       0     9687        M 0x800005a0 slli    a3, a3, 2              #; a3  = 10, (wrb) a3  <-- 40
       0     9688        M 0x800005a4 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800005a4
       0     9689        M 0x800005a8 add     a3, a3, t0             #; a3  = 40, t0  = 0x800005a4, (wrb) a3  <-- 0x800005cc
       0     9690        M 0x800005ac jalr    zero, a3, 12           #; a3  = 0x800005cc, goto 0x800005d8
       0     9710        M 0x800005d8 sb      a1, 4(a4)              #; a4  = 0x0011fde9, 48 ~~> Byte[0x0011fded]
       0     9711        M 0x800005dc sb      a1, 3(a4)              #; a4  = 0x0011fde9, 48 ~~> Byte[0x0011fdec]
       0     9722        M 0x800005e0 sb      a1, 2(a4)              #; a4  = 0x0011fde9, 48 ~~> Byte[0x0011fdeb]
       0     9723        M 0x800005e4 sb      a1, 1(a4)              #; a4  = 0x0011fde9, 48 ~~> Byte[0x0011fdea]
       0     9724        M 0x800005e8 sb      a1, 0(a4)              #; a4  = 0x0011fde9, 48 ~~> Byte[0x0011fde9]
       0     9725        M 0x800005ec ret                            #; ra  = 0x80001a48, goto 0x80001a48
       0     9736        M 0x80001a48 li      a0, 0                  #; (wrb) a0  <-- 0
       0     9737        M 0x80001a4c add     a1, s0, a0             #; s0  = 1, a0  = 0, (wrb) a1  <-- 1
       0     9739        M 0x80001a50 sltiu   a1, a1, 31             #; a1  = 1, (wrb) a1  <-- 1
       0     9740        M 0x80001a54 xor     a2, s8, a0             #; s8  = 4, a0  = 0, (wrb) a2  <-- 4
       0     9741        M 0x80001a58 snez    a2, a2                 #; a2  = 4, (wrb) a2  <-- 1
       0     9742        M 0x80001a5c and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     9751        M 0x80001a60 addi    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0     9752        M 0x80001a64 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001a4c
       0     9753        M 0x80001a4c add     a1, s0, a0             #; s0  = 1, a0  = 1, (wrb) a1  <-- 2
       0     9754        M 0x80001a50 sltiu   a1, a1, 31             #; a1  = 2, (wrb) a1  <-- 1
       0     9755        M 0x80001a54 xor     a2, s8, a0             #; s8  = 4, a0  = 1, (wrb) a2  <-- 5
       0     9756        M 0x80001a58 snez    a2, a2                 #; a2  = 5, (wrb) a2  <-- 1
       0     9757        M 0x80001a5c and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     9758        M 0x80001a60 addi    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 2
       0     9759        M 0x80001a64 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001a4c
       0     9760        M 0x80001a4c add     a1, s0, a0             #; s0  = 1, a0  = 2, (wrb) a1  <-- 3
       0     9761        M 0x80001a50 sltiu   a1, a1, 31             #; a1  = 3, (wrb) a1  <-- 1
       0     9762        M 0x80001a54 xor     a2, s8, a0             #; s8  = 4, a0  = 2, (wrb) a2  <-- 6
       0     9763        M 0x80001a58 snez    a2, a2                 #; a2  = 6, (wrb) a2  <-- 1
       0     9764        M 0x80001a5c and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     9765        M 0x80001a60 addi    a0, a0, 1              #; a0  = 2, (wrb) a0  <-- 3
       0     9766        M 0x80001a64 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001a4c
       0     9767        M 0x80001a4c add     a1, s0, a0             #; s0  = 1, a0  = 3, (wrb) a1  <-- 4
       0     9768        M 0x80001a50 sltiu   a1, a1, 31             #; a1  = 4, (wrb) a1  <-- 1
       0     9769        M 0x80001a54 xor     a2, s8, a0             #; s8  = 4, a0  = 3, (wrb) a2  <-- 7
       0     9770        M 0x80001a58 snez    a2, a2                 #; a2  = 7, (wrb) a2  <-- 1
       0     9771        M 0x80001a5c and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     9772        M 0x80001a60 addi    a0, a0, 1              #; a0  = 3, (wrb) a0  <-- 4
       0     9773        M 0x80001a64 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001a4c
       0     9774        M 0x80001a4c add     a1, s0, a0             #; s0  = 1, a0  = 4, (wrb) a1  <-- 5
       0     9775        M 0x80001a50 sltiu   a1, a1, 31             #; a1  = 5, (wrb) a1  <-- 1
       0     9776        M 0x80001a54 xor     a2, s8, a0             #; s8  = 4, a0  = 4, (wrb) a2  <-- 0
       0     9777        M 0x80001a58 snez    a2, a2                 #; a2  = 0, (wrb) a2  <-- 0
       0     9778        M 0x80001a5c and     a2, a1, a2             #; a1  = 1, a2  = 0, (wrb) a2  <-- 0
       0     9779        M 0x80001a60 addi    a0, a0, 1              #; a0  = 4, (wrb) a0  <-- 5
       0     9780        M 0x80001a64 bnez    a2, pc - 24            #; a2  = 0, not taken
       0     9781        M 0x80001a68 add     a0, s0, a0             #; s0  = 1, a0  = 5, (wrb) a0  <-- 6
       0     9782        M 0x80001a6c j       pc + 0x28              #; goto 0x80001a94
       0     9793        M 0x80001a94 beqz    a1, pc + 28            #; a1  = 1, not taken
       0     9794        M 0x80001a98 addi    s0, a0, 1              #; a0  = 6, (wrb) s0  <-- 7
       0     9795        M 0x80001a9c addi    a1, sp, 8              #; sp  = 0x0011fde0, (wrb) a1  <-- 0x0011fde8
       0     9805        M 0x80001aa0 add     a0, a1, a0             #; a1  = 0x0011fde8, a0  = 6, (wrb) a0  <-- 0x0011fdee
       0     9806        M 0x80001aa4 li      a1, 46                 #; (wrb) a1  <-- 46
       0     9807        M 0x80001aa8 sb      a1, 0(a0)              #; a0  = 0x0011fdee, 46 ~~> Byte[0x0011fdee]
       0     9808        M 0x80001aac j       pc + 0x8               #; goto 0x80001ab4
       0     9817        M 0x80001ab4 li      a0, 32                 #; (wrb) a0  <-- 32
       0     9818        M 0x80001ab8 mv      t0, s0                 #; s0  = 7, (wrb) t0  <-- 7
       0     9819        M 0x80001abc bltu    a0, s0, pc + 8         #; a0  = 32, s0  = 7, not taken
       0     9829        M 0x80001ac0 li      t0, 32                 #; (wrb) t0  <-- 32
       0     9831        M 0x80001ac8 lui     a0, 0x66666            #; (wrb) a0  <-- 0x66666000
                         M 0x80001ac4 flt.d   s9, fs0, fs1           #; fs0  = 0.0, fs1  = 0.0
       0     9832        M 0x80001acc addi    a1, a0, 1639           #; a0  = 0x66666000, (wrb) a1  <-- 0x66666667
       0     9841        M 0x80001ad0 li      a6, 10                 #; (wrb) a6  <-- 10
       0     9842        M 0x80001ad4 addi    a3, sp, 8              #; sp  = 0x0011fde0, (wrb) a3  <-- 0x0011fde8
       0     9843        M 0x80001ad8 li      a4, 18                 #; (wrb) a4  <-- 18
       0     9844        M 0x80001adc beq     t0, s0, pc + 64        #; t0  = 32, s0  = 7, not taken
       0     9853        M 0x80001ae0 mulh    a0, s1, a1             #; s1  = 0, a1  = 0x66666667
       0     9856        M                                           #; (acc) a5  <-- 0x01f55793
       0     9857        M 0x80001ae4 srli    a5, a0, 31             #; a0  = 0, (wrb) a5  <-- 0
       0     9858        M 0x80001ae8 srai    a0, a0, 2              #; a0  = 0, (wrb) a0  <-- 0
       0     9859        M 0x80001aec add     a0, a0, a5             #; a0  = 0, a5  = 0, (wrb) a0  <-- 0
       0     9865        M 0x80001af0 mul     a5, a0, a6             #; a0  = 0, a6  = 10
       0     9868        M                                           #; (acc) a5  <-- 0x40f487b3
       0     9869        M 0x80001af4 sub     a5, s1, a5             #; s1  = 0, a5  = 0, (wrb) a5  <-- 0
       0     9870        M 0x80001af8 addi    a5, a5, 48             #; a5  = 0, (wrb) a5  <-- 48
       0     9871        M 0x80001afc addi    s8, s0, 1              #; s0  = 7, (wrb) s8  <-- 8
       0     9877        M 0x80001b00 add     s0, a3, s0             #; a3  = 0x0011fde8, s0  = 7, (wrb) s0  <-- 0x0011fdef
       0     9878        M 0x80001b04 addi    a2, s1, 9              #; s1  = 0, (wrb) a2  <-- 9
       0     9879        M 0x80001b08 sb      a5, 0(s0)              #; s0  = 0x0011fdef, 48 ~~> Byte[0x0011fdef]
       0     9880        M 0x80001b0c mv      s0, s8                 #; s8  = 8, (wrb) s0  <-- 8
       0     9889        M 0x80001b10 mv      s1, a0                 #; a0  = 0, (wrb) s1  <-- 0
       0     9890        M 0x80001b14 bltu    a4, a2, pc - 56        #; a4  = 18, a2  = 9, not taken
       0     9891        M 0x80001b18 j       pc + 0x8               #; goto 0x80001b20
       0     9903        M 0x80001b20 andi    s1, s5, 3              #; s5  = 0, (wrb) s1  <-- 0
       0     9904        M 0x80001b24 li      a0, 1                  #; (wrb) a0  <-- 1
       0     9905        M 0x80001b28 bne     s1, a0, pc + 108       #; s1  = 0, a0  = 1, taken, goto 0x80001b94
       0     9926        M 0x80001b94 li      a0, 31                 #; (wrb) a0  <-- 31
       0     9927        M 0x80001b98 bltu    a0, s8, pc + 84        #; a0  = 31, s8  = 8, not taken
       0     9928        M 0x80001b9c beqz    s9, pc + 24            #; s9  = 0, taken, goto 0x80001bb4
       0     9949        M 0x80001bb4 andi    a0, s5, 4              #; s5  = 0, (wrb) a0  <-- 0
       0     9950        M 0x80001bb8 bnez    a0, pc + 32            #; a0  = 0, not taken
       0     9951        M 0x80001bbc andi    a0, s5, 8              #; s5  = 0, (wrb) a0  <-- 0
       0     9961        M 0x80001bc0 beqz    a0, pc + 44            #; a0  = 0, taken, goto 0x80001bec
       0     9984        M 0x80001bec snez    a0, s1                 #; s1  = 0, (wrb) a0  <-- 0
       0     9996        M 0x80001bf0 sltu    a1, s8, s2             #; s8  = 8, s2  = 0, (wrb) a1  <-- 0
       0     9997        M 0x80001bf4 xori    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
       0     9998        M 0x80001bf8 or      a0, a0, a1             #; a0  = 0, a1  = 1, (wrb) a0  <-- 1
       0     9999        M 0x80001bfc andi    s5, s5, 2              #; s5  = 0, (wrb) s5  <-- 0
       0    10008        M 0x80001c00 mv      s0, s4                 #; s4  = 8, (wrb) s0  <-- 8
       0    10009        M 0x80001c04 bnez    a0, pc + 44            #; a0  = 1, taken, goto 0x80001c30
       0    10031        M 0x80001c30 srli    s5, s5, 1              #; s5  = 0, (wrb) s5  <-- 0
       0    10032        M 0x80001c34 beqz    s8, pc + 56            #; s8  = 8, not taken
       0    10033        M 0x80001c38 addi    s9, sp, 7              #; sp  = 0x0011fde0, (wrb) s9  <-- 0x0011fde7
       0    10034        M 0x80001c3c add     a0, s9, s8             #; s9  = 0x0011fde7, s8  = 8, (wrb) a0  <-- 0x0011fdef
       0    10043        M 0x80001c40 lbu     a0, 0(a0)              #; a0  = 0x0011fdef, a0  <~~ Byte[0x0011fdef]
       0    10044        M 0x80001c44 addi    s10, s8, -1            #; s8  = 8, (wrb) s10 <-- 7
       0    10045        M 0x80001c48 addi    s1, s0, 1              #; s0  = 8, (wrb) s1  <-- 9
       0    10046        M 0x80001c4c mv      a1, s6                 #; s6  = 0x0011fec7, (wrb) a1  <-- 0x0011fec7
       0    10047        M                                           #; (lsu) a0  <-- 48
       0    10055        M 0x80001c50 mv      a2, s0                 #; s0  = 8, (wrb) a2  <-- 8
       0    10056        M 0x80001c54 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0    10057        M 0x80001c58 jalr    s7                     #; s7  = 0x80001570, (wrb) ra  <-- 0x80001c5c, goto 0x80001570
       0    10078        M 0x80001570 beqz    a0, pc + 168           #; a0  = 48, not taken
       0    10079        M 0x80001574 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0    10080        M 0x80001578 li      a2, 1096               #; (wrb) a2  <-- 1096
       0    10081        M 0x8000157c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0    10082        M 0x80001580 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003580
       0    10083        M 0x80001584 addi    a3, a3, -1516          #; a3  = 0x80003580, (wrb) a3  <-- 0x80002f94
       0    10084        M                                           #; (acc) a1  <-- 0x00d605b3
       0    10085        M 0x80001588 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
       0    10086        M 0x8000158c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0    10097        M                                           #; (lsu) a4  <-- 8
       0    10098        M 0x80001590 addi    a5, a4, 1              #; a4  = 8, (wrb) a5  <-- 9
       0    10099        M 0x80001594 sw      a5, 0(a1)              #; a1  = 0x80002f94, 9 ~~> Word[0x80002f94]
       0    10100        M 0x80001598 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 8, (wrb) a4  <-- 0x80002f9c
       0    10101        M 0x8000159c sb      a0, 72(a4)             #; a4  = 0x80002f9c, 48 ~~> Byte[0x80002fe4]
       0    10106        M 0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0    10123        M                                           #; (lsu) a4  <-- 9
       0    10124        M 0x800015a4 addi    a4, a4, -1020          #; a4  = 9, (wrb) a4  <-- -1011
       0    10125        M 0x800015a8 snez    a4, a4                 #; a4  = -1011, (wrb) a4  <-- 1
       0    10126        M 0x800015ac addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0    10127        M 0x800015b0 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0    10128        M 0x800015b4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0    10129        M 0x800015b8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001618
       0    10132        M 0x80001618 ret                            #; ra  = 0x80001c5c, goto 0x80001c5c
       0    10137        M 0x80001c5c mv      s0, s1                 #; s1  = 9, (wrb) s0  <-- 9
       0    10140        M 0x80001c60 mv      s8, s10                #; s10 = 7, (wrb) s8  <-- 7
       0    10141        M 0x80001c64 bnez    s10, pc - 40           #; s10 = 7, taken, goto 0x80001c3c
       0    10143        M 0x80001c3c add     a0, s9, s8             #; s9  = 0x0011fde7, s8  = 7, (wrb) a0  <-- 0x0011fdee
       0    10146        M 0x80001c40 lbu     a0, 0(a0)              #; a0  = 0x0011fdee, a0  <~~ Byte[0x0011fdee]
       0    10147        M 0x80001c44 addi    s10, s8, -1            #; s8  = 7, (wrb) s10 <-- 6
       0    10148        M 0x80001c48 addi    s1, s0, 1              #; s0  = 9, (wrb) s1  <-- 10
       0    10149        M 0x80001c4c mv      a1, s6                 #; s6  = 0x0011fec7, (wrb) a1  <-- 0x0011fec7
       0    10150        M 0x80001c50 mv      a2, s0                 #; s0  = 9, (wrb) a2  <-- 9
       0    10151        M 0x80001c54 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0    10152        M 0x80001c58 jalr    s7                     #; s7  = 0x80001570, (wrb) ra  <-- 0x80001c5c, goto 0x80001570
       0    10153        M                                           #; (lsu) a0  <-- 46
       0    10155        M 0x80001570 beqz    a0, pc + 168           #; a0  = 46, not taken
       0    10156        M 0x80001574 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0    10157        M 0x80001578 li      a2, 1096               #; (wrb) a2  <-- 1096
       0    10158        M 0x8000157c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0    10159        M 0x80001580 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003580
       0    10160        M 0x80001584 addi    a3, a3, -1516          #; a3  = 0x80003580, (wrb) a3  <-- 0x80002f94
       0    10161        M                                           #; (acc) a1  <-- 0x00d605b3
       0    10162        M 0x80001588 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
       0    10163        M 0x8000158c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0    10174        M                                           #; (lsu) a4  <-- 9
       0    10175        M 0x80001590 addi    a5, a4, 1              #; a4  = 9, (wrb) a5  <-- 10
       0    10176        M 0x80001594 sw      a5, 0(a1)              #; a1  = 0x80002f94, 10 ~~> Word[0x80002f94]
       0    10177        M 0x80001598 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 9, (wrb) a4  <-- 0x80002f9d
       0    10178        M 0x8000159c sb      a0, 72(a4)             #; a4  = 0x80002f9d, 46 ~~> Byte[0x80002fe5]
       0    10179        M 0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0    10200        M                                           #; (lsu) a4  <-- 10
       0    10201        M 0x800015a4 addi    a4, a4, -1020          #; a4  = 10, (wrb) a4  <-- -1010
       0    10202        M 0x800015a8 snez    a4, a4                 #; a4  = -1010, (wrb) a4  <-- 1
       0    10203        M 0x800015ac addi    a0, a0, -10            #; a0  = 46, (wrb) a0  <-- 36
       0    10204        M 0x800015b0 snez    a0, a0                 #; a0  = 36, (wrb) a0  <-- 1
       0    10205        M 0x800015b4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0    10206        M 0x800015b8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001618
       0    10209        M 0x80001618 ret                            #; ra  = 0x80001c5c, goto 0x80001c5c
       0    10214        M 0x80001c5c mv      s0, s1                 #; s1  = 10, (wrb) s0  <-- 10
       0    10217        M 0x80001c60 mv      s8, s10                #; s10 = 6, (wrb) s8  <-- 6
       0    10218        M 0x80001c64 bnez    s10, pc - 40           #; s10 = 6, taken, goto 0x80001c3c
       0    10220        M 0x80001c3c add     a0, s9, s8             #; s9  = 0x0011fde7, s8  = 6, (wrb) a0  <-- 0x0011fded
       0    10223        M 0x80001c40 lbu     a0, 0(a0)              #; a0  = 0x0011fded, a0  <~~ Byte[0x0011fded]
       0    10224        M 0x80001c44 addi    s10, s8, -1            #; s8  = 6, (wrb) s10 <-- 5
       0    10225        M 0x80001c48 addi    s1, s0, 1              #; s0  = 10, (wrb) s1  <-- 11
       0    10226        M 0x80001c4c mv      a1, s6                 #; s6  = 0x0011fec7, (wrb) a1  <-- 0x0011fec7
       0    10227        M 0x80001c50 mv      a2, s0                 #; s0  = 10, (wrb) a2  <-- 10
       0    10228        M 0x80001c54 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0    10229        M 0x80001c58 jalr    s7                     #; s7  = 0x80001570, (wrb) ra  <-- 0x80001c5c, goto 0x80001570
       0    10230        M                                           #; (lsu) a0  <-- 48
       0    10232        M 0x80001570 beqz    a0, pc + 168           #; a0  = 48, not taken
       0    10233        M 0x80001574 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0    10234        M 0x80001578 li      a2, 1096               #; (wrb) a2  <-- 1096
       0    10235        M 0x8000157c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0    10236        M 0x80001580 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003580
       0    10237        M 0x80001584 addi    a3, a3, -1516          #; a3  = 0x80003580, (wrb) a3  <-- 0x80002f94
       0    10238        M                                           #; (acc) a1  <-- 0x00d605b3
       0    10239        M 0x80001588 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
       0    10240        M 0x8000158c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0    10251        M                                           #; (lsu) a4  <-- 10
       0    10252        M 0x80001590 addi    a5, a4, 1              #; a4  = 10, (wrb) a5  <-- 11
       0    10253        M 0x80001594 sw      a5, 0(a1)              #; a1  = 0x80002f94, 11 ~~> Word[0x80002f94]
       0    10254        M 0x80001598 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 10, (wrb) a4  <-- 0x80002f9e
       0    10255        M 0x8000159c sb      a0, 72(a4)             #; a4  = 0x80002f9e, 48 ~~> Byte[0x80002fe6]
       0    10256        M 0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0    10277        M                                           #; (lsu) a4  <-- 11
       0    10278        M 0x800015a4 addi    a4, a4, -1020          #; a4  = 11, (wrb) a4  <-- -1009
       0    10279        M 0x800015a8 snez    a4, a4                 #; a4  = -1009, (wrb) a4  <-- 1
       0    10280        M 0x800015ac addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0    10281        M 0x800015b0 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0    10282        M 0x800015b4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0    10283        M 0x800015b8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001618
       0    10286        M 0x80001618 ret                            #; ra  = 0x80001c5c, goto 0x80001c5c
       0    10291        M 0x80001c5c mv      s0, s1                 #; s1  = 11, (wrb) s0  <-- 11
       0    10294        M 0x80001c60 mv      s8, s10                #; s10 = 5, (wrb) s8  <-- 5
       0    10295        M 0x80001c64 bnez    s10, pc - 40           #; s10 = 5, taken, goto 0x80001c3c
       0    10297        M 0x80001c3c add     a0, s9, s8             #; s9  = 0x0011fde7, s8  = 5, (wrb) a0  <-- 0x0011fdec
       0    10300        M 0x80001c40 lbu     a0, 0(a0)              #; a0  = 0x0011fdec, a0  <~~ Byte[0x0011fdec]
       0    10301        M 0x80001c44 addi    s10, s8, -1            #; s8  = 5, (wrb) s10 <-- 4
       0    10302        M 0x80001c48 addi    s1, s0, 1              #; s0  = 11, (wrb) s1  <-- 12
       0    10303        M 0x80001c4c mv      a1, s6                 #; s6  = 0x0011fec7, (wrb) a1  <-- 0x0011fec7
       0    10304        M 0x80001c50 mv      a2, s0                 #; s0  = 11, (wrb) a2  <-- 11
       0    10305        M 0x80001c54 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0    10306        M 0x80001c58 jalr    s7                     #; s7  = 0x80001570, (wrb) ra  <-- 0x80001c5c, goto 0x80001570
       0    10307        M                                           #; (lsu) a0  <-- 48
       0    10309        M 0x80001570 beqz    a0, pc + 168           #; a0  = 48, not taken
       0    10310        M 0x80001574 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0    10311        M 0x80001578 li      a2, 1096               #; (wrb) a2  <-- 1096
       0    10312        M 0x8000157c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0    10313        M 0x80001580 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003580
       0    10314        M 0x80001584 addi    a3, a3, -1516          #; a3  = 0x80003580, (wrb) a3  <-- 0x80002f94
       0    10315        M                                           #; (acc) a1  <-- 0x00d605b3
       0    10316        M 0x80001588 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
       0    10317        M 0x8000158c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0    10328        M                                           #; (lsu) a4  <-- 11
       0    10329        M 0x80001590 addi    a5, a4, 1              #; a4  = 11, (wrb) a5  <-- 12
       0    10330        M 0x80001594 sw      a5, 0(a1)              #; a1  = 0x80002f94, 12 ~~> Word[0x80002f94]
       0    10331        M 0x80001598 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 11, (wrb) a4  <-- 0x80002f9f
       0    10332        M 0x8000159c sb      a0, 72(a4)             #; a4  = 0x80002f9f, 48 ~~> Byte[0x80002fe7]
       0    10333        M 0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0    10354        M                                           #; (lsu) a4  <-- 12
       0    10355        M 0x800015a4 addi    a4, a4, -1020          #; a4  = 12, (wrb) a4  <-- -1008
       0    10356        M 0x800015a8 snez    a4, a4                 #; a4  = -1008, (wrb) a4  <-- 1
       0    10357        M 0x800015ac addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0    10358        M 0x800015b0 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0    10359        M 0x800015b4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0    10360        M 0x800015b8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001618
       0    10363        M 0x80001618 ret                            #; ra  = 0x80001c5c, goto 0x80001c5c
       0    10368        M 0x80001c5c mv      s0, s1                 #; s1  = 12, (wrb) s0  <-- 12
       0    10371        M 0x80001c60 mv      s8, s10                #; s10 = 4, (wrb) s8  <-- 4
       0    10372        M 0x80001c64 bnez    s10, pc - 40           #; s10 = 4, taken, goto 0x80001c3c
       0    10374        M 0x80001c3c add     a0, s9, s8             #; s9  = 0x0011fde7, s8  = 4, (wrb) a0  <-- 0x0011fdeb
       0    10377        M 0x80001c40 lbu     a0, 0(a0)              #; a0  = 0x0011fdeb, a0  <~~ Byte[0x0011fdeb]
       0    10378        M 0x80001c44 addi    s10, s8, -1            #; s8  = 4, (wrb) s10 <-- 3
       0    10379        M 0x80001c48 addi    s1, s0, 1              #; s0  = 12, (wrb) s1  <-- 13
       0    10380        M 0x80001c4c mv      a1, s6                 #; s6  = 0x0011fec7, (wrb) a1  <-- 0x0011fec7
       0    10381        M 0x80001c50 mv      a2, s0                 #; s0  = 12, (wrb) a2  <-- 12
       0    10382        M 0x80001c54 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0    10383        M 0x80001c58 jalr    s7                     #; s7  = 0x80001570, (wrb) ra  <-- 0x80001c5c, goto 0x80001570
       0    10384        M                                           #; (lsu) a0  <-- 48
       0    10386        M 0x80001570 beqz    a0, pc + 168           #; a0  = 48, not taken
       0    10387        M 0x80001574 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0    10388        M 0x80001578 li      a2, 1096               #; (wrb) a2  <-- 1096
       0    10389        M 0x8000157c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0    10390        M 0x80001580 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003580
       0    10391        M 0x80001584 addi    a3, a3, -1516          #; a3  = 0x80003580, (wrb) a3  <-- 0x80002f94
       0    10392        M                                           #; (acc) a1  <-- 0x00d605b3
       0    10393        M 0x80001588 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
       0    10394        M 0x8000158c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0    10405        M                                           #; (lsu) a4  <-- 12
       0    10406        M 0x80001590 addi    a5, a4, 1              #; a4  = 12, (wrb) a5  <-- 13
       0    10407        M 0x80001594 sw      a5, 0(a1)              #; a1  = 0x80002f94, 13 ~~> Word[0x80002f94]
       0    10408        M 0x80001598 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 12, (wrb) a4  <-- 0x80002fa0
       0    10409        M 0x8000159c sb      a0, 72(a4)             #; a4  = 0x80002fa0, 48 ~~> Byte[0x80002fe8]
       0    10410        M 0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0    10431        M                                           #; (lsu) a4  <-- 13
       0    10432        M 0x800015a4 addi    a4, a4, -1020          #; a4  = 13, (wrb) a4  <-- -1007
       0    10433        M 0x800015a8 snez    a4, a4                 #; a4  = -1007, (wrb) a4  <-- 1
       0    10434        M 0x800015ac addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0    10435        M 0x800015b0 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0    10436        M 0x800015b4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0    10437        M 0x800015b8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001618
       0    10440        M 0x80001618 ret                            #; ra  = 0x80001c5c, goto 0x80001c5c
       0    10445        M 0x80001c5c mv      s0, s1                 #; s1  = 13, (wrb) s0  <-- 13
       0    10448        M 0x80001c60 mv      s8, s10                #; s10 = 3, (wrb) s8  <-- 3
       0    10449        M 0x80001c64 bnez    s10, pc - 40           #; s10 = 3, taken, goto 0x80001c3c
       0    10451        M 0x80001c3c add     a0, s9, s8             #; s9  = 0x0011fde7, s8  = 3, (wrb) a0  <-- 0x0011fdea
       0    10454        M 0x80001c40 lbu     a0, 0(a0)              #; a0  = 0x0011fdea, a0  <~~ Byte[0x0011fdea]
       0    10455        M 0x80001c44 addi    s10, s8, -1            #; s8  = 3, (wrb) s10 <-- 2
       0    10456        M 0x80001c48 addi    s1, s0, 1              #; s0  = 13, (wrb) s1  <-- 14
       0    10457        M 0x80001c4c mv      a1, s6                 #; s6  = 0x0011fec7, (wrb) a1  <-- 0x0011fec7
       0    10458        M 0x80001c50 mv      a2, s0                 #; s0  = 13, (wrb) a2  <-- 13
       0    10459        M 0x80001c54 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0    10460        M 0x80001c58 jalr    s7                     #; s7  = 0x80001570, (wrb) ra  <-- 0x80001c5c, goto 0x80001570
       0    10461        M                                           #; (lsu) a0  <-- 48
       0    10463        M 0x80001570 beqz    a0, pc + 168           #; a0  = 48, not taken
       0    10464        M 0x80001574 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0    10465        M 0x80001578 li      a2, 1096               #; (wrb) a2  <-- 1096
       0    10466        M 0x8000157c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0    10467        M 0x80001580 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003580
       0    10468        M 0x80001584 addi    a3, a3, -1516          #; a3  = 0x80003580, (wrb) a3  <-- 0x80002f94
       0    10469        M                                           #; (acc) a1  <-- 0x00d605b3
       0    10470        M 0x80001588 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
       0    10471        M 0x8000158c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0    10482        M                                           #; (lsu) a4  <-- 13
       0    10483        M 0x80001590 addi    a5, a4, 1              #; a4  = 13, (wrb) a5  <-- 14
       0    10484        M 0x80001594 sw      a5, 0(a1)              #; a1  = 0x80002f94, 14 ~~> Word[0x80002f94]
       0    10485        M 0x80001598 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 13, (wrb) a4  <-- 0x80002fa1
       0    10486        M 0x8000159c sb      a0, 72(a4)             #; a4  = 0x80002fa1, 48 ~~> Byte[0x80002fe9]
       0    10487        M 0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0    10508        M                                           #; (lsu) a4  <-- 14
       0    10509        M 0x800015a4 addi    a4, a4, -1020          #; a4  = 14, (wrb) a4  <-- -1006
       0    10510        M 0x800015a8 snez    a4, a4                 #; a4  = -1006, (wrb) a4  <-- 1
       0    10511        M 0x800015ac addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0    10512        M 0x800015b0 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0    10513        M 0x800015b4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0    10514        M 0x800015b8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001618
       0    10517        M 0x80001618 ret                            #; ra  = 0x80001c5c, goto 0x80001c5c
       0    10522        M 0x80001c5c mv      s0, s1                 #; s1  = 14, (wrb) s0  <-- 14
       0    10525        M 0x80001c60 mv      s8, s10                #; s10 = 2, (wrb) s8  <-- 2
       0    10526        M 0x80001c64 bnez    s10, pc - 40           #; s10 = 2, taken, goto 0x80001c3c
       0    10528        M 0x80001c3c add     a0, s9, s8             #; s9  = 0x0011fde7, s8  = 2, (wrb) a0  <-- 0x0011fde9
       0    10531        M 0x80001c40 lbu     a0, 0(a0)              #; a0  = 0x0011fde9, a0  <~~ Byte[0x0011fde9]
       0    10532        M 0x80001c44 addi    s10, s8, -1            #; s8  = 2, (wrb) s10 <-- 1
       0    10533        M 0x80001c48 addi    s1, s0, 1              #; s0  = 14, (wrb) s1  <-- 15
       0    10534        M 0x80001c4c mv      a1, s6                 #; s6  = 0x0011fec7, (wrb) a1  <-- 0x0011fec7
       0    10535        M 0x80001c50 mv      a2, s0                 #; s0  = 14, (wrb) a2  <-- 14
       0    10536        M 0x80001c54 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0    10537        M 0x80001c58 jalr    s7                     #; s7  = 0x80001570, (wrb) ra  <-- 0x80001c5c, goto 0x80001570
       0    10538        M                                           #; (lsu) a0  <-- 48
       0    10540        M 0x80001570 beqz    a0, pc + 168           #; a0  = 48, not taken
       0    10541        M 0x80001574 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0    10542        M 0x80001578 li      a2, 1096               #; (wrb) a2  <-- 1096
       0    10543        M 0x8000157c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0    10544        M 0x80001580 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003580
       0    10545        M 0x80001584 addi    a3, a3, -1516          #; a3  = 0x80003580, (wrb) a3  <-- 0x80002f94
       0    10546        M                                           #; (acc) a1  <-- 0x00d605b3
       0    10547        M 0x80001588 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
       0    10548        M 0x8000158c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0    10559        M                                           #; (lsu) a4  <-- 14
       0    10560        M 0x80001590 addi    a5, a4, 1              #; a4  = 14, (wrb) a5  <-- 15
       0    10561        M 0x80001594 sw      a5, 0(a1)              #; a1  = 0x80002f94, 15 ~~> Word[0x80002f94]
       0    10562        M 0x80001598 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 14, (wrb) a4  <-- 0x80002fa2
       0    10563        M 0x8000159c sb      a0, 72(a4)             #; a4  = 0x80002fa2, 48 ~~> Byte[0x80002fea]
       0    10564        M 0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0    10585        M                                           #; (lsu) a4  <-- 15
       0    10586        M 0x800015a4 addi    a4, a4, -1020          #; a4  = 15, (wrb) a4  <-- -1005
       0    10587        M 0x800015a8 snez    a4, a4                 #; a4  = -1005, (wrb) a4  <-- 1
       0    10588        M 0x800015ac addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0    10589        M 0x800015b0 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0    10590        M 0x800015b4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0    10591        M 0x800015b8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001618
       0    10594        M 0x80001618 ret                            #; ra  = 0x80001c5c, goto 0x80001c5c
       0    10599        M 0x80001c5c mv      s0, s1                 #; s1  = 15, (wrb) s0  <-- 15
       0    10602        M 0x80001c60 mv      s8, s10                #; s10 = 1, (wrb) s8  <-- 1
       0    10603        M 0x80001c64 bnez    s10, pc - 40           #; s10 = 1, taken, goto 0x80001c3c
       0    10605        M 0x80001c3c add     a0, s9, s8             #; s9  = 0x0011fde7, s8  = 1, (wrb) a0  <-- 0x0011fde8
       0    10608        M 0x80001c40 lbu     a0, 0(a0)              #; a0  = 0x0011fde8, a0  <~~ Byte[0x0011fde8]
       0    10609        M 0x80001c44 addi    s10, s8, -1            #; s8  = 1, (wrb) s10 <-- 0
       0    10610        M 0x80001c48 addi    s1, s0, 1              #; s0  = 15, (wrb) s1  <-- 16
       0    10611        M 0x80001c4c mv      a1, s6                 #; s6  = 0x0011fec7, (wrb) a1  <-- 0x0011fec7
       0    10612        M 0x80001c50 mv      a2, s0                 #; s0  = 15, (wrb) a2  <-- 15
       0    10613        M 0x80001c54 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0    10614        M 0x80001c58 jalr    s7                     #; s7  = 0x80001570, (wrb) ra  <-- 0x80001c5c, goto 0x80001570
       0    10615        M                                           #; (lsu) a0  <-- 48
       0    10617        M 0x80001570 beqz    a0, pc + 168           #; a0  = 48, not taken
       0    10618        M 0x80001574 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0    10619        M 0x80001578 li      a2, 1096               #; (wrb) a2  <-- 1096
       0    10620        M 0x8000157c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0    10621        M 0x80001580 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003580
       0    10622        M 0x80001584 addi    a3, a3, -1516          #; a3  = 0x80003580, (wrb) a3  <-- 0x80002f94
       0    10623        M                                           #; (acc) a1  <-- 0x00d605b3
       0    10624        M 0x80001588 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
       0    10625        M 0x8000158c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0    10636        M                                           #; (lsu) a4  <-- 15
       0    10637        M 0x80001590 addi    a5, a4, 1              #; a4  = 15, (wrb) a5  <-- 16
       0    10638        M 0x80001594 sw      a5, 0(a1)              #; a1  = 0x80002f94, 16 ~~> Word[0x80002f94]
       0    10639        M 0x80001598 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 15, (wrb) a4  <-- 0x80002fa3
       0    10640        M 0x8000159c sb      a0, 72(a4)             #; a4  = 0x80002fa3, 48 ~~> Byte[0x80002feb]
       0    10641        M 0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0    10662        M                                           #; (lsu) a4  <-- 16
       0    10663        M 0x800015a4 addi    a4, a4, -1020          #; a4  = 16, (wrb) a4  <-- -1004
       0    10664        M 0x800015a8 snez    a4, a4                 #; a4  = -1004, (wrb) a4  <-- 1
       0    10665        M 0x800015ac addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0    10666        M 0x800015b0 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0    10667        M 0x800015b4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0    10668        M 0x800015b8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001618
       0    10671        M 0x80001618 ret                            #; ra  = 0x80001c5c, goto 0x80001c5c
       0    10676        M 0x80001c5c mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
       0    10679        M 0x80001c60 mv      s8, s10                #; s10 = 0, (wrb) s8  <-- 0
       0    10680        M 0x80001c64 bnez    s10, pc - 40           #; s10 = 0, not taken
       0    10681        M 0x80001c68 j       pc + 0x8               #; goto 0x80001c70
       0    10693        M 0x80001c70 sub     a0, s1, s4             #; s1  = 16, s4  = 8, (wrb) a0  <-- 8
       0    10694        M 0x80001c74 sltu    a0, a0, s2             #; a0  = 8, s2  = 0, (wrb) a0  <-- 0
       0    10695        M 0x80001c78 xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0    10696        M 0x80001c7c xori    a1, s5, 1              #; s5  = 0, (wrb) a1  <-- 1
       0    10705        M 0x80001c80 or      a0, a1, a0             #; a1  = 1, a0  = 1, (wrb) a0  <-- 1
       0    10706        M 0x80001c84 bnez    a0, pc + 48            #; a0  = 1, taken, goto 0x80001cb4
       0    10728        M 0x80001cb4 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
       0    10729        M 0x80001cb8 mv      a0, s0                 #; s0  = 16, (wrb) a0  <-- 16
       0    10732        M 0x80001cbc fld     fs2, 40(sp)            #; fs2  <~~ Doub[0x0011fe08]
       0    10733        M                                           #; (f:lsu) fs2  <-- 0.0
       0    10742        M 0x80001cc8 lw      s10, 64(sp)            #; sp  = 0x0011fde0, s10 <~~ Word[0x0011fe20]
                         M 0x80001cc0 fld     fs1, 48(sp)            #; fs1  <~~ Doub[0x0011fe10]
       0    10743        M 0x80001cc4 fld     fs0, 56(sp)            #; fs0  <~~ Doub[0x0011fe18], (f:lsu) fs1  <-- 0.0
       0    10744        M                                           #; (f:lsu) fs0  <-- 0.0
       0    10746        M                                           #; (lsu) s10 <-- 0x80002c5e
       0    10747        M 0x80001ccc lw      s9, 68(sp)             #; sp  = 0x0011fde0, s9  <~~ Word[0x0011fe24]
       0    10750        M                                           #; (lsu) s9  <-- 8
       0    10752        M 0x80001cd0 lw      s8, 72(sp)             #; sp  = 0x0011fde0, s8  <~~ Word[0x0011fe28]
       0    10755        M                                           #; (lsu) s8  <-- 16
       0    10756        M 0x80001cd4 lw      s7, 76(sp)             #; sp  = 0x0011fde0, s7  <~~ Word[0x0011fe2c]
       0    10759        M                                           #; (lsu) s7  <-- 0
       0    10760        M 0x80001cd8 lw      s6, 80(sp)             #; sp  = 0x0011fde0, s6  <~~ Word[0x0011fe30]
       0    10763        M                                           #; (lsu) s6  <-- 0
       0    10764        M 0x80001cdc lw      s5, 84(sp)             #; sp  = 0x0011fde0, s5  <~~ Word[0x0011fe34]
       0    10767        M                                           #; (lsu) s5  <-- -1
       0    10768        M 0x80001ce0 lw      s4, 88(sp)             #; sp  = 0x0011fde0, s4  <~~ Word[0x0011fe38]
       0    10771        M                                           #; (lsu) s4  <-- 0x0011fec7
       0    10772        M 0x80001ce4 lw      s3, 92(sp)             #; sp  = 0x0011fde0, s3  <~~ Word[0x0011fe3c]
       0    10775        M                                           #; (lsu) s3  <-- 0x0011fee0
       0    10776        M 0x80001ce8 lw      s2, 96(sp)             #; sp  = 0x0011fde0, s2  <~~ Word[0x0011fe40]
       0    10779        M                                           #; (lsu) s2  <-- 0x80001570
       0    10780        M 0x80001cec lw      s1, 100(sp)            #; sp  = 0x0011fde0, s1  <~~ Word[0x0011fe44]
       0    10783        M                                           #; (lsu) s1  <-- 8
       0    10784        M 0x80001cf0 lw      s0, 104(sp)            #; sp  = 0x0011fde0, s0  <~~ Word[0x0011fe48]
       0    10787        M                                           #; (lsu) s0  <-- 0
       0    10788        M 0x80001cf4 lw      ra, 108(sp)            #; sp  = 0x0011fde0, ra  <~~ Word[0x0011fe4c]
       0    10789        M 0x80001cf8 addi    sp, sp, 112            #; sp  = 0x0011fde0, (wrb) sp  <-- 0x0011fe50
       0    10791        M                                           #; (lsu) ra  <-- 0x80000ca0
       0    10792        M 0x80001cfc ret                            #; ra  = 0x80000ca0, goto 0x80000ca0
       0    10795        M 0x80000ca0 j       pc + 0x7c0             #; goto 0x80001460
       0    10798        M 0x80001460 mv      s8, a0                 #; a0  = 16, (wrb) s8  <-- 16
       0    10799        M 0x80001464 li      s6, 37                 #; (wrb) s6  <-- 37
       0    10800        M 0x80001468 li      s7, 46                 #; (wrb) s7  <-- 46
       0    10801        M 0x8000146c addi    s0, s10, 1             #; s10 = 0x80002c5e, (wrb) s0  <-- 0x80002c5f
       0    10802        M 0x80001470 j       pc - 0xa74             #; goto 0x800009fc
       0    10805        M 0x800009fc addi    s10, s0, 2             #; s0  = 0x80002c5f, (wrb) s10 <-- 0x80002c61
       0    10808        M 0x80000a00 mv      s9, s8                 #; s8  = 16, (wrb) s9  <-- 16
       0    10809        M 0x80000a04 li      s8, 10                 #; (wrb) s8  <-- 10
       0    10810        M 0x80000a08 lbu     a0, 0(s0)              #; s0  = 0x80002c5f, a0  <~~ Byte[0x80002c5f]
       0    10821        M                                           #; (lsu) a0  <-- 10
       0    10822        M 0x80000a0c beqz    a0, pc + 2824          #; a0  = 10, not taken
       0    10823        M 0x80000a10 beq     a0, s6, pc + 48        #; a0  = 10, s6  = 37, not taken
       0    10824        M 0x80000a14 addi    s1, s9, 1              #; s9  = 16, (wrb) s1  <-- 17
       0    10825        M 0x80000a18 mv      a1, s4                 #; s4  = 0x0011fec7, (wrb) a1  <-- 0x0011fec7
       0    10826        M 0x80000a1c mv      a2, s9                 #; s9  = 16, (wrb) a2  <-- 16
       0    10827        M 0x80000a20 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0    10828        M 0x80000a24 jalr    s2                     #; s2  = 0x80001570, (wrb) ra  <-- 0x80000a28, goto 0x80001570
       0    10832        M 0x80001570 beqz    a0, pc + 168           #; a0  = 10, not taken
       0    10833        M 0x80001574 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0    10834        M 0x80001578 li      a2, 1096               #; (wrb) a2  <-- 1096
       0    10835        M 0x8000157c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0    10836        M 0x80001580 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003580
       0    10837        M 0x80001584 addi    a3, a3, -1516          #; a3  = 0x80003580, (wrb) a3  <-- 0x80002f94
       0    10838        M                                           #; (acc) a1  <-- 0x00d605b3
       0    10839        M 0x80001588 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f94, (wrb) a1  <-- 0x80002f94
       0    10840        M 0x8000158c lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0    10851        M                                           #; (lsu) a4  <-- 16
       0    10852        M 0x80001590 addi    a5, a4, 1              #; a4  = 16, (wrb) a5  <-- 17
       0    10853        M 0x80001594 sw      a5, 0(a1)              #; a1  = 0x80002f94, 17 ~~> Word[0x80002f94]
       0    10854        M 0x80001598 add     a4, a1, a4             #; a1  = 0x80002f94, a4  = 16, (wrb) a4  <-- 0x80002fa4
       0    10855        M 0x8000159c sb      a0, 72(a4)             #; a4  = 0x80002fa4, 10 ~~> Byte[0x80002fec]
       0    10856        M 0x800015a0 lw      a4, 0(a1)              #; a1  = 0x80002f94, a4  <~~ Word[0x80002f94]
       0    10877        M                                           #; (lsu) a4  <-- 17
       0    10878        M 0x800015a4 addi    a4, a4, -1020          #; a4  = 17, (wrb) a4  <-- -1003
       0    10879        M 0x800015a8 snez    a4, a4                 #; a4  = -1003, (wrb) a4  <-- 1
       0    10880        M 0x800015ac addi    a0, a0, -10            #; a0  = 10, (wrb) a0  <-- 0
       0    10881        M 0x800015b0 snez    a0, a0                 #; a0  = 0, (wrb) a0  <-- 0
       0    10882        M 0x800015b4 and     a0, a0, a4             #; a0  = 0, a4  = 1, (wrb) a0  <-- 0
       0    10883        M 0x800015b8 bnez    a0, pc + 96            #; a0  = 0, not taken
       0    10884        M 0x800015bc add     a0, a3, a2             #; a3  = 0x80002f94, a2  = 0, (wrb) a0  <-- 0x80002f94
       0    10885        M 0x800015c0 addi    a2, a0, 72             #; a0  = 0x80002f94, (wrb) a2  <-- 0x80002fdc
       0    10886        M 0x800015c4 sw      zero, 12(a0)           #; a0  = 0x80002f94, 0 ~~> Word[0x80002fa0]
       0    10887        M 0x800015c8 li      a3, 64                 #; (wrb) a3  <-- 64
       0    10888        M 0x800015cc sw      a3, 8(a0)              #; a0  = 0x80002f94, 64 ~~> Word[0x80002f9c]
       0    10889        M 0x800015d0 sw      zero, 20(a0)           #; a0  = 0x80002f94, 0 ~~> Word[0x80002fa8]
       0    10890        M 0x800015d4 li      a3, 1                  #; (wrb) a3  <-- 1
       0    10891        M 0x800015d8 sw      a3, 16(a0)             #; a0  = 0x80002f94, 1 ~~> Word[0x80002fa4]
       0    10900        M 0x800015dc sw      zero, 28(a0)           #; a0  = 0x80002f94, 0 ~~> Word[0x80002fb0]
       0    10902        M 0x800015e0 sw      a2, 24(a0)             #; a0  = 0x80002f94, 0x80002fdc ~~> Word[0x80002fac]
       0    10912        M 0x800015e4 lw      a2, 0(a1)              #; a1  = 0x80002f94, a2  <~~ Word[0x80002f94]
       0    10913        M 0x800015e8 addi    a3, a0, 8              #; a0  = 0x80002f94, (wrb) a3  <-- 0x80002f9c
       0    10914        M 0x800015ec sw      zero, 36(a0)           #; a0  = 0x80002f94, 0 ~~> Word[0x80002fb8]
       0    10934        M                                           #; (lsu) a2  <-- 17
       0    10935        M 0x800015f0 sw      a2, 32(a0)             #; a0  = 0x80002f94, 17 ~~> Word[0x80002fb4]
       0    10936        M 0x800015f4 auipc   a0, 0x2                #; (wrb) a0  <-- 0x800035f4
       0    10937        M 0x800015f8 addi    a0, a0, -1908          #; a0  = 0x800035f4, (wrb) a0  <-- 0x80002e80
       0    10938        M 0x800015fc sw      a3, 0(a0)              #; a0  = 0x80002e80, 0x80002f9c ~~> Word[0x80002e80]
       0    10939        M 0x80001600 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003600
       0    10940        M 0x80001604 addi    a0, a0, -1856          #; a0  = 0x80003600, (wrb) a0  <-- 0x80002ec0
       0    10941        M 0x80001608 lw      a2, 0(a0)              #; a0  = 0x80002ec0, a2  <~~ Word[0x80002ec0]
       0    10964        M                                           #; (lsu) a2  <-- 0
       0    10965        M 0x8000160c beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001608
       0    10966        M 0x80001608 lw      a2, 0(a0)              #; a0  = 0x80002ec0, a2  <~~ Word[0x80002ec0]
       0    10977        M                                           #; (lsu) a2  <-- 0
       0    10978        M 0x8000160c beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001608
       0    10979        M 0x80001608 lw      a2, 0(a0)              #; a0  = 0x80002ec0, a2  <~~ Word[0x80002ec0]
       0    10990        M                                           #; (lsu) a2  <-- 0
       0    10991        M 0x8000160c beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001608
       0    10992        M 0x80001608 lw      a2, 0(a0)              #; a0  = 0x80002ec0, a2  <~~ Word[0x80002ec0]
       0    11003        M                                           #; (lsu) a2  <-- 0
       0    11004        M 0x8000160c beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001608
       0    11005        M 0x80001608 lw      a2, 0(a0)              #; a0  = 0x80002ec0, a2  <~~ Word[0x80002ec0]
       0    11016        M                                           #; (lsu) a2  <-- 1
       0    11017        M 0x8000160c beqz    a2, pc - 4             #; a2  = 1, not taken
       0    11020        M 0x80001610 sw      zero, 0(a0)            #; a0  = 0x80002ec0, 0 ~~> Word[0x80002ec0]
       0    11021        M 0x80001614 sw      zero, 0(a1)            #; a1  = 0x80002f94, 0 ~~> Word[0x80002f94]
       0    11022        M 0x80001618 ret                            #; ra  = 0x80000a28, goto 0x80000a28
       0    11025        M 0x80000a28 addi    s0, s0, 1              #; s0  = 0x80002c5f, (wrb) s0  <-- 0x80002c60
       0    11026        M 0x80000a2c addi    s10, s10, 1            #; s10 = 0x80002c61, (wrb) s10 <-- 0x80002c62
       0    11028        M 0x80000a30 mv      s9, s1                 #; s1  = 17, (wrb) s9  <-- 17
       0    11029        M 0x80000a34 lbu     a0, 0(s0)              #; s0  = 0x80002c60, a0  <~~ Byte[0x80002c60]
       0    11043        M                                           #; (lsu) a0  <-- 0
       0    11044        M 0x80000a38 bnez    a0, pc - 40            #; a0  = 0, not taken
       0    11045        M 0x80000a3c j       pc + 0xad8             #; goto 0x80001514
       0    11048        M 0x80001514 mv      a2, s9                 #; s9  = 17, (wrb) a2  <-- 17
       0    11049        M 0x80001518 bltu    s9, s5, pc + 8         #; s9  = 17, s5  = -1, taken, goto 0x80001520
       0    11051        M 0x80001520 li      a0, 0                  #; (wrb) a0  <-- 0
       0    11052        M 0x80001524 mv      a1, s4                 #; s4  = 0x0011fec7, (wrb) a1  <-- 0x0011fec7
       0    11053        M 0x80001528 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0    11054        M 0x8000152c jalr    s2                     #; s2  = 0x80001570, (wrb) ra  <-- 0x80001530, goto 0x80001570
       0    11057        M 0x80001570 beqz    a0, pc + 168           #; a0  = 0, taken, goto 0x80001618
       0    11062        M 0x80001618 ret                            #; ra  = 0x80001530, goto 0x80001530
       0    11063        M 0x80001530 mv      a0, s9                 #; s9  = 17, (wrb) a0  <-- 17
       0    11064        M 0x80001534 lw      s11, 60(sp)            #; sp  = 0x0011fe50, s11 <~~ Word[0x0011fe8c]
       0    11067        M                                           #; (lsu) s11 <-- 0
       0    11068        M 0x80001538 lw      s10, 64(sp)            #; sp  = 0x0011fe50, s10 <~~ Word[0x0011fe90]
       0    11071        M                                           #; (lsu) s10 <-- 0
       0    11072        M 0x8000153c lw      s9, 68(sp)             #; sp  = 0x0011fe50, s9  <~~ Word[0x0011fe94]
       0    11075        M                                           #; (lsu) s9  <-- 0
       0    11076        M 0x80001540 lw      s8, 72(sp)             #; sp  = 0x0011fe50, s8  <~~ Word[0x0011fe98]
       0    11079        M                                           #; (lsu) s8  <-- 0
       0    11080        M 0x80001544 lw      s7, 76(sp)             #; sp  = 0x0011fe50, s7  <~~ Word[0x0011fe9c]
       0    11083        M                                           #; (lsu) s7  <-- 0
       0    11084        M 0x80001548 lw      s6, 80(sp)             #; sp  = 0x0011fe50, s6  <~~ Word[0x0011fea0]
       0    11087        M                                           #; (lsu) s6  <-- 0
       0    11088        M 0x8000154c lw      s5, 84(sp)             #; sp  = 0x0011fe50, s5  <~~ Word[0x0011fea4]
       0    11091        M                                           #; (lsu) s5  <-- 0
       0    11092        M 0x80001550 lw      s4, 88(sp)             #; sp  = 0x0011fe50, s4  <~~ Word[0x0011fea8]
       0    11095        M                                           #; (lsu) s4  <-- 0
       0    11096        M 0x80001554 lw      s3, 92(sp)             #; sp  = 0x0011fe50, s3  <~~ Word[0x0011feac]
       0    11099        M                                           #; (lsu) s3  <-- 0
       0    11100        M 0x80001558 lw      s2, 96(sp)             #; sp  = 0x0011fe50, s2  <~~ Word[0x0011feb0]
       0    11103        M                                           #; (lsu) s2  <-- 0
       0    11104        M 0x8000155c lw      s1, 100(sp)            #; sp  = 0x0011fe50, s1  <~~ Word[0x0011feb4]
       0    11107        M                                           #; (lsu) s1  <-- 0
       0    11108        M 0x80001560 lw      s0, 104(sp)            #; sp  = 0x0011fe50, s0  <~~ Word[0x0011feb8]
       0    11111        M                                           #; (lsu) s0  <-- 0
       0    11112        M 0x80001564 lw      ra, 108(sp)            #; sp  = 0x0011fe50, ra  <~~ Word[0x0011febc]
       0    11113        M 0x80001568 addi    sp, sp, 112            #; sp  = 0x0011fe50, (wrb) sp  <-- 0x0011fec0
       0    11115        M                                           #; (lsu) ra  <-- 0x8000096c
       0    11116        M 0x8000156c ret                            #; ra  = 0x8000096c, goto 0x8000096c
       0    11119        M 0x8000096c lw      ra, 12(sp)             #; sp  = 0x0011fec0, ra  <~~ Word[0x0011fecc]
       0    11122        M 0x80000970 addi    sp, sp, 48             #; sp  = 0x0011fec0, (wrb) sp  <-- 0x0011fef0
       0    11123        M                                           #; (lsu) ra  <-- 0x800008d0
       0    11124        M 0x80000974 ret                            #; ra  = 0x800008d0, goto 0x800008d0
       0    11127        M 0x800008d0 auipc   a0, 0x2                #; (wrb) a0  <-- 0x800028d0
       0    11128        M 0x800008d4 addi    a0, a0, 1552           #; a0  = 0x800028d0, (wrb) a0  <-- 0x80002ee0
       0    11131        M 0x800008d8 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80002ee0]
       0    11140        M                                           #; (f:lsu) ft3  <-- 0.0001
       0    11141        M 0x800008dc flt.d   a0, ft3, fs0           #; ft3  = 0.0001, fs0  = 0.0
       0    11143        M                                           #; (acc) s9  <-- 0x01813c87
                         M 0x800008e0 fld     fs11, 8(sp)            #; fs11 <~~ Doub[0x0011fef8]
       0    11144        M 0x800008e4 fld     fs10, 16(sp)           #; fs10 <~~ Doub[0x0011ff00], (f:lsu) fs11 <-- 0.0
       0    11145        M 0x800008e8 fld     fs9, 24(sp)            #; fs9  <~~ Doub[0x0011ff08], (f:lsu) fs10 <-- 0.0
       0    11146        M 0x800008ec fld     fs8, 32(sp)            #; fs8  <~~ Doub[0x0011ff10], (f:lsu) fs9  <-- 0.0
       0    11147        M 0x800008f0 fld     fs7, 40(sp)            #; fs7  <~~ Doub[0x0011ff18], (f:lsu) fs8  <-- 0.0
       0    11148        M 0x800008f4 fld     fs6, 48(sp)            #; fs6  <~~ Doub[0x0011ff20], (f:lsu) fs7  <-- 0.0
       0    11149        M 0x800008f8 fld     fs5, 56(sp)            #; fs5  <~~ Doub[0x0011ff28], (f:lsu) fs6  <-- 0.0
       0    11150        M 0x800008fc fld     fs4, 64(sp)            #; fs4  <~~ Doub[0x0011ff30], (f:lsu) fs5  <-- 0.0
       0    11151        M 0x80000900 fld     fs3, 72(sp)            #; fs3  <~~ Doub[0x0011ff38], (f:lsu) fs4  <-- 0.0
       0    11152        M 0x80000904 fld     fs2, 80(sp)            #; fs2  <~~ Doub[0x0011ff40], (f:lsu) fs3  <-- 0.0
       0    11153        M 0x80000910 lw      ra, 108(sp)            #; sp  = 0x0011fef0, ra  <~~ Word[0x0011ff5c]
                         M 0x80000908 fld     fs1, 88(sp)            #; fs1  <~~ Doub[0x0011ff48], (f:lsu) fs2  <-- 0.0
       0    11154        M 0x80000914 addi    sp, sp, 112            #; sp  = 0x0011fef0, (wrb) sp  <-- 0x0011ff60
                         M 0x8000090c fld     fs0, 96(sp)            #; fs0  <~~ Doub[0x0011ff50], (f:lsu) fs1  <-- 0.0
       0    11155        M                                           #; (f:lsu) fs0  <-- 0.0
       0    11157        M                                           #; (lsu) ra  <-- 0x800029d0
       0    11158        M 0x80000918 ret                            #; ra  = 0x800029d0, goto 0x800029d0
       0    11176        M 0x800029d0 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
       0    11177        M 0x800029d4 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800029d4
       0    11178        M 0x800029d8 jalr    ra, ra, 524            #; ra  = 0x800029d4, (wrb) ra  <-- 0x800029dc, goto 0x80002be0
       0    11199        M 0x80002be0 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
       0    11200        M 0x80002be4 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x800029dc ~~> Word[0x0011ff5c]
       0    11201        M 0x80002be8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002be8
       0    11202        M 0x80002bec jalr    ra, ra, -1264          #; ra  = 0x80002be8, (wrb) ra  <-- 0x80002bf0, goto 0x800026f8
       0    11213        M 0x800026f8 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0    11214        M 0x800026fc add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0    11216        M 0x80002700 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0    11219        M                                           #; (lsu) a0  <-- 0x0011ff70
       0    11220        M 0x80002704 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0    11223        M                                           #; (lsu) a0  <-- 0x0011ff70
       0    11224        M 0x80002708 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
       0    11225        M 0x8000270c ret                            #; ra  = 0x80002bf0, goto 0x80002bf0
       0    11227        M                                           #; (lsu) a0  <-- 0x00120190
       0    11228        M 0x80002bf0 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
       0    11238        M                                           #; (lsu) a0  <-- 0
       0    11239        M 0x80002bf4 mv      zero, a0               #; a0  = 0
       0    11240        M 0x80002bf8 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
       0    11241        M 0x80002bfc addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
       0    11243        M                                           #; (lsu) ra  <-- 0x800029dc
       0    11244        M 0x80002c00 ret                            #; ra  = 0x800029dc, goto 0x800029dc
       0    11247        M 0x800029dc mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
       0    11251        M 0x800029e0 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800029e0
       0    11252        M 0x800029e4 jalr    ra, ra, 556            #; ra  = 0x800029e0, (wrb) ra  <-- 0x800029e8, goto 0x80002c0c
       0    11253        M 0x80002c0c addi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff58
       0    11254        M 0x80002c10 sw      a0, 0(sp)              #; sp  = 0x0011ff58, 0 ~~> Word[0x0011ff58]
       0    11255        M 0x80002c14 sw      ra, 4(sp)              #; sp  = 0x0011ff58, 0x800029e8 ~~> Word[0x0011ff5c]
       0    11256        M 0x80002c18 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002c18
       0    11257        M 0x80002c1c jalr    ra, ra, -1344          #; ra  = 0x80002c18, (wrb) ra  <-- 0x80002c20, goto 0x800026d8
       0    11278        M 0x800026d8 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0    11279        M 0x800026dc add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0    11282        M 0x800026e0 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0    11285        M                                           #; (lsu) a0  <-- 0x0011ff70
       0    11286        M 0x800026e4 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0    11289        M                                           #; (lsu) a0  <-- 0x0011ff70
       0    11290        M 0x800026e8 lw      a0, 8(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff78]
       0    11291        M 0x800026ec csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0    11293        M                                           #; (lsu) a0  <-- 0
       0    11294        M 0x800026f0 sub     a0, a1, a0             #; a1  = 0, a0  = 0, (wrb) a0  <-- 0
       0    11295        M 0x800026f4 ret                            #; ra  = 0x80002c20, goto 0x80002c20
       0    11296        M 0x80002c20 lw      t0, 0(sp)              #; sp  = 0x0011ff58, t0  <~~ Word[0x0011ff58]
       0    11299        M                                           #; (lsu) t0  <-- 0
       0    11300        M 0x80002c24 lw      ra, 4(sp)              #; sp  = 0x0011ff58, ra  <~~ Word[0x0011ff5c]
       0    11301        M 0x80002c28 addi    sp, sp, 8              #; sp  = 0x0011ff58, (wrb) sp  <-- 0x0011ff60
       0    11302        M 0x80002c2c bnez    a0, pc + 24            #; a0  = 0, not taken
       0    11303        M                                           #; (lsu) ra  <-- 0x800029e8
       0    11307        M 0x80002c30 slli    t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 0
       0    11308        M 0x80002c34 ori     t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 1
       0    11309        M 0x80002c38 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002c38
       0    11310        M 0x80002c3c addi    t1, t1, 584            #; t1  = 0x80002c38, (wrb) t1  <-- 0x80002e80
       0    11318        M 0x80002c40 sw      t0, 0(t1)              #; t1  = 0x80002e80, 1 ~~> Word[0x80002e80]
       0    11319        M 0x80002c44 ret                            #; ra  = 0x800029e8, goto 0x800029e8
       0    11332        M 0x800029e8 wfi                            #; 

## Performance metrics

Performance metrics for section 0 @ (12, 4887):
snitch_loads                                    38
snitch_stores                                   50
fpss_stores                                     12
fpss_loads                                       0
snitch_avg_load_latency                    18.2632
snitch_occupancy                            0.3450
snitch_fseq_rel_offloads                    0.2103
fseq_yield                                     1.0
fseq_fpu_yield                                 1.0
fpss_section_latency                             0
fpss_avg_fpu_latency                           1.0
fpss_avg_load_latency                            0
fpss_occupancy                              0.0919
fpss_fpu_occupancy                          0.0886
fpss_fpu_rel_occupancy                      0.9643
cycles                                        4876
total_ipc                                   0.4368

Performance metrics for section 1 @ (4889, 5606):
fpss_loads                                     200
snitch_loads                                     0
snitch_avg_load_latency                          0
snitch_occupancy                            0.5591
snitch_fseq_rel_offloads                    0.4282
fseq_yield                                     1.0
fseq_fpu_yield                                 1.0
fpss_section_latency                             1
fpss_avg_fpu_latency                          3.01
fpss_avg_load_latency                          1.0
fpss_occupancy                              0.4186
fpss_fpu_occupancy                          0.1391
fpss_fpu_rel_occupancy                      0.3322
cycles                                         719
total_ipc                                   0.9777

Performance metrics for section 2 @ (5608, 11332):
snitch_stores                                  171
snitch_loads                                   177
fpss_loads                                      24
fpss_stores                                      4
snitch_avg_load_latency                     9.6384
snitch_occupancy                            0.3034
snitch_fseq_rel_offloads                    0.0269
fseq_yield                                     1.0
fseq_fpu_yield                                 1.0
fpss_section_latency                             0
fpss_avg_fpu_latency                        0.8571
fpss_avg_load_latency                       3.6667
fpss_occupancy                              0.0084
fpss_fpu_occupancy                          0.0037
fpss_fpu_rel_occupancy                      0.4375
cycles                                        5725
total_ipc                                   0.3118
