       0       12        M 0x00001000 csrr    a0, mhartid            #; mhartid = 0, (wrb) a0  <-- 0
       0       32        M 0x00001004 auipc   a1, 0x0                #; (wrb) a1  <-- 4100
       0       56        M 0x00001008 addi    a1, a1, 32             #; a1  = 4100, (wrb) a1  <-- 4132
       0       84        M 0x0000100c auipc   t0, 0x0                #; (wrb) t0  <-- 4108
       0      104        M 0x00001010 lw      t0, 20(t0)             #; t0  = 4108, t0  <~~ Word[0x00001020]
       0      115        M                                           #; (lsu) t0  <-- 0x80002820
       0      128        M 0x00001014 jalr    t0                     #; t0  = 0x80002820, (wrb) ra  <-- 4120, goto 0x80002820
       0      269        M 0x80002820 auipc   gp, 0x1                #; (wrb) gp  <-- 0x80003820
       0      270        M 0x80002824 addi    gp, gp, -280           #; gp  = 0x80003820, (wrb) gp  <-- 0x80003708
       0      271        M 0x80002828 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002828
       0      272        M 0x8000282c jalr    ra, ra, 964            #; ra  = 0x80002828, (wrb) ra  <-- 0x80002830, goto 0x80002bec
       0      292        M 0x80002bec mv      a4, a1                 #; a1  = 4132, (wrb) a4  <-- 4132
       0      304        M 0x80002bf0 lw      a1, 4(a4)              #; a4  = 4132, a1  <~~ Word[0x00001028]
       0      334        M                                           #; (lsu) a1  <-- 8
       0      335        M 0x80002bf4 lw      t0, 8(a4)              #; a4  = 4132, t0  <~~ Word[0x0000102c]
       0      374        M                                           #; (lsu) t0  <-- 0
       0      375        M 0x80002bf8 lw      a2, 12(a4)             #; a4  = 4132, a2  <~~ Word[0x00001030]
       0      414        M                                           #; (lsu) a2  <-- 0x00100000
       0      415        M 0x80002bfc lw      t1, 16(a4)             #; a4  = 4132, t1  <~~ Word[0x00001034]
       0      454        M                                           #; (lsu) t1  <-- 0x00020000
       0      455        M 0x80002c00 lw      t2, 20(a4)             #; a4  = 4132, t2  <~~ Word[0x00001038]
       0      456        M 0x80002c04 sub     a0, a0, t0             #; a0  = 0, t0  = 0, (wrb) a0  <-- 0
       0      457        M 0x80002c08 div     t3, a0, a1             #; a0  = 0, a1  = 8
       0      460        M                                           #; (acc) t4  <-- 0x027e0eb3
       0      494        M                                           #; (lsu) t2  <-- 0
       0      495        M 0x80002c0c mul     t4, t3, t2             #; t3  = 0, t2  = 0
       0      498        M                                           #; (acc) a2  <-- 0x01d60633
       0      499        M 0x80002c10 add     a2, a2, t4             #; a2  = 0x00100000, t4  = 0, (wrb) a2  <-- 0x00100000
       0      500        M 0x80002c14 add     a3, a2, t1             #; a2  = 0x00100000, t1  = 0x00020000, (wrb) a3  <-- 0x00120000
       0      501        M 0x80002c18 remu    a0, a0, a1             #; a0  = 0, a1  = 8
       0      502        M 0x80002c1c ret                            #; ra  = 0x80002830, goto 0x80002830
       0      504        M                                           #; (acc) s0  <-- 0x00050413
       0      505        M 0x80002830 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
       0      506        M 0x80002834 mv      a0, a4                 #; a4  = 4132, (wrb) a0  <-- 4132
       0      507        M 0x80002838 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002838
       0      508        M 0x8000283c jalr    ra, ra, 1036           #; ra  = 0x80002838, (wrb) ra  <-- 0x80002840, goto 0x80002c44
       0      523        M 0x80002c44 lw      a0, 8(a0)              #; a0  = 4132, a0  <~~ Word[0x0000102c]
       0      524        M 0x80002c48 ret                            #; ra  = 0x80002840, goto 0x80002840
       0      543        M                                           #; (lsu) a0  <-- 0
       0      544        M 0x80002840 mv      t0, a0                 #; a0  = 0, (wrb) t0  <-- 0
       0      545        M 0x80002844 mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
       0      546        M 0x80002848 csrr    t1, mhartid            #; mhartid = 0, (wrb) t1  <-- 0
       0      547        M 0x8000284c sub     t0, t1, t0             #; t1  = 0, t0  = 0, (wrb) t0  <-- 0
       0      549        M 0x80002850 bnez    t0, pc + 36            #; t0  = 0, not taken
       0      550        M 0x80002854 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002854
       0      551        M 0x80002858 addi    t0, t0, 1988           #; t0  = 0x80002854, (wrb) t0  <-- 0x80003018
       0      552        M 0x8000285c auipc   t1, 0x0                #; (wrb) t1  <-- 0x8000285c
       0      562        M 0x80002860 addi    t1, t1, 1984           #; t1  = 0x8000285c, (wrb) t1  <-- 0x8000301c
       0      563        M 0x80002864 bge     t0, t1, pc + 16        #; t0  = 0x80003018, t1  = 0x8000301c, not taken
       0      564        M 0x80002868 sw      zero, 0(t0)            #; t0  = 0x80003018, 0 ~~> Word[0x80003018]
       0      565        M 0x8000286c addi    t0, t0, 4              #; t0  = 0x80003018, (wrb) t0  <-- 0x8000301c
       0      573        M 0x80002870 blt     t0, t1, pc - 8         #; t0  = 0x8000301c, t1  = 0x8000301c, not taken
       0      574        M 0x80002874 csrr    t0, misa               #; misa = 0x40801129, (wrb) t0  <-- 0x40801129
       0      575        M 0x80002878 andi    t0, t0, 40             #; t0  = 0x40801129, (wrb) t0  <-- 40
       0      576        M 0x8000287c beqz    t0, pc + 132           #; t0  = 40, not taken
       0      586        M 0x80002880 fcvt.d.w ft0, zero             #; ac1  = 0
       0      587        M 0x80002884 fcvt.d.w ft1, zero             #; ac1  = 0, (f:fpu) ft0  <-- 0.0
       0      588        M 0x80002888 fcvt.d.w ft2, zero             #; ac1  = 0, (f:fpu) ft1  <-- 0.0
       0      589        M 0x8000288c fcvt.d.w ft3, zero             #; ac1  = 0, (f:fpu) ft2  <-- 0.0
       0      590        M                                           #; (f:fpu) ft3  <-- 0.0
       0      598        M 0x80002890 fcvt.d.w ft4, zero             #; ac1  = 0
       0      599        M 0x80002894 fcvt.d.w ft5, zero             #; ac1  = 0, (f:fpu) ft4  <-- 0.0
       0      600        M 0x80002898 fcvt.d.w ft6, zero             #; ac1  = 0, (f:fpu) ft5  <-- 0.0
       0      601        M 0x8000289c fcvt.d.w ft7, zero             #; ac1  = 0, (f:fpu) ft6  <-- 0.0
       0      602        M                                           #; (f:fpu) ft7  <-- 0.0
       0      610        M 0x800028a0 fcvt.d.w fs0, zero             #; ac1  = 0
       0      611        M 0x800028a4 fcvt.d.w fs1, zero             #; ac1  = 0, (f:fpu) fs0  <-- 0.0
       0      612        M 0x800028a8 fcvt.d.w fa0, zero             #; ac1  = 0, (f:fpu) fs1  <-- 0.0
       0      613        M 0x800028ac fcvt.d.w fa1, zero             #; ac1  = 0, (f:fpu) fa0  <-- 0.0
       0      614        M                                           #; (f:fpu) fa1  <-- 0.0
       0      622        M 0x800028b0 fcvt.d.w fa2, zero             #; ac1  = 0
       0      623        M 0x800028b4 fcvt.d.w fa3, zero             #; ac1  = 0, (f:fpu) fa2  <-- 0.0
       0      624        M 0x800028b8 fcvt.d.w fa4, zero             #; ac1  = 0, (f:fpu) fa3  <-- 0.0
       0      625        M 0x800028bc fcvt.d.w fa5, zero             #; ac1  = 0, (f:fpu) fa4  <-- 0.0
       0      626        M                                           #; (f:fpu) fa5  <-- 0.0
       0      634        M 0x800028c0 fcvt.d.w fa6, zero             #; ac1  = 0
       0      635        M 0x800028c4 fcvt.d.w fa7, zero             #; ac1  = 0, (f:fpu) fa6  <-- 0.0
       0      636        M 0x800028c8 fcvt.d.w fs2, zero             #; ac1  = 0, (f:fpu) fa7  <-- 0.0
       0      637        M 0x800028cc fcvt.d.w fs3, zero             #; ac1  = 0, (f:fpu) fs2  <-- 0.0
       0      638        M                                           #; (f:fpu) fs3  <-- 0.0
       0      646        M 0x800028d0 fcvt.d.w fs4, zero             #; ac1  = 0
       0      647        M 0x800028d4 fcvt.d.w fs5, zero             #; ac1  = 0, (f:fpu) fs4  <-- 0.0
       0      648        M 0x800028d8 fcvt.d.w fs6, zero             #; ac1  = 0, (f:fpu) fs5  <-- 0.0
       0      649        M 0x800028dc fcvt.d.w fs7, zero             #; ac1  = 0, (f:fpu) fs6  <-- 0.0
       0      650        M                                           #; (f:fpu) fs7  <-- 0.0
       0      658        M 0x800028e0 fcvt.d.w fs8, zero             #; ac1  = 0
       0      659        M 0x800028e4 fcvt.d.w fs9, zero             #; ac1  = 0, (f:fpu) fs8  <-- 0.0
       0      660        M 0x800028e8 fcvt.d.w fs10, zero            #; ac1  = 0, (f:fpu) fs9  <-- 0.0
       0      661        M 0x800028ec fcvt.d.w fs11, zero            #; ac1  = 0, (f:fpu) fs10 <-- 0.0
       0      662        M                                           #; (f:fpu) fs11 <-- 0.0
       0      670        M 0x800028f0 fcvt.d.w ft8, zero             #; ac1  = 0
       0      671        M 0x800028f4 fcvt.d.w ft9, zero             #; ac1  = 0, (f:fpu) ft8  <-- 0.0
       0      672        M 0x800028f8 fcvt.d.w ft10, zero            #; ac1  = 0, (f:fpu) ft9  <-- 0.0
       0      673        M 0x800028fc fcvt.d.w ft11, zero            #; ac1  = 0, (f:fpu) ft10 <-- 0.0
       0      674        M                                           #; (f:fpu) ft11 <-- 0.0
       0      681        M 0x80002900 addi    a3, a3, -8             #; a3  = 0x00120000, (wrb) a3  <-- 0x0011fff8
       0      682        M 0x80002904 sw      zero, 0(a3)            #; a3  = 0x0011fff8, 0 ~~> Word[0x0011fff8]
       0      683        M 0x80002908 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002908
       0      684        M 0x8000290c lw      t0, 900(t0)            #; t0  = 0x80002908, t0  <~~ Word[0x80002c8c]
       0      704        M                                           #; (lsu) t0  <-- 136
       0      705        M 0x80002910 sub     a3, a3, t0             #; a3  = 0x0011fff8, t0  = 136, (wrb) a3  <-- 0x0011ff70
       0      706        M 0x80002914 mv      a5, a3                 #; a3  = 0x0011ff70, (wrb) a5  <-- 0x0011ff70
       0      707        M 0x80002918 auipc   t2, 0x0                #; (wrb) t2  <-- 0x80002918
       0      708        M 0x8000291c lw      t2, 880(t2)            #; t2  = 0x80002918, t2  <~~ Word[0x80002c88]
       0      744        M                                           #; (lsu) t2  <-- 10
       0      745        M 0x80002920 sll     t0, a0, t2             #; a0  = 0, t2  = 10, (wrb) t0  <-- 0
       0      746        M 0x80002924 sll     t1, a1, t2             #; a1  = 8, t2  = 10, (wrb) t1  <-- 8192
       0      747        M 0x80002928 sub     sp, a3, t0             #; a3  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
       0      748        M 0x8000292c sub     a3, a3, t1             #; a3  = 0x0011ff70, t1  = 8192, (wrb) a3  <-- 0x0011df70
       0      749        M 0x80002930 slli    t0, a0, 3              #; a0  = 0, (wrb) t0  <-- 0
       0      750        M 0x80002934 slli    t1, a1, 3              #; a1  = 8, (wrb) t1  <-- 64
       0      751        M 0x80002938 sub     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
       0      752        M 0x8000293c sub     a3, a3, t1             #; a3  = 0x0011df70, t1  = 64, (wrb) a3  <-- 0x0011df30
       0      761        M 0x80002940 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002940
       0      762        M 0x80002944 addi    t0, t0, 1480           #; t0  = 0x80002940, (wrb) t0  <-- 0x80002f08
       0      763        M 0x80002948 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002948
       0      764        M 0x8000294c addi    t1, t1, 1472           #; t1  = 0x80002948, (wrb) t1  <-- 0x80002f08
       0      775        M 0x80002950 auipc   t2, 0x0                #; (wrb) t2  <-- 0x80002950
       0      776        M 0x80002954 addi    t2, t2, 1464           #; t2  = 0x80002950, (wrb) t2  <-- 0x80002f08
       0      777        M 0x80002958 auipc   t3, 0x0                #; (wrb) t3  <-- 0x80002958
       0      778        M 0x8000295c addi    t3, t3, 1472           #; t3  = 0x80002958, (wrb) t3  <-- 0x80002f18
       0      787        M 0x80002960 add     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0x80002f08, (wrb) sp  <-- 0x80122e78
       0      788        M 0x80002964 sub     sp, sp, t1             #; sp  = 0x80122e78, t1  = 0x80002f08, (wrb) sp  <-- 0x0011ff70
       0      789        M 0x80002968 add     sp, sp, t2             #; sp  = 0x0011ff70, t2  = 0x80002f08, (wrb) sp  <-- 0x80122e78
       0      790        M 0x8000296c sub     sp, sp, t3             #; sp  = 0x80122e78, t3  = 0x80002f18, (wrb) sp  <-- 0x0011ff60
       0      799        M 0x80002970 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
       0      800        M 0x80002974 mv      tp, sp                 #; sp  = 0x0011ff60, (wrb) tp  <-- 0x0011ff60
       0      801        M 0x80002978 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
       0      802        M 0x8000297c mv      t4, tp                 #; tp  = 0x0011ff60, (wrb) t4  <-- 0x0011ff60
       0      811        M 0x80002980 bge     t0, t1, pc + 24        #; t0  = 0x80002f08, t1  = 0x80002f08, taken, goto 0x80002998
       0      823        M 0x80002998 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002998
       0      824        M 0x8000299c addi    t0, t0, 1392           #; t0  = 0x80002998, (wrb) t0  <-- 0x80002f08
       0      835        M 0x800029a0 auipc   t1, 0x0                #; (wrb) t1  <-- 0x800029a0
       0      836        M 0x800029a4 addi    t1, t1, 1400           #; t1  = 0x800029a0, (wrb) t1  <-- 0x80002f18
       0      837        M 0x800029a8 bge     t0, t1, pc + 20        #; t0  = 0x80002f08, t1  = 0x80002f18, not taken
       0      838        M 0x800029ac sw      zero, 0(t4)            #; t4  = 0x0011ff60, 0 ~~> Word[0x0011ff60]
       0      847        M 0x800029b0 addi    t0, t0, 4              #; t0  = 0x80002f08, (wrb) t0  <-- 0x80002f0c
       0      848        M 0x800029b4 addi    t4, t4, 4              #; t4  = 0x0011ff60, (wrb) t4  <-- 0x0011ff64
       0      849        M 0x800029b8 blt     t0, t2, pc - 12        #; t0  = 0x80002f0c, t2  = 0x80002f08, not taken
       0      850        M 0x800029bc addi    sp, sp, -20            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff4c
       0      862        M 0x800029c0 sw      a0, 0(sp)              #; sp  = 0x0011ff4c, 0 ~~> Word[0x0011ff4c]
       0      863        M 0x800029c4 sw      a1, 4(sp)              #; sp  = 0x0011ff4c, 8 ~~> Word[0x0011ff50]
       0      864        M 0x800029c8 sw      a2, 8(sp)              #; sp  = 0x0011ff4c, 0x00100000 ~~> Word[0x0011ff54]
       0      865        M 0x800029cc sw      a3, 12(sp)             #; sp  = 0x0011ff4c, 0x0011df30 ~~> Word[0x0011ff58]
       0      875        M 0x800029d0 sw      a4, 16(sp)             #; sp  = 0x0011ff4c, 4132 ~~> Word[0x0011ff5c]
       0      876        M 0x800029d4 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800029d4
       0      877        M 0x800029d8 jalr    ra, ra, -1064          #; ra  = 0x800029d4, (wrb) ra  <-- 0x800029dc, goto 0x800025ac
       0      899        M 0x800025ac sw      a5, 0(a5)              #; a5  = 0x0011ff70, 0x0011ff70 ~~> Word[0x0011ff70]
       0      912        M 0x800025b0 sw      a4, 4(a5)              #; a5  = 0x0011ff70, 4132 ~~> Word[0x0011ff74]
       0      913        M 0x800025b4 lw      t1, 8(a4)              #; a4  = 4132, t1  <~~ Word[0x0000102c]
       0      931        M                                           #; (lsu) t1  <-- 0
       0      932        M 0x800025b8 sw      t1, 8(a5)              #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff78]
       0      933        M 0x800025bc lw      a6, 40(a4)             #; a4  = 4132, a6  <~~ Word[0x0000104c]
       0      971        M                                           #; (lsu) a6  <-- 1
       0      972        M 0x800025c0 lw      a7, 44(a4)             #; a4  = 4132, a7  <~~ Word[0x00001050]
       0     1011        M                                           #; (lsu) a7  <-- 1
       0     1012        M 0x800025c4 lw      t0, 4(a4)              #; a4  = 4132, t0  <~~ Word[0x00001028]
       0     1013        M 0x800025c8 mul     a6, a7, a6             #; a7  = 1, a6  = 1
       0     1016        M                                           #; (acc) a0  <-- 0x02580533
       0     1040        M                                           #; (lsu) t0  <-- 8
       0     1041        M 0x800025cc mul     a0, a6, t0             #; a6  = 1, t0  = 8
       0     1044        M                                           #; (acc) a2  <-- 0x00a7a623
       0     1045        M 0x800025d0 sw      a0, 12(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff7c]
       0     1046        M 0x800025d4 csrr    a7, mhartid            #; mhartid = 0, (wrb) a7  <-- 0
       0     1047        M 0x800025d8 sub     a0, a7, t1             #; a7  = 0, t1  = 0, (wrb) a0  <-- 0
       0     1048        M 0x800025dc divu    a0, a0, t0             #; a0  = 0, t0  = 8
       0     1054        M 0x800025e0 sw      a0, 16(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff80]
       0     1055        M 0x800025e4 sw      a6, 20(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff84]
       0     1056        M 0x800025e8 sw      t1, 24(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff88]
       0     1057        M 0x800025ec sw      a1, 28(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff8c]
       0     1067        M 0x800025f0 lw      a0, 24(a4)             #; a4  = 4132, a0  <~~ Word[0x0000103c]
       0     1068        M 0x800025f4 lui     a1, 0x10000            #; (wrb) a1  <-- 0x10000000
       0     1100        M                                           #; (lsu) a0  <-- 0x80000000
       0     1101        M 0x800025f8 add     a0, a0, a1             #; a0  = 0x80000000, a1  = 0x10000000, (wrb) a0  <-- 0x90000000
       0     1102        M 0x800025fc sw      zero, 36(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff94]
       0     1103        M 0x80002600 sw      a0, 32(a5)             #; a5  = 0x0011ff70, 0x90000000 ~~> Word[0x0011ff90]
       0     1104        M 0x80002604 lw      a0, 32(a4)             #; a4  = 4132, a0  <~~ Word[0x00001044]
       0     1140        M                                           #; (lsu) a0  <-- 0
       0     1141        M 0x80002608 lw      a1, 36(a4)             #; a4  = 4132, a1  <~~ Word[0x00001048]
       0     1142        M 0x8000260c sw      a0, 40(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff98]
       0     1180        M                                           #; (lsu) a1  <-- 1
       0     1181        M 0x80002610 sw      a1, 44(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff9c]
       0     1182        M 0x80002614 sw      a2, 48(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffa0]
       0     1183        M 0x80002618 sw      zero, 52(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffa4]
       0     1184        M 0x8000261c sw      a3, 56(a5)             #; a5  = 0x0011ff70, 0x0011df30 ~~> Word[0x0011ffa8]
       0     1185        M 0x80002620 sw      zero, 60(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffac]
       0     1186        M 0x80002624 lw      a0, 16(a4)             #; a4  = 4132, a0  <~~ Word[0x00001034]
       0     1201        M                                           #; (lsu) a0  <-- 0x00020000
       0     1202        M 0x80002628 add     a6, a2, a0             #; a2  = 0x00100000, a0  = 0x00020000, (wrb) a6  <-- 0x00120000
       0     1203        M 0x8000262c addi    a1, a6, 400            #; a6  = 0x00120000, (wrb) a1  <-- 0x00120190
       0     1204        M 0x80002630 sw      a1, 112(a5)            #; a5  = 0x0011ff70, 0x00120190 ~~> Word[0x0011ffe0]
       0     1205        M 0x80002634 sltu    t0, a6, a0             #; a6  = 0x00120000, a0  = 0x00020000, (wrb) t0  <-- 0
       0     1206        M 0x80002638 srli    a1, a0, 1              #; a0  = 0x00020000, (wrb) a1  <-- 0x00010000
       0     1207        M 0x8000263c add     t1, a6, a1             #; a6  = 0x00120000, a1  = 0x00010000, (wrb) t1  <-- 0x00130000
       0     1215        M 0x80002640 sltu    a1, t1, a6             #; t1  = 0x00130000, a6  = 0x00120000, (wrb) a1  <-- 0
       0     1216        M 0x80002644 add     a1, t0, a1             #; t0  = 0, a1  = 0, (wrb) a1  <-- 0
       0     1217        M 0x80002648 sw      t1, 64(a5)             #; a5  = 0x0011ff70, 0x00130000 ~~> Word[0x0011ffb0]
       0     1218        M 0x8000264c sw      a1, 68(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffb4]
       0     1228        M 0x80002650 slli    a0, a0, 1              #; a0  = 0x00020000, (wrb) a0  <-- 0x00040000
       0     1229        M 0x80002654 add     a1, a0, a2             #; a0  = 0x00040000, a2  = 0x00100000, (wrb) a1  <-- 0x00140000
       0     1230        M 0x80002658 sltu    a0, a1, a0             #; a1  = 0x00140000, a0  = 0x00040000, (wrb) a0  <-- 0
       0     1231        M 0x8000265c sw      a1, 72(a5)             #; a5  = 0x0011ff70, 0x00140000 ~~> Word[0x0011ffb8]
       0     1240        M 0x80002660 sw      a0, 76(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffbc]
       0     1241        M 0x80002664 sw      zero, 104(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd8]
       0     1244        M 0x80002668 sw      zero, 108(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffdc]
       0     1245        M 0x8000266c lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1252        M 0x80002670 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1253        M 0x80002674 sw      a5, 0(a0)              #; a0  = 0x0011ff60, 0x0011ff70 ~~> Word[0x0011ff60]
       0     1254        M 0x80002678 lw      a0, 0(a5)              #; a5  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1258        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1259        M 0x8000267c lw      a1, 24(a0)             #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ff88]
       0     1262        M                                           #; (lsu) a1  <-- 0
       0     1264        M 0x80002680 lw      a0, 28(a0)             #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff8c]
       0     1265        M 0x80002684 sub     a1, a7, a1             #; a7  = 0, a1  = 0, (wrb) a1  <-- 0
       0     1267        M                                           #; (lsu) a0  <-- 8
       0     1268        M 0x80002688 remu    a0, a1, a0             #; a1  = 0, a0  = 8
       0     1269        M 0x8000268c lui     a1, 0x0                #; (wrb) a1  <-- 0
       0     1276        M 0x80002690 add     a1, a1, tp             #; a1  = 0, tp  = 0x0011ff60, (wrb) a1  <-- 0x0011ff60
       0     1277        M 0x80002694 sw      a0, 4(a1)              #; a1  = 0x0011ff60, 0 ~~> Word[0x0011ff64]
       0     1278        M 0x80002698 li      a0, 1096               #; (wrb) a0  <-- 1096
       0     1279        M 0x8000269c mul     a0, a7, a0             #; a7  = 0, a0  = 1096
       0     1288        M 0x800026a0 auipc   a1, 0x1                #; (wrb) a1  <-- 0x800036a0
       0     1289        M 0x800026a4 addi    a1, a1, -1668          #; a1  = 0x800036a0, (wrb) a1  <-- 0x8000301c
       0     1290        M 0x800026a8 add     a0, a0, a1             #; a0  = 0, a1  = 0x8000301c, (wrb) a0  <-- 0x8000301c
       0     1291        M 0x800026ac sw      zero, 0(a0)            #; a0  = 0x8000301c, 0 ~~> Word[0x8000301c]
       0     1300        M 0x800026b0 lw      a7, 48(a4)             #; a4  = 4132, a7  <~~ Word[0x00001054]
       0     1367        M                                           #; (lsu) a7  <-- 0xffff0000
       0     1368        M 0x800026b4 sw      a7, 116(a5)            #; a5  = 0x0011ff70, 0xffff0000 ~~> Word[0x0011ffe4]
       0     1369        M 0x800026b8 sw      a6, 124(a5)            #; a5  = 0x0011ff70, 0x00120000 ~~> Word[0x0011ffec]
       0     1370        M 0x800026bc sw      zero, 120(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffe8]
       0     1371        M 0x800026c0 addi    a4, a6, 384            #; a6  = 0x00120000, (wrb) a4  <-- 0x00120180
       0     1372        M 0x800026c4 sw      a4, 128(a5)            #; a5  = 0x0011ff70, 0x00120180 ~~> Word[0x0011fff0]
       0     1373        M 0x800026c8 addi    a0, a2, 7              #; a2  = 0x00100000, (wrb) a0  <-- 0x00100007
       0     1374        M 0x800026cc andi    a0, a0, -8             #; a0  = 0x00100007, (wrb) a0  <-- 0x00100000
       0     1375        M 0x800026d0 sw      a0, 80(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc0]
       0     1376        M 0x800026d4 sub     a2, a3, a2             #; a3  = 0x0011df30, a2  = 0x00100000, (wrb) a2  <-- 0x0001df30
       0     1377        M 0x800026d8 sw      a2, 84(a5)             #; a5  = 0x0011ff70, 0x0001df30 ~~> Word[0x0011ffc4]
       0     1378        M 0x800026dc sw      a0, 88(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc8]
       0     1379        M 0x800026e0 lw      a0, 0(a1)              #; a1  = 0x8000301c, a0  <~~ Word[0x8000301c]
       0     1390        M                                           #; (lsu) a0  <-- 0
       0     1391        M 0x800026e4 addi    a0, a0, 1103           #; a0  = 0, (wrb) a0  <-- 1103
       0     1392        M 0x800026e8 andi    a0, a0, -8             #; a0  = 1103, (wrb) a0  <-- 1096
       0     1393        M 0x800026ec sw      a0, 92(a5)             #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffcc]
       0     1394        M 0x800026f0 sw      zero, 96(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd0]
       0     1395        M 0x800026f4 sw      a0, 100(a5)            #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffd4]
       0     1396        M 0x800026f8 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1397        M 0x800026fc add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1398        M 0x80002700 sw      a7, 8(a0)              #; a0  = 0x0011ff60, 0xffff0000 ~~> Word[0x0011ff68]
       0     1399        M 0x80002704 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1400        M 0x80002708 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1401        M 0x8000270c sw      a4, 12(a0)             #; a0  = 0x0011ff60, 0x00120180 ~~> Word[0x0011ff6c]
       0     1406        M 0x80002710 ret                            #; ra  = 0x800029dc, goto 0x800029dc
       0     1421        M 0x800029dc lw      a0, 0(sp)              #; sp  = 0x0011ff4c, a0  <~~ Word[0x0011ff4c]
       0     1424        M                                           #; (lsu) a0  <-- 0
       0     1425        M 0x800029e0 lw      a1, 4(sp)              #; sp  = 0x0011ff4c, a1  <~~ Word[0x0011ff50]
       0     1428        M                                           #; (lsu) a1  <-- 8
       0     1429        M 0x800029e4 lw      a2, 8(sp)              #; sp  = 0x0011ff4c, a2  <~~ Word[0x0011ff54]
       0     1432        M                                           #; (lsu) a2  <-- 0x00100000
       0     1433        M 0x800029e8 lw      a3, 12(sp)             #; sp  = 0x0011ff4c, a3  <~~ Word[0x0011ff58]
       0     1436        M                                           #; (lsu) a3  <-- 0x0011df30
       0     1437        M 0x800029ec lw      a4, 16(sp)             #; sp  = 0x0011ff4c, a4  <~~ Word[0x0011ff5c]
       0     1438        M 0x800029f0 addi    sp, sp, 20             #; sp  = 0x0011ff4c, (wrb) sp  <-- 0x0011ff60
       0     1439        M 0x800029f4 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800029f4
       0     1440        M 0x800029f8 addi    t0, t0, 60             #; t0  = 0x800029f4, (wrb) t0  <-- 0x80002a30
       0     1441        M 0x800029fc csrw    mtvec, t0              #; t0  = 0x80002a30, (lsu) a4  <-- 4132
       0     1449        M 0x80002a00 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002a00
       0     1450        M 0x80002a04 jalr    ra, ra, 544            #; ra  = 0x80002a00, (wrb) ra  <-- 0x80002a08, goto 0x80002c20
       0     1466        M 0x80002c20 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
       0     1467        M 0x80002c24 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x80002a08 ~~> Word[0x0011ff5c]
       0     1468        M 0x80002c28 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002c28
       0     1469        M 0x80002c2c jalr    ra, ra, -1268          #; ra  = 0x80002c28, (wrb) ra  <-- 0x80002c30, goto 0x80002734
       0     1487        M 0x80002734 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1488        M 0x80002738 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1489        M 0x8000273c lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     1492        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1499        M 0x80002740 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1503        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1504        M 0x80002744 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
       0     1505        M 0x80002748 ret                            #; ra  = 0x80002c30, goto 0x80002c30
       0     1507        M                                           #; (lsu) a0  <-- 0x00120190
       0     1508        M 0x80002c30 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
       0     1537        M                                           #; (lsu) a0  <-- 0
       0     1538        M 0x80002c34 mv      zero, a0               #; a0  = 0
       0     1539        M 0x80002c38 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
       0     1540        M 0x80002c3c addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
       0     1542        M                                           #; (lsu) ra  <-- 0x80002a08
       0     1543        M 0x80002c40 ret                            #; ra  = 0x80002a08, goto 0x80002a08
       0     1547        M 0x80002a08 auipc   ra, 0xffffe            #; (wrb) ra  <-- 0x80000a08
       0     1548        M 0x80002a0c jalr    ra, ra, -436           #; ra  = 0x80000a08, (wrb) ra  <-- 0x80002a10, goto 0x80000854
       0     1553        M 0x80000854 addi    sp, sp, -32            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff40
       0     1554        M 0x80000858 sw      ra, 28(sp)             #; sp  = 0x0011ff40, 0x80002a10 ~~> Word[0x0011ff5c]
       0     1555        M 0x8000085c sw      s0, 24(sp)             #; sp  = 0x0011ff40, 0 ~~> Word[0x0011ff58]
       0     1557        M 0x80000864 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1558        M 0x80000868 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
                         M 0x80000860 fsd     fs0, 16(sp)            #; 0.0 ~~> Doub[0x0011ff50]
       0     1559        M 0x8000086c lw      a1, 4(a0)              #; a0  = 0x0011ff60, a1  <~~ Word[0x0011ff64]
       0     1562        M                                           #; (lsu) a1  <-- 0
       0     1569        M 0x80000870 li      a0, 0                  #; (wrb) a0  <-- 0
       0     1570        M 0x80000874 bnez    a1, pc + 208           #; a1  = 0, not taken
       0     1571        M 0x80000878 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1572        M 0x8000087c add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1581        M 0x80000880 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     1584        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1585        M 0x80000884 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1588        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1589        M 0x80000888 lw      s0, 88(a0)             #; a0  = 0x0011ff70, s0  <~~ Word[0x0011ffc8]
       0     1592        M                                           #; (lsu) s0  <-- 0x00100000
       0     1593        M 0x8000088c lw      a2, 80(a0)             #; a0  = 0x0011ff70, a2  <~~ Word[0x0011ffc0]
       0     1596        M                                           #; (lsu) a2  <-- 0x00100000
       0     1597        M 0x80000890 lw      a3, 84(a0)             #; a0  = 0x0011ff70, a3  <~~ Word[0x0011ffc4]
       0     1598        M 0x80000894 addi    a1, s0, 80             #; s0  = 0x00100000, (wrb) a1  <-- 0x00100050
       0     1600        M                                           #; (lsu) a3  <-- 0x0001df30
       0     1601        M 0x80000898 add     a2, a3, a2             #; a3  = 0x0001df30, a2  = 0x00100000, (wrb) a2  <-- 0x0011df30
       0     1602        M 0x8000089c bgeu    a2, a1, pc + 12        #; a2  = 0x0011df30, a1  = 0x00100050, taken, goto 0x800008a8
       0     1610        M 0x800008a8 sw      a1, 88(a0)             #; a0  = 0x0011ff70, 0x00100050 ~~> Word[0x0011ffc8]
       0     1611        M 0x800008ac mv      a0, s0                 #; s0  = 0x00100000, (wrb) a0  <-- 0x00100000
       0     1635        M 0x800008b0 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800008b0
       0     1636        M 0x800008b4 jalr    ra, ra, -636           #; ra  = 0x800008b0, (wrb) ra  <-- 0x800008b8, goto 0x80000634
       0     1658        M 0x80000634 srli    a1, a0, 20             #; a0  = 0x00100000, (wrb) a1  <-- 1
       0     1659        M 0x80000638 snez    a1, a1                 #; a1  = 1, (wrb) a1  <-- 1
       0     1660        M 0x8000063c lui     a2, 0x120              #; (wrb) a2  <-- 0x00120000
       0     1670        M 0x80000640 addi    a2, a2, -71            #; a2  = 0x00120000, (wrb) a2  <-- 0x0011ffb9
       0     1671        M 0x80000644 sltu    a2, a0, a2             #; a0  = 0x00100000, a2  = 0x0011ffb9, (wrb) a2  <-- 1
       0     1672        M 0x80000648 and     a1, a1, a2             #; a1  = 1, a2  = 1, (wrb) a1  <-- 1
       0     1673        M 0x8000064c beqz    a1, pc + 204           #; a1  = 1, not taken
       0     1682        M 0x80000650 li      a1, 8                  #; (wrb) a1  <-- 8
       0     1683        M 0x80000654 li      a2, 9                  #; (wrb) a2  <-- 9
       0     1684        M 0x80000658 li      a3, 64                 #; (wrb) a3  <-- 64
       0     1685        M 0x8000065c li      a4, 192                #; (wrb) a4  <-- 192
       0     1694        M 0x80000660 scfgw   a2, a3                 #; a2  = 9, a3  = 64
       0     1695        M 0x80000664 scfgw   a1, a4                 #; a1  = 8, a4  = 192
       0     1696        M 0x80000668 li      a1, 32                 #; (wrb) a1  <-- 32
       0     1697        M 0x8000066c scfgw   zero, a1               #; a1  = 32, (acc) ra  <-- 0x00b020ab
       0     1706        M 0x80000670 scfgwi  a0, 896                #; a0  = 0x00100000
       0     1708        M 0x80000678 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003678
                         M 0x80000674 csrrsi  a0, ssr, 1             #; 
       0     1709        M 0x8000067c addi    a0, a0, -1888          #; a0  = 0x80003678, (wrb) a0  <-- 0x80002f18
       0     1720        M 0x80000680 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80002f18]
       0     1721        M 0x80000684 fcvt.d.w ft4, zero             #; ac1  = 0
       0     1722        M                                           #; (f:fpu) ft4  <-- 0.0
       0     1723        M 0x80000688 fsgnj.d ft0, ft4, ft4          #; ft4  = 0.0, ft4  = 0.0
       0     1724        M                                           #; (f:fpu) ft0  <-- 0.0
       0     1729        M                                           #; (f:lsu) ft3  <-- 1.0
       0     1730        M 0x80000690 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003690
                         M 0x8000068c fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
       0     1731        M 0x80000694 addi    a0, a0, -1904          #; a0  = 0x80003690, (wrb) a0  <-- 0x80002f20
                         M                                           #; (f:fpu) ft0  <-- 1.0
       0     1733        M 0x8000069c auipc   a0, 0x3                #; (wrb) a0  <-- 0x8000369c
       0     1734        M 0x80000698 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80002f20]
       0     1742        M 0x800006a0 addi    a0, a0, -1908          #; a0  = 0x8000369c, (wrb) a0  <-- 0x80002f28
       0     1743        M                                           #; (f:lsu) ft3  <-- 2.0
       0     1745        M 0x800006a4 fld     ft4, 0(a0)             #; ft4  <~~ Doub[0x80002f28]
       0     1746        M 0x800006a8 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
       0     1747        M                                           #; (f:fpu) ft0  <-- 2.0
       0     1754        M 0x800006b0 auipc   a0, 0x3                #; (wrb) a0  <-- 0x800036b0
                         M                                           #; (f:lsu) ft4  <-- 3.0
       0     1755        M 0x800006b4 addi    a0, a0, -1920          #; a0  = 0x800036b0, (wrb) a0  <-- 0x80002f30
                         M 0x800006ac fsgnj.d ft0, ft4, ft4          #; ft4  = 3.0, ft4  = 3.0
       0     1756        M                                           #; (f:fpu) ft0  <-- 3.0
       0     1757        M 0x800006bc auipc   a0, 0x3                #; (wrb) a0  <-- 0x800036bc
       0     1758        M 0x800006b8 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80002f30]
       0     1766        M 0x800006c0 addi    a0, a0, -1924          #; a0  = 0x800036bc, (wrb) a0  <-- 0x80002f38
       0     1767        M                                           #; (f:lsu) ft3  <-- 4.0
       0     1769        M 0x800006c4 fld     ft4, 0(a0)             #; ft4  <~~ Doub[0x80002f38]
       0     1770        M 0x800006c8 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
       0     1771        M                                           #; (f:fpu) ft0  <-- 4.0
       0     1778        M 0x800006d0 auipc   a0, 0x3                #; (wrb) a0  <-- 0x800036d0
                         M                                           #; (f:lsu) ft4  <-- 5.0
       0     1779        M 0x800006d4 addi    a0, a0, -1936          #; a0  = 0x800036d0, (wrb) a0  <-- 0x80002f40
                         M 0x800006cc fsgnj.d ft0, ft4, ft4          #; ft4  = 5.0, ft4  = 5.0
       0     1780        M                                           #; (f:fpu) ft0  <-- 5.0
       0     1781        M 0x800006dc auipc   a0, 0x3                #; (wrb) a0  <-- 0x800036dc
       0     1782        M 0x800006d8 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80002f40]
       0     1790        M 0x800006e0 addi    a0, a0, -1940          #; a0  = 0x800036dc, (wrb) a0  <-- 0x80002f48
       0     1791        M                                           #; (f:lsu) ft3  <-- 6.0
       0     1793        M 0x800006e4 fld     ft4, 0(a0)             #; ft4  <~~ Doub[0x80002f48]
       0     1794        M 0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
       0     1795        M                                           #; (f:fpu) ft0  <-- 6.0
       0     1802        M 0x800006f0 auipc   a0, 0x3                #; (wrb) a0  <-- 0x800036f0
                         M                                           #; (f:lsu) ft4  <-- 7.0
       0     1803        M 0x800006f4 addi    a0, a0, -1952          #; a0  = 0x800036f0, (wrb) a0  <-- 0x80002f50
                         M 0x800006ec fsgnj.d ft0, ft4, ft4          #; ft4  = 7.0, ft4  = 7.0
       0     1804        M                                           #; (f:fpu) ft0  <-- 7.0
       0     1805        M 0x800006fc auipc   a0, 0x3                #; (wrb) a0  <-- 0x800036fc
       0     1806        M 0x800006f8 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80002f50]
       0     1814        M 0x80000700 addi    a0, a0, -1956          #; a0  = 0x800036fc, (wrb) a0  <-- 0x80002f58
       0     1815        M                                           #; (f:lsu) ft3  <-- 8.0
       0     1817        M 0x80000704 fld     ft4, 0(a0)             #; ft4  <~~ Doub[0x80002f58]
       0     1818        M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
       0     1819        M                                           #; (f:fpu) ft0  <-- 8.0
       0     1826        M                                           #; (f:lsu) ft4  <-- 9.0
       0     1827        M 0x80000714 ret                            #; ra  = 0x800008b8, goto 0x800008b8
                         M 0x8000070c fsgnj.d ft0, ft4, ft4          #; ft4  = 9.0, ft4  = 9.0
       0     1828        M 0x80000710 csrrci  a0, ssr, 1             #; (f:fpu) ft0  <-- 9.0
       0     1840        M 0x800008b8 mv      a0, s0                 #; s0  = 0x00100000, (wrb) a0  <-- 0x00100000
       0     1841        M 0x800008bc auipc   ra, 0x0                #; (wrb) ra  <-- 0x800008bc
       0     1843        M 0x800008c0 jalr    ra, ra, -300           #; ra  = 0x800008bc, (wrb) ra  <-- 0x800008c4, goto 0x80000790
       0     1866        M 0x80000790 srli    a1, a0, 20             #; a0  = 0x00100000, (wrb) a1  <-- 1
       0     1867        M 0x80000794 snez    a1, a1                 #; a1  = 1, (wrb) a1  <-- 1
       0     1868        M 0x80000798 lui     a2, 0x120              #; (wrb) a2  <-- 0x00120000
       0     1869        M 0x8000079c addi    a2, a2, -71            #; a2  = 0x00120000, (wrb) a2  <-- 0x0011ffb9
       0     1878        M 0x800007a0 sltu    a2, a0, a2             #; a0  = 0x00100000, a2  = 0x0011ffb9, (wrb) a2  <-- 1
       0     1879        M 0x800007a4 and     a1, a1, a2             #; a1  = 1, a2  = 1, (wrb) a1  <-- 1
       0     1880        M 0x800007a8 beqz    a1, pc + 92            #; a1  = 1, not taken
       0     1881        M 0x800007ac li      a1, 8                  #; (wrb) a1  <-- 8
       0     1890        M 0x800007b0 li      a2, 9                  #; (wrb) a2  <-- 9
       0     1891        M 0x800007b4 li      a3, 64                 #; (wrb) a3  <-- 64
       0     1892        M 0x800007b8 li      a4, 192                #; (wrb) a4  <-- 192
       0     1893        M 0x800007bc scfgw   a2, a3                 #; a2  = 9, a3  = 64
       0     1902        M 0x800007c0 scfgw   a1, a4                 #; a1  = 8, a4  = 192
       0     1903        M 0x800007c4 li      a1, 32                 #; (wrb) a1  <-- 32
       0     1904        M 0x800007c8 scfgw   zero, a1               #; a1  = 32
       0     1905        M 0x800007cc scfgwi  a0, 768                #; a0  = 0x00100000
       0     1915        M 0x800007d0 csrrsi  a0, ssr, 1             #; 
       0     1917        M 0x800007d4 fsgnj.d ft3, ft0, ft0          #; ft0  = 0.0, ft0  = 0.0
       0     1918        M                                           #; (f:fpu) ft3  <-- 0.0
       0     1919        M 0x800007d8 fadd.d  ft3, ft0, ft3          #; ft0  = 1.0, ft3  = 0.0
       0     1922        M                                           #; (f:fpu) ft3  <-- 1.0
       0     1923        M 0x800007dc fadd.d  ft3, ft0, ft3          #; ft0  = 2.0, ft3  = 1.0
       0     1926        M                                           #; (f:fpu) ft3  <-- 3.0
       0     1928        M 0x800007e0 fadd.d  ft3, ft0, ft3          #; ft0  = 3.0, ft3  = 3.0
       0     1931        M                                           #; (f:fpu) ft3  <-- 6.0
       0     1932        M 0x800007e4 fadd.d  ft3, ft0, ft3          #; ft0  = 4.0, ft3  = 6.0
       0     1935        M                                           #; (f:fpu) ft3  <-- 10.0
       0     1936        M 0x800007e8 fadd.d  ft3, ft0, ft3          #; ft0  = 5.0, ft3  = 10.0
       0     1939        M                                           #; (f:fpu) ft3  <-- 15.0
       0     1940        M 0x800007ec fadd.d  ft3, ft0, ft3          #; ft0  = 6.0, ft3  = 15.0
       0     1943        M                                           #; (f:fpu) ft3  <-- 21.0
       0     1944        M 0x800007f0 fadd.d  ft3, ft0, ft3          #; ft0  = 7.0, ft3  = 21.0
       0     1947        M                                           #; (f:fpu) ft3  <-- 28.0
       0     1948        M 0x800007f4 fadd.d  ft3, ft0, ft3          #; ft0  = 8.0, ft3  = 28.0
       0     1950        M 0x80000800 ret                            #; ra  = 0x800008c4, goto 0x800008c4
       0     1951        M                                           #; (f:fpu) ft3  <-- 36.0
       0     1952        M 0x800007f8 fadd.d  fa0, ft0, ft3          #; ft0  = 9.0, ft3  = 36.0
       0     1953        M 0x800007fc csrrci  a0, ssr, 1             #; 
       0     1955        M                                           #; (f:fpu) fa0  <-- 45.0
       0     1966        M 0x800008c4 fld     ft0, 0(s0)             #; ft0  <~~ Doub[0x00100000]
       0     1967        M 0x800008c8 fsgnj.d fs0, fa0, fa0          #; fa0  = 45.0, fa0  = 45.0, (f:lsu) ft0  <-- 0.0
       0     1968        M 0x800008cc fsd     ft0, 8(s0)             #; 0.0 ~~> Doub[0x00100008], (f:fpu) fs0  <-- 45.0
       0     1969        M 0x800008d0 fsd     ft0, 16(s0)            #; 0.0 ~~> Doub[0x00100010]
       0     1970        M 0x800008d4 fsd     ft0, 24(s0)            #; 0.0 ~~> Doub[0x00100018]
       0     1971        M 0x800008d8 fsd     ft0, 32(s0)            #; 0.0 ~~> Doub[0x00100020]
       0     1972        M 0x800008dc fsd     ft0, 40(s0)            #; 0.0 ~~> Doub[0x00100028]
       0     1981        M 0x800008e0 fsd     ft0, 48(s0)            #; 0.0 ~~> Doub[0x00100030]
       0     1982        M 0x800008e4 fsd     ft0, 56(s0)            #; 0.0 ~~> Doub[0x00100038]
       0     1983        M 0x800008e8 fsd     ft0, 64(s0)            #; 0.0 ~~> Doub[0x00100040]
       0     1984        M 0x800008ec fsd     ft0, 72(s0)            #; 0.0 ~~> Doub[0x00100048]
       0     1991        M 0x800008f0 mv      a0, s0                 #; s0  = 0x00100000, (wrb) a0  <-- 0x00100000
       0     1992        M 0x800008f4 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800008f4
       0     1993        M 0x800008f8 jalr    ra, ra, -356           #; ra  = 0x800008f4, (wrb) ra  <-- 0x800008fc, goto 0x80000790
       0     2005        M 0x80000790 srli    a1, a0, 20             #; a0  = 0x00100000, (wrb) a1  <-- 1
       0     2006        M 0x80000794 snez    a1, a1                 #; a1  = 1, (wrb) a1  <-- 1
       0     2007        M 0x80000798 lui     a2, 0x120              #; (wrb) a2  <-- 0x00120000
       0     2008        M 0x8000079c addi    a2, a2, -71            #; a2  = 0x00120000, (wrb) a2  <-- 0x0011ffb9
       0     2009        M 0x800007a0 sltu    a2, a0, a2             #; a0  = 0x00100000, a2  = 0x0011ffb9, (wrb) a2  <-- 1
       0     2010        M 0x800007a4 and     a1, a1, a2             #; a1  = 1, a2  = 1, (wrb) a1  <-- 1
       0     2011        M 0x800007a8 beqz    a1, pc + 92            #; a1  = 1, not taken
       0     2012        M 0x800007ac li      a1, 8                  #; (wrb) a1  <-- 8
       0     2013        M 0x800007b0 li      a2, 9                  #; (wrb) a2  <-- 9
       0     2014        M 0x800007b4 li      a3, 64                 #; (wrb) a3  <-- 64
       0     2015        M 0x800007b8 li      a4, 192                #; (wrb) a4  <-- 192
       0     2016        M 0x800007bc scfgw   a2, a3                 #; a2  = 9, a3  = 64
       0     2017        M 0x800007c0 scfgw   a1, a4                 #; a1  = 8, a4  = 192
       0     2018        M 0x800007c4 li      a1, 32                 #; (wrb) a1  <-- 32
       0     2019        M 0x800007c8 scfgw   zero, a1               #; a1  = 32, (acc) ra  <-- 0x00b020ab
       0     2020        M 0x800007cc scfgwi  a0, 768                #; a0  = 0x00100000
       0     2022        M                                           #; (acc) gp  <-- 0x220001d3
                         M 0x800007d0 csrrsi  a0, ssr, 1             #; 
       0     2023        M                                           #; (acc) gp  <-- 0x023071d3
       0     2024        M 0x800007d4 fsgnj.d ft3, ft0, ft0          #; ft0  = 0.0, ft0  = 0.0
       0     2025        M                                           #; (f:fpu) ft3  <-- 0.0
       0     2026        M 0x800007d8 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     2029        M                                           #; (f:fpu) ft3  <-- 0.0
       0     2030        M 0x800007dc fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     2033        M 0x80000800 ret                            #; ra  = 0x800008fc, goto 0x800008fc
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     2034        M 0x800007e0 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     2037        M                                           #; (f:fpu) ft3  <-- 0.0
       0     2038        M 0x800008fc auipc   a0, 0x2                #; (wrb) a0  <-- 0x800028fc
                         M 0x800007e4 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     2041        M 0x80000900 addi    a0, a0, 1636           #; a0  = 0x800028fc, (wrb) a0  <-- 0x80002f60
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     2042        M 0x800007e8 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     2045        M                                           #; (f:fpu) ft3  <-- 0.0
       0     2046        M 0x800007ec fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     2049        M                                           #; (f:fpu) ft3  <-- 0.0
       0     2050        M 0x800007f0 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     2053        M                                           #; (f:fpu) ft3  <-- 0.0
       0     2054        M 0x800007f4 fadd.d  ft3, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     2057        M                                           #; (f:fpu) ft3  <-- 0.0
       0     2058        M 0x800007f8 fadd.d  fa0, ft0, ft3          #; ft0  = 0.0, ft3  = 0.0
       0     2059        M 0x800007fc csrrci  a0, ssr, 1             #; 
       0     2061        M 0x80000904 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002f60], (f:fpu) fa0  <-- 0.0
       0     2065        M 0x8000091c lw      a2, 8(sp)              #; sp  = 0x0011ff40, a2  <~~ Word[0x0011ff48]
       0     2070        M                                           #; (f:lsu) ft0  <-- -45.0
       0     2071        M 0x80000908 fadd.d  ft0, fs0, ft0          #; fs0  = 45.0, ft0  = -45.0
       0     2072        M                                           #; (lsu) a2  <-- 0
       0     2074        M 0x80000920 lw      a3, 12(sp)             #; sp  = 0x0011ff40, a3  <~~ Word[0x0011ff4c]
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     2075        M 0x80000924 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002924
                         M 0x8000090c fsgnjx.d ft0, ft0, ft0         #; ft0  = 0.0, ft0  = 0.0
       0     2076        M 0x80000928 addi    a0, a0, 881            #; a0  = 0x80002924, (wrb) a0  <-- 0x80002c95
                         M 0x80000910 fsgnjx.d ft1, fa0, fa0         #; fa0  = 0.0, fa0  = 0.0, (f:fpu) ft0  <-- 0.0
       0     2077        M 0x8000092c auipc   ra, 0x0                #; (wrb) ra  <-- 0x8000092c
                         M                                           #; (f:fpu) ft1  <-- 0.0
       0     2078        M                                           #; (lsu) a3  <-- 0
                         M 0x80000914 fadd.d  fs0, ft1, ft0          #; ft1  = 0.0, ft0  = 0.0
       0     2081        M                                           #; (f:fpu) fs0  <-- 0.0
       0     2082        M 0x80000918 fsd     fs0, 8(sp)             #; 0.0 ~~> Doub[0x0011ff48]
       0     2086        M 0x80000930 jalr    ra, ra, 44             #; ra  = 0x8000092c, (wrb) ra  <-- 0x80000934, goto 0x80000958
       0     2091        M 0x80000958 addi    sp, sp, -48            #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff10
       0     2092        M 0x8000095c sw      ra, 12(sp)             #; sp  = 0x0011ff10, 0x80000934 ~~> Word[0x0011ff1c]
       0     2094        M 0x80000960 mv      t0, a0                 #; a0  = 0x80002c95, (wrb) t0  <-- 0x80002c95
       0     2095        M 0x80000964 sw      a7, 44(sp)             #; sp  = 0x0011ff10, 0xffff0000 ~~> Word[0x0011ff3c]
       0     2096        M 0x80000968 sw      a6, 40(sp)             #; sp  = 0x0011ff10, 0x00120000 ~~> Word[0x0011ff38]
       0     2097        M 0x8000096c sw      a5, 36(sp)             #; sp  = 0x0011ff10, 0x0011ff70 ~~> Word[0x0011ff34]
       0     2106        M 0x80000970 sw      a4, 32(sp)             #; sp  = 0x0011ff10, 192 ~~> Word[0x0011ff30]
       0     2107        M 0x80000974 sw      a3, 28(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff2c]
       0     2108        M 0x80000978 sw      a2, 24(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff28]
       0     2109        M 0x8000097c sw      a1, 20(sp)             #; sp  = 0x0011ff10, 32 ~~> Word[0x0011ff24]
       0     2118        M 0x80000980 addi    a0, sp, 20             #; sp  = 0x0011ff10, (wrb) a0  <-- 0x0011ff24
       0     2119        M 0x80000984 sw      a0, 8(sp)              #; sp  = 0x0011ff10, 0x0011ff24 ~~> Word[0x0011ff18]
       0     2120        M 0x80000988 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80001988
       0     2121        M 0x8000098c addi    a0, a0, -988           #; a0  = 0x80001988, (wrb) a0  <-- 0x800015ac
       0     2130        M 0x80000990 addi    a1, sp, 7              #; sp  = 0x0011ff10, (wrb) a1  <-- 0x0011ff17
       0     2131        M 0x80000994 li      a2, -1                 #; (wrb) a2  <-- -1
       0     2132        M 0x80000998 addi    a4, sp, 20             #; sp  = 0x0011ff10, (wrb) a4  <-- 0x0011ff24
       0     2133        M 0x8000099c mv      a3, t0                 #; t0  = 0x80002c95, (wrb) a3  <-- 0x80002c95
       0     2142        M 0x800009a0 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800009a0
       0     2143        M 0x800009a4 jalr    ra, ra, 20             #; ra  = 0x800009a0, (wrb) ra  <-- 0x800009a8, goto 0x800009b4
       0     2154        M 0x800009b4 addi    sp, sp, -112           #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011fea0
       0     2155        M 0x800009b8 sw      ra, 108(sp)            #; sp  = 0x0011fea0, 0x800009a8 ~~> Word[0x0011ff0c]
       0     2156        M 0x800009bc sw      s0, 104(sp)            #; sp  = 0x0011fea0, 0x00100000 ~~> Word[0x0011ff08]
       0     2166        M 0x800009c0 sw      s1, 100(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff04]
       0     2167        M 0x800009c4 sw      s2, 96(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff00]
       0     2168        M 0x800009c8 sw      s3, 92(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fefc]
       0     2169        M 0x800009cc sw      s4, 88(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef8]
       0     2178        M 0x800009d0 sw      s5, 84(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef4]
       0     2179        M 0x800009d4 sw      s6, 80(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef0]
       0     2180        M 0x800009d8 sw      s7, 76(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011feec]
       0     2181        M 0x800009dc sw      s8, 72(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee8]
       0     2190        M 0x800009e0 sw      s9, 68(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee4]
       0     2191        M 0x800009e4 sw      s10, 64(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee0]
       0     2192        M 0x800009e8 sw      s11, 60(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fedc]
       0     2193        M 0x800009ec mv      s3, a4                 #; a4  = 0x0011ff24, (wrb) s3  <-- 0x0011ff24
       0     2202        M 0x800009f0 mv      s0, a3                 #; a3  = 0x80002c95, (wrb) s0  <-- 0x80002c95
       0     2203        M 0x800009f4 mv      s5, a2                 #; a2  = -1, (wrb) s5  <-- -1
       0     2204        M 0x800009f8 mv      s4, a1                 #; a1  = 0x0011ff17, (wrb) s4  <-- 0x0011ff17
       0     2205        M 0x800009fc beqz    a1, pc + 12            #; a1  = 0x0011ff17, not taken
       0     2214        M 0x80000a00 mv      s2, a0                 #; a0  = 0x800015ac, (wrb) s2  <-- 0x800015ac
       0     2215        M 0x80000a04 j       pc + 0xc               #; goto 0x80000a10
       0     2226        M 0x80000a10 li      s8, 0                  #; (wrb) s8  <-- 0
       0     2227        M 0x80000a14 li      s6, 37                 #; (wrb) s6  <-- 37
       0     2228        M 0x80000a18 li      s11, 16                #; (wrb) s11 <-- 16
       0     2229        M 0x80000a1c li      s7, 46                 #; (wrb) s7  <-- 46
       0     2238        M 0x80000a20 lui     a0, 0x1                #; (wrb) a0  <-- 4096
       0     2239        M 0x80000a24 addi    a0, a0, -2048          #; a0  = 4096, (wrb) a0  <-- 2048
       0     2240        M 0x80000a28 sw      a0, 24(sp)             #; sp  = 0x0011fea0, 2048 ~~> Word[0x0011feb8]
       0     2241        M 0x80000a2c lui     a0, 0x10               #; (wrb) a0  <-- 0x00010000
       0     2250        M 0x80000a30 addi    a0, a0, -1             #; a0  = 0x00010000, (wrb) a0  <-- 65535
       0     2251        M 0x80000a34 sw      a0, 16(sp)             #; sp  = 0x0011fea0, 65535 ~~> Word[0x0011feb0]
       0     2252        M 0x80000a38 addi    s10, s0, 2             #; s0  = 0x80002c95, (wrb) s10 <-- 0x80002c97
       0     2253        M 0x80000a3c mv      s9, s8                 #; s8  = 0, (wrb) s9  <-- 0
       0     2262        M 0x80000a40 li      s8, 10                 #; (wrb) s8  <-- 10
       0     2263        M 0x80000a44 lbu     a0, 0(s0)              #; s0  = 0x80002c95, a0  <~~ Byte[0x80002c95]
       0     2274        M                                           #; (lsu) a0  <-- 101
       0     2275        M 0x80000a48 beqz    a0, pc + 2824          #; a0  = 101, not taken
       0     2276        M 0x80000a4c beq     a0, s6, pc + 48        #; a0  = 101, s6  = 37, not taken
       0     2277        M 0x80000a50 addi    s1, s9, 1              #; s9  = 0, (wrb) s1  <-- 1
       0     2278        M 0x80000a54 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     2279        M 0x80000a58 mv      a2, s9                 #; s9  = 0, (wrb) a2  <-- 0
       0     2280        M 0x80000a5c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2289        M 0x80000a60 jalr    s2                     #; s2  = 0x800015ac, (wrb) ra  <-- 0x80000a64, goto 0x800015ac
       0     2312        M 0x800015ac beqz    a0, pc + 168           #; a0  = 101, not taken
       0     2324        M 0x800015b0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2325        M 0x800015b4 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2326        M 0x800015b8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2327        M 0x800015bc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800035bc
       0     2336        M 0x800015c0 addi    a3, a3, -1440          #; a3  = 0x800035bc, (wrb) a3  <-- 0x8000301c
       0     2337        M 0x800015c4 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000301c, (wrb) a1  <-- 0x8000301c
       0     2338        M 0x800015c8 lw      a4, 0(a1)              #; a1  = 0x8000301c, a4  <~~ Word[0x8000301c]
       0     2349        M                                           #; (lsu) a4  <-- 0
       0     2350        M 0x800015cc addi    a5, a4, 1              #; a4  = 0, (wrb) a5  <-- 1
       0     2351        M 0x800015d0 sw      a5, 0(a1)              #; a1  = 0x8000301c, 1 ~~> Word[0x8000301c]
       0     2352        M 0x800015d4 add     a4, a1, a4             #; a1  = 0x8000301c, a4  = 0, (wrb) a4  <-- 0x8000301c
       0     2353        M 0x800015d8 sb      a0, 72(a4)             #; a4  = 0x8000301c, 101 ~~> Byte[0x80003064]
       0     2354        M 0x800015dc lw      a4, 0(a1)              #; a1  = 0x8000301c, a4  <~~ Word[0x8000301c]
       0     2375        M                                           #; (lsu) a4  <-- 1
       0     2376        M 0x800015e0 addi    a4, a4, -1020          #; a4  = 1, (wrb) a4  <-- -1019
       0     2377        M 0x800015e4 snez    a4, a4                 #; a4  = -1019, (wrb) a4  <-- 1
       0     2378        M 0x800015e8 addi    a0, a0, -10            #; a0  = 101, (wrb) a0  <-- 91
       0     2379        M 0x800015ec snez    a0, a0                 #; a0  = 91, (wrb) a0  <-- 1
       0     2380        M 0x800015f0 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2381        M 0x800015f4 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001654
       0     2403        M 0x80001654 ret                            #; ra  = 0x80000a64, goto 0x80000a64
       0     2417        M 0x80000a64 addi    s0, s0, 1              #; s0  = 0x80002c95, (wrb) s0  <-- 0x80002c96
       0     2418        M 0x80000a68 addi    s10, s10, 1            #; s10 = 0x80002c97, (wrb) s10 <-- 0x80002c98
       0     2419        M 0x80000a6c mv      s9, s1                 #; s1  = 1, (wrb) s9  <-- 1
       0     2420        M 0x80000a70 lbu     a0, 0(s0)              #; s0  = 0x80002c96, a0  <~~ Byte[0x80002c96]
       0     2431        M                                           #; (lsu) a0  <-- 114
       0     2432        M 0x80000a74 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000a4c
       0     2433        M 0x80000a4c beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     2436        M 0x80000a50 addi    s1, s9, 1              #; s9  = 1, (wrb) s1  <-- 2
       0     2437        M 0x80000a54 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     2438        M 0x80000a58 mv      a2, s9                 #; s9  = 1, (wrb) a2  <-- 1
       0     2439        M 0x80000a5c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2440        M 0x80000a60 jalr    s2                     #; s2  = 0x800015ac, (wrb) ra  <-- 0x80000a64, goto 0x800015ac
       0     2443        M 0x800015ac beqz    a0, pc + 168           #; a0  = 114, not taken
       0     2446        M 0x800015b0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2447        M 0x800015b4 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2448        M 0x800015b8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2449        M 0x800015bc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800035bc
       0     2450        M 0x800015c0 addi    a3, a3, -1440          #; a3  = 0x800035bc, (wrb) a3  <-- 0x8000301c
       0     2451        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2452        M 0x800015c4 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000301c, (wrb) a1  <-- 0x8000301c
       0     2453        M 0x800015c8 lw      a4, 0(a1)              #; a1  = 0x8000301c, a4  <~~ Word[0x8000301c]
       0     2464        M                                           #; (lsu) a4  <-- 1
       0     2465        M 0x800015cc addi    a5, a4, 1              #; a4  = 1, (wrb) a5  <-- 2
       0     2466        M 0x800015d0 sw      a5, 0(a1)              #; a1  = 0x8000301c, 2 ~~> Word[0x8000301c]
       0     2467        M 0x800015d4 add     a4, a1, a4             #; a1  = 0x8000301c, a4  = 1, (wrb) a4  <-- 0x8000301d
       0     2468        M 0x800015d8 sb      a0, 72(a4)             #; a4  = 0x8000301d, 114 ~~> Byte[0x80003065]
       0     2469        M 0x800015dc lw      a4, 0(a1)              #; a1  = 0x8000301c, a4  <~~ Word[0x8000301c]
       0     2490        M                                           #; (lsu) a4  <-- 2
       0     2491        M 0x800015e0 addi    a4, a4, -1020          #; a4  = 2, (wrb) a4  <-- -1018
       0     2492        M 0x800015e4 snez    a4, a4                 #; a4  = -1018, (wrb) a4  <-- 1
       0     2493        M 0x800015e8 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     2494        M 0x800015ec snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     2495        M 0x800015f0 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2496        M 0x800015f4 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001654
       0     2500        M 0x80001654 ret                            #; ra  = 0x80000a64, goto 0x80000a64
       0     2505        M 0x80000a64 addi    s0, s0, 1              #; s0  = 0x80002c96, (wrb) s0  <-- 0x80002c97
       0     2506        M 0x80000a68 addi    s10, s10, 1            #; s10 = 0x80002c98, (wrb) s10 <-- 0x80002c99
       0     2507        M 0x80000a6c mv      s9, s1                 #; s1  = 2, (wrb) s9  <-- 2
       0     2508        M 0x80000a70 lbu     a0, 0(s0)              #; s0  = 0x80002c97, a0  <~~ Byte[0x80002c97]
       0     2519        M                                           #; (lsu) a0  <-- 114
       0     2520        M 0x80000a74 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000a4c
       0     2521        M 0x80000a4c beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     2524        M 0x80000a50 addi    s1, s9, 1              #; s9  = 2, (wrb) s1  <-- 3
       0     2525        M 0x80000a54 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     2526        M 0x80000a58 mv      a2, s9                 #; s9  = 2, (wrb) a2  <-- 2
       0     2527        M 0x80000a5c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2528        M 0x80000a60 jalr    s2                     #; s2  = 0x800015ac, (wrb) ra  <-- 0x80000a64, goto 0x800015ac
       0     2531        M 0x800015ac beqz    a0, pc + 168           #; a0  = 114, not taken
       0     2534        M 0x800015b0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2535        M 0x800015b4 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2536        M 0x800015b8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2537        M 0x800015bc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800035bc
       0     2538        M 0x800015c0 addi    a3, a3, -1440          #; a3  = 0x800035bc, (wrb) a3  <-- 0x8000301c
       0     2539        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2540        M 0x800015c4 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000301c, (wrb) a1  <-- 0x8000301c
       0     2541        M 0x800015c8 lw      a4, 0(a1)              #; a1  = 0x8000301c, a4  <~~ Word[0x8000301c]
       0     2552        M                                           #; (lsu) a4  <-- 2
       0     2553        M 0x800015cc addi    a5, a4, 1              #; a4  = 2, (wrb) a5  <-- 3
       0     2554        M 0x800015d0 sw      a5, 0(a1)              #; a1  = 0x8000301c, 3 ~~> Word[0x8000301c]
       0     2555        M 0x800015d4 add     a4, a1, a4             #; a1  = 0x8000301c, a4  = 2, (wrb) a4  <-- 0x8000301e
       0     2556        M 0x800015d8 sb      a0, 72(a4)             #; a4  = 0x8000301e, 114 ~~> Byte[0x80003066]
       0     2557        M 0x800015dc lw      a4, 0(a1)              #; a1  = 0x8000301c, a4  <~~ Word[0x8000301c]
       0     2578        M                                           #; (lsu) a4  <-- 3
       0     2579        M 0x800015e0 addi    a4, a4, -1020          #; a4  = 3, (wrb) a4  <-- -1017
       0     2580        M 0x800015e4 snez    a4, a4                 #; a4  = -1017, (wrb) a4  <-- 1
       0     2581        M 0x800015e8 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     2582        M 0x800015ec snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     2583        M 0x800015f0 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2584        M 0x800015f4 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001654
       0     2588        M 0x80001654 ret                            #; ra  = 0x80000a64, goto 0x80000a64
       0     2593        M 0x80000a64 addi    s0, s0, 1              #; s0  = 0x80002c97, (wrb) s0  <-- 0x80002c98
       0     2594        M 0x80000a68 addi    s10, s10, 1            #; s10 = 0x80002c99, (wrb) s10 <-- 0x80002c9a
       0     2595        M 0x80000a6c mv      s9, s1                 #; s1  = 3, (wrb) s9  <-- 3
       0     2596        M 0x80000a70 lbu     a0, 0(s0)              #; s0  = 0x80002c98, a0  <~~ Byte[0x80002c98]
       0     2607        M                                           #; (lsu) a0  <-- 111
       0     2608        M 0x80000a74 bnez    a0, pc - 40            #; a0  = 111, taken, goto 0x80000a4c
       0     2609        M 0x80000a4c beq     a0, s6, pc + 48        #; a0  = 111, s6  = 37, not taken
       0     2612        M 0x80000a50 addi    s1, s9, 1              #; s9  = 3, (wrb) s1  <-- 4
       0     2613        M 0x80000a54 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     2614        M 0x80000a58 mv      a2, s9                 #; s9  = 3, (wrb) a2  <-- 3
       0     2615        M 0x80000a5c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2616        M 0x80000a60 jalr    s2                     #; s2  = 0x800015ac, (wrb) ra  <-- 0x80000a64, goto 0x800015ac
       0     2619        M 0x800015ac beqz    a0, pc + 168           #; a0  = 111, not taken
       0     2622        M 0x800015b0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2623        M 0x800015b4 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2624        M 0x800015b8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2625        M 0x800015bc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800035bc
       0     2626        M 0x800015c0 addi    a3, a3, -1440          #; a3  = 0x800035bc, (wrb) a3  <-- 0x8000301c
       0     2627        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2628        M 0x800015c4 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000301c, (wrb) a1  <-- 0x8000301c
       0     2629        M 0x800015c8 lw      a4, 0(a1)              #; a1  = 0x8000301c, a4  <~~ Word[0x8000301c]
       0     2640        M                                           #; (lsu) a4  <-- 3
       0     2641        M 0x800015cc addi    a5, a4, 1              #; a4  = 3, (wrb) a5  <-- 4
       0     2642        M 0x800015d0 sw      a5, 0(a1)              #; a1  = 0x8000301c, 4 ~~> Word[0x8000301c]
       0     2643        M 0x800015d4 add     a4, a1, a4             #; a1  = 0x8000301c, a4  = 3, (wrb) a4  <-- 0x8000301f
       0     2644        M 0x800015d8 sb      a0, 72(a4)             #; a4  = 0x8000301f, 111 ~~> Byte[0x80003067]
       0     2645        M 0x800015dc lw      a4, 0(a1)              #; a1  = 0x8000301c, a4  <~~ Word[0x8000301c]
       0     2666        M                                           #; (lsu) a4  <-- 4
       0     2667        M 0x800015e0 addi    a4, a4, -1020          #; a4  = 4, (wrb) a4  <-- -1016
       0     2668        M 0x800015e4 snez    a4, a4                 #; a4  = -1016, (wrb) a4  <-- 1
       0     2669        M 0x800015e8 addi    a0, a0, -10            #; a0  = 111, (wrb) a0  <-- 101
       0     2670        M 0x800015ec snez    a0, a0                 #; a0  = 101, (wrb) a0  <-- 1
       0     2671        M 0x800015f0 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2672        M 0x800015f4 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001654
       0     2676        M 0x80001654 ret                            #; ra  = 0x80000a64, goto 0x80000a64
       0     2681        M 0x80000a64 addi    s0, s0, 1              #; s0  = 0x80002c98, (wrb) s0  <-- 0x80002c99
       0     2682        M 0x80000a68 addi    s10, s10, 1            #; s10 = 0x80002c9a, (wrb) s10 <-- 0x80002c9b
       0     2683        M 0x80000a6c mv      s9, s1                 #; s1  = 4, (wrb) s9  <-- 4
       0     2684        M 0x80000a70 lbu     a0, 0(s0)              #; s0  = 0x80002c99, a0  <~~ Byte[0x80002c99]
       0     2695        M                                           #; (lsu) a0  <-- 114
       0     2696        M 0x80000a74 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000a4c
       0     2697        M 0x80000a4c beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     2700        M 0x80000a50 addi    s1, s9, 1              #; s9  = 4, (wrb) s1  <-- 5
       0     2701        M 0x80000a54 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     2702        M 0x80000a58 mv      a2, s9                 #; s9  = 4, (wrb) a2  <-- 4
       0     2703        M 0x80000a5c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2704        M 0x80000a60 jalr    s2                     #; s2  = 0x800015ac, (wrb) ra  <-- 0x80000a64, goto 0x800015ac
       0     2707        M 0x800015ac beqz    a0, pc + 168           #; a0  = 114, not taken
       0     2710        M 0x800015b0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2711        M 0x800015b4 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2712        M 0x800015b8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2713        M 0x800015bc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800035bc
       0     2714        M 0x800015c0 addi    a3, a3, -1440          #; a3  = 0x800035bc, (wrb) a3  <-- 0x8000301c
       0     2715        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2716        M 0x800015c4 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000301c, (wrb) a1  <-- 0x8000301c
       0     2717        M 0x800015c8 lw      a4, 0(a1)              #; a1  = 0x8000301c, a4  <~~ Word[0x8000301c]
       0     2728        M                                           #; (lsu) a4  <-- 4
       0     2729        M 0x800015cc addi    a5, a4, 1              #; a4  = 4, (wrb) a5  <-- 5
       0     2730        M 0x800015d0 sw      a5, 0(a1)              #; a1  = 0x8000301c, 5 ~~> Word[0x8000301c]
       0     2731        M 0x800015d4 add     a4, a1, a4             #; a1  = 0x8000301c, a4  = 4, (wrb) a4  <-- 0x80003020
       0     2732        M 0x800015d8 sb      a0, 72(a4)             #; a4  = 0x80003020, 114 ~~> Byte[0x80003068]
       0     2733        M 0x800015dc lw      a4, 0(a1)              #; a1  = 0x8000301c, a4  <~~ Word[0x8000301c]
       0     2754        M                                           #; (lsu) a4  <-- 5
       0     2755        M 0x800015e0 addi    a4, a4, -1020          #; a4  = 5, (wrb) a4  <-- -1015
       0     2756        M 0x800015e4 snez    a4, a4                 #; a4  = -1015, (wrb) a4  <-- 1
       0     2757        M 0x800015e8 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     2758        M 0x800015ec snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     2759        M 0x800015f0 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2760        M 0x800015f4 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001654
       0     2764        M 0x80001654 ret                            #; ra  = 0x80000a64, goto 0x80000a64
       0     2769        M 0x80000a64 addi    s0, s0, 1              #; s0  = 0x80002c99, (wrb) s0  <-- 0x80002c9a
       0     2770        M 0x80000a68 addi    s10, s10, 1            #; s10 = 0x80002c9b, (wrb) s10 <-- 0x80002c9c
       0     2771        M 0x80000a6c mv      s9, s1                 #; s1  = 5, (wrb) s9  <-- 5
       0     2772        M 0x80000a70 lbu     a0, 0(s0)              #; s0  = 0x80002c9a, a0  <~~ Byte[0x80002c9a]
       0     2783        M                                           #; (lsu) a0  <-- 32
       0     2784        M 0x80000a74 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000a4c
       0     2785        M 0x80000a4c beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     2788        M 0x80000a50 addi    s1, s9, 1              #; s9  = 5, (wrb) s1  <-- 6
       0     2789        M 0x80000a54 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     2790        M 0x80000a58 mv      a2, s9                 #; s9  = 5, (wrb) a2  <-- 5
       0     2791        M 0x80000a5c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2792        M 0x80000a60 jalr    s2                     #; s2  = 0x800015ac, (wrb) ra  <-- 0x80000a64, goto 0x800015ac
       0     2795        M 0x800015ac beqz    a0, pc + 168           #; a0  = 32, not taken
       0     2798        M 0x800015b0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2799        M 0x800015b4 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2800        M 0x800015b8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2801        M 0x800015bc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800035bc
       0     2802        M 0x800015c0 addi    a3, a3, -1440          #; a3  = 0x800035bc, (wrb) a3  <-- 0x8000301c
       0     2803        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2804        M 0x800015c4 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000301c, (wrb) a1  <-- 0x8000301c
       0     2805        M 0x800015c8 lw      a4, 0(a1)              #; a1  = 0x8000301c, a4  <~~ Word[0x8000301c]
       0     2816        M                                           #; (lsu) a4  <-- 5
       0     2817        M 0x800015cc addi    a5, a4, 1              #; a4  = 5, (wrb) a5  <-- 6
       0     2818        M 0x800015d0 sw      a5, 0(a1)              #; a1  = 0x8000301c, 6 ~~> Word[0x8000301c]
       0     2819        M 0x800015d4 add     a4, a1, a4             #; a1  = 0x8000301c, a4  = 5, (wrb) a4  <-- 0x80003021
       0     2820        M 0x800015d8 sb      a0, 72(a4)             #; a4  = 0x80003021, 32 ~~> Byte[0x80003069]
       0     2821        M 0x800015dc lw      a4, 0(a1)              #; a1  = 0x8000301c, a4  <~~ Word[0x8000301c]
       0     2842        M                                           #; (lsu) a4  <-- 6
       0     2843        M 0x800015e0 addi    a4, a4, -1020          #; a4  = 6, (wrb) a4  <-- -1014
       0     2844        M 0x800015e4 snez    a4, a4                 #; a4  = -1014, (wrb) a4  <-- 1
       0     2845        M 0x800015e8 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
       0     2846        M 0x800015ec snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
       0     2847        M 0x800015f0 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2848        M 0x800015f4 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001654
       0     2852        M 0x80001654 ret                            #; ra  = 0x80000a64, goto 0x80000a64
       0     2857        M 0x80000a64 addi    s0, s0, 1              #; s0  = 0x80002c9a, (wrb) s0  <-- 0x80002c9b
       0     2858        M 0x80000a68 addi    s10, s10, 1            #; s10 = 0x80002c9c, (wrb) s10 <-- 0x80002c9d
       0     2859        M 0x80000a6c mv      s9, s1                 #; s1  = 6, (wrb) s9  <-- 6
       0     2860        M 0x80000a70 lbu     a0, 0(s0)              #; s0  = 0x80002c9b, a0  <~~ Byte[0x80002c9b]
       0     2871        M                                           #; (lsu) a0  <-- 61
       0     2872        M 0x80000a74 bnez    a0, pc - 40            #; a0  = 61, taken, goto 0x80000a4c
       0     2873        M 0x80000a4c beq     a0, s6, pc + 48        #; a0  = 61, s6  = 37, not taken
       0     2876        M 0x80000a50 addi    s1, s9, 1              #; s9  = 6, (wrb) s1  <-- 7
       0     2877        M 0x80000a54 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     2878        M 0x80000a58 mv      a2, s9                 #; s9  = 6, (wrb) a2  <-- 6
       0     2879        M 0x80000a5c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2880        M 0x80000a60 jalr    s2                     #; s2  = 0x800015ac, (wrb) ra  <-- 0x80000a64, goto 0x800015ac
       0     2883        M 0x800015ac beqz    a0, pc + 168           #; a0  = 61, not taken
       0     2886        M 0x800015b0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2887        M 0x800015b4 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2888        M 0x800015b8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2889        M 0x800015bc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800035bc
       0     2890        M 0x800015c0 addi    a3, a3, -1440          #; a3  = 0x800035bc, (wrb) a3  <-- 0x8000301c
       0     2891        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2892        M 0x800015c4 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000301c, (wrb) a1  <-- 0x8000301c
       0     2893        M 0x800015c8 lw      a4, 0(a1)              #; a1  = 0x8000301c, a4  <~~ Word[0x8000301c]
       0     2904        M                                           #; (lsu) a4  <-- 6
       0     2905        M 0x800015cc addi    a5, a4, 1              #; a4  = 6, (wrb) a5  <-- 7
       0     2906        M 0x800015d0 sw      a5, 0(a1)              #; a1  = 0x8000301c, 7 ~~> Word[0x8000301c]
       0     2907        M 0x800015d4 add     a4, a1, a4             #; a1  = 0x8000301c, a4  = 6, (wrb) a4  <-- 0x80003022
       0     2908        M 0x800015d8 sb      a0, 72(a4)             #; a4  = 0x80003022, 61 ~~> Byte[0x8000306a]
       0     2909        M 0x800015dc lw      a4, 0(a1)              #; a1  = 0x8000301c, a4  <~~ Word[0x8000301c]
       0     2930        M                                           #; (lsu) a4  <-- 7
       0     2931        M 0x800015e0 addi    a4, a4, -1020          #; a4  = 7, (wrb) a4  <-- -1013
       0     2932        M 0x800015e4 snez    a4, a4                 #; a4  = -1013, (wrb) a4  <-- 1
       0     2933        M 0x800015e8 addi    a0, a0, -10            #; a0  = 61, (wrb) a0  <-- 51
       0     2934        M 0x800015ec snez    a0, a0                 #; a0  = 51, (wrb) a0  <-- 1
       0     2935        M 0x800015f0 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2936        M 0x800015f4 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001654
       0     2940        M 0x80001654 ret                            #; ra  = 0x80000a64, goto 0x80000a64
       0     2945        M 0x80000a64 addi    s0, s0, 1              #; s0  = 0x80002c9b, (wrb) s0  <-- 0x80002c9c
       0     2946        M 0x80000a68 addi    s10, s10, 1            #; s10 = 0x80002c9d, (wrb) s10 <-- 0x80002c9e
       0     2947        M 0x80000a6c mv      s9, s1                 #; s1  = 7, (wrb) s9  <-- 7
       0     2948        M 0x80000a70 lbu     a0, 0(s0)              #; s0  = 0x80002c9c, a0  <~~ Byte[0x80002c9c]
       0     2959        M                                           #; (lsu) a0  <-- 32
       0     2960        M 0x80000a74 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000a4c
       0     2961        M 0x80000a4c beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     2964        M 0x80000a50 addi    s1, s9, 1              #; s9  = 7, (wrb) s1  <-- 8
       0     2965        M 0x80000a54 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     2966        M 0x80000a58 mv      a2, s9                 #; s9  = 7, (wrb) a2  <-- 7
       0     2967        M 0x80000a5c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2968        M 0x80000a60 jalr    s2                     #; s2  = 0x800015ac, (wrb) ra  <-- 0x80000a64, goto 0x800015ac
       0     2971        M 0x800015ac beqz    a0, pc + 168           #; a0  = 32, not taken
       0     2974        M 0x800015b0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2975        M 0x800015b4 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2976        M 0x800015b8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2977        M 0x800015bc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800035bc
       0     2978        M 0x800015c0 addi    a3, a3, -1440          #; a3  = 0x800035bc, (wrb) a3  <-- 0x8000301c
       0     2979        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2980        M 0x800015c4 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000301c, (wrb) a1  <-- 0x8000301c
       0     2981        M 0x800015c8 lw      a4, 0(a1)              #; a1  = 0x8000301c, a4  <~~ Word[0x8000301c]
       0     2992        M                                           #; (lsu) a4  <-- 7
       0     2993        M 0x800015cc addi    a5, a4, 1              #; a4  = 7, (wrb) a5  <-- 8
       0     2994        M 0x800015d0 sw      a5, 0(a1)              #; a1  = 0x8000301c, 8 ~~> Word[0x8000301c]
       0     2995        M 0x800015d4 add     a4, a1, a4             #; a1  = 0x8000301c, a4  = 7, (wrb) a4  <-- 0x80003023
       0     2996        M 0x800015d8 sb      a0, 72(a4)             #; a4  = 0x80003023, 32 ~~> Byte[0x8000306b]
       0     2997        M 0x800015dc lw      a4, 0(a1)              #; a1  = 0x8000301c, a4  <~~ Word[0x8000301c]
       0     3018        M                                           #; (lsu) a4  <-- 8
       0     3019        M 0x800015e0 addi    a4, a4, -1020          #; a4  = 8, (wrb) a4  <-- -1012
       0     3020        M 0x800015e4 snez    a4, a4                 #; a4  = -1012, (wrb) a4  <-- 1
       0     3021        M 0x800015e8 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
       0     3022        M 0x800015ec snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
       0     3023        M 0x800015f0 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     3024        M 0x800015f4 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001654
       0     3028        M 0x80001654 ret                            #; ra  = 0x80000a64, goto 0x80000a64
       0     3033        M 0x80000a64 addi    s0, s0, 1              #; s0  = 0x80002c9c, (wrb) s0  <-- 0x80002c9d
       0     3034        M 0x80000a68 addi    s10, s10, 1            #; s10 = 0x80002c9e, (wrb) s10 <-- 0x80002c9f
       0     3035        M 0x80000a6c mv      s9, s1                 #; s1  = 8, (wrb) s9  <-- 8
       0     3036        M 0x80000a70 lbu     a0, 0(s0)              #; s0  = 0x80002c9d, a0  <~~ Byte[0x80002c9d]
       0     3047        M                                           #; (lsu) a0  <-- 37
       0     3048        M 0x80000a74 bnez    a0, pc - 40            #; a0  = 37, taken, goto 0x80000a4c
       0     3049        M 0x80000a4c beq     a0, s6, pc + 48        #; a0  = 37, s6  = 37, taken, goto 0x80000a7c
       0     3050        M 0x80000a7c li      s0, 0                  #; (wrb) s0  <-- 0
       0     3063        M 0x80000a80 j       pc + 0x10              #; goto 0x80000a90
       0     3075        M 0x80000a90 lbu     a0, -1(s10)            #; s10 = 0x80002c9f, a0  <~~ Byte[0x80002c9e]
       0     3086        M                                           #; (lsu) a0  <-- 102
       0     3087        M 0x80000a94 addi    a1, a0, -32            #; a0  = 102, (wrb) a1  <-- 70
       0     3088        M 0x80000a98 bltu    s11, a1, pc + 56       #; s11 = 16, a1  = 70, taken, goto 0x80000ad0
       0     3100        M 0x80000ad0 addi    a1, a0, -48            #; a0  = 102, (wrb) a1  <-- 54
       0     3101        M 0x80000ad4 andi    a2, a1, 255            #; a1  = 54, (wrb) a2  <-- 54
       0     3102        M 0x80000ad8 addi    a1, s10, -1            #; s10 = 0x80002c9f, (wrb) a1  <-- 0x80002c9e
       0     3103        M 0x80000adc li      a3, 9                  #; (wrb) a3  <-- 9
       0     3112        M 0x80000ae0 bltu    a3, a2, pc + 124       #; a3  = 9, a2  = 54, taken, goto 0x80000b5c
       0     3135        M 0x80000b5c li      a2, 42                 #; (wrb) a2  <-- 42
       0     3147        M 0x80000b60 bne     a0, a2, pc + 80        #; a0  = 102, a2  = 42, taken, goto 0x80000bb0
       0     3170        M 0x80000bb0 li      s6, 0                  #; (wrb) s6  <-- 0
       0     3171        M 0x80000bb4 mv      s10, a1                #; a1  = 0x80002c9e, (wrb) s10 <-- 0x80002c9e
       0     3172        M 0x80000bb8 beq     a0, s7, pc - 164       #; a0  = 102, s7  = 46, not taken
       0     3173        M 0x80000bbc li      s7, 0                  #; (wrb) s7  <-- 0
       0     3193        M 0x80000bc0 j       pc + 0xc               #; goto 0x80000bcc
       0     3194        M 0x80000bcc addi    a1, a0, -104           #; a0  = 102, (wrb) a1  <-- -2
       0     3206        M 0x80000bd0 srli    a2, a1, 1              #; a1  = -2, (wrb) a2  <-- 0x7fffffff
       0     3207        M 0x80000bd4 slli    a1, a1, 31             #; a1  = -2, (wrb) a1  <-- 0
       0     3208        M 0x80000bd8 or      a1, a1, a2             #; a1  = 0, a2  = 0x7fffffff, (wrb) a1  <-- 0x7fffffff
       0     3209        M 0x80000bdc li      a2, 9                  #; (wrb) a2  <-- 9
       0     3218        M 0x80000be0 bltu    a2, a1, pc + 100       #; a2  = 9, a1  = 0x7fffffff, taken, goto 0x80000c44
       0     3241        M 0x80000c44 addi    a1, a0, -37            #; a0  = 102, (wrb) a1  <-- 65
       0     3242        M 0x80000c48 li      a2, 83                 #; (wrb) a2  <-- 83
       0     3243        M 0x80000c4c bltu    a2, a1, pc + 264       #; a2  = 83, a1  = 65, not taken
       0     3253        M 0x80000c50 slli    a1, a1, 2              #; a1  = 65, (wrb) a1  <-- 260
       0     3254        M 0x80000c54 auipc   a2, 0x2                #; (wrb) a2  <-- 0x80002c54
       0     3255        M 0x80000c58 addi    a2, a2, 192            #; a2  = 0x80002c54, (wrb) a2  <-- 0x80002d14
       0     3256        M 0x80000c5c add     a1, a1, a2             #; a1  = 260, a2  = 0x80002d14, (wrb) a1  <-- 0x80002e18
       0     3265        M 0x80000c60 lw      a2, 0(a1)              #; a1  = 0x80002e18, a2  <~~ Word[0x80002e18]
       0     3266        M 0x80000c64 li      a1, 8                  #; (wrb) a1  <-- 8
       0     3267        M 0x80000c68 li      s8, 16                 #; (wrb) s8  <-- 16
       0     3276        M                                           #; (lsu) a2  <-- 0x80000c9c
       0     3277        M 0x80000c6c jr      a2                     #; a2  = 0x80000c9c, goto 0x80000c9c
       0     3289        M 0x80000c9c li      a1, 70                 #; (wrb) a1  <-- 70
       0     3301        M 0x80000ca0 bne     a0, a1, pc + 8         #; a0  = 102, a1  = 70, taken, goto 0x80000ca8
       0     3302        M 0x80000ca8 addi    a0, s3, 7              #; s3  = 0x0011ff24, (wrb) a0  <-- 0x0011ff2b
       0     3303        M 0x80000cac andi    a0, a0, -8             #; a0  = 0x0011ff2b, (wrb) a0  <-- 0x0011ff28
       0     3314        M 0x80000cb4 addi    s3, a0, 8              #; a0  = 0x0011ff28, (wrb) s3  <-- 0x0011ff30
       0     3315        M 0x80000cb8 mv      a0, s2                 #; s2  = 0x800015ac, (wrb) a0  <-- 0x800015ac
                         M 0x80000cb0 fld     fa0, 0(a0)             #; fa0  <~~ Doub[0x0011ff28]
       0     3316        M 0x80000cbc mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
                         M                                           #; (f:lsu) fa0  <-- 0.0
       0     3325        M 0x80000cc0 mv      a2, s9                 #; s9  = 8, (wrb) a2  <-- 8
       0     3326        M 0x80000cc4 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3327        M 0x80000cc8 mv      a4, s7                 #; s7  = 0, (wrb) a4  <-- 0
       0     3328        M 0x80000ccc mv      a5, s6                 #; s6  = 0, (wrb) a5  <-- 0
       0     3337        M 0x80000cd0 mv      a6, s0                 #; s0  = 0, (wrb) a6  <-- 0
       0     3338        M 0x80000cd4 auipc   ra, 0x1                #; (wrb) ra  <-- 0x80001cd4
       0     3339        M 0x80000cd8 jalr    ra, ra, -1656          #; ra  = 0x80001cd4, (wrb) ra  <-- 0x80000cdc, goto 0x8000165c
       0     3351        M 0x8000165c addi    sp, sp, -112           #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011fe30
       0     3354        M 0x80001660 sw      ra, 108(sp)            #; sp  = 0x0011fe30, 0x80000cdc ~~> Word[0x0011fe9c]
       0     3355        M 0x80001664 sw      s0, 104(sp)            #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe98]
       0     3356        M 0x80001668 sw      s1, 100(sp)            #; sp  = 0x0011fe30, 8 ~~> Word[0x0011fe94]
       0     3357        M 0x8000166c sw      s2, 96(sp)             #; sp  = 0x0011fe30, 0x800015ac ~~> Word[0x0011fe90]
       0     3366        M 0x80001670 sw      s3, 92(sp)             #; sp  = 0x0011fe30, 0x0011ff30 ~~> Word[0x0011fe8c]
       0     3367        M 0x80001674 sw      s4, 88(sp)             #; sp  = 0x0011fe30, 0x0011ff17 ~~> Word[0x0011fe88]
       0     3368        M 0x80001678 sw      s5, 84(sp)             #; sp  = 0x0011fe30, -1 ~~> Word[0x0011fe84]
       0     3369        M 0x8000167c sw      s6, 80(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe80]
       0     3378        M 0x80001680 sw      s7, 76(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe7c]
       0     3379        M 0x80001684 sw      s8, 72(sp)             #; sp  = 0x0011fe30, 16 ~~> Word[0x0011fe78]
       0     3380        M 0x80001688 sw      s9, 68(sp)             #; sp  = 0x0011fe30, 8 ~~> Word[0x0011fe74]
       0     3381        M 0x8000168c sw      s10, 64(sp)            #; sp  = 0x0011fe30, 0x80002c9e ~~> Word[0x0011fe70]
       0     3392        M 0x80001690 fsd     fs0, 56(sp)            #; 0.0 ~~> Doub[0x0011fe68]
       0     3393        M 0x8000169c auipc   s1, 0x2                #; (wrb) s1  <-- 0x8000369c
                         M 0x80001694 fsd     fs1, 48(sp)            #; 0.0 ~~> Doub[0x0011fe60]
       0     3394        M 0x80001698 fsd     fs2, 40(sp)            #; 0.0 ~~> Doub[0x0011fe58]
       0     3402        M 0x800016a0 addi    s1, s1, -1836          #; s1  = 0x8000369c, (wrb) s1  <-- 0x80002f70
       0     3405        M 0x800016ac mv      s5, a6                 #; a6  = 0, (wrb) s5  <-- 0
                         M 0x800016a4 fld     ft0, 0(s1)             #; ft0  <~~ Doub[0x80002f70]
       0     3414        M 0x800016b0 mv      s2, a5                 #; a5  = 0, (wrb) s2  <-- 0
                         M                                           #; (f:lsu) ft0  <-- -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     3415        M 0x800016b4 mv      s3, a3                 #; a3  = -1, (wrb) s3  <-- -1
                         M 0x800016a8 fle.d   s1, ft0, fa0           #; ft0  = -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000, fa0  = 0.0
       0     3416        M 0x800016b8 mv      s4, a2                 #; a2  = 8, (wrb) s4  <-- 8
       0     3417        M 0x800016bc mv      s6, a1                 #; a1  = 0x0011ff17, (wrb) s6  <-- 0x0011ff17
       0     3426        M 0x800016c0 mv      s7, a0                 #; a0  = 0x800015ac, (wrb) s7  <-- 0x800015ac
       0     3427        M 0x800016c4 bnez    s1, pc + 240           #; s1  = 1, taken, goto 0x800017b4
       0     3450        M 0x800017b8 auipc   a0, 0x1                #; (wrb) a0  <-- 0x800027b8
       0     3451        M 0x800017bc addi    a0, a0, 1984           #; a0  = 0x800027b8, (wrb) a0  <-- 0x80002f78
                         M 0x800017b4 fsgnj.d fs0, fa0, fa0          #; fa0  = 0.0, fa0  = 0.0
       0     3452        M                                           #; (f:fpu) fs0  <-- 0.0
       0     3463        M 0x800017c0 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002f78]
       0     3472        M                                           #; (f:lsu) ft0  <-- 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     3473        M 0x800017c4 fle.d   a0, fa0, ft0           #; fa0  = 0.0, ft0  = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     3475        M                                           #; (acc) t3  <-- 0x00051e63
       0     3476        M 0x800017c8 bnez    a0, pc + 28            #; a0  = 1, taken, goto 0x800017e4
       0     3488        M 0x800017e4 auipc   a0, 0x1                #; (wrb) a0  <-- 0x800027e4
       0     3489        M 0x800017e8 addi    a0, a0, 1948           #; a0  = 0x800027e4, (wrb) a0  <-- 0x80002f80
       0     3492        M 0x800017ec fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002f80]
       0     3500        M 0x800017f0 auipc   a0, 0x1                #; (wrb) a0  <-- 0x800027f0
       0     3501        M 0x800017f4 addi    a0, a0, 1944           #; a0  = 0x800027f0, (wrb) a0  <-- 0x80002f88
                         M                                           #; (f:lsu) ft0  <-- 1000000000.0000000
       0     3504        M 0x800017f8 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80002f88]
       0     3505        M 0x800017fc fle.d   a0, fs0, ft0           #; fs0  = 0.0, ft0  = 1000000000.0000000
       0     3513        M                                           #; (f:lsu) ft1  <-- -1000000000.0000000
       0     3514        M 0x80001800 fle.d   a1, ft1, fs0           #; ft1  = -1000000000.0000000, fs0  = 0.0
       0     3516        M                                           #; (acc) a0  <-- 0x00b57533
       0     3517        M 0x80001804 and     a0, a0, a1             #; a0  = 1, a1  = 1, (wrb) a0  <-- 1
       0     3518        M 0x80001808 bnez    a0, pc + 252           #; a0  = 1, taken, goto 0x80001904
       0     3535        M 0x80001904 andi    a0, s5, 1024           #; s5  = 0, (wrb) a0  <-- 0
       0     3536        M 0x80001908 li      s8, 6                  #; (wrb) s8  <-- 6
       0     3537        M 0x8000190c beqz    a0, pc + 8             #; a0  = 0, taken, goto 0x80001914
       0     3547        M 0x80001914 li      a0, 10                 #; (wrb) a0  <-- 10
       0     3549        M 0x8000191c bltu    s8, a0, pc + 56        #; s8  = 6, a0  = 10, taken, goto 0x80001954
       0     3550        M 0x80001918 fsgnjx.d fs2, fs0, fs0         #; fs0  = 0.0, fs0  = 0.0
       0     3551        M                                           #; (f:fpu) fs2  <-- 0.0
       0     3570        M 0x80001954 li      s0, 0                  #; (wrb) s0  <-- 0
       0     3571        M 0x80001958 slli    a0, s8, 3              #; s8  = 6, (wrb) a0  <-- 48
       0     3572        M 0x8000195c auipc   a1, 0x1                #; (wrb) a1  <-- 0x8000295c
       0     3582        M 0x80001960 addi    a1, a1, 1292           #; a1  = 0x8000295c, (wrb) a1  <-- 0x80002e68
       0     3583        M 0x80001964 add     a0, a0, a1             #; a0  = 48, a1  = 0x80002e68, (wrb) a0  <-- 0x80002e98
       0     3586        M 0x80001968 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80002e98]
       0     3587        M 0x8000196c fcvt.w.d s1, fs2               #; fs2  = 0.0
       0     3595        M 0x80001970 fcvt.d.w ft0, s1               #; ac1  = 0, (f:lsu) ft1  <-- 1000000.0000000
       0     3596        M                                           #; (f:fpu) ft0  <-- 0.0
       0     3597        M 0x8000197c auipc   a0, 0x1                #; (wrb) a0  <-- 0x8000297c
                         M 0x80001974 fsub.d  ft0, fs2, ft0          #; fs2  = 0.0, ft0  = 0.0
       0     3600        M                                           #; (f:fpu) ft0  <-- 0.0
       0     3601        M 0x80001978 fmul.d  ft2, ft1, ft0          #; ft1  = 1000000.0000000, ft0  = 0.0
       0     3604        M                                           #; (f:fpu) ft2  <-- 0.0
       0     3606        M 0x80001980 addi    a0, a0, 1556           #; a0  = 0x8000297c, (wrb) a0  <-- 0x80002f90
       0     3609        M 0x80001984 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002f90]
       0     3610        M 0x80001988 fcvt.wu.d a0, ft2              #; ft2  = 0.0
       0     3612        M                                           #; (acc) gp  <-- 0xd21501d3
       0     3614        M 0x8000198c fcvt.d.wu ft3, a0              #; ac1  = 0
       0     3615        M                                           #; (f:fpu) ft3  <-- 0.0
       0     3618        M                                           #; (f:lsu) ft0  <-- 0.5
       0     3620        M 0x80001990 fsub.d  ft2, ft2, ft3          #; ft2  = 0.0, ft3  = 0.0
       0     3623        M                                           #; (f:fpu) ft2  <-- 0.0
       0     3624        M 0x80001994 fle.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
       0     3627        M 0x80001998 bnez    a1, pc + 32            #; a1  = 1, taken, goto 0x800019b8
       0     3642        M 0x800019b8 flt.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
       0     3644        M                                           #; (acc) s4  <-- 0x00059a63
       0     3645        M 0x800019bc bnez    a1, pc + 20            #; a1  = 1, taken, goto 0x800019d0
       0     3665        M 0x800019d4 beqz    s8, pc + 216           #; s8  = 6, not taken
                         M 0x800019d0 fcvt.d.w fs1, zero             #; ac1  = 0
       0     3666        M 0x800019d8 li      a2, 0                  #; (wrb) a2  <-- 0
                         M                                           #; (f:fpu) fs1  <-- 0.0
       0     3667        M 0x800019dc addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
       0     3676        M 0x800019e0 add     t1, a1, s0             #; a1  = 0x0011fe38, s0  = 0, (wrb) t1  <-- 0x0011fe38
       0     3677        M 0x800019e4 li      t0, 32                 #; (wrb) t0  <-- 32
       0     3678        M 0x800019e8 sub     a4, t0, s0             #; t0  = 32, s0  = 0, (wrb) a4  <-- 32
       0     3679        M 0x800019ec lui     a1, 0xccccd            #; (wrb) a1  <-- 0xccccd000
       0     3688        M 0x800019f0 addi    t2, a1, -819           #; a1  = 0xccccd000, (wrb) t2  <-- 0xcccccccd
       0     3689        M 0x800019f4 li      a6, 10                 #; (wrb) a6  <-- 10
       0     3690        M 0x800019f8 li      a7, 9                  #; (wrb) a7  <-- 9
       0     3691        M 0x800019fc beq     a4, a2, pc + 200       #; a4  = 32, a2  = 0, not taken
       0     3700        M 0x80001a00 mv      a1, a0                 #; a0  = 0, (wrb) a1  <-- 0
       0     3701        M 0x80001a04 mulhu   a0, a0, t2             #; a0  = 0, t2  = 0xcccccccd
       0     3704        M                                           #; (acc) a0  <-- 0x00355513
       0     3705        M 0x80001a08 srli    a0, a0, 3              #; a0  = 0, (wrb) a0  <-- 0
       0     3706        M 0x80001a0c mul     a3, a0, a6             #; a0  = 0, a6  = 10
       0     3712        M 0x80001a10 sub     a3, a1, a3             #; a1  = 0, a3  = 0, (wrb) a3  <-- 0
       0     3713        M 0x80001a14 ori     a3, a3, 48             #; a3  = 0, (wrb) a3  <-- 48
       0     3714        M 0x80001a18 add     a5, t1, a2             #; t1  = 0x0011fe38, a2  = 0, (wrb) a5  <-- 0x0011fe38
       0     3715        M 0x80001a1c sb      a3, 0(a5)              #; a5  = 0x0011fe38, 48 ~~> Byte[0x0011fe38]
       0     3724        M 0x80001a20 addi    a2, a2, 1              #; a2  = 0, (wrb) a2  <-- 1
       0     3725        M 0x80001a24 bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 0, not taken
       0     3726        M 0x80001a28 add     a0, s0, a2             #; s0  = 0, a2  = 1, (wrb) a0  <-- 1
       0     3727        M 0x80001a2c addi    a1, a0, -1             #; a0  = 1, (wrb) a1  <-- 0
       0     3738        M 0x80001a30 li      a3, 30                 #; (wrb) a3  <-- 30
       0     3739        M 0x80001a34 sltu    a3, a3, a1             #; a3  = 30, a1  = 0, (wrb) a3  <-- 0
       0     3740        M 0x80001a38 xor     a4, s8, a2             #; s8  = 6, a2  = 1, (wrb) a4  <-- 7
       0     3741        M 0x80001a3c seqz    a4, a4                 #; a4  = 7, (wrb) a4  <-- 0
       0     3750        M 0x80001a40 or      a3, a3, a4             #; a3  = 0, a4  = 0, (wrb) a3  <-- 0
       0     3751        M 0x80001a44 bnez    a3, pc + 136           #; a3  = 0, not taken
       0     3752        M 0x80001a48 addi    a0, sp, 8              #; sp  = 0x0011fe30, (wrb) a0  <-- 0x0011fe38
       0     3753        M 0x80001a4c add     a0, a0, s0             #; a0  = 0x0011fe38, s0  = 0, (wrb) a0  <-- 0x0011fe38
       0     3762        M 0x80001a50 not     a1, a2                 #; a2  = 1, (wrb) a1  <-- -2
       0     3763        M 0x80001a54 add     s8, a1, s8             #; a1  = -2, s8  = 6, (wrb) s8  <-- 4
       0     3764        M 0x80001a58 add     s0, s0, a2             #; s0  = 0, a2  = 1, (wrb) s0  <-- 1
       0     3765        M 0x80001a5c li      a1, 31                 #; (wrb) a1  <-- 31
       0     3774        M 0x80001a60 sub     a3, a1, s0             #; a1  = 31, s0  = 1, (wrb) a3  <-- 30
       0     3775        M 0x80001a64 add     a0, a0, a2             #; a0  = 0x0011fe38, a2  = 1, (wrb) a0  <-- 0x0011fe39
       0     3776        M 0x80001a68 mv      a1, s8                 #; s8  = 4, (wrb) a1  <-- 4
       0     3777        M 0x80001a6c bltu    s8, a3, pc + 8         #; s8  = 4, a3  = 30, taken, goto 0x80001a74
       0     3786        M 0x80001a74 addi    a2, a1, 1              #; a1  = 4, (wrb) a2  <-- 5
       0     3787        M 0x80001a78 li      a1, 48                 #; (wrb) a1  <-- 48
       0     3788        M 0x80001a7c auipc   ra, 0xfffff            #; (wrb) ra  <-- 0x80000a7c
       0     3798        M 0x80001a80 jalr    ra, ra, -1316          #; ra  = 0x80000a7c, (wrb) ra  <-- 0x80001a84, goto 0x80000558
       0     3821        M 0x80000558 li      t1, 15                 #; (wrb) t1  <-- 15
       0     3822        M 0x8000055c mv      a4, a0                 #; a0  = 0x0011fe39, (wrb) a4  <-- 0x0011fe39
       0     3833        M 0x80000560 bgeu    t1, a2, pc + 60        #; t1  = 15, a2  = 5, taken, goto 0x8000059c
       0     3856        M 0x8000059c sub     a3, t1, a2             #; t1  = 15, a2  = 5, (wrb) a3  <-- 10
       0     3868        M 0x800005a0 slli    a3, a3, 2              #; a3  = 10, (wrb) a3  <-- 40
       0     3869        M 0x800005a4 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800005a4
       0     3870        M 0x800005a8 add     a3, a3, t0             #; a3  = 40, t0  = 0x800005a4, (wrb) a3  <-- 0x800005cc
       0     3871        M 0x800005ac jalr    zero, a3, 12           #; a3  = 0x800005cc, goto 0x800005d8
       0     3891        M 0x800005d8 sb      a1, 4(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3d]
       0     3892        M 0x800005dc sb      a1, 3(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3c]
       0     3903        M 0x800005e0 sb      a1, 2(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3b]
       0     3904        M 0x800005e4 sb      a1, 1(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3a]
       0     3905        M 0x800005e8 sb      a1, 0(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe39]
       0     3906        M 0x800005ec ret                            #; ra  = 0x80001a84, goto 0x80001a84
       0     3917        M 0x80001a84 li      a0, 0                  #; (wrb) a0  <-- 0
       0     3918        M 0x80001a88 add     a1, s0, a0             #; s0  = 1, a0  = 0, (wrb) a1  <-- 1
       0     3919        M 0x80001a8c sltiu   a1, a1, 31             #; a1  = 1, (wrb) a1  <-- 1
       0     3920        M 0x80001a90 xor     a2, s8, a0             #; s8  = 4, a0  = 0, (wrb) a2  <-- 4
       0     3921        M 0x80001a94 snez    a2, a2                 #; a2  = 4, (wrb) a2  <-- 1
       0     3922        M 0x80001a98 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     3923        M 0x80001a9c addi    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0     3932        M 0x80001aa0 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001a88
       0     3933        M 0x80001a88 add     a1, s0, a0             #; s0  = 1, a0  = 1, (wrb) a1  <-- 2
       0     3934        M 0x80001a8c sltiu   a1, a1, 31             #; a1  = 2, (wrb) a1  <-- 1
       0     3935        M 0x80001a90 xor     a2, s8, a0             #; s8  = 4, a0  = 1, (wrb) a2  <-- 5
       0     3936        M 0x80001a94 snez    a2, a2                 #; a2  = 5, (wrb) a2  <-- 1
       0     3937        M 0x80001a98 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     3938        M 0x80001a9c addi    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 2
       0     3939        M 0x80001aa0 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001a88
       0     3940        M 0x80001a88 add     a1, s0, a0             #; s0  = 1, a0  = 2, (wrb) a1  <-- 3
       0     3941        M 0x80001a8c sltiu   a1, a1, 31             #; a1  = 3, (wrb) a1  <-- 1
       0     3942        M 0x80001a90 xor     a2, s8, a0             #; s8  = 4, a0  = 2, (wrb) a2  <-- 6
       0     3943        M 0x80001a94 snez    a2, a2                 #; a2  = 6, (wrb) a2  <-- 1
       0     3944        M 0x80001a98 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     3945        M 0x80001a9c addi    a0, a0, 1              #; a0  = 2, (wrb) a0  <-- 3
       0     3946        M 0x80001aa0 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001a88
       0     3947        M 0x80001a88 add     a1, s0, a0             #; s0  = 1, a0  = 3, (wrb) a1  <-- 4
       0     3948        M 0x80001a8c sltiu   a1, a1, 31             #; a1  = 4, (wrb) a1  <-- 1
       0     3949        M 0x80001a90 xor     a2, s8, a0             #; s8  = 4, a0  = 3, (wrb) a2  <-- 7
       0     3950        M 0x80001a94 snez    a2, a2                 #; a2  = 7, (wrb) a2  <-- 1
       0     3951        M 0x80001a98 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     3952        M 0x80001a9c addi    a0, a0, 1              #; a0  = 3, (wrb) a0  <-- 4
       0     3953        M 0x80001aa0 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001a88
       0     3954        M 0x80001a88 add     a1, s0, a0             #; s0  = 1, a0  = 4, (wrb) a1  <-- 5
       0     3955        M 0x80001a8c sltiu   a1, a1, 31             #; a1  = 5, (wrb) a1  <-- 1
       0     3956        M 0x80001a90 xor     a2, s8, a0             #; s8  = 4, a0  = 4, (wrb) a2  <-- 0
       0     3957        M 0x80001a94 snez    a2, a2                 #; a2  = 0, (wrb) a2  <-- 0
       0     3958        M 0x80001a98 and     a2, a1, a2             #; a1  = 1, a2  = 0, (wrb) a2  <-- 0
       0     3959        M 0x80001a9c addi    a0, a0, 1              #; a0  = 4, (wrb) a0  <-- 5
       0     3960        M 0x80001aa0 bnez    a2, pc - 24            #; a2  = 0, not taken
       0     3961        M 0x80001aa4 add     a0, s0, a0             #; s0  = 1, a0  = 5, (wrb) a0  <-- 6
       0     3962        M 0x80001aa8 j       pc + 0x28              #; goto 0x80001ad0
       0     3973        M 0x80001ad0 beqz    a1, pc + 28            #; a1  = 1, not taken
       0     3974        M 0x80001ad4 addi    s0, a0, 1              #; a0  = 6, (wrb) s0  <-- 7
       0     3975        M 0x80001ad8 addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
       0     3976        M 0x80001adc add     a0, a1, a0             #; a1  = 0x0011fe38, a0  = 6, (wrb) a0  <-- 0x0011fe3e
       0     3985        M 0x80001ae0 li      a1, 46                 #; (wrb) a1  <-- 46
       0     3986        M 0x80001ae4 sb      a1, 0(a0)              #; a0  = 0x0011fe3e, 46 ~~> Byte[0x0011fe3e]
       0     3987        M 0x80001ae8 j       pc + 0x8               #; goto 0x80001af0
       0     3997        M 0x80001af0 li      a0, 32                 #; (wrb) a0  <-- 32
       0     3998        M 0x80001af4 mv      t0, s0                 #; s0  = 7, (wrb) t0  <-- 7
       0     3999        M 0x80001af8 bltu    a0, s0, pc + 8         #; a0  = 32, s0  = 7, not taken
       0     4000        M 0x80001afc li      t0, 32                 #; (wrb) t0  <-- 32
       0     4010        M 0x80001b04 lui     a0, 0x66666            #; (wrb) a0  <-- 0x66666000
                         M 0x80001b00 flt.d   s9, fs0, fs1           #; fs0  = 0.0, fs1  = 0.0
       0     4011        M 0x80001b08 addi    a1, a0, 1639           #; a0  = 0x66666000, (wrb) a1  <-- 0x66666667
       0     4012        M 0x80001b0c li      a6, 10                 #; (wrb) a6  <-- 10
       0     4021        M 0x80001b10 addi    a3, sp, 8              #; sp  = 0x0011fe30, (wrb) a3  <-- 0x0011fe38
       0     4022        M 0x80001b14 li      a4, 18                 #; (wrb) a4  <-- 18
       0     4023        M 0x80001b18 beq     t0, s0, pc + 64        #; t0  = 32, s0  = 7, not taken
       0     4024        M 0x80001b1c mulh    a0, s1, a1             #; s1  = 0, a1  = 0x66666667
       0     4033        M 0x80001b20 srli    a5, a0, 31             #; a0  = 0, (wrb) a5  <-- 0
       0     4034        M 0x80001b24 srai    a0, a0, 2              #; a0  = 0, (wrb) a0  <-- 0
       0     4035        M 0x80001b28 add     a0, a0, a5             #; a0  = 0, a5  = 0, (wrb) a0  <-- 0
       0     4036        M 0x80001b2c mul     a5, a0, a6             #; a0  = 0, a6  = 10
       0     4045        M 0x80001b30 sub     a5, s1, a5             #; s1  = 0, a5  = 0, (wrb) a5  <-- 0
       0     4046        M 0x80001b34 addi    a5, a5, 48             #; a5  = 0, (wrb) a5  <-- 48
       0     4047        M 0x80001b38 addi    s8, s0, 1              #; s0  = 7, (wrb) s8  <-- 8
       0     4048        M 0x80001b3c add     s0, a3, s0             #; a3  = 0x0011fe38, s0  = 7, (wrb) s0  <-- 0x0011fe3f
       0     4057        M 0x80001b40 addi    a2, s1, 9              #; s1  = 0, (wrb) a2  <-- 9
       0     4058        M 0x80001b44 sb      a5, 0(s0)              #; s0  = 0x0011fe3f, 48 ~~> Byte[0x0011fe3f]
       0     4059        M 0x80001b48 mv      s0, s8                 #; s8  = 8, (wrb) s0  <-- 8
       0     4060        M 0x80001b4c mv      s1, a0                 #; a0  = 0, (wrb) s1  <-- 0
       0     4069        M 0x80001b50 bltu    a4, a2, pc - 56        #; a4  = 18, a2  = 9, not taken
       0     4070        M 0x80001b54 j       pc + 0x8               #; goto 0x80001b5c
       0     4071        M 0x80001b5c andi    s1, s5, 3              #; s5  = 0, (wrb) s1  <-- 0
       0     4083        M 0x80001b60 li      a0, 1                  #; (wrb) a0  <-- 1
       0     4084        M 0x80001b64 bne     s1, a0, pc + 108       #; s1  = 0, a0  = 1, taken, goto 0x80001bd0
       0     4106        M 0x80001bd0 li      a0, 31                 #; (wrb) a0  <-- 31
       0     4107        M 0x80001bd4 bltu    a0, s8, pc + 84        #; a0  = 31, s8  = 8, not taken
       0     4108        M 0x80001bd8 beqz    s9, pc + 24            #; s9  = 0, taken, goto 0x80001bf0
       0     4129        M 0x80001bf0 andi    a0, s5, 4              #; s5  = 0, (wrb) a0  <-- 0
       0     4130        M 0x80001bf4 bnez    a0, pc + 32            #; a0  = 0, not taken
       0     4131        M 0x80001bf8 andi    a0, s5, 8              #; s5  = 0, (wrb) a0  <-- 0
       0     4132        M 0x80001bfc beqz    a0, pc + 44            #; a0  = 0, taken, goto 0x80001c28
       0     4152        M 0x80001c28 snez    a0, s1                 #; s1  = 0, (wrb) a0  <-- 0
       0     4153        M 0x80001c2c sltu    a1, s8, s2             #; s8  = 8, s2  = 0, (wrb) a1  <-- 0
       0     4164        M 0x80001c30 xori    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
       0     4165        M 0x80001c34 or      a0, a0, a1             #; a0  = 0, a1  = 1, (wrb) a0  <-- 1
       0     4166        M 0x80001c38 andi    s5, s5, 2              #; s5  = 0, (wrb) s5  <-- 0
       0     4167        M 0x80001c3c mv      s0, s4                 #; s4  = 8, (wrb) s0  <-- 8
       0     4176        M 0x80001c40 bnez    a0, pc + 44            #; a0  = 1, taken, goto 0x80001c6c
       0     4199        M 0x80001c6c srli    s5, s5, 1              #; s5  = 0, (wrb) s5  <-- 0
       0     4211        M 0x80001c70 beqz    s8, pc + 56            #; s8  = 8, not taken
       0     4212        M 0x80001c74 addi    s9, sp, 7              #; sp  = 0x0011fe30, (wrb) s9  <-- 0x0011fe37
       0     4213        M 0x80001c78 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 8, (wrb) a0  <-- 0x0011fe3f
       0     4214        M 0x80001c7c lbu     a0, 0(a0)              #; a0  = 0x0011fe3f, a0  <~~ Byte[0x0011fe3f]
       0     4217        M                                           #; (lsu) a0  <-- 48
       0     4223        M 0x80001c80 addi    s10, s8, -1            #; s8  = 8, (wrb) s10 <-- 7
       0     4224        M 0x80001c84 addi    s1, s0, 1              #; s0  = 8, (wrb) s1  <-- 9
       0     4225        M 0x80001c88 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4226        M 0x80001c8c mv      a2, s0                 #; s0  = 8, (wrb) a2  <-- 8
       0     4235        M 0x80001c90 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4236        M 0x80001c94 jalr    s7                     #; s7  = 0x800015ac, (wrb) ra  <-- 0x80001c98, goto 0x800015ac
       0     4258        M 0x800015ac beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4270        M 0x800015b0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4271        M 0x800015b4 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4272        M 0x800015b8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4273        M 0x800015bc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800035bc
       0     4274        M 0x800015c0 addi    a3, a3, -1440          #; a3  = 0x800035bc, (wrb) a3  <-- 0x8000301c
       0     4275        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4276        M 0x800015c4 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000301c, (wrb) a1  <-- 0x8000301c
       0     4277        M 0x800015c8 lw      a4, 0(a1)              #; a1  = 0x8000301c, a4  <~~ Word[0x8000301c]
       0     4288        M                                           #; (lsu) a4  <-- 8
       0     4289        M 0x800015cc addi    a5, a4, 1              #; a4  = 8, (wrb) a5  <-- 9
       0     4290        M 0x800015d0 sw      a5, 0(a1)              #; a1  = 0x8000301c, 9 ~~> Word[0x8000301c]
       0     4291        M 0x800015d4 add     a4, a1, a4             #; a1  = 0x8000301c, a4  = 8, (wrb) a4  <-- 0x80003024
       0     4292        M 0x800015d8 sb      a0, 72(a4)             #; a4  = 0x80003024, 48 ~~> Byte[0x8000306c]
       0     4293        M 0x800015dc lw      a4, 0(a1)              #; a1  = 0x8000301c, a4  <~~ Word[0x8000301c]
       0     4314        M                                           #; (lsu) a4  <-- 9
       0     4315        M 0x800015e0 addi    a4, a4, -1020          #; a4  = 9, (wrb) a4  <-- -1011
       0     4316        M 0x800015e4 snez    a4, a4                 #; a4  = -1011, (wrb) a4  <-- 1
       0     4317        M 0x800015e8 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     4318        M 0x800015ec snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     4319        M 0x800015f0 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4320        M 0x800015f4 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001654
       0     4324        M 0x80001654 ret                            #; ra  = 0x80001c98, goto 0x80001c98
       0     4329        M 0x80001c98 mv      s0, s1                 #; s1  = 9, (wrb) s0  <-- 9
       0     4330        M 0x80001c9c mv      s8, s10                #; s10 = 7, (wrb) s8  <-- 7
       0     4332        M 0x80001ca0 bnez    s10, pc - 40           #; s10 = 7, taken, goto 0x80001c78
       0     4335        M 0x80001c78 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 7, (wrb) a0  <-- 0x0011fe3e
       0     4336        M 0x80001c7c lbu     a0, 0(a0)              #; a0  = 0x0011fe3e, a0  <~~ Byte[0x0011fe3e]
       0     4338        M 0x80001c80 addi    s10, s8, -1            #; s8  = 7, (wrb) s10 <-- 6
       0     4339        M 0x80001c84 addi    s1, s0, 1              #; s0  = 9, (wrb) s1  <-- 10
       0     4340        M 0x80001c88 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4341        M 0x80001c8c mv      a2, s0                 #; s0  = 9, (wrb) a2  <-- 9
       0     4342        M 0x80001c90 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4343        M 0x80001c94 jalr    s7                     #; s7  = 0x800015ac, (wrb) ra  <-- 0x80001c98, goto 0x800015ac
       0     4344        M                                           #; (lsu) a0  <-- 46
       0     4346        M 0x800015ac beqz    a0, pc + 168           #; a0  = 46, not taken
       0     4349        M 0x800015b0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4350        M 0x800015b4 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4351        M 0x800015b8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4352        M 0x800015bc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800035bc
       0     4353        M 0x800015c0 addi    a3, a3, -1440          #; a3  = 0x800035bc, (wrb) a3  <-- 0x8000301c
       0     4354        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4355        M 0x800015c4 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000301c, (wrb) a1  <-- 0x8000301c
       0     4356        M 0x800015c8 lw      a4, 0(a1)              #; a1  = 0x8000301c, a4  <~~ Word[0x8000301c]
       0     4367        M                                           #; (lsu) a4  <-- 9
       0     4368        M 0x800015cc addi    a5, a4, 1              #; a4  = 9, (wrb) a5  <-- 10
       0     4369        M 0x800015d0 sw      a5, 0(a1)              #; a1  = 0x8000301c, 10 ~~> Word[0x8000301c]
       0     4370        M 0x800015d4 add     a4, a1, a4             #; a1  = 0x8000301c, a4  = 9, (wrb) a4  <-- 0x80003025
       0     4371        M 0x800015d8 sb      a0, 72(a4)             #; a4  = 0x80003025, 46 ~~> Byte[0x8000306d]
       0     4372        M 0x800015dc lw      a4, 0(a1)              #; a1  = 0x8000301c, a4  <~~ Word[0x8000301c]
       0     4393        M                                           #; (lsu) a4  <-- 10
       0     4394        M 0x800015e0 addi    a4, a4, -1020          #; a4  = 10, (wrb) a4  <-- -1010
       0     4395        M 0x800015e4 snez    a4, a4                 #; a4  = -1010, (wrb) a4  <-- 1
       0     4396        M 0x800015e8 addi    a0, a0, -10            #; a0  = 46, (wrb) a0  <-- 36
       0     4397        M 0x800015ec snez    a0, a0                 #; a0  = 36, (wrb) a0  <-- 1
       0     4398        M 0x800015f0 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4399        M 0x800015f4 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001654
       0     4403        M 0x80001654 ret                            #; ra  = 0x80001c98, goto 0x80001c98
       0     4408        M 0x80001c98 mv      s0, s1                 #; s1  = 10, (wrb) s0  <-- 10
       0     4409        M 0x80001c9c mv      s8, s10                #; s10 = 6, (wrb) s8  <-- 6
       0     4411        M 0x80001ca0 bnez    s10, pc - 40           #; s10 = 6, taken, goto 0x80001c78
       0     4414        M 0x80001c78 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 6, (wrb) a0  <-- 0x0011fe3d
       0     4415        M 0x80001c7c lbu     a0, 0(a0)              #; a0  = 0x0011fe3d, a0  <~~ Byte[0x0011fe3d]
       0     4417        M 0x80001c80 addi    s10, s8, -1            #; s8  = 6, (wrb) s10 <-- 5
       0     4418        M 0x80001c84 addi    s1, s0, 1              #; s0  = 10, (wrb) s1  <-- 11
       0     4419        M 0x80001c88 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4420        M 0x80001c8c mv      a2, s0                 #; s0  = 10, (wrb) a2  <-- 10
       0     4421        M 0x80001c90 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4422        M 0x80001c94 jalr    s7                     #; s7  = 0x800015ac, (wrb) ra  <-- 0x80001c98, goto 0x800015ac
       0     4423        M                                           #; (lsu) a0  <-- 48
       0     4425        M 0x800015ac beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4428        M 0x800015b0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4429        M 0x800015b4 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4430        M 0x800015b8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4431        M 0x800015bc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800035bc
       0     4432        M 0x800015c0 addi    a3, a3, -1440          #; a3  = 0x800035bc, (wrb) a3  <-- 0x8000301c
       0     4433        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4434        M 0x800015c4 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000301c, (wrb) a1  <-- 0x8000301c
       0     4435        M 0x800015c8 lw      a4, 0(a1)              #; a1  = 0x8000301c, a4  <~~ Word[0x8000301c]
       0     4446        M                                           #; (lsu) a4  <-- 10
       0     4447        M 0x800015cc addi    a5, a4, 1              #; a4  = 10, (wrb) a5  <-- 11
       0     4448        M 0x800015d0 sw      a5, 0(a1)              #; a1  = 0x8000301c, 11 ~~> Word[0x8000301c]
       0     4449        M 0x800015d4 add     a4, a1, a4             #; a1  = 0x8000301c, a4  = 10, (wrb) a4  <-- 0x80003026
       0     4450        M 0x800015d8 sb      a0, 72(a4)             #; a4  = 0x80003026, 48 ~~> Byte[0x8000306e]
       0     4451        M 0x800015dc lw      a4, 0(a1)              #; a1  = 0x8000301c, a4  <~~ Word[0x8000301c]
       0     4472        M                                           #; (lsu) a4  <-- 11
       0     4473        M 0x800015e0 addi    a4, a4, -1020          #; a4  = 11, (wrb) a4  <-- -1009
       0     4474        M 0x800015e4 snez    a4, a4                 #; a4  = -1009, (wrb) a4  <-- 1
       0     4475        M 0x800015e8 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     4476        M 0x800015ec snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     4477        M 0x800015f0 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4478        M 0x800015f4 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001654
       0     4482        M 0x80001654 ret                            #; ra  = 0x80001c98, goto 0x80001c98
       0     4487        M 0x80001c98 mv      s0, s1                 #; s1  = 11, (wrb) s0  <-- 11
       0     4488        M 0x80001c9c mv      s8, s10                #; s10 = 5, (wrb) s8  <-- 5
       0     4490        M 0x80001ca0 bnez    s10, pc - 40           #; s10 = 5, taken, goto 0x80001c78
       0     4493        M 0x80001c78 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 5, (wrb) a0  <-- 0x0011fe3c
       0     4494        M 0x80001c7c lbu     a0, 0(a0)              #; a0  = 0x0011fe3c, a0  <~~ Byte[0x0011fe3c]
       0     4496        M 0x80001c80 addi    s10, s8, -1            #; s8  = 5, (wrb) s10 <-- 4
       0     4497        M 0x80001c84 addi    s1, s0, 1              #; s0  = 11, (wrb) s1  <-- 12
       0     4498        M 0x80001c88 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4499        M 0x80001c8c mv      a2, s0                 #; s0  = 11, (wrb) a2  <-- 11
       0     4500        M 0x80001c90 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4501        M 0x80001c94 jalr    s7                     #; s7  = 0x800015ac, (wrb) ra  <-- 0x80001c98, goto 0x800015ac
       0     4502        M                                           #; (lsu) a0  <-- 48
       0     4504        M 0x800015ac beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4507        M 0x800015b0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4508        M 0x800015b4 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4509        M 0x800015b8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4510        M 0x800015bc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800035bc
       0     4511        M 0x800015c0 addi    a3, a3, -1440          #; a3  = 0x800035bc, (wrb) a3  <-- 0x8000301c
       0     4512        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4513        M 0x800015c4 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000301c, (wrb) a1  <-- 0x8000301c
       0     4514        M 0x800015c8 lw      a4, 0(a1)              #; a1  = 0x8000301c, a4  <~~ Word[0x8000301c]
       0     4525        M                                           #; (lsu) a4  <-- 11
       0     4526        M 0x800015cc addi    a5, a4, 1              #; a4  = 11, (wrb) a5  <-- 12
       0     4527        M 0x800015d0 sw      a5, 0(a1)              #; a1  = 0x8000301c, 12 ~~> Word[0x8000301c]
       0     4528        M 0x800015d4 add     a4, a1, a4             #; a1  = 0x8000301c, a4  = 11, (wrb) a4  <-- 0x80003027
       0     4529        M 0x800015d8 sb      a0, 72(a4)             #; a4  = 0x80003027, 48 ~~> Byte[0x8000306f]
       0     4530        M 0x800015dc lw      a4, 0(a1)              #; a1  = 0x8000301c, a4  <~~ Word[0x8000301c]
       0     4551        M                                           #; (lsu) a4  <-- 12
       0     4552        M 0x800015e0 addi    a4, a4, -1020          #; a4  = 12, (wrb) a4  <-- -1008
       0     4553        M 0x800015e4 snez    a4, a4                 #; a4  = -1008, (wrb) a4  <-- 1
       0     4554        M 0x800015e8 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     4555        M 0x800015ec snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     4556        M 0x800015f0 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4557        M 0x800015f4 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001654
       0     4561        M 0x80001654 ret                            #; ra  = 0x80001c98, goto 0x80001c98
       0     4566        M 0x80001c98 mv      s0, s1                 #; s1  = 12, (wrb) s0  <-- 12
       0     4567        M 0x80001c9c mv      s8, s10                #; s10 = 4, (wrb) s8  <-- 4
       0     4569        M 0x80001ca0 bnez    s10, pc - 40           #; s10 = 4, taken, goto 0x80001c78
       0     4572        M 0x80001c78 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 4, (wrb) a0  <-- 0x0011fe3b
       0     4573        M 0x80001c7c lbu     a0, 0(a0)              #; a0  = 0x0011fe3b, a0  <~~ Byte[0x0011fe3b]
       0     4575        M 0x80001c80 addi    s10, s8, -1            #; s8  = 4, (wrb) s10 <-- 3
       0     4576        M 0x80001c84 addi    s1, s0, 1              #; s0  = 12, (wrb) s1  <-- 13
       0     4577        M 0x80001c88 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4578        M 0x80001c8c mv      a2, s0                 #; s0  = 12, (wrb) a2  <-- 12
       0     4579        M 0x80001c90 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4580        M 0x80001c94 jalr    s7                     #; s7  = 0x800015ac, (wrb) ra  <-- 0x80001c98, goto 0x800015ac
       0     4581        M                                           #; (lsu) a0  <-- 48
       0     4583        M 0x800015ac beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4586        M 0x800015b0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4587        M 0x800015b4 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4588        M 0x800015b8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4589        M 0x800015bc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800035bc
       0     4590        M 0x800015c0 addi    a3, a3, -1440          #; a3  = 0x800035bc, (wrb) a3  <-- 0x8000301c
       0     4591        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4592        M 0x800015c4 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000301c, (wrb) a1  <-- 0x8000301c
       0     4593        M 0x800015c8 lw      a4, 0(a1)              #; a1  = 0x8000301c, a4  <~~ Word[0x8000301c]
       0     4604        M                                           #; (lsu) a4  <-- 12
       0     4605        M 0x800015cc addi    a5, a4, 1              #; a4  = 12, (wrb) a5  <-- 13
       0     4606        M 0x800015d0 sw      a5, 0(a1)              #; a1  = 0x8000301c, 13 ~~> Word[0x8000301c]
       0     4607        M 0x800015d4 add     a4, a1, a4             #; a1  = 0x8000301c, a4  = 12, (wrb) a4  <-- 0x80003028
       0     4608        M 0x800015d8 sb      a0, 72(a4)             #; a4  = 0x80003028, 48 ~~> Byte[0x80003070]
       0     4609        M 0x800015dc lw      a4, 0(a1)              #; a1  = 0x8000301c, a4  <~~ Word[0x8000301c]
       0     4630        M                                           #; (lsu) a4  <-- 13
       0     4631        M 0x800015e0 addi    a4, a4, -1020          #; a4  = 13, (wrb) a4  <-- -1007
       0     4632        M 0x800015e4 snez    a4, a4                 #; a4  = -1007, (wrb) a4  <-- 1
       0     4633        M 0x800015e8 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     4634        M 0x800015ec snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     4635        M 0x800015f0 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4636        M 0x800015f4 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001654
       0     4640        M 0x80001654 ret                            #; ra  = 0x80001c98, goto 0x80001c98
       0     4645        M 0x80001c98 mv      s0, s1                 #; s1  = 13, (wrb) s0  <-- 13
       0     4646        M 0x80001c9c mv      s8, s10                #; s10 = 3, (wrb) s8  <-- 3
       0     4648        M 0x80001ca0 bnez    s10, pc - 40           #; s10 = 3, taken, goto 0x80001c78
       0     4651        M 0x80001c78 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 3, (wrb) a0  <-- 0x0011fe3a
       0     4652        M 0x80001c7c lbu     a0, 0(a0)              #; a0  = 0x0011fe3a, a0  <~~ Byte[0x0011fe3a]
       0     4654        M 0x80001c80 addi    s10, s8, -1            #; s8  = 3, (wrb) s10 <-- 2
       0     4655        M 0x80001c84 addi    s1, s0, 1              #; s0  = 13, (wrb) s1  <-- 14
       0     4656        M 0x80001c88 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4657        M 0x80001c8c mv      a2, s0                 #; s0  = 13, (wrb) a2  <-- 13
       0     4658        M 0x80001c90 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4659        M 0x80001c94 jalr    s7                     #; s7  = 0x800015ac, (wrb) ra  <-- 0x80001c98, goto 0x800015ac
       0     4660        M                                           #; (lsu) a0  <-- 48
       0     4662        M 0x800015ac beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4665        M 0x800015b0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4666        M 0x800015b4 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4667        M 0x800015b8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4668        M 0x800015bc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800035bc
       0     4669        M 0x800015c0 addi    a3, a3, -1440          #; a3  = 0x800035bc, (wrb) a3  <-- 0x8000301c
       0     4670        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4671        M 0x800015c4 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000301c, (wrb) a1  <-- 0x8000301c
       0     4672        M 0x800015c8 lw      a4, 0(a1)              #; a1  = 0x8000301c, a4  <~~ Word[0x8000301c]
       0     4683        M                                           #; (lsu) a4  <-- 13
       0     4684        M 0x800015cc addi    a5, a4, 1              #; a4  = 13, (wrb) a5  <-- 14
       0     4685        M 0x800015d0 sw      a5, 0(a1)              #; a1  = 0x8000301c, 14 ~~> Word[0x8000301c]
       0     4686        M 0x800015d4 add     a4, a1, a4             #; a1  = 0x8000301c, a4  = 13, (wrb) a4  <-- 0x80003029
       0     4687        M 0x800015d8 sb      a0, 72(a4)             #; a4  = 0x80003029, 48 ~~> Byte[0x80003071]
       0     4688        M 0x800015dc lw      a4, 0(a1)              #; a1  = 0x8000301c, a4  <~~ Word[0x8000301c]
       0     4709        M                                           #; (lsu) a4  <-- 14
       0     4710        M 0x800015e0 addi    a4, a4, -1020          #; a4  = 14, (wrb) a4  <-- -1006
       0     4711        M 0x800015e4 snez    a4, a4                 #; a4  = -1006, (wrb) a4  <-- 1
       0     4712        M 0x800015e8 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     4713        M 0x800015ec snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     4714        M 0x800015f0 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4715        M 0x800015f4 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001654
       0     4719        M 0x80001654 ret                            #; ra  = 0x80001c98, goto 0x80001c98
       0     4724        M 0x80001c98 mv      s0, s1                 #; s1  = 14, (wrb) s0  <-- 14
       0     4725        M 0x80001c9c mv      s8, s10                #; s10 = 2, (wrb) s8  <-- 2
       0     4727        M 0x80001ca0 bnez    s10, pc - 40           #; s10 = 2, taken, goto 0x80001c78
       0     4730        M 0x80001c78 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 2, (wrb) a0  <-- 0x0011fe39
       0     4731        M 0x80001c7c lbu     a0, 0(a0)              #; a0  = 0x0011fe39, a0  <~~ Byte[0x0011fe39]
       0     4733        M 0x80001c80 addi    s10, s8, -1            #; s8  = 2, (wrb) s10 <-- 1
       0     4734        M 0x80001c84 addi    s1, s0, 1              #; s0  = 14, (wrb) s1  <-- 15
       0     4735        M 0x80001c88 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4736        M 0x80001c8c mv      a2, s0                 #; s0  = 14, (wrb) a2  <-- 14
       0     4737        M 0x80001c90 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4738        M 0x80001c94 jalr    s7                     #; s7  = 0x800015ac, (wrb) ra  <-- 0x80001c98, goto 0x800015ac
       0     4739        M                                           #; (lsu) a0  <-- 48
       0     4741        M 0x800015ac beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4744        M 0x800015b0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4745        M 0x800015b4 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4746        M 0x800015b8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4747        M 0x800015bc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800035bc
       0     4748        M 0x800015c0 addi    a3, a3, -1440          #; a3  = 0x800035bc, (wrb) a3  <-- 0x8000301c
       0     4749        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4750        M 0x800015c4 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000301c, (wrb) a1  <-- 0x8000301c
       0     4751        M 0x800015c8 lw      a4, 0(a1)              #; a1  = 0x8000301c, a4  <~~ Word[0x8000301c]
       0     4762        M                                           #; (lsu) a4  <-- 14
       0     4763        M 0x800015cc addi    a5, a4, 1              #; a4  = 14, (wrb) a5  <-- 15
       0     4764        M 0x800015d0 sw      a5, 0(a1)              #; a1  = 0x8000301c, 15 ~~> Word[0x8000301c]
       0     4765        M 0x800015d4 add     a4, a1, a4             #; a1  = 0x8000301c, a4  = 14, (wrb) a4  <-- 0x8000302a
       0     4766        M 0x800015d8 sb      a0, 72(a4)             #; a4  = 0x8000302a, 48 ~~> Byte[0x80003072]
       0     4767        M 0x800015dc lw      a4, 0(a1)              #; a1  = 0x8000301c, a4  <~~ Word[0x8000301c]
       0     4788        M                                           #; (lsu) a4  <-- 15
       0     4789        M 0x800015e0 addi    a4, a4, -1020          #; a4  = 15, (wrb) a4  <-- -1005
       0     4790        M 0x800015e4 snez    a4, a4                 #; a4  = -1005, (wrb) a4  <-- 1
       0     4791        M 0x800015e8 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     4792        M 0x800015ec snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     4793        M 0x800015f0 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4794        M 0x800015f4 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001654
       0     4798        M 0x80001654 ret                            #; ra  = 0x80001c98, goto 0x80001c98
       0     4803        M 0x80001c98 mv      s0, s1                 #; s1  = 15, (wrb) s0  <-- 15
       0     4804        M 0x80001c9c mv      s8, s10                #; s10 = 1, (wrb) s8  <-- 1
       0     4806        M 0x80001ca0 bnez    s10, pc - 40           #; s10 = 1, taken, goto 0x80001c78
       0     4809        M 0x80001c78 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 1, (wrb) a0  <-- 0x0011fe38
       0     4810        M 0x80001c7c lbu     a0, 0(a0)              #; a0  = 0x0011fe38, a0  <~~ Byte[0x0011fe38]
       0     4812        M 0x80001c80 addi    s10, s8, -1            #; s8  = 1, (wrb) s10 <-- 0
       0     4813        M 0x80001c84 addi    s1, s0, 1              #; s0  = 15, (wrb) s1  <-- 16
       0     4814        M 0x80001c88 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4815        M 0x80001c8c mv      a2, s0                 #; s0  = 15, (wrb) a2  <-- 15
       0     4816        M 0x80001c90 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4817        M 0x80001c94 jalr    s7                     #; s7  = 0x800015ac, (wrb) ra  <-- 0x80001c98, goto 0x800015ac
       0     4818        M                                           #; (lsu) a0  <-- 48
       0     4820        M 0x800015ac beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4823        M 0x800015b0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4824        M 0x800015b4 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4825        M 0x800015b8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4826        M 0x800015bc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800035bc
       0     4827        M 0x800015c0 addi    a3, a3, -1440          #; a3  = 0x800035bc, (wrb) a3  <-- 0x8000301c
       0     4828        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4829        M 0x800015c4 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000301c, (wrb) a1  <-- 0x8000301c
       0     4830        M 0x800015c8 lw      a4, 0(a1)              #; a1  = 0x8000301c, a4  <~~ Word[0x8000301c]
       0     4841        M                                           #; (lsu) a4  <-- 15
       0     4842        M 0x800015cc addi    a5, a4, 1              #; a4  = 15, (wrb) a5  <-- 16
       0     4843        M 0x800015d0 sw      a5, 0(a1)              #; a1  = 0x8000301c, 16 ~~> Word[0x8000301c]
       0     4844        M 0x800015d4 add     a4, a1, a4             #; a1  = 0x8000301c, a4  = 15, (wrb) a4  <-- 0x8000302b
       0     4845        M 0x800015d8 sb      a0, 72(a4)             #; a4  = 0x8000302b, 48 ~~> Byte[0x80003073]
       0     4846        M 0x800015dc lw      a4, 0(a1)              #; a1  = 0x8000301c, a4  <~~ Word[0x8000301c]
       0     4867        M                                           #; (lsu) a4  <-- 16
       0     4868        M 0x800015e0 addi    a4, a4, -1020          #; a4  = 16, (wrb) a4  <-- -1004
       0     4869        M 0x800015e4 snez    a4, a4                 #; a4  = -1004, (wrb) a4  <-- 1
       0     4870        M 0x800015e8 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     4871        M 0x800015ec snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     4872        M 0x800015f0 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4873        M 0x800015f4 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001654
       0     4877        M 0x80001654 ret                            #; ra  = 0x80001c98, goto 0x80001c98
       0     4882        M 0x80001c98 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
       0     4883        M 0x80001c9c mv      s8, s10                #; s10 = 0, (wrb) s8  <-- 0
       0     4885        M 0x80001ca0 bnez    s10, pc - 40           #; s10 = 0, not taken
       0     4886        M 0x80001ca4 j       pc + 0x8               #; goto 0x80001cac
       0     4887        M 0x80001cac sub     a0, s1, s4             #; s1  = 16, s4  = 8, (wrb) a0  <-- 8
       0     4899        M 0x80001cb0 sltu    a0, a0, s2             #; a0  = 8, s2  = 0, (wrb) a0  <-- 0
       0     4900        M 0x80001cb4 xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0     4901        M 0x80001cb8 xori    a1, s5, 1              #; s5  = 0, (wrb) a1  <-- 1
       0     4902        M 0x80001cbc or      a0, a1, a0             #; a1  = 1, a0  = 1, (wrb) a0  <-- 1
       0     4911        M 0x80001cc0 bnez    a0, pc + 48            #; a0  = 1, taken, goto 0x80001cf0
       0     4934        M 0x80001cf0 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
       0     4935        M 0x80001cf4 mv      a0, s0                 #; s0  = 16, (wrb) a0  <-- 16
       0     4938        M 0x80001cf8 fld     fs2, 40(sp)            #; fs2  <~~ Doub[0x0011fe58]
       0     4939        M 0x80001cfc fld     fs1, 48(sp)            #; fs1  <~~ Doub[0x0011fe60], (f:lsu) fs2  <-- 0.0
       0     4940        M                                           #; (f:lsu) fs1  <-- 0.0
       0     4947        M 0x80001d04 lw      s10, 64(sp)            #; sp  = 0x0011fe30, s10 <~~ Word[0x0011fe70]
       0     4948        M 0x80001d00 fld     fs0, 56(sp)            #; fs0  <~~ Doub[0x0011fe68]
       0     4949        M                                           #; (f:lsu) fs0  <-- 0.0
       0     4951        M                                           #; (lsu) s10 <-- 0x80002c9e
       0     4952        M 0x80001d08 lw      s9, 68(sp)             #; sp  = 0x0011fe30, s9  <~~ Word[0x0011fe74]
       0     4955        M                                           #; (lsu) s9  <-- 8
       0     4956        M 0x80001d0c lw      s8, 72(sp)             #; sp  = 0x0011fe30, s8  <~~ Word[0x0011fe78]
       0     4959        M                                           #; (lsu) s8  <-- 16
       0     4960        M 0x80001d10 lw      s7, 76(sp)             #; sp  = 0x0011fe30, s7  <~~ Word[0x0011fe7c]
       0     4963        M                                           #; (lsu) s7  <-- 0
       0     4964        M 0x80001d14 lw      s6, 80(sp)             #; sp  = 0x0011fe30, s6  <~~ Word[0x0011fe80]
       0     4967        M                                           #; (lsu) s6  <-- 0
       0     4968        M 0x80001d18 lw      s5, 84(sp)             #; sp  = 0x0011fe30, s5  <~~ Word[0x0011fe84]
       0     4971        M                                           #; (lsu) s5  <-- -1
       0     4972        M 0x80001d1c lw      s4, 88(sp)             #; sp  = 0x0011fe30, s4  <~~ Word[0x0011fe88]
       0     4975        M                                           #; (lsu) s4  <-- 0x0011ff17
       0     4976        M 0x80001d20 lw      s3, 92(sp)             #; sp  = 0x0011fe30, s3  <~~ Word[0x0011fe8c]
       0     4979        M                                           #; (lsu) s3  <-- 0x0011ff30
       0     4980        M 0x80001d24 lw      s2, 96(sp)             #; sp  = 0x0011fe30, s2  <~~ Word[0x0011fe90]
       0     4983        M                                           #; (lsu) s2  <-- 0x800015ac
       0     4984        M 0x80001d28 lw      s1, 100(sp)            #; sp  = 0x0011fe30, s1  <~~ Word[0x0011fe94]
       0     4987        M                                           #; (lsu) s1  <-- 8
       0     4988        M 0x80001d2c lw      s0, 104(sp)            #; sp  = 0x0011fe30, s0  <~~ Word[0x0011fe98]
       0     4991        M                                           #; (lsu) s0  <-- 0
       0     4992        M 0x80001d30 lw      ra, 108(sp)            #; sp  = 0x0011fe30, ra  <~~ Word[0x0011fe9c]
       0     4993        M 0x80001d34 addi    sp, sp, 112            #; sp  = 0x0011fe30, (wrb) sp  <-- 0x0011fea0
       0     4995        M                                           #; (lsu) ra  <-- 0x80000cdc
       0     4996        M 0x80001d38 ret                            #; ra  = 0x80000cdc, goto 0x80000cdc
       0     5013        M 0x80000cdc j       pc + 0x7c0             #; goto 0x8000149c
       0     5016        M 0x8000149c mv      s8, a0                 #; a0  = 16, (wrb) s8  <-- 16
       0     5028        M 0x800014a0 li      s6, 37                 #; (wrb) s6  <-- 37
       0     5029        M 0x800014a4 li      s7, 46                 #; (wrb) s7  <-- 46
       0     5030        M 0x800014a8 addi    s0, s10, 1             #; s10 = 0x80002c9e, (wrb) s0  <-- 0x80002c9f
       0     5031        M 0x800014ac j       pc - 0xa74             #; goto 0x80000a38
       0     5040        M 0x80000a38 addi    s10, s0, 2             #; s0  = 0x80002c9f, (wrb) s10 <-- 0x80002ca1
       0     5041        M 0x80000a3c mv      s9, s8                 #; s8  = 16, (wrb) s9  <-- 16
       0     5052        M 0x80000a40 li      s8, 10                 #; (wrb) s8  <-- 10
       0     5053        M 0x80000a44 lbu     a0, 0(s0)              #; s0  = 0x80002c9f, a0  <~~ Byte[0x80002c9f]
       0     5064        M                                           #; (lsu) a0  <-- 10
       0     5065        M 0x80000a48 beqz    a0, pc + 2824          #; a0  = 10, not taken
       0     5066        M 0x80000a4c beq     a0, s6, pc + 48        #; a0  = 10, s6  = 37, not taken
       0     5067        M 0x80000a50 addi    s1, s9, 1              #; s9  = 16, (wrb) s1  <-- 17
       0     5068        M 0x80000a54 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5069        M 0x80000a58 mv      a2, s9                 #; s9  = 16, (wrb) a2  <-- 16
       0     5070        M 0x80000a5c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5079        M 0x80000a60 jalr    s2                     #; s2  = 0x800015ac, (wrb) ra  <-- 0x80000a64, goto 0x800015ac
       0     5093        M 0x800015ac beqz    a0, pc + 168           #; a0  = 10, not taken
       0     5096        M 0x800015b0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5097        M 0x800015b4 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5098        M 0x800015b8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5099        M 0x800015bc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800035bc
       0     5100        M 0x800015c0 addi    a3, a3, -1440          #; a3  = 0x800035bc, (wrb) a3  <-- 0x8000301c
       0     5101        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5102        M 0x800015c4 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000301c, (wrb) a1  <-- 0x8000301c
       0     5103        M 0x800015c8 lw      a4, 0(a1)              #; a1  = 0x8000301c, a4  <~~ Word[0x8000301c]
       0     5114        M                                           #; (lsu) a4  <-- 16
       0     5115        M 0x800015cc addi    a5, a4, 1              #; a4  = 16, (wrb) a5  <-- 17
       0     5116        M 0x800015d0 sw      a5, 0(a1)              #; a1  = 0x8000301c, 17 ~~> Word[0x8000301c]
       0     5117        M 0x800015d4 add     a4, a1, a4             #; a1  = 0x8000301c, a4  = 16, (wrb) a4  <-- 0x8000302c
       0     5118        M 0x800015d8 sb      a0, 72(a4)             #; a4  = 0x8000302c, 10 ~~> Byte[0x80003074]
       0     5119        M 0x800015dc lw      a4, 0(a1)              #; a1  = 0x8000301c, a4  <~~ Word[0x8000301c]
       0     5140        M                                           #; (lsu) a4  <-- 17
       0     5141        M 0x800015e0 addi    a4, a4, -1020          #; a4  = 17, (wrb) a4  <-- -1003
       0     5142        M 0x800015e4 snez    a4, a4                 #; a4  = -1003, (wrb) a4  <-- 1
       0     5143        M 0x800015e8 addi    a0, a0, -10            #; a0  = 10, (wrb) a0  <-- 0
       0     5144        M 0x800015ec snez    a0, a0                 #; a0  = 0, (wrb) a0  <-- 0
       0     5145        M 0x800015f0 and     a0, a0, a4             #; a0  = 0, a4  = 1, (wrb) a0  <-- 0
       0     5146        M 0x800015f4 bnez    a0, pc + 96            #; a0  = 0, not taken
       0     5147        M 0x800015f8 add     a0, a3, a2             #; a3  = 0x8000301c, a2  = 0, (wrb) a0  <-- 0x8000301c
       0     5148        M 0x800015fc addi    a2, a0, 72             #; a0  = 0x8000301c, (wrb) a2  <-- 0x80003064
       0     5149        M 0x80001600 sw      zero, 12(a0)           #; a0  = 0x8000301c, 0 ~~> Word[0x80003028]
       0     5150        M 0x80001604 li      a3, 64                 #; (wrb) a3  <-- 64
       0     5151        M 0x80001608 sw      a3, 8(a0)              #; a0  = 0x8000301c, 64 ~~> Word[0x80003024]
       0     5152        M 0x8000160c sw      zero, 20(a0)           #; a0  = 0x8000301c, 0 ~~> Word[0x80003030]
       0     5161        M 0x80001610 li      a3, 1                  #; (wrb) a3  <-- 1
       0     5162        M 0x80001614 sw      a3, 16(a0)             #; a0  = 0x8000301c, 1 ~~> Word[0x8000302c]
       0     5163        M 0x80001618 sw      zero, 28(a0)           #; a0  = 0x8000301c, 0 ~~> Word[0x80003038]
       0     5165        M 0x8000161c sw      a2, 24(a0)             #; a0  = 0x8000301c, 0x80003064 ~~> Word[0x80003034]
       0     5175        M 0x80001620 lw      a2, 0(a1)              #; a1  = 0x8000301c, a2  <~~ Word[0x8000301c]
       0     5176        M 0x80001624 addi    a3, a0, 8              #; a0  = 0x8000301c, (wrb) a3  <-- 0x80003024
       0     5177        M 0x80001628 sw      zero, 36(a0)           #; a0  = 0x8000301c, 0 ~~> Word[0x80003040]
       0     5197        M                                           #; (lsu) a2  <-- 17
       0     5198        M 0x8000162c sw      a2, 32(a0)             #; a0  = 0x8000301c, 17 ~~> Word[0x8000303c]
       0     5199        M 0x80001630 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003630
       0     5200        M 0x80001634 addi    a0, a0, -1904          #; a0  = 0x80003630, (wrb) a0  <-- 0x80002ec0
       0     5201        M 0x80001638 sw      a3, 0(a0)              #; a0  = 0x80002ec0, 0x80003024 ~~> Word[0x80002ec0]
       0     5202        M 0x8000163c auipc   a0, 0x2                #; (wrb) a0  <-- 0x8000363c
       0     5211        M 0x80001640 addi    a0, a0, -1852          #; a0  = 0x8000363c, (wrb) a0  <-- 0x80002f00
       0     5212        M 0x80001644 lw      a2, 0(a0)              #; a0  = 0x80002f00, a2  <~~ Word[0x80002f00]
       0     5227        M                                           #; (lsu) a2  <-- 0
       0     5228        M 0x80001648 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001644
       0     5229        M 0x80001644 lw      a2, 0(a0)              #; a0  = 0x80002f00, a2  <~~ Word[0x80002f00]
       0     5240        M                                           #; (lsu) a2  <-- 0
       0     5241        M 0x80001648 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001644
       0     5242        M 0x80001644 lw      a2, 0(a0)              #; a0  = 0x80002f00, a2  <~~ Word[0x80002f00]
       0     5253        M                                           #; (lsu) a2  <-- 0
       0     5254        M 0x80001648 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001644
       0     5255        M 0x80001644 lw      a2, 0(a0)              #; a0  = 0x80002f00, a2  <~~ Word[0x80002f00]
       0     5266        M                                           #; (lsu) a2  <-- 0
       0     5267        M 0x80001648 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001644
       0     5268        M 0x80001644 lw      a2, 0(a0)              #; a0  = 0x80002f00, a2  <~~ Word[0x80002f00]
       0     5279        M                                           #; (lsu) a2  <-- 0
       0     5280        M 0x80001648 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001644
       0     5281        M 0x80001644 lw      a2, 0(a0)              #; a0  = 0x80002f00, a2  <~~ Word[0x80002f00]
       0     5292        M                                           #; (lsu) a2  <-- 0
       0     5293        M 0x80001648 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001644
       0     5294        M 0x80001644 lw      a2, 0(a0)              #; a0  = 0x80002f00, a2  <~~ Word[0x80002f00]
       0     5305        M                                           #; (lsu) a2  <-- 1
       0     5306        M 0x80001648 beqz    a2, pc - 4             #; a2  = 1, not taken
       0     5307        M 0x8000164c sw      zero, 0(a0)            #; a0  = 0x80002f00, 0 ~~> Word[0x80002f00]
       0     5310        M 0x80001650 sw      zero, 0(a1)            #; a1  = 0x8000301c, 0 ~~> Word[0x8000301c]
       0     5311        M 0x80001654 ret                            #; ra  = 0x80000a64, goto 0x80000a64
       0     5315        M 0x80000a64 addi    s0, s0, 1              #; s0  = 0x80002c9f, (wrb) s0  <-- 0x80002ca0
       0     5316        M 0x80000a68 addi    s10, s10, 1            #; s10 = 0x80002ca1, (wrb) s10 <-- 0x80002ca2
       0     5317        M 0x80000a6c mv      s9, s1                 #; s1  = 17, (wrb) s9  <-- 17
       0     5318        M 0x80000a70 lbu     a0, 0(s0)              #; s0  = 0x80002ca0, a0  <~~ Byte[0x80002ca0]
       0     5331        M                                           #; (lsu) a0  <-- 0
       0     5332        M 0x80000a74 bnez    a0, pc - 40            #; a0  = 0, not taken
       0     5333        M 0x80000a78 j       pc + 0xad8             #; goto 0x80001550
       0     5345        M 0x80001550 mv      a2, s9                 #; s9  = 17, (wrb) a2  <-- 17
       0     5346        M 0x80001554 bltu    s9, s5, pc + 8         #; s9  = 17, s5  = -1, taken, goto 0x8000155c
       0     5347        M 0x8000155c li      a0, 0                  #; (wrb) a0  <-- 0
       0     5357        M 0x80001560 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5358        M 0x80001564 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5359        M 0x80001568 jalr    s2                     #; s2  = 0x800015ac, (wrb) ra  <-- 0x8000156c, goto 0x800015ac
       0     5371        M 0x800015ac beqz    a0, pc + 168           #; a0  = 0, taken, goto 0x80001654
       0     5376        M 0x80001654 ret                            #; ra  = 0x8000156c, goto 0x8000156c
       0     5377        M 0x8000156c mv      a0, s9                 #; s9  = 17, (wrb) a0  <-- 17
       0     5378        M 0x80001570 lw      s11, 60(sp)            #; sp  = 0x0011fea0, s11 <~~ Word[0x0011fedc]
       0     5381        M                                           #; (lsu) s11 <-- 0
       0     5382        M 0x80001574 lw      s10, 64(sp)            #; sp  = 0x0011fea0, s10 <~~ Word[0x0011fee0]
       0     5385        M                                           #; (lsu) s10 <-- 0
       0     5386        M 0x80001578 lw      s9, 68(sp)             #; sp  = 0x0011fea0, s9  <~~ Word[0x0011fee4]
       0     5389        M                                           #; (lsu) s9  <-- 0
       0     5390        M 0x8000157c lw      s8, 72(sp)             #; sp  = 0x0011fea0, s8  <~~ Word[0x0011fee8]
       0     5393        M                                           #; (lsu) s8  <-- 0
       0     5394        M 0x80001580 lw      s7, 76(sp)             #; sp  = 0x0011fea0, s7  <~~ Word[0x0011feec]
       0     5397        M                                           #; (lsu) s7  <-- 0
       0     5398        M 0x80001584 lw      s6, 80(sp)             #; sp  = 0x0011fea0, s6  <~~ Word[0x0011fef0]
       0     5401        M                                           #; (lsu) s6  <-- 0
       0     5402        M 0x80001588 lw      s5, 84(sp)             #; sp  = 0x0011fea0, s5  <~~ Word[0x0011fef4]
       0     5405        M                                           #; (lsu) s5  <-- 0
       0     5406        M 0x8000158c lw      s4, 88(sp)             #; sp  = 0x0011fea0, s4  <~~ Word[0x0011fef8]
       0     5409        M                                           #; (lsu) s4  <-- 0
       0     5410        M 0x80001590 lw      s3, 92(sp)             #; sp  = 0x0011fea0, s3  <~~ Word[0x0011fefc]
       0     5413        M                                           #; (lsu) s3  <-- 0
       0     5414        M 0x80001594 lw      s2, 96(sp)             #; sp  = 0x0011fea0, s2  <~~ Word[0x0011ff00]
       0     5417        M                                           #; (lsu) s2  <-- 0
       0     5418        M 0x80001598 lw      s1, 100(sp)            #; sp  = 0x0011fea0, s1  <~~ Word[0x0011ff04]
       0     5421        M                                           #; (lsu) s1  <-- 0
       0     5422        M 0x8000159c lw      s0, 104(sp)            #; sp  = 0x0011fea0, s0  <~~ Word[0x0011ff08]
       0     5425        M                                           #; (lsu) s0  <-- 0x00100000
       0     5426        M 0x800015a0 lw      ra, 108(sp)            #; sp  = 0x0011fea0, ra  <~~ Word[0x0011ff0c]
       0     5427        M 0x800015a4 addi    sp, sp, 112            #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011ff10
       0     5429        M                                           #; (lsu) ra  <-- 0x800009a8
       0     5430        M 0x800015a8 ret                            #; ra  = 0x800009a8, goto 0x800009a8
       0     5442        M 0x800009a8 lw      ra, 12(sp)             #; sp  = 0x0011ff10, ra  <~~ Word[0x0011ff1c]
       0     5443        M 0x800009ac addi    sp, sp, 48             #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011ff40
       0     5445        M                                           #; (lsu) ra  <-- 0x80000934
       0     5454        M 0x800009b0 ret                            #; ra  = 0x80000934, goto 0x80000934
       0     5468        M 0x80000934 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002934
       0     5469        M 0x80000938 addi    a0, a0, 1588           #; a0  = 0x80002934, (wrb) a0  <-- 0x80002f68
       0     5472        M 0x8000093c fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002f68]
       0     5473        M 0x80000948 lw      s0, 24(sp)             #; sp  = 0x0011ff40, s0  <~~ Word[0x0011ff58]
       0     5481        M                                           #; (f:lsu) ft0  <-- 0.0001
       0     5482        M 0x80000940 flt.d   a0, ft0, fs0           #; ft0  = 0.0001, fs0  = 0.0
       0     5483        M                                           #; (lsu) s0  <-- 0
       0     5484        M 0x8000094c lw      ra, 28(sp)             #; sp  = 0x0011ff40, ra  <~~ Word[0x0011ff5c], (acc) ra  <-- 0x01c12083
                         M 0x80000944 fld     fs0, 16(sp)            #; fs0  <~~ Doub[0x0011ff50]
       0     5485        M 0x80000950 addi    sp, sp, 32             #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff60
                         M                                           #; (f:lsu) fs0  <-- 0.0
       0     5487        M                                           #; (lsu) ra  <-- 0x80002a10
       0     5488        M 0x80000954 ret                            #; ra  = 0x80002a10, goto 0x80002a10
       0     5508        M 0x80002a10 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
       0     5509        M 0x80002a14 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002a14
       0     5510        M 0x80002a18 jalr    ra, ra, 524            #; ra  = 0x80002a14, (wrb) ra  <-- 0x80002a1c, goto 0x80002c20
       0     5522        M 0x80002c20 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
       0     5523        M 0x80002c24 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x80002a1c ~~> Word[0x0011ff5c]
       0     5524        M 0x80002c28 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002c28
       0     5525        M 0x80002c2c jalr    ra, ra, -1268          #; ra  = 0x80002c28, (wrb) ra  <-- 0x80002c30, goto 0x80002734
       0     5536        M 0x80002734 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     5537        M 0x80002738 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     5538        M 0x8000273c lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     5541        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     5542        M 0x80002740 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     5545        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     5546        M 0x80002744 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
       0     5547        M 0x80002748 ret                            #; ra  = 0x80002c30, goto 0x80002c30
       0     5549        M                                           #; (lsu) a0  <-- 0x00120190
       0     5550        M 0x80002c30 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
       0     5560        M                                           #; (lsu) a0  <-- 0
       0     5561        M 0x80002c34 mv      zero, a0               #; a0  = 0
       0     5562        M 0x80002c38 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
       0     5563        M 0x80002c3c addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
       0     5565        M                                           #; (lsu) ra  <-- 0x80002a1c
       0     5566        M 0x80002c40 ret                            #; ra  = 0x80002a1c, goto 0x80002a1c
       0     5580        M 0x80002a1c mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
       0     5584        M 0x80002a20 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002a20
       0     5585        M 0x80002a24 jalr    ra, ra, 556            #; ra  = 0x80002a20, (wrb) ra  <-- 0x80002a28, goto 0x80002c4c
       0     5586        M 0x80002c4c addi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff58
       0     5587        M 0x80002c50 sw      a0, 0(sp)              #; sp  = 0x0011ff58, 0 ~~> Word[0x0011ff58]
       0     5588        M 0x80002c54 sw      ra, 4(sp)              #; sp  = 0x0011ff58, 0x80002a28 ~~> Word[0x0011ff5c]
       0     5589        M 0x80002c58 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002c58
       0     5590        M 0x80002c5c jalr    ra, ra, -1348          #; ra  = 0x80002c58, (wrb) ra  <-- 0x80002c60, goto 0x80002714
       0     5609        M 0x80002714 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     5610        M 0x80002718 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     5611        M 0x8000271c lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     5614        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     5621        M 0x80002720 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     5626        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     5627        M 0x80002724 lw      a0, 8(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff78]
       0     5628        M 0x80002728 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5630        M                                           #; (lsu) a0  <-- 0
       0     5631        M 0x8000272c sub     a0, a1, a0             #; a1  = 0, a0  = 0, (wrb) a0  <-- 0
       0     5632        M 0x80002730 ret                            #; ra  = 0x80002c60, goto 0x80002c60
       0     5633        M 0x80002c60 lw      t0, 0(sp)              #; sp  = 0x0011ff58, t0  <~~ Word[0x0011ff58]
       0     5636        M                                           #; (lsu) t0  <-- 0
       0     5637        M 0x80002c64 lw      ra, 4(sp)              #; sp  = 0x0011ff58, ra  <~~ Word[0x0011ff5c]
       0     5638        M 0x80002c68 addi    sp, sp, 8              #; sp  = 0x0011ff58, (wrb) sp  <-- 0x0011ff60
       0     5639        M 0x80002c6c bnez    a0, pc + 24            #; a0  = 0, not taken
       0     5640        M                                           #; (lsu) ra  <-- 0x80002a28
       0     5647        M 0x80002c70 slli    t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 0
       0     5648        M 0x80002c74 ori     t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 1
       0     5649        M 0x80002c78 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002c78
       0     5650        M 0x80002c7c addi    t1, t1, 584            #; t1  = 0x80002c78, (wrb) t1  <-- 0x80002ec0
       0     5658        M 0x80002c80 sw      t0, 0(t1)              #; t1  = 0x80002ec0, 1 ~~> Word[0x80002ec0]
       0     5659        M 0x80002c84 ret                            #; ra  = 0x80002a28, goto 0x80002a28
       0     5673        M 0x80002a28 wfi                            #; 

## Performance metrics

Performance metrics for section 0 @ (12, 5673):
snitch_loads                                   141
snitch_stores                                  143
fpss_stores                                     14
fpss_loads                                      23
snitch_avg_load_latency                    11.8865
snitch_occupancy                            0.2278
snitch_fseq_rel_offloads                    0.0909
fseq_yield                                     1.0
fseq_fpu_yield                                 1.0
fpss_section_latency                             0
fpss_avg_fpu_latency                        1.4186
fpss_avg_load_latency                       6.9130
fpss_occupancy                              0.0228
fpss_fpu_occupancy                          0.0152
fpss_fpu_rel_occupancy                      0.6667
cycles                                        5662
total_ipc                                   0.2506
