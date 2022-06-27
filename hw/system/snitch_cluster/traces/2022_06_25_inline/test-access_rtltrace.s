       0       12        M 0x00001000 csrr    a0, mhartid            #; mhartid = 0, (wrb) a0  <-- 0
       0       32        M 0x00001004 auipc   a1, 0x0                #; (wrb) a1  <-- 4100
       0       56        M 0x00001008 addi    a1, a1, 32             #; a1  = 4100, (wrb) a1  <-- 4132
       0       84        M 0x0000100c auipc   t0, 0x0                #; (wrb) t0  <-- 4108
       0      104        M 0x00001010 lw      t0, 20(t0)             #; t0  = 4108, t0  <~~ Word[0x00001020]
       0      115        M                                           #; (lsu) t0  <-- 0x800027c0
       0      128        M 0x00001014 jalr    t0                     #; t0  = 0x800027c0, (wrb) ra  <-- 4120, goto 0x800027c0
       0      269        M 0x800027c0 auipc   gp, 0x1                #; (wrb) gp  <-- 0x800037c0
       0      270        M 0x800027c4 addi    gp, gp, -248           #; gp  = 0x800037c0, (wrb) gp  <-- 0x800036c8
       0      271        M 0x800027c8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800027c8
       0      272        M 0x800027cc jalr    ra, ra, 964            #; ra  = 0x800027c8, (wrb) ra  <-- 0x800027d0, goto 0x80002b8c
       0      292        M 0x80002b8c mv      a4, a1                 #; a1  = 4132, (wrb) a4  <-- 4132
       0      304        M 0x80002b90 lw      a1, 4(a4)              #; a4  = 4132, a1  <~~ Word[0x00001028]
       0      334        M                                           #; (lsu) a1  <-- 8
       0      335        M 0x80002b94 lw      t0, 8(a4)              #; a4  = 4132, t0  <~~ Word[0x0000102c]
       0      374        M                                           #; (lsu) t0  <-- 0
       0      375        M 0x80002b98 lw      a2, 12(a4)             #; a4  = 4132, a2  <~~ Word[0x00001030]
       0      414        M                                           #; (lsu) a2  <-- 0x00100000
       0      415        M 0x80002b9c lw      t1, 16(a4)             #; a4  = 4132, t1  <~~ Word[0x00001034]
       0      454        M                                           #; (lsu) t1  <-- 0x00020000
       0      455        M 0x80002ba0 lw      t2, 20(a4)             #; a4  = 4132, t2  <~~ Word[0x00001038]
       0      456        M 0x80002ba4 sub     a0, a0, t0             #; a0  = 0, t0  = 0, (wrb) a0  <-- 0
       0      457        M 0x80002ba8 div     t3, a0, a1             #; a0  = 0, a1  = 8
       0      460        M                                           #; (acc) t4  <-- 0x027e0eb3
       0      494        M                                           #; (lsu) t2  <-- 0
       0      495        M 0x80002bac mul     t4, t3, t2             #; t3  = 0, t2  = 0
       0      498        M                                           #; (acc) a2  <-- 0x01d60633
       0      499        M 0x80002bb0 add     a2, a2, t4             #; a2  = 0x00100000, t4  = 0, (wrb) a2  <-- 0x00100000
       0      500        M 0x80002bb4 add     a3, a2, t1             #; a2  = 0x00100000, t1  = 0x00020000, (wrb) a3  <-- 0x00120000
       0      501        M 0x80002bb8 remu    a0, a0, a1             #; a0  = 0, a1  = 8
       0      502        M 0x80002bbc ret                            #; ra  = 0x800027d0, goto 0x800027d0
       0      504        M                                           #; (acc) s0  <-- 0x00050413
       0      505        M 0x800027d0 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
       0      506        M 0x800027d4 mv      a0, a4                 #; a4  = 4132, (wrb) a0  <-- 4132
       0      507        M 0x800027d8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800027d8
       0      508        M 0x800027dc jalr    ra, ra, 1036           #; ra  = 0x800027d8, (wrb) ra  <-- 0x800027e0, goto 0x80002be4
       0      523        M 0x80002be4 lw      a0, 8(a0)              #; a0  = 4132, a0  <~~ Word[0x0000102c]
       0      524        M 0x80002be8 ret                            #; ra  = 0x800027e0, goto 0x800027e0
       0      543        M                                           #; (lsu) a0  <-- 0
       0      544        M 0x800027e0 mv      t0, a0                 #; a0  = 0, (wrb) t0  <-- 0
       0      545        M 0x800027e4 mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
       0      546        M 0x800027e8 csrr    t1, mhartid            #; mhartid = 0, (wrb) t1  <-- 0
       0      547        M 0x800027ec sub     t0, t1, t0             #; t1  = 0, t0  = 0, (wrb) t0  <-- 0
       0      549        M 0x800027f0 bnez    t0, pc + 36            #; t0  = 0, not taken
       0      550        M 0x800027f4 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800027f4
       0      551        M 0x800027f8 addi    t0, t0, 2004           #; t0  = 0x800027f4, (wrb) t0  <-- 0x80002fc8
       0      552        M 0x800027fc auipc   t1, 0x0                #; (wrb) t1  <-- 0x800027fc
       0      562        M 0x80002800 addi    t1, t1, 2000           #; t1  = 0x800027fc, (wrb) t1  <-- 0x80002fcc
       0      563        M 0x80002804 bge     t0, t1, pc + 16        #; t0  = 0x80002fc8, t1  = 0x80002fcc, not taken
       0      564        M 0x80002808 sw      zero, 0(t0)            #; t0  = 0x80002fc8, 0 ~~> Word[0x80002fc8]
       0      565        M 0x8000280c addi    t0, t0, 4              #; t0  = 0x80002fc8, (wrb) t0  <-- 0x80002fcc
       0      573        M 0x80002810 blt     t0, t1, pc - 8         #; t0  = 0x80002fcc, t1  = 0x80002fcc, not taken
       0      574        M 0x80002814 csrr    t0, misa               #; misa = 0x40801129, (wrb) t0  <-- 0x40801129
       0      575        M 0x80002818 andi    t0, t0, 40             #; t0  = 0x40801129, (wrb) t0  <-- 40
       0      576        M 0x8000281c beqz    t0, pc + 132           #; t0  = 40, not taken
       0      586        M 0x80002820 fcvt.d.w ft0, zero             #; ac1  = 0
       0      587        M 0x80002824 fcvt.d.w ft1, zero             #; ac1  = 0, (f:fpu) ft0  <-- 0.0
       0      588        M 0x80002828 fcvt.d.w ft2, zero             #; ac1  = 0, (f:fpu) ft1  <-- 0.0
       0      589        M 0x8000282c fcvt.d.w ft3, zero             #; ac1  = 0, (f:fpu) ft2  <-- 0.0
       0      590        M                                           #; (f:fpu) ft3  <-- 0.0
       0      598        M 0x80002830 fcvt.d.w ft4, zero             #; ac1  = 0
       0      599        M 0x80002834 fcvt.d.w ft5, zero             #; ac1  = 0, (f:fpu) ft4  <-- 0.0
       0      600        M 0x80002838 fcvt.d.w ft6, zero             #; ac1  = 0, (f:fpu) ft5  <-- 0.0
       0      601        M 0x8000283c fcvt.d.w ft7, zero             #; ac1  = 0, (f:fpu) ft6  <-- 0.0
       0      602        M                                           #; (f:fpu) ft7  <-- 0.0
       0      610        M 0x80002840 fcvt.d.w fs0, zero             #; ac1  = 0
       0      611        M 0x80002844 fcvt.d.w fs1, zero             #; ac1  = 0, (f:fpu) fs0  <-- 0.0
       0      612        M 0x80002848 fcvt.d.w fa0, zero             #; ac1  = 0, (f:fpu) fs1  <-- 0.0
       0      613        M 0x8000284c fcvt.d.w fa1, zero             #; ac1  = 0, (f:fpu) fa0  <-- 0.0
       0      614        M                                           #; (f:fpu) fa1  <-- 0.0
       0      622        M 0x80002850 fcvt.d.w fa2, zero             #; ac1  = 0
       0      623        M 0x80002854 fcvt.d.w fa3, zero             #; ac1  = 0, (f:fpu) fa2  <-- 0.0
       0      624        M 0x80002858 fcvt.d.w fa4, zero             #; ac1  = 0, (f:fpu) fa3  <-- 0.0
       0      625        M 0x8000285c fcvt.d.w fa5, zero             #; ac1  = 0, (f:fpu) fa4  <-- 0.0
       0      626        M                                           #; (f:fpu) fa5  <-- 0.0
       0      634        M 0x80002860 fcvt.d.w fa6, zero             #; ac1  = 0
       0      635        M 0x80002864 fcvt.d.w fa7, zero             #; ac1  = 0, (f:fpu) fa6  <-- 0.0
       0      636        M 0x80002868 fcvt.d.w fs2, zero             #; ac1  = 0, (f:fpu) fa7  <-- 0.0
       0      637        M 0x8000286c fcvt.d.w fs3, zero             #; ac1  = 0, (f:fpu) fs2  <-- 0.0
       0      638        M                                           #; (f:fpu) fs3  <-- 0.0
       0      646        M 0x80002870 fcvt.d.w fs4, zero             #; ac1  = 0
       0      647        M 0x80002874 fcvt.d.w fs5, zero             #; ac1  = 0, (f:fpu) fs4  <-- 0.0
       0      648        M 0x80002878 fcvt.d.w fs6, zero             #; ac1  = 0, (f:fpu) fs5  <-- 0.0
       0      649        M 0x8000287c fcvt.d.w fs7, zero             #; ac1  = 0, (f:fpu) fs6  <-- 0.0
       0      650        M                                           #; (f:fpu) fs7  <-- 0.0
       0      658        M 0x80002880 fcvt.d.w fs8, zero             #; ac1  = 0
       0      659        M 0x80002884 fcvt.d.w fs9, zero             #; ac1  = 0, (f:fpu) fs8  <-- 0.0
       0      660        M 0x80002888 fcvt.d.w fs10, zero            #; ac1  = 0, (f:fpu) fs9  <-- 0.0
       0      661        M 0x8000288c fcvt.d.w fs11, zero            #; ac1  = 0, (f:fpu) fs10 <-- 0.0
       0      662        M                                           #; (f:fpu) fs11 <-- 0.0
       0      670        M 0x80002890 fcvt.d.w ft8, zero             #; ac1  = 0
       0      671        M 0x80002894 fcvt.d.w ft9, zero             #; ac1  = 0, (f:fpu) ft8  <-- 0.0
       0      672        M 0x80002898 fcvt.d.w ft10, zero            #; ac1  = 0, (f:fpu) ft9  <-- 0.0
       0      673        M 0x8000289c fcvt.d.w ft11, zero            #; ac1  = 0, (f:fpu) ft10 <-- 0.0
       0      674        M                                           #; (f:fpu) ft11 <-- 0.0
       0      681        M 0x800028a0 addi    a3, a3, -8             #; a3  = 0x00120000, (wrb) a3  <-- 0x0011fff8
       0      682        M 0x800028a4 sw      zero, 0(a3)            #; a3  = 0x0011fff8, 0 ~~> Word[0x0011fff8]
       0      683        M 0x800028a8 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800028a8
       0      684        M 0x800028ac lw      t0, 900(t0)            #; t0  = 0x800028a8, t0  <~~ Word[0x80002c2c]
       0      704        M                                           #; (lsu) t0  <-- 136
       0      705        M 0x800028b0 sub     a3, a3, t0             #; a3  = 0x0011fff8, t0  = 136, (wrb) a3  <-- 0x0011ff70
       0      706        M 0x800028b4 mv      a5, a3                 #; a3  = 0x0011ff70, (wrb) a5  <-- 0x0011ff70
       0      707        M 0x800028b8 auipc   t2, 0x0                #; (wrb) t2  <-- 0x800028b8
       0      708        M 0x800028bc lw      t2, 880(t2)            #; t2  = 0x800028b8, t2  <~~ Word[0x80002c28]
       0      744        M                                           #; (lsu) t2  <-- 10
       0      745        M 0x800028c0 sll     t0, a0, t2             #; a0  = 0, t2  = 10, (wrb) t0  <-- 0
       0      746        M 0x800028c4 sll     t1, a1, t2             #; a1  = 8, t2  = 10, (wrb) t1  <-- 8192
       0      747        M 0x800028c8 sub     sp, a3, t0             #; a3  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
       0      748        M 0x800028cc sub     a3, a3, t1             #; a3  = 0x0011ff70, t1  = 8192, (wrb) a3  <-- 0x0011df70
       0      749        M 0x800028d0 slli    t0, a0, 3              #; a0  = 0, (wrb) t0  <-- 0
       0      750        M 0x800028d4 slli    t1, a1, 3              #; a1  = 8, (wrb) t1  <-- 64
       0      751        M 0x800028d8 sub     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
       0      752        M 0x800028dc sub     a3, a3, t1             #; a3  = 0x0011df70, t1  = 64, (wrb) a3  <-- 0x0011df30
       0      761        M 0x800028e0 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800028e0
       0      762        M 0x800028e4 addi    t0, t0, 1512           #; t0  = 0x800028e0, (wrb) t0  <-- 0x80002ec8
       0      763        M 0x800028e8 auipc   t1, 0x0                #; (wrb) t1  <-- 0x800028e8
       0      764        M 0x800028ec addi    t1, t1, 1504           #; t1  = 0x800028e8, (wrb) t1  <-- 0x80002ec8
       0      775        M 0x800028f0 auipc   t2, 0x0                #; (wrb) t2  <-- 0x800028f0
       0      776        M 0x800028f4 addi    t2, t2, 1496           #; t2  = 0x800028f0, (wrb) t2  <-- 0x80002ec8
       0      777        M 0x800028f8 auipc   t3, 0x0                #; (wrb) t3  <-- 0x800028f8
       0      778        M 0x800028fc addi    t3, t3, 1504           #; t3  = 0x800028f8, (wrb) t3  <-- 0x80002ed8
       0      787        M 0x80002900 add     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0x80002ec8, (wrb) sp  <-- 0x80122e38
       0      788        M 0x80002904 sub     sp, sp, t1             #; sp  = 0x80122e38, t1  = 0x80002ec8, (wrb) sp  <-- 0x0011ff70
       0      789        M 0x80002908 add     sp, sp, t2             #; sp  = 0x0011ff70, t2  = 0x80002ec8, (wrb) sp  <-- 0x80122e38
       0      790        M 0x8000290c sub     sp, sp, t3             #; sp  = 0x80122e38, t3  = 0x80002ed8, (wrb) sp  <-- 0x0011ff60
       0      799        M 0x80002910 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
       0      800        M 0x80002914 mv      tp, sp                 #; sp  = 0x0011ff60, (wrb) tp  <-- 0x0011ff60
       0      801        M 0x80002918 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
       0      802        M 0x8000291c mv      t4, tp                 #; tp  = 0x0011ff60, (wrb) t4  <-- 0x0011ff60
       0      811        M 0x80002920 bge     t0, t1, pc + 24        #; t0  = 0x80002ec8, t1  = 0x80002ec8, taken, goto 0x80002938
       0      823        M 0x80002938 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002938
       0      824        M 0x8000293c addi    t0, t0, 1424           #; t0  = 0x80002938, (wrb) t0  <-- 0x80002ec8
       0      835        M 0x80002940 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002940
       0      836        M 0x80002944 addi    t1, t1, 1432           #; t1  = 0x80002940, (wrb) t1  <-- 0x80002ed8
       0      837        M 0x80002948 bge     t0, t1, pc + 20        #; t0  = 0x80002ec8, t1  = 0x80002ed8, not taken
       0      838        M 0x8000294c sw      zero, 0(t4)            #; t4  = 0x0011ff60, 0 ~~> Word[0x0011ff60]
       0      847        M 0x80002950 addi    t0, t0, 4              #; t0  = 0x80002ec8, (wrb) t0  <-- 0x80002ecc
       0      848        M 0x80002954 addi    t4, t4, 4              #; t4  = 0x0011ff60, (wrb) t4  <-- 0x0011ff64
       0      849        M 0x80002958 blt     t0, t2, pc - 12        #; t0  = 0x80002ecc, t2  = 0x80002ec8, not taken
       0      850        M 0x8000295c addi    sp, sp, -20            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff4c
       0      862        M 0x80002960 sw      a0, 0(sp)              #; sp  = 0x0011ff4c, 0 ~~> Word[0x0011ff4c]
       0      863        M 0x80002964 sw      a1, 4(sp)              #; sp  = 0x0011ff4c, 8 ~~> Word[0x0011ff50]
       0      864        M 0x80002968 sw      a2, 8(sp)              #; sp  = 0x0011ff4c, 0x00100000 ~~> Word[0x0011ff54]
       0      865        M 0x8000296c sw      a3, 12(sp)             #; sp  = 0x0011ff4c, 0x0011df30 ~~> Word[0x0011ff58]
       0      875        M 0x80002970 sw      a4, 16(sp)             #; sp  = 0x0011ff4c, 4132 ~~> Word[0x0011ff5c]
       0      876        M 0x80002974 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002974
       0      877        M 0x80002978 jalr    ra, ra, -1060          #; ra  = 0x80002974, (wrb) ra  <-- 0x8000297c, goto 0x80002550
       0      898        M 0x80002550 sw      a5, 0(a5)              #; a5  = 0x0011ff70, 0x0011ff70 ~~> Word[0x0011ff70]
       0      899        M 0x80002554 sw      a4, 4(a5)              #; a5  = 0x0011ff70, 4132 ~~> Word[0x0011ff74]
       0      901        M 0x80002558 lw      t1, 8(a4)              #; a4  = 4132, t1  <~~ Word[0x0000102c]
       0      923        M                                           #; (lsu) t1  <-- 0
       0      924        M 0x8000255c sw      t1, 8(a5)              #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff78]
       0      925        M 0x80002560 lw      a6, 40(a4)             #; a4  = 4132, a6  <~~ Word[0x0000104c]
       0      963        M                                           #; (lsu) a6  <-- 1
       0      964        M 0x80002564 lw      a7, 44(a4)             #; a4  = 4132, a7  <~~ Word[0x00001050]
       0     1003        M                                           #; (lsu) a7  <-- 1
       0     1004        M 0x80002568 lw      t0, 4(a4)              #; a4  = 4132, t0  <~~ Word[0x00001028]
       0     1005        M 0x8000256c mul     a6, a7, a6             #; a7  = 1, a6  = 1
       0     1008        M                                           #; (acc) a0  <-- 0x02580533
       0     1043        M                                           #; (lsu) t0  <-- 8
       0     1044        M 0x80002570 mul     a0, a6, t0             #; a6  = 1, t0  = 8
       0     1047        M                                           #; (acc) a2  <-- 0x00a7a623
       0     1048        M 0x80002574 sw      a0, 12(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff7c]
       0     1049        M 0x80002578 csrr    a7, mhartid            #; mhartid = 0, (wrb) a7  <-- 0
       0     1050        M 0x8000257c sub     a0, a7, t1             #; a7  = 0, t1  = 0, (wrb) a0  <-- 0
       0     1051        M 0x80002580 divu    a0, a0, t0             #; a0  = 0, t0  = 8
       0     1054        M                                           #; (acc) a6  <-- 0x00a7a823
       0     1055        M 0x80002584 sw      a0, 16(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff80]
       0     1056        M 0x80002588 sw      a6, 20(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff84]
       0     1057        M 0x8000258c sw      t1, 24(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff88]
       0     1063        M 0x80002590 sw      a1, 28(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff8c]
       0     1064        M 0x80002594 lw      a0, 24(a4)             #; a4  = 4132, a0  <~~ Word[0x0000103c]
       0     1065        M 0x80002598 lui     a1, 0x10000            #; (wrb) a1  <-- 0x10000000
       0     1083        M                                           #; (lsu) a0  <-- 0x80000000
       0     1084        M 0x8000259c add     a0, a0, a1             #; a0  = 0x80000000, a1  = 0x10000000, (wrb) a0  <-- 0x90000000
       0     1085        M 0x800025a0 sw      zero, 36(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff94]
       0     1086        M 0x800025a4 sw      a0, 32(a5)             #; a5  = 0x0011ff70, 0x90000000 ~~> Word[0x0011ff90]
       0     1087        M 0x800025a8 lw      a0, 32(a4)             #; a4  = 4132, a0  <~~ Word[0x00001044]
       0     1123        M                                           #; (lsu) a0  <-- 0
       0     1124        M 0x800025ac lw      a1, 36(a4)             #; a4  = 4132, a1  <~~ Word[0x00001048]
       0     1125        M 0x800025b0 sw      a0, 40(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff98]
       0     1163        M                                           #; (lsu) a1  <-- 1
       0     1164        M 0x800025b4 sw      a1, 44(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff9c]
       0     1165        M 0x800025b8 sw      a2, 48(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffa0]
       0     1166        M 0x800025bc sw      zero, 52(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffa4]
       0     1167        M 0x800025c0 sw      a3, 56(a5)             #; a5  = 0x0011ff70, 0x0011df30 ~~> Word[0x0011ffa8]
       0     1168        M 0x800025c4 sw      zero, 60(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffac]
       0     1169        M 0x800025c8 lw      a0, 16(a4)             #; a4  = 4132, a0  <~~ Word[0x00001034]
       0     1190        M                                           #; (lsu) a0  <-- 0x00020000
       0     1191        M 0x800025cc add     a6, a2, a0             #; a2  = 0x00100000, a0  = 0x00020000, (wrb) a6  <-- 0x00120000
       0     1192        M 0x800025d0 addi    a1, a6, 400            #; a6  = 0x00120000, (wrb) a1  <-- 0x00120190
       0     1193        M 0x800025d4 sw      a1, 112(a5)            #; a5  = 0x0011ff70, 0x00120190 ~~> Word[0x0011ffe0]
       0     1194        M 0x800025d8 sltu    t0, a6, a0             #; a6  = 0x00120000, a0  = 0x00020000, (wrb) t0  <-- 0
       0     1195        M 0x800025dc srli    a1, a0, 1              #; a0  = 0x00020000, (wrb) a1  <-- 0x00010000
       0     1205        M 0x800025e0 add     t1, a6, a1             #; a6  = 0x00120000, a1  = 0x00010000, (wrb) t1  <-- 0x00130000
       0     1206        M 0x800025e4 sltu    a1, t1, a6             #; t1  = 0x00130000, a6  = 0x00120000, (wrb) a1  <-- 0
       0     1207        M 0x800025e8 add     a1, t0, a1             #; t0  = 0, a1  = 0, (wrb) a1  <-- 0
       0     1208        M 0x800025ec sw      t1, 64(a5)             #; a5  = 0x0011ff70, 0x00130000 ~~> Word[0x0011ffb0]
       0     1219        M 0x800025f0 sw      a1, 68(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffb4]
       0     1220        M 0x800025f4 slli    a0, a0, 1              #; a0  = 0x00020000, (wrb) a0  <-- 0x00040000
       0     1221        M 0x800025f8 add     a1, a0, a2             #; a0  = 0x00040000, a2  = 0x00100000, (wrb) a1  <-- 0x00140000
       0     1222        M 0x800025fc sltu    a0, a1, a0             #; a1  = 0x00140000, a0  = 0x00040000, (wrb) a0  <-- 0
       0     1231        M 0x80002600 sw      a1, 72(a5)             #; a5  = 0x0011ff70, 0x00140000 ~~> Word[0x0011ffb8]
       0     1232        M 0x80002604 sw      a0, 76(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffbc]
       0     1234        M 0x80002608 sw      zero, 104(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd8]
       0     1238        M 0x8000260c sw      zero, 108(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffdc]
       0     1243        M 0x80002610 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1244        M 0x80002614 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1245        M 0x80002618 sw      a5, 0(a0)              #; a0  = 0x0011ff60, 0x0011ff70 ~~> Word[0x0011ff60]
       0     1246        M 0x8000261c lw      a0, 0(a5)              #; a5  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1250        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1255        M 0x80002620 lw      a1, 24(a0)             #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ff88]
       0     1259        M                                           #; (lsu) a1  <-- 0
       0     1260        M 0x80002624 lw      a0, 28(a0)             #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff8c]
       0     1261        M 0x80002628 sub     a1, a7, a1             #; a7  = 0, a1  = 0, (wrb) a1  <-- 0
       0     1263        M                                           #; (lsu) a0  <-- 8
       0     1264        M 0x8000262c remu    a0, a1, a0             #; a1  = 0, a0  = 8
       0     1267        M 0x80002630 lui     a1, 0x0                #; (wrb) a1  <-- 0
       0     1268        M 0x80002634 add     a1, a1, tp             #; a1  = 0, tp  = 0x0011ff60, (wrb) a1  <-- 0x0011ff60
       0     1269        M                                           #; (acc) tp  <-- 0x00a5a223
       0     1270        M 0x80002638 sw      a0, 4(a1)              #; a1  = 0x0011ff60, 0 ~~> Word[0x0011ff64]
       0     1271        M 0x8000263c li      a0, 1096               #; (wrb) a0  <-- 1096
       0     1279        M 0x80002640 mul     a0, a7, a0             #; a7  = 0, a0  = 1096
       0     1280        M 0x80002644 auipc   a1, 0x1                #; (wrb) a1  <-- 0x80003644
       0     1281        M 0x80002648 addi    a1, a1, -1656          #; a1  = 0x80003644, (wrb) a1  <-- 0x80002fcc
       0     1283        M                                           #; (acc) a0  <-- 0x00b50533
       0     1284        M 0x8000264c add     a0, a0, a1             #; a0  = 0, a1  = 0x80002fcc, (wrb) a0  <-- 0x80002fcc
       0     1291        M 0x80002650 sw      zero, 0(a0)            #; a0  = 0x80002fcc, 0 ~~> Word[0x80002fcc]
       0     1292        M 0x80002654 lw      a7, 48(a4)             #; a4  = 4132, a7  <~~ Word[0x00001054]
       0     1362        M                                           #; (lsu) a7  <-- 0xffff0000
       0     1363        M 0x80002658 sw      a7, 116(a5)            #; a5  = 0x0011ff70, 0xffff0000 ~~> Word[0x0011ffe4]
       0     1364        M 0x8000265c sw      a6, 124(a5)            #; a5  = 0x0011ff70, 0x00120000 ~~> Word[0x0011ffec]
       0     1365        M 0x80002660 sw      zero, 120(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffe8]
       0     1366        M 0x80002664 addi    a4, a6, 384            #; a6  = 0x00120000, (wrb) a4  <-- 0x00120180
       0     1367        M 0x80002668 sw      a4, 128(a5)            #; a5  = 0x0011ff70, 0x00120180 ~~> Word[0x0011fff0]
       0     1368        M 0x8000266c addi    a0, a2, 7              #; a2  = 0x00100000, (wrb) a0  <-- 0x00100007
       0     1369        M 0x80002670 andi    a0, a0, -8             #; a0  = 0x00100007, (wrb) a0  <-- 0x00100000
       0     1370        M 0x80002674 sw      a0, 80(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc0]
       0     1371        M 0x80002678 sub     a2, a3, a2             #; a3  = 0x0011df30, a2  = 0x00100000, (wrb) a2  <-- 0x0001df30
       0     1372        M 0x8000267c sw      a2, 84(a5)             #; a5  = 0x0011ff70, 0x0001df30 ~~> Word[0x0011ffc4]
       0     1373        M 0x80002680 sw      a0, 88(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc8]
       0     1374        M 0x80002684 lw      a0, 0(a1)              #; a1  = 0x80002fcc, a0  <~~ Word[0x80002fcc]
       0     1385        M                                           #; (lsu) a0  <-- 0
       0     1386        M 0x80002688 addi    a0, a0, 1103           #; a0  = 0, (wrb) a0  <-- 1103
       0     1387        M 0x8000268c andi    a0, a0, -8             #; a0  = 1103, (wrb) a0  <-- 1096
       0     1388        M 0x80002690 sw      a0, 92(a5)             #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffcc]
       0     1389        M 0x80002694 sw      zero, 96(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd0]
       0     1390        M 0x80002698 sw      a0, 100(a5)            #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffd4]
       0     1391        M 0x8000269c lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1392        M 0x800026a0 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1393        M 0x800026a4 sw      a7, 8(a0)              #; a0  = 0x0011ff60, 0xffff0000 ~~> Word[0x0011ff68]
       0     1394        M 0x800026a8 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1395        M 0x800026ac add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1400        M 0x800026b0 sw      a4, 12(a0)             #; a0  = 0x0011ff60, 0x00120180 ~~> Word[0x0011ff6c]
       0     1401        M 0x800026b4 ret                            #; ra  = 0x8000297c, goto 0x8000297c
       0     1415        M 0x8000297c lw      a0, 0(sp)              #; sp  = 0x0011ff4c, a0  <~~ Word[0x0011ff4c]
       0     1418        M                                           #; (lsu) a0  <-- 0
       0     1419        M 0x80002980 lw      a1, 4(sp)              #; sp  = 0x0011ff4c, a1  <~~ Word[0x0011ff50]
       0     1422        M                                           #; (lsu) a1  <-- 8
       0     1423        M 0x80002984 lw      a2, 8(sp)              #; sp  = 0x0011ff4c, a2  <~~ Word[0x0011ff54]
       0     1426        M                                           #; (lsu) a2  <-- 0x00100000
       0     1427        M 0x80002988 lw      a3, 12(sp)             #; sp  = 0x0011ff4c, a3  <~~ Word[0x0011ff58]
       0     1430        M                                           #; (lsu) a3  <-- 0x0011df30
       0     1431        M 0x8000298c lw      a4, 16(sp)             #; sp  = 0x0011ff4c, a4  <~~ Word[0x0011ff5c]
       0     1432        M 0x80002990 addi    sp, sp, 20             #; sp  = 0x0011ff4c, (wrb) sp  <-- 0x0011ff60
       0     1433        M 0x80002994 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002994
       0     1434        M 0x80002998 addi    t0, t0, 60             #; t0  = 0x80002994, (wrb) t0  <-- 0x800029d0
       0     1435        M 0x8000299c csrw    mtvec, t0              #; t0  = 0x800029d0, (lsu) a4  <-- 4132
       0     1443        M 0x800029a0 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800029a0
       0     1444        M 0x800029a4 jalr    ra, ra, 544            #; ra  = 0x800029a0, (wrb) ra  <-- 0x800029a8, goto 0x80002bc0
       0     1460        M 0x80002bc0 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
       0     1461        M 0x80002bc4 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x800029a8 ~~> Word[0x0011ff5c]
       0     1462        M 0x80002bc8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002bc8
       0     1463        M 0x80002bcc jalr    ra, ra, -1264          #; ra  = 0x80002bc8, (wrb) ra  <-- 0x80002bd0, goto 0x800026d8
       0     1481        M 0x800026d8 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1482        M 0x800026dc add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1493        M 0x800026e0 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     1496        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1497        M 0x800026e4 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1501        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1502        M 0x800026e8 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
       0     1503        M 0x800026ec ret                            #; ra  = 0x80002bd0, goto 0x80002bd0
       0     1505        M                                           #; (lsu) a0  <-- 0x00120190
       0     1506        M 0x80002bd0 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
       0     1535        M                                           #; (lsu) a0  <-- 0
       0     1536        M 0x80002bd4 mv      zero, a0               #; a0  = 0
       0     1537        M 0x80002bd8 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
       0     1538        M 0x80002bdc addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
       0     1540        M                                           #; (lsu) ra  <-- 0x800029a8
       0     1541        M 0x80002be0 ret                            #; ra  = 0x800029a8, goto 0x800029a8
       0     1545        M 0x800029a8 auipc   ra, 0xffffe            #; (wrb) ra  <-- 0x800009a8
       0     1546        M 0x800029ac jalr    ra, ra, -884           #; ra  = 0x800009a8, (wrb) ra  <-- 0x800029b0, goto 0x80000634
       0     1551        M 0x80000634 addi    sp, sp, -32            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff40
       0     1552        M 0x80000638 sw      ra, 28(sp)             #; sp  = 0x0011ff40, 0x800029b0 ~~> Word[0x0011ff5c]
       0     1554        M 0x80000640 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1555        M 0x80000644 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
                         M 0x8000063c fsd     fs0, 16(sp)            #; 0.0 ~~> Doub[0x0011ff50]
       0     1556        M 0x80000648 lw      a1, 4(a0)              #; a0  = 0x0011ff60, a1  <~~ Word[0x0011ff64]
       0     1557        M 0x8000064c li      a0, 0                  #; (wrb) a0  <-- 0
       0     1559        M                                           #; (lsu) a1  <-- 0
       0     1567        M 0x80000650 bnez    a1, pc + 668           #; a1  = 0, not taken
       0     1568        M 0x80000654 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1569        M 0x80000658 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1570        M 0x8000065c lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     1573        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1579        M 0x80000660 lw      a1, 0(a0)              #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ff70]
       0     1582        M                                           #; (lsu) a1  <-- 0x0011ff70
       0     1583        M 0x80000664 lw      a0, 88(a1)             #; a1  = 0x0011ff70, a0  <~~ Word[0x0011ffc8]
       0     1586        M                                           #; (lsu) a0  <-- 0x00100000
       0     1587        M 0x80000668 lw      a3, 80(a1)             #; a1  = 0x0011ff70, a3  <~~ Word[0x0011ffc0]
       0     1590        M                                           #; (lsu) a3  <-- 0x00100000
       0     1591        M 0x8000066c lw      a4, 84(a1)             #; a1  = 0x0011ff70, a4  <~~ Word[0x0011ffc4]
       0     1594        M                                           #; (lsu) a4  <-- 0x0001df30
       0     1595        M 0x80000670 addi    a2, a0, 48             #; a0  = 0x00100000, (wrb) a2  <-- 0x00100030
       0     1596        M 0x80000674 add     a3, a4, a3             #; a4  = 0x0001df30, a3  = 0x00100000, (wrb) a3  <-- 0x0011df30
       0     1597        M 0x80000678 bgeu    a3, a2, pc + 12        #; a3  = 0x0011df30, a2  = 0x00100030, taken, goto 0x80000684
       0     1608        M 0x80000684 srli    a3, a0, 20             #; a0  = 0x00100000, (wrb) a3  <-- 1
       0     1609        M 0x80000688 snez    a3, a3                 #; a3  = 1, (wrb) a3  <-- 1
       0     1610        M 0x8000068c lui     a4, 0x120              #; (wrb) a4  <-- 0x00120000
       0     1633        M 0x80000690 addi    a4, a4, -39            #; a4  = 0x00120000, (wrb) a4  <-- 0x0011ffd9
       0     1634        M 0x80000694 sltu    a4, a0, a4             #; a0  = 0x00100000, a4  = 0x0011ffd9, (wrb) a4  <-- 1
       0     1635        M 0x80000698 and     a3, a3, a4             #; a3  = 1, a4  = 1, (wrb) a3  <-- 1
       0     1636        M 0x8000069c sw      a2, 88(a1)             #; a1  = 0x0011ff70, 0x00100030 ~~> Word[0x0011ffc8]
       0     1645        M 0x800006a0 beqz    a3, pc + 352           #; a3  = 1, not taken
       0     1646        M 0x800006a4 li      a1, 8                  #; (wrb) a1  <-- 8
       0     1647        M 0x800006a8 li      a2, 5                  #; (wrb) a2  <-- 5
       0     1648        M 0x800006ac li      a3, 64                 #; (wrb) a3  <-- 64
       0     1657        M 0x800006b0 li      a4, 192                #; (wrb) a4  <-- 192
       0     1658        M 0x800006b4 scfgw   a2, a3                 #; a2  = 5, a3  = 64
       0     1659        M 0x800006b8 scfgw   a1, a4                 #; a1  = 8, a4  = 192
       0     1660        M 0x800006bc li      a2, 32                 #; (wrb) a2  <-- 32
       0     1669        M 0x800006c0 scfgw   zero, a2               #; a2  = 32
       0     1670        M 0x800006c4 scfgwi  a0, 896                #; a0  = 0x00100000
       0     1671        M 0x800006c8 auipc   a2, 0x3                #; (wrb) a2  <-- 0x800036c8
       0     1672        M 0x800006cc addi    a2, a2, -2032          #; a2  = 0x800036c8, (wrb) a2  <-- 0x80002ed8
       0     1682        M 0x800006d4 auipc   a2, 0x3                #; (wrb) a2  <-- 0x800036d4
       0     1683        M 0x800006d8 addi    a2, a2, -2036          #; a2  = 0x800036d4, (wrb) a2  <-- 0x80002ee0
                         M 0x800006d0 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x80002ed8]
       0     1686        M 0x800006dc fld     ft4, 0(a2)             #; ft4  <~~ Doub[0x80002ee0]
       0     1692        M                                           #; (f:lsu) ft3  <-- 1.0
       0     1694        M 0x800006e0 csrrsi  a2, ssr, 1             #; 
       0     1695        M                                           #; (f:lsu) ft4  <-- 2.0
       0     1696        M 0x800006ec auipc   a2, 0x2                #; (wrb) a2  <-- 0x800026ec
                         M 0x800006e4 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
       0     1697        M 0x800006e8 fsgnj.d ft0, ft4, ft4          #; ft4  = 2.0, ft4  = 2.0, (f:fpu) ft0  <-- 1.0
       0     1698        M                                           #; (f:fpu) ft0  <-- 2.0
       0     1705        M 0x800006f0 addi    a2, a2, 2044           #; a2  = 0x800026ec, (wrb) a2  <-- 0x80002ee8
       0     1707        M 0x800006f8 auipc   a2, 0x2                #; (wrb) a2  <-- 0x800026f8
       0     1708        M 0x800006fc addi    a2, a2, 2040           #; a2  = 0x800026f8, (wrb) a2  <-- 0x80002ef0
                         M 0x800006f4 fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x80002ee8]
       0     1717        M                                           #; (f:lsu) ft3  <-- 3.0
       0     1718        M 0x80000704 auipc   a2, 0x2                #; (wrb) a2  <-- 0x80002704
       0     1719        M 0x80000708 addi    a2, a2, 2036           #; a2  = 0x80002704, (wrb) a2  <-- 0x80002ef8
                         M 0x80000700 fld     ft4, 0(a2)             #; ft4  <~~ Doub[0x80002ef0]
       0     1722        M 0x8000070c fld     ft5, 0(a2)             #; ft5  <~~ Doub[0x80002ef8]
       0     1728        M                                           #; (f:lsu) ft4  <-- 4.0
       0     1729        M 0x80000710 auipc   a2, 0x2                #; (wrb) a2  <-- 0x80002710
       0     1730        M 0x80000714 addi    a2, a2, 2032           #; a2  = 0x80002710, (wrb) a2  <-- 0x80002f00
       0     1731        M                                           #; (f:lsu) ft5  <-- 5.0
       0     1733        M 0x80000718 fld     ft6, 0(a2)             #; ft6  <~~ Doub[0x80002f00]
       0     1734        M 0x8000071c fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
       0     1735        M                                           #; (f:fpu) ft0  <-- 3.0
       0     1742        M                                           #; (f:lsu) ft6  <-- 6.0
       0     1743        M 0x80000720 fsgnj.d ft0, ft4, ft4          #; ft4  = 4.0, ft4  = 4.0
       0     1744        M 0x80000724 fsgnj.d ft0, ft5, ft5          #; ft5  = 5.0, ft5  = 5.0, (f:fpu) ft0  <-- 4.0
       0     1745        M 0x80000728 fsgnj.d ft0, ft6, ft6          #; ft6  = 6.0, ft6  = 6.0, (f:fpu) ft0  <-- 5.0
       0     1746        M 0x8000072c csrrci  a2, ssr, 1             #; (f:fpu) ft0  <-- 6.0
       0     1753        M 0x80000730 li      a2, 2                  #; (wrb) a2  <-- 2
       0     1754        M 0x80000734 li      a3, 64                 #; (wrb) a3  <-- 64
       0     1755        M 0x80000738 li      a4, 192                #; (wrb) a4  <-- 192
       0     1756        M 0x8000073c scfgw   a2, a3                 #; a2  = 2, a3  = 64
       0     1765        M 0x80000740 scfgw   a1, a4                 #; a1  = 8, a4  = 192
       0     1766        M 0x80000744 li      a3, 1                  #; (wrb) a3  <-- 1
       0     1767        M 0x80000748 li      a4, 96                 #; (wrb) a4  <-- 96
       0     1768        M 0x8000074c li      a5, 224                #; (wrb) a5  <-- 224
       0     1777        M 0x80000750 scfgw   a3, a4                 #; a3  = 1, a4  = 96
       0     1778        M 0x80000754 scfgw   a1, a5                 #; a1  = 8, a5  = 224
       0     1779        M 0x80000758 li      a1, 32                 #; (wrb) a1  <-- 32
       0     1780        M 0x8000075c scfgw   zero, a1               #; a1  = 32, (acc) ra  <-- 0x00b020ab
       0     1789        M 0x80000760 scfgwi  a0, 800                #; a0  = 0x00100000
       0     1791        M 0x80000764 csrrsi  a1, ssr, 1             #; 
       0     1792        M                                           #; (acc) gp  <-- 0x023071d3
       0     1793        M 0x80000768 fsgnj.d ft3, ft0, ft0          #; ft0  = 1.0, ft0  = 1.0
       0     1794        M                                           #; (f:fpu) ft3  <-- 1.0
       0     1795        M 0x8000076c fadd.d  ft3, ft0, ft3          #; ft0  = 2.0, ft3  = 1.0
       0     1798        M                                           #; (f:fpu) ft3  <-- 3.0
       0     1803        M 0x80000770 fadd.d  ft3, ft3, ft0          #; ft3  = 3.0, ft0  = 3.0
       0     1806        M                                           #; (f:fpu) ft3  <-- 6.0
       0     1807        M 0x80000774 fadd.d  ft3, ft3, ft0          #; ft3  = 6.0, ft0  = 4.0
       0     1810        M                                           #; (f:fpu) ft3  <-- 10.0
       0     1811        M 0x80000778 fadd.d  ft3, ft3, ft0          #; ft3  = 10.0, ft0  = 5.0
       0     1812        M 0x8000077c fsgnj.d ft4, ft0, ft0          #; ft0  = 6.0, ft0  = 6.0
       0     1813        M                                           #; (f:fpu) ft4  <-- 6.0
       0     1814        M 0x80000784 li      a1, 24                 #; (wrb) a1  <-- 24
                         M 0x80000780 csrrci  a1, ssr, 1             #; (f:fpu) ft3  <-- 15.0
       0     1815        M 0x80000788 li      a4, 64                 #; (wrb) a4  <-- 64
       0     1816        M 0x8000078c li      a5, 192                #; (wrb) a5  <-- 192
       0     1825        M 0x80000790 scfgw   a3, a4                 #; a3  = 1, a4  = 64
       0     1826        M 0x80000794 scfgw   a1, a5                 #; a1  = 24, a5  = 192
       0     1827        M 0x80000798 li      a1, -16                #; (wrb) a1  <-- -16
       0     1828        M 0x8000079c li      a3, 96                 #; (wrb) a3  <-- 96
       0     1837        M 0x800007a0 li      a4, 224                #; (wrb) a4  <-- 224
       0     1838        M 0x800007a4 scfgw   a2, a3                 #; a2  = 2, a3  = 96
       0     1839        M 0x800007a8 scfgw   a1, a4                 #; a1  = -16, a4  = 224
       0     1840        M 0x800007ac li      a1, 32                 #; (wrb) a1  <-- 32
       0     1849        M 0x800007b0 scfgw   zero, a1               #; a1  = 32
       0     1850        M 0x800007b4 scfgwi  a0, 800                #; a0  = 0x00100000
       0     1852        M                                           #; (acc) t0  <-- 0x220002d3
                         M 0x800007b8 csrrsi  a1, ssr, 1             #; 
       0     1854        M 0x800007bc fsgnj.d ft5, ft0, ft0          #; ft0  = 1.0, ft0  = 1.0
       0     1855        M                                           #; (f:fpu) ft5  <-- 1.0
       0     1863        M 0x800007c0 fadd.d  ft3, ft3, ft4          #; ft3  = 15.0, ft4  = 6.0
       0     1864        M 0x800007c4 fadd.d  ft4, ft0, ft5          #; ft0  = 4.0, ft5  = 1.0
       0     1866        M                                           #; (f:fpu) ft3  <-- 21.0
       0     1867        M                                           #; (f:fpu) ft4  <-- 5.0
       0     1868        M 0x800007c8 fadd.d  ft4, ft4, ft0          #; ft4  = 5.0, ft0  = 2.0
       0     1871        M                                           #; (f:fpu) ft4  <-- 7.0
       0     1872        M 0x800007cc fadd.d  ft5, ft4, ft0          #; ft4  = 7.0, ft0  = 5.0
       0     1875        M 0x800007d0 fsgnj.d fa2, ft0, ft0          #; ft0  = 3.0, ft0  = 3.0, (f:fpu) ft5  <-- 12.0
       0     1876        M 0x800007d4 fsgnj.d fa3, ft0, ft0          #; ft0  = 6.0, ft0  = 6.0, (f:fpu) fa2  <-- 3.0
       0     1877        M 0x800007d8 csrrci  a1, ssr, 1             #; (f:fpu) fa3  <-- 6.0
       0     1879        M 0x800007dc fld     ft4, 24(a0)            #; ft4  <~~ Doub[0x00100018]
       0     1880        M                                           #; (f:lsu) ft4  <-- 4.0
       0     1887        M 0x800007e0 fld     ft6, 32(a0)            #; ft6  <~~ Doub[0x00100020]
       0     1888        M 0x800007e4 fld     ft7, 40(a0)            #; ft7  <~~ Doub[0x00100028], (f:lsu) ft6  <-- 5.0
       0     1889        M 0x800007e8 fld     fa0, 8(a0)             #; fa0  <~~ Doub[0x00100008], (f:lsu) ft7  <-- 6.0
       0     1890        M 0x800007ec fld     fa1, 16(a0)            #; fa1  <~~ Doub[0x00100010], (f:lsu) fa0  <-- 2.0
       0     1891        M                                           #; (f:lsu) fa1  <-- 3.0
       0     1899        M 0x800007f0 fadd.d  ft5, ft5, fa2          #; ft5  = 12.0, fa2  = 3.0
       0     1900        M 0x800007fc j       pc + 0xa0              #; goto 0x8000089c
       0     1902        M                                           #; (f:fpu) ft5  <-- 15.0
       0     1903        M 0x800007f4 fadd.d  ft5, ft5, fa3          #; ft5  = 15.0, fa3  = 6.0
       0     1904        M 0x800007f8 fadd.d  ft3, ft3, ft3          #; ft3  = 21.0, ft3  = 21.0
       0     1906        M                                           #; (f:fpu) ft5  <-- 21.0
       0     1907        M                                           #; (f:fpu) ft3  <-- 42.0
       0     1911        M 0x8000089c fld     fa2, 0(a0)             #; fa2  <~~ Doub[0x00100000]
       0     1912        M                                           #; (f:lsu) fa2  <-- 1.0
       0     1923        M 0x800008a0 fadd.d  ft4, ft5, ft4          #; ft5  = 21.0, ft4  = 4.0
       0     1926        M                                           #; (f:fpu) ft4  <-- 25.0
       0     1927        M 0x800008a4 fadd.d  ft4, ft4, ft6          #; ft4  = 25.0, ft6  = 5.0
       0     1930        M                                           #; (f:fpu) ft4  <-- 30.0
       0     1931        M 0x800008a8 fadd.d  ft4, ft4, ft7          #; ft4  = 30.0, ft7  = 6.0
       0     1934        M                                           #; (f:fpu) ft4  <-- 36.0
       0     1935        M 0x800008ac fadd.d  ft4, ft4, fa2          #; ft4  = 36.0, fa2  = 1.0
       0     1938        M                                           #; (f:fpu) ft4  <-- 37.0
       0     1939        M 0x800008b0 fadd.d  ft4, ft4, fa0          #; ft4  = 37.0, fa0  = 2.0
       0     1942        M                                           #; (f:fpu) ft4  <-- 39.0
       0     1943        M 0x800008b4 fadd.d  ft4, ft4, fa1          #; ft4  = 39.0, fa1  = 3.0
       0     1946        M 0x800008c4 lw      a2, 8(sp)              #; sp  = 0x0011ff40, a2  <~~ Word[0x0011ff48]
                         M                                           #; (f:fpu) ft4  <-- 42.0
       0     1947        M 0x800008b8 fsub.d  ft3, ft3, ft4          #; ft3  = 42.0, ft4  = 42.0
       0     1949        M                                           #; (lsu) a2  <-- 0
       0     1950        M 0x800008c8 lw      a3, 12(sp)             #; sp  = 0x0011ff40, a3  <~~ Word[0x0011ff4c]
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     1951        M 0x800008cc auipc   a0, 0x2                #; (wrb) a0  <-- 0x800028cc
                         M 0x800008bc fsgnjx.d fs0, ft3, ft3         #; ft3  = 0.0, ft3  = 0.0
       0     1952        M                                           #; (f:fpu) fs0  <-- 0.0
       0     1953        M                                           #; (lsu) a3  <-- 0
                         M 0x800008c0 fsd     fs0, 8(sp)             #; 0.0 ~~> Doub[0x0011ff48]
       0     1957        M 0x800008d0 addi    a0, a0, 873            #; a0  = 0x800028cc, (wrb) a0  <-- 0x80002c35
       0     1958        M 0x800008d4 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800008d4
       0     1959        M 0x800008d8 jalr    ra, ra, 40             #; ra  = 0x800008d4, (wrb) ra  <-- 0x800008dc, goto 0x800008fc
       0     1962        M 0x800008fc addi    sp, sp, -48            #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff10
       0     1965        M 0x80000900 sw      ra, 12(sp)             #; sp  = 0x0011ff10, 0x800008dc ~~> Word[0x0011ff1c]
       0     1966        M 0x80000904 mv      t0, a0                 #; a0  = 0x80002c35, (wrb) t0  <-- 0x80002c35
       0     1967        M 0x80000908 sw      a7, 44(sp)             #; sp  = 0x0011ff10, 0xffff0000 ~~> Word[0x0011ff3c]
       0     1968        M 0x8000090c sw      a6, 40(sp)             #; sp  = 0x0011ff10, 0x00120000 ~~> Word[0x0011ff38]
       0     1977        M 0x80000910 sw      a5, 36(sp)             #; sp  = 0x0011ff10, 192 ~~> Word[0x0011ff34]
       0     1978        M 0x80000914 sw      a4, 32(sp)             #; sp  = 0x0011ff10, 224 ~~> Word[0x0011ff30]
       0     1979        M 0x80000918 sw      a3, 28(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff2c]
       0     1980        M 0x8000091c sw      a2, 24(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff28]
       0     1989        M 0x80000920 sw      a1, 20(sp)             #; sp  = 0x0011ff10, 32 ~~> Word[0x0011ff24]
       0     1990        M 0x80000924 addi    a0, sp, 20             #; sp  = 0x0011ff10, (wrb) a0  <-- 0x0011ff24
       0     1991        M 0x80000928 sw      a0, 8(sp)              #; sp  = 0x0011ff10, 0x0011ff24 ~~> Word[0x0011ff18]
       0     1992        M 0x8000092c auipc   a0, 0x1                #; (wrb) a0  <-- 0x8000192c
       0     2001        M 0x80000930 addi    a0, a0, -988           #; a0  = 0x8000192c, (wrb) a0  <-- 0x80001550
       0     2002        M 0x80000934 addi    a1, sp, 7              #; sp  = 0x0011ff10, (wrb) a1  <-- 0x0011ff17
       0     2003        M 0x80000938 li      a2, -1                 #; (wrb) a2  <-- -1
       0     2004        M 0x8000093c addi    a4, sp, 20             #; sp  = 0x0011ff10, (wrb) a4  <-- 0x0011ff24
       0     2013        M 0x80000940 mv      a3, t0                 #; t0  = 0x80002c35, (wrb) a3  <-- 0x80002c35
       0     2014        M 0x80000944 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000944
       0     2015        M 0x80000948 jalr    ra, ra, 20             #; ra  = 0x80000944, (wrb) ra  <-- 0x8000094c, goto 0x80000958
       0     2025        M 0x80000958 addi    sp, sp, -112           #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011fea0
       0     2026        M 0x8000095c sw      ra, 108(sp)            #; sp  = 0x0011fea0, 0x8000094c ~~> Word[0x0011ff0c]
       0     2037        M 0x80000960 sw      s0, 104(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff08]
       0     2038        M 0x80000964 sw      s1, 100(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff04]
       0     2039        M 0x80000968 sw      s2, 96(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff00]
       0     2040        M 0x8000096c sw      s3, 92(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fefc]
       0     2049        M 0x80000970 sw      s4, 88(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef8]
       0     2050        M 0x80000974 sw      s5, 84(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef4]
       0     2051        M 0x80000978 sw      s6, 80(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef0]
       0     2052        M 0x8000097c sw      s7, 76(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011feec]
       0     2061        M 0x80000980 sw      s8, 72(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee8]
       0     2062        M 0x80000984 sw      s9, 68(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee4]
       0     2063        M 0x80000988 sw      s10, 64(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee0]
       0     2064        M 0x8000098c sw      s11, 60(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fedc]
       0     2073        M 0x80000990 mv      s3, a4                 #; a4  = 0x0011ff24, (wrb) s3  <-- 0x0011ff24
       0     2074        M 0x80000994 mv      s0, a3                 #; a3  = 0x80002c35, (wrb) s0  <-- 0x80002c35
       0     2075        M 0x80000998 mv      s5, a2                 #; a2  = -1, (wrb) s5  <-- -1
       0     2076        M 0x8000099c mv      s4, a1                 #; a1  = 0x0011ff17, (wrb) s4  <-- 0x0011ff17
       0     2085        M 0x800009a0 beqz    a1, pc + 12            #; a1  = 0x0011ff17, not taken
       0     2086        M 0x800009a4 mv      s2, a0                 #; a0  = 0x80001550, (wrb) s2  <-- 0x80001550
       0     2087        M 0x800009a8 j       pc + 0xc               #; goto 0x800009b4
       0     2097        M 0x800009b4 li      s8, 0                  #; (wrb) s8  <-- 0
       0     2098        M 0x800009b8 li      s6, 37                 #; (wrb) s6  <-- 37
       0     2099        M 0x800009bc li      s11, 16                #; (wrb) s11 <-- 16
       0     2109        M 0x800009c0 li      s7, 46                 #; (wrb) s7  <-- 46
       0     2110        M 0x800009c4 lui     a0, 0x1                #; (wrb) a0  <-- 4096
       0     2111        M 0x800009c8 addi    a0, a0, -2048          #; a0  = 4096, (wrb) a0  <-- 2048
       0     2112        M 0x800009cc sw      a0, 24(sp)             #; sp  = 0x0011fea0, 2048 ~~> Word[0x0011feb8]
       0     2121        M 0x800009d0 lui     a0, 0x10               #; (wrb) a0  <-- 0x00010000
       0     2122        M 0x800009d4 addi    a0, a0, -1             #; a0  = 0x00010000, (wrb) a0  <-- 65535
       0     2123        M 0x800009d8 sw      a0, 16(sp)             #; sp  = 0x0011fea0, 65535 ~~> Word[0x0011feb0]
       0     2124        M 0x800009dc addi    s10, s0, 2             #; s0  = 0x80002c35, (wrb) s10 <-- 0x80002c37
       0     2133        M 0x800009e0 mv      s9, s8                 #; s8  = 0, (wrb) s9  <-- 0
       0     2134        M 0x800009e4 li      s8, 10                 #; (wrb) s8  <-- 10
       0     2135        M 0x800009e8 lbu     a0, 0(s0)              #; s0  = 0x80002c35, a0  <~~ Byte[0x80002c35]
       0     2146        M                                           #; (lsu) a0  <-- 101
       0     2147        M 0x800009ec beqz    a0, pc + 2824          #; a0  = 101, not taken
       0     2148        M 0x800009f0 beq     a0, s6, pc + 48        #; a0  = 101, s6  = 37, not taken
       0     2149        M 0x800009f4 addi    s1, s9, 1              #; s9  = 0, (wrb) s1  <-- 1
       0     2150        M 0x800009f8 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     2151        M 0x800009fc mv      a2, s9                 #; s9  = 0, (wrb) a2  <-- 0
       0     2160        M 0x80000a00 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2161        M 0x80000a04 jalr    s2                     #; s2  = 0x80001550, (wrb) ra  <-- 0x80000a08, goto 0x80001550
       0     2183        M 0x80001550 beqz    a0, pc + 168           #; a0  = 101, not taken
       0     2184        M 0x80001554 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2185        M 0x80001558 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2186        M 0x8000155c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2195        M 0x80001560 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003560
       0     2196        M 0x80001564 addi    a3, a3, -1428          #; a3  = 0x80003560, (wrb) a3  <-- 0x80002fcc
       0     2197        M 0x80001568 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fcc, (wrb) a1  <-- 0x80002fcc
       0     2198        M 0x8000156c lw      a4, 0(a1)              #; a1  = 0x80002fcc, a4  <~~ Word[0x80002fcc]
       0     2209        M                                           #; (lsu) a4  <-- 0
       0     2210        M 0x80001570 addi    a5, a4, 1              #; a4  = 0, (wrb) a5  <-- 1
       0     2211        M 0x80001574 sw      a5, 0(a1)              #; a1  = 0x80002fcc, 1 ~~> Word[0x80002fcc]
       0     2212        M 0x80001578 add     a4, a1, a4             #; a1  = 0x80002fcc, a4  = 0, (wrb) a4  <-- 0x80002fcc
       0     2213        M 0x8000157c sb      a0, 72(a4)             #; a4  = 0x80002fcc, 101 ~~> Byte[0x80003014]
       0     2219        M 0x80001580 lw      a4, 0(a1)              #; a1  = 0x80002fcc, a4  <~~ Word[0x80002fcc]
       0     2235        M                                           #; (lsu) a4  <-- 1
       0     2236        M 0x80001584 addi    a4, a4, -1020          #; a4  = 1, (wrb) a4  <-- -1019
       0     2237        M 0x80001588 snez    a4, a4                 #; a4  = -1019, (wrb) a4  <-- 1
       0     2238        M 0x8000158c addi    a0, a0, -10            #; a0  = 101, (wrb) a0  <-- 91
       0     2239        M 0x80001590 snez    a0, a0                 #; a0  = 91, (wrb) a0  <-- 1
       0     2240        M 0x80001594 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2241        M 0x80001598 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015f8
       0     2262        M 0x800015f8 ret                            #; ra  = 0x80000a08, goto 0x80000a08
       0     2276        M 0x80000a08 addi    s0, s0, 1              #; s0  = 0x80002c35, (wrb) s0  <-- 0x80002c36
       0     2277        M 0x80000a0c addi    s10, s10, 1            #; s10 = 0x80002c37, (wrb) s10 <-- 0x80002c38
       0     2279        M 0x80000a10 mv      s9, s1                 #; s1  = 1, (wrb) s9  <-- 1
       0     2280        M 0x80000a14 lbu     a0, 0(s0)              #; s0  = 0x80002c36, a0  <~~ Byte[0x80002c36]
       0     2291        M                                           #; (lsu) a0  <-- 114
       0     2292        M 0x80000a18 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x800009f0
       0     2293        M 0x800009f0 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     2294        M 0x800009f4 addi    s1, s9, 1              #; s9  = 1, (wrb) s1  <-- 2
       0     2295        M 0x800009f8 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     2296        M 0x800009fc mv      a2, s9                 #; s9  = 1, (wrb) a2  <-- 1
       0     2297        M 0x80000a00 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2298        M 0x80000a04 jalr    s2                     #; s2  = 0x80001550, (wrb) ra  <-- 0x80000a08, goto 0x80001550
       0     2301        M 0x80001550 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     2302        M 0x80001554 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2303        M 0x80001558 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2304        M 0x8000155c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2305        M 0x80001560 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003560
       0     2306        M 0x80001564 addi    a3, a3, -1428          #; a3  = 0x80003560, (wrb) a3  <-- 0x80002fcc
       0     2307        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2308        M 0x80001568 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fcc, (wrb) a1  <-- 0x80002fcc
       0     2309        M 0x8000156c lw      a4, 0(a1)              #; a1  = 0x80002fcc, a4  <~~ Word[0x80002fcc]
       0     2320        M                                           #; (lsu) a4  <-- 1
       0     2321        M 0x80001570 addi    a5, a4, 1              #; a4  = 1, (wrb) a5  <-- 2
       0     2322        M 0x80001574 sw      a5, 0(a1)              #; a1  = 0x80002fcc, 2 ~~> Word[0x80002fcc]
       0     2323        M 0x80001578 add     a4, a1, a4             #; a1  = 0x80002fcc, a4  = 1, (wrb) a4  <-- 0x80002fcd
       0     2324        M 0x8000157c sb      a0, 72(a4)             #; a4  = 0x80002fcd, 114 ~~> Byte[0x80003015]
       0     2325        M 0x80001580 lw      a4, 0(a1)              #; a1  = 0x80002fcc, a4  <~~ Word[0x80002fcc]
       0     2346        M                                           #; (lsu) a4  <-- 2
       0     2347        M 0x80001584 addi    a4, a4, -1020          #; a4  = 2, (wrb) a4  <-- -1018
       0     2348        M 0x80001588 snez    a4, a4                 #; a4  = -1018, (wrb) a4  <-- 1
       0     2349        M 0x8000158c addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     2350        M 0x80001590 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     2351        M 0x80001594 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2352        M 0x80001598 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015f8
       0     2355        M 0x800015f8 ret                            #; ra  = 0x80000a08, goto 0x80000a08
       0     2360        M 0x80000a08 addi    s0, s0, 1              #; s0  = 0x80002c36, (wrb) s0  <-- 0x80002c37
       0     2361        M 0x80000a0c addi    s10, s10, 1            #; s10 = 0x80002c38, (wrb) s10 <-- 0x80002c39
       0     2363        M 0x80000a10 mv      s9, s1                 #; s1  = 2, (wrb) s9  <-- 2
       0     2364        M 0x80000a14 lbu     a0, 0(s0)              #; s0  = 0x80002c37, a0  <~~ Byte[0x80002c37]
       0     2375        M                                           #; (lsu) a0  <-- 114
       0     2376        M 0x80000a18 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x800009f0
       0     2377        M 0x800009f0 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     2378        M 0x800009f4 addi    s1, s9, 1              #; s9  = 2, (wrb) s1  <-- 3
       0     2379        M 0x800009f8 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     2380        M 0x800009fc mv      a2, s9                 #; s9  = 2, (wrb) a2  <-- 2
       0     2381        M 0x80000a00 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2382        M 0x80000a04 jalr    s2                     #; s2  = 0x80001550, (wrb) ra  <-- 0x80000a08, goto 0x80001550
       0     2385        M 0x80001550 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     2386        M 0x80001554 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2387        M 0x80001558 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2388        M 0x8000155c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2389        M 0x80001560 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003560
       0     2390        M 0x80001564 addi    a3, a3, -1428          #; a3  = 0x80003560, (wrb) a3  <-- 0x80002fcc
       0     2391        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2392        M 0x80001568 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fcc, (wrb) a1  <-- 0x80002fcc
       0     2393        M 0x8000156c lw      a4, 0(a1)              #; a1  = 0x80002fcc, a4  <~~ Word[0x80002fcc]
       0     2404        M                                           #; (lsu) a4  <-- 2
       0     2405        M 0x80001570 addi    a5, a4, 1              #; a4  = 2, (wrb) a5  <-- 3
       0     2406        M 0x80001574 sw      a5, 0(a1)              #; a1  = 0x80002fcc, 3 ~~> Word[0x80002fcc]
       0     2407        M 0x80001578 add     a4, a1, a4             #; a1  = 0x80002fcc, a4  = 2, (wrb) a4  <-- 0x80002fce
       0     2408        M 0x8000157c sb      a0, 72(a4)             #; a4  = 0x80002fce, 114 ~~> Byte[0x80003016]
       0     2409        M 0x80001580 lw      a4, 0(a1)              #; a1  = 0x80002fcc, a4  <~~ Word[0x80002fcc]
       0     2430        M                                           #; (lsu) a4  <-- 3
       0     2431        M 0x80001584 addi    a4, a4, -1020          #; a4  = 3, (wrb) a4  <-- -1017
       0     2432        M 0x80001588 snez    a4, a4                 #; a4  = -1017, (wrb) a4  <-- 1
       0     2433        M 0x8000158c addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     2434        M 0x80001590 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     2435        M 0x80001594 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2436        M 0x80001598 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015f8
       0     2439        M 0x800015f8 ret                            #; ra  = 0x80000a08, goto 0x80000a08
       0     2444        M 0x80000a08 addi    s0, s0, 1              #; s0  = 0x80002c37, (wrb) s0  <-- 0x80002c38
       0     2445        M 0x80000a0c addi    s10, s10, 1            #; s10 = 0x80002c39, (wrb) s10 <-- 0x80002c3a
       0     2447        M 0x80000a10 mv      s9, s1                 #; s1  = 3, (wrb) s9  <-- 3
       0     2448        M 0x80000a14 lbu     a0, 0(s0)              #; s0  = 0x80002c38, a0  <~~ Byte[0x80002c38]
       0     2459        M                                           #; (lsu) a0  <-- 111
       0     2460        M 0x80000a18 bnez    a0, pc - 40            #; a0  = 111, taken, goto 0x800009f0
       0     2461        M 0x800009f0 beq     a0, s6, pc + 48        #; a0  = 111, s6  = 37, not taken
       0     2462        M 0x800009f4 addi    s1, s9, 1              #; s9  = 3, (wrb) s1  <-- 4
       0     2463        M 0x800009f8 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     2464        M 0x800009fc mv      a2, s9                 #; s9  = 3, (wrb) a2  <-- 3
       0     2465        M 0x80000a00 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2466        M 0x80000a04 jalr    s2                     #; s2  = 0x80001550, (wrb) ra  <-- 0x80000a08, goto 0x80001550
       0     2469        M 0x80001550 beqz    a0, pc + 168           #; a0  = 111, not taken
       0     2470        M 0x80001554 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2471        M 0x80001558 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2472        M 0x8000155c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2473        M 0x80001560 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003560
       0     2474        M 0x80001564 addi    a3, a3, -1428          #; a3  = 0x80003560, (wrb) a3  <-- 0x80002fcc
       0     2475        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2476        M 0x80001568 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fcc, (wrb) a1  <-- 0x80002fcc
       0     2477        M 0x8000156c lw      a4, 0(a1)              #; a1  = 0x80002fcc, a4  <~~ Word[0x80002fcc]
       0     2488        M                                           #; (lsu) a4  <-- 3
       0     2489        M 0x80001570 addi    a5, a4, 1              #; a4  = 3, (wrb) a5  <-- 4
       0     2490        M 0x80001574 sw      a5, 0(a1)              #; a1  = 0x80002fcc, 4 ~~> Word[0x80002fcc]
       0     2491        M 0x80001578 add     a4, a1, a4             #; a1  = 0x80002fcc, a4  = 3, (wrb) a4  <-- 0x80002fcf
       0     2492        M 0x8000157c sb      a0, 72(a4)             #; a4  = 0x80002fcf, 111 ~~> Byte[0x80003017]
       0     2493        M 0x80001580 lw      a4, 0(a1)              #; a1  = 0x80002fcc, a4  <~~ Word[0x80002fcc]
       0     2514        M                                           #; (lsu) a4  <-- 4
       0     2515        M 0x80001584 addi    a4, a4, -1020          #; a4  = 4, (wrb) a4  <-- -1016
       0     2516        M 0x80001588 snez    a4, a4                 #; a4  = -1016, (wrb) a4  <-- 1
       0     2517        M 0x8000158c addi    a0, a0, -10            #; a0  = 111, (wrb) a0  <-- 101
       0     2518        M 0x80001590 snez    a0, a0                 #; a0  = 101, (wrb) a0  <-- 1
       0     2519        M 0x80001594 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2520        M 0x80001598 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015f8
       0     2523        M 0x800015f8 ret                            #; ra  = 0x80000a08, goto 0x80000a08
       0     2528        M 0x80000a08 addi    s0, s0, 1              #; s0  = 0x80002c38, (wrb) s0  <-- 0x80002c39
       0     2529        M 0x80000a0c addi    s10, s10, 1            #; s10 = 0x80002c3a, (wrb) s10 <-- 0x80002c3b
       0     2531        M 0x80000a10 mv      s9, s1                 #; s1  = 4, (wrb) s9  <-- 4
       0     2532        M 0x80000a14 lbu     a0, 0(s0)              #; s0  = 0x80002c39, a0  <~~ Byte[0x80002c39]
       0     2543        M                                           #; (lsu) a0  <-- 114
       0     2544        M 0x80000a18 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x800009f0
       0     2545        M 0x800009f0 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     2546        M 0x800009f4 addi    s1, s9, 1              #; s9  = 4, (wrb) s1  <-- 5
       0     2547        M 0x800009f8 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     2548        M 0x800009fc mv      a2, s9                 #; s9  = 4, (wrb) a2  <-- 4
       0     2549        M 0x80000a00 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2550        M 0x80000a04 jalr    s2                     #; s2  = 0x80001550, (wrb) ra  <-- 0x80000a08, goto 0x80001550
       0     2553        M 0x80001550 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     2554        M 0x80001554 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2555        M 0x80001558 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2556        M 0x8000155c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2557        M 0x80001560 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003560
       0     2558        M 0x80001564 addi    a3, a3, -1428          #; a3  = 0x80003560, (wrb) a3  <-- 0x80002fcc
       0     2559        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2560        M 0x80001568 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fcc, (wrb) a1  <-- 0x80002fcc
       0     2561        M 0x8000156c lw      a4, 0(a1)              #; a1  = 0x80002fcc, a4  <~~ Word[0x80002fcc]
       0     2572        M                                           #; (lsu) a4  <-- 4
       0     2573        M 0x80001570 addi    a5, a4, 1              #; a4  = 4, (wrb) a5  <-- 5
       0     2574        M 0x80001574 sw      a5, 0(a1)              #; a1  = 0x80002fcc, 5 ~~> Word[0x80002fcc]
       0     2575        M 0x80001578 add     a4, a1, a4             #; a1  = 0x80002fcc, a4  = 4, (wrb) a4  <-- 0x80002fd0
       0     2576        M 0x8000157c sb      a0, 72(a4)             #; a4  = 0x80002fd0, 114 ~~> Byte[0x80003018]
       0     2577        M 0x80001580 lw      a4, 0(a1)              #; a1  = 0x80002fcc, a4  <~~ Word[0x80002fcc]
       0     2598        M                                           #; (lsu) a4  <-- 5
       0     2599        M 0x80001584 addi    a4, a4, -1020          #; a4  = 5, (wrb) a4  <-- -1015
       0     2600        M 0x80001588 snez    a4, a4                 #; a4  = -1015, (wrb) a4  <-- 1
       0     2601        M 0x8000158c addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     2602        M 0x80001590 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     2603        M 0x80001594 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2604        M 0x80001598 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015f8
       0     2607        M 0x800015f8 ret                            #; ra  = 0x80000a08, goto 0x80000a08
       0     2612        M 0x80000a08 addi    s0, s0, 1              #; s0  = 0x80002c39, (wrb) s0  <-- 0x80002c3a
       0     2613        M 0x80000a0c addi    s10, s10, 1            #; s10 = 0x80002c3b, (wrb) s10 <-- 0x80002c3c
       0     2615        M 0x80000a10 mv      s9, s1                 #; s1  = 5, (wrb) s9  <-- 5
       0     2616        M 0x80000a14 lbu     a0, 0(s0)              #; s0  = 0x80002c3a, a0  <~~ Byte[0x80002c3a]
       0     2627        M                                           #; (lsu) a0  <-- 32
       0     2628        M 0x80000a18 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x800009f0
       0     2629        M 0x800009f0 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     2630        M 0x800009f4 addi    s1, s9, 1              #; s9  = 5, (wrb) s1  <-- 6
       0     2631        M 0x800009f8 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     2632        M 0x800009fc mv      a2, s9                 #; s9  = 5, (wrb) a2  <-- 5
       0     2633        M 0x80000a00 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2634        M 0x80000a04 jalr    s2                     #; s2  = 0x80001550, (wrb) ra  <-- 0x80000a08, goto 0x80001550
       0     2637        M 0x80001550 beqz    a0, pc + 168           #; a0  = 32, not taken
       0     2638        M 0x80001554 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2639        M 0x80001558 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2640        M 0x8000155c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2641        M 0x80001560 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003560
       0     2642        M 0x80001564 addi    a3, a3, -1428          #; a3  = 0x80003560, (wrb) a3  <-- 0x80002fcc
       0     2643        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2644        M 0x80001568 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fcc, (wrb) a1  <-- 0x80002fcc
       0     2645        M 0x8000156c lw      a4, 0(a1)              #; a1  = 0x80002fcc, a4  <~~ Word[0x80002fcc]
       0     2656        M                                           #; (lsu) a4  <-- 5
       0     2657        M 0x80001570 addi    a5, a4, 1              #; a4  = 5, (wrb) a5  <-- 6
       0     2658        M 0x80001574 sw      a5, 0(a1)              #; a1  = 0x80002fcc, 6 ~~> Word[0x80002fcc]
       0     2659        M 0x80001578 add     a4, a1, a4             #; a1  = 0x80002fcc, a4  = 5, (wrb) a4  <-- 0x80002fd1
       0     2660        M 0x8000157c sb      a0, 72(a4)             #; a4  = 0x80002fd1, 32 ~~> Byte[0x80003019]
       0     2661        M 0x80001580 lw      a4, 0(a1)              #; a1  = 0x80002fcc, a4  <~~ Word[0x80002fcc]
       0     2682        M                                           #; (lsu) a4  <-- 6
       0     2683        M 0x80001584 addi    a4, a4, -1020          #; a4  = 6, (wrb) a4  <-- -1014
       0     2684        M 0x80001588 snez    a4, a4                 #; a4  = -1014, (wrb) a4  <-- 1
       0     2685        M 0x8000158c addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
       0     2686        M 0x80001590 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
       0     2687        M 0x80001594 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2688        M 0x80001598 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015f8
       0     2691        M 0x800015f8 ret                            #; ra  = 0x80000a08, goto 0x80000a08
       0     2696        M 0x80000a08 addi    s0, s0, 1              #; s0  = 0x80002c3a, (wrb) s0  <-- 0x80002c3b
       0     2697        M 0x80000a0c addi    s10, s10, 1            #; s10 = 0x80002c3c, (wrb) s10 <-- 0x80002c3d
       0     2699        M 0x80000a10 mv      s9, s1                 #; s1  = 6, (wrb) s9  <-- 6
       0     2700        M 0x80000a14 lbu     a0, 0(s0)              #; s0  = 0x80002c3b, a0  <~~ Byte[0x80002c3b]
       0     2711        M                                           #; (lsu) a0  <-- 61
       0     2712        M 0x80000a18 bnez    a0, pc - 40            #; a0  = 61, taken, goto 0x800009f0
       0     2713        M 0x800009f0 beq     a0, s6, pc + 48        #; a0  = 61, s6  = 37, not taken
       0     2714        M 0x800009f4 addi    s1, s9, 1              #; s9  = 6, (wrb) s1  <-- 7
       0     2715        M 0x800009f8 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     2716        M 0x800009fc mv      a2, s9                 #; s9  = 6, (wrb) a2  <-- 6
       0     2717        M 0x80000a00 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2718        M 0x80000a04 jalr    s2                     #; s2  = 0x80001550, (wrb) ra  <-- 0x80000a08, goto 0x80001550
       0     2721        M 0x80001550 beqz    a0, pc + 168           #; a0  = 61, not taken
       0     2722        M 0x80001554 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2723        M 0x80001558 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2724        M 0x8000155c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2725        M 0x80001560 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003560
       0     2726        M 0x80001564 addi    a3, a3, -1428          #; a3  = 0x80003560, (wrb) a3  <-- 0x80002fcc
       0     2727        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2728        M 0x80001568 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fcc, (wrb) a1  <-- 0x80002fcc
       0     2729        M 0x8000156c lw      a4, 0(a1)              #; a1  = 0x80002fcc, a4  <~~ Word[0x80002fcc]
       0     2740        M                                           #; (lsu) a4  <-- 6
       0     2741        M 0x80001570 addi    a5, a4, 1              #; a4  = 6, (wrb) a5  <-- 7
       0     2742        M 0x80001574 sw      a5, 0(a1)              #; a1  = 0x80002fcc, 7 ~~> Word[0x80002fcc]
       0     2743        M 0x80001578 add     a4, a1, a4             #; a1  = 0x80002fcc, a4  = 6, (wrb) a4  <-- 0x80002fd2
       0     2744        M 0x8000157c sb      a0, 72(a4)             #; a4  = 0x80002fd2, 61 ~~> Byte[0x8000301a]
       0     2745        M 0x80001580 lw      a4, 0(a1)              #; a1  = 0x80002fcc, a4  <~~ Word[0x80002fcc]
       0     2766        M                                           #; (lsu) a4  <-- 7
       0     2767        M 0x80001584 addi    a4, a4, -1020          #; a4  = 7, (wrb) a4  <-- -1013
       0     2768        M 0x80001588 snez    a4, a4                 #; a4  = -1013, (wrb) a4  <-- 1
       0     2769        M 0x8000158c addi    a0, a0, -10            #; a0  = 61, (wrb) a0  <-- 51
       0     2770        M 0x80001590 snez    a0, a0                 #; a0  = 51, (wrb) a0  <-- 1
       0     2771        M 0x80001594 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2772        M 0x80001598 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015f8
       0     2775        M 0x800015f8 ret                            #; ra  = 0x80000a08, goto 0x80000a08
       0     2780        M 0x80000a08 addi    s0, s0, 1              #; s0  = 0x80002c3b, (wrb) s0  <-- 0x80002c3c
       0     2781        M 0x80000a0c addi    s10, s10, 1            #; s10 = 0x80002c3d, (wrb) s10 <-- 0x80002c3e
       0     2783        M 0x80000a10 mv      s9, s1                 #; s1  = 7, (wrb) s9  <-- 7
       0     2784        M 0x80000a14 lbu     a0, 0(s0)              #; s0  = 0x80002c3c, a0  <~~ Byte[0x80002c3c]
       0     2795        M                                           #; (lsu) a0  <-- 32
       0     2796        M 0x80000a18 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x800009f0
       0     2797        M 0x800009f0 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     2798        M 0x800009f4 addi    s1, s9, 1              #; s9  = 7, (wrb) s1  <-- 8
       0     2799        M 0x800009f8 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     2800        M 0x800009fc mv      a2, s9                 #; s9  = 7, (wrb) a2  <-- 7
       0     2801        M 0x80000a00 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2802        M 0x80000a04 jalr    s2                     #; s2  = 0x80001550, (wrb) ra  <-- 0x80000a08, goto 0x80001550
       0     2805        M 0x80001550 beqz    a0, pc + 168           #; a0  = 32, not taken
       0     2806        M 0x80001554 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2807        M 0x80001558 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2808        M 0x8000155c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2809        M 0x80001560 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003560
       0     2810        M 0x80001564 addi    a3, a3, -1428          #; a3  = 0x80003560, (wrb) a3  <-- 0x80002fcc
       0     2811        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2812        M 0x80001568 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fcc, (wrb) a1  <-- 0x80002fcc
       0     2813        M 0x8000156c lw      a4, 0(a1)              #; a1  = 0x80002fcc, a4  <~~ Word[0x80002fcc]
       0     2824        M                                           #; (lsu) a4  <-- 7
       0     2825        M 0x80001570 addi    a5, a4, 1              #; a4  = 7, (wrb) a5  <-- 8
       0     2826        M 0x80001574 sw      a5, 0(a1)              #; a1  = 0x80002fcc, 8 ~~> Word[0x80002fcc]
       0     2827        M 0x80001578 add     a4, a1, a4             #; a1  = 0x80002fcc, a4  = 7, (wrb) a4  <-- 0x80002fd3
       0     2828        M 0x8000157c sb      a0, 72(a4)             #; a4  = 0x80002fd3, 32 ~~> Byte[0x8000301b]
       0     2829        M 0x80001580 lw      a4, 0(a1)              #; a1  = 0x80002fcc, a4  <~~ Word[0x80002fcc]
       0     2850        M                                           #; (lsu) a4  <-- 8
       0     2851        M 0x80001584 addi    a4, a4, -1020          #; a4  = 8, (wrb) a4  <-- -1012
       0     2852        M 0x80001588 snez    a4, a4                 #; a4  = -1012, (wrb) a4  <-- 1
       0     2853        M 0x8000158c addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
       0     2854        M 0x80001590 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
       0     2855        M 0x80001594 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2856        M 0x80001598 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015f8
       0     2859        M 0x800015f8 ret                            #; ra  = 0x80000a08, goto 0x80000a08
       0     2864        M 0x80000a08 addi    s0, s0, 1              #; s0  = 0x80002c3c, (wrb) s0  <-- 0x80002c3d
       0     2865        M 0x80000a0c addi    s10, s10, 1            #; s10 = 0x80002c3e, (wrb) s10 <-- 0x80002c3f
       0     2867        M 0x80000a10 mv      s9, s1                 #; s1  = 8, (wrb) s9  <-- 8
       0     2868        M 0x80000a14 lbu     a0, 0(s0)              #; s0  = 0x80002c3d, a0  <~~ Byte[0x80002c3d]
       0     2879        M                                           #; (lsu) a0  <-- 37
       0     2880        M 0x80000a18 bnez    a0, pc - 40            #; a0  = 37, taken, goto 0x800009f0
       0     2881        M 0x800009f0 beq     a0, s6, pc + 48        #; a0  = 37, s6  = 37, taken, goto 0x80000a20
       0     2893        M 0x80000a20 li      s0, 0                  #; (wrb) s0  <-- 0
       0     2894        M 0x80000a24 j       pc + 0x10              #; goto 0x80000a34
       0     2905        M 0x80000a34 lbu     a0, -1(s10)            #; s10 = 0x80002c3f, a0  <~~ Byte[0x80002c3e]
       0     2916        M                                           #; (lsu) a0  <-- 102
       0     2917        M 0x80000a38 addi    a1, a0, -32            #; a0  = 102, (wrb) a1  <-- 70
       0     2918        M 0x80000a3c bltu    s11, a1, pc + 56       #; s11 = 16, a1  = 70, taken, goto 0x80000a74
       0     2930        M 0x80000a74 addi    a1, a0, -48            #; a0  = 102, (wrb) a1  <-- 54
       0     2931        M 0x80000a78 andi    a2, a1, 255            #; a1  = 54, (wrb) a2  <-- 54
       0     2932        M 0x80000a7c addi    a1, s10, -1            #; s10 = 0x80002c3f, (wrb) a1  <-- 0x80002c3e
       0     2942        M 0x80000a80 li      a3, 9                  #; (wrb) a3  <-- 9
       0     2943        M 0x80000a84 bltu    a3, a2, pc + 124       #; a3  = 9, a2  = 54, taken, goto 0x80000b00
       0     2965        M 0x80000b00 li      a2, 42                 #; (wrb) a2  <-- 42
       0     2966        M 0x80000b04 bne     a0, a2, pc + 80        #; a0  = 102, a2  = 42, taken, goto 0x80000b54
       0     2988        M 0x80000b54 li      s6, 0                  #; (wrb) s6  <-- 0
       0     2989        M 0x80000b58 mv      s10, a1                #; a1  = 0x80002c3e, (wrb) s10 <-- 0x80002c3e
       0     2990        M 0x80000b5c beq     a0, s7, pc - 164       #; a0  = 102, s7  = 46, not taken
       0     3011        M 0x80000b60 li      s7, 0                  #; (wrb) s7  <-- 0
       0     3012        M 0x80000b64 j       pc + 0xc               #; goto 0x80000b70
       0     3023        M 0x80000b70 addi    a1, a0, -104           #; a0  = 102, (wrb) a1  <-- -2
       0     3024        M 0x80000b74 srli    a2, a1, 1              #; a1  = -2, (wrb) a2  <-- 0x7fffffff
       0     3025        M 0x80000b78 slli    a1, a1, 31             #; a1  = -2, (wrb) a1  <-- 0
       0     3026        M 0x80000b7c or      a1, a1, a2             #; a1  = 0, a2  = 0x7fffffff, (wrb) a1  <-- 0x7fffffff
       0     3035        M 0x80000b80 li      a2, 9                  #; (wrb) a2  <-- 9
       0     3036        M 0x80000b84 bltu    a2, a1, pc + 100       #; a2  = 9, a1  = 0x7fffffff, taken, goto 0x80000be8
       0     3058        M 0x80000be8 addi    a1, a0, -37            #; a0  = 102, (wrb) a1  <-- 65
       0     3059        M 0x80000bec li      a2, 83                 #; (wrb) a2  <-- 83
       0     3070        M 0x80000bf0 bltu    a2, a1, pc + 264       #; a2  = 83, a1  = 65, not taken
       0     3071        M 0x80000bf4 slli    a1, a1, 2              #; a1  = 65, (wrb) a1  <-- 260
       0     3072        M 0x80000bf8 auipc   a2, 0x2                #; (wrb) a2  <-- 0x80002bf8
       0     3073        M 0x80000bfc addi    a2, a2, 188            #; a2  = 0x80002bf8, (wrb) a2  <-- 0x80002cb4
       0     3082        M 0x80000c00 add     a1, a1, a2             #; a1  = 260, a2  = 0x80002cb4, (wrb) a1  <-- 0x80002db8
       0     3083        M 0x80000c04 lw      a2, 0(a1)              #; a1  = 0x80002db8, a2  <~~ Word[0x80002db8]
       0     3084        M 0x80000c08 li      a1, 8                  #; (wrb) a1  <-- 8
       0     3085        M 0x80000c0c li      s8, 16                 #; (wrb) s8  <-- 16
       0     3094        M                                           #; (lsu) a2  <-- 0x80000c40
       0     3095        M 0x80000c10 jr      a2                     #; a2  = 0x80000c40, goto 0x80000c40
       0     3117        M 0x80000c40 li      a1, 70                 #; (wrb) a1  <-- 70
       0     3118        M 0x80000c44 bne     a0, a1, pc + 8         #; a0  = 102, a1  = 70, taken, goto 0x80000c4c
       0     3119        M 0x80000c4c addi    a0, s3, 7              #; s3  = 0x0011ff24, (wrb) a0  <-- 0x0011ff2b
       0     3129        M 0x80000c50 andi    a0, a0, -8             #; a0  = 0x0011ff2b, (wrb) a0  <-- 0x0011ff28
       0     3131        M 0x80000c58 addi    s3, a0, 8              #; a0  = 0x0011ff28, (wrb) s3  <-- 0x0011ff30
       0     3132        M 0x80000c5c mv      a0, s2                 #; s2  = 0x80001550, (wrb) a0  <-- 0x80001550
                         M 0x80000c54 fld     fa0, 0(a0)             #; fa0  <~~ Doub[0x0011ff28]
       0     3133        M                                           #; (f:lsu) fa0  <-- 0.0
       0     3141        M 0x80000c60 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     3142        M 0x80000c64 mv      a2, s9                 #; s9  = 8, (wrb) a2  <-- 8
       0     3143        M 0x80000c68 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3144        M 0x80000c6c mv      a4, s7                 #; s7  = 0, (wrb) a4  <-- 0
       0     3153        M 0x80000c70 mv      a5, s6                 #; s6  = 0, (wrb) a5  <-- 0
       0     3154        M 0x80000c74 mv      a6, s0                 #; s0  = 0, (wrb) a6  <-- 0
       0     3155        M 0x80000c78 auipc   ra, 0x1                #; (wrb) ra  <-- 0x80001c78
       0     3156        M 0x80000c7c jalr    ra, ra, -1656          #; ra  = 0x80001c78, (wrb) ra  <-- 0x80000c80, goto 0x80001600
       0     3167        M 0x80001600 addi    sp, sp, -112           #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011fe30
       0     3168        M 0x80001604 sw      ra, 108(sp)            #; sp  = 0x0011fe30, 0x80000c80 ~~> Word[0x0011fe9c]
       0     3169        M 0x80001608 sw      s0, 104(sp)            #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe98]
       0     3170        M 0x8000160c sw      s1, 100(sp)            #; sp  = 0x0011fe30, 8 ~~> Word[0x0011fe94]
       0     3179        M 0x80001610 sw      s2, 96(sp)             #; sp  = 0x0011fe30, 0x80001550 ~~> Word[0x0011fe90]
       0     3180        M 0x80001614 sw      s3, 92(sp)             #; sp  = 0x0011fe30, 0x0011ff30 ~~> Word[0x0011fe8c]
       0     3181        M 0x80001618 sw      s4, 88(sp)             #; sp  = 0x0011fe30, 0x0011ff17 ~~> Word[0x0011fe88]
       0     3182        M 0x8000161c sw      s5, 84(sp)             #; sp  = 0x0011fe30, -1 ~~> Word[0x0011fe84]
       0     3191        M 0x80001620 sw      s6, 80(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe80]
       0     3192        M 0x80001624 sw      s7, 76(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe7c]
       0     3193        M 0x80001628 sw      s8, 72(sp)             #; sp  = 0x0011fe30, 16 ~~> Word[0x0011fe78]
       0     3194        M 0x8000162c sw      s9, 68(sp)             #; sp  = 0x0011fe30, 8 ~~> Word[0x0011fe74]
       0     3203        M 0x80001630 sw      s10, 64(sp)            #; sp  = 0x0011fe30, 0x80002c3e ~~> Word[0x0011fe70]
       0     3206        M 0x80001634 fsd     fs0, 56(sp)            #; 0.0 ~~> Doub[0x0011fe68]
       0     3207        M 0x80001638 fsd     fs1, 48(sp)            #; 0.0 ~~> Doub[0x0011fe60]
       0     3208        M 0x8000163c fsd     fs2, 40(sp)            #; 0.0 ~~> Doub[0x0011fe58]
       0     3215        M 0x80001640 auipc   s1, 0x2                #; (wrb) s1  <-- 0x80003640
       0     3216        M 0x80001644 addi    s1, s1, -1824          #; s1  = 0x80003640, (wrb) s1  <-- 0x80002f20
       0     3219        M 0x80001648 fld     ft0, 0(s1)             #; ft0  <~~ Doub[0x80002f20]
       0     3227        M 0x80001650 mv      s5, a6                 #; a6  = 0, (wrb) s5  <-- 0
       0     3228        M 0x80001654 mv      s2, a5                 #; a5  = 0, (wrb) s2  <-- 0
                         M                                           #; (f:lsu) ft0  <-- -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     3229        M 0x80001658 mv      s3, a3                 #; a3  = -1, (wrb) s3  <-- -1
                         M 0x8000164c fle.d   s1, ft0, fa0           #; ft0  = -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000, fa0  = 0.0
       0     3230        M 0x8000165c mv      s4, a2                 #; a2  = 8, (wrb) s4  <-- 8
       0     3239        M 0x80001660 mv      s6, a1                 #; a1  = 0x0011ff17, (wrb) s6  <-- 0x0011ff17
       0     3240        M 0x80001664 mv      s7, a0                 #; a0  = 0x80001550, (wrb) s7  <-- 0x80001550
       0     3241        M 0x80001668 bnez    s1, pc + 240           #; s1  = 1, taken, goto 0x80001758
       0     3263        M 0x8000175c auipc   a0, 0x1                #; (wrb) a0  <-- 0x8000275c
       0     3264        M 0x80001758 fsgnj.d fs0, fa0, fa0          #; fa0  = 0.0, fa0  = 0.0
       0     3265        M                                           #; (f:fpu) fs0  <-- 0.0
       0     3274        M 0x80001760 addi    a0, a0, 1996           #; a0  = 0x8000275c, (wrb) a0  <-- 0x80002f28
       0     3277        M 0x80001764 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002f28]
       0     3286        M                                           #; (f:lsu) ft0  <-- 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     3287        M 0x80001768 fle.d   a0, fa0, ft0           #; fa0  = 0.0, ft0  = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     3289        M                                           #; (acc) t3  <-- 0x00051e63
       0     3290        M 0x8000176c bnez    a0, pc + 28            #; a0  = 1, taken, goto 0x80001788
       0     3302        M 0x80001788 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002788
       0     3303        M 0x8000178c addi    a0, a0, 1960           #; a0  = 0x80002788, (wrb) a0  <-- 0x80002f30
       0     3315        M 0x80001794 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002794
       0     3316        M 0x80001798 addi    a0, a0, 1956           #; a0  = 0x80002794, (wrb) a0  <-- 0x80002f38
                         M 0x80001790 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002f30]
       0     3319        M 0x8000179c fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80002f38]
       0     3325        M                                           #; (f:lsu) ft0  <-- 1000000000.0000000
       0     3327        M 0x800017a0 fle.d   a0, fs0, ft0           #; fs0  = 0.0, ft0  = 1000000000.0000000
       0     3328        M                                           #; (f:lsu) ft1  <-- -1000000000.0000000
       0     3329        M                                           #; (acc) a0  <-- 0x00b57533
                         M 0x800017a4 fle.d   a1, ft1, fs0           #; ft1  = -1000000000.0000000, fs0  = 0.0
       0     3331        M                                           #; (acc) a0  <-- 0x00b57533
       0     3332        M 0x800017a8 and     a0, a0, a1             #; a0  = 1, a1  = 1, (wrb) a0  <-- 1
       0     3333        M 0x800017ac bnez    a0, pc + 252           #; a0  = 1, taken, goto 0x800018a8
       0     3349        M 0x800018a8 andi    a0, s5, 1024           #; s5  = 0, (wrb) a0  <-- 0
       0     3350        M 0x800018ac li      s8, 6                  #; (wrb) s8  <-- 6
       0     3361        M 0x800018b0 beqz    a0, pc + 8             #; a0  = 0, taken, goto 0x800018b8
       0     3362        M 0x800018b8 li      a0, 10                 #; (wrb) a0  <-- 10
       0     3365        M 0x800018bc fsgnjx.d fs2, fs0, fs0         #; fs0  = 0.0, fs0  = 0.0
       0     3366        M                                           #; (f:fpu) fs2  <-- 0.0
       0     3373        M 0x800018c0 bltu    s8, a0, pc + 56        #; s8  = 6, a0  = 10, taken, goto 0x800018f8
       0     3396        M 0x800018f8 li      s0, 0                  #; (wrb) s0  <-- 0
       0     3397        M 0x800018fc slli    a0, s8, 3              #; s8  = 6, (wrb) a0  <-- 48
       0     3408        M 0x80001900 auipc   a1, 0x1                #; (wrb) a1  <-- 0x80002900
       0     3409        M 0x80001904 addi    a1, a1, 1288           #; a1  = 0x80002900, (wrb) a1  <-- 0x80002e08
       0     3410        M 0x80001908 add     a0, a0, a1             #; a0  = 48, a1  = 0x80002e08, (wrb) a0  <-- 0x80002e38
       0     3413        M 0x8000190c fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80002e38]
       0     3421        M 0x80001910 fcvt.w.d s1, fs2               #; fs2  = 0.0
       0     3422        M                                           #; (f:lsu) ft1  <-- 1000000.0000000
       0     3425        M 0x80001914 fcvt.d.w ft0, s1               #; ac1  = 0
       0     3426        M                                           #; (f:fpu) ft0  <-- 0.0
       0     3427        M 0x80001918 fsub.d  ft0, fs2, ft0          #; fs2  = 0.0, ft0  = 0.0
       0     3430        M                                           #; (f:fpu) ft0  <-- 0.0
       0     3431        M 0x8000191c fmul.d  ft2, ft1, ft0          #; ft1  = 1000000.0000000, ft0  = 0.0
       0     3432        M 0x80001920 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002920
       0     3433        M 0x80001924 addi    a0, a0, 1568           #; a0  = 0x80002920, (wrb) a0  <-- 0x80002f40
       0     3434        M                                           #; (f:fpu) ft2  <-- 0.0
       0     3436        M 0x80001928 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002f40]
       0     3437        M 0x8000192c fcvt.wu.d a0, ft2              #; ft2  = 0.0
       0     3445        M 0x80001930 fcvt.d.wu ft3, a0              #; ac1  = 0, (f:lsu) ft0  <-- 0.5
       0     3446        M                                           #; (f:fpu) ft3  <-- 0.0
       0     3447        M 0x80001934 fsub.d  ft2, ft2, ft3          #; ft2  = 0.0, ft3  = 0.0
       0     3450        M                                           #; (f:fpu) ft2  <-- 0.0
       0     3451        M 0x80001938 fle.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
       0     3454        M 0x8000193c bnez    a1, pc + 32            #; a1  = 1, taken, goto 0x8000195c
       0     3468        M 0x8000195c flt.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
       0     3479        M 0x80001960 bnez    a1, pc + 20            #; a1  = 1, taken, goto 0x80001974
       0     3492        M 0x80001978 beqz    s8, pc + 216           #; s8  = 6, not taken
                         M 0x80001974 fcvt.d.w fs1, zero             #; ac1  = 0
       0     3493        M 0x8000197c li      a2, 0                  #; (wrb) a2  <-- 0
                         M                                           #; (f:fpu) fs1  <-- 0.0
       0     3503        M 0x80001980 addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
       0     3504        M 0x80001984 add     t1, a1, s0             #; a1  = 0x0011fe38, s0  = 0, (wrb) t1  <-- 0x0011fe38
       0     3505        M 0x80001988 li      t0, 32                 #; (wrb) t0  <-- 32
       0     3506        M 0x8000198c sub     a4, t0, s0             #; t0  = 32, s0  = 0, (wrb) a4  <-- 32
       0     3515        M 0x80001990 lui     a1, 0xccccd            #; (wrb) a1  <-- 0xccccd000
       0     3516        M 0x80001994 addi    t2, a1, -819           #; a1  = 0xccccd000, (wrb) t2  <-- 0xcccccccd
       0     3517        M 0x80001998 li      a6, 10                 #; (wrb) a6  <-- 10
       0     3518        M 0x8000199c li      a7, 9                  #; (wrb) a7  <-- 9
       0     3527        M 0x800019a0 beq     a4, a2, pc + 200       #; a4  = 32, a2  = 0, not taken
       0     3528        M 0x800019a4 mv      a1, a0                 #; a0  = 0, (wrb) a1  <-- 0
       0     3529        M 0x800019a8 mulhu   a0, a0, t2             #; a0  = 0, t2  = 0xcccccccd
       0     3532        M                                           #; (acc) a0  <-- 0x00355513
       0     3533        M 0x800019ac srli    a0, a0, 3              #; a0  = 0, (wrb) a0  <-- 0
       0     3539        M 0x800019b0 mul     a3, a0, a6             #; a0  = 0, a6  = 10
       0     3542        M                                           #; (acc) a3  <-- 0x40d586b3
       0     3543        M 0x800019b4 sub     a3, a1, a3             #; a1  = 0, a3  = 0, (wrb) a3  <-- 0
       0     3544        M 0x800019b8 ori     a3, a3, 48             #; a3  = 0, (wrb) a3  <-- 48
       0     3545        M 0x800019bc add     a5, t1, a2             #; t1  = 0x0011fe38, a2  = 0, (wrb) a5  <-- 0x0011fe38
       0     3551        M 0x800019c0 sb      a3, 0(a5)              #; a5  = 0x0011fe38, 48 ~~> Byte[0x0011fe38]
       0     3552        M 0x800019c4 addi    a2, a2, 1              #; a2  = 0, (wrb) a2  <-- 1
       0     3553        M 0x800019c8 bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 0, not taken
       0     3554        M 0x800019cc add     a0, s0, a2             #; s0  = 0, a2  = 1, (wrb) a0  <-- 1
       0     3566        M 0x800019d0 addi    a1, a0, -1             #; a0  = 1, (wrb) a1  <-- 0
       0     3567        M 0x800019d4 li      a3, 30                 #; (wrb) a3  <-- 30
       0     3568        M 0x800019d8 sltu    a3, a3, a1             #; a3  = 30, a1  = 0, (wrb) a3  <-- 0
       0     3569        M 0x800019dc xor     a4, s8, a2             #; s8  = 6, a2  = 1, (wrb) a4  <-- 7
       0     3578        M 0x800019e0 seqz    a4, a4                 #; a4  = 7, (wrb) a4  <-- 0
       0     3579        M 0x800019e4 or      a3, a3, a4             #; a3  = 0, a4  = 0, (wrb) a3  <-- 0
       0     3580        M 0x800019e8 bnez    a3, pc + 136           #; a3  = 0, not taken
       0     3581        M 0x800019ec addi    a0, sp, 8              #; sp  = 0x0011fe30, (wrb) a0  <-- 0x0011fe38
       0     3590        M 0x800019f0 add     a0, a0, s0             #; a0  = 0x0011fe38, s0  = 0, (wrb) a0  <-- 0x0011fe38
       0     3591        M 0x800019f4 not     a1, a2                 #; a2  = 1, (wrb) a1  <-- -2
       0     3592        M 0x800019f8 add     s8, a1, s8             #; a1  = -2, s8  = 6, (wrb) s8  <-- 4
       0     3593        M 0x800019fc add     s0, s0, a2             #; s0  = 0, a2  = 1, (wrb) s0  <-- 1
       0     3602        M 0x80001a00 li      a1, 31                 #; (wrb) a1  <-- 31
       0     3603        M 0x80001a04 sub     a3, a1, s0             #; a1  = 31, s0  = 1, (wrb) a3  <-- 30
       0     3604        M 0x80001a08 add     a0, a0, a2             #; a0  = 0x0011fe38, a2  = 1, (wrb) a0  <-- 0x0011fe39
       0     3605        M 0x80001a0c mv      a1, s8                 #; s8  = 4, (wrb) a1  <-- 4
       0     3614        M 0x80001a10 bltu    s8, a3, pc + 8         #; s8  = 4, a3  = 30, taken, goto 0x80001a18
       0     3615        M 0x80001a18 addi    a2, a1, 1              #; a1  = 4, (wrb) a2  <-- 5
       0     3616        M 0x80001a1c li      a1, 48                 #; (wrb) a1  <-- 48
       0     3626        M 0x80001a20 auipc   ra, 0xfffff            #; (wrb) ra  <-- 0x80000a20
       0     3627        M 0x80001a24 jalr    ra, ra, -1224          #; ra  = 0x80000a20, (wrb) ra  <-- 0x80001a28, goto 0x80000558
       0     3649        M 0x80000558 li      t1, 15                 #; (wrb) t1  <-- 15
       0     3650        M 0x8000055c mv      a4, a0                 #; a0  = 0x0011fe39, (wrb) a4  <-- 0x0011fe39
       0     3661        M 0x80000560 bgeu    t1, a2, pc + 60        #; t1  = 15, a2  = 5, taken, goto 0x8000059c
       0     3684        M 0x8000059c sub     a3, t1, a2             #; t1  = 15, a2  = 5, (wrb) a3  <-- 10
       0     3696        M 0x800005a0 slli    a3, a3, 2              #; a3  = 10, (wrb) a3  <-- 40
       0     3697        M 0x800005a4 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800005a4
       0     3698        M 0x800005a8 add     a3, a3, t0             #; a3  = 40, t0  = 0x800005a4, (wrb) a3  <-- 0x800005cc
       0     3699        M 0x800005ac jalr    zero, a3, 12           #; a3  = 0x800005cc, goto 0x800005d8
       0     3719        M 0x800005d8 sb      a1, 4(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3d]
       0     3720        M 0x800005dc sb      a1, 3(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3c]
       0     3731        M 0x800005e0 sb      a1, 2(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3b]
       0     3732        M 0x800005e4 sb      a1, 1(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3a]
       0     3733        M 0x800005e8 sb      a1, 0(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe39]
       0     3734        M 0x800005ec ret                            #; ra  = 0x80001a28, goto 0x80001a28
       0     3745        M 0x80001a28 li      a0, 0                  #; (wrb) a0  <-- 0
       0     3746        M 0x80001a2c add     a1, s0, a0             #; s0  = 1, a0  = 0, (wrb) a1  <-- 1
       0     3748        M 0x80001a30 sltiu   a1, a1, 31             #; a1  = 1, (wrb) a1  <-- 1
       0     3749        M 0x80001a34 xor     a2, s8, a0             #; s8  = 4, a0  = 0, (wrb) a2  <-- 4
       0     3750        M 0x80001a38 snez    a2, a2                 #; a2  = 4, (wrb) a2  <-- 1
       0     3751        M 0x80001a3c and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     3760        M 0x80001a40 addi    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0     3761        M 0x80001a44 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001a2c
       0     3762        M 0x80001a2c add     a1, s0, a0             #; s0  = 1, a0  = 1, (wrb) a1  <-- 2
       0     3763        M 0x80001a30 sltiu   a1, a1, 31             #; a1  = 2, (wrb) a1  <-- 1
       0     3764        M 0x80001a34 xor     a2, s8, a0             #; s8  = 4, a0  = 1, (wrb) a2  <-- 5
       0     3765        M 0x80001a38 snez    a2, a2                 #; a2  = 5, (wrb) a2  <-- 1
       0     3766        M 0x80001a3c and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     3767        M 0x80001a40 addi    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 2
       0     3768        M 0x80001a44 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001a2c
       0     3769        M 0x80001a2c add     a1, s0, a0             #; s0  = 1, a0  = 2, (wrb) a1  <-- 3
       0     3770        M 0x80001a30 sltiu   a1, a1, 31             #; a1  = 3, (wrb) a1  <-- 1
       0     3771        M 0x80001a34 xor     a2, s8, a0             #; s8  = 4, a0  = 2, (wrb) a2  <-- 6
       0     3772        M 0x80001a38 snez    a2, a2                 #; a2  = 6, (wrb) a2  <-- 1
       0     3773        M 0x80001a3c and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     3774        M 0x80001a40 addi    a0, a0, 1              #; a0  = 2, (wrb) a0  <-- 3
       0     3775        M 0x80001a44 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001a2c
       0     3776        M 0x80001a2c add     a1, s0, a0             #; s0  = 1, a0  = 3, (wrb) a1  <-- 4
       0     3777        M 0x80001a30 sltiu   a1, a1, 31             #; a1  = 4, (wrb) a1  <-- 1
       0     3778        M 0x80001a34 xor     a2, s8, a0             #; s8  = 4, a0  = 3, (wrb) a2  <-- 7
       0     3779        M 0x80001a38 snez    a2, a2                 #; a2  = 7, (wrb) a2  <-- 1
       0     3780        M 0x80001a3c and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     3781        M 0x80001a40 addi    a0, a0, 1              #; a0  = 3, (wrb) a0  <-- 4
       0     3782        M 0x80001a44 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001a2c
       0     3783        M 0x80001a2c add     a1, s0, a0             #; s0  = 1, a0  = 4, (wrb) a1  <-- 5
       0     3784        M 0x80001a30 sltiu   a1, a1, 31             #; a1  = 5, (wrb) a1  <-- 1
       0     3785        M 0x80001a34 xor     a2, s8, a0             #; s8  = 4, a0  = 4, (wrb) a2  <-- 0
       0     3786        M 0x80001a38 snez    a2, a2                 #; a2  = 0, (wrb) a2  <-- 0
       0     3787        M 0x80001a3c and     a2, a1, a2             #; a1  = 1, a2  = 0, (wrb) a2  <-- 0
       0     3788        M 0x80001a40 addi    a0, a0, 1              #; a0  = 4, (wrb) a0  <-- 5
       0     3789        M 0x80001a44 bnez    a2, pc - 24            #; a2  = 0, not taken
       0     3790        M 0x80001a48 add     a0, s0, a0             #; s0  = 1, a0  = 5, (wrb) a0  <-- 6
       0     3791        M 0x80001a4c j       pc + 0x28              #; goto 0x80001a74
       0     3802        M 0x80001a74 beqz    a1, pc + 28            #; a1  = 1, not taken
       0     3803        M 0x80001a78 addi    s0, a0, 1              #; a0  = 6, (wrb) s0  <-- 7
       0     3804        M 0x80001a7c addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
       0     3814        M 0x80001a80 add     a0, a1, a0             #; a1  = 0x0011fe38, a0  = 6, (wrb) a0  <-- 0x0011fe3e
       0     3815        M 0x80001a84 li      a1, 46                 #; (wrb) a1  <-- 46
       0     3816        M 0x80001a88 sb      a1, 0(a0)              #; a0  = 0x0011fe3e, 46 ~~> Byte[0x0011fe3e]
       0     3817        M 0x80001a8c j       pc + 0x8               #; goto 0x80001a94
       0     3826        M 0x80001a94 li      a0, 32                 #; (wrb) a0  <-- 32
       0     3827        M 0x80001a98 mv      t0, s0                 #; s0  = 7, (wrb) t0  <-- 7
       0     3828        M 0x80001a9c bltu    a0, s0, pc + 8         #; a0  = 32, s0  = 7, not taken
       0     3838        M 0x80001aa0 li      t0, 32                 #; (wrb) t0  <-- 32
       0     3840        M 0x80001aa8 lui     a0, 0x66666            #; (wrb) a0  <-- 0x66666000
                         M 0x80001aa4 flt.d   s9, fs0, fs1           #; fs0  = 0.0, fs1  = 0.0
       0     3841        M 0x80001aac addi    a1, a0, 1639           #; a0  = 0x66666000, (wrb) a1  <-- 0x66666667
       0     3850        M 0x80001ab0 li      a6, 10                 #; (wrb) a6  <-- 10
       0     3851        M 0x80001ab4 addi    a3, sp, 8              #; sp  = 0x0011fe30, (wrb) a3  <-- 0x0011fe38
       0     3852        M 0x80001ab8 li      a4, 18                 #; (wrb) a4  <-- 18
       0     3853        M 0x80001abc beq     t0, s0, pc + 64        #; t0  = 32, s0  = 7, not taken
       0     3862        M 0x80001ac0 mulh    a0, s1, a1             #; s1  = 0, a1  = 0x66666667
       0     3865        M                                           #; (acc) a5  <-- 0x01f55793
       0     3866        M 0x80001ac4 srli    a5, a0, 31             #; a0  = 0, (wrb) a5  <-- 0
       0     3867        M 0x80001ac8 srai    a0, a0, 2              #; a0  = 0, (wrb) a0  <-- 0
       0     3868        M 0x80001acc add     a0, a0, a5             #; a0  = 0, a5  = 0, (wrb) a0  <-- 0
       0     3874        M 0x80001ad0 mul     a5, a0, a6             #; a0  = 0, a6  = 10
       0     3877        M                                           #; (acc) a5  <-- 0x40f487b3
       0     3878        M 0x80001ad4 sub     a5, s1, a5             #; s1  = 0, a5  = 0, (wrb) a5  <-- 0
       0     3879        M 0x80001ad8 addi    a5, a5, 48             #; a5  = 0, (wrb) a5  <-- 48
       0     3880        M 0x80001adc addi    s8, s0, 1              #; s0  = 7, (wrb) s8  <-- 8
       0     3886        M 0x80001ae0 add     s0, a3, s0             #; a3  = 0x0011fe38, s0  = 7, (wrb) s0  <-- 0x0011fe3f
       0     3887        M 0x80001ae4 addi    a2, s1, 9              #; s1  = 0, (wrb) a2  <-- 9
       0     3888        M 0x80001ae8 sb      a5, 0(s0)              #; s0  = 0x0011fe3f, 48 ~~> Byte[0x0011fe3f]
       0     3889        M 0x80001aec mv      s0, s8                 #; s8  = 8, (wrb) s0  <-- 8
       0     3898        M 0x80001af0 mv      s1, a0                 #; a0  = 0, (wrb) s1  <-- 0
       0     3899        M 0x80001af4 bltu    a4, a2, pc - 56        #; a4  = 18, a2  = 9, not taken
       0     3900        M 0x80001af8 j       pc + 0x8               #; goto 0x80001b00
       0     3912        M 0x80001b00 andi    s1, s5, 3              #; s5  = 0, (wrb) s1  <-- 0
       0     3913        M 0x80001b04 li      a0, 1                  #; (wrb) a0  <-- 1
       0     3914        M 0x80001b08 bne     s1, a0, pc + 108       #; s1  = 0, a0  = 1, taken, goto 0x80001b74
       0     3935        M 0x80001b74 li      a0, 31                 #; (wrb) a0  <-- 31
       0     3936        M 0x80001b78 bltu    a0, s8, pc + 84        #; a0  = 31, s8  = 8, not taken
       0     3937        M 0x80001b7c beqz    s9, pc + 24            #; s9  = 0, taken, goto 0x80001b94
       0     3958        M 0x80001b94 andi    a0, s5, 4              #; s5  = 0, (wrb) a0  <-- 0
       0     3959        M 0x80001b98 bnez    a0, pc + 32            #; a0  = 0, not taken
       0     3960        M 0x80001b9c andi    a0, s5, 8              #; s5  = 0, (wrb) a0  <-- 0
       0     3970        M 0x80001ba0 beqz    a0, pc + 44            #; a0  = 0, taken, goto 0x80001bcc
       0     3993        M 0x80001bcc snez    a0, s1                 #; s1  = 0, (wrb) a0  <-- 0
       0     4005        M 0x80001bd0 sltu    a1, s8, s2             #; s8  = 8, s2  = 0, (wrb) a1  <-- 0
       0     4006        M 0x80001bd4 xori    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
       0     4007        M 0x80001bd8 or      a0, a0, a1             #; a0  = 0, a1  = 1, (wrb) a0  <-- 1
       0     4008        M 0x80001bdc andi    s5, s5, 2              #; s5  = 0, (wrb) s5  <-- 0
       0     4017        M 0x80001be0 mv      s0, s4                 #; s4  = 8, (wrb) s0  <-- 8
       0     4018        M 0x80001be4 bnez    a0, pc + 44            #; a0  = 1, taken, goto 0x80001c10
       0     4040        M 0x80001c10 srli    s5, s5, 1              #; s5  = 0, (wrb) s5  <-- 0
       0     4041        M 0x80001c14 beqz    s8, pc + 56            #; s8  = 8, not taken
       0     4042        M 0x80001c18 addi    s9, sp, 7              #; sp  = 0x0011fe30, (wrb) s9  <-- 0x0011fe37
       0     4043        M 0x80001c1c add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 8, (wrb) a0  <-- 0x0011fe3f
       0     4052        M 0x80001c20 lbu     a0, 0(a0)              #; a0  = 0x0011fe3f, a0  <~~ Byte[0x0011fe3f]
       0     4053        M 0x80001c24 addi    s10, s8, -1            #; s8  = 8, (wrb) s10 <-- 7
       0     4054        M 0x80001c28 addi    s1, s0, 1              #; s0  = 8, (wrb) s1  <-- 9
       0     4055        M 0x80001c2c mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4056        M                                           #; (lsu) a0  <-- 48
       0     4064        M 0x80001c30 mv      a2, s0                 #; s0  = 8, (wrb) a2  <-- 8
       0     4065        M 0x80001c34 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4066        M 0x80001c38 jalr    s7                     #; s7  = 0x80001550, (wrb) ra  <-- 0x80001c3c, goto 0x80001550
       0     4078        M 0x80001550 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4079        M 0x80001554 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4080        M 0x80001558 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4081        M 0x8000155c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4082        M 0x80001560 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003560
       0     4083        M 0x80001564 addi    a3, a3, -1428          #; a3  = 0x80003560, (wrb) a3  <-- 0x80002fcc
       0     4084        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4085        M 0x80001568 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fcc, (wrb) a1  <-- 0x80002fcc
       0     4086        M 0x8000156c lw      a4, 0(a1)              #; a1  = 0x80002fcc, a4  <~~ Word[0x80002fcc]
       0     4097        M                                           #; (lsu) a4  <-- 8
       0     4098        M 0x80001570 addi    a5, a4, 1              #; a4  = 8, (wrb) a5  <-- 9
       0     4099        M 0x80001574 sw      a5, 0(a1)              #; a1  = 0x80002fcc, 9 ~~> Word[0x80002fcc]
       0     4100        M 0x80001578 add     a4, a1, a4             #; a1  = 0x80002fcc, a4  = 8, (wrb) a4  <-- 0x80002fd4
       0     4101        M 0x8000157c sb      a0, 72(a4)             #; a4  = 0x80002fd4, 48 ~~> Byte[0x8000301c]
       0     4102        M 0x80001580 lw      a4, 0(a1)              #; a1  = 0x80002fcc, a4  <~~ Word[0x80002fcc]
       0     4123        M                                           #; (lsu) a4  <-- 9
       0     4124        M 0x80001584 addi    a4, a4, -1020          #; a4  = 9, (wrb) a4  <-- -1011
       0     4125        M 0x80001588 snez    a4, a4                 #; a4  = -1011, (wrb) a4  <-- 1
       0     4126        M 0x8000158c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     4127        M 0x80001590 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     4128        M 0x80001594 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4129        M 0x80001598 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015f8
       0     4141        M 0x800015f8 ret                            #; ra  = 0x80001c3c, goto 0x80001c3c
       0     4146        M 0x80001c3c mv      s0, s1                 #; s1  = 9, (wrb) s0  <-- 9
       0     4149        M 0x80001c40 mv      s8, s10                #; s10 = 7, (wrb) s8  <-- 7
       0     4150        M 0x80001c44 bnez    s10, pc - 40           #; s10 = 7, taken, goto 0x80001c1c
       0     4152        M 0x80001c1c add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 7, (wrb) a0  <-- 0x0011fe3e
       0     4155        M 0x80001c20 lbu     a0, 0(a0)              #; a0  = 0x0011fe3e, a0  <~~ Byte[0x0011fe3e]
       0     4156        M 0x80001c24 addi    s10, s8, -1            #; s8  = 7, (wrb) s10 <-- 6
       0     4157        M 0x80001c28 addi    s1, s0, 1              #; s0  = 9, (wrb) s1  <-- 10
       0     4158        M 0x80001c2c mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4159        M 0x80001c30 mv      a2, s0                 #; s0  = 9, (wrb) a2  <-- 9
       0     4160        M 0x80001c34 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4161        M 0x80001c38 jalr    s7                     #; s7  = 0x80001550, (wrb) ra  <-- 0x80001c3c, goto 0x80001550
       0     4162        M                                           #; (lsu) a0  <-- 46
       0     4164        M 0x80001550 beqz    a0, pc + 168           #; a0  = 46, not taken
       0     4165        M 0x80001554 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4166        M 0x80001558 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4167        M 0x8000155c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4168        M 0x80001560 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003560
       0     4169        M 0x80001564 addi    a3, a3, -1428          #; a3  = 0x80003560, (wrb) a3  <-- 0x80002fcc
       0     4170        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4171        M 0x80001568 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fcc, (wrb) a1  <-- 0x80002fcc
       0     4172        M 0x8000156c lw      a4, 0(a1)              #; a1  = 0x80002fcc, a4  <~~ Word[0x80002fcc]
       0     4183        M                                           #; (lsu) a4  <-- 9
       0     4184        M 0x80001570 addi    a5, a4, 1              #; a4  = 9, (wrb) a5  <-- 10
       0     4185        M 0x80001574 sw      a5, 0(a1)              #; a1  = 0x80002fcc, 10 ~~> Word[0x80002fcc]
       0     4186        M 0x80001578 add     a4, a1, a4             #; a1  = 0x80002fcc, a4  = 9, (wrb) a4  <-- 0x80002fd5
       0     4187        M 0x8000157c sb      a0, 72(a4)             #; a4  = 0x80002fd5, 46 ~~> Byte[0x8000301d]
       0     4188        M 0x80001580 lw      a4, 0(a1)              #; a1  = 0x80002fcc, a4  <~~ Word[0x80002fcc]
       0     4209        M                                           #; (lsu) a4  <-- 10
       0     4210        M 0x80001584 addi    a4, a4, -1020          #; a4  = 10, (wrb) a4  <-- -1010
       0     4211        M 0x80001588 snez    a4, a4                 #; a4  = -1010, (wrb) a4  <-- 1
       0     4212        M 0x8000158c addi    a0, a0, -10            #; a0  = 46, (wrb) a0  <-- 36
       0     4213        M 0x80001590 snez    a0, a0                 #; a0  = 36, (wrb) a0  <-- 1
       0     4214        M 0x80001594 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4215        M 0x80001598 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015f8
       0     4218        M 0x800015f8 ret                            #; ra  = 0x80001c3c, goto 0x80001c3c
       0     4223        M 0x80001c3c mv      s0, s1                 #; s1  = 10, (wrb) s0  <-- 10
       0     4226        M 0x80001c40 mv      s8, s10                #; s10 = 6, (wrb) s8  <-- 6
       0     4227        M 0x80001c44 bnez    s10, pc - 40           #; s10 = 6, taken, goto 0x80001c1c
       0     4229        M 0x80001c1c add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 6, (wrb) a0  <-- 0x0011fe3d
       0     4232        M 0x80001c20 lbu     a0, 0(a0)              #; a0  = 0x0011fe3d, a0  <~~ Byte[0x0011fe3d]
       0     4233        M 0x80001c24 addi    s10, s8, -1            #; s8  = 6, (wrb) s10 <-- 5
       0     4234        M 0x80001c28 addi    s1, s0, 1              #; s0  = 10, (wrb) s1  <-- 11
       0     4235        M 0x80001c2c mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4236        M 0x80001c30 mv      a2, s0                 #; s0  = 10, (wrb) a2  <-- 10
       0     4237        M 0x80001c34 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4238        M 0x80001c38 jalr    s7                     #; s7  = 0x80001550, (wrb) ra  <-- 0x80001c3c, goto 0x80001550
       0     4239        M                                           #; (lsu) a0  <-- 48
       0     4241        M 0x80001550 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4242        M 0x80001554 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4243        M 0x80001558 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4244        M 0x8000155c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4245        M 0x80001560 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003560
       0     4246        M 0x80001564 addi    a3, a3, -1428          #; a3  = 0x80003560, (wrb) a3  <-- 0x80002fcc
       0     4247        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4248        M 0x80001568 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fcc, (wrb) a1  <-- 0x80002fcc
       0     4249        M 0x8000156c lw      a4, 0(a1)              #; a1  = 0x80002fcc, a4  <~~ Word[0x80002fcc]
       0     4260        M                                           #; (lsu) a4  <-- 10
       0     4261        M 0x80001570 addi    a5, a4, 1              #; a4  = 10, (wrb) a5  <-- 11
       0     4262        M 0x80001574 sw      a5, 0(a1)              #; a1  = 0x80002fcc, 11 ~~> Word[0x80002fcc]
       0     4263        M 0x80001578 add     a4, a1, a4             #; a1  = 0x80002fcc, a4  = 10, (wrb) a4  <-- 0x80002fd6
       0     4264        M 0x8000157c sb      a0, 72(a4)             #; a4  = 0x80002fd6, 48 ~~> Byte[0x8000301e]
       0     4265        M 0x80001580 lw      a4, 0(a1)              #; a1  = 0x80002fcc, a4  <~~ Word[0x80002fcc]
       0     4286        M                                           #; (lsu) a4  <-- 11
       0     4287        M 0x80001584 addi    a4, a4, -1020          #; a4  = 11, (wrb) a4  <-- -1009
       0     4288        M 0x80001588 snez    a4, a4                 #; a4  = -1009, (wrb) a4  <-- 1
       0     4289        M 0x8000158c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     4290        M 0x80001590 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     4291        M 0x80001594 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4292        M 0x80001598 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015f8
       0     4295        M 0x800015f8 ret                            #; ra  = 0x80001c3c, goto 0x80001c3c
       0     4300        M 0x80001c3c mv      s0, s1                 #; s1  = 11, (wrb) s0  <-- 11
       0     4303        M 0x80001c40 mv      s8, s10                #; s10 = 5, (wrb) s8  <-- 5
       0     4304        M 0x80001c44 bnez    s10, pc - 40           #; s10 = 5, taken, goto 0x80001c1c
       0     4306        M 0x80001c1c add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 5, (wrb) a0  <-- 0x0011fe3c
       0     4309        M 0x80001c20 lbu     a0, 0(a0)              #; a0  = 0x0011fe3c, a0  <~~ Byte[0x0011fe3c]
       0     4310        M 0x80001c24 addi    s10, s8, -1            #; s8  = 5, (wrb) s10 <-- 4
       0     4311        M 0x80001c28 addi    s1, s0, 1              #; s0  = 11, (wrb) s1  <-- 12
       0     4312        M 0x80001c2c mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4313        M 0x80001c30 mv      a2, s0                 #; s0  = 11, (wrb) a2  <-- 11
       0     4314        M 0x80001c34 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4315        M 0x80001c38 jalr    s7                     #; s7  = 0x80001550, (wrb) ra  <-- 0x80001c3c, goto 0x80001550
       0     4316        M                                           #; (lsu) a0  <-- 48
       0     4318        M 0x80001550 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4319        M 0x80001554 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4320        M 0x80001558 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4321        M 0x8000155c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4322        M 0x80001560 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003560
       0     4323        M 0x80001564 addi    a3, a3, -1428          #; a3  = 0x80003560, (wrb) a3  <-- 0x80002fcc
       0     4324        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4325        M 0x80001568 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fcc, (wrb) a1  <-- 0x80002fcc
       0     4326        M 0x8000156c lw      a4, 0(a1)              #; a1  = 0x80002fcc, a4  <~~ Word[0x80002fcc]
       0     4337        M                                           #; (lsu) a4  <-- 11
       0     4338        M 0x80001570 addi    a5, a4, 1              #; a4  = 11, (wrb) a5  <-- 12
       0     4339        M 0x80001574 sw      a5, 0(a1)              #; a1  = 0x80002fcc, 12 ~~> Word[0x80002fcc]
       0     4340        M 0x80001578 add     a4, a1, a4             #; a1  = 0x80002fcc, a4  = 11, (wrb) a4  <-- 0x80002fd7
       0     4341        M 0x8000157c sb      a0, 72(a4)             #; a4  = 0x80002fd7, 48 ~~> Byte[0x8000301f]
       0     4342        M 0x80001580 lw      a4, 0(a1)              #; a1  = 0x80002fcc, a4  <~~ Word[0x80002fcc]
       0     4363        M                                           #; (lsu) a4  <-- 12
       0     4364        M 0x80001584 addi    a4, a4, -1020          #; a4  = 12, (wrb) a4  <-- -1008
       0     4365        M 0x80001588 snez    a4, a4                 #; a4  = -1008, (wrb) a4  <-- 1
       0     4366        M 0x8000158c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     4367        M 0x80001590 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     4368        M 0x80001594 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4369        M 0x80001598 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015f8
       0     4372        M 0x800015f8 ret                            #; ra  = 0x80001c3c, goto 0x80001c3c
       0     4377        M 0x80001c3c mv      s0, s1                 #; s1  = 12, (wrb) s0  <-- 12
       0     4380        M 0x80001c40 mv      s8, s10                #; s10 = 4, (wrb) s8  <-- 4
       0     4381        M 0x80001c44 bnez    s10, pc - 40           #; s10 = 4, taken, goto 0x80001c1c
       0     4383        M 0x80001c1c add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 4, (wrb) a0  <-- 0x0011fe3b
       0     4386        M 0x80001c20 lbu     a0, 0(a0)              #; a0  = 0x0011fe3b, a0  <~~ Byte[0x0011fe3b]
       0     4387        M 0x80001c24 addi    s10, s8, -1            #; s8  = 4, (wrb) s10 <-- 3
       0     4388        M 0x80001c28 addi    s1, s0, 1              #; s0  = 12, (wrb) s1  <-- 13
       0     4389        M 0x80001c2c mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4390        M 0x80001c30 mv      a2, s0                 #; s0  = 12, (wrb) a2  <-- 12
       0     4391        M 0x80001c34 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4392        M 0x80001c38 jalr    s7                     #; s7  = 0x80001550, (wrb) ra  <-- 0x80001c3c, goto 0x80001550
       0     4393        M                                           #; (lsu) a0  <-- 48
       0     4395        M 0x80001550 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4396        M 0x80001554 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4397        M 0x80001558 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4398        M 0x8000155c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4399        M 0x80001560 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003560
       0     4400        M 0x80001564 addi    a3, a3, -1428          #; a3  = 0x80003560, (wrb) a3  <-- 0x80002fcc
       0     4401        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4402        M 0x80001568 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fcc, (wrb) a1  <-- 0x80002fcc
       0     4403        M 0x8000156c lw      a4, 0(a1)              #; a1  = 0x80002fcc, a4  <~~ Word[0x80002fcc]
       0     4414        M                                           #; (lsu) a4  <-- 12
       0     4415        M 0x80001570 addi    a5, a4, 1              #; a4  = 12, (wrb) a5  <-- 13
       0     4416        M 0x80001574 sw      a5, 0(a1)              #; a1  = 0x80002fcc, 13 ~~> Word[0x80002fcc]
       0     4417        M 0x80001578 add     a4, a1, a4             #; a1  = 0x80002fcc, a4  = 12, (wrb) a4  <-- 0x80002fd8
       0     4418        M 0x8000157c sb      a0, 72(a4)             #; a4  = 0x80002fd8, 48 ~~> Byte[0x80003020]
       0     4419        M 0x80001580 lw      a4, 0(a1)              #; a1  = 0x80002fcc, a4  <~~ Word[0x80002fcc]
       0     4440        M                                           #; (lsu) a4  <-- 13
       0     4441        M 0x80001584 addi    a4, a4, -1020          #; a4  = 13, (wrb) a4  <-- -1007
       0     4442        M 0x80001588 snez    a4, a4                 #; a4  = -1007, (wrb) a4  <-- 1
       0     4443        M 0x8000158c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     4444        M 0x80001590 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     4445        M 0x80001594 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4446        M 0x80001598 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015f8
       0     4449        M 0x800015f8 ret                            #; ra  = 0x80001c3c, goto 0x80001c3c
       0     4454        M 0x80001c3c mv      s0, s1                 #; s1  = 13, (wrb) s0  <-- 13
       0     4457        M 0x80001c40 mv      s8, s10                #; s10 = 3, (wrb) s8  <-- 3
       0     4458        M 0x80001c44 bnez    s10, pc - 40           #; s10 = 3, taken, goto 0x80001c1c
       0     4460        M 0x80001c1c add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 3, (wrb) a0  <-- 0x0011fe3a
       0     4463        M 0x80001c20 lbu     a0, 0(a0)              #; a0  = 0x0011fe3a, a0  <~~ Byte[0x0011fe3a]
       0     4464        M 0x80001c24 addi    s10, s8, -1            #; s8  = 3, (wrb) s10 <-- 2
       0     4465        M 0x80001c28 addi    s1, s0, 1              #; s0  = 13, (wrb) s1  <-- 14
       0     4466        M 0x80001c2c mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4467        M 0x80001c30 mv      a2, s0                 #; s0  = 13, (wrb) a2  <-- 13
       0     4468        M 0x80001c34 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4469        M 0x80001c38 jalr    s7                     #; s7  = 0x80001550, (wrb) ra  <-- 0x80001c3c, goto 0x80001550
       0     4470        M                                           #; (lsu) a0  <-- 48
       0     4472        M 0x80001550 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4473        M 0x80001554 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4474        M 0x80001558 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4475        M 0x8000155c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4476        M 0x80001560 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003560
       0     4477        M 0x80001564 addi    a3, a3, -1428          #; a3  = 0x80003560, (wrb) a3  <-- 0x80002fcc
       0     4478        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4479        M 0x80001568 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fcc, (wrb) a1  <-- 0x80002fcc
       0     4480        M 0x8000156c lw      a4, 0(a1)              #; a1  = 0x80002fcc, a4  <~~ Word[0x80002fcc]
       0     4491        M                                           #; (lsu) a4  <-- 13
       0     4492        M 0x80001570 addi    a5, a4, 1              #; a4  = 13, (wrb) a5  <-- 14
       0     4493        M 0x80001574 sw      a5, 0(a1)              #; a1  = 0x80002fcc, 14 ~~> Word[0x80002fcc]
       0     4494        M 0x80001578 add     a4, a1, a4             #; a1  = 0x80002fcc, a4  = 13, (wrb) a4  <-- 0x80002fd9
       0     4495        M 0x8000157c sb      a0, 72(a4)             #; a4  = 0x80002fd9, 48 ~~> Byte[0x80003021]
       0     4496        M 0x80001580 lw      a4, 0(a1)              #; a1  = 0x80002fcc, a4  <~~ Word[0x80002fcc]
       0     4517        M                                           #; (lsu) a4  <-- 14
       0     4518        M 0x80001584 addi    a4, a4, -1020          #; a4  = 14, (wrb) a4  <-- -1006
       0     4519        M 0x80001588 snez    a4, a4                 #; a4  = -1006, (wrb) a4  <-- 1
       0     4520        M 0x8000158c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     4521        M 0x80001590 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     4522        M 0x80001594 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4523        M 0x80001598 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015f8
       0     4526        M 0x800015f8 ret                            #; ra  = 0x80001c3c, goto 0x80001c3c
       0     4531        M 0x80001c3c mv      s0, s1                 #; s1  = 14, (wrb) s0  <-- 14
       0     4534        M 0x80001c40 mv      s8, s10                #; s10 = 2, (wrb) s8  <-- 2
       0     4535        M 0x80001c44 bnez    s10, pc - 40           #; s10 = 2, taken, goto 0x80001c1c
       0     4537        M 0x80001c1c add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 2, (wrb) a0  <-- 0x0011fe39
       0     4540        M 0x80001c20 lbu     a0, 0(a0)              #; a0  = 0x0011fe39, a0  <~~ Byte[0x0011fe39]
       0     4541        M 0x80001c24 addi    s10, s8, -1            #; s8  = 2, (wrb) s10 <-- 1
       0     4542        M 0x80001c28 addi    s1, s0, 1              #; s0  = 14, (wrb) s1  <-- 15
       0     4543        M 0x80001c2c mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4544        M 0x80001c30 mv      a2, s0                 #; s0  = 14, (wrb) a2  <-- 14
       0     4545        M 0x80001c34 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4546        M 0x80001c38 jalr    s7                     #; s7  = 0x80001550, (wrb) ra  <-- 0x80001c3c, goto 0x80001550
       0     4547        M                                           #; (lsu) a0  <-- 48
       0     4549        M 0x80001550 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4550        M 0x80001554 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4551        M 0x80001558 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4552        M 0x8000155c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4553        M 0x80001560 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003560
       0     4554        M 0x80001564 addi    a3, a3, -1428          #; a3  = 0x80003560, (wrb) a3  <-- 0x80002fcc
       0     4555        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4556        M 0x80001568 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fcc, (wrb) a1  <-- 0x80002fcc
       0     4557        M 0x8000156c lw      a4, 0(a1)              #; a1  = 0x80002fcc, a4  <~~ Word[0x80002fcc]
       0     4568        M                                           #; (lsu) a4  <-- 14
       0     4569        M 0x80001570 addi    a5, a4, 1              #; a4  = 14, (wrb) a5  <-- 15
       0     4570        M 0x80001574 sw      a5, 0(a1)              #; a1  = 0x80002fcc, 15 ~~> Word[0x80002fcc]
       0     4571        M 0x80001578 add     a4, a1, a4             #; a1  = 0x80002fcc, a4  = 14, (wrb) a4  <-- 0x80002fda
       0     4572        M 0x8000157c sb      a0, 72(a4)             #; a4  = 0x80002fda, 48 ~~> Byte[0x80003022]
       0     4573        M 0x80001580 lw      a4, 0(a1)              #; a1  = 0x80002fcc, a4  <~~ Word[0x80002fcc]
       0     4594        M                                           #; (lsu) a4  <-- 15
       0     4595        M 0x80001584 addi    a4, a4, -1020          #; a4  = 15, (wrb) a4  <-- -1005
       0     4596        M 0x80001588 snez    a4, a4                 #; a4  = -1005, (wrb) a4  <-- 1
       0     4597        M 0x8000158c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     4598        M 0x80001590 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     4599        M 0x80001594 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4600        M 0x80001598 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015f8
       0     4603        M 0x800015f8 ret                            #; ra  = 0x80001c3c, goto 0x80001c3c
       0     4608        M 0x80001c3c mv      s0, s1                 #; s1  = 15, (wrb) s0  <-- 15
       0     4611        M 0x80001c40 mv      s8, s10                #; s10 = 1, (wrb) s8  <-- 1
       0     4612        M 0x80001c44 bnez    s10, pc - 40           #; s10 = 1, taken, goto 0x80001c1c
       0     4614        M 0x80001c1c add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 1, (wrb) a0  <-- 0x0011fe38
       0     4617        M 0x80001c20 lbu     a0, 0(a0)              #; a0  = 0x0011fe38, a0  <~~ Byte[0x0011fe38]
       0     4618        M 0x80001c24 addi    s10, s8, -1            #; s8  = 1, (wrb) s10 <-- 0
       0     4619        M 0x80001c28 addi    s1, s0, 1              #; s0  = 15, (wrb) s1  <-- 16
       0     4620        M 0x80001c2c mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4621        M 0x80001c30 mv      a2, s0                 #; s0  = 15, (wrb) a2  <-- 15
       0     4622        M 0x80001c34 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4623        M 0x80001c38 jalr    s7                     #; s7  = 0x80001550, (wrb) ra  <-- 0x80001c3c, goto 0x80001550
       0     4624        M                                           #; (lsu) a0  <-- 48
       0     4626        M 0x80001550 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4627        M 0x80001554 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4628        M 0x80001558 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4629        M 0x8000155c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4630        M 0x80001560 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003560
       0     4631        M 0x80001564 addi    a3, a3, -1428          #; a3  = 0x80003560, (wrb) a3  <-- 0x80002fcc
       0     4632        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4633        M 0x80001568 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fcc, (wrb) a1  <-- 0x80002fcc
       0     4634        M 0x8000156c lw      a4, 0(a1)              #; a1  = 0x80002fcc, a4  <~~ Word[0x80002fcc]
       0     4645        M                                           #; (lsu) a4  <-- 15
       0     4646        M 0x80001570 addi    a5, a4, 1              #; a4  = 15, (wrb) a5  <-- 16
       0     4647        M 0x80001574 sw      a5, 0(a1)              #; a1  = 0x80002fcc, 16 ~~> Word[0x80002fcc]
       0     4648        M 0x80001578 add     a4, a1, a4             #; a1  = 0x80002fcc, a4  = 15, (wrb) a4  <-- 0x80002fdb
       0     4649        M 0x8000157c sb      a0, 72(a4)             #; a4  = 0x80002fdb, 48 ~~> Byte[0x80003023]
       0     4650        M 0x80001580 lw      a4, 0(a1)              #; a1  = 0x80002fcc, a4  <~~ Word[0x80002fcc]
       0     4671        M                                           #; (lsu) a4  <-- 16
       0     4672        M 0x80001584 addi    a4, a4, -1020          #; a4  = 16, (wrb) a4  <-- -1004
       0     4673        M 0x80001588 snez    a4, a4                 #; a4  = -1004, (wrb) a4  <-- 1
       0     4674        M 0x8000158c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     4675        M 0x80001590 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     4676        M 0x80001594 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4677        M 0x80001598 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015f8
       0     4680        M 0x800015f8 ret                            #; ra  = 0x80001c3c, goto 0x80001c3c
       0     4685        M 0x80001c3c mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
       0     4688        M 0x80001c40 mv      s8, s10                #; s10 = 0, (wrb) s8  <-- 0
       0     4689        M 0x80001c44 bnez    s10, pc - 40           #; s10 = 0, not taken
       0     4690        M 0x80001c48 j       pc + 0x8               #; goto 0x80001c50
       0     4702        M 0x80001c50 sub     a0, s1, s4             #; s1  = 16, s4  = 8, (wrb) a0  <-- 8
       0     4703        M 0x80001c54 sltu    a0, a0, s2             #; a0  = 8, s2  = 0, (wrb) a0  <-- 0
       0     4704        M 0x80001c58 xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0     4705        M 0x80001c5c xori    a1, s5, 1              #; s5  = 0, (wrb) a1  <-- 1
       0     4714        M 0x80001c60 or      a0, a1, a0             #; a1  = 1, a0  = 1, (wrb) a0  <-- 1
       0     4715        M 0x80001c64 bnez    a0, pc + 48            #; a0  = 1, taken, goto 0x80001c94
       0     4737        M 0x80001c94 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
       0     4738        M 0x80001c98 mv      a0, s0                 #; s0  = 16, (wrb) a0  <-- 16
       0     4741        M 0x80001c9c fld     fs2, 40(sp)            #; fs2  <~~ Doub[0x0011fe58]
       0     4742        M                                           #; (f:lsu) fs2  <-- 0.0
       0     4751        M 0x80001ca8 lw      s10, 64(sp)            #; sp  = 0x0011fe30, s10 <~~ Word[0x0011fe70]
                         M 0x80001ca0 fld     fs1, 48(sp)            #; fs1  <~~ Doub[0x0011fe60]
       0     4752        M 0x80001ca4 fld     fs0, 56(sp)            #; fs0  <~~ Doub[0x0011fe68], (f:lsu) fs1  <-- 0.0
       0     4753        M                                           #; (f:lsu) fs0  <-- 0.0
       0     4755        M                                           #; (lsu) s10 <-- 0x80002c3e
       0     4756        M 0x80001cac lw      s9, 68(sp)             #; sp  = 0x0011fe30, s9  <~~ Word[0x0011fe74]
       0     4759        M                                           #; (lsu) s9  <-- 8
       0     4761        M 0x80001cb0 lw      s8, 72(sp)             #; sp  = 0x0011fe30, s8  <~~ Word[0x0011fe78]
       0     4764        M                                           #; (lsu) s8  <-- 16
       0     4765        M 0x80001cb4 lw      s7, 76(sp)             #; sp  = 0x0011fe30, s7  <~~ Word[0x0011fe7c]
       0     4768        M                                           #; (lsu) s7  <-- 0
       0     4769        M 0x80001cb8 lw      s6, 80(sp)             #; sp  = 0x0011fe30, s6  <~~ Word[0x0011fe80]
       0     4772        M                                           #; (lsu) s6  <-- 0
       0     4773        M 0x80001cbc lw      s5, 84(sp)             #; sp  = 0x0011fe30, s5  <~~ Word[0x0011fe84]
       0     4776        M                                           #; (lsu) s5  <-- -1
       0     4777        M 0x80001cc0 lw      s4, 88(sp)             #; sp  = 0x0011fe30, s4  <~~ Word[0x0011fe88]
       0     4780        M                                           #; (lsu) s4  <-- 0x0011ff17
       0     4781        M 0x80001cc4 lw      s3, 92(sp)             #; sp  = 0x0011fe30, s3  <~~ Word[0x0011fe8c]
       0     4784        M                                           #; (lsu) s3  <-- 0x0011ff30
       0     4785        M 0x80001cc8 lw      s2, 96(sp)             #; sp  = 0x0011fe30, s2  <~~ Word[0x0011fe90]
       0     4788        M                                           #; (lsu) s2  <-- 0x80001550
       0     4789        M 0x80001ccc lw      s1, 100(sp)            #; sp  = 0x0011fe30, s1  <~~ Word[0x0011fe94]
       0     4792        M                                           #; (lsu) s1  <-- 8
       0     4793        M 0x80001cd0 lw      s0, 104(sp)            #; sp  = 0x0011fe30, s0  <~~ Word[0x0011fe98]
       0     4796        M                                           #; (lsu) s0  <-- 0
       0     4797        M 0x80001cd4 lw      ra, 108(sp)            #; sp  = 0x0011fe30, ra  <~~ Word[0x0011fe9c]
       0     4798        M 0x80001cd8 addi    sp, sp, 112            #; sp  = 0x0011fe30, (wrb) sp  <-- 0x0011fea0
       0     4800        M                                           #; (lsu) ra  <-- 0x80000c80
       0     4801        M 0x80001cdc ret                            #; ra  = 0x80000c80, goto 0x80000c80
       0     4804        M 0x80000c80 j       pc + 0x7c0             #; goto 0x80001440
       0     4816        M 0x80001440 mv      s8, a0                 #; a0  = 16, (wrb) s8  <-- 16
       0     4817        M 0x80001444 li      s6, 37                 #; (wrb) s6  <-- 37
       0     4818        M 0x80001448 li      s7, 46                 #; (wrb) s7  <-- 46
       0     4819        M 0x8000144c addi    s0, s10, 1             #; s10 = 0x80002c3e, (wrb) s0  <-- 0x80002c3f
       0     4828        M 0x80001450 j       pc - 0xa74             #; goto 0x800009dc
       0     4831        M 0x800009dc addi    s10, s0, 2             #; s0  = 0x80002c3f, (wrb) s10 <-- 0x80002c41
       0     4834        M 0x800009e0 mv      s9, s8                 #; s8  = 16, (wrb) s9  <-- 16
       0     4835        M 0x800009e4 li      s8, 10                 #; (wrb) s8  <-- 10
       0     4836        M 0x800009e8 lbu     a0, 0(s0)              #; s0  = 0x80002c3f, a0  <~~ Byte[0x80002c3f]
       0     4847        M                                           #; (lsu) a0  <-- 10
       0     4848        M 0x800009ec beqz    a0, pc + 2824          #; a0  = 10, not taken
       0     4849        M 0x800009f0 beq     a0, s6, pc + 48        #; a0  = 10, s6  = 37, not taken
       0     4850        M 0x800009f4 addi    s1, s9, 1              #; s9  = 16, (wrb) s1  <-- 17
       0     4851        M 0x800009f8 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4852        M 0x800009fc mv      a2, s9                 #; s9  = 16, (wrb) a2  <-- 16
       0     4853        M 0x80000a00 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     4854        M 0x80000a04 jalr    s2                     #; s2  = 0x80001550, (wrb) ra  <-- 0x80000a08, goto 0x80001550
       0     4858        M 0x80001550 beqz    a0, pc + 168           #; a0  = 10, not taken
       0     4859        M 0x80001554 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4860        M 0x80001558 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4861        M 0x8000155c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4862        M 0x80001560 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003560
       0     4863        M 0x80001564 addi    a3, a3, -1428          #; a3  = 0x80003560, (wrb) a3  <-- 0x80002fcc
       0     4864        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4865        M 0x80001568 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002fcc, (wrb) a1  <-- 0x80002fcc
       0     4866        M 0x8000156c lw      a4, 0(a1)              #; a1  = 0x80002fcc, a4  <~~ Word[0x80002fcc]
       0     4877        M                                           #; (lsu) a4  <-- 16
       0     4878        M 0x80001570 addi    a5, a4, 1              #; a4  = 16, (wrb) a5  <-- 17
       0     4879        M 0x80001574 sw      a5, 0(a1)              #; a1  = 0x80002fcc, 17 ~~> Word[0x80002fcc]
       0     4880        M 0x80001578 add     a4, a1, a4             #; a1  = 0x80002fcc, a4  = 16, (wrb) a4  <-- 0x80002fdc
       0     4881        M 0x8000157c sb      a0, 72(a4)             #; a4  = 0x80002fdc, 10 ~~> Byte[0x80003024]
       0     4882        M 0x80001580 lw      a4, 0(a1)              #; a1  = 0x80002fcc, a4  <~~ Word[0x80002fcc]
       0     4903        M                                           #; (lsu) a4  <-- 17
       0     4904        M 0x80001584 addi    a4, a4, -1020          #; a4  = 17, (wrb) a4  <-- -1003
       0     4905        M 0x80001588 snez    a4, a4                 #; a4  = -1003, (wrb) a4  <-- 1
       0     4906        M 0x8000158c addi    a0, a0, -10            #; a0  = 10, (wrb) a0  <-- 0
       0     4907        M 0x80001590 snez    a0, a0                 #; a0  = 0, (wrb) a0  <-- 0
       0     4908        M 0x80001594 and     a0, a0, a4             #; a0  = 0, a4  = 1, (wrb) a0  <-- 0
       0     4909        M 0x80001598 bnez    a0, pc + 96            #; a0  = 0, not taken
       0     4910        M 0x8000159c add     a0, a3, a2             #; a3  = 0x80002fcc, a2  = 0, (wrb) a0  <-- 0x80002fcc
       0     4911        M 0x800015a0 addi    a2, a0, 72             #; a0  = 0x80002fcc, (wrb) a2  <-- 0x80003014
       0     4912        M 0x800015a4 sw      zero, 12(a0)           #; a0  = 0x80002fcc, 0 ~~> Word[0x80002fd8]
       0     4913        M 0x800015a8 li      a3, 64                 #; (wrb) a3  <-- 64
       0     4914        M 0x800015ac sw      a3, 8(a0)              #; a0  = 0x80002fcc, 64 ~~> Word[0x80002fd4]
       0     4923        M 0x800015b0 sw      zero, 20(a0)           #; a0  = 0x80002fcc, 0 ~~> Word[0x80002fe0]
       0     4924        M 0x800015b4 li      a3, 1                  #; (wrb) a3  <-- 1
       0     4925        M 0x800015b8 sw      a3, 16(a0)             #; a0  = 0x80002fcc, 1 ~~> Word[0x80002fdc]
       0     4926        M 0x800015bc sw      zero, 28(a0)           #; a0  = 0x80002fcc, 0 ~~> Word[0x80002fe8]
       0     4935        M 0x800015c0 sw      a2, 24(a0)             #; a0  = 0x80002fcc, 0x80003014 ~~> Word[0x80002fe4]
       0     4938        M 0x800015c4 lw      a2, 0(a1)              #; a1  = 0x80002fcc, a2  <~~ Word[0x80002fcc]
       0     4939        M 0x800015c8 addi    a3, a0, 8              #; a0  = 0x80002fcc, (wrb) a3  <-- 0x80002fd4
       0     4940        M 0x800015cc sw      zero, 36(a0)           #; a0  = 0x80002fcc, 0 ~~> Word[0x80002ff0]
       0     4960        M                                           #; (lsu) a2  <-- 17
       0     4961        M 0x800015d0 sw      a2, 32(a0)             #; a0  = 0x80002fcc, 17 ~~> Word[0x80002fec]
       0     4962        M 0x800015d4 auipc   a0, 0x2                #; (wrb) a0  <-- 0x800035d4
       0     4963        M 0x800015d8 addi    a0, a0, -1876          #; a0  = 0x800035d4, (wrb) a0  <-- 0x80002e80
       0     4964        M 0x800015dc sw      a3, 0(a0)              #; a0  = 0x80002e80, 0x80002fd4 ~~> Word[0x80002e80]
       0     4965        M 0x800015e0 auipc   a0, 0x2                #; (wrb) a0  <-- 0x800035e0
       0     4966        M 0x800015e4 addi    a0, a0, -1824          #; a0  = 0x800035e0, (wrb) a0  <-- 0x80002ec0
       0     4967        M 0x800015e8 lw      a2, 0(a0)              #; a0  = 0x80002ec0, a2  <~~ Word[0x80002ec0]
       0     4990        M                                           #; (lsu) a2  <-- 0
       0     4991        M 0x800015ec beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x800015e8
       0     4992        M 0x800015e8 lw      a2, 0(a0)              #; a0  = 0x80002ec0, a2  <~~ Word[0x80002ec0]
       0     5003        M                                           #; (lsu) a2  <-- 0
       0     5004        M 0x800015ec beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x800015e8
       0     5005        M 0x800015e8 lw      a2, 0(a0)              #; a0  = 0x80002ec0, a2  <~~ Word[0x80002ec0]
       0     5016        M                                           #; (lsu) a2  <-- 1
       0     5017        M 0x800015ec beqz    a2, pc - 4             #; a2  = 1, not taken
       0     5020        M 0x800015f0 sw      zero, 0(a0)            #; a0  = 0x80002ec0, 0 ~~> Word[0x80002ec0]
       0     5021        M 0x800015f4 sw      zero, 0(a1)            #; a1  = 0x80002fcc, 0 ~~> Word[0x80002fcc]
       0     5022        M 0x800015f8 ret                            #; ra  = 0x80000a08, goto 0x80000a08
       0     5025        M 0x80000a08 addi    s0, s0, 1              #; s0  = 0x80002c3f, (wrb) s0  <-- 0x80002c40
       0     5026        M 0x80000a0c addi    s10, s10, 1            #; s10 = 0x80002c41, (wrb) s10 <-- 0x80002c42
       0     5028        M 0x80000a10 mv      s9, s1                 #; s1  = 17, (wrb) s9  <-- 17
       0     5029        M 0x80000a14 lbu     a0, 0(s0)              #; s0  = 0x80002c40, a0  <~~ Byte[0x80002c40]
       0     5043        M                                           #; (lsu) a0  <-- 0
       0     5044        M 0x80000a18 bnez    a0, pc - 40            #; a0  = 0, not taken
       0     5045        M 0x80000a1c j       pc + 0xad8             #; goto 0x800014f4
       0     5057        M 0x800014f4 mv      a2, s9                 #; s9  = 17, (wrb) a2  <-- 17
       0     5058        M 0x800014f8 bltu    s9, s5, pc + 8         #; s9  = 17, s5  = -1, taken, goto 0x80001500
       0     5069        M 0x80001500 li      a0, 0                  #; (wrb) a0  <-- 0
       0     5070        M 0x80001504 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5071        M 0x80001508 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5072        M 0x8000150c jalr    s2                     #; s2  = 0x80001550, (wrb) ra  <-- 0x80001510, goto 0x80001550
       0     5083        M 0x80001550 beqz    a0, pc + 168           #; a0  = 0, taken, goto 0x800015f8
       0     5088        M 0x800015f8 ret                            #; ra  = 0x80001510, goto 0x80001510
       0     5089        M 0x80001510 mv      a0, s9                 #; s9  = 17, (wrb) a0  <-- 17
       0     5090        M 0x80001514 lw      s11, 60(sp)            #; sp  = 0x0011fea0, s11 <~~ Word[0x0011fedc]
       0     5093        M                                           #; (lsu) s11 <-- 0
       0     5094        M 0x80001518 lw      s10, 64(sp)            #; sp  = 0x0011fea0, s10 <~~ Word[0x0011fee0]
       0     5097        M                                           #; (lsu) s10 <-- 0
       0     5098        M 0x8000151c lw      s9, 68(sp)             #; sp  = 0x0011fea0, s9  <~~ Word[0x0011fee4]
       0     5101        M                                           #; (lsu) s9  <-- 0
       0     5103        M 0x80001520 lw      s8, 72(sp)             #; sp  = 0x0011fea0, s8  <~~ Word[0x0011fee8]
       0     5106        M                                           #; (lsu) s8  <-- 0
       0     5107        M 0x80001524 lw      s7, 76(sp)             #; sp  = 0x0011fea0, s7  <~~ Word[0x0011feec]
       0     5110        M                                           #; (lsu) s7  <-- 0
       0     5111        M 0x80001528 lw      s6, 80(sp)             #; sp  = 0x0011fea0, s6  <~~ Word[0x0011fef0]
       0     5114        M                                           #; (lsu) s6  <-- 0
       0     5115        M 0x8000152c lw      s5, 84(sp)             #; sp  = 0x0011fea0, s5  <~~ Word[0x0011fef4]
       0     5118        M                                           #; (lsu) s5  <-- 0
       0     5119        M 0x80001530 lw      s4, 88(sp)             #; sp  = 0x0011fea0, s4  <~~ Word[0x0011fef8]
       0     5122        M                                           #; (lsu) s4  <-- 0
       0     5123        M 0x80001534 lw      s3, 92(sp)             #; sp  = 0x0011fea0, s3  <~~ Word[0x0011fefc]
       0     5126        M                                           #; (lsu) s3  <-- 0
       0     5127        M 0x80001538 lw      s2, 96(sp)             #; sp  = 0x0011fea0, s2  <~~ Word[0x0011ff00]
       0     5130        M                                           #; (lsu) s2  <-- 0
       0     5131        M 0x8000153c lw      s1, 100(sp)            #; sp  = 0x0011fea0, s1  <~~ Word[0x0011ff04]
       0     5134        M                                           #; (lsu) s1  <-- 0
       0     5135        M 0x80001540 lw      s0, 104(sp)            #; sp  = 0x0011fea0, s0  <~~ Word[0x0011ff08]
       0     5138        M                                           #; (lsu) s0  <-- 0
       0     5139        M 0x80001544 lw      ra, 108(sp)            #; sp  = 0x0011fea0, ra  <~~ Word[0x0011ff0c]
       0     5140        M 0x80001548 addi    sp, sp, 112            #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011ff10
       0     5142        M                                           #; (lsu) ra  <-- 0x8000094c
       0     5143        M 0x8000154c ret                            #; ra  = 0x8000094c, goto 0x8000094c
       0     5146        M 0x8000094c lw      ra, 12(sp)             #; sp  = 0x0011ff10, ra  <~~ Word[0x0011ff1c]
       0     5149        M 0x80000950 addi    sp, sp, 48             #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011ff40
       0     5150        M                                           #; (lsu) ra  <-- 0x800008dc
       0     5151        M 0x80000954 ret                            #; ra  = 0x800008dc, goto 0x800008dc
       0     5154        M 0x800008dc auipc   a0, 0x2                #; (wrb) a0  <-- 0x800028dc
       0     5157        M 0x800008e0 addi    a0, a0, 1596           #; a0  = 0x800028dc, (wrb) a0  <-- 0x80002f18
       0     5160        M 0x800008e4 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80002f18]
       0     5169        M 0x800008f0 lw      ra, 28(sp)             #; sp  = 0x0011ff40, ra  <~~ Word[0x0011ff5c]
                         M                                           #; (f:lsu) ft3  <-- 0.0001
       0     5170        M 0x800008f4 addi    sp, sp, 32             #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff60
                         M 0x800008e8 flt.d   a0, ft3, fs0           #; ft3  = 0.0001, fs0  = 0.0
       0     5172        M                                           #; (lsu) ra  <-- 0x800029b0
                         M 0x800008ec fld     fs0, 16(sp)            #; fs0  <~~ Doub[0x0011ff50]
       0     5173        M 0x800008f8 ret                            #; ra  = 0x800029b0, goto 0x800029b0
                         M                                           #; (f:lsu) fs0  <-- 0.0
       0     5185        M 0x800029b0 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
       0     5186        M 0x800029b4 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800029b4
       0     5187        M 0x800029b8 jalr    ra, ra, 524            #; ra  = 0x800029b4, (wrb) ra  <-- 0x800029bc, goto 0x80002bc0
       0     5208        M 0x80002bc0 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
       0     5209        M 0x80002bc4 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x800029bc ~~> Word[0x0011ff5c]
       0     5210        M 0x80002bc8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002bc8
       0     5211        M 0x80002bcc jalr    ra, ra, -1264          #; ra  = 0x80002bc8, (wrb) ra  <-- 0x80002bd0, goto 0x800026d8
       0     5231        M 0x800026d8 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     5232        M 0x800026dc add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     5243        M 0x800026e0 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     5246        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     5247        M 0x800026e4 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     5250        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     5251        M 0x800026e8 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
       0     5252        M 0x800026ec ret                            #; ra  = 0x80002bd0, goto 0x80002bd0
       0     5254        M                                           #; (lsu) a0  <-- 0x00120190
       0     5255        M 0x80002bd0 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
       0     5265        M                                           #; (lsu) a0  <-- 0
       0     5266        M 0x80002bd4 mv      zero, a0               #; a0  = 0
       0     5267        M 0x80002bd8 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
       0     5268        M 0x80002bdc addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
       0     5270        M                                           #; (lsu) ra  <-- 0x800029bc
       0     5271        M 0x80002be0 ret                            #; ra  = 0x800029bc, goto 0x800029bc
       0     5285        M 0x800029bc mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
       0     5289        M 0x800029c0 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800029c0
       0     5290        M 0x800029c4 jalr    ra, ra, 556            #; ra  = 0x800029c0, (wrb) ra  <-- 0x800029c8, goto 0x80002bec
       0     5291        M 0x80002bec addi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff58
       0     5292        M 0x80002bf0 sw      a0, 0(sp)              #; sp  = 0x0011ff58, 0 ~~> Word[0x0011ff58]
       0     5293        M 0x80002bf4 sw      ra, 4(sp)              #; sp  = 0x0011ff58, 0x800029c8 ~~> Word[0x0011ff5c]
       0     5294        M 0x80002bf8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002bf8
       0     5295        M 0x80002bfc jalr    ra, ra, -1344          #; ra  = 0x80002bf8, (wrb) ra  <-- 0x80002c00, goto 0x800026b8
       0     5314        M 0x800026b8 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     5315        M 0x800026bc add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     5326        M 0x800026c0 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     5329        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     5330        M 0x800026c4 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     5335        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     5336        M 0x800026c8 lw      a0, 8(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff78]
       0     5337        M 0x800026cc csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5339        M                                           #; (lsu) a0  <-- 0
       0     5340        M 0x800026d0 sub     a0, a1, a0             #; a1  = 0, a0  = 0, (wrb) a0  <-- 0
       0     5341        M 0x800026d4 ret                            #; ra  = 0x80002c00, goto 0x80002c00
       0     5342        M 0x80002c00 lw      t0, 0(sp)              #; sp  = 0x0011ff58, t0  <~~ Word[0x0011ff58]
       0     5345        M                                           #; (lsu) t0  <-- 0
       0     5346        M 0x80002c04 lw      ra, 4(sp)              #; sp  = 0x0011ff58, ra  <~~ Word[0x0011ff5c]
       0     5347        M 0x80002c08 addi    sp, sp, 8              #; sp  = 0x0011ff58, (wrb) sp  <-- 0x0011ff60
       0     5348        M 0x80002c0c bnez    a0, pc + 24            #; a0  = 0, not taken
       0     5349        M                                           #; (lsu) ra  <-- 0x800029c8
       0     5353        M 0x80002c10 slli    t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 0
       0     5354        M 0x80002c14 ori     t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 1
       0     5355        M 0x80002c18 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002c18
       0     5356        M 0x80002c1c addi    t1, t1, 616            #; t1  = 0x80002c18, (wrb) t1  <-- 0x80002e80
       0     5364        M 0x80002c20 sw      t0, 0(t1)              #; t1  = 0x80002e80, 1 ~~> Word[0x80002e80]
       0     5365        M 0x80002c24 ret                            #; ra  = 0x800029c8, goto 0x800029c8
       0     5378        M 0x800029c8 wfi                            #; 

## Performance metrics

Performance metrics for section 0 @ (12, 5378):
snitch_loads                                   136
snitch_stores                                  142
fpss_stores                                      5
fpss_loads                                      24
snitch_avg_load_latency                    11.9632
snitch_occupancy                            0.2338
snitch_fseq_rel_offloads                    0.0839
fseq_yield                                     1.0
fseq_fpu_yield                                 1.0
fpss_section_latency                             0
fpss_avg_fpu_latency                           1.4
fpss_avg_load_latency                       5.3333
fpss_occupancy                              0.0214
fpss_fpu_occupancy                          0.0149
fpss_fpu_rel_occupancy                      0.6957
cycles                                        5367
total_ipc                                   0.2553
