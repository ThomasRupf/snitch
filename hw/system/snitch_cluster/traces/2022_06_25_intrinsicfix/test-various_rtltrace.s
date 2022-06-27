       0       12        M 0x00001000 csrr    a0, mhartid            #; mhartid = 0, (wrb) a0  <-- 0
       0       32        M 0x00001004 auipc   a1, 0x0                #; (wrb) a1  <-- 4100
       0       56        M 0x00001008 addi    a1, a1, 32             #; a1  = 4100, (wrb) a1  <-- 4132
       0       84        M 0x0000100c auipc   t0, 0x0                #; (wrb) t0  <-- 4108
       0      104        M 0x00001010 lw      t0, 20(t0)             #; t0  = 4108, t0  <~~ Word[0x00001020]
       0      115        M                                           #; (lsu) t0  <-- 0x80002700
       0      128        M 0x00001014 jalr    t0                     #; t0  = 0x80002700, (wrb) ra  <-- 4120, goto 0x80002700
       0      269        M 0x80002700 auipc   gp, 0x1                #; (wrb) gp  <-- 0x80003700
       0      270        M 0x80002704 addi    gp, gp, -248           #; gp  = 0x80003700, (wrb) gp  <-- 0x80003608
       0      271        M 0x80002708 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002708
       0      272        M 0x8000270c jalr    ra, ra, 964            #; ra  = 0x80002708, (wrb) ra  <-- 0x80002710, goto 0x80002acc
       0      292        M 0x80002acc mv      a4, a1                 #; a1  = 4132, (wrb) a4  <-- 4132
       0      304        M 0x80002ad0 lw      a1, 4(a4)              #; a4  = 4132, a1  <~~ Word[0x00001028]
       0      334        M                                           #; (lsu) a1  <-- 8
       0      335        M 0x80002ad4 lw      t0, 8(a4)              #; a4  = 4132, t0  <~~ Word[0x0000102c]
       0      374        M                                           #; (lsu) t0  <-- 0
       0      375        M 0x80002ad8 lw      a2, 12(a4)             #; a4  = 4132, a2  <~~ Word[0x00001030]
       0      414        M                                           #; (lsu) a2  <-- 0x00100000
       0      415        M 0x80002adc lw      t1, 16(a4)             #; a4  = 4132, t1  <~~ Word[0x00001034]
       0      454        M                                           #; (lsu) t1  <-- 0x00020000
       0      455        M 0x80002ae0 lw      t2, 20(a4)             #; a4  = 4132, t2  <~~ Word[0x00001038]
       0      456        M 0x80002ae4 sub     a0, a0, t0             #; a0  = 0, t0  = 0, (wrb) a0  <-- 0
       0      457        M 0x80002ae8 div     t3, a0, a1             #; a0  = 0, a1  = 8
       0      460        M                                           #; (acc) t4  <-- 0x027e0eb3
       0      494        M                                           #; (lsu) t2  <-- 0
       0      495        M 0x80002aec mul     t4, t3, t2             #; t3  = 0, t2  = 0
       0      498        M                                           #; (acc) a2  <-- 0x01d60633
       0      499        M 0x80002af0 add     a2, a2, t4             #; a2  = 0x00100000, t4  = 0, (wrb) a2  <-- 0x00100000
       0      500        M 0x80002af4 add     a3, a2, t1             #; a2  = 0x00100000, t1  = 0x00020000, (wrb) a3  <-- 0x00120000
       0      501        M 0x80002af8 remu    a0, a0, a1             #; a0  = 0, a1  = 8
       0      502        M 0x80002afc ret                            #; ra  = 0x80002710, goto 0x80002710
       0      504        M                                           #; (acc) s0  <-- 0x00050413
       0      505        M 0x80002710 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
       0      506        M 0x80002714 mv      a0, a4                 #; a4  = 4132, (wrb) a0  <-- 4132
       0      507        M 0x80002718 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002718
       0      508        M 0x8000271c jalr    ra, ra, 1036           #; ra  = 0x80002718, (wrb) ra  <-- 0x80002720, goto 0x80002b24
       0      523        M 0x80002b24 lw      a0, 8(a0)              #; a0  = 4132, a0  <~~ Word[0x0000102c]
       0      524        M 0x80002b28 ret                            #; ra  = 0x80002720, goto 0x80002720
       0      543        M                                           #; (lsu) a0  <-- 0
       0      544        M 0x80002720 mv      t0, a0                 #; a0  = 0, (wrb) t0  <-- 0
       0      545        M 0x80002724 mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
       0      546        M 0x80002728 csrr    t1, mhartid            #; mhartid = 0, (wrb) t1  <-- 0
       0      547        M 0x8000272c sub     t0, t1, t0             #; t1  = 0, t0  = 0, (wrb) t0  <-- 0
       0      549        M 0x80002730 bnez    t0, pc + 36            #; t0  = 0, not taken
       0      550        M 0x80002734 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002734
       0      551        M 0x80002738 addi    t0, t0, 1972           #; t0  = 0x80002734, (wrb) t0  <-- 0x80002ee8
       0      552        M 0x8000273c auipc   t1, 0x0                #; (wrb) t1  <-- 0x8000273c
       0      562        M 0x80002740 addi    t1, t1, 1968           #; t1  = 0x8000273c, (wrb) t1  <-- 0x80002eec
       0      563        M 0x80002744 bge     t0, t1, pc + 16        #; t0  = 0x80002ee8, t1  = 0x80002eec, not taken
       0      564        M 0x80002748 sw      zero, 0(t0)            #; t0  = 0x80002ee8, 0 ~~> Word[0x80002ee8]
       0      565        M 0x8000274c addi    t0, t0, 4              #; t0  = 0x80002ee8, (wrb) t0  <-- 0x80002eec
       0      573        M 0x80002750 blt     t0, t1, pc - 8         #; t0  = 0x80002eec, t1  = 0x80002eec, not taken
       0      574        M 0x80002754 csrr    t0, misa               #; misa = 0x40801129, (wrb) t0  <-- 0x40801129
       0      575        M 0x80002758 andi    t0, t0, 40             #; t0  = 0x40801129, (wrb) t0  <-- 40
       0      576        M 0x8000275c beqz    t0, pc + 132           #; t0  = 40, not taken
       0      586        M 0x80002760 fcvt.d.w ft0, zero             #; ac1  = 0
       0      587        M 0x80002764 fcvt.d.w ft1, zero             #; ac1  = 0, (f:fpu) ft0  <-- 0.0
       0      588        M 0x80002768 fcvt.d.w ft2, zero             #; ac1  = 0, (f:fpu) ft1  <-- 0.0
       0      589        M 0x8000276c fcvt.d.w ft3, zero             #; ac1  = 0, (f:fpu) ft2  <-- 0.0
       0      590        M                                           #; (f:fpu) ft3  <-- 0.0
       0      598        M 0x80002770 fcvt.d.w ft4, zero             #; ac1  = 0
       0      599        M 0x80002774 fcvt.d.w ft5, zero             #; ac1  = 0, (f:fpu) ft4  <-- 0.0
       0      600        M 0x80002778 fcvt.d.w ft6, zero             #; ac1  = 0, (f:fpu) ft5  <-- 0.0
       0      601        M 0x8000277c fcvt.d.w ft7, zero             #; ac1  = 0, (f:fpu) ft6  <-- 0.0
       0      602        M                                           #; (f:fpu) ft7  <-- 0.0
       0      610        M 0x80002780 fcvt.d.w fs0, zero             #; ac1  = 0
       0      611        M 0x80002784 fcvt.d.w fs1, zero             #; ac1  = 0, (f:fpu) fs0  <-- 0.0
       0      612        M 0x80002788 fcvt.d.w fa0, zero             #; ac1  = 0, (f:fpu) fs1  <-- 0.0
       0      613        M 0x8000278c fcvt.d.w fa1, zero             #; ac1  = 0, (f:fpu) fa0  <-- 0.0
       0      614        M                                           #; (f:fpu) fa1  <-- 0.0
       0      622        M 0x80002790 fcvt.d.w fa2, zero             #; ac1  = 0
       0      623        M 0x80002794 fcvt.d.w fa3, zero             #; ac1  = 0, (f:fpu) fa2  <-- 0.0
       0      624        M 0x80002798 fcvt.d.w fa4, zero             #; ac1  = 0, (f:fpu) fa3  <-- 0.0
       0      625        M 0x8000279c fcvt.d.w fa5, zero             #; ac1  = 0, (f:fpu) fa4  <-- 0.0
       0      626        M                                           #; (f:fpu) fa5  <-- 0.0
       0      634        M 0x800027a0 fcvt.d.w fa6, zero             #; ac1  = 0
       0      635        M 0x800027a4 fcvt.d.w fa7, zero             #; ac1  = 0, (f:fpu) fa6  <-- 0.0
       0      636        M 0x800027a8 fcvt.d.w fs2, zero             #; ac1  = 0, (f:fpu) fa7  <-- 0.0
       0      637        M 0x800027ac fcvt.d.w fs3, zero             #; ac1  = 0, (f:fpu) fs2  <-- 0.0
       0      638        M                                           #; (f:fpu) fs3  <-- 0.0
       0      646        M 0x800027b0 fcvt.d.w fs4, zero             #; ac1  = 0
       0      647        M 0x800027b4 fcvt.d.w fs5, zero             #; ac1  = 0, (f:fpu) fs4  <-- 0.0
       0      648        M 0x800027b8 fcvt.d.w fs6, zero             #; ac1  = 0, (f:fpu) fs5  <-- 0.0
       0      649        M 0x800027bc fcvt.d.w fs7, zero             #; ac1  = 0, (f:fpu) fs6  <-- 0.0
       0      650        M                                           #; (f:fpu) fs7  <-- 0.0
       0      658        M 0x800027c0 fcvt.d.w fs8, zero             #; ac1  = 0
       0      659        M 0x800027c4 fcvt.d.w fs9, zero             #; ac1  = 0, (f:fpu) fs8  <-- 0.0
       0      660        M 0x800027c8 fcvt.d.w fs10, zero            #; ac1  = 0, (f:fpu) fs9  <-- 0.0
       0      661        M 0x800027cc fcvt.d.w fs11, zero            #; ac1  = 0, (f:fpu) fs10 <-- 0.0
       0      662        M                                           #; (f:fpu) fs11 <-- 0.0
       0      670        M 0x800027d0 fcvt.d.w ft8, zero             #; ac1  = 0
       0      671        M 0x800027d4 fcvt.d.w ft9, zero             #; ac1  = 0, (f:fpu) ft8  <-- 0.0
       0      672        M 0x800027d8 fcvt.d.w ft10, zero            #; ac1  = 0, (f:fpu) ft9  <-- 0.0
       0      673        M 0x800027dc fcvt.d.w ft11, zero            #; ac1  = 0, (f:fpu) ft10 <-- 0.0
       0      674        M                                           #; (f:fpu) ft11 <-- 0.0
       0      681        M 0x800027e0 addi    a3, a3, -8             #; a3  = 0x00120000, (wrb) a3  <-- 0x0011fff8
       0      682        M 0x800027e4 sw      zero, 0(a3)            #; a3  = 0x0011fff8, 0 ~~> Word[0x0011fff8]
       0      683        M 0x800027e8 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800027e8
       0      684        M 0x800027ec lw      t0, 900(t0)            #; t0  = 0x800027e8, t0  <~~ Word[0x80002b6c]
       0      704        M                                           #; (lsu) t0  <-- 136
       0      705        M 0x800027f0 sub     a3, a3, t0             #; a3  = 0x0011fff8, t0  = 136, (wrb) a3  <-- 0x0011ff70
       0      706        M 0x800027f4 mv      a5, a3                 #; a3  = 0x0011ff70, (wrb) a5  <-- 0x0011ff70
       0      707        M 0x800027f8 auipc   t2, 0x0                #; (wrb) t2  <-- 0x800027f8
       0      708        M 0x800027fc lw      t2, 880(t2)            #; t2  = 0x800027f8, t2  <~~ Word[0x80002b68]
       0      744        M                                           #; (lsu) t2  <-- 10
       0      745        M 0x80002800 sll     t0, a0, t2             #; a0  = 0, t2  = 10, (wrb) t0  <-- 0
       0      746        M 0x80002804 sll     t1, a1, t2             #; a1  = 8, t2  = 10, (wrb) t1  <-- 8192
       0      747        M 0x80002808 sub     sp, a3, t0             #; a3  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
       0      748        M 0x8000280c sub     a3, a3, t1             #; a3  = 0x0011ff70, t1  = 8192, (wrb) a3  <-- 0x0011df70
       0      749        M 0x80002810 slli    t0, a0, 3              #; a0  = 0, (wrb) t0  <-- 0
       0      750        M 0x80002814 slli    t1, a1, 3              #; a1  = 8, (wrb) t1  <-- 64
       0      751        M 0x80002818 sub     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
       0      752        M 0x8000281c sub     a3, a3, t1             #; a3  = 0x0011df70, t1  = 64, (wrb) a3  <-- 0x0011df30
       0      761        M 0x80002820 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002820
       0      762        M 0x80002824 addi    t0, t0, 1512           #; t0  = 0x80002820, (wrb) t0  <-- 0x80002e08
       0      763        M 0x80002828 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002828
       0      764        M 0x8000282c addi    t1, t1, 1504           #; t1  = 0x80002828, (wrb) t1  <-- 0x80002e08
       0      775        M 0x80002830 auipc   t2, 0x0                #; (wrb) t2  <-- 0x80002830
       0      776        M 0x80002834 addi    t2, t2, 1496           #; t2  = 0x80002830, (wrb) t2  <-- 0x80002e08
       0      777        M 0x80002838 auipc   t3, 0x0                #; (wrb) t3  <-- 0x80002838
       0      778        M 0x8000283c addi    t3, t3, 1504           #; t3  = 0x80002838, (wrb) t3  <-- 0x80002e18
       0      787        M 0x80002840 add     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0x80002e08, (wrb) sp  <-- 0x80122d78
       0      788        M 0x80002844 sub     sp, sp, t1             #; sp  = 0x80122d78, t1  = 0x80002e08, (wrb) sp  <-- 0x0011ff70
       0      789        M 0x80002848 add     sp, sp, t2             #; sp  = 0x0011ff70, t2  = 0x80002e08, (wrb) sp  <-- 0x80122d78
       0      790        M 0x8000284c sub     sp, sp, t3             #; sp  = 0x80122d78, t3  = 0x80002e18, (wrb) sp  <-- 0x0011ff60
       0      799        M 0x80002850 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
       0      800        M 0x80002854 mv      tp, sp                 #; sp  = 0x0011ff60, (wrb) tp  <-- 0x0011ff60
       0      801        M 0x80002858 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
       0      802        M 0x8000285c mv      t4, tp                 #; tp  = 0x0011ff60, (wrb) t4  <-- 0x0011ff60
       0      811        M 0x80002860 bge     t0, t1, pc + 24        #; t0  = 0x80002e08, t1  = 0x80002e08, taken, goto 0x80002878
       0      823        M 0x80002878 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002878
       0      824        M 0x8000287c addi    t0, t0, 1424           #; t0  = 0x80002878, (wrb) t0  <-- 0x80002e08
       0      835        M 0x80002880 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002880
       0      836        M 0x80002884 addi    t1, t1, 1432           #; t1  = 0x80002880, (wrb) t1  <-- 0x80002e18
       0      837        M 0x80002888 bge     t0, t1, pc + 20        #; t0  = 0x80002e08, t1  = 0x80002e18, not taken
       0      838        M 0x8000288c sw      zero, 0(t4)            #; t4  = 0x0011ff60, 0 ~~> Word[0x0011ff60]
       0      847        M 0x80002890 addi    t0, t0, 4              #; t0  = 0x80002e08, (wrb) t0  <-- 0x80002e0c
       0      848        M 0x80002894 addi    t4, t4, 4              #; t4  = 0x0011ff60, (wrb) t4  <-- 0x0011ff64
       0      849        M 0x80002898 blt     t0, t2, pc - 12        #; t0  = 0x80002e0c, t2  = 0x80002e08, not taken
       0      850        M 0x8000289c addi    sp, sp, -20            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff4c
       0      862        M 0x800028a0 sw      a0, 0(sp)              #; sp  = 0x0011ff4c, 0 ~~> Word[0x0011ff4c]
       0      863        M 0x800028a4 sw      a1, 4(sp)              #; sp  = 0x0011ff4c, 8 ~~> Word[0x0011ff50]
       0      864        M 0x800028a8 sw      a2, 8(sp)              #; sp  = 0x0011ff4c, 0x00100000 ~~> Word[0x0011ff54]
       0      865        M 0x800028ac sw      a3, 12(sp)             #; sp  = 0x0011ff4c, 0x0011df30 ~~> Word[0x0011ff58]
       0      875        M 0x800028b0 sw      a4, 16(sp)             #; sp  = 0x0011ff4c, 4132 ~~> Word[0x0011ff5c]
       0      876        M 0x800028b4 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800028b4
       0      877        M 0x800028b8 jalr    ra, ra, -1064          #; ra  = 0x800028b4, (wrb) ra  <-- 0x800028bc, goto 0x8000248c
       0      899        M 0x8000248c sw      a5, 0(a5)              #; a5  = 0x0011ff70, 0x0011ff70 ~~> Word[0x0011ff70]
       0      912        M 0x80002490 sw      a4, 4(a5)              #; a5  = 0x0011ff70, 4132 ~~> Word[0x0011ff74]
       0      913        M 0x80002494 lw      t1, 8(a4)              #; a4  = 4132, t1  <~~ Word[0x0000102c]
       0      931        M                                           #; (lsu) t1  <-- 0
       0      932        M 0x80002498 sw      t1, 8(a5)              #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff78]
       0      933        M 0x8000249c lw      a6, 40(a4)             #; a4  = 4132, a6  <~~ Word[0x0000104c]
       0      971        M                                           #; (lsu) a6  <-- 1
       0      972        M 0x800024a0 lw      a7, 44(a4)             #; a4  = 4132, a7  <~~ Word[0x00001050]
       0     1011        M                                           #; (lsu) a7  <-- 1
       0     1012        M 0x800024a4 lw      t0, 4(a4)              #; a4  = 4132, t0  <~~ Word[0x00001028]
       0     1013        M 0x800024a8 mul     a6, a7, a6             #; a7  = 1, a6  = 1
       0     1016        M                                           #; (acc) a0  <-- 0x02580533
       0     1040        M                                           #; (lsu) t0  <-- 8
       0     1041        M 0x800024ac mul     a0, a6, t0             #; a6  = 1, t0  = 8
       0     1044        M                                           #; (acc) a2  <-- 0x00a7a623
       0     1045        M 0x800024b0 sw      a0, 12(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff7c]
       0     1046        M 0x800024b4 csrr    a7, mhartid            #; mhartid = 0, (wrb) a7  <-- 0
       0     1047        M 0x800024b8 sub     a0, a7, t1             #; a7  = 0, t1  = 0, (wrb) a0  <-- 0
       0     1048        M 0x800024bc divu    a0, a0, t0             #; a0  = 0, t0  = 8
       0     1054        M 0x800024c0 sw      a0, 16(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff80]
       0     1055        M 0x800024c4 sw      a6, 20(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff84]
       0     1056        M 0x800024c8 sw      t1, 24(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff88]
       0     1057        M 0x800024cc sw      a1, 28(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff8c]
       0     1067        M 0x800024d0 lw      a0, 24(a4)             #; a4  = 4132, a0  <~~ Word[0x0000103c]
       0     1068        M 0x800024d4 lui     a1, 0x10000            #; (wrb) a1  <-- 0x10000000
       0     1100        M                                           #; (lsu) a0  <-- 0x80000000
       0     1101        M 0x800024d8 add     a0, a0, a1             #; a0  = 0x80000000, a1  = 0x10000000, (wrb) a0  <-- 0x90000000
       0     1102        M 0x800024dc sw      zero, 36(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff94]
       0     1103        M 0x800024e0 sw      a0, 32(a5)             #; a5  = 0x0011ff70, 0x90000000 ~~> Word[0x0011ff90]
       0     1104        M 0x800024e4 lw      a0, 32(a4)             #; a4  = 4132, a0  <~~ Word[0x00001044]
       0     1140        M                                           #; (lsu) a0  <-- 0
       0     1141        M 0x800024e8 lw      a1, 36(a4)             #; a4  = 4132, a1  <~~ Word[0x00001048]
       0     1142        M 0x800024ec sw      a0, 40(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff98]
       0     1180        M                                           #; (lsu) a1  <-- 1
       0     1181        M 0x800024f0 sw      a1, 44(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff9c]
       0     1182        M 0x800024f4 sw      a2, 48(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffa0]
       0     1183        M 0x800024f8 sw      zero, 52(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffa4]
       0     1184        M 0x800024fc sw      a3, 56(a5)             #; a5  = 0x0011ff70, 0x0011df30 ~~> Word[0x0011ffa8]
       0     1185        M 0x80002500 sw      zero, 60(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffac]
       0     1186        M 0x80002504 lw      a0, 16(a4)             #; a4  = 4132, a0  <~~ Word[0x00001034]
       0     1201        M                                           #; (lsu) a0  <-- 0x00020000
       0     1202        M 0x80002508 add     a6, a2, a0             #; a2  = 0x00100000, a0  = 0x00020000, (wrb) a6  <-- 0x00120000
       0     1203        M 0x8000250c addi    a1, a6, 400            #; a6  = 0x00120000, (wrb) a1  <-- 0x00120190
       0     1204        M 0x80002510 sw      a1, 112(a5)            #; a5  = 0x0011ff70, 0x00120190 ~~> Word[0x0011ffe0]
       0     1205        M 0x80002514 sltu    t0, a6, a0             #; a6  = 0x00120000, a0  = 0x00020000, (wrb) t0  <-- 0
       0     1206        M 0x80002518 srli    a1, a0, 1              #; a0  = 0x00020000, (wrb) a1  <-- 0x00010000
       0     1207        M 0x8000251c add     t1, a6, a1             #; a6  = 0x00120000, a1  = 0x00010000, (wrb) t1  <-- 0x00130000
       0     1215        M 0x80002520 sltu    a1, t1, a6             #; t1  = 0x00130000, a6  = 0x00120000, (wrb) a1  <-- 0
       0     1216        M 0x80002524 add     a1, t0, a1             #; t0  = 0, a1  = 0, (wrb) a1  <-- 0
       0     1217        M 0x80002528 sw      t1, 64(a5)             #; a5  = 0x0011ff70, 0x00130000 ~~> Word[0x0011ffb0]
       0     1218        M 0x8000252c sw      a1, 68(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffb4]
       0     1228        M 0x80002530 slli    a0, a0, 1              #; a0  = 0x00020000, (wrb) a0  <-- 0x00040000
       0     1229        M 0x80002534 add     a1, a0, a2             #; a0  = 0x00040000, a2  = 0x00100000, (wrb) a1  <-- 0x00140000
       0     1230        M 0x80002538 sltu    a0, a1, a0             #; a1  = 0x00140000, a0  = 0x00040000, (wrb) a0  <-- 0
       0     1231        M 0x8000253c sw      a1, 72(a5)             #; a5  = 0x0011ff70, 0x00140000 ~~> Word[0x0011ffb8]
       0     1240        M 0x80002540 sw      a0, 76(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffbc]
       0     1241        M 0x80002544 sw      zero, 104(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd8]
       0     1244        M 0x80002548 sw      zero, 108(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffdc]
       0     1245        M 0x8000254c lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1252        M 0x80002550 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1253        M 0x80002554 sw      a5, 0(a0)              #; a0  = 0x0011ff60, 0x0011ff70 ~~> Word[0x0011ff60]
       0     1254        M 0x80002558 lw      a0, 0(a5)              #; a5  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1258        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1259        M 0x8000255c lw      a1, 24(a0)             #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ff88]
       0     1262        M                                           #; (lsu) a1  <-- 0
       0     1264        M 0x80002560 lw      a0, 28(a0)             #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff8c]
       0     1265        M 0x80002564 sub     a1, a7, a1             #; a7  = 0, a1  = 0, (wrb) a1  <-- 0
       0     1267        M                                           #; (lsu) a0  <-- 8
       0     1268        M 0x80002568 remu    a0, a1, a0             #; a1  = 0, a0  = 8
       0     1269        M 0x8000256c lui     a1, 0x0                #; (wrb) a1  <-- 0
       0     1276        M 0x80002570 add     a1, a1, tp             #; a1  = 0, tp  = 0x0011ff60, (wrb) a1  <-- 0x0011ff60
       0     1277        M 0x80002574 sw      a0, 4(a1)              #; a1  = 0x0011ff60, 0 ~~> Word[0x0011ff64]
       0     1278        M 0x80002578 li      a0, 1096               #; (wrb) a0  <-- 1096
       0     1279        M 0x8000257c mul     a0, a7, a0             #; a7  = 0, a0  = 1096
       0     1288        M 0x80002580 auipc   a1, 0x1                #; (wrb) a1  <-- 0x80003580
       0     1289        M 0x80002584 addi    a1, a1, -1684          #; a1  = 0x80003580, (wrb) a1  <-- 0x80002eec
       0     1290        M 0x80002588 add     a0, a0, a1             #; a0  = 0, a1  = 0x80002eec, (wrb) a0  <-- 0x80002eec
       0     1291        M 0x8000258c sw      zero, 0(a0)            #; a0  = 0x80002eec, 0 ~~> Word[0x80002eec]
       0     1300        M 0x80002590 lw      a7, 48(a4)             #; a4  = 4132, a7  <~~ Word[0x00001054]
       0     1367        M                                           #; (lsu) a7  <-- 0xffff0000
       0     1368        M 0x80002594 sw      a7, 116(a5)            #; a5  = 0x0011ff70, 0xffff0000 ~~> Word[0x0011ffe4]
       0     1369        M 0x80002598 sw      a6, 124(a5)            #; a5  = 0x0011ff70, 0x00120000 ~~> Word[0x0011ffec]
       0     1370        M 0x8000259c sw      zero, 120(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffe8]
       0     1371        M 0x800025a0 addi    a4, a6, 384            #; a6  = 0x00120000, (wrb) a4  <-- 0x00120180
       0     1372        M 0x800025a4 sw      a4, 128(a5)            #; a5  = 0x0011ff70, 0x00120180 ~~> Word[0x0011fff0]
       0     1373        M 0x800025a8 addi    a0, a2, 7              #; a2  = 0x00100000, (wrb) a0  <-- 0x00100007
       0     1374        M 0x800025ac andi    a0, a0, -8             #; a0  = 0x00100007, (wrb) a0  <-- 0x00100000
       0     1375        M 0x800025b0 sw      a0, 80(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc0]
       0     1376        M 0x800025b4 sub     a2, a3, a2             #; a3  = 0x0011df30, a2  = 0x00100000, (wrb) a2  <-- 0x0001df30
       0     1377        M 0x800025b8 sw      a2, 84(a5)             #; a5  = 0x0011ff70, 0x0001df30 ~~> Word[0x0011ffc4]
       0     1378        M 0x800025bc sw      a0, 88(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc8]
       0     1379        M 0x800025c0 lw      a0, 0(a1)              #; a1  = 0x80002eec, a0  <~~ Word[0x80002eec]
       0     1390        M                                           #; (lsu) a0  <-- 0
       0     1391        M 0x800025c4 addi    a0, a0, 1103           #; a0  = 0, (wrb) a0  <-- 1103
       0     1392        M 0x800025c8 andi    a0, a0, -8             #; a0  = 1103, (wrb) a0  <-- 1096
       0     1393        M 0x800025cc sw      a0, 92(a5)             #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffcc]
       0     1394        M 0x800025d0 sw      zero, 96(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd0]
       0     1395        M 0x800025d4 sw      a0, 100(a5)            #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffd4]
       0     1396        M 0x800025d8 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1397        M 0x800025dc add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1398        M 0x800025e0 sw      a7, 8(a0)              #; a0  = 0x0011ff60, 0xffff0000 ~~> Word[0x0011ff68]
       0     1399        M 0x800025e4 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1400        M 0x800025e8 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1401        M 0x800025ec sw      a4, 12(a0)             #; a0  = 0x0011ff60, 0x00120180 ~~> Word[0x0011ff6c]
       0     1406        M 0x800025f0 ret                            #; ra  = 0x800028bc, goto 0x800028bc
       0     1421        M 0x800028bc lw      a0, 0(sp)              #; sp  = 0x0011ff4c, a0  <~~ Word[0x0011ff4c]
       0     1424        M                                           #; (lsu) a0  <-- 0
       0     1425        M 0x800028c0 lw      a1, 4(sp)              #; sp  = 0x0011ff4c, a1  <~~ Word[0x0011ff50]
       0     1428        M                                           #; (lsu) a1  <-- 8
       0     1429        M 0x800028c4 lw      a2, 8(sp)              #; sp  = 0x0011ff4c, a2  <~~ Word[0x0011ff54]
       0     1432        M                                           #; (lsu) a2  <-- 0x00100000
       0     1433        M 0x800028c8 lw      a3, 12(sp)             #; sp  = 0x0011ff4c, a3  <~~ Word[0x0011ff58]
       0     1436        M                                           #; (lsu) a3  <-- 0x0011df30
       0     1437        M 0x800028cc lw      a4, 16(sp)             #; sp  = 0x0011ff4c, a4  <~~ Word[0x0011ff5c]
       0     1438        M 0x800028d0 addi    sp, sp, 20             #; sp  = 0x0011ff4c, (wrb) sp  <-- 0x0011ff60
       0     1439        M 0x800028d4 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800028d4
       0     1440        M 0x800028d8 addi    t0, t0, 60             #; t0  = 0x800028d4, (wrb) t0  <-- 0x80002910
       0     1441        M 0x800028dc csrw    mtvec, t0              #; t0  = 0x80002910, (lsu) a4  <-- 4132
       0     1449        M 0x800028e0 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800028e0
       0     1450        M 0x800028e4 jalr    ra, ra, 544            #; ra  = 0x800028e0, (wrb) ra  <-- 0x800028e8, goto 0x80002b00
       0     1466        M 0x80002b00 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
       0     1467        M 0x80002b04 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x800028e8 ~~> Word[0x0011ff5c]
       0     1468        M 0x80002b08 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002b08
       0     1469        M 0x80002b0c jalr    ra, ra, -1268          #; ra  = 0x80002b08, (wrb) ra  <-- 0x80002b10, goto 0x80002614
       0     1487        M 0x80002614 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1488        M 0x80002618 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1489        M 0x8000261c lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     1492        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1499        M 0x80002620 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1503        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1504        M 0x80002624 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
       0     1505        M 0x80002628 ret                            #; ra  = 0x80002b10, goto 0x80002b10
       0     1507        M                                           #; (lsu) a0  <-- 0x00120190
       0     1508        M 0x80002b10 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
       0     1537        M                                           #; (lsu) a0  <-- 0
       0     1538        M 0x80002b14 mv      zero, a0               #; a0  = 0
       0     1539        M 0x80002b18 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
       0     1540        M 0x80002b1c addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
       0     1542        M                                           #; (lsu) ra  <-- 0x800028e8
       0     1543        M 0x80002b20 ret                            #; ra  = 0x800028e8, goto 0x800028e8
       0     1547        M 0x800028e8 auipc   ra, 0xffffe            #; (wrb) ra  <-- 0x800008e8
       0     1548        M 0x800028ec jalr    ra, ra, -692           #; ra  = 0x800008e8, (wrb) ra  <-- 0x800028f0, goto 0x80000634
       0     1553        M 0x80000634 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1554        M 0x80000638 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1555        M 0x8000063c lw      a0, 4(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff64]
       0     1558        M                                           #; (lsu) a0  <-- 0
       0     1559        M 0x80000640 beqz    a0, pc + 12            #; a0  = 0, taken, goto 0x8000064c
       0     1560        M 0x8000064c li      a0, 25                 #; (wrb) a0  <-- 25
       0     1571        M 0x80000650 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80000650
       0     1572        M 0x80000654 jalr    zero, t1, 8            #; t1  = 0x80000650
       0     1573        M 0x80000658 addi    sp, sp, -32            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff40
       0     1574        M 0x8000065c sw      ra, 28(sp)             #; sp  = 0x0011ff40, 0x800028f0 ~~> Word[0x0011ff5c]
       0     1586        M 0x80000664 lui     a1, 0x0                #; (wrb) a1  <-- 0
       0     1587        M 0x80000668 add     a1, a1, tp             #; a1  = 0, tp  = 0x0011ff60, (wrb) a1  <-- 0x0011ff60
                         M 0x80000660 fsd     fs0, 16(sp)            #; 0.0 ~~> Doub[0x0011ff50]
       0     1588        M 0x8000066c lw      a1, 0(a1)              #; a1  = 0x0011ff60, a1  <~~ Word[0x0011ff60]
       0     1591        M                                           #; (lsu) a1  <-- 0x0011ff70
       0     1599        M 0x80000670 lw      a1, 0(a1)              #; a1  = 0x0011ff70, a1  <~~ Word[0x0011ff70]
       0     1602        M                                           #; (lsu) a1  <-- 0x0011ff70
       0     1603        M 0x80000674 lw      t1, 88(a1)             #; a1  = 0x0011ff70, t1  <~~ Word[0x0011ffc8]
       0     1606        M                                           #; (lsu) t1  <-- 0x00100000
       0     1607        M 0x80000678 lw      a4, 80(a1)             #; a1  = 0x0011ff70, a4  <~~ Word[0x0011ffc0]
       0     1610        M                                           #; (lsu) a4  <-- 0x00100000
       0     1611        M 0x8000067c lw      a5, 84(a1)             #; a1  = 0x0011ff70, a5  <~~ Word[0x0011ffc4]
       0     1612        M 0x80000680 slli    a3, a0, 3              #; a0  = 25, (wrb) a3  <-- 200
       0     1613        M 0x80000684 add     a3, t1, a3             #; t1  = 0x00100000, a3  = 200, (wrb) a3  <-- 0x001000c8
       0     1614        M                                           #; (lsu) a5  <-- 0x0001df30
       0     1615        M 0x80000688 add     a4, a5, a4             #; a5  = 0x0001df30, a4  = 0x00100000, (wrb) a4  <-- 0x0011df30
       0     1616        M 0x8000068c bgeu    a4, a3, pc + 12        #; a4  = 0x0011df30, a3  = 0x001000c8, taken, goto 0x80000698
       0     1624        M 0x80000698 sw      a3, 88(a1)             #; a1  = 0x0011ff70, 0x001000c8 ~~> Word[0x0011ffc8]
       0     1625        M 0x8000069c auipc   a7, 0x2                #; (wrb) a7  <-- 0x8000269c
       0     1636        M 0x800006a0 addi    a7, a7, 1916           #; a7  = 0x8000269c, (wrb) a7  <-- 0x80002e18
       0     1637        M 0x800006a4 li      a1, 1                  #; (wrb) a1  <-- 1
       0     1638        M 0x800006a8 auipc   a6, 0x2                #; (wrb) a6  <-- 0x800026a8
       0     1639        M 0x800006ac addi    a6, a6, 1912           #; a6  = 0x800026a8, (wrb) a6  <-- 0x80002e20
       0     1648        M 0x800006b0 blt     a0, a1, pc + 272       #; a0  = 25, a1  = 1, not taken
       0     1649        M 0x800006b4 auipc   a1, 0x2                #; (wrb) a1  <-- 0x800026b4
       0     1650        M 0x800006b8 addi    a1, a1, 1908           #; a1  = 0x800026b4, (wrb) a1  <-- 0x80002e28
       0     1653        M 0x800006bc fld     ft0, 0(a1)             #; ft0  <~~ Doub[0x80002e28]
       0     1660        M 0x800006c0 li      a4, 0                  #; (wrb) a4  <-- 0
       0     1661        M 0x800006c4 lui     a1, 0x8421             #; (wrb) a1  <-- 0x08421000
       0     1662        M 0x800006c8 addi    t0, a1, 133            #; a1  = 0x08421000, (wrb) t0  <-- 0x08421085
                         M                                           #; (f:lsu) ft0  <-- 1.4142
       0     1663        M 0x800006cc mv      a1, t1                 #; t1  = 0x00100000, (wrb) a1  <-- 0x00100000
       0     1672        M 0x800006d0 mv      a3, a0                 #; a0  = 25, (wrb) a3  <-- 25
       0     1673        M 0x800006d4 mulhu   a5, a4, t0             #; a4  = 0, t0  = 0x08421085
       0     1676        M                                           #; (acc) a2  <-- 0x40f70633
       0     1677        M 0x800006d8 sub     a2, a4, a5             #; a4  = 0, a5  = 0, (wrb) a2  <-- 0
       0     1678        M 0x800006dc srli    a2, a2, 1              #; a2  = 0, (wrb) a2  <-- 0
       0     1684        M 0x800006e0 add     a2, a2, a5             #; a2  = 0, a5  = 0, (wrb) a2  <-- 0
       0     1685        M 0x800006e4 srli    a2, a2, 4              #; a2  = 0, (wrb) a2  <-- 0
       0     1686        M 0x800006e8 slli    a5, a2, 5              #; a2  = 0, (wrb) a5  <-- 0
       0     1687        M 0x800006ec sub     a2, a2, a5             #; a2  = 0, a5  = 0, (wrb) a2  <-- 0
       0     1696        M 0x800006f0 add     a2, a4, a2             #; a4  = 0, a2  = 0, (wrb) a2  <-- 0
       0     1698        M 0x800006f4 fcvt.d.w ft1, a2               #; ac1  = 0
       0     1699        M                                           #; (f:fpu) ft1  <-- 0.0
       0     1700        M 0x800006f8 fmul.d  ft1, ft1, ft0          #; ft1  = 0.0, ft0  = 1.4142
       0     1703        M                                           #; (f:fpu) ft1  <-- 0.0
       0     1704        M 0x800006fc fsd     ft1, 0(a1)             #; 0.0 ~~> Doub[0x00100000]
       0     1708        M 0x80000700 addi    a4, a4, 1              #; a4  = 0, (wrb) a4  <-- 1
       0     1709        M 0x80000704 addi    a3, a3, -1             #; a3  = 25, (wrb) a3  <-- 24
       0     1710        M 0x80000708 addi    a1, a1, 8              #; a1  = 0x00100000, (wrb) a1  <-- 0x00100008
       0     1711        M 0x8000070c bnez    a3, pc - 56            #; a3  = 24, taken, goto 0x800006d4
       0     1712        M 0x800006d4 mulhu   a5, a4, t0             #; a4  = 1, t0  = 0x08421085
       0     1715        M                                           #; (acc) a2  <-- 0x40f70633
       0     1716        M 0x800006d8 sub     a2, a4, a5             #; a4  = 1, a5  = 0, (wrb) a2  <-- 1
       0     1717        M 0x800006dc srli    a2, a2, 1              #; a2  = 1, (wrb) a2  <-- 0
       0     1718        M 0x800006e0 add     a2, a2, a5             #; a2  = 0, a5  = 0, (wrb) a2  <-- 0
       0     1719        M 0x800006e4 srli    a2, a2, 4              #; a2  = 0, (wrb) a2  <-- 0
       0     1720        M 0x800006e8 slli    a5, a2, 5              #; a2  = 0, (wrb) a5  <-- 0
       0     1721        M 0x800006ec sub     a2, a2, a5             #; a2  = 0, a5  = 0, (wrb) a2  <-- 0
       0     1722        M 0x800006f0 add     a2, a4, a2             #; a4  = 1, a2  = 0, (wrb) a2  <-- 1
       0     1724        M 0x800006f4 fcvt.d.w ft1, a2               #; ac1  = 1
       0     1725        M                                           #; (f:fpu) ft1  <-- 1.0
       0     1726        M 0x80000700 addi    a4, a4, 1              #; a4  = 1, (wrb) a4  <-- 2
                         M 0x800006f8 fmul.d  ft1, ft1, ft0          #; ft1  = 1.0, ft0  = 1.4142
       0     1727        M 0x80000704 addi    a3, a3, -1             #; a3  = 24, (wrb) a3  <-- 23
       0     1728        M 0x80000708 addi    a1, a1, 8              #; a1  = 0x00100008, (wrb) a1  <-- 0x00100010
       0     1729        M 0x8000070c bnez    a3, pc - 56            #; a3  = 23, taken, goto 0x800006d4
                         M                                           #; (f:fpu) ft1  <-- 1.4142
       0     1730        M 0x800006d4 mulhu   a5, a4, t0             #; a4  = 2, t0  = 0x08421085
                         M 0x800006fc fsd     ft1, 0(a1)             #; 1.4142 ~~> Doub[0x00100008]
       0     1733        M                                           #; (acc) a2  <-- 0x40f70633
       0     1734        M 0x800006d8 sub     a2, a4, a5             #; a4  = 2, a5  = 0, (wrb) a2  <-- 2
       0     1735        M 0x800006dc srli    a2, a2, 1              #; a2  = 2, (wrb) a2  <-- 1
       0     1736        M 0x800006e0 add     a2, a2, a5             #; a2  = 1, a5  = 0, (wrb) a2  <-- 1
       0     1737        M 0x800006e4 srli    a2, a2, 4              #; a2  = 1, (wrb) a2  <-- 0
       0     1738        M 0x800006e8 slli    a5, a2, 5              #; a2  = 0, (wrb) a5  <-- 0
       0     1739        M 0x800006ec sub     a2, a2, a5             #; a2  = 0, a5  = 0, (wrb) a2  <-- 0
       0     1740        M 0x800006f0 add     a2, a4, a2             #; a4  = 2, a2  = 0, (wrb) a2  <-- 2
       0     1742        M 0x800006f4 fcvt.d.w ft1, a2               #; ac1  = 2
       0     1743        M                                           #; (f:fpu) ft1  <-- 2.0
       0     1744        M 0x80000700 addi    a4, a4, 1              #; a4  = 2, (wrb) a4  <-- 3
                         M 0x800006f8 fmul.d  ft1, ft1, ft0          #; ft1  = 2.0, ft0  = 1.4142
       0     1745        M 0x80000704 addi    a3, a3, -1             #; a3  = 23, (wrb) a3  <-- 22
       0     1746        M 0x80000708 addi    a1, a1, 8              #; a1  = 0x00100010, (wrb) a1  <-- 0x00100018
       0     1747        M 0x8000070c bnez    a3, pc - 56            #; a3  = 22, taken, goto 0x800006d4
                         M                                           #; (f:fpu) ft1  <-- 2.8284
       0     1748        M 0x800006d4 mulhu   a5, a4, t0             #; a4  = 3, t0  = 0x08421085
                         M 0x800006fc fsd     ft1, 0(a1)             #; 2.8284 ~~> Doub[0x00100010]
       0     1751        M                                           #; (acc) a2  <-- 0x40f70633
       0     1752        M 0x800006d8 sub     a2, a4, a5             #; a4  = 3, a5  = 0, (wrb) a2  <-- 3
       0     1753        M 0x800006dc srli    a2, a2, 1              #; a2  = 3, (wrb) a2  <-- 1
       0     1754        M 0x800006e0 add     a2, a2, a5             #; a2  = 1, a5  = 0, (wrb) a2  <-- 1
       0     1755        M 0x800006e4 srli    a2, a2, 4              #; a2  = 1, (wrb) a2  <-- 0
       0     1756        M 0x800006e8 slli    a5, a2, 5              #; a2  = 0, (wrb) a5  <-- 0
       0     1757        M 0x800006ec sub     a2, a2, a5             #; a2  = 0, a5  = 0, (wrb) a2  <-- 0
       0     1758        M 0x800006f0 add     a2, a4, a2             #; a4  = 3, a2  = 0, (wrb) a2  <-- 3
       0     1760        M 0x800006f4 fcvt.d.w ft1, a2               #; ac1  = 3
       0     1761        M                                           #; (f:fpu) ft1  <-- 3.0
       0     1762        M 0x80000700 addi    a4, a4, 1              #; a4  = 3, (wrb) a4  <-- 4
                         M 0x800006f8 fmul.d  ft1, ft1, ft0          #; ft1  = 3.0, ft0  = 1.4142
       0     1763        M 0x80000704 addi    a3, a3, -1             #; a3  = 22, (wrb) a3  <-- 21
       0     1764        M 0x80000708 addi    a1, a1, 8              #; a1  = 0x00100018, (wrb) a1  <-- 0x00100020
       0     1765        M 0x8000070c bnez    a3, pc - 56            #; a3  = 21, taken, goto 0x800006d4
                         M                                           #; (f:fpu) ft1  <-- 4.2426000
       0     1766        M 0x800006d4 mulhu   a5, a4, t0             #; a4  = 4, t0  = 0x08421085
                         M 0x800006fc fsd     ft1, 0(a1)             #; 4.2426000 ~~> Doub[0x00100018]
       0     1769        M                                           #; (acc) a2  <-- 0x40f70633
       0     1770        M 0x800006d8 sub     a2, a4, a5             #; a4  = 4, a5  = 0, (wrb) a2  <-- 4
       0     1771        M 0x800006dc srli    a2, a2, 1              #; a2  = 4, (wrb) a2  <-- 2
       0     1772        M 0x800006e0 add     a2, a2, a5             #; a2  = 2, a5  = 0, (wrb) a2  <-- 2
       0     1773        M 0x800006e4 srli    a2, a2, 4              #; a2  = 2, (wrb) a2  <-- 0
       0     1774        M 0x800006e8 slli    a5, a2, 5              #; a2  = 0, (wrb) a5  <-- 0
       0     1775        M 0x800006ec sub     a2, a2, a5             #; a2  = 0, a5  = 0, (wrb) a2  <-- 0
       0     1776        M 0x800006f0 add     a2, a4, a2             #; a4  = 4, a2  = 0, (wrb) a2  <-- 4
       0     1778        M 0x800006f4 fcvt.d.w ft1, a2               #; ac1  = 4
       0     1779        M                                           #; (f:fpu) ft1  <-- 4.0
       0     1780        M 0x80000700 addi    a4, a4, 1              #; a4  = 4, (wrb) a4  <-- 5
                         M 0x800006f8 fmul.d  ft1, ft1, ft0          #; ft1  = 4.0, ft0  = 1.4142
       0     1781        M 0x80000704 addi    a3, a3, -1             #; a3  = 21, (wrb) a3  <-- 20
       0     1782        M 0x80000708 addi    a1, a1, 8              #; a1  = 0x00100020, (wrb) a1  <-- 0x00100028
       0     1783        M 0x8000070c bnez    a3, pc - 56            #; a3  = 20, taken, goto 0x800006d4
                         M                                           #; (f:fpu) ft1  <-- 5.6568
       0     1784        M 0x800006d4 mulhu   a5, a4, t0             #; a4  = 5, t0  = 0x08421085
                         M 0x800006fc fsd     ft1, 0(a1)             #; 5.6568 ~~> Doub[0x00100020]
       0     1787        M                                           #; (acc) a2  <-- 0x40f70633
       0     1788        M 0x800006d8 sub     a2, a4, a5             #; a4  = 5, a5  = 0, (wrb) a2  <-- 5
       0     1789        M 0x800006dc srli    a2, a2, 1              #; a2  = 5, (wrb) a2  <-- 2
       0     1790        M 0x800006e0 add     a2, a2, a5             #; a2  = 2, a5  = 0, (wrb) a2  <-- 2
       0     1791        M 0x800006e4 srli    a2, a2, 4              #; a2  = 2, (wrb) a2  <-- 0
       0     1792        M 0x800006e8 slli    a5, a2, 5              #; a2  = 0, (wrb) a5  <-- 0
       0     1793        M 0x800006ec sub     a2, a2, a5             #; a2  = 0, a5  = 0, (wrb) a2  <-- 0
       0     1794        M 0x800006f0 add     a2, a4, a2             #; a4  = 5, a2  = 0, (wrb) a2  <-- 5
       0     1796        M 0x800006f4 fcvt.d.w ft1, a2               #; ac1  = 5
       0     1797        M                                           #; (f:fpu) ft1  <-- 5.0
       0     1798        M 0x80000700 addi    a4, a4, 1              #; a4  = 5, (wrb) a4  <-- 6
                         M 0x800006f8 fmul.d  ft1, ft1, ft0          #; ft1  = 5.0, ft0  = 1.4142
       0     1799        M 0x80000704 addi    a3, a3, -1             #; a3  = 20, (wrb) a3  <-- 19
       0     1800        M 0x80000708 addi    a1, a1, 8              #; a1  = 0x00100028, (wrb) a1  <-- 0x00100030
       0     1801        M 0x8000070c bnez    a3, pc - 56            #; a3  = 19, taken, goto 0x800006d4
                         M                                           #; (f:fpu) ft1  <-- 7.071
       0     1802        M 0x800006d4 mulhu   a5, a4, t0             #; a4  = 6, t0  = 0x08421085
                         M 0x800006fc fsd     ft1, 0(a1)             #; 7.071 ~~> Doub[0x00100028]
       0     1805        M                                           #; (acc) a2  <-- 0x40f70633
       0     1806        M 0x800006d8 sub     a2, a4, a5             #; a4  = 6, a5  = 0, (wrb) a2  <-- 6
       0     1807        M 0x800006dc srli    a2, a2, 1              #; a2  = 6, (wrb) a2  <-- 3
       0     1808        M 0x800006e0 add     a2, a2, a5             #; a2  = 3, a5  = 0, (wrb) a2  <-- 3
       0     1809        M 0x800006e4 srli    a2, a2, 4              #; a2  = 3, (wrb) a2  <-- 0
       0     1810        M 0x800006e8 slli    a5, a2, 5              #; a2  = 0, (wrb) a5  <-- 0
       0     1811        M 0x800006ec sub     a2, a2, a5             #; a2  = 0, a5  = 0, (wrb) a2  <-- 0
       0     1812        M 0x800006f0 add     a2, a4, a2             #; a4  = 6, a2  = 0, (wrb) a2  <-- 6
       0     1814        M 0x800006f4 fcvt.d.w ft1, a2               #; ac1  = 6
       0     1815        M                                           #; (f:fpu) ft1  <-- 6.0
       0     1816        M 0x80000700 addi    a4, a4, 1              #; a4  = 6, (wrb) a4  <-- 7
                         M 0x800006f8 fmul.d  ft1, ft1, ft0          #; ft1  = 6.0, ft0  = 1.4142
       0     1817        M 0x80000704 addi    a3, a3, -1             #; a3  = 19, (wrb) a3  <-- 18
       0     1818        M 0x80000708 addi    a1, a1, 8              #; a1  = 0x00100030, (wrb) a1  <-- 0x00100038
       0     1819        M 0x8000070c bnez    a3, pc - 56            #; a3  = 18, taken, goto 0x800006d4
                         M                                           #; (f:fpu) ft1  <-- 8.4852000
       0     1820        M 0x800006d4 mulhu   a5, a4, t0             #; a4  = 7, t0  = 0x08421085
                         M 0x800006fc fsd     ft1, 0(a1)             #; 8.4852000 ~~> Doub[0x00100030]
       0     1823        M                                           #; (acc) a2  <-- 0x40f70633
       0     1824        M 0x800006d8 sub     a2, a4, a5             #; a4  = 7, a5  = 0, (wrb) a2  <-- 7
       0     1825        M 0x800006dc srli    a2, a2, 1              #; a2  = 7, (wrb) a2  <-- 3
       0     1826        M 0x800006e0 add     a2, a2, a5             #; a2  = 3, a5  = 0, (wrb) a2  <-- 3
       0     1827        M 0x800006e4 srli    a2, a2, 4              #; a2  = 3, (wrb) a2  <-- 0
       0     1828        M 0x800006e8 slli    a5, a2, 5              #; a2  = 0, (wrb) a5  <-- 0
       0     1829        M 0x800006ec sub     a2, a2, a5             #; a2  = 0, a5  = 0, (wrb) a2  <-- 0
       0     1830        M 0x800006f0 add     a2, a4, a2             #; a4  = 7, a2  = 0, (wrb) a2  <-- 7
       0     1832        M 0x800006f4 fcvt.d.w ft1, a2               #; ac1  = 7
       0     1833        M                                           #; (f:fpu) ft1  <-- 7.0
       0     1834        M 0x80000700 addi    a4, a4, 1              #; a4  = 7, (wrb) a4  <-- 8
                         M 0x800006f8 fmul.d  ft1, ft1, ft0          #; ft1  = 7.0, ft0  = 1.4142
       0     1835        M 0x80000704 addi    a3, a3, -1             #; a3  = 18, (wrb) a3  <-- 17
       0     1836        M 0x80000708 addi    a1, a1, 8              #; a1  = 0x00100038, (wrb) a1  <-- 0x00100040
       0     1837        M 0x8000070c bnez    a3, pc - 56            #; a3  = 17, taken, goto 0x800006d4
                         M                                           #; (f:fpu) ft1  <-- 9.8994
       0     1838        M 0x800006d4 mulhu   a5, a4, t0             #; a4  = 8, t0  = 0x08421085
                         M 0x800006fc fsd     ft1, 0(a1)             #; 9.8994 ~~> Doub[0x00100038]
       0     1841        M                                           #; (acc) a2  <-- 0x40f70633
       0     1842        M 0x800006d8 sub     a2, a4, a5             #; a4  = 8, a5  = 0, (wrb) a2  <-- 8
       0     1843        M 0x800006dc srli    a2, a2, 1              #; a2  = 8, (wrb) a2  <-- 4
       0     1844        M 0x800006e0 add     a2, a2, a5             #; a2  = 4, a5  = 0, (wrb) a2  <-- 4
       0     1845        M 0x800006e4 srli    a2, a2, 4              #; a2  = 4, (wrb) a2  <-- 0
       0     1846        M 0x800006e8 slli    a5, a2, 5              #; a2  = 0, (wrb) a5  <-- 0
       0     1847        M 0x800006ec sub     a2, a2, a5             #; a2  = 0, a5  = 0, (wrb) a2  <-- 0
       0     1848        M 0x800006f0 add     a2, a4, a2             #; a4  = 8, a2  = 0, (wrb) a2  <-- 8
       0     1850        M 0x800006f4 fcvt.d.w ft1, a2               #; ac1  = 8
       0     1851        M                                           #; (f:fpu) ft1  <-- 8.0
       0     1852        M 0x80000700 addi    a4, a4, 1              #; a4  = 8, (wrb) a4  <-- 9
                         M 0x800006f8 fmul.d  ft1, ft1, ft0          #; ft1  = 8.0, ft0  = 1.4142
       0     1853        M 0x80000704 addi    a3, a3, -1             #; a3  = 17, (wrb) a3  <-- 16
       0     1854        M 0x80000708 addi    a1, a1, 8              #; a1  = 0x00100040, (wrb) a1  <-- 0x00100048
       0     1855        M 0x8000070c bnez    a3, pc - 56            #; a3  = 16, taken, goto 0x800006d4
                         M                                           #; (f:fpu) ft1  <-- 11.3136
       0     1856        M 0x800006d4 mulhu   a5, a4, t0             #; a4  = 9, t0  = 0x08421085
                         M 0x800006fc fsd     ft1, 0(a1)             #; 11.3136 ~~> Doub[0x00100040]
       0     1859        M                                           #; (acc) a2  <-- 0x40f70633
       0     1860        M 0x800006d8 sub     a2, a4, a5             #; a4  = 9, a5  = 0, (wrb) a2  <-- 9
       0     1861        M 0x800006dc srli    a2, a2, 1              #; a2  = 9, (wrb) a2  <-- 4
       0     1862        M 0x800006e0 add     a2, a2, a5             #; a2  = 4, a5  = 0, (wrb) a2  <-- 4
       0     1863        M 0x800006e4 srli    a2, a2, 4              #; a2  = 4, (wrb) a2  <-- 0
       0     1864        M 0x800006e8 slli    a5, a2, 5              #; a2  = 0, (wrb) a5  <-- 0
       0     1865        M 0x800006ec sub     a2, a2, a5             #; a2  = 0, a5  = 0, (wrb) a2  <-- 0
       0     1866        M 0x800006f0 add     a2, a4, a2             #; a4  = 9, a2  = 0, (wrb) a2  <-- 9
       0     1868        M 0x800006f4 fcvt.d.w ft1, a2               #; ac1  = 9
       0     1869        M                                           #; (f:fpu) ft1  <-- 9.0
       0     1870        M 0x80000700 addi    a4, a4, 1              #; a4  = 9, (wrb) a4  <-- 10
                         M 0x800006f8 fmul.d  ft1, ft1, ft0          #; ft1  = 9.0, ft0  = 1.4142
       0     1871        M 0x80000704 addi    a3, a3, -1             #; a3  = 16, (wrb) a3  <-- 15
       0     1872        M 0x80000708 addi    a1, a1, 8              #; a1  = 0x00100048, (wrb) a1  <-- 0x00100050
       0     1873        M 0x8000070c bnez    a3, pc - 56            #; a3  = 15, taken, goto 0x800006d4
                         M                                           #; (f:fpu) ft1  <-- 12.7278000
       0     1874        M 0x800006d4 mulhu   a5, a4, t0             #; a4  = 10, t0  = 0x08421085
                         M 0x800006fc fsd     ft1, 0(a1)             #; 12.7278000 ~~> Doub[0x00100048]
       0     1877        M                                           #; (acc) a2  <-- 0x40f70633
       0     1878        M 0x800006d8 sub     a2, a4, a5             #; a4  = 10, a5  = 0, (wrb) a2  <-- 10
       0     1879        M 0x800006dc srli    a2, a2, 1              #; a2  = 10, (wrb) a2  <-- 5
       0     1880        M 0x800006e0 add     a2, a2, a5             #; a2  = 5, a5  = 0, (wrb) a2  <-- 5
       0     1881        M 0x800006e4 srli    a2, a2, 4              #; a2  = 5, (wrb) a2  <-- 0
       0     1882        M 0x800006e8 slli    a5, a2, 5              #; a2  = 0, (wrb) a5  <-- 0
       0     1883        M 0x800006ec sub     a2, a2, a5             #; a2  = 0, a5  = 0, (wrb) a2  <-- 0
       0     1884        M 0x800006f0 add     a2, a4, a2             #; a4  = 10, a2  = 0, (wrb) a2  <-- 10
       0     1886        M 0x800006f4 fcvt.d.w ft1, a2               #; ac1  = 10
       0     1887        M                                           #; (f:fpu) ft1  <-- 10.0
       0     1888        M 0x80000700 addi    a4, a4, 1              #; a4  = 10, (wrb) a4  <-- 11
                         M 0x800006f8 fmul.d  ft1, ft1, ft0          #; ft1  = 10.0, ft0  = 1.4142
       0     1889        M 0x80000704 addi    a3, a3, -1             #; a3  = 15, (wrb) a3  <-- 14
       0     1890        M 0x80000708 addi    a1, a1, 8              #; a1  = 0x00100050, (wrb) a1  <-- 0x00100058
       0     1891        M 0x8000070c bnez    a3, pc - 56            #; a3  = 14, taken, goto 0x800006d4
                         M                                           #; (f:fpu) ft1  <-- 14.142
       0     1892        M 0x800006d4 mulhu   a5, a4, t0             #; a4  = 11, t0  = 0x08421085
                         M 0x800006fc fsd     ft1, 0(a1)             #; 14.142 ~~> Doub[0x00100050]
       0     1895        M                                           #; (acc) a2  <-- 0x40f70633
       0     1896        M 0x800006d8 sub     a2, a4, a5             #; a4  = 11, a5  = 0, (wrb) a2  <-- 11
       0     1897        M 0x800006dc srli    a2, a2, 1              #; a2  = 11, (wrb) a2  <-- 5
       0     1898        M 0x800006e0 add     a2, a2, a5             #; a2  = 5, a5  = 0, (wrb) a2  <-- 5
       0     1899        M 0x800006e4 srli    a2, a2, 4              #; a2  = 5, (wrb) a2  <-- 0
       0     1900        M 0x800006e8 slli    a5, a2, 5              #; a2  = 0, (wrb) a5  <-- 0
       0     1901        M 0x800006ec sub     a2, a2, a5             #; a2  = 0, a5  = 0, (wrb) a2  <-- 0
       0     1902        M 0x800006f0 add     a2, a4, a2             #; a4  = 11, a2  = 0, (wrb) a2  <-- 11
       0     1904        M 0x800006f4 fcvt.d.w ft1, a2               #; ac1  = 11
       0     1905        M                                           #; (f:fpu) ft1  <-- 11.0
       0     1906        M 0x80000700 addi    a4, a4, 1              #; a4  = 11, (wrb) a4  <-- 12
                         M 0x800006f8 fmul.d  ft1, ft1, ft0          #; ft1  = 11.0, ft0  = 1.4142
       0     1907        M 0x80000704 addi    a3, a3, -1             #; a3  = 14, (wrb) a3  <-- 13
       0     1908        M 0x80000708 addi    a1, a1, 8              #; a1  = 0x00100058, (wrb) a1  <-- 0x00100060
       0     1909        M 0x8000070c bnez    a3, pc - 56            #; a3  = 13, taken, goto 0x800006d4
                         M                                           #; (f:fpu) ft1  <-- 15.5562000
       0     1910        M 0x800006d4 mulhu   a5, a4, t0             #; a4  = 12, t0  = 0x08421085
                         M 0x800006fc fsd     ft1, 0(a1)             #; 15.5562000 ~~> Doub[0x00100058]
       0     1913        M                                           #; (acc) a2  <-- 0x40f70633
       0     1914        M 0x800006d8 sub     a2, a4, a5             #; a4  = 12, a5  = 0, (wrb) a2  <-- 12
       0     1915        M 0x800006dc srli    a2, a2, 1              #; a2  = 12, (wrb) a2  <-- 6
       0     1916        M 0x800006e0 add     a2, a2, a5             #; a2  = 6, a5  = 0, (wrb) a2  <-- 6
       0     1917        M 0x800006e4 srli    a2, a2, 4              #; a2  = 6, (wrb) a2  <-- 0
       0     1918        M 0x800006e8 slli    a5, a2, 5              #; a2  = 0, (wrb) a5  <-- 0
       0     1919        M 0x800006ec sub     a2, a2, a5             #; a2  = 0, a5  = 0, (wrb) a2  <-- 0
       0     1920        M 0x800006f0 add     a2, a4, a2             #; a4  = 12, a2  = 0, (wrb) a2  <-- 12
       0     1922        M 0x800006f4 fcvt.d.w ft1, a2               #; ac1  = 12
       0     1923        M                                           #; (f:fpu) ft1  <-- 12.0
       0     1924        M 0x80000700 addi    a4, a4, 1              #; a4  = 12, (wrb) a4  <-- 13
                         M 0x800006f8 fmul.d  ft1, ft1, ft0          #; ft1  = 12.0, ft0  = 1.4142
       0     1925        M 0x80000704 addi    a3, a3, -1             #; a3  = 13, (wrb) a3  <-- 12
       0     1926        M 0x80000708 addi    a1, a1, 8              #; a1  = 0x00100060, (wrb) a1  <-- 0x00100068
       0     1927        M 0x8000070c bnez    a3, pc - 56            #; a3  = 12, taken, goto 0x800006d4
                         M                                           #; (f:fpu) ft1  <-- 16.9704000
       0     1928        M 0x800006d4 mulhu   a5, a4, t0             #; a4  = 13, t0  = 0x08421085
                         M 0x800006fc fsd     ft1, 0(a1)             #; 16.9704000 ~~> Doub[0x00100060]
       0     1931        M                                           #; (acc) a2  <-- 0x40f70633
       0     1932        M 0x800006d8 sub     a2, a4, a5             #; a4  = 13, a5  = 0, (wrb) a2  <-- 13
       0     1933        M 0x800006dc srli    a2, a2, 1              #; a2  = 13, (wrb) a2  <-- 6
       0     1934        M 0x800006e0 add     a2, a2, a5             #; a2  = 6, a5  = 0, (wrb) a2  <-- 6
       0     1935        M 0x800006e4 srli    a2, a2, 4              #; a2  = 6, (wrb) a2  <-- 0
       0     1936        M 0x800006e8 slli    a5, a2, 5              #; a2  = 0, (wrb) a5  <-- 0
       0     1937        M 0x800006ec sub     a2, a2, a5             #; a2  = 0, a5  = 0, (wrb) a2  <-- 0
       0     1938        M 0x800006f0 add     a2, a4, a2             #; a4  = 13, a2  = 0, (wrb) a2  <-- 13
       0     1940        M 0x800006f4 fcvt.d.w ft1, a2               #; ac1  = 13
       0     1941        M                                           #; (f:fpu) ft1  <-- 13.0
       0     1942        M 0x80000700 addi    a4, a4, 1              #; a4  = 13, (wrb) a4  <-- 14
                         M 0x800006f8 fmul.d  ft1, ft1, ft0          #; ft1  = 13.0, ft0  = 1.4142
       0     1943        M 0x80000704 addi    a3, a3, -1             #; a3  = 12, (wrb) a3  <-- 11
       0     1944        M 0x80000708 addi    a1, a1, 8              #; a1  = 0x00100068, (wrb) a1  <-- 0x00100070
       0     1945        M 0x8000070c bnez    a3, pc - 56            #; a3  = 11, taken, goto 0x800006d4
                         M                                           #; (f:fpu) ft1  <-- 18.3846
       0     1946        M 0x800006d4 mulhu   a5, a4, t0             #; a4  = 14, t0  = 0x08421085
                         M 0x800006fc fsd     ft1, 0(a1)             #; 18.3846 ~~> Doub[0x00100068]
       0     1949        M                                           #; (acc) a2  <-- 0x40f70633
       0     1950        M 0x800006d8 sub     a2, a4, a5             #; a4  = 14, a5  = 0, (wrb) a2  <-- 14
       0     1951        M 0x800006dc srli    a2, a2, 1              #; a2  = 14, (wrb) a2  <-- 7
       0     1952        M 0x800006e0 add     a2, a2, a5             #; a2  = 7, a5  = 0, (wrb) a2  <-- 7
       0     1953        M 0x800006e4 srli    a2, a2, 4              #; a2  = 7, (wrb) a2  <-- 0
       0     1954        M 0x800006e8 slli    a5, a2, 5              #; a2  = 0, (wrb) a5  <-- 0
       0     1955        M 0x800006ec sub     a2, a2, a5             #; a2  = 0, a5  = 0, (wrb) a2  <-- 0
       0     1956        M 0x800006f0 add     a2, a4, a2             #; a4  = 14, a2  = 0, (wrb) a2  <-- 14
       0     1958        M 0x800006f4 fcvt.d.w ft1, a2               #; ac1  = 14
       0     1959        M                                           #; (f:fpu) ft1  <-- 14.0
       0     1960        M 0x80000700 addi    a4, a4, 1              #; a4  = 14, (wrb) a4  <-- 15
                         M 0x800006f8 fmul.d  ft1, ft1, ft0          #; ft1  = 14.0, ft0  = 1.4142
       0     1961        M 0x80000704 addi    a3, a3, -1             #; a3  = 11, (wrb) a3  <-- 10
       0     1962        M 0x80000708 addi    a1, a1, 8              #; a1  = 0x00100070, (wrb) a1  <-- 0x00100078
       0     1963        M 0x8000070c bnez    a3, pc - 56            #; a3  = 10, taken, goto 0x800006d4
                         M                                           #; (f:fpu) ft1  <-- 19.7988
       0     1964        M 0x800006d4 mulhu   a5, a4, t0             #; a4  = 15, t0  = 0x08421085
                         M 0x800006fc fsd     ft1, 0(a1)             #; 19.7988 ~~> Doub[0x00100070]
       0     1967        M                                           #; (acc) a2  <-- 0x40f70633
       0     1968        M 0x800006d8 sub     a2, a4, a5             #; a4  = 15, a5  = 0, (wrb) a2  <-- 15
       0     1969        M 0x800006dc srli    a2, a2, 1              #; a2  = 15, (wrb) a2  <-- 7
       0     1970        M 0x800006e0 add     a2, a2, a5             #; a2  = 7, a5  = 0, (wrb) a2  <-- 7
       0     1971        M 0x800006e4 srli    a2, a2, 4              #; a2  = 7, (wrb) a2  <-- 0
       0     1972        M 0x800006e8 slli    a5, a2, 5              #; a2  = 0, (wrb) a5  <-- 0
       0     1973        M 0x800006ec sub     a2, a2, a5             #; a2  = 0, a5  = 0, (wrb) a2  <-- 0
       0     1974        M 0x800006f0 add     a2, a4, a2             #; a4  = 15, a2  = 0, (wrb) a2  <-- 15
       0     1976        M 0x800006f4 fcvt.d.w ft1, a2               #; ac1  = 15
       0     1977        M                                           #; (f:fpu) ft1  <-- 15.0
       0     1978        M 0x80000700 addi    a4, a4, 1              #; a4  = 15, (wrb) a4  <-- 16
                         M 0x800006f8 fmul.d  ft1, ft1, ft0          #; ft1  = 15.0, ft0  = 1.4142
       0     1979        M 0x80000704 addi    a3, a3, -1             #; a3  = 10, (wrb) a3  <-- 9
       0     1980        M 0x80000708 addi    a1, a1, 8              #; a1  = 0x00100078, (wrb) a1  <-- 0x00100080
       0     1981        M 0x8000070c bnez    a3, pc - 56            #; a3  = 9, taken, goto 0x800006d4
                         M                                           #; (f:fpu) ft1  <-- 21.2130000
       0     1982        M 0x800006d4 mulhu   a5, a4, t0             #; a4  = 16, t0  = 0x08421085
                         M 0x800006fc fsd     ft1, 0(a1)             #; 21.2130000 ~~> Doub[0x00100078]
       0     1985        M                                           #; (acc) a2  <-- 0x40f70633
       0     1986        M 0x800006d8 sub     a2, a4, a5             #; a4  = 16, a5  = 0, (wrb) a2  <-- 16
       0     1987        M 0x800006dc srli    a2, a2, 1              #; a2  = 16, (wrb) a2  <-- 8
       0     1988        M 0x800006e0 add     a2, a2, a5             #; a2  = 8, a5  = 0, (wrb) a2  <-- 8
       0     1989        M 0x800006e4 srli    a2, a2, 4              #; a2  = 8, (wrb) a2  <-- 0
       0     1990        M 0x800006e8 slli    a5, a2, 5              #; a2  = 0, (wrb) a5  <-- 0
       0     1991        M 0x800006ec sub     a2, a2, a5             #; a2  = 0, a5  = 0, (wrb) a2  <-- 0
       0     1992        M 0x800006f0 add     a2, a4, a2             #; a4  = 16, a2  = 0, (wrb) a2  <-- 16
       0     1994        M 0x800006f4 fcvt.d.w ft1, a2               #; ac1  = 16
       0     1995        M                                           #; (f:fpu) ft1  <-- 16.0
       0     1996        M 0x80000700 addi    a4, a4, 1              #; a4  = 16, (wrb) a4  <-- 17
                         M 0x800006f8 fmul.d  ft1, ft1, ft0          #; ft1  = 16.0, ft0  = 1.4142
       0     1997        M 0x80000704 addi    a3, a3, -1             #; a3  = 9, (wrb) a3  <-- 8
       0     1998        M 0x80000708 addi    a1, a1, 8              #; a1  = 0x00100080, (wrb) a1  <-- 0x00100088
       0     1999        M 0x8000070c bnez    a3, pc - 56            #; a3  = 8, taken, goto 0x800006d4
                         M                                           #; (f:fpu) ft1  <-- 22.6272
       0     2000        M 0x800006d4 mulhu   a5, a4, t0             #; a4  = 17, t0  = 0x08421085
                         M 0x800006fc fsd     ft1, 0(a1)             #; 22.6272 ~~> Doub[0x00100080]
       0     2003        M                                           #; (acc) a2  <-- 0x40f70633
       0     2004        M 0x800006d8 sub     a2, a4, a5             #; a4  = 17, a5  = 0, (wrb) a2  <-- 17
       0     2005        M 0x800006dc srli    a2, a2, 1              #; a2  = 17, (wrb) a2  <-- 8
       0     2006        M 0x800006e0 add     a2, a2, a5             #; a2  = 8, a5  = 0, (wrb) a2  <-- 8
       0     2007        M 0x800006e4 srli    a2, a2, 4              #; a2  = 8, (wrb) a2  <-- 0
       0     2008        M 0x800006e8 slli    a5, a2, 5              #; a2  = 0, (wrb) a5  <-- 0
       0     2009        M 0x800006ec sub     a2, a2, a5             #; a2  = 0, a5  = 0, (wrb) a2  <-- 0
       0     2010        M 0x800006f0 add     a2, a4, a2             #; a4  = 17, a2  = 0, (wrb) a2  <-- 17
       0     2012        M 0x800006f4 fcvt.d.w ft1, a2               #; ac1  = 17
       0     2013        M                                           #; (f:fpu) ft1  <-- 17.0
       0     2014        M 0x80000700 addi    a4, a4, 1              #; a4  = 17, (wrb) a4  <-- 18
                         M 0x800006f8 fmul.d  ft1, ft1, ft0          #; ft1  = 17.0, ft0  = 1.4142
       0     2015        M 0x80000704 addi    a3, a3, -1             #; a3  = 8, (wrb) a3  <-- 7
       0     2016        M 0x80000708 addi    a1, a1, 8              #; a1  = 0x00100088, (wrb) a1  <-- 0x00100090
       0     2017        M 0x8000070c bnez    a3, pc - 56            #; a3  = 7, taken, goto 0x800006d4
                         M                                           #; (f:fpu) ft1  <-- 24.0414
       0     2018        M 0x800006d4 mulhu   a5, a4, t0             #; a4  = 18, t0  = 0x08421085
                         M 0x800006fc fsd     ft1, 0(a1)             #; 24.0414 ~~> Doub[0x00100088]
       0     2021        M                                           #; (acc) a2  <-- 0x40f70633
       0     2022        M 0x800006d8 sub     a2, a4, a5             #; a4  = 18, a5  = 0, (wrb) a2  <-- 18
       0     2023        M 0x800006dc srli    a2, a2, 1              #; a2  = 18, (wrb) a2  <-- 9
       0     2024        M 0x800006e0 add     a2, a2, a5             #; a2  = 9, a5  = 0, (wrb) a2  <-- 9
       0     2025        M 0x800006e4 srli    a2, a2, 4              #; a2  = 9, (wrb) a2  <-- 0
       0     2026        M 0x800006e8 slli    a5, a2, 5              #; a2  = 0, (wrb) a5  <-- 0
       0     2027        M 0x800006ec sub     a2, a2, a5             #; a2  = 0, a5  = 0, (wrb) a2  <-- 0
       0     2028        M 0x800006f0 add     a2, a4, a2             #; a4  = 18, a2  = 0, (wrb) a2  <-- 18
       0     2030        M 0x800006f4 fcvt.d.w ft1, a2               #; ac1  = 18
       0     2031        M                                           #; (f:fpu) ft1  <-- 18.0
       0     2032        M 0x80000700 addi    a4, a4, 1              #; a4  = 18, (wrb) a4  <-- 19
                         M 0x800006f8 fmul.d  ft1, ft1, ft0          #; ft1  = 18.0, ft0  = 1.4142
       0     2033        M 0x80000704 addi    a3, a3, -1             #; a3  = 7, (wrb) a3  <-- 6
       0     2034        M 0x80000708 addi    a1, a1, 8              #; a1  = 0x00100090, (wrb) a1  <-- 0x00100098
       0     2035        M 0x8000070c bnez    a3, pc - 56            #; a3  = 6, taken, goto 0x800006d4
                         M                                           #; (f:fpu) ft1  <-- 25.4556000
       0     2036        M 0x800006d4 mulhu   a5, a4, t0             #; a4  = 19, t0  = 0x08421085
                         M 0x800006fc fsd     ft1, 0(a1)             #; 25.4556000 ~~> Doub[0x00100090]
       0     2039        M                                           #; (acc) a2  <-- 0x40f70633
       0     2040        M 0x800006d8 sub     a2, a4, a5             #; a4  = 19, a5  = 0, (wrb) a2  <-- 19
       0     2041        M 0x800006dc srli    a2, a2, 1              #; a2  = 19, (wrb) a2  <-- 9
       0     2042        M 0x800006e0 add     a2, a2, a5             #; a2  = 9, a5  = 0, (wrb) a2  <-- 9
       0     2043        M 0x800006e4 srli    a2, a2, 4              #; a2  = 9, (wrb) a2  <-- 0
       0     2044        M 0x800006e8 slli    a5, a2, 5              #; a2  = 0, (wrb) a5  <-- 0
       0     2045        M 0x800006ec sub     a2, a2, a5             #; a2  = 0, a5  = 0, (wrb) a2  <-- 0
       0     2046        M 0x800006f0 add     a2, a4, a2             #; a4  = 19, a2  = 0, (wrb) a2  <-- 19
       0     2048        M 0x800006f4 fcvt.d.w ft1, a2               #; ac1  = 19
       0     2049        M                                           #; (f:fpu) ft1  <-- 19.0
       0     2050        M 0x80000700 addi    a4, a4, 1              #; a4  = 19, (wrb) a4  <-- 20
                         M 0x800006f8 fmul.d  ft1, ft1, ft0          #; ft1  = 19.0, ft0  = 1.4142
       0     2051        M 0x80000704 addi    a3, a3, -1             #; a3  = 6, (wrb) a3  <-- 5
       0     2052        M 0x80000708 addi    a1, a1, 8              #; a1  = 0x00100098, (wrb) a1  <-- 0x001000a0
       0     2053        M 0x8000070c bnez    a3, pc - 56            #; a3  = 5, taken, goto 0x800006d4
                         M                                           #; (f:fpu) ft1  <-- 26.8698000
       0     2054        M 0x800006d4 mulhu   a5, a4, t0             #; a4  = 20, t0  = 0x08421085
                         M 0x800006fc fsd     ft1, 0(a1)             #; 26.8698000 ~~> Doub[0x00100098]
       0     2057        M                                           #; (acc) a2  <-- 0x40f70633
       0     2058        M 0x800006d8 sub     a2, a4, a5             #; a4  = 20, a5  = 0, (wrb) a2  <-- 20
       0     2059        M 0x800006dc srli    a2, a2, 1              #; a2  = 20, (wrb) a2  <-- 10
       0     2060        M 0x800006e0 add     a2, a2, a5             #; a2  = 10, a5  = 0, (wrb) a2  <-- 10
       0     2061        M 0x800006e4 srli    a2, a2, 4              #; a2  = 10, (wrb) a2  <-- 0
       0     2062        M 0x800006e8 slli    a5, a2, 5              #; a2  = 0, (wrb) a5  <-- 0
       0     2063        M 0x800006ec sub     a2, a2, a5             #; a2  = 0, a5  = 0, (wrb) a2  <-- 0
       0     2064        M 0x800006f0 add     a2, a4, a2             #; a4  = 20, a2  = 0, (wrb) a2  <-- 20
       0     2066        M 0x800006f4 fcvt.d.w ft1, a2               #; ac1  = 20
       0     2067        M                                           #; (f:fpu) ft1  <-- 20.0
       0     2068        M 0x80000700 addi    a4, a4, 1              #; a4  = 20, (wrb) a4  <-- 21
                         M 0x800006f8 fmul.d  ft1, ft1, ft0          #; ft1  = 20.0, ft0  = 1.4142
       0     2069        M 0x80000704 addi    a3, a3, -1             #; a3  = 5, (wrb) a3  <-- 4
       0     2070        M 0x80000708 addi    a1, a1, 8              #; a1  = 0x001000a0, (wrb) a1  <-- 0x001000a8
       0     2071        M 0x8000070c bnez    a3, pc - 56            #; a3  = 4, taken, goto 0x800006d4
                         M                                           #; (f:fpu) ft1  <-- 28.284
       0     2072        M 0x800006d4 mulhu   a5, a4, t0             #; a4  = 21, t0  = 0x08421085
                         M 0x800006fc fsd     ft1, 0(a1)             #; 28.284 ~~> Doub[0x001000a0]
       0     2075        M                                           #; (acc) a2  <-- 0x40f70633
       0     2076        M 0x800006d8 sub     a2, a4, a5             #; a4  = 21, a5  = 0, (wrb) a2  <-- 21
       0     2077        M 0x800006dc srli    a2, a2, 1              #; a2  = 21, (wrb) a2  <-- 10
       0     2078        M 0x800006e0 add     a2, a2, a5             #; a2  = 10, a5  = 0, (wrb) a2  <-- 10
       0     2079        M 0x800006e4 srli    a2, a2, 4              #; a2  = 10, (wrb) a2  <-- 0
       0     2080        M 0x800006e8 slli    a5, a2, 5              #; a2  = 0, (wrb) a5  <-- 0
       0     2081        M 0x800006ec sub     a2, a2, a5             #; a2  = 0, a5  = 0, (wrb) a2  <-- 0
       0     2082        M 0x800006f0 add     a2, a4, a2             #; a4  = 21, a2  = 0, (wrb) a2  <-- 21
       0     2084        M 0x800006f4 fcvt.d.w ft1, a2               #; ac1  = 21
       0     2085        M                                           #; (f:fpu) ft1  <-- 21.0
       0     2086        M 0x80000700 addi    a4, a4, 1              #; a4  = 21, (wrb) a4  <-- 22
                         M 0x800006f8 fmul.d  ft1, ft1, ft0          #; ft1  = 21.0, ft0  = 1.4142
       0     2087        M 0x80000704 addi    a3, a3, -1             #; a3  = 4, (wrb) a3  <-- 3
       0     2088        M 0x80000708 addi    a1, a1, 8              #; a1  = 0x001000a8, (wrb) a1  <-- 0x001000b0
       0     2089        M 0x8000070c bnez    a3, pc - 56            #; a3  = 3, taken, goto 0x800006d4
                         M                                           #; (f:fpu) ft1  <-- 29.6982000
       0     2090        M 0x800006d4 mulhu   a5, a4, t0             #; a4  = 22, t0  = 0x08421085
                         M 0x800006fc fsd     ft1, 0(a1)             #; 29.6982000 ~~> Doub[0x001000a8]
       0     2093        M                                           #; (acc) a2  <-- 0x40f70633
       0     2094        M 0x800006d8 sub     a2, a4, a5             #; a4  = 22, a5  = 0, (wrb) a2  <-- 22
       0     2095        M 0x800006dc srli    a2, a2, 1              #; a2  = 22, (wrb) a2  <-- 11
       0     2096        M 0x800006e0 add     a2, a2, a5             #; a2  = 11, a5  = 0, (wrb) a2  <-- 11
       0     2097        M 0x800006e4 srli    a2, a2, 4              #; a2  = 11, (wrb) a2  <-- 0
       0     2098        M 0x800006e8 slli    a5, a2, 5              #; a2  = 0, (wrb) a5  <-- 0
       0     2099        M 0x800006ec sub     a2, a2, a5             #; a2  = 0, a5  = 0, (wrb) a2  <-- 0
       0     2100        M 0x800006f0 add     a2, a4, a2             #; a4  = 22, a2  = 0, (wrb) a2  <-- 22
       0     2102        M 0x800006f4 fcvt.d.w ft1, a2               #; ac1  = 22
       0     2103        M                                           #; (f:fpu) ft1  <-- 22.0
       0     2104        M 0x80000700 addi    a4, a4, 1              #; a4  = 22, (wrb) a4  <-- 23
                         M 0x800006f8 fmul.d  ft1, ft1, ft0          #; ft1  = 22.0, ft0  = 1.4142
       0     2105        M 0x80000704 addi    a3, a3, -1             #; a3  = 3, (wrb) a3  <-- 2
       0     2106        M 0x80000708 addi    a1, a1, 8              #; a1  = 0x001000b0, (wrb) a1  <-- 0x001000b8
       0     2107        M 0x8000070c bnez    a3, pc - 56            #; a3  = 2, taken, goto 0x800006d4
                         M                                           #; (f:fpu) ft1  <-- 31.1124000
       0     2108        M 0x800006d4 mulhu   a5, a4, t0             #; a4  = 23, t0  = 0x08421085
                         M 0x800006fc fsd     ft1, 0(a1)             #; 31.1124000 ~~> Doub[0x001000b0]
       0     2111        M                                           #; (acc) a2  <-- 0x40f70633
       0     2112        M 0x800006d8 sub     a2, a4, a5             #; a4  = 23, a5  = 0, (wrb) a2  <-- 23
       0     2113        M 0x800006dc srli    a2, a2, 1              #; a2  = 23, (wrb) a2  <-- 11
       0     2114        M 0x800006e0 add     a2, a2, a5             #; a2  = 11, a5  = 0, (wrb) a2  <-- 11
       0     2115        M 0x800006e4 srli    a2, a2, 4              #; a2  = 11, (wrb) a2  <-- 0
       0     2116        M 0x800006e8 slli    a5, a2, 5              #; a2  = 0, (wrb) a5  <-- 0
       0     2117        M 0x800006ec sub     a2, a2, a5             #; a2  = 0, a5  = 0, (wrb) a2  <-- 0
       0     2118        M 0x800006f0 add     a2, a4, a2             #; a4  = 23, a2  = 0, (wrb) a2  <-- 23
       0     2120        M 0x800006f4 fcvt.d.w ft1, a2               #; ac1  = 23
       0     2121        M                                           #; (f:fpu) ft1  <-- 23.0
       0     2122        M 0x80000700 addi    a4, a4, 1              #; a4  = 23, (wrb) a4  <-- 24
                         M 0x800006f8 fmul.d  ft1, ft1, ft0          #; ft1  = 23.0, ft0  = 1.4142
       0     2123        M 0x80000704 addi    a3, a3, -1             #; a3  = 2, (wrb) a3  <-- 1
       0     2124        M 0x80000708 addi    a1, a1, 8              #; a1  = 0x001000b8, (wrb) a1  <-- 0x001000c0
       0     2125        M 0x8000070c bnez    a3, pc - 56            #; a3  = 1, taken, goto 0x800006d4
                         M                                           #; (f:fpu) ft1  <-- 32.5266000
       0     2126        M 0x800006d4 mulhu   a5, a4, t0             #; a4  = 24, t0  = 0x08421085
                         M 0x800006fc fsd     ft1, 0(a1)             #; 32.5266000 ~~> Doub[0x001000b8]
       0     2129        M                                           #; (acc) a2  <-- 0x40f70633
       0     2130        M 0x800006d8 sub     a2, a4, a5             #; a4  = 24, a5  = 0, (wrb) a2  <-- 24
       0     2131        M 0x800006dc srli    a2, a2, 1              #; a2  = 24, (wrb) a2  <-- 12
       0     2132        M 0x800006e0 add     a2, a2, a5             #; a2  = 12, a5  = 0, (wrb) a2  <-- 12
       0     2133        M 0x800006e4 srli    a2, a2, 4              #; a2  = 12, (wrb) a2  <-- 0
       0     2134        M 0x800006e8 slli    a5, a2, 5              #; a2  = 0, (wrb) a5  <-- 0
       0     2135        M 0x800006ec sub     a2, a2, a5             #; a2  = 0, a5  = 0, (wrb) a2  <-- 0
       0     2136        M 0x800006f0 add     a2, a4, a2             #; a4  = 24, a2  = 0, (wrb) a2  <-- 24
       0     2138        M 0x800006f4 fcvt.d.w ft1, a2               #; ac1  = 24
       0     2139        M                                           #; (f:fpu) ft1  <-- 24.0
       0     2140        M 0x80000700 addi    a4, a4, 1              #; a4  = 24, (wrb) a4  <-- 25
                         M 0x800006f8 fmul.d  ft1, ft1, ft0          #; ft1  = 24.0, ft0  = 1.4142
       0     2141        M 0x80000704 addi    a3, a3, -1             #; a3  = 1, (wrb) a3  <-- 0
       0     2142        M 0x80000708 addi    a1, a1, 8              #; a1  = 0x001000c0, (wrb) a1  <-- 0x001000c8
       0     2143        M 0x8000070c bnez    a3, pc - 56            #; a3  = 0, not taken
                         M                                           #; (f:fpu) ft1  <-- 33.9408000
       0     2144        M 0x800006fc fsd     ft1, 0(a1)             #; 33.9408000 ~~> Doub[0x001000c0]
       0     2156        M 0x80000714 mv      a1, t1                 #; t1  = 0x00100000, (wrb) a1  <-- 0x00100000
                         M 0x80000710 fcvt.d.w ft1, zero             #; ac1  = 0
       0     2157        M 0x80000718 mv      a3, a0                 #; a0  = 25, (wrb) a3  <-- 25
                         M                                           #; (f:fpu) ft1  <-- 0.0
       0     2160        M 0x8000071c fld     ft0, 0(a1)             #; ft0  <~~ Doub[0x00100000]
       0     2161        M                                           #; (f:lsu) ft0  <-- 0.0
       0     2168        M 0x80000724 addi    a3, a3, -1             #; a3  = 25, (wrb) a3  <-- 24
       0     2169        M 0x80000728 addi    a1, a1, 8              #; a1  = 0x00100000, (wrb) a1  <-- 0x00100008
                         M 0x80000720 fmadd.d ft1, ft0, ft0, ft1     #; ft0  = 0.0, ft0  = 0.0, ft1  = 0.0
       0     2170        M 0x8000072c bnez    a3, pc - 16            #; a3  = 24, taken, goto 0x8000071c
       0     2172        M                                           #; (f:fpu) ft1  <-- 0.0
       0     2173        M 0x80000724 addi    a3, a3, -1             #; a3  = 24, (wrb) a3  <-- 23
                         M 0x8000071c fld     ft0, 0(a1)             #; ft0  <~~ Doub[0x00100008]
       0     2174        M 0x80000728 addi    a1, a1, 8              #; a1  = 0x00100008, (wrb) a1  <-- 0x00100010
                         M                                           #; (f:lsu) ft0  <-- 1.4142
       0     2175        M 0x8000072c bnez    a3, pc - 16            #; a3  = 23, taken, goto 0x8000071c
                         M 0x80000720 fmadd.d ft1, ft0, ft0, ft1     #; ft0  = 1.4142, ft0  = 1.4142, ft1  = 0.0
       0     2178        M 0x80000724 addi    a3, a3, -1             #; a3  = 23, (wrb) a3  <-- 22
                         M 0x8000071c fld     ft0, 0(a1)             #; ft0  <~~ Doub[0x00100010], (f:fpu) ft1  <-- 1.9999616
       0     2179        M 0x80000728 addi    a1, a1, 8              #; a1  = 0x00100010, (wrb) a1  <-- 0x00100018
                         M                                           #; (f:lsu) ft0  <-- 2.8284
       0     2180        M 0x8000072c bnez    a3, pc - 16            #; a3  = 22, taken, goto 0x8000071c
                         M 0x80000720 fmadd.d ft1, ft0, ft0, ft1     #; ft0  = 2.8284, ft0  = 2.8284, ft1  = 1.9999616
       0     2183        M 0x80000724 addi    a3, a3, -1             #; a3  = 22, (wrb) a3  <-- 21
                         M 0x8000071c fld     ft0, 0(a1)             #; ft0  <~~ Doub[0x00100018], (f:fpu) ft1  <-- 9.9998082
       0     2184        M 0x80000728 addi    a1, a1, 8              #; a1  = 0x00100018, (wrb) a1  <-- 0x00100020
                         M                                           #; (f:lsu) ft0  <-- 4.2426000
       0     2185        M 0x8000072c bnez    a3, pc - 16            #; a3  = 21, taken, goto 0x8000071c
                         M 0x80000720 fmadd.d ft1, ft0, ft0, ft1     #; ft0  = 4.2426000, ft0  = 4.2426000, ft1  = 9.9998082
       0     2188        M 0x80000724 addi    a3, a3, -1             #; a3  = 21, (wrb) a3  <-- 20
                         M 0x8000071c fld     ft0, 0(a1)             #; ft0  <~~ Doub[0x00100020], (f:fpu) ft1  <-- 27.9994630
       0     2189        M 0x80000728 addi    a1, a1, 8              #; a1  = 0x00100020, (wrb) a1  <-- 0x00100028
                         M                                           #; (f:lsu) ft0  <-- 5.6568
       0     2190        M 0x8000072c bnez    a3, pc - 16            #; a3  = 20, taken, goto 0x8000071c
                         M 0x80000720 fmadd.d ft1, ft0, ft0, ft1     #; ft0  = 5.6568, ft0  = 5.6568, ft1  = 27.9994630
       0     2193        M 0x80000724 addi    a3, a3, -1             #; a3  = 20, (wrb) a3  <-- 19
                         M 0x8000071c fld     ft0, 0(a1)             #; ft0  <~~ Doub[0x00100028], (f:fpu) ft1  <-- 59.9988492
       0     2194        M 0x80000728 addi    a1, a1, 8              #; a1  = 0x00100028, (wrb) a1  <-- 0x00100030
                         M                                           #; (f:lsu) ft0  <-- 7.071
       0     2195        M 0x8000072c bnez    a3, pc - 16            #; a3  = 19, taken, goto 0x8000071c
                         M 0x80000720 fmadd.d ft1, ft0, ft0, ft1     #; ft0  = 7.071, ft0  = 7.071, ft1  = 59.9988492
       0     2198        M 0x80000724 addi    a3, a3, -1             #; a3  = 19, (wrb) a3  <-- 18
                         M 0x8000071c fld     ft0, 0(a1)             #; ft0  <~~ Doub[0x00100030], (f:fpu) ft1  <-- 109.9978902
       0     2199        M 0x80000728 addi    a1, a1, 8              #; a1  = 0x00100030, (wrb) a1  <-- 0x00100038
                         M                                           #; (f:lsu) ft0  <-- 8.4852000
       0     2200        M 0x8000072c bnez    a3, pc - 16            #; a3  = 18, taken, goto 0x8000071c
                         M 0x80000720 fmadd.d ft1, ft0, ft0, ft1     #; ft0  = 8.4852000, ft0  = 8.4852000, ft1  = 109.9978902
       0     2203        M 0x80000724 addi    a3, a3, -1             #; a3  = 18, (wrb) a3  <-- 17
                         M 0x8000071c fld     ft0, 0(a1)             #; ft0  <~~ Doub[0x00100038], (f:fpu) ft1  <-- 181.9965092
       0     2204        M 0x80000728 addi    a1, a1, 8              #; a1  = 0x00100038, (wrb) a1  <-- 0x00100040
                         M                                           #; (f:lsu) ft0  <-- 9.8994
       0     2205        M 0x8000072c bnez    a3, pc - 16            #; a3  = 17, taken, goto 0x8000071c
                         M 0x80000720 fmadd.d ft1, ft0, ft0, ft1     #; ft0  = 9.8994, ft0  = 9.8994, ft1  = 181.9965092
       0     2208        M 0x80000724 addi    a3, a3, -1             #; a3  = 17, (wrb) a3  <-- 16
                         M 0x8000071c fld     ft0, 0(a1)             #; ft0  <~~ Doub[0x00100040], (f:fpu) ft1  <-- 279.9946296
       0     2209        M 0x80000728 addi    a1, a1, 8              #; a1  = 0x00100040, (wrb) a1  <-- 0x00100048
                         M                                           #; (f:lsu) ft0  <-- 11.3136
       0     2210        M 0x8000072c bnez    a3, pc - 16            #; a3  = 16, taken, goto 0x8000071c
                         M 0x80000720 fmadd.d ft1, ft0, ft0, ft1     #; ft0  = 11.3136, ft0  = 11.3136, ft1  = 279.9946296
       0     2213        M 0x80000724 addi    a3, a3, -1             #; a3  = 16, (wrb) a3  <-- 15
                         M 0x8000071c fld     ft0, 0(a1)             #; ft0  <~~ Doub[0x00100048], (f:fpu) ft1  <-- 407.9921746
       0     2214        M 0x80000728 addi    a1, a1, 8              #; a1  = 0x00100048, (wrb) a1  <-- 0x00100050
                         M                                           #; (f:lsu) ft0  <-- 12.7278000
       0     2215        M 0x8000072c bnez    a3, pc - 16            #; a3  = 15, taken, goto 0x8000071c
                         M 0x80000720 fmadd.d ft1, ft0, ft0, ft1     #; ft0  = 12.7278000, ft0  = 12.7278000, ft1  = 407.9921746
       0     2218        M 0x80000724 addi    a3, a3, -1             #; a3  = 15, (wrb) a3  <-- 14
                         M 0x8000071c fld     ft0, 0(a1)             #; ft0  <~~ Doub[0x00100050], (f:fpu) ft1  <-- 569.9890674
       0     2219        M 0x80000728 addi    a1, a1, 8              #; a1  = 0x00100050, (wrb) a1  <-- 0x00100058
                         M                                           #; (f:lsu) ft0  <-- 14.142
       0     2220        M 0x8000072c bnez    a3, pc - 16            #; a3  = 14, taken, goto 0x8000071c
                         M 0x80000720 fmadd.d ft1, ft0, ft0, ft1     #; ft0  = 14.142, ft0  = 14.142, ft1  = 569.9890674
       0     2223        M 0x80000724 addi    a3, a3, -1             #; a3  = 14, (wrb) a3  <-- 13
                         M 0x8000071c fld     ft0, 0(a1)             #; ft0  <~~ Doub[0x00100058], (f:fpu) ft1  <-- 769.9852314
       0     2224        M 0x80000728 addi    a1, a1, 8              #; a1  = 0x00100058, (wrb) a1  <-- 0x00100060
                         M                                           #; (f:lsu) ft0  <-- 15.5562000
       0     2225        M 0x8000072c bnez    a3, pc - 16            #; a3  = 13, taken, goto 0x8000071c
                         M 0x80000720 fmadd.d ft1, ft0, ft0, ft1     #; ft0  = 15.5562000, ft0  = 15.5562000, ft1  = 769.9852314
       0     2228        M 0x80000724 addi    a3, a3, -1             #; a3  = 13, (wrb) a3  <-- 12
                         M 0x8000071c fld     ft0, 0(a1)             #; ft0  <~~ Doub[0x00100060], (f:fpu) ft1  <-- 1011.9805898
       0     2229        M 0x80000728 addi    a1, a1, 8              #; a1  = 0x00100060, (wrb) a1  <-- 0x00100068
                         M                                           #; (f:lsu) ft0  <-- 16.9704000
       0     2230        M 0x8000072c bnez    a3, pc - 16            #; a3  = 12, taken, goto 0x8000071c
                         M 0x80000720 fmadd.d ft1, ft0, ft0, ft1     #; ft0  = 16.9704000, ft0  = 16.9704000, ft1  = 1011.9805898
       0     2233        M 0x80000724 addi    a3, a3, -1             #; a3  = 12, (wrb) a3  <-- 11
                         M 0x8000071c fld     ft0, 0(a1)             #; ft0  <~~ Doub[0x00100068], (f:fpu) ft1  <-- 1299.9750660
       0     2234        M 0x80000728 addi    a1, a1, 8              #; a1  = 0x00100068, (wrb) a1  <-- 0x00100070
                         M                                           #; (f:lsu) ft0  <-- 18.3846
       0     2235        M 0x8000072c bnez    a3, pc - 16            #; a3  = 11, taken, goto 0x8000071c
                         M 0x80000720 fmadd.d ft1, ft0, ft0, ft1     #; ft0  = 18.3846, ft0  = 18.3846, ft1  = 1299.9750660
       0     2238        M 0x80000724 addi    a3, a3, -1             #; a3  = 11, (wrb) a3  <-- 10
                         M 0x8000071c fld     ft0, 0(a1)             #; ft0  <~~ Doub[0x00100070], (f:fpu) ft1  <-- 1637.9685832
       0     2239        M 0x80000728 addi    a1, a1, 8              #; a1  = 0x00100070, (wrb) a1  <-- 0x00100078
                         M                                           #; (f:lsu) ft0  <-- 19.7988
       0     2240        M 0x8000072c bnez    a3, pc - 16            #; a3  = 10, taken, goto 0x8000071c
                         M 0x80000720 fmadd.d ft1, ft0, ft0, ft1     #; ft0  = 19.7988, ft0  = 19.7988, ft1  = 1637.9685832
       0     2243        M 0x80000724 addi    a3, a3, -1             #; a3  = 10, (wrb) a3  <-- 9
                         M 0x8000071c fld     ft0, 0(a1)             #; ft0  <~~ Doub[0x00100078], (f:fpu) ft1  <-- 2029.9610646
       0     2244        M 0x80000728 addi    a1, a1, 8              #; a1  = 0x00100078, (wrb) a1  <-- 0x00100080
                         M                                           #; (f:lsu) ft0  <-- 21.2130000
       0     2245        M 0x8000072c bnez    a3, pc - 16            #; a3  = 9, taken, goto 0x8000071c
                         M 0x80000720 fmadd.d ft1, ft0, ft0, ft1     #; ft0  = 21.2130000, ft0  = 21.2130000, ft1  = 2029.9610646
       0     2248        M 0x80000724 addi    a3, a3, -1             #; a3  = 9, (wrb) a3  <-- 8
                         M 0x8000071c fld     ft0, 0(a1)             #; ft0  <~~ Doub[0x00100080], (f:fpu) ft1  <-- 2479.9524336
       0     2249        M 0x80000728 addi    a1, a1, 8              #; a1  = 0x00100080, (wrb) a1  <-- 0x00100088
                         M                                           #; (f:lsu) ft0  <-- 22.6272
       0     2250        M 0x8000072c bnez    a3, pc - 16            #; a3  = 8, taken, goto 0x8000071c
                         M 0x80000720 fmadd.d ft1, ft0, ft0, ft1     #; ft0  = 22.6272, ft0  = 22.6272, ft1  = 2479.9524336
       0     2253        M 0x80000724 addi    a3, a3, -1             #; a3  = 8, (wrb) a3  <-- 7
                         M 0x8000071c fld     ft0, 0(a1)             #; ft0  <~~ Doub[0x00100088], (f:fpu) ft1  <-- 2991.9426134
       0     2254        M 0x80000728 addi    a1, a1, 8              #; a1  = 0x00100088, (wrb) a1  <-- 0x00100090
                         M                                           #; (f:lsu) ft0  <-- 24.0414
       0     2255        M 0x8000072c bnez    a3, pc - 16            #; a3  = 7, taken, goto 0x8000071c
                         M 0x80000720 fmadd.d ft1, ft0, ft0, ft1     #; ft0  = 24.0414, ft0  = 24.0414, ft1  = 2991.9426134
       0     2258        M 0x80000724 addi    a3, a3, -1             #; a3  = 7, (wrb) a3  <-- 6
                         M 0x8000071c fld     ft0, 0(a1)             #; ft0  <~~ Doub[0x00100090], (f:fpu) ft1  <-- 3569.9315274
       0     2259        M 0x80000728 addi    a1, a1, 8              #; a1  = 0x00100090, (wrb) a1  <-- 0x00100098
                         M                                           #; (f:lsu) ft0  <-- 25.4556000
       0     2260        M 0x8000072c bnez    a3, pc - 16            #; a3  = 6, taken, goto 0x8000071c
                         M 0x80000720 fmadd.d ft1, ft0, ft0, ft1     #; ft0  = 25.4556000, ft0  = 25.4556000, ft1  = 3569.9315274
       0     2263        M 0x80000724 addi    a3, a3, -1             #; a3  = 6, (wrb) a3  <-- 5
                         M 0x8000071c fld     ft0, 0(a1)             #; ft0  <~~ Doub[0x00100098], (f:fpu) ft1  <-- 4217.9190988
       0     2264        M 0x80000728 addi    a1, a1, 8              #; a1  = 0x00100098, (wrb) a1  <-- 0x001000a0
                         M                                           #; (f:lsu) ft0  <-- 26.8698000
       0     2265        M 0x8000072c bnez    a3, pc - 16            #; a3  = 5, taken, goto 0x8000071c
                         M 0x80000720 fmadd.d ft1, ft0, ft0, ft1     #; ft0  = 26.8698000, ft0  = 26.8698000, ft1  = 4217.9190988
       0     2268        M 0x80000724 addi    a3, a3, -1             #; a3  = 5, (wrb) a3  <-- 4
                         M 0x8000071c fld     ft0, 0(a1)             #; ft0  <~~ Doub[0x001000a0], (f:fpu) ft1  <-- 4939.9052508
       0     2269        M 0x80000728 addi    a1, a1, 8              #; a1  = 0x001000a0, (wrb) a1  <-- 0x001000a8
                         M                                           #; (f:lsu) ft0  <-- 28.284
       0     2270        M 0x8000072c bnez    a3, pc - 16            #; a3  = 4, taken, goto 0x8000071c
                         M 0x80000720 fmadd.d ft1, ft0, ft0, ft1     #; ft0  = 28.284, ft0  = 28.284, ft1  = 4939.9052508
       0     2273        M 0x80000724 addi    a3, a3, -1             #; a3  = 4, (wrb) a3  <-- 3
                         M 0x8000071c fld     ft0, 0(a1)             #; ft0  <~~ Doub[0x001000a8], (f:fpu) ft1  <-- 5739.8899068
       0     2274        M 0x80000728 addi    a1, a1, 8              #; a1  = 0x001000a8, (wrb) a1  <-- 0x001000b0
                         M                                           #; (f:lsu) ft0  <-- 29.6982000
       0     2275        M 0x8000072c bnez    a3, pc - 16            #; a3  = 3, taken, goto 0x8000071c
                         M 0x80000720 fmadd.d ft1, ft0, ft0, ft1     #; ft0  = 29.6982000, ft0  = 29.6982000, ft1  = 5739.8899068
       0     2278        M 0x80000724 addi    a3, a3, -1             #; a3  = 3, (wrb) a3  <-- 2
                         M 0x8000071c fld     ft0, 0(a1)             #; ft0  <~~ Doub[0x001000b0], (f:fpu) ft1  <-- 6621.8729900
       0     2279        M 0x80000728 addi    a1, a1, 8              #; a1  = 0x001000b0, (wrb) a1  <-- 0x001000b8
                         M                                           #; (f:lsu) ft0  <-- 31.1124000
       0     2280        M 0x8000072c bnez    a3, pc - 16            #; a3  = 2, taken, goto 0x8000071c
                         M 0x80000720 fmadd.d ft1, ft0, ft0, ft1     #; ft0  = 31.1124000, ft0  = 31.1124000, ft1  = 6621.8729900
       0     2283        M 0x80000724 addi    a3, a3, -1             #; a3  = 2, (wrb) a3  <-- 1
                         M 0x8000071c fld     ft0, 0(a1)             #; ft0  <~~ Doub[0x001000b8], (f:fpu) ft1  <-- 7589.8544238
       0     2284        M 0x80000728 addi    a1, a1, 8              #; a1  = 0x001000b8, (wrb) a1  <-- 0x001000c0
                         M                                           #; (f:lsu) ft0  <-- 32.5266000
       0     2285        M 0x8000072c bnez    a3, pc - 16            #; a3  = 1, taken, goto 0x8000071c
                         M 0x80000720 fmadd.d ft1, ft0, ft0, ft1     #; ft0  = 32.5266000, ft0  = 32.5266000, ft1  = 7589.8544238
       0     2288        M 0x80000724 addi    a3, a3, -1             #; a3  = 1, (wrb) a3  <-- 0
                         M 0x8000071c fld     ft0, 0(a1)             #; ft0  <~~ Doub[0x001000c0], (f:fpu) ft1  <-- 8647.8341314
       0     2289        M 0x80000728 addi    a1, a1, 8              #; a1  = 0x001000c0, (wrb) a1  <-- 0x001000c8
                         M                                           #; (f:lsu) ft0  <-- 33.9408000
       0     2290        M 0x8000072c bnez    a3, pc - 16            #; a3  = 0, not taken
                         M 0x80000720 fmadd.d ft1, ft0, ft0, ft1     #; ft0  = 33.9408000, ft0  = 33.9408000, ft1  = 8647.8341314
       0     2293        M                                           #; (f:fpu) ft1  <-- 9799.8120360
       0     2302        M 0x80000730 li      a1, 0                  #; (wrb) a1  <-- 0
       0     2304        M 0x80000738 mv      a3, t1                 #; t1  = 0x00100000, (wrb) a3  <-- 0x00100000
                         M 0x80000734 fcvt.d.w ft0, zero             #; ac1  = 0
       0     2305        M 0x8000073c j       pc + 0x10              #; goto 0x8000074c
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     2314        M 0x8000074c andi    a2, a1, 1              #; a1  = 0, (wrb) a2  <-- 0
       0     2326        M 0x80000750 bnez    a2, pc - 16            #; a2  = 0, not taken
       0     2329        M 0x8000075c j       pc - 0x1c              #; goto 0x80000740
                         M 0x80000754 fld     ft2, 0(a3)             #; ft2  <~~ Doub[0x00100000]
       0     2330        M 0x80000740 addi    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
                         M                                           #; (f:lsu) ft2  <-- 0.0
       0     2331        M 0x80000744 addi    a3, a3, 8              #; a3  = 0x00100000, (wrb) a3  <-- 0x00100008
                         M 0x80000758 fadd.d  ft0, ft2, ft0          #; ft2  = 0.0, ft0  = 0.0
       0     2332        M 0x80000748 beq     a0, a1, pc + 24        #; a0  = 25, a1  = 1, not taken
       0     2333        M 0x8000074c andi    a2, a1, 1              #; a1  = 1, (wrb) a2  <-- 1
       0     2334        M 0x80000750 bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x80000740
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     2335        M 0x80000740 addi    a1, a1, 1              #; a1  = 1, (wrb) a1  <-- 2
       0     2336        M 0x80000744 addi    a3, a3, 8              #; a3  = 0x00100008, (wrb) a3  <-- 0x00100010
       0     2337        M 0x80000748 beq     a0, a1, pc + 24        #; a0  = 25, a1  = 2, not taken
       0     2338        M 0x8000074c andi    a2, a1, 1              #; a1  = 2, (wrb) a2  <-- 0
       0     2339        M 0x80000750 bnez    a2, pc - 16            #; a2  = 0, not taken
       0     2342        M 0x8000075c j       pc - 0x1c              #; goto 0x80000740
                         M 0x80000754 fld     ft2, 0(a3)             #; ft2  <~~ Doub[0x00100010]
       0     2343        M 0x80000740 addi    a1, a1, 1              #; a1  = 2, (wrb) a1  <-- 3
                         M                                           #; (f:lsu) ft2  <-- 2.8284
       0     2344        M 0x80000744 addi    a3, a3, 8              #; a3  = 0x00100010, (wrb) a3  <-- 0x00100018
                         M 0x80000758 fadd.d  ft0, ft2, ft0          #; ft2  = 2.8284, ft0  = 0.0
       0     2345        M 0x80000748 beq     a0, a1, pc + 24        #; a0  = 25, a1  = 3, not taken
       0     2346        M 0x8000074c andi    a2, a1, 1              #; a1  = 3, (wrb) a2  <-- 1
       0     2347        M 0x80000750 bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x80000740
                         M                                           #; (f:fpu) ft0  <-- 2.8284
       0     2348        M 0x80000740 addi    a1, a1, 1              #; a1  = 3, (wrb) a1  <-- 4
       0     2349        M 0x80000744 addi    a3, a3, 8              #; a3  = 0x00100018, (wrb) a3  <-- 0x00100020
       0     2350        M 0x80000748 beq     a0, a1, pc + 24        #; a0  = 25, a1  = 4, not taken
       0     2351        M 0x8000074c andi    a2, a1, 1              #; a1  = 4, (wrb) a2  <-- 0
       0     2352        M 0x80000750 bnez    a2, pc - 16            #; a2  = 0, not taken
       0     2355        M 0x8000075c j       pc - 0x1c              #; goto 0x80000740
                         M 0x80000754 fld     ft2, 0(a3)             #; ft2  <~~ Doub[0x00100020]
       0     2356        M 0x80000740 addi    a1, a1, 1              #; a1  = 4, (wrb) a1  <-- 5
                         M                                           #; (f:lsu) ft2  <-- 5.6568
       0     2357        M 0x80000744 addi    a3, a3, 8              #; a3  = 0x00100020, (wrb) a3  <-- 0x00100028
                         M 0x80000758 fadd.d  ft0, ft2, ft0          #; ft2  = 5.6568, ft0  = 2.8284
       0     2358        M 0x80000748 beq     a0, a1, pc + 24        #; a0  = 25, a1  = 5, not taken
       0     2359        M 0x8000074c andi    a2, a1, 1              #; a1  = 5, (wrb) a2  <-- 1
       0     2360        M 0x80000750 bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x80000740
                         M                                           #; (f:fpu) ft0  <-- 8.4852000
       0     2361        M 0x80000740 addi    a1, a1, 1              #; a1  = 5, (wrb) a1  <-- 6
       0     2362        M 0x80000744 addi    a3, a3, 8              #; a3  = 0x00100028, (wrb) a3  <-- 0x00100030
       0     2363        M 0x80000748 beq     a0, a1, pc + 24        #; a0  = 25, a1  = 6, not taken
       0     2364        M 0x8000074c andi    a2, a1, 1              #; a1  = 6, (wrb) a2  <-- 0
       0     2365        M 0x80000750 bnez    a2, pc - 16            #; a2  = 0, not taken
       0     2368        M 0x8000075c j       pc - 0x1c              #; goto 0x80000740
                         M 0x80000754 fld     ft2, 0(a3)             #; ft2  <~~ Doub[0x00100030]
       0     2369        M 0x80000740 addi    a1, a1, 1              #; a1  = 6, (wrb) a1  <-- 7
                         M                                           #; (f:lsu) ft2  <-- 8.4852000
       0     2370        M 0x80000744 addi    a3, a3, 8              #; a3  = 0x00100030, (wrb) a3  <-- 0x00100038
                         M 0x80000758 fadd.d  ft0, ft2, ft0          #; ft2  = 8.4852000, ft0  = 8.4852000
       0     2371        M 0x80000748 beq     a0, a1, pc + 24        #; a0  = 25, a1  = 7, not taken
       0     2372        M 0x8000074c andi    a2, a1, 1              #; a1  = 7, (wrb) a2  <-- 1
       0     2373        M 0x80000750 bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x80000740
                         M                                           #; (f:fpu) ft0  <-- 16.9704000
       0     2374        M 0x80000740 addi    a1, a1, 1              #; a1  = 7, (wrb) a1  <-- 8
       0     2375        M 0x80000744 addi    a3, a3, 8              #; a3  = 0x00100038, (wrb) a3  <-- 0x00100040
       0     2376        M 0x80000748 beq     a0, a1, pc + 24        #; a0  = 25, a1  = 8, not taken
       0     2377        M 0x8000074c andi    a2, a1, 1              #; a1  = 8, (wrb) a2  <-- 0
       0     2378        M 0x80000750 bnez    a2, pc - 16            #; a2  = 0, not taken
       0     2381        M 0x8000075c j       pc - 0x1c              #; goto 0x80000740
                         M 0x80000754 fld     ft2, 0(a3)             #; ft2  <~~ Doub[0x00100040]
       0     2382        M 0x80000740 addi    a1, a1, 1              #; a1  = 8, (wrb) a1  <-- 9
                         M                                           #; (f:lsu) ft2  <-- 11.3136
       0     2383        M 0x80000744 addi    a3, a3, 8              #; a3  = 0x00100040, (wrb) a3  <-- 0x00100048
                         M 0x80000758 fadd.d  ft0, ft2, ft0          #; ft2  = 11.3136, ft0  = 16.9704000
       0     2384        M 0x80000748 beq     a0, a1, pc + 24        #; a0  = 25, a1  = 9, not taken
       0     2385        M 0x8000074c andi    a2, a1, 1              #; a1  = 9, (wrb) a2  <-- 1
       0     2386        M 0x80000750 bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x80000740
                         M                                           #; (f:fpu) ft0  <-- 28.284
       0     2387        M 0x80000740 addi    a1, a1, 1              #; a1  = 9, (wrb) a1  <-- 10
       0     2388        M 0x80000744 addi    a3, a3, 8              #; a3  = 0x00100048, (wrb) a3  <-- 0x00100050
       0     2389        M 0x80000748 beq     a0, a1, pc + 24        #; a0  = 25, a1  = 10, not taken
       0     2390        M 0x8000074c andi    a2, a1, 1              #; a1  = 10, (wrb) a2  <-- 0
       0     2391        M 0x80000750 bnez    a2, pc - 16            #; a2  = 0, not taken
       0     2394        M 0x8000075c j       pc - 0x1c              #; goto 0x80000740
                         M 0x80000754 fld     ft2, 0(a3)             #; ft2  <~~ Doub[0x00100050]
       0     2395        M 0x80000740 addi    a1, a1, 1              #; a1  = 10, (wrb) a1  <-- 11
                         M                                           #; (f:lsu) ft2  <-- 14.142
       0     2396        M 0x80000744 addi    a3, a3, 8              #; a3  = 0x00100050, (wrb) a3  <-- 0x00100058
                         M 0x80000758 fadd.d  ft0, ft2, ft0          #; ft2  = 14.142, ft0  = 28.284
       0     2397        M 0x80000748 beq     a0, a1, pc + 24        #; a0  = 25, a1  = 11, not taken
       0     2398        M 0x8000074c andi    a2, a1, 1              #; a1  = 11, (wrb) a2  <-- 1
       0     2399        M 0x80000750 bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x80000740
                         M                                           #; (f:fpu) ft0  <-- 42.426
       0     2400        M 0x80000740 addi    a1, a1, 1              #; a1  = 11, (wrb) a1  <-- 12
       0     2401        M 0x80000744 addi    a3, a3, 8              #; a3  = 0x00100058, (wrb) a3  <-- 0x00100060
       0     2402        M 0x80000748 beq     a0, a1, pc + 24        #; a0  = 25, a1  = 12, not taken
       0     2403        M 0x8000074c andi    a2, a1, 1              #; a1  = 12, (wrb) a2  <-- 0
       0     2404        M 0x80000750 bnez    a2, pc - 16            #; a2  = 0, not taken
       0     2407        M 0x8000075c j       pc - 0x1c              #; goto 0x80000740
                         M 0x80000754 fld     ft2, 0(a3)             #; ft2  <~~ Doub[0x00100060]
       0     2408        M 0x80000740 addi    a1, a1, 1              #; a1  = 12, (wrb) a1  <-- 13
                         M                                           #; (f:lsu) ft2  <-- 16.9704000
       0     2409        M 0x80000744 addi    a3, a3, 8              #; a3  = 0x00100060, (wrb) a3  <-- 0x00100068
                         M 0x80000758 fadd.d  ft0, ft2, ft0          #; ft2  = 16.9704000, ft0  = 42.426
       0     2410        M 0x80000748 beq     a0, a1, pc + 24        #; a0  = 25, a1  = 13, not taken
       0     2411        M 0x8000074c andi    a2, a1, 1              #; a1  = 13, (wrb) a2  <-- 1
       0     2412        M 0x80000750 bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x80000740
                         M                                           #; (f:fpu) ft0  <-- 59.3964
       0     2413        M 0x80000740 addi    a1, a1, 1              #; a1  = 13, (wrb) a1  <-- 14
       0     2414        M 0x80000744 addi    a3, a3, 8              #; a3  = 0x00100068, (wrb) a3  <-- 0x00100070
       0     2415        M 0x80000748 beq     a0, a1, pc + 24        #; a0  = 25, a1  = 14, not taken
       0     2416        M 0x8000074c andi    a2, a1, 1              #; a1  = 14, (wrb) a2  <-- 0
       0     2417        M 0x80000750 bnez    a2, pc - 16            #; a2  = 0, not taken
       0     2420        M 0x8000075c j       pc - 0x1c              #; goto 0x80000740
                         M 0x80000754 fld     ft2, 0(a3)             #; ft2  <~~ Doub[0x00100070]
       0     2421        M 0x80000740 addi    a1, a1, 1              #; a1  = 14, (wrb) a1  <-- 15
                         M                                           #; (f:lsu) ft2  <-- 19.7988
       0     2422        M 0x80000744 addi    a3, a3, 8              #; a3  = 0x00100070, (wrb) a3  <-- 0x00100078
                         M 0x80000758 fadd.d  ft0, ft2, ft0          #; ft2  = 19.7988, ft0  = 59.3964
       0     2423        M 0x80000748 beq     a0, a1, pc + 24        #; a0  = 25, a1  = 15, not taken
       0     2424        M 0x8000074c andi    a2, a1, 1              #; a1  = 15, (wrb) a2  <-- 1
       0     2425        M 0x80000750 bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x80000740
                         M                                           #; (f:fpu) ft0  <-- 79.1952
       0     2426        M 0x80000740 addi    a1, a1, 1              #; a1  = 15, (wrb) a1  <-- 16
       0     2427        M 0x80000744 addi    a3, a3, 8              #; a3  = 0x00100078, (wrb) a3  <-- 0x00100080
       0     2428        M 0x80000748 beq     a0, a1, pc + 24        #; a0  = 25, a1  = 16, not taken
       0     2429        M 0x8000074c andi    a2, a1, 1              #; a1  = 16, (wrb) a2  <-- 0
       0     2430        M 0x80000750 bnez    a2, pc - 16            #; a2  = 0, not taken
       0     2433        M 0x8000075c j       pc - 0x1c              #; goto 0x80000740
                         M 0x80000754 fld     ft2, 0(a3)             #; ft2  <~~ Doub[0x00100080]
       0     2434        M 0x80000740 addi    a1, a1, 1              #; a1  = 16, (wrb) a1  <-- 17
                         M                                           #; (f:lsu) ft2  <-- 22.6272
       0     2435        M 0x80000744 addi    a3, a3, 8              #; a3  = 0x00100080, (wrb) a3  <-- 0x00100088
                         M 0x80000758 fadd.d  ft0, ft2, ft0          #; ft2  = 22.6272, ft0  = 79.1952
       0     2436        M 0x80000748 beq     a0, a1, pc + 24        #; a0  = 25, a1  = 17, not taken
       0     2437        M 0x8000074c andi    a2, a1, 1              #; a1  = 17, (wrb) a2  <-- 1
       0     2438        M 0x80000750 bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x80000740
                         M                                           #; (f:fpu) ft0  <-- 101.8224
       0     2439        M 0x80000740 addi    a1, a1, 1              #; a1  = 17, (wrb) a1  <-- 18
       0     2440        M 0x80000744 addi    a3, a3, 8              #; a3  = 0x00100088, (wrb) a3  <-- 0x00100090
       0     2441        M 0x80000748 beq     a0, a1, pc + 24        #; a0  = 25, a1  = 18, not taken
       0     2442        M 0x8000074c andi    a2, a1, 1              #; a1  = 18, (wrb) a2  <-- 0
       0     2443        M 0x80000750 bnez    a2, pc - 16            #; a2  = 0, not taken
       0     2446        M 0x8000075c j       pc - 0x1c              #; goto 0x80000740
                         M 0x80000754 fld     ft2, 0(a3)             #; ft2  <~~ Doub[0x00100090]
       0     2447        M 0x80000740 addi    a1, a1, 1              #; a1  = 18, (wrb) a1  <-- 19
                         M                                           #; (f:lsu) ft2  <-- 25.4556000
       0     2448        M 0x80000744 addi    a3, a3, 8              #; a3  = 0x00100090, (wrb) a3  <-- 0x00100098
                         M 0x80000758 fadd.d  ft0, ft2, ft0          #; ft2  = 25.4556000, ft0  = 101.8224
       0     2449        M 0x80000748 beq     a0, a1, pc + 24        #; a0  = 25, a1  = 19, not taken
       0     2450        M 0x8000074c andi    a2, a1, 1              #; a1  = 19, (wrb) a2  <-- 1
       0     2451        M 0x80000750 bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x80000740
                         M                                           #; (f:fpu) ft0  <-- 127.2780000
       0     2452        M 0x80000740 addi    a1, a1, 1              #; a1  = 19, (wrb) a1  <-- 20
       0     2453        M 0x80000744 addi    a3, a3, 8              #; a3  = 0x00100098, (wrb) a3  <-- 0x001000a0
       0     2454        M 0x80000748 beq     a0, a1, pc + 24        #; a0  = 25, a1  = 20, not taken
       0     2455        M 0x8000074c andi    a2, a1, 1              #; a1  = 20, (wrb) a2  <-- 0
       0     2456        M 0x80000750 bnez    a2, pc - 16            #; a2  = 0, not taken
       0     2459        M 0x8000075c j       pc - 0x1c              #; goto 0x80000740
                         M 0x80000754 fld     ft2, 0(a3)             #; ft2  <~~ Doub[0x001000a0]
       0     2460        M 0x80000740 addi    a1, a1, 1              #; a1  = 20, (wrb) a1  <-- 21
                         M                                           #; (f:lsu) ft2  <-- 28.284
       0     2461        M 0x80000744 addi    a3, a3, 8              #; a3  = 0x001000a0, (wrb) a3  <-- 0x001000a8
                         M 0x80000758 fadd.d  ft0, ft2, ft0          #; ft2  = 28.284, ft0  = 127.2780000
       0     2462        M 0x80000748 beq     a0, a1, pc + 24        #; a0  = 25, a1  = 21, not taken
       0     2463        M 0x8000074c andi    a2, a1, 1              #; a1  = 21, (wrb) a2  <-- 1
       0     2464        M 0x80000750 bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x80000740
                         M                                           #; (f:fpu) ft0  <-- 155.5620000
       0     2465        M 0x80000740 addi    a1, a1, 1              #; a1  = 21, (wrb) a1  <-- 22
       0     2466        M 0x80000744 addi    a3, a3, 8              #; a3  = 0x001000a8, (wrb) a3  <-- 0x001000b0
       0     2467        M 0x80000748 beq     a0, a1, pc + 24        #; a0  = 25, a1  = 22, not taken
       0     2468        M 0x8000074c andi    a2, a1, 1              #; a1  = 22, (wrb) a2  <-- 0
       0     2469        M 0x80000750 bnez    a2, pc - 16            #; a2  = 0, not taken
       0     2472        M 0x8000075c j       pc - 0x1c              #; goto 0x80000740
                         M 0x80000754 fld     ft2, 0(a3)             #; ft2  <~~ Doub[0x001000b0]
       0     2473        M 0x80000740 addi    a1, a1, 1              #; a1  = 22, (wrb) a1  <-- 23
                         M                                           #; (f:lsu) ft2  <-- 31.1124000
       0     2474        M 0x80000744 addi    a3, a3, 8              #; a3  = 0x001000b0, (wrb) a3  <-- 0x001000b8
                         M 0x80000758 fadd.d  ft0, ft2, ft0          #; ft2  = 31.1124000, ft0  = 155.5620000
       0     2475        M 0x80000748 beq     a0, a1, pc + 24        #; a0  = 25, a1  = 23, not taken
       0     2476        M 0x8000074c andi    a2, a1, 1              #; a1  = 23, (wrb) a2  <-- 1
       0     2477        M 0x80000750 bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x80000740
                         M                                           #; (f:fpu) ft0  <-- 186.6744
       0     2478        M 0x80000740 addi    a1, a1, 1              #; a1  = 23, (wrb) a1  <-- 24
       0     2479        M 0x80000744 addi    a3, a3, 8              #; a3  = 0x001000b8, (wrb) a3  <-- 0x001000c0
       0     2480        M 0x80000748 beq     a0, a1, pc + 24        #; a0  = 25, a1  = 24, not taken
       0     2481        M 0x8000074c andi    a2, a1, 1              #; a1  = 24, (wrb) a2  <-- 0
       0     2482        M 0x80000750 bnez    a2, pc - 16            #; a2  = 0, not taken
       0     2485        M 0x8000075c j       pc - 0x1c              #; goto 0x80000740
                         M 0x80000754 fld     ft2, 0(a3)             #; ft2  <~~ Doub[0x001000c0]
       0     2486        M 0x80000740 addi    a1, a1, 1              #; a1  = 24, (wrb) a1  <-- 25
                         M                                           #; (f:lsu) ft2  <-- 33.9408000
       0     2487        M 0x80000744 addi    a3, a3, 8              #; a3  = 0x001000c0, (wrb) a3  <-- 0x001000c8
                         M 0x80000758 fadd.d  ft0, ft2, ft0          #; ft2  = 33.9408000, ft0  = 186.6744
       0     2488        M 0x80000748 beq     a0, a1, pc + 24        #; a0  = 25, a1  = 25, taken, goto 0x80000760
       0     2490        M                                           #; (f:fpu) ft0  <-- 220.6152
       0     2500        M 0x80000760 addi    a2, a0, -1             #; a0  = 25, (wrb) a2  <-- 24
       0     2501        M 0x80000764 li      a3, 10                 #; (wrb) a3  <-- 10
       0     2502        M 0x80000768 mv      a1, a0                 #; a0  = 25, (wrb) a1  <-- 25
       0     2503        M 0x8000076c bltu    a2, a3, pc + 8         #; a2  = 24, a3  = 10, not taken
       0     2512        M 0x80000770 li      a1, 11                 #; (wrb) a1  <-- 11
       0     2514        M 0x80000778 mv      a3, t1                 #; t1  = 0x00100000, (wrb) a3  <-- 0x00100000
                         M 0x80000774 fcvt.d.w ft4, zero             #; ac1  = 0
       0     2515        M                                           #; (f:fpu) ft4  <-- 0.0
       0     2517        M 0x8000077c fld     ft2, 0(a3)             #; ft2  <~~ Doub[0x00100000]
       0     2518        M                                           #; (f:lsu) ft2  <-- 0.0
       0     2525        M 0x80000784 addi    a1, a1, -1             #; a1  = 11, (wrb) a1  <-- 10
       0     2526        M 0x80000788 addi    a3, a3, 8              #; a3  = 0x00100000, (wrb) a3  <-- 0x00100008
                         M 0x80000780 fadd.d  ft4, ft2, ft4          #; ft2  = 0.0, ft4  = 0.0
       0     2527        M 0x8000078c bnez    a1, pc - 16            #; a1  = 10, taken, goto 0x8000077c
       0     2529        M                                           #; (f:fpu) ft4  <-- 0.0
       0     2530        M 0x80000784 addi    a1, a1, -1             #; a1  = 10, (wrb) a1  <-- 9
                         M 0x8000077c fld     ft2, 0(a3)             #; ft2  <~~ Doub[0x00100008]
       0     2531        M 0x80000788 addi    a3, a3, 8              #; a3  = 0x00100008, (wrb) a3  <-- 0x00100010
                         M                                           #; (f:lsu) ft2  <-- 1.4142
       0     2532        M 0x8000078c bnez    a1, pc - 16            #; a1  = 9, taken, goto 0x8000077c
                         M 0x80000780 fadd.d  ft4, ft2, ft4          #; ft2  = 1.4142, ft4  = 0.0
       0     2535        M 0x80000784 addi    a1, a1, -1             #; a1  = 9, (wrb) a1  <-- 8
                         M 0x8000077c fld     ft2, 0(a3)             #; ft2  <~~ Doub[0x00100010], (f:fpu) ft4  <-- 1.4142
       0     2536        M 0x80000788 addi    a3, a3, 8              #; a3  = 0x00100010, (wrb) a3  <-- 0x00100018
                         M                                           #; (f:lsu) ft2  <-- 2.8284
       0     2537        M 0x8000078c bnez    a1, pc - 16            #; a1  = 8, taken, goto 0x8000077c
                         M 0x80000780 fadd.d  ft4, ft2, ft4          #; ft2  = 2.8284, ft4  = 1.4142
       0     2540        M 0x80000784 addi    a1, a1, -1             #; a1  = 8, (wrb) a1  <-- 7
                         M 0x8000077c fld     ft2, 0(a3)             #; ft2  <~~ Doub[0x00100018], (f:fpu) ft4  <-- 4.2426000
       0     2541        M 0x80000788 addi    a3, a3, 8              #; a3  = 0x00100018, (wrb) a3  <-- 0x00100020
                         M                                           #; (f:lsu) ft2  <-- 4.2426000
       0     2542        M 0x8000078c bnez    a1, pc - 16            #; a1  = 7, taken, goto 0x8000077c
                         M 0x80000780 fadd.d  ft4, ft2, ft4          #; ft2  = 4.2426000, ft4  = 4.2426000
       0     2545        M 0x80000784 addi    a1, a1, -1             #; a1  = 7, (wrb) a1  <-- 6
                         M 0x8000077c fld     ft2, 0(a3)             #; ft2  <~~ Doub[0x00100020], (f:fpu) ft4  <-- 8.4852000
       0     2546        M 0x80000788 addi    a3, a3, 8              #; a3  = 0x00100020, (wrb) a3  <-- 0x00100028
                         M                                           #; (f:lsu) ft2  <-- 5.6568
       0     2547        M 0x8000078c bnez    a1, pc - 16            #; a1  = 6, taken, goto 0x8000077c
                         M 0x80000780 fadd.d  ft4, ft2, ft4          #; ft2  = 5.6568, ft4  = 8.4852000
       0     2550        M 0x80000784 addi    a1, a1, -1             #; a1  = 6, (wrb) a1  <-- 5
                         M 0x8000077c fld     ft2, 0(a3)             #; ft2  <~~ Doub[0x00100028], (f:fpu) ft4  <-- 14.142
       0     2551        M 0x80000788 addi    a3, a3, 8              #; a3  = 0x00100028, (wrb) a3  <-- 0x00100030
                         M                                           #; (f:lsu) ft2  <-- 7.071
       0     2552        M 0x8000078c bnez    a1, pc - 16            #; a1  = 5, taken, goto 0x8000077c
                         M 0x80000780 fadd.d  ft4, ft2, ft4          #; ft2  = 7.071, ft4  = 14.142
       0     2555        M 0x80000784 addi    a1, a1, -1             #; a1  = 5, (wrb) a1  <-- 4
                         M 0x8000077c fld     ft2, 0(a3)             #; ft2  <~~ Doub[0x00100030], (f:fpu) ft4  <-- 21.213
       0     2556        M 0x80000788 addi    a3, a3, 8              #; a3  = 0x00100030, (wrb) a3  <-- 0x00100038
                         M                                           #; (f:lsu) ft2  <-- 8.4852000
       0     2557        M 0x8000078c bnez    a1, pc - 16            #; a1  = 4, taken, goto 0x8000077c
                         M 0x80000780 fadd.d  ft4, ft2, ft4          #; ft2  = 8.4852000, ft4  = 21.213
       0     2560        M 0x80000784 addi    a1, a1, -1             #; a1  = 4, (wrb) a1  <-- 3
                         M 0x8000077c fld     ft2, 0(a3)             #; ft2  <~~ Doub[0x00100038], (f:fpu) ft4  <-- 29.6982
       0     2561        M 0x80000788 addi    a3, a3, 8              #; a3  = 0x00100038, (wrb) a3  <-- 0x00100040
                         M                                           #; (f:lsu) ft2  <-- 9.8994
       0     2562        M 0x8000078c bnez    a1, pc - 16            #; a1  = 3, taken, goto 0x8000077c
                         M 0x80000780 fadd.d  ft4, ft2, ft4          #; ft2  = 9.8994, ft4  = 29.6982
       0     2565        M 0x80000784 addi    a1, a1, -1             #; a1  = 3, (wrb) a1  <-- 2
                         M 0x8000077c fld     ft2, 0(a3)             #; ft2  <~~ Doub[0x00100040], (f:fpu) ft4  <-- 39.5976
       0     2566        M 0x80000788 addi    a3, a3, 8              #; a3  = 0x00100040, (wrb) a3  <-- 0x00100048
                         M                                           #; (f:lsu) ft2  <-- 11.3136
       0     2567        M 0x8000078c bnez    a1, pc - 16            #; a1  = 2, taken, goto 0x8000077c
                         M 0x80000780 fadd.d  ft4, ft2, ft4          #; ft2  = 11.3136, ft4  = 39.5976
       0     2570        M 0x80000784 addi    a1, a1, -1             #; a1  = 2, (wrb) a1  <-- 1
                         M 0x8000077c fld     ft2, 0(a3)             #; ft2  <~~ Doub[0x00100048], (f:fpu) ft4  <-- 50.9112
       0     2571        M 0x80000788 addi    a3, a3, 8              #; a3  = 0x00100048, (wrb) a3  <-- 0x00100050
                         M                                           #; (f:lsu) ft2  <-- 12.7278000
       0     2572        M 0x8000078c bnez    a1, pc - 16            #; a1  = 1, taken, goto 0x8000077c
                         M 0x80000780 fadd.d  ft4, ft2, ft4          #; ft2  = 12.7278000, ft4  = 50.9112
       0     2575        M 0x80000784 addi    a1, a1, -1             #; a1  = 1, (wrb) a1  <-- 0
                         M 0x8000077c fld     ft2, 0(a3)             #; ft2  <~~ Doub[0x00100050], (f:fpu) ft4  <-- 63.6390000
       0     2576        M 0x80000788 addi    a3, a3, 8              #; a3  = 0x00100050, (wrb) a3  <-- 0x00100058
                         M                                           #; (f:lsu) ft2  <-- 14.142
       0     2577        M 0x8000078c bnez    a1, pc - 16            #; a1  = 0, not taken
                         M 0x80000780 fadd.d  ft4, ft2, ft4          #; ft2  = 14.142, ft4  = 63.6390000
       0     2580        M                                           #; (f:fpu) ft4  <-- 77.7810000
       0     2591        M 0x80000790 fld     ft3, 0(a7)             #; ft3  <~~ Doub[0x80002e18]
       0     2592        M 0x80000794 fld     ft5, 0(a6)             #; ft5  <~~ Doub[0x80002e20]
       0     2600        M                                           #; (f:lsu) ft3  <-- -9799.8120360
       0     2601        M 0x80000798 fadd.d  ft2, ft1, ft3          #; ft1  = 9799.8120360, ft3  = -9799.8120360, (f:lsu) ft5  <-- -77.781
       0     2602        M 0x8000079c fadd.d  ft1, ft4, ft5          #; ft4  = 77.7810000, ft5  = -77.781
       0     2603        M 0x800007a0 fcvt.d.w ft4, zero             #; ac1  = 0
       0     2604        M                                           #; (f:fpu) ft2  <-- -0.0000000
       0     2605        M 0x800007ac addi    a0, a0, -1             #; a0  = 25, (wrb) a0  <-- 24
                         M 0x800007a4 fld     ft5, 0(t1)             #; ft5  <~~ Doub[0x00100000], (f:fpu) ft4  <-- 0.0
       0     2606        M                                           #; (f:fpu) ft1  <-- -0.0000000
       0     2607        M                                           #; (f:lsu) ft5  <-- 0.0
       0     2608        M 0x800007a8 fmadd.d ft4, ft5, ft5, ft4     #; ft5  = 0.0, ft5  = 0.0, ft4  = 0.0
       0     2611        M                                           #; (f:fpu) ft4  <-- 0.0
       0     2613        M 0x800007b0 addi    t1, t1, 8              #; t1  = 0x00100000, (wrb) t1  <-- 0x00100008
       0     2614        M 0x800007b4 bnez    a0, pc - 16            #; a0  = 24, taken, goto 0x800007a4
       0     2617        M 0x800007ac addi    a0, a0, -1             #; a0  = 24, (wrb) a0  <-- 23
                         M 0x800007a4 fld     ft5, 0(t1)             #; ft5  <~~ Doub[0x00100008]
       0     2618        M 0x800007b0 addi    t1, t1, 8              #; t1  = 0x00100008, (wrb) t1  <-- 0x00100010
                         M                                           #; (f:lsu) ft5  <-- 1.4142
       0     2619        M 0x800007b4 bnez    a0, pc - 16            #; a0  = 23, taken, goto 0x800007a4
                         M 0x800007a8 fmadd.d ft4, ft5, ft5, ft4     #; ft5  = 1.4142, ft5  = 1.4142, ft4  = 0.0
       0     2622        M 0x800007ac addi    a0, a0, -1             #; a0  = 23, (wrb) a0  <-- 22
                         M 0x800007a4 fld     ft5, 0(t1)             #; ft5  <~~ Doub[0x00100010], (f:fpu) ft4  <-- 1.9999616
       0     2623        M 0x800007b0 addi    t1, t1, 8              #; t1  = 0x00100010, (wrb) t1  <-- 0x00100018
                         M                                           #; (f:lsu) ft5  <-- 2.8284
       0     2624        M 0x800007b4 bnez    a0, pc - 16            #; a0  = 22, taken, goto 0x800007a4
                         M 0x800007a8 fmadd.d ft4, ft5, ft5, ft4     #; ft5  = 2.8284, ft5  = 2.8284, ft4  = 1.9999616
       0     2627        M 0x800007ac addi    a0, a0, -1             #; a0  = 22, (wrb) a0  <-- 21
                         M 0x800007a4 fld     ft5, 0(t1)             #; ft5  <~~ Doub[0x00100018], (f:fpu) ft4  <-- 9.9998082
       0     2628        M 0x800007b0 addi    t1, t1, 8              #; t1  = 0x00100018, (wrb) t1  <-- 0x00100020
                         M                                           #; (f:lsu) ft5  <-- 4.2426000
       0     2629        M 0x800007b4 bnez    a0, pc - 16            #; a0  = 21, taken, goto 0x800007a4
                         M 0x800007a8 fmadd.d ft4, ft5, ft5, ft4     #; ft5  = 4.2426000, ft5  = 4.2426000, ft4  = 9.9998082
       0     2632        M 0x800007ac addi    a0, a0, -1             #; a0  = 21, (wrb) a0  <-- 20
                         M 0x800007a4 fld     ft5, 0(t1)             #; ft5  <~~ Doub[0x00100020], (f:fpu) ft4  <-- 27.9994630
       0     2633        M 0x800007b0 addi    t1, t1, 8              #; t1  = 0x00100020, (wrb) t1  <-- 0x00100028
                         M                                           #; (f:lsu) ft5  <-- 5.6568
       0     2634        M 0x800007b4 bnez    a0, pc - 16            #; a0  = 20, taken, goto 0x800007a4
                         M 0x800007a8 fmadd.d ft4, ft5, ft5, ft4     #; ft5  = 5.6568, ft5  = 5.6568, ft4  = 27.9994630
       0     2637        M 0x800007ac addi    a0, a0, -1             #; a0  = 20, (wrb) a0  <-- 19
                         M 0x800007a4 fld     ft5, 0(t1)             #; ft5  <~~ Doub[0x00100028], (f:fpu) ft4  <-- 59.9988492
       0     2638        M 0x800007b0 addi    t1, t1, 8              #; t1  = 0x00100028, (wrb) t1  <-- 0x00100030
                         M                                           #; (f:lsu) ft5  <-- 7.071
       0     2639        M 0x800007b4 bnez    a0, pc - 16            #; a0  = 19, taken, goto 0x800007a4
                         M 0x800007a8 fmadd.d ft4, ft5, ft5, ft4     #; ft5  = 7.071, ft5  = 7.071, ft4  = 59.9988492
       0     2642        M 0x800007ac addi    a0, a0, -1             #; a0  = 19, (wrb) a0  <-- 18
                         M 0x800007a4 fld     ft5, 0(t1)             #; ft5  <~~ Doub[0x00100030], (f:fpu) ft4  <-- 109.9978902
       0     2643        M 0x800007b0 addi    t1, t1, 8              #; t1  = 0x00100030, (wrb) t1  <-- 0x00100038
                         M                                           #; (f:lsu) ft5  <-- 8.4852000
       0     2644        M 0x800007b4 bnez    a0, pc - 16            #; a0  = 18, taken, goto 0x800007a4
                         M 0x800007a8 fmadd.d ft4, ft5, ft5, ft4     #; ft5  = 8.4852000, ft5  = 8.4852000, ft4  = 109.9978902
       0     2647        M 0x800007ac addi    a0, a0, -1             #; a0  = 18, (wrb) a0  <-- 17
                         M 0x800007a4 fld     ft5, 0(t1)             #; ft5  <~~ Doub[0x00100038], (f:fpu) ft4  <-- 181.9965092
       0     2648        M 0x800007b0 addi    t1, t1, 8              #; t1  = 0x00100038, (wrb) t1  <-- 0x00100040
                         M                                           #; (f:lsu) ft5  <-- 9.8994
       0     2649        M 0x800007b4 bnez    a0, pc - 16            #; a0  = 17, taken, goto 0x800007a4
                         M 0x800007a8 fmadd.d ft4, ft5, ft5, ft4     #; ft5  = 9.8994, ft5  = 9.8994, ft4  = 181.9965092
       0     2652        M 0x800007ac addi    a0, a0, -1             #; a0  = 17, (wrb) a0  <-- 16
                         M 0x800007a4 fld     ft5, 0(t1)             #; ft5  <~~ Doub[0x00100040], (f:fpu) ft4  <-- 279.9946296
       0     2653        M 0x800007b0 addi    t1, t1, 8              #; t1  = 0x00100040, (wrb) t1  <-- 0x00100048
                         M                                           #; (f:lsu) ft5  <-- 11.3136
       0     2654        M 0x800007b4 bnez    a0, pc - 16            #; a0  = 16, taken, goto 0x800007a4
                         M 0x800007a8 fmadd.d ft4, ft5, ft5, ft4     #; ft5  = 11.3136, ft5  = 11.3136, ft4  = 279.9946296
       0     2657        M 0x800007ac addi    a0, a0, -1             #; a0  = 16, (wrb) a0  <-- 15
                         M 0x800007a4 fld     ft5, 0(t1)             #; ft5  <~~ Doub[0x00100048], (f:fpu) ft4  <-- 407.9921746
       0     2658        M 0x800007b0 addi    t1, t1, 8              #; t1  = 0x00100048, (wrb) t1  <-- 0x00100050
                         M                                           #; (f:lsu) ft5  <-- 12.7278000
       0     2659        M 0x800007b4 bnez    a0, pc - 16            #; a0  = 15, taken, goto 0x800007a4
                         M 0x800007a8 fmadd.d ft4, ft5, ft5, ft4     #; ft5  = 12.7278000, ft5  = 12.7278000, ft4  = 407.9921746
       0     2662        M 0x800007ac addi    a0, a0, -1             #; a0  = 15, (wrb) a0  <-- 14
                         M 0x800007a4 fld     ft5, 0(t1)             #; ft5  <~~ Doub[0x00100050], (f:fpu) ft4  <-- 569.9890674
       0     2663        M 0x800007b0 addi    t1, t1, 8              #; t1  = 0x00100050, (wrb) t1  <-- 0x00100058
                         M                                           #; (f:lsu) ft5  <-- 14.142
       0     2664        M 0x800007b4 bnez    a0, pc - 16            #; a0  = 14, taken, goto 0x800007a4
                         M 0x800007a8 fmadd.d ft4, ft5, ft5, ft4     #; ft5  = 14.142, ft5  = 14.142, ft4  = 569.9890674
       0     2667        M 0x800007ac addi    a0, a0, -1             #; a0  = 14, (wrb) a0  <-- 13
                         M 0x800007a4 fld     ft5, 0(t1)             #; ft5  <~~ Doub[0x00100058], (f:fpu) ft4  <-- 769.9852314
       0     2668        M 0x800007b0 addi    t1, t1, 8              #; t1  = 0x00100058, (wrb) t1  <-- 0x00100060
                         M                                           #; (f:lsu) ft5  <-- 15.5562000
       0     2669        M 0x800007b4 bnez    a0, pc - 16            #; a0  = 13, taken, goto 0x800007a4
                         M 0x800007a8 fmadd.d ft4, ft5, ft5, ft4     #; ft5  = 15.5562000, ft5  = 15.5562000, ft4  = 769.9852314
       0     2672        M 0x800007ac addi    a0, a0, -1             #; a0  = 13, (wrb) a0  <-- 12
                         M 0x800007a4 fld     ft5, 0(t1)             #; ft5  <~~ Doub[0x00100060], (f:fpu) ft4  <-- 1011.9805898
       0     2673        M 0x800007b0 addi    t1, t1, 8              #; t1  = 0x00100060, (wrb) t1  <-- 0x00100068
                         M                                           #; (f:lsu) ft5  <-- 16.9704000
       0     2674        M 0x800007b4 bnez    a0, pc - 16            #; a0  = 12, taken, goto 0x800007a4
                         M 0x800007a8 fmadd.d ft4, ft5, ft5, ft4     #; ft5  = 16.9704000, ft5  = 16.9704000, ft4  = 1011.9805898
       0     2677        M 0x800007ac addi    a0, a0, -1             #; a0  = 12, (wrb) a0  <-- 11
                         M 0x800007a4 fld     ft5, 0(t1)             #; ft5  <~~ Doub[0x00100068], (f:fpu) ft4  <-- 1299.9750660
       0     2678        M 0x800007b0 addi    t1, t1, 8              #; t1  = 0x00100068, (wrb) t1  <-- 0x00100070
                         M                                           #; (f:lsu) ft5  <-- 18.3846
       0     2679        M 0x800007b4 bnez    a0, pc - 16            #; a0  = 11, taken, goto 0x800007a4
                         M 0x800007a8 fmadd.d ft4, ft5, ft5, ft4     #; ft5  = 18.3846, ft5  = 18.3846, ft4  = 1299.9750660
       0     2682        M 0x800007ac addi    a0, a0, -1             #; a0  = 11, (wrb) a0  <-- 10
                         M 0x800007a4 fld     ft5, 0(t1)             #; ft5  <~~ Doub[0x00100070], (f:fpu) ft4  <-- 1637.9685832
       0     2683        M 0x800007b0 addi    t1, t1, 8              #; t1  = 0x00100070, (wrb) t1  <-- 0x00100078
                         M                                           #; (f:lsu) ft5  <-- 19.7988
       0     2684        M 0x800007b4 bnez    a0, pc - 16            #; a0  = 10, taken, goto 0x800007a4
                         M 0x800007a8 fmadd.d ft4, ft5, ft5, ft4     #; ft5  = 19.7988, ft5  = 19.7988, ft4  = 1637.9685832
       0     2687        M 0x800007ac addi    a0, a0, -1             #; a0  = 10, (wrb) a0  <-- 9
                         M 0x800007a4 fld     ft5, 0(t1)             #; ft5  <~~ Doub[0x00100078], (f:fpu) ft4  <-- 2029.9610646
       0     2688        M 0x800007b0 addi    t1, t1, 8              #; t1  = 0x00100078, (wrb) t1  <-- 0x00100080
                         M                                           #; (f:lsu) ft5  <-- 21.2130000
       0     2689        M 0x800007b4 bnez    a0, pc - 16            #; a0  = 9, taken, goto 0x800007a4
                         M 0x800007a8 fmadd.d ft4, ft5, ft5, ft4     #; ft5  = 21.2130000, ft5  = 21.2130000, ft4  = 2029.9610646
       0     2692        M 0x800007ac addi    a0, a0, -1             #; a0  = 9, (wrb) a0  <-- 8
                         M 0x800007a4 fld     ft5, 0(t1)             #; ft5  <~~ Doub[0x00100080], (f:fpu) ft4  <-- 2479.9524336
       0     2693        M 0x800007b0 addi    t1, t1, 8              #; t1  = 0x00100080, (wrb) t1  <-- 0x00100088
                         M                                           #; (f:lsu) ft5  <-- 22.6272
       0     2694        M 0x800007b4 bnez    a0, pc - 16            #; a0  = 8, taken, goto 0x800007a4
                         M 0x800007a8 fmadd.d ft4, ft5, ft5, ft4     #; ft5  = 22.6272, ft5  = 22.6272, ft4  = 2479.9524336
       0     2697        M 0x800007ac addi    a0, a0, -1             #; a0  = 8, (wrb) a0  <-- 7
                         M 0x800007a4 fld     ft5, 0(t1)             #; ft5  <~~ Doub[0x00100088], (f:fpu) ft4  <-- 2991.9426134
       0     2698        M 0x800007b0 addi    t1, t1, 8              #; t1  = 0x00100088, (wrb) t1  <-- 0x00100090
                         M                                           #; (f:lsu) ft5  <-- 24.0414
       0     2699        M 0x800007b4 bnez    a0, pc - 16            #; a0  = 7, taken, goto 0x800007a4
                         M 0x800007a8 fmadd.d ft4, ft5, ft5, ft4     #; ft5  = 24.0414, ft5  = 24.0414, ft4  = 2991.9426134
       0     2702        M 0x800007ac addi    a0, a0, -1             #; a0  = 7, (wrb) a0  <-- 6
                         M 0x800007a4 fld     ft5, 0(t1)             #; ft5  <~~ Doub[0x00100090], (f:fpu) ft4  <-- 3569.9315274
       0     2703        M 0x800007b0 addi    t1, t1, 8              #; t1  = 0x00100090, (wrb) t1  <-- 0x00100098
                         M                                           #; (f:lsu) ft5  <-- 25.4556000
       0     2704        M 0x800007b4 bnez    a0, pc - 16            #; a0  = 6, taken, goto 0x800007a4
                         M 0x800007a8 fmadd.d ft4, ft5, ft5, ft4     #; ft5  = 25.4556000, ft5  = 25.4556000, ft4  = 3569.9315274
       0     2707        M 0x800007ac addi    a0, a0, -1             #; a0  = 6, (wrb) a0  <-- 5
                         M 0x800007a4 fld     ft5, 0(t1)             #; ft5  <~~ Doub[0x00100098], (f:fpu) ft4  <-- 4217.9190988
       0     2708        M 0x800007b0 addi    t1, t1, 8              #; t1  = 0x00100098, (wrb) t1  <-- 0x001000a0
                         M                                           #; (f:lsu) ft5  <-- 26.8698000
       0     2709        M 0x800007b4 bnez    a0, pc - 16            #; a0  = 5, taken, goto 0x800007a4
                         M 0x800007a8 fmadd.d ft4, ft5, ft5, ft4     #; ft5  = 26.8698000, ft5  = 26.8698000, ft4  = 4217.9190988
       0     2712        M 0x800007ac addi    a0, a0, -1             #; a0  = 5, (wrb) a0  <-- 4
                         M 0x800007a4 fld     ft5, 0(t1)             #; ft5  <~~ Doub[0x001000a0], (f:fpu) ft4  <-- 4939.9052508
       0     2713        M 0x800007b0 addi    t1, t1, 8              #; t1  = 0x001000a0, (wrb) t1  <-- 0x001000a8
                         M                                           #; (f:lsu) ft5  <-- 28.284
       0     2714        M 0x800007b4 bnez    a0, pc - 16            #; a0  = 4, taken, goto 0x800007a4
                         M 0x800007a8 fmadd.d ft4, ft5, ft5, ft4     #; ft5  = 28.284, ft5  = 28.284, ft4  = 4939.9052508
       0     2717        M 0x800007ac addi    a0, a0, -1             #; a0  = 4, (wrb) a0  <-- 3
                         M 0x800007a4 fld     ft5, 0(t1)             #; ft5  <~~ Doub[0x001000a8], (f:fpu) ft4  <-- 5739.8899068
       0     2718        M 0x800007b0 addi    t1, t1, 8              #; t1  = 0x001000a8, (wrb) t1  <-- 0x001000b0
                         M                                           #; (f:lsu) ft5  <-- 29.6982000
       0     2719        M 0x800007b4 bnez    a0, pc - 16            #; a0  = 3, taken, goto 0x800007a4
                         M 0x800007a8 fmadd.d ft4, ft5, ft5, ft4     #; ft5  = 29.6982000, ft5  = 29.6982000, ft4  = 5739.8899068
       0     2722        M 0x800007ac addi    a0, a0, -1             #; a0  = 3, (wrb) a0  <-- 2
                         M 0x800007a4 fld     ft5, 0(t1)             #; ft5  <~~ Doub[0x001000b0], (f:fpu) ft4  <-- 6621.8729900
       0     2723        M 0x800007b0 addi    t1, t1, 8              #; t1  = 0x001000b0, (wrb) t1  <-- 0x001000b8
                         M                                           #; (f:lsu) ft5  <-- 31.1124000
       0     2724        M 0x800007b4 bnez    a0, pc - 16            #; a0  = 2, taken, goto 0x800007a4
                         M 0x800007a8 fmadd.d ft4, ft5, ft5, ft4     #; ft5  = 31.1124000, ft5  = 31.1124000, ft4  = 6621.8729900
       0     2727        M 0x800007ac addi    a0, a0, -1             #; a0  = 2, (wrb) a0  <-- 1
                         M 0x800007a4 fld     ft5, 0(t1)             #; ft5  <~~ Doub[0x001000b8], (f:fpu) ft4  <-- 7589.8544238
       0     2728        M 0x800007b0 addi    t1, t1, 8              #; t1  = 0x001000b8, (wrb) t1  <-- 0x001000c0
                         M                                           #; (f:lsu) ft5  <-- 32.5266000
       0     2729        M 0x800007b4 bnez    a0, pc - 16            #; a0  = 1, taken, goto 0x800007a4
                         M 0x800007a8 fmadd.d ft4, ft5, ft5, ft4     #; ft5  = 32.5266000, ft5  = 32.5266000, ft4  = 7589.8544238
       0     2732        M 0x800007ac addi    a0, a0, -1             #; a0  = 1, (wrb) a0  <-- 0
                         M 0x800007a4 fld     ft5, 0(t1)             #; ft5  <~~ Doub[0x001000c0], (f:fpu) ft4  <-- 8647.8341314
       0     2733        M 0x800007b0 addi    t1, t1, 8              #; t1  = 0x001000c0, (wrb) t1  <-- 0x001000c8
                         M                                           #; (f:lsu) ft5  <-- 33.9408000
       0     2734        M 0x800007b4 bnez    a0, pc - 16            #; a0  = 0, not taken
                         M 0x800007a8 fmadd.d ft4, ft5, ft5, ft4     #; ft5  = 33.9408000, ft5  = 33.9408000, ft4  = 8647.8341314
       0     2736        M 0x800007bc j       pc + 0x14              #; goto 0x800007d0
       0     2737        M                                           #; (f:fpu) ft4  <-- 9799.8120360
       0     2738        M 0x800007b8 fadd.d  ft3, ft4, ft3          #; ft4  = 9799.8120360, ft3  = -9799.8120360
       0     2741        M                                           #; (f:fpu) ft3  <-- -0.0000000
       0     2747        M 0x800007d0 auipc   a0, 0x2                #; (wrb) a0  <-- 0x800027d0
       0     2748        M 0x800007d4 addi    a0, a0, 1632           #; a0  = 0x800027d0, (wrb) a0  <-- 0x80002e30
       0     2751        M 0x800007d8 fld     ft4, 0(a0)             #; ft4  <~~ Doub[0x80002e30]
       0     2752        M 0x800007dc fsgnjx.d ft2, ft2, ft2         #; ft2  = -0.0000000, ft2  = -0.0000000
       0     2753        M                                           #; (f:fpu) ft2  <-- 0.0000000
       0     2760        M                                           #; (f:lsu) ft4  <-- -220.6152000
       0     2761        M 0x800007e0 fadd.d  ft0, ft0, ft4          #; ft0  = 220.6152, ft4  = -220.6152000
       0     2764        M                                           #; (f:fpu) ft0  <-- 0.0
       0     2765        M 0x800007e4 fsgnjx.d ft0, ft0, ft0         #; ft0  = 0.0, ft0  = 0.0
       0     2766        M 0x800007e8 fsgnjx.d ft1, ft1, ft1         #; ft1  = -0.0000000, ft1  = -0.0000000, (f:fpu) ft0  <-- 0.0
       0     2767        M 0x800007ec fsgnjx.d ft3, ft3, ft3         #; ft3  = -0.0000000, ft3  = -0.0000000, (f:fpu) ft1  <-- 0.0000000
       0     2768        M                                           #; (f:fpu) ft3  <-- 0.0000000
       0     2773        M 0x800007f0 fadd.d  ft1, ft2, ft1          #; ft2  = 0.0000000, ft1  = 0.0000000
       0     2776        M                                           #; (f:fpu) ft1  <-- 0.0000000
       0     2777        M 0x800007f4 fadd.d  ft0, ft1, ft0          #; ft1  = 0.0000000, ft0  = 0.0
       0     2780        M                                           #; (f:fpu) ft0  <-- 0.0000000
       0     2781        M 0x800007f8 fadd.d  fs0, ft0, ft3          #; ft0  = 0.0000000, ft3  = 0.0000000
       0     2783        M 0x80000800 lw      a2, 8(sp)              #; sp  = 0x0011ff40, a2  <~~ Word[0x0011ff48]
       0     2784        M                                           #; (f:fpu) fs0  <-- 0.0000000
       0     2785        M 0x800007fc fsd     fs0, 8(sp)             #; 0.0000000 ~~> Doub[0x0011ff48]
       0     2786        M                                           #; (lsu) a2  <-- 0
       0     2787        M 0x80000804 lw      a3, 12(sp)             #; sp  = 0x0011ff40, a3  <~~ Word[0x0011ff4c]
       0     2788        M 0x80000808 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002808
       0     2789        M 0x8000080c addi    a0, a0, 877            #; a0  = 0x80002808, (wrb) a0  <-- 0x80002b75
       0     2790        M                                           #; (lsu) a3  <-- 0x3d901000
       0     2795        M 0x80000810 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000810
       0     2796        M 0x80000814 jalr    ra, ra, 40             #; ra  = 0x80000810, (wrb) ra  <-- 0x80000818, goto 0x80000838
       0     2818        M 0x80000838 addi    sp, sp, -48            #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff10
       0     2819        M 0x8000083c sw      ra, 12(sp)             #; sp  = 0x0011ff10, 0x80000818 ~~> Word[0x0011ff1c]
       0     2830        M 0x80000840 mv      t0, a0                 #; a0  = 0x80002b75, (wrb) t0  <-- 0x80002b75
       0     2831        M 0x80000844 sw      a7, 44(sp)             #; sp  = 0x0011ff10, 0x80002e18 ~~> Word[0x0011ff3c]
       0     2832        M 0x80000848 sw      a6, 40(sp)             #; sp  = 0x0011ff10, 0x80002e20 ~~> Word[0x0011ff38]
       0     2833        M 0x8000084c sw      a5, 36(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff34]
       0     2842        M 0x80000850 sw      a4, 32(sp)             #; sp  = 0x0011ff10, 25 ~~> Word[0x0011ff30]
       0     2843        M 0x80000854 sw      a3, 28(sp)             #; sp  = 0x0011ff10, 0x3d901000 ~~> Word[0x0011ff2c]
       0     2844        M 0x80000858 sw      a2, 24(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff28]
       0     2845        M 0x8000085c sw      a1, 20(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff24]
       0     2854        M 0x80000860 addi    a0, sp, 20             #; sp  = 0x0011ff10, (wrb) a0  <-- 0x0011ff24
       0     2855        M 0x80000864 sw      a0, 8(sp)              #; sp  = 0x0011ff10, 0x0011ff24 ~~> Word[0x0011ff18]
       0     2856        M 0x80000868 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80001868
       0     2857        M 0x8000086c addi    a0, a0, -988           #; a0  = 0x80001868, (wrb) a0  <-- 0x8000148c
       0     2866        M 0x80000870 addi    a1, sp, 7              #; sp  = 0x0011ff10, (wrb) a1  <-- 0x0011ff17
       0     2867        M 0x80000874 li      a2, -1                 #; (wrb) a2  <-- -1
       0     2868        M 0x80000878 addi    a4, sp, 20             #; sp  = 0x0011ff10, (wrb) a4  <-- 0x0011ff24
       0     2869        M 0x8000087c mv      a3, t0                 #; t0  = 0x80002b75, (wrb) a3  <-- 0x80002b75
       0     2878        M 0x80000880 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000880
       0     2879        M 0x80000884 jalr    ra, ra, 20             #; ra  = 0x80000880, (wrb) ra  <-- 0x80000888, goto 0x80000894
       0     2890        M 0x80000894 addi    sp, sp, -112           #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011fea0
       0     2891        M 0x80000898 sw      ra, 108(sp)            #; sp  = 0x0011fea0, 0x80000888 ~~> Word[0x0011ff0c]
       0     2892        M 0x8000089c sw      s0, 104(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff08]
       0     2902        M 0x800008a0 sw      s1, 100(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff04]
       0     2903        M 0x800008a4 sw      s2, 96(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff00]
       0     2904        M 0x800008a8 sw      s3, 92(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fefc]
       0     2905        M 0x800008ac sw      s4, 88(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef8]
       0     2914        M 0x800008b0 sw      s5, 84(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef4]
       0     2915        M 0x800008b4 sw      s6, 80(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef0]
       0     2916        M 0x800008b8 sw      s7, 76(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011feec]
       0     2917        M 0x800008bc sw      s8, 72(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee8]
       0     2926        M 0x800008c0 sw      s9, 68(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee4]
       0     2927        M 0x800008c4 sw      s10, 64(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee0]
       0     2928        M 0x800008c8 sw      s11, 60(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fedc]
       0     2929        M 0x800008cc mv      s3, a4                 #; a4  = 0x0011ff24, (wrb) s3  <-- 0x0011ff24
       0     2938        M 0x800008d0 mv      s0, a3                 #; a3  = 0x80002b75, (wrb) s0  <-- 0x80002b75
       0     2939        M 0x800008d4 mv      s5, a2                 #; a2  = -1, (wrb) s5  <-- -1
       0     2940        M 0x800008d8 mv      s4, a1                 #; a1  = 0x0011ff17, (wrb) s4  <-- 0x0011ff17
       0     2941        M 0x800008dc beqz    a1, pc + 12            #; a1  = 0x0011ff17, not taken
       0     2950        M 0x800008e0 mv      s2, a0                 #; a0  = 0x8000148c, (wrb) s2  <-- 0x8000148c
       0     2951        M 0x800008e4 j       pc + 0xc               #; goto 0x800008f0
       0     2962        M 0x800008f0 li      s8, 0                  #; (wrb) s8  <-- 0
       0     2963        M 0x800008f4 li      s6, 37                 #; (wrb) s6  <-- 37
       0     2964        M 0x800008f8 li      s11, 16                #; (wrb) s11 <-- 16
       0     2965        M 0x800008fc li      s7, 46                 #; (wrb) s7  <-- 46
       0     2974        M 0x80000900 lui     a0, 0x1                #; (wrb) a0  <-- 4096
       0     2975        M 0x80000904 addi    a0, a0, -2048          #; a0  = 4096, (wrb) a0  <-- 2048
       0     2976        M 0x80000908 sw      a0, 24(sp)             #; sp  = 0x0011fea0, 2048 ~~> Word[0x0011feb8]
       0     2977        M 0x8000090c lui     a0, 0x10               #; (wrb) a0  <-- 0x00010000
       0     2986        M 0x80000910 addi    a0, a0, -1             #; a0  = 0x00010000, (wrb) a0  <-- 65535
       0     2987        M 0x80000914 sw      a0, 16(sp)             #; sp  = 0x0011fea0, 65535 ~~> Word[0x0011feb0]
       0     2988        M 0x80000918 addi    s10, s0, 2             #; s0  = 0x80002b75, (wrb) s10 <-- 0x80002b77
       0     2989        M 0x8000091c mv      s9, s8                 #; s8  = 0, (wrb) s9  <-- 0
       0     2998        M 0x80000920 li      s8, 10                 #; (wrb) s8  <-- 10
       0     2999        M 0x80000924 lbu     a0, 0(s0)              #; s0  = 0x80002b75, a0  <~~ Byte[0x80002b75]
       0     3010        M                                           #; (lsu) a0  <-- 101
       0     3011        M 0x80000928 beqz    a0, pc + 2824          #; a0  = 101, not taken
       0     3012        M 0x8000092c beq     a0, s6, pc + 48        #; a0  = 101, s6  = 37, not taken
       0     3013        M 0x80000930 addi    s1, s9, 1              #; s9  = 0, (wrb) s1  <-- 1
       0     3014        M 0x80000934 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     3015        M 0x80000938 mv      a2, s9                 #; s9  = 0, (wrb) a2  <-- 0
       0     3016        M 0x8000093c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3025        M 0x80000940 jalr    s2                     #; s2  = 0x8000148c, (wrb) ra  <-- 0x80000944, goto 0x8000148c
       0     3048        M 0x8000148c beqz    a0, pc + 168           #; a0  = 101, not taken
       0     3060        M 0x80001490 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     3061        M 0x80001494 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     3062        M 0x80001498 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     3063        M 0x8000149c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000349c
       0     3072        M 0x800014a0 addi    a3, a3, -1456          #; a3  = 0x8000349c, (wrb) a3  <-- 0x80002eec
       0     3073        M 0x800014a4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002eec, (wrb) a1  <-- 0x80002eec
       0     3074        M 0x800014a8 lw      a4, 0(a1)              #; a1  = 0x80002eec, a4  <~~ Word[0x80002eec]
       0     3085        M                                           #; (lsu) a4  <-- 0
       0     3086        M 0x800014ac addi    a5, a4, 1              #; a4  = 0, (wrb) a5  <-- 1
       0     3087        M 0x800014b0 sw      a5, 0(a1)              #; a1  = 0x80002eec, 1 ~~> Word[0x80002eec]
       0     3088        M 0x800014b4 add     a4, a1, a4             #; a1  = 0x80002eec, a4  = 0, (wrb) a4  <-- 0x80002eec
       0     3089        M 0x800014b8 sb      a0, 72(a4)             #; a4  = 0x80002eec, 101 ~~> Byte[0x80002f34]
       0     3090        M 0x800014bc lw      a4, 0(a1)              #; a1  = 0x80002eec, a4  <~~ Word[0x80002eec]
       0     3111        M                                           #; (lsu) a4  <-- 1
       0     3112        M 0x800014c0 addi    a4, a4, -1020          #; a4  = 1, (wrb) a4  <-- -1019
       0     3113        M 0x800014c4 snez    a4, a4                 #; a4  = -1019, (wrb) a4  <-- 1
       0     3114        M 0x800014c8 addi    a0, a0, -10            #; a0  = 101, (wrb) a0  <-- 91
       0     3115        M 0x800014cc snez    a0, a0                 #; a0  = 91, (wrb) a0  <-- 1
       0     3116        M 0x800014d0 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     3117        M 0x800014d4 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001534
       0     3139        M 0x80001534 ret                            #; ra  = 0x80000944, goto 0x80000944
       0     3153        M 0x80000944 addi    s0, s0, 1              #; s0  = 0x80002b75, (wrb) s0  <-- 0x80002b76
       0     3154        M 0x80000948 addi    s10, s10, 1            #; s10 = 0x80002b77, (wrb) s10 <-- 0x80002b78
       0     3155        M 0x8000094c mv      s9, s1                 #; s1  = 1, (wrb) s9  <-- 1
       0     3156        M 0x80000950 lbu     a0, 0(s0)              #; s0  = 0x80002b76, a0  <~~ Byte[0x80002b76]
       0     3167        M                                           #; (lsu) a0  <-- 114
       0     3168        M 0x80000954 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x8000092c
       0     3169        M 0x8000092c beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     3172        M 0x80000930 addi    s1, s9, 1              #; s9  = 1, (wrb) s1  <-- 2
       0     3173        M 0x80000934 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     3174        M 0x80000938 mv      a2, s9                 #; s9  = 1, (wrb) a2  <-- 1
       0     3175        M 0x8000093c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3176        M 0x80000940 jalr    s2                     #; s2  = 0x8000148c, (wrb) ra  <-- 0x80000944, goto 0x8000148c
       0     3179        M 0x8000148c beqz    a0, pc + 168           #; a0  = 114, not taken
       0     3182        M 0x80001490 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     3183        M 0x80001494 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     3184        M 0x80001498 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     3185        M 0x8000149c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000349c
       0     3186        M 0x800014a0 addi    a3, a3, -1456          #; a3  = 0x8000349c, (wrb) a3  <-- 0x80002eec
       0     3187        M                                           #; (acc) a1  <-- 0x00d605b3
       0     3188        M 0x800014a4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002eec, (wrb) a1  <-- 0x80002eec
       0     3189        M 0x800014a8 lw      a4, 0(a1)              #; a1  = 0x80002eec, a4  <~~ Word[0x80002eec]
       0     3200        M                                           #; (lsu) a4  <-- 1
       0     3201        M 0x800014ac addi    a5, a4, 1              #; a4  = 1, (wrb) a5  <-- 2
       0     3202        M 0x800014b0 sw      a5, 0(a1)              #; a1  = 0x80002eec, 2 ~~> Word[0x80002eec]
       0     3203        M 0x800014b4 add     a4, a1, a4             #; a1  = 0x80002eec, a4  = 1, (wrb) a4  <-- 0x80002eed
       0     3204        M 0x800014b8 sb      a0, 72(a4)             #; a4  = 0x80002eed, 114 ~~> Byte[0x80002f35]
       0     3205        M 0x800014bc lw      a4, 0(a1)              #; a1  = 0x80002eec, a4  <~~ Word[0x80002eec]
       0     3226        M                                           #; (lsu) a4  <-- 2
       0     3227        M 0x800014c0 addi    a4, a4, -1020          #; a4  = 2, (wrb) a4  <-- -1018
       0     3228        M 0x800014c4 snez    a4, a4                 #; a4  = -1018, (wrb) a4  <-- 1
       0     3229        M 0x800014c8 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     3230        M 0x800014cc snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     3231        M 0x800014d0 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     3232        M 0x800014d4 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001534
       0     3236        M 0x80001534 ret                            #; ra  = 0x80000944, goto 0x80000944
       0     3241        M 0x80000944 addi    s0, s0, 1              #; s0  = 0x80002b76, (wrb) s0  <-- 0x80002b77
       0     3242        M 0x80000948 addi    s10, s10, 1            #; s10 = 0x80002b78, (wrb) s10 <-- 0x80002b79
       0     3243        M 0x8000094c mv      s9, s1                 #; s1  = 2, (wrb) s9  <-- 2
       0     3244        M 0x80000950 lbu     a0, 0(s0)              #; s0  = 0x80002b77, a0  <~~ Byte[0x80002b77]
       0     3255        M                                           #; (lsu) a0  <-- 114
       0     3256        M 0x80000954 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x8000092c
       0     3257        M 0x8000092c beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     3260        M 0x80000930 addi    s1, s9, 1              #; s9  = 2, (wrb) s1  <-- 3
       0     3261        M 0x80000934 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     3262        M 0x80000938 mv      a2, s9                 #; s9  = 2, (wrb) a2  <-- 2
       0     3263        M 0x8000093c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3264        M 0x80000940 jalr    s2                     #; s2  = 0x8000148c, (wrb) ra  <-- 0x80000944, goto 0x8000148c
       0     3267        M 0x8000148c beqz    a0, pc + 168           #; a0  = 114, not taken
       0     3270        M 0x80001490 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     3271        M 0x80001494 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     3272        M 0x80001498 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     3273        M 0x8000149c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000349c
       0     3274        M 0x800014a0 addi    a3, a3, -1456          #; a3  = 0x8000349c, (wrb) a3  <-- 0x80002eec
       0     3275        M                                           #; (acc) a1  <-- 0x00d605b3
       0     3276        M 0x800014a4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002eec, (wrb) a1  <-- 0x80002eec
       0     3277        M 0x800014a8 lw      a4, 0(a1)              #; a1  = 0x80002eec, a4  <~~ Word[0x80002eec]
       0     3288        M                                           #; (lsu) a4  <-- 2
       0     3289        M 0x800014ac addi    a5, a4, 1              #; a4  = 2, (wrb) a5  <-- 3
       0     3290        M 0x800014b0 sw      a5, 0(a1)              #; a1  = 0x80002eec, 3 ~~> Word[0x80002eec]
       0     3291        M 0x800014b4 add     a4, a1, a4             #; a1  = 0x80002eec, a4  = 2, (wrb) a4  <-- 0x80002eee
       0     3292        M 0x800014b8 sb      a0, 72(a4)             #; a4  = 0x80002eee, 114 ~~> Byte[0x80002f36]
       0     3293        M 0x800014bc lw      a4, 0(a1)              #; a1  = 0x80002eec, a4  <~~ Word[0x80002eec]
       0     3314        M                                           #; (lsu) a4  <-- 3
       0     3315        M 0x800014c0 addi    a4, a4, -1020          #; a4  = 3, (wrb) a4  <-- -1017
       0     3316        M 0x800014c4 snez    a4, a4                 #; a4  = -1017, (wrb) a4  <-- 1
       0     3317        M 0x800014c8 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     3318        M 0x800014cc snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     3319        M 0x800014d0 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     3320        M 0x800014d4 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001534
       0     3324        M 0x80001534 ret                            #; ra  = 0x80000944, goto 0x80000944
       0     3329        M 0x80000944 addi    s0, s0, 1              #; s0  = 0x80002b77, (wrb) s0  <-- 0x80002b78
       0     3330        M 0x80000948 addi    s10, s10, 1            #; s10 = 0x80002b79, (wrb) s10 <-- 0x80002b7a
       0     3331        M 0x8000094c mv      s9, s1                 #; s1  = 3, (wrb) s9  <-- 3
       0     3332        M 0x80000950 lbu     a0, 0(s0)              #; s0  = 0x80002b78, a0  <~~ Byte[0x80002b78]
       0     3343        M                                           #; (lsu) a0  <-- 111
       0     3344        M 0x80000954 bnez    a0, pc - 40            #; a0  = 111, taken, goto 0x8000092c
       0     3345        M 0x8000092c beq     a0, s6, pc + 48        #; a0  = 111, s6  = 37, not taken
       0     3348        M 0x80000930 addi    s1, s9, 1              #; s9  = 3, (wrb) s1  <-- 4
       0     3349        M 0x80000934 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     3350        M 0x80000938 mv      a2, s9                 #; s9  = 3, (wrb) a2  <-- 3
       0     3351        M 0x8000093c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3352        M 0x80000940 jalr    s2                     #; s2  = 0x8000148c, (wrb) ra  <-- 0x80000944, goto 0x8000148c
       0     3355        M 0x8000148c beqz    a0, pc + 168           #; a0  = 111, not taken
       0     3358        M 0x80001490 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     3359        M 0x80001494 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     3360        M 0x80001498 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     3361        M 0x8000149c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000349c
       0     3362        M 0x800014a0 addi    a3, a3, -1456          #; a3  = 0x8000349c, (wrb) a3  <-- 0x80002eec
       0     3363        M                                           #; (acc) a1  <-- 0x00d605b3
       0     3364        M 0x800014a4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002eec, (wrb) a1  <-- 0x80002eec
       0     3365        M 0x800014a8 lw      a4, 0(a1)              #; a1  = 0x80002eec, a4  <~~ Word[0x80002eec]
       0     3376        M                                           #; (lsu) a4  <-- 3
       0     3377        M 0x800014ac addi    a5, a4, 1              #; a4  = 3, (wrb) a5  <-- 4
       0     3378        M 0x800014b0 sw      a5, 0(a1)              #; a1  = 0x80002eec, 4 ~~> Word[0x80002eec]
       0     3379        M 0x800014b4 add     a4, a1, a4             #; a1  = 0x80002eec, a4  = 3, (wrb) a4  <-- 0x80002eef
       0     3380        M 0x800014b8 sb      a0, 72(a4)             #; a4  = 0x80002eef, 111 ~~> Byte[0x80002f37]
       0     3381        M 0x800014bc lw      a4, 0(a1)              #; a1  = 0x80002eec, a4  <~~ Word[0x80002eec]
       0     3402        M                                           #; (lsu) a4  <-- 4
       0     3403        M 0x800014c0 addi    a4, a4, -1020          #; a4  = 4, (wrb) a4  <-- -1016
       0     3404        M 0x800014c4 snez    a4, a4                 #; a4  = -1016, (wrb) a4  <-- 1
       0     3405        M 0x800014c8 addi    a0, a0, -10            #; a0  = 111, (wrb) a0  <-- 101
       0     3406        M 0x800014cc snez    a0, a0                 #; a0  = 101, (wrb) a0  <-- 1
       0     3407        M 0x800014d0 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     3408        M 0x800014d4 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001534
       0     3412        M 0x80001534 ret                            #; ra  = 0x80000944, goto 0x80000944
       0     3417        M 0x80000944 addi    s0, s0, 1              #; s0  = 0x80002b78, (wrb) s0  <-- 0x80002b79
       0     3418        M 0x80000948 addi    s10, s10, 1            #; s10 = 0x80002b7a, (wrb) s10 <-- 0x80002b7b
       0     3419        M 0x8000094c mv      s9, s1                 #; s1  = 4, (wrb) s9  <-- 4
       0     3420        M 0x80000950 lbu     a0, 0(s0)              #; s0  = 0x80002b79, a0  <~~ Byte[0x80002b79]
       0     3431        M                                           #; (lsu) a0  <-- 114
       0     3432        M 0x80000954 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x8000092c
       0     3433        M 0x8000092c beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     3436        M 0x80000930 addi    s1, s9, 1              #; s9  = 4, (wrb) s1  <-- 5
       0     3437        M 0x80000934 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     3438        M 0x80000938 mv      a2, s9                 #; s9  = 4, (wrb) a2  <-- 4
       0     3439        M 0x8000093c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3440        M 0x80000940 jalr    s2                     #; s2  = 0x8000148c, (wrb) ra  <-- 0x80000944, goto 0x8000148c
       0     3443        M 0x8000148c beqz    a0, pc + 168           #; a0  = 114, not taken
       0     3446        M 0x80001490 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     3447        M 0x80001494 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     3448        M 0x80001498 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     3449        M 0x8000149c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000349c
       0     3450        M 0x800014a0 addi    a3, a3, -1456          #; a3  = 0x8000349c, (wrb) a3  <-- 0x80002eec
       0     3451        M                                           #; (acc) a1  <-- 0x00d605b3
       0     3452        M 0x800014a4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002eec, (wrb) a1  <-- 0x80002eec
       0     3453        M 0x800014a8 lw      a4, 0(a1)              #; a1  = 0x80002eec, a4  <~~ Word[0x80002eec]
       0     3464        M                                           #; (lsu) a4  <-- 4
       0     3465        M 0x800014ac addi    a5, a4, 1              #; a4  = 4, (wrb) a5  <-- 5
       0     3466        M 0x800014b0 sw      a5, 0(a1)              #; a1  = 0x80002eec, 5 ~~> Word[0x80002eec]
       0     3467        M 0x800014b4 add     a4, a1, a4             #; a1  = 0x80002eec, a4  = 4, (wrb) a4  <-- 0x80002ef0
       0     3468        M 0x800014b8 sb      a0, 72(a4)             #; a4  = 0x80002ef0, 114 ~~> Byte[0x80002f38]
       0     3469        M 0x800014bc lw      a4, 0(a1)              #; a1  = 0x80002eec, a4  <~~ Word[0x80002eec]
       0     3490        M                                           #; (lsu) a4  <-- 5
       0     3491        M 0x800014c0 addi    a4, a4, -1020          #; a4  = 5, (wrb) a4  <-- -1015
       0     3492        M 0x800014c4 snez    a4, a4                 #; a4  = -1015, (wrb) a4  <-- 1
       0     3493        M 0x800014c8 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     3494        M 0x800014cc snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     3495        M 0x800014d0 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     3496        M 0x800014d4 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001534
       0     3500        M 0x80001534 ret                            #; ra  = 0x80000944, goto 0x80000944
       0     3505        M 0x80000944 addi    s0, s0, 1              #; s0  = 0x80002b79, (wrb) s0  <-- 0x80002b7a
       0     3506        M 0x80000948 addi    s10, s10, 1            #; s10 = 0x80002b7b, (wrb) s10 <-- 0x80002b7c
       0     3507        M 0x8000094c mv      s9, s1                 #; s1  = 5, (wrb) s9  <-- 5
       0     3508        M 0x80000950 lbu     a0, 0(s0)              #; s0  = 0x80002b7a, a0  <~~ Byte[0x80002b7a]
       0     3519        M                                           #; (lsu) a0  <-- 32
       0     3520        M 0x80000954 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x8000092c
       0     3521        M 0x8000092c beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     3524        M 0x80000930 addi    s1, s9, 1              #; s9  = 5, (wrb) s1  <-- 6
       0     3525        M 0x80000934 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     3526        M 0x80000938 mv      a2, s9                 #; s9  = 5, (wrb) a2  <-- 5
       0     3527        M 0x8000093c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3528        M 0x80000940 jalr    s2                     #; s2  = 0x8000148c, (wrb) ra  <-- 0x80000944, goto 0x8000148c
       0     3531        M 0x8000148c beqz    a0, pc + 168           #; a0  = 32, not taken
       0     3534        M 0x80001490 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     3535        M 0x80001494 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     3536        M 0x80001498 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     3537        M 0x8000149c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000349c
       0     3538        M 0x800014a0 addi    a3, a3, -1456          #; a3  = 0x8000349c, (wrb) a3  <-- 0x80002eec
       0     3539        M                                           #; (acc) a1  <-- 0x00d605b3
       0     3540        M 0x800014a4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002eec, (wrb) a1  <-- 0x80002eec
       0     3541        M 0x800014a8 lw      a4, 0(a1)              #; a1  = 0x80002eec, a4  <~~ Word[0x80002eec]
       0     3552        M                                           #; (lsu) a4  <-- 5
       0     3553        M 0x800014ac addi    a5, a4, 1              #; a4  = 5, (wrb) a5  <-- 6
       0     3554        M 0x800014b0 sw      a5, 0(a1)              #; a1  = 0x80002eec, 6 ~~> Word[0x80002eec]
       0     3555        M 0x800014b4 add     a4, a1, a4             #; a1  = 0x80002eec, a4  = 5, (wrb) a4  <-- 0x80002ef1
       0     3556        M 0x800014b8 sb      a0, 72(a4)             #; a4  = 0x80002ef1, 32 ~~> Byte[0x80002f39]
       0     3557        M 0x800014bc lw      a4, 0(a1)              #; a1  = 0x80002eec, a4  <~~ Word[0x80002eec]
       0     3578        M                                           #; (lsu) a4  <-- 6
       0     3579        M 0x800014c0 addi    a4, a4, -1020          #; a4  = 6, (wrb) a4  <-- -1014
       0     3580        M 0x800014c4 snez    a4, a4                 #; a4  = -1014, (wrb) a4  <-- 1
       0     3581        M 0x800014c8 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
       0     3582        M 0x800014cc snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
       0     3583        M 0x800014d0 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     3584        M 0x800014d4 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001534
       0     3588        M 0x80001534 ret                            #; ra  = 0x80000944, goto 0x80000944
       0     3593        M 0x80000944 addi    s0, s0, 1              #; s0  = 0x80002b7a, (wrb) s0  <-- 0x80002b7b
       0     3594        M 0x80000948 addi    s10, s10, 1            #; s10 = 0x80002b7c, (wrb) s10 <-- 0x80002b7d
       0     3595        M 0x8000094c mv      s9, s1                 #; s1  = 6, (wrb) s9  <-- 6
       0     3596        M 0x80000950 lbu     a0, 0(s0)              #; s0  = 0x80002b7b, a0  <~~ Byte[0x80002b7b]
       0     3607        M                                           #; (lsu) a0  <-- 61
       0     3608        M 0x80000954 bnez    a0, pc - 40            #; a0  = 61, taken, goto 0x8000092c
       0     3609        M 0x8000092c beq     a0, s6, pc + 48        #; a0  = 61, s6  = 37, not taken
       0     3612        M 0x80000930 addi    s1, s9, 1              #; s9  = 6, (wrb) s1  <-- 7
       0     3613        M 0x80000934 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     3614        M 0x80000938 mv      a2, s9                 #; s9  = 6, (wrb) a2  <-- 6
       0     3615        M 0x8000093c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3616        M 0x80000940 jalr    s2                     #; s2  = 0x8000148c, (wrb) ra  <-- 0x80000944, goto 0x8000148c
       0     3619        M 0x8000148c beqz    a0, pc + 168           #; a0  = 61, not taken
       0     3622        M 0x80001490 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     3623        M 0x80001494 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     3624        M 0x80001498 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     3625        M 0x8000149c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000349c
       0     3626        M 0x800014a0 addi    a3, a3, -1456          #; a3  = 0x8000349c, (wrb) a3  <-- 0x80002eec
       0     3627        M                                           #; (acc) a1  <-- 0x00d605b3
       0     3628        M 0x800014a4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002eec, (wrb) a1  <-- 0x80002eec
       0     3629        M 0x800014a8 lw      a4, 0(a1)              #; a1  = 0x80002eec, a4  <~~ Word[0x80002eec]
       0     3640        M                                           #; (lsu) a4  <-- 6
       0     3641        M 0x800014ac addi    a5, a4, 1              #; a4  = 6, (wrb) a5  <-- 7
       0     3642        M 0x800014b0 sw      a5, 0(a1)              #; a1  = 0x80002eec, 7 ~~> Word[0x80002eec]
       0     3643        M 0x800014b4 add     a4, a1, a4             #; a1  = 0x80002eec, a4  = 6, (wrb) a4  <-- 0x80002ef2
       0     3644        M 0x800014b8 sb      a0, 72(a4)             #; a4  = 0x80002ef2, 61 ~~> Byte[0x80002f3a]
       0     3645        M 0x800014bc lw      a4, 0(a1)              #; a1  = 0x80002eec, a4  <~~ Word[0x80002eec]
       0     3666        M                                           #; (lsu) a4  <-- 7
       0     3667        M 0x800014c0 addi    a4, a4, -1020          #; a4  = 7, (wrb) a4  <-- -1013
       0     3668        M 0x800014c4 snez    a4, a4                 #; a4  = -1013, (wrb) a4  <-- 1
       0     3669        M 0x800014c8 addi    a0, a0, -10            #; a0  = 61, (wrb) a0  <-- 51
       0     3670        M 0x800014cc snez    a0, a0                 #; a0  = 51, (wrb) a0  <-- 1
       0     3671        M 0x800014d0 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     3672        M 0x800014d4 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001534
       0     3676        M 0x80001534 ret                            #; ra  = 0x80000944, goto 0x80000944
       0     3681        M 0x80000944 addi    s0, s0, 1              #; s0  = 0x80002b7b, (wrb) s0  <-- 0x80002b7c
       0     3682        M 0x80000948 addi    s10, s10, 1            #; s10 = 0x80002b7d, (wrb) s10 <-- 0x80002b7e
       0     3683        M 0x8000094c mv      s9, s1                 #; s1  = 7, (wrb) s9  <-- 7
       0     3684        M 0x80000950 lbu     a0, 0(s0)              #; s0  = 0x80002b7c, a0  <~~ Byte[0x80002b7c]
       0     3695        M                                           #; (lsu) a0  <-- 32
       0     3696        M 0x80000954 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x8000092c
       0     3697        M 0x8000092c beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     3700        M 0x80000930 addi    s1, s9, 1              #; s9  = 7, (wrb) s1  <-- 8
       0     3701        M 0x80000934 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     3702        M 0x80000938 mv      a2, s9                 #; s9  = 7, (wrb) a2  <-- 7
       0     3703        M 0x8000093c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3704        M 0x80000940 jalr    s2                     #; s2  = 0x8000148c, (wrb) ra  <-- 0x80000944, goto 0x8000148c
       0     3707        M 0x8000148c beqz    a0, pc + 168           #; a0  = 32, not taken
       0     3710        M 0x80001490 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     3711        M 0x80001494 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     3712        M 0x80001498 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     3713        M 0x8000149c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000349c
       0     3714        M 0x800014a0 addi    a3, a3, -1456          #; a3  = 0x8000349c, (wrb) a3  <-- 0x80002eec
       0     3715        M                                           #; (acc) a1  <-- 0x00d605b3
       0     3716        M 0x800014a4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002eec, (wrb) a1  <-- 0x80002eec
       0     3717        M 0x800014a8 lw      a4, 0(a1)              #; a1  = 0x80002eec, a4  <~~ Word[0x80002eec]
       0     3728        M                                           #; (lsu) a4  <-- 7
       0     3729        M 0x800014ac addi    a5, a4, 1              #; a4  = 7, (wrb) a5  <-- 8
       0     3730        M 0x800014b0 sw      a5, 0(a1)              #; a1  = 0x80002eec, 8 ~~> Word[0x80002eec]
       0     3731        M 0x800014b4 add     a4, a1, a4             #; a1  = 0x80002eec, a4  = 7, (wrb) a4  <-- 0x80002ef3
       0     3732        M 0x800014b8 sb      a0, 72(a4)             #; a4  = 0x80002ef3, 32 ~~> Byte[0x80002f3b]
       0     3733        M 0x800014bc lw      a4, 0(a1)              #; a1  = 0x80002eec, a4  <~~ Word[0x80002eec]
       0     3754        M                                           #; (lsu) a4  <-- 8
       0     3755        M 0x800014c0 addi    a4, a4, -1020          #; a4  = 8, (wrb) a4  <-- -1012
       0     3756        M 0x800014c4 snez    a4, a4                 #; a4  = -1012, (wrb) a4  <-- 1
       0     3757        M 0x800014c8 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
       0     3758        M 0x800014cc snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
       0     3759        M 0x800014d0 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     3760        M 0x800014d4 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001534
       0     3764        M 0x80001534 ret                            #; ra  = 0x80000944, goto 0x80000944
       0     3769        M 0x80000944 addi    s0, s0, 1              #; s0  = 0x80002b7c, (wrb) s0  <-- 0x80002b7d
       0     3770        M 0x80000948 addi    s10, s10, 1            #; s10 = 0x80002b7e, (wrb) s10 <-- 0x80002b7f
       0     3771        M 0x8000094c mv      s9, s1                 #; s1  = 8, (wrb) s9  <-- 8
       0     3772        M 0x80000950 lbu     a0, 0(s0)              #; s0  = 0x80002b7d, a0  <~~ Byte[0x80002b7d]
       0     3783        M                                           #; (lsu) a0  <-- 37
       0     3784        M 0x80000954 bnez    a0, pc - 40            #; a0  = 37, taken, goto 0x8000092c
       0     3785        M 0x8000092c beq     a0, s6, pc + 48        #; a0  = 37, s6  = 37, taken, goto 0x8000095c
       0     3786        M 0x8000095c li      s0, 0                  #; (wrb) s0  <-- 0
       0     3799        M 0x80000960 j       pc + 0x10              #; goto 0x80000970
       0     3811        M 0x80000970 lbu     a0, -1(s10)            #; s10 = 0x80002b7f, a0  <~~ Byte[0x80002b7e]
       0     3822        M                                           #; (lsu) a0  <-- 102
       0     3823        M 0x80000974 addi    a1, a0, -32            #; a0  = 102, (wrb) a1  <-- 70
       0     3824        M 0x80000978 bltu    s11, a1, pc + 56       #; s11 = 16, a1  = 70, taken, goto 0x800009b0
       0     3836        M 0x800009b0 addi    a1, a0, -48            #; a0  = 102, (wrb) a1  <-- 54
       0     3837        M 0x800009b4 andi    a2, a1, 255            #; a1  = 54, (wrb) a2  <-- 54
       0     3838        M 0x800009b8 addi    a1, s10, -1            #; s10 = 0x80002b7f, (wrb) a1  <-- 0x80002b7e
       0     3839        M 0x800009bc li      a3, 9                  #; (wrb) a3  <-- 9
       0     3848        M 0x800009c0 bltu    a3, a2, pc + 124       #; a3  = 9, a2  = 54, taken, goto 0x80000a3c
       0     3871        M 0x80000a3c li      a2, 42                 #; (wrb) a2  <-- 42
       0     3883        M 0x80000a40 bne     a0, a2, pc + 80        #; a0  = 102, a2  = 42, taken, goto 0x80000a90
       0     3906        M 0x80000a90 li      s6, 0                  #; (wrb) s6  <-- 0
       0     3907        M 0x80000a94 mv      s10, a1                #; a1  = 0x80002b7e, (wrb) s10 <-- 0x80002b7e
       0     3908        M 0x80000a98 beq     a0, s7, pc - 164       #; a0  = 102, s7  = 46, not taken
       0     3909        M 0x80000a9c li      s7, 0                  #; (wrb) s7  <-- 0
       0     3929        M 0x80000aa0 j       pc + 0xc               #; goto 0x80000aac
       0     3930        M 0x80000aac addi    a1, a0, -104           #; a0  = 102, (wrb) a1  <-- -2
       0     3942        M 0x80000ab0 srli    a2, a1, 1              #; a1  = -2, (wrb) a2  <-- 0x7fffffff
       0     3943        M 0x80000ab4 slli    a1, a1, 31             #; a1  = -2, (wrb) a1  <-- 0
       0     3944        M 0x80000ab8 or      a1, a1, a2             #; a1  = 0, a2  = 0x7fffffff, (wrb) a1  <-- 0x7fffffff
       0     3945        M 0x80000abc li      a2, 9                  #; (wrb) a2  <-- 9
       0     3954        M 0x80000ac0 bltu    a2, a1, pc + 100       #; a2  = 9, a1  = 0x7fffffff, taken, goto 0x80000b24
       0     3977        M 0x80000b24 addi    a1, a0, -37            #; a0  = 102, (wrb) a1  <-- 65
       0     3978        M 0x80000b28 li      a2, 83                 #; (wrb) a2  <-- 83
       0     3979        M 0x80000b2c bltu    a2, a1, pc + 264       #; a2  = 83, a1  = 65, not taken
       0     3989        M 0x80000b30 slli    a1, a1, 2              #; a1  = 65, (wrb) a1  <-- 260
       0     3990        M 0x80000b34 auipc   a2, 0x2                #; (wrb) a2  <-- 0x80002b34
       0     3991        M 0x80000b38 addi    a2, a2, 192            #; a2  = 0x80002b34, (wrb) a2  <-- 0x80002bf4
       0     3992        M 0x80000b3c add     a1, a1, a2             #; a1  = 260, a2  = 0x80002bf4, (wrb) a1  <-- 0x80002cf8
       0     4001        M 0x80000b40 lw      a2, 0(a1)              #; a1  = 0x80002cf8, a2  <~~ Word[0x80002cf8]
       0     4002        M 0x80000b44 li      a1, 8                  #; (wrb) a1  <-- 8
       0     4003        M 0x80000b48 li      s8, 16                 #; (wrb) s8  <-- 16
       0     4012        M                                           #; (lsu) a2  <-- 0x80000b7c
       0     4013        M 0x80000b4c jr      a2                     #; a2  = 0x80000b7c, goto 0x80000b7c
       0     4025        M 0x80000b7c li      a1, 70                 #; (wrb) a1  <-- 70
       0     4037        M 0x80000b80 bne     a0, a1, pc + 8         #; a0  = 102, a1  = 70, taken, goto 0x80000b88
       0     4038        M 0x80000b88 addi    a0, s3, 7              #; s3  = 0x0011ff24, (wrb) a0  <-- 0x0011ff2b
       0     4039        M 0x80000b8c andi    a0, a0, -8             #; a0  = 0x0011ff2b, (wrb) a0  <-- 0x0011ff28
       0     4050        M 0x80000b94 addi    s3, a0, 8              #; a0  = 0x0011ff28, (wrb) s3  <-- 0x0011ff30
       0     4051        M 0x80000b98 mv      a0, s2                 #; s2  = 0x8000148c, (wrb) a0  <-- 0x8000148c
                         M 0x80000b90 fld     fa0, 0(a0)             #; fa0  <~~ Doub[0x0011ff28]
       0     4052        M 0x80000b9c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
                         M                                           #; (f:lsu) fa0  <-- 0.0000000
       0     4061        M 0x80000ba0 mv      a2, s9                 #; s9  = 8, (wrb) a2  <-- 8
       0     4062        M 0x80000ba4 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     4063        M 0x80000ba8 mv      a4, s7                 #; s7  = 0, (wrb) a4  <-- 0
       0     4064        M 0x80000bac mv      a5, s6                 #; s6  = 0, (wrb) a5  <-- 0
       0     4073        M 0x80000bb0 mv      a6, s0                 #; s0  = 0, (wrb) a6  <-- 0
       0     4074        M 0x80000bb4 auipc   ra, 0x1                #; (wrb) ra  <-- 0x80001bb4
       0     4075        M 0x80000bb8 jalr    ra, ra, -1656          #; ra  = 0x80001bb4, (wrb) ra  <-- 0x80000bbc, goto 0x8000153c
       0     4087        M 0x8000153c addi    sp, sp, -112           #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011fe30
       0     4090        M 0x80001540 sw      ra, 108(sp)            #; sp  = 0x0011fe30, 0x80000bbc ~~> Word[0x0011fe9c]
       0     4091        M 0x80001544 sw      s0, 104(sp)            #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe98]
       0     4092        M 0x80001548 sw      s1, 100(sp)            #; sp  = 0x0011fe30, 8 ~~> Word[0x0011fe94]
       0     4093        M 0x8000154c sw      s2, 96(sp)             #; sp  = 0x0011fe30, 0x8000148c ~~> Word[0x0011fe90]
       0     4102        M 0x80001550 sw      s3, 92(sp)             #; sp  = 0x0011fe30, 0x0011ff30 ~~> Word[0x0011fe8c]
       0     4103        M 0x80001554 sw      s4, 88(sp)             #; sp  = 0x0011fe30, 0x0011ff17 ~~> Word[0x0011fe88]
       0     4104        M 0x80001558 sw      s5, 84(sp)             #; sp  = 0x0011fe30, -1 ~~> Word[0x0011fe84]
       0     4105        M 0x8000155c sw      s6, 80(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe80]
       0     4114        M 0x80001560 sw      s7, 76(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe7c]
       0     4115        M 0x80001564 sw      s8, 72(sp)             #; sp  = 0x0011fe30, 16 ~~> Word[0x0011fe78]
       0     4116        M 0x80001568 sw      s9, 68(sp)             #; sp  = 0x0011fe30, 8 ~~> Word[0x0011fe74]
       0     4117        M 0x8000156c sw      s10, 64(sp)            #; sp  = 0x0011fe30, 0x80002b7e ~~> Word[0x0011fe70]
       0     4128        M 0x80001570 fsd     fs0, 56(sp)            #; 0.0000000 ~~> Doub[0x0011fe68]
       0     4129        M 0x8000157c auipc   s1, 0x2                #; (wrb) s1  <-- 0x8000357c
                         M 0x80001574 fsd     fs1, 48(sp)            #; 0.0 ~~> Doub[0x0011fe60]
       0     4130        M 0x80001578 fsd     fs2, 40(sp)            #; 0.0 ~~> Doub[0x0011fe58]
       0     4138        M 0x80001580 addi    s1, s1, -1852          #; s1  = 0x8000357c, (wrb) s1  <-- 0x80002e40
       0     4141        M 0x8000158c mv      s5, a6                 #; a6  = 0, (wrb) s5  <-- 0
                         M 0x80001584 fld     ft0, 0(s1)             #; ft0  <~~ Doub[0x80002e40]
       0     4150        M 0x80001590 mv      s2, a5                 #; a5  = 0, (wrb) s2  <-- 0
                         M                                           #; (f:lsu) ft0  <-- -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     4151        M 0x80001594 mv      s3, a3                 #; a3  = -1, (wrb) s3  <-- -1
                         M 0x80001588 fle.d   s1, ft0, fa0           #; ft0  = -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000, fa0  = 0.0000000
       0     4152        M 0x80001598 mv      s4, a2                 #; a2  = 8, (wrb) s4  <-- 8
       0     4153        M 0x8000159c mv      s6, a1                 #; a1  = 0x0011ff17, (wrb) s6  <-- 0x0011ff17
       0     4162        M 0x800015a0 mv      s7, a0                 #; a0  = 0x8000148c, (wrb) s7  <-- 0x8000148c
       0     4163        M 0x800015a4 bnez    s1, pc + 240           #; s1  = 1, taken, goto 0x80001694
       0     4186        M 0x80001698 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002698
       0     4187        M 0x8000169c addi    a0, a0, 1968           #; a0  = 0x80002698, (wrb) a0  <-- 0x80002e48
                         M 0x80001694 fsgnj.d fs0, fa0, fa0          #; fa0  = 0.0000000, fa0  = 0.0000000
       0     4188        M                                           #; (f:fpu) fs0  <-- 0.0000000
       0     4199        M 0x800016a0 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002e48]
       0     4208        M                                           #; (f:lsu) ft0  <-- 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     4209        M 0x800016a4 fle.d   a0, fa0, ft0           #; fa0  = 0.0000000, ft0  = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     4211        M                                           #; (acc) t3  <-- 0x00051e63
       0     4212        M 0x800016a8 bnez    a0, pc + 28            #; a0  = 1, taken, goto 0x800016c4
       0     4224        M 0x800016c4 auipc   a0, 0x1                #; (wrb) a0  <-- 0x800026c4
       0     4225        M 0x800016c8 addi    a0, a0, 1932           #; a0  = 0x800026c4, (wrb) a0  <-- 0x80002e50
       0     4228        M 0x800016cc fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002e50]
       0     4236        M 0x800016d0 auipc   a0, 0x1                #; (wrb) a0  <-- 0x800026d0
       0     4237        M 0x800016d4 addi    a0, a0, 1928           #; a0  = 0x800026d0, (wrb) a0  <-- 0x80002e58
                         M                                           #; (f:lsu) ft0  <-- 1000000000.0000000
       0     4240        M 0x800016d8 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80002e58]
       0     4241        M 0x800016dc fle.d   a0, fs0, ft0           #; fs0  = 0.0000000, ft0  = 1000000000.0000000
       0     4249        M                                           #; (f:lsu) ft1  <-- -1000000000.0000000
       0     4250        M 0x800016e0 fle.d   a1, ft1, fs0           #; ft1  = -1000000000.0000000, fs0  = 0.0000000
       0     4252        M                                           #; (acc) a0  <-- 0x00b57533
       0     4253        M 0x800016e4 and     a0, a0, a1             #; a0  = 1, a1  = 1, (wrb) a0  <-- 1
       0     4254        M 0x800016e8 bnez    a0, pc + 252           #; a0  = 1, taken, goto 0x800017e4
       0     4271        M 0x800017e4 andi    a0, s5, 1024           #; s5  = 0, (wrb) a0  <-- 0
       0     4272        M 0x800017e8 li      s8, 6                  #; (wrb) s8  <-- 6
       0     4273        M 0x800017ec beqz    a0, pc + 8             #; a0  = 0, taken, goto 0x800017f4
       0     4283        M 0x800017f4 li      a0, 10                 #; (wrb) a0  <-- 10
       0     4285        M 0x800017fc bltu    s8, a0, pc + 56        #; s8  = 6, a0  = 10, taken, goto 0x80001834
       0     4286        M 0x800017f8 fsgnjx.d fs2, fs0, fs0         #; fs0  = 0.0000000, fs0  = 0.0000000
       0     4287        M                                           #; (f:fpu) fs2  <-- 0.0000000
       0     4306        M 0x80001834 li      s0, 0                  #; (wrb) s0  <-- 0
       0     4307        M 0x80001838 slli    a0, s8, 3              #; s8  = 6, (wrb) a0  <-- 48
       0     4308        M 0x8000183c auipc   a1, 0x1                #; (wrb) a1  <-- 0x8000283c
       0     4318        M 0x80001840 addi    a1, a1, 1292           #; a1  = 0x8000283c, (wrb) a1  <-- 0x80002d48
       0     4319        M 0x80001844 add     a0, a0, a1             #; a0  = 48, a1  = 0x80002d48, (wrb) a0  <-- 0x80002d78
       0     4322        M 0x80001848 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80002d78]
       0     4323        M 0x8000184c fcvt.w.d s1, fs2               #; fs2  = 0.0000000
       0     4331        M 0x80001850 fcvt.d.w ft0, s1               #; ac1  = 0, (f:lsu) ft1  <-- 1000000.0000000
       0     4332        M                                           #; (f:fpu) ft0  <-- 0.0
       0     4333        M 0x8000185c auipc   a0, 0x1                #; (wrb) a0  <-- 0x8000285c
                         M 0x80001854 fsub.d  ft0, fs2, ft0          #; fs2  = 0.0000000, ft0  = 0.0
       0     4336        M                                           #; (f:fpu) ft0  <-- 0.0000000
       0     4337        M 0x80001858 fmul.d  ft2, ft1, ft0          #; ft1  = 1000000.0000000, ft0  = 0.0000000
       0     4340        M                                           #; (f:fpu) ft2  <-- 0.0000037
       0     4342        M 0x80001860 addi    a0, a0, 1540           #; a0  = 0x8000285c, (wrb) a0  <-- 0x80002e60
       0     4345        M 0x80001864 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002e60]
       0     4346        M 0x80001868 fcvt.wu.d a0, ft2              #; ft2  = 0.0000037
       0     4348        M                                           #; (acc) gp  <-- 0xd21501d3
       0     4350        M 0x8000186c fcvt.d.wu ft3, a0              #; ac1  = 0
       0     4351        M                                           #; (f:fpu) ft3  <-- 0.0
       0     4354        M                                           #; (f:lsu) ft0  <-- 0.5
       0     4356        M 0x80001870 fsub.d  ft2, ft2, ft3          #; ft2  = 0.0000037, ft3  = 0.0
       0     4359        M                                           #; (f:fpu) ft2  <-- 0.0000037
       0     4360        M 0x80001874 fle.d   a1, ft2, ft0           #; ft2  = 0.0000037, ft0  = 0.5
       0     4363        M 0x80001878 bnez    a1, pc + 32            #; a1  = 1, taken, goto 0x80001898
       0     4378        M 0x80001898 flt.d   a1, ft2, ft0           #; ft2  = 0.0000037, ft0  = 0.5
       0     4380        M                                           #; (acc) s4  <-- 0x00059a63
       0     4381        M 0x8000189c bnez    a1, pc + 20            #; a1  = 1, taken, goto 0x800018b0
       0     4401        M 0x800018b4 beqz    s8, pc + 216           #; s8  = 6, not taken
                         M 0x800018b0 fcvt.d.w fs1, zero             #; ac1  = 0
       0     4402        M 0x800018b8 li      a2, 0                  #; (wrb) a2  <-- 0
                         M                                           #; (f:fpu) fs1  <-- 0.0
       0     4403        M 0x800018bc addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
       0     4412        M 0x800018c0 add     t1, a1, s0             #; a1  = 0x0011fe38, s0  = 0, (wrb) t1  <-- 0x0011fe38
       0     4413        M 0x800018c4 li      t0, 32                 #; (wrb) t0  <-- 32
       0     4414        M 0x800018c8 sub     a4, t0, s0             #; t0  = 32, s0  = 0, (wrb) a4  <-- 32
       0     4415        M 0x800018cc lui     a1, 0xccccd            #; (wrb) a1  <-- 0xccccd000
       0     4424        M 0x800018d0 addi    t2, a1, -819           #; a1  = 0xccccd000, (wrb) t2  <-- 0xcccccccd
       0     4425        M 0x800018d4 li      a6, 10                 #; (wrb) a6  <-- 10
       0     4426        M 0x800018d8 li      a7, 9                  #; (wrb) a7  <-- 9
       0     4427        M 0x800018dc beq     a4, a2, pc + 200       #; a4  = 32, a2  = 0, not taken
       0     4436        M 0x800018e0 mv      a1, a0                 #; a0  = 0, (wrb) a1  <-- 0
       0     4437        M 0x800018e4 mulhu   a0, a0, t2             #; a0  = 0, t2  = 0xcccccccd
       0     4440        M                                           #; (acc) a0  <-- 0x00355513
       0     4441        M 0x800018e8 srli    a0, a0, 3              #; a0  = 0, (wrb) a0  <-- 0
       0     4442        M 0x800018ec mul     a3, a0, a6             #; a0  = 0, a6  = 10
       0     4448        M 0x800018f0 sub     a3, a1, a3             #; a1  = 0, a3  = 0, (wrb) a3  <-- 0
       0     4449        M 0x800018f4 ori     a3, a3, 48             #; a3  = 0, (wrb) a3  <-- 48
       0     4450        M 0x800018f8 add     a5, t1, a2             #; t1  = 0x0011fe38, a2  = 0, (wrb) a5  <-- 0x0011fe38
       0     4451        M 0x800018fc sb      a3, 0(a5)              #; a5  = 0x0011fe38, 48 ~~> Byte[0x0011fe38]
       0     4460        M 0x80001900 addi    a2, a2, 1              #; a2  = 0, (wrb) a2  <-- 1
       0     4461        M 0x80001904 bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 0, not taken
       0     4462        M 0x80001908 add     a0, s0, a2             #; s0  = 0, a2  = 1, (wrb) a0  <-- 1
       0     4463        M 0x8000190c addi    a1, a0, -1             #; a0  = 1, (wrb) a1  <-- 0
       0     4474        M 0x80001910 li      a3, 30                 #; (wrb) a3  <-- 30
       0     4475        M 0x80001914 sltu    a3, a3, a1             #; a3  = 30, a1  = 0, (wrb) a3  <-- 0
       0     4476        M 0x80001918 xor     a4, s8, a2             #; s8  = 6, a2  = 1, (wrb) a4  <-- 7
       0     4477        M 0x8000191c seqz    a4, a4                 #; a4  = 7, (wrb) a4  <-- 0
       0     4486        M 0x80001920 or      a3, a3, a4             #; a3  = 0, a4  = 0, (wrb) a3  <-- 0
       0     4487        M 0x80001924 bnez    a3, pc + 136           #; a3  = 0, not taken
       0     4488        M 0x80001928 addi    a0, sp, 8              #; sp  = 0x0011fe30, (wrb) a0  <-- 0x0011fe38
       0     4489        M 0x8000192c add     a0, a0, s0             #; a0  = 0x0011fe38, s0  = 0, (wrb) a0  <-- 0x0011fe38
       0     4498        M 0x80001930 not     a1, a2                 #; a2  = 1, (wrb) a1  <-- -2
       0     4499        M 0x80001934 add     s8, a1, s8             #; a1  = -2, s8  = 6, (wrb) s8  <-- 4
       0     4500        M 0x80001938 add     s0, s0, a2             #; s0  = 0, a2  = 1, (wrb) s0  <-- 1
       0     4501        M 0x8000193c li      a1, 31                 #; (wrb) a1  <-- 31
       0     4510        M 0x80001940 sub     a3, a1, s0             #; a1  = 31, s0  = 1, (wrb) a3  <-- 30
       0     4511        M 0x80001944 add     a0, a0, a2             #; a0  = 0x0011fe38, a2  = 1, (wrb) a0  <-- 0x0011fe39
       0     4512        M 0x80001948 mv      a1, s8                 #; s8  = 4, (wrb) a1  <-- 4
       0     4513        M 0x8000194c bltu    s8, a3, pc + 8         #; s8  = 4, a3  = 30, taken, goto 0x80001954
       0     4522        M 0x80001954 addi    a2, a1, 1              #; a1  = 4, (wrb) a2  <-- 5
       0     4523        M 0x80001958 li      a1, 48                 #; (wrb) a1  <-- 48
       0     4524        M 0x8000195c auipc   ra, 0xfffff            #; (wrb) ra  <-- 0x8000095c
       0     4534        M 0x80001960 jalr    ra, ra, -1028          #; ra  = 0x8000095c, (wrb) ra  <-- 0x80001964, goto 0x80000558
       0     4557        M 0x80000558 li      t1, 15                 #; (wrb) t1  <-- 15
       0     4558        M 0x8000055c mv      a4, a0                 #; a0  = 0x0011fe39, (wrb) a4  <-- 0x0011fe39
       0     4569        M 0x80000560 bgeu    t1, a2, pc + 60        #; t1  = 15, a2  = 5, taken, goto 0x8000059c
       0     4592        M 0x8000059c sub     a3, t1, a2             #; t1  = 15, a2  = 5, (wrb) a3  <-- 10
       0     4604        M 0x800005a0 slli    a3, a3, 2              #; a3  = 10, (wrb) a3  <-- 40
       0     4605        M 0x800005a4 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800005a4
       0     4606        M 0x800005a8 add     a3, a3, t0             #; a3  = 40, t0  = 0x800005a4, (wrb) a3  <-- 0x800005cc
       0     4607        M 0x800005ac jalr    zero, a3, 12           #; a3  = 0x800005cc, goto 0x800005d8
       0     4627        M 0x800005d8 sb      a1, 4(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3d]
       0     4628        M 0x800005dc sb      a1, 3(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3c]
       0     4639        M 0x800005e0 sb      a1, 2(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3b]
       0     4640        M 0x800005e4 sb      a1, 1(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3a]
       0     4641        M 0x800005e8 sb      a1, 0(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe39]
       0     4642        M 0x800005ec ret                            #; ra  = 0x80001964, goto 0x80001964
       0     4653        M 0x80001964 li      a0, 0                  #; (wrb) a0  <-- 0
       0     4654        M 0x80001968 add     a1, s0, a0             #; s0  = 1, a0  = 0, (wrb) a1  <-- 1
       0     4655        M 0x8000196c sltiu   a1, a1, 31             #; a1  = 1, (wrb) a1  <-- 1
       0     4656        M 0x80001970 xor     a2, s8, a0             #; s8  = 4, a0  = 0, (wrb) a2  <-- 4
       0     4657        M 0x80001974 snez    a2, a2                 #; a2  = 4, (wrb) a2  <-- 1
       0     4658        M 0x80001978 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     4659        M 0x8000197c addi    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0     4668        M 0x80001980 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001968
       0     4669        M 0x80001968 add     a1, s0, a0             #; s0  = 1, a0  = 1, (wrb) a1  <-- 2
       0     4670        M 0x8000196c sltiu   a1, a1, 31             #; a1  = 2, (wrb) a1  <-- 1
       0     4671        M 0x80001970 xor     a2, s8, a0             #; s8  = 4, a0  = 1, (wrb) a2  <-- 5
       0     4672        M 0x80001974 snez    a2, a2                 #; a2  = 5, (wrb) a2  <-- 1
       0     4673        M 0x80001978 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     4674        M 0x8000197c addi    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 2
       0     4675        M 0x80001980 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001968
       0     4676        M 0x80001968 add     a1, s0, a0             #; s0  = 1, a0  = 2, (wrb) a1  <-- 3
       0     4677        M 0x8000196c sltiu   a1, a1, 31             #; a1  = 3, (wrb) a1  <-- 1
       0     4678        M 0x80001970 xor     a2, s8, a0             #; s8  = 4, a0  = 2, (wrb) a2  <-- 6
       0     4679        M 0x80001974 snez    a2, a2                 #; a2  = 6, (wrb) a2  <-- 1
       0     4680        M 0x80001978 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     4681        M 0x8000197c addi    a0, a0, 1              #; a0  = 2, (wrb) a0  <-- 3
       0     4682        M 0x80001980 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001968
       0     4683        M 0x80001968 add     a1, s0, a0             #; s0  = 1, a0  = 3, (wrb) a1  <-- 4
       0     4684        M 0x8000196c sltiu   a1, a1, 31             #; a1  = 4, (wrb) a1  <-- 1
       0     4685        M 0x80001970 xor     a2, s8, a0             #; s8  = 4, a0  = 3, (wrb) a2  <-- 7
       0     4686        M 0x80001974 snez    a2, a2                 #; a2  = 7, (wrb) a2  <-- 1
       0     4687        M 0x80001978 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     4688        M 0x8000197c addi    a0, a0, 1              #; a0  = 3, (wrb) a0  <-- 4
       0     4689        M 0x80001980 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001968
       0     4690        M 0x80001968 add     a1, s0, a0             #; s0  = 1, a0  = 4, (wrb) a1  <-- 5
       0     4691        M 0x8000196c sltiu   a1, a1, 31             #; a1  = 5, (wrb) a1  <-- 1
       0     4692        M 0x80001970 xor     a2, s8, a0             #; s8  = 4, a0  = 4, (wrb) a2  <-- 0
       0     4693        M 0x80001974 snez    a2, a2                 #; a2  = 0, (wrb) a2  <-- 0
       0     4694        M 0x80001978 and     a2, a1, a2             #; a1  = 1, a2  = 0, (wrb) a2  <-- 0
       0     4695        M 0x8000197c addi    a0, a0, 1              #; a0  = 4, (wrb) a0  <-- 5
       0     4696        M 0x80001980 bnez    a2, pc - 24            #; a2  = 0, not taken
       0     4697        M 0x80001984 add     a0, s0, a0             #; s0  = 1, a0  = 5, (wrb) a0  <-- 6
       0     4698        M 0x80001988 j       pc + 0x28              #; goto 0x800019b0
       0     4709        M 0x800019b0 beqz    a1, pc + 28            #; a1  = 1, not taken
       0     4710        M 0x800019b4 addi    s0, a0, 1              #; a0  = 6, (wrb) s0  <-- 7
       0     4711        M 0x800019b8 addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
       0     4712        M 0x800019bc add     a0, a1, a0             #; a1  = 0x0011fe38, a0  = 6, (wrb) a0  <-- 0x0011fe3e
       0     4721        M 0x800019c0 li      a1, 46                 #; (wrb) a1  <-- 46
       0     4722        M 0x800019c4 sb      a1, 0(a0)              #; a0  = 0x0011fe3e, 46 ~~> Byte[0x0011fe3e]
       0     4723        M 0x800019c8 j       pc + 0x8               #; goto 0x800019d0
       0     4733        M 0x800019d0 li      a0, 32                 #; (wrb) a0  <-- 32
       0     4734        M 0x800019d4 mv      t0, s0                 #; s0  = 7, (wrb) t0  <-- 7
       0     4735        M 0x800019d8 bltu    a0, s0, pc + 8         #; a0  = 32, s0  = 7, not taken
       0     4736        M 0x800019dc li      t0, 32                 #; (wrb) t0  <-- 32
       0     4746        M 0x800019e4 lui     a0, 0x66666            #; (wrb) a0  <-- 0x66666000
                         M 0x800019e0 flt.d   s9, fs0, fs1           #; fs0  = 0.0000000, fs1  = 0.0
       0     4747        M 0x800019e8 addi    a1, a0, 1639           #; a0  = 0x66666000, (wrb) a1  <-- 0x66666667
       0     4748        M 0x800019ec li      a6, 10                 #; (wrb) a6  <-- 10
       0     4757        M 0x800019f0 addi    a3, sp, 8              #; sp  = 0x0011fe30, (wrb) a3  <-- 0x0011fe38
       0     4758        M 0x800019f4 li      a4, 18                 #; (wrb) a4  <-- 18
       0     4759        M 0x800019f8 beq     t0, s0, pc + 64        #; t0  = 32, s0  = 7, not taken
       0     4760        M 0x800019fc mulh    a0, s1, a1             #; s1  = 0, a1  = 0x66666667
       0     4769        M 0x80001a00 srli    a5, a0, 31             #; a0  = 0, (wrb) a5  <-- 0
       0     4770        M 0x80001a04 srai    a0, a0, 2              #; a0  = 0, (wrb) a0  <-- 0
       0     4771        M 0x80001a08 add     a0, a0, a5             #; a0  = 0, a5  = 0, (wrb) a0  <-- 0
       0     4772        M 0x80001a0c mul     a5, a0, a6             #; a0  = 0, a6  = 10
       0     4781        M 0x80001a10 sub     a5, s1, a5             #; s1  = 0, a5  = 0, (wrb) a5  <-- 0
       0     4782        M 0x80001a14 addi    a5, a5, 48             #; a5  = 0, (wrb) a5  <-- 48
       0     4783        M 0x80001a18 addi    s8, s0, 1              #; s0  = 7, (wrb) s8  <-- 8
       0     4784        M 0x80001a1c add     s0, a3, s0             #; a3  = 0x0011fe38, s0  = 7, (wrb) s0  <-- 0x0011fe3f
       0     4793        M 0x80001a20 addi    a2, s1, 9              #; s1  = 0, (wrb) a2  <-- 9
       0     4794        M 0x80001a24 sb      a5, 0(s0)              #; s0  = 0x0011fe3f, 48 ~~> Byte[0x0011fe3f]
       0     4795        M 0x80001a28 mv      s0, s8                 #; s8  = 8, (wrb) s0  <-- 8
       0     4796        M 0x80001a2c mv      s1, a0                 #; a0  = 0, (wrb) s1  <-- 0
       0     4805        M 0x80001a30 bltu    a4, a2, pc - 56        #; a4  = 18, a2  = 9, not taken
       0     4806        M 0x80001a34 j       pc + 0x8               #; goto 0x80001a3c
       0     4807        M 0x80001a3c andi    s1, s5, 3              #; s5  = 0, (wrb) s1  <-- 0
       0     4819        M 0x80001a40 li      a0, 1                  #; (wrb) a0  <-- 1
       0     4820        M 0x80001a44 bne     s1, a0, pc + 108       #; s1  = 0, a0  = 1, taken, goto 0x80001ab0
       0     4842        M 0x80001ab0 li      a0, 31                 #; (wrb) a0  <-- 31
       0     4843        M 0x80001ab4 bltu    a0, s8, pc + 84        #; a0  = 31, s8  = 8, not taken
       0     4844        M 0x80001ab8 beqz    s9, pc + 24            #; s9  = 0, taken, goto 0x80001ad0
       0     4865        M 0x80001ad0 andi    a0, s5, 4              #; s5  = 0, (wrb) a0  <-- 0
       0     4866        M 0x80001ad4 bnez    a0, pc + 32            #; a0  = 0, not taken
       0     4867        M 0x80001ad8 andi    a0, s5, 8              #; s5  = 0, (wrb) a0  <-- 0
       0     4868        M 0x80001adc beqz    a0, pc + 44            #; a0  = 0, taken, goto 0x80001b08
       0     4888        M 0x80001b08 snez    a0, s1                 #; s1  = 0, (wrb) a0  <-- 0
       0     4889        M 0x80001b0c sltu    a1, s8, s2             #; s8  = 8, s2  = 0, (wrb) a1  <-- 0
       0     4900        M 0x80001b10 xori    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
       0     4901        M 0x80001b14 or      a0, a0, a1             #; a0  = 0, a1  = 1, (wrb) a0  <-- 1
       0     4902        M 0x80001b18 andi    s5, s5, 2              #; s5  = 0, (wrb) s5  <-- 0
       0     4903        M 0x80001b1c mv      s0, s4                 #; s4  = 8, (wrb) s0  <-- 8
       0     4912        M 0x80001b20 bnez    a0, pc + 44            #; a0  = 1, taken, goto 0x80001b4c
       0     4935        M 0x80001b4c srli    s5, s5, 1              #; s5  = 0, (wrb) s5  <-- 0
       0     4947        M 0x80001b50 beqz    s8, pc + 56            #; s8  = 8, not taken
       0     4948        M 0x80001b54 addi    s9, sp, 7              #; sp  = 0x0011fe30, (wrb) s9  <-- 0x0011fe37
       0     4949        M 0x80001b58 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 8, (wrb) a0  <-- 0x0011fe3f
       0     4950        M 0x80001b5c lbu     a0, 0(a0)              #; a0  = 0x0011fe3f, a0  <~~ Byte[0x0011fe3f]
       0     4953        M                                           #; (lsu) a0  <-- 48
       0     4959        M 0x80001b60 addi    s10, s8, -1            #; s8  = 8, (wrb) s10 <-- 7
       0     4960        M 0x80001b64 addi    s1, s0, 1              #; s0  = 8, (wrb) s1  <-- 9
       0     4961        M 0x80001b68 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4962        M 0x80001b6c mv      a2, s0                 #; s0  = 8, (wrb) a2  <-- 8
       0     4971        M 0x80001b70 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4972        M 0x80001b74 jalr    s7                     #; s7  = 0x8000148c, (wrb) ra  <-- 0x80001b78, goto 0x8000148c
       0     4985        M 0x8000148c beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4988        M 0x80001490 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4989        M 0x80001494 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4990        M 0x80001498 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4991        M 0x8000149c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000349c
       0     4992        M 0x800014a0 addi    a3, a3, -1456          #; a3  = 0x8000349c, (wrb) a3  <-- 0x80002eec
       0     4993        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4994        M 0x800014a4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002eec, (wrb) a1  <-- 0x80002eec
       0     4995        M 0x800014a8 lw      a4, 0(a1)              #; a1  = 0x80002eec, a4  <~~ Word[0x80002eec]
       0     5006        M                                           #; (lsu) a4  <-- 8
       0     5007        M 0x800014ac addi    a5, a4, 1              #; a4  = 8, (wrb) a5  <-- 9
       0     5008        M 0x800014b0 sw      a5, 0(a1)              #; a1  = 0x80002eec, 9 ~~> Word[0x80002eec]
       0     5009        M 0x800014b4 add     a4, a1, a4             #; a1  = 0x80002eec, a4  = 8, (wrb) a4  <-- 0x80002ef4
       0     5010        M 0x800014b8 sb      a0, 72(a4)             #; a4  = 0x80002ef4, 48 ~~> Byte[0x80002f3c]
       0     5011        M 0x800014bc lw      a4, 0(a1)              #; a1  = 0x80002eec, a4  <~~ Word[0x80002eec]
       0     5032        M                                           #; (lsu) a4  <-- 9
       0     5033        M 0x800014c0 addi    a4, a4, -1020          #; a4  = 9, (wrb) a4  <-- -1011
       0     5034        M 0x800014c4 snez    a4, a4                 #; a4  = -1011, (wrb) a4  <-- 1
       0     5035        M 0x800014c8 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     5036        M 0x800014cc snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     5037        M 0x800014d0 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5038        M 0x800014d4 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001534
       0     5042        M 0x80001534 ret                            #; ra  = 0x80001b78, goto 0x80001b78
       0     5047        M 0x80001b78 mv      s0, s1                 #; s1  = 9, (wrb) s0  <-- 9
       0     5048        M 0x80001b7c mv      s8, s10                #; s10 = 7, (wrb) s8  <-- 7
       0     5050        M 0x80001b80 bnez    s10, pc - 40           #; s10 = 7, taken, goto 0x80001b58
       0     5053        M 0x80001b58 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 7, (wrb) a0  <-- 0x0011fe3e
       0     5054        M 0x80001b5c lbu     a0, 0(a0)              #; a0  = 0x0011fe3e, a0  <~~ Byte[0x0011fe3e]
       0     5056        M 0x80001b60 addi    s10, s8, -1            #; s8  = 7, (wrb) s10 <-- 6
       0     5057        M 0x80001b64 addi    s1, s0, 1              #; s0  = 9, (wrb) s1  <-- 10
       0     5058        M 0x80001b68 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5059        M 0x80001b6c mv      a2, s0                 #; s0  = 9, (wrb) a2  <-- 9
       0     5060        M 0x80001b70 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     5061        M 0x80001b74 jalr    s7                     #; s7  = 0x8000148c, (wrb) ra  <-- 0x80001b78, goto 0x8000148c
       0     5062        M                                           #; (lsu) a0  <-- 46
       0     5064        M 0x8000148c beqz    a0, pc + 168           #; a0  = 46, not taken
       0     5067        M 0x80001490 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5068        M 0x80001494 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5069        M 0x80001498 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5070        M 0x8000149c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000349c
       0     5071        M 0x800014a0 addi    a3, a3, -1456          #; a3  = 0x8000349c, (wrb) a3  <-- 0x80002eec
       0     5072        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5073        M 0x800014a4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002eec, (wrb) a1  <-- 0x80002eec
       0     5074        M 0x800014a8 lw      a4, 0(a1)              #; a1  = 0x80002eec, a4  <~~ Word[0x80002eec]
       0     5085        M                                           #; (lsu) a4  <-- 9
       0     5086        M 0x800014ac addi    a5, a4, 1              #; a4  = 9, (wrb) a5  <-- 10
       0     5087        M 0x800014b0 sw      a5, 0(a1)              #; a1  = 0x80002eec, 10 ~~> Word[0x80002eec]
       0     5088        M 0x800014b4 add     a4, a1, a4             #; a1  = 0x80002eec, a4  = 9, (wrb) a4  <-- 0x80002ef5
       0     5089        M 0x800014b8 sb      a0, 72(a4)             #; a4  = 0x80002ef5, 46 ~~> Byte[0x80002f3d]
       0     5090        M 0x800014bc lw      a4, 0(a1)              #; a1  = 0x80002eec, a4  <~~ Word[0x80002eec]
       0     5111        M                                           #; (lsu) a4  <-- 10
       0     5112        M 0x800014c0 addi    a4, a4, -1020          #; a4  = 10, (wrb) a4  <-- -1010
       0     5113        M 0x800014c4 snez    a4, a4                 #; a4  = -1010, (wrb) a4  <-- 1
       0     5114        M 0x800014c8 addi    a0, a0, -10            #; a0  = 46, (wrb) a0  <-- 36
       0     5115        M 0x800014cc snez    a0, a0                 #; a0  = 36, (wrb) a0  <-- 1
       0     5116        M 0x800014d0 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5117        M 0x800014d4 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001534
       0     5121        M 0x80001534 ret                            #; ra  = 0x80001b78, goto 0x80001b78
       0     5126        M 0x80001b78 mv      s0, s1                 #; s1  = 10, (wrb) s0  <-- 10
       0     5127        M 0x80001b7c mv      s8, s10                #; s10 = 6, (wrb) s8  <-- 6
       0     5129        M 0x80001b80 bnez    s10, pc - 40           #; s10 = 6, taken, goto 0x80001b58
       0     5132        M 0x80001b58 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 6, (wrb) a0  <-- 0x0011fe3d
       0     5133        M 0x80001b5c lbu     a0, 0(a0)              #; a0  = 0x0011fe3d, a0  <~~ Byte[0x0011fe3d]
       0     5135        M 0x80001b60 addi    s10, s8, -1            #; s8  = 6, (wrb) s10 <-- 5
       0     5136        M 0x80001b64 addi    s1, s0, 1              #; s0  = 10, (wrb) s1  <-- 11
       0     5137        M 0x80001b68 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5138        M 0x80001b6c mv      a2, s0                 #; s0  = 10, (wrb) a2  <-- 10
       0     5139        M 0x80001b70 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     5140        M 0x80001b74 jalr    s7                     #; s7  = 0x8000148c, (wrb) ra  <-- 0x80001b78, goto 0x8000148c
       0     5141        M                                           #; (lsu) a0  <-- 48
       0     5143        M 0x8000148c beqz    a0, pc + 168           #; a0  = 48, not taken
       0     5146        M 0x80001490 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5147        M 0x80001494 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5148        M 0x80001498 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5149        M 0x8000149c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000349c
       0     5150        M 0x800014a0 addi    a3, a3, -1456          #; a3  = 0x8000349c, (wrb) a3  <-- 0x80002eec
       0     5151        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5152        M 0x800014a4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002eec, (wrb) a1  <-- 0x80002eec
       0     5153        M 0x800014a8 lw      a4, 0(a1)              #; a1  = 0x80002eec, a4  <~~ Word[0x80002eec]
       0     5164        M                                           #; (lsu) a4  <-- 10
       0     5165        M 0x800014ac addi    a5, a4, 1              #; a4  = 10, (wrb) a5  <-- 11
       0     5166        M 0x800014b0 sw      a5, 0(a1)              #; a1  = 0x80002eec, 11 ~~> Word[0x80002eec]
       0     5167        M 0x800014b4 add     a4, a1, a4             #; a1  = 0x80002eec, a4  = 10, (wrb) a4  <-- 0x80002ef6
       0     5168        M 0x800014b8 sb      a0, 72(a4)             #; a4  = 0x80002ef6, 48 ~~> Byte[0x80002f3e]
       0     5169        M 0x800014bc lw      a4, 0(a1)              #; a1  = 0x80002eec, a4  <~~ Word[0x80002eec]
       0     5190        M                                           #; (lsu) a4  <-- 11
       0     5191        M 0x800014c0 addi    a4, a4, -1020          #; a4  = 11, (wrb) a4  <-- -1009
       0     5192        M 0x800014c4 snez    a4, a4                 #; a4  = -1009, (wrb) a4  <-- 1
       0     5193        M 0x800014c8 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     5194        M 0x800014cc snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     5195        M 0x800014d0 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5196        M 0x800014d4 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001534
       0     5200        M 0x80001534 ret                            #; ra  = 0x80001b78, goto 0x80001b78
       0     5205        M 0x80001b78 mv      s0, s1                 #; s1  = 11, (wrb) s0  <-- 11
       0     5206        M 0x80001b7c mv      s8, s10                #; s10 = 5, (wrb) s8  <-- 5
       0     5208        M 0x80001b80 bnez    s10, pc - 40           #; s10 = 5, taken, goto 0x80001b58
       0     5211        M 0x80001b58 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 5, (wrb) a0  <-- 0x0011fe3c
       0     5212        M 0x80001b5c lbu     a0, 0(a0)              #; a0  = 0x0011fe3c, a0  <~~ Byte[0x0011fe3c]
       0     5214        M 0x80001b60 addi    s10, s8, -1            #; s8  = 5, (wrb) s10 <-- 4
       0     5215        M 0x80001b64 addi    s1, s0, 1              #; s0  = 11, (wrb) s1  <-- 12
       0     5216        M 0x80001b68 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5217        M 0x80001b6c mv      a2, s0                 #; s0  = 11, (wrb) a2  <-- 11
       0     5218        M 0x80001b70 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     5219        M 0x80001b74 jalr    s7                     #; s7  = 0x8000148c, (wrb) ra  <-- 0x80001b78, goto 0x8000148c
       0     5220        M                                           #; (lsu) a0  <-- 48
       0     5222        M 0x8000148c beqz    a0, pc + 168           #; a0  = 48, not taken
       0     5225        M 0x80001490 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5226        M 0x80001494 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5227        M 0x80001498 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5228        M 0x8000149c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000349c
       0     5229        M 0x800014a0 addi    a3, a3, -1456          #; a3  = 0x8000349c, (wrb) a3  <-- 0x80002eec
       0     5230        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5231        M 0x800014a4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002eec, (wrb) a1  <-- 0x80002eec
       0     5232        M 0x800014a8 lw      a4, 0(a1)              #; a1  = 0x80002eec, a4  <~~ Word[0x80002eec]
       0     5243        M                                           #; (lsu) a4  <-- 11
       0     5244        M 0x800014ac addi    a5, a4, 1              #; a4  = 11, (wrb) a5  <-- 12
       0     5245        M 0x800014b0 sw      a5, 0(a1)              #; a1  = 0x80002eec, 12 ~~> Word[0x80002eec]
       0     5246        M 0x800014b4 add     a4, a1, a4             #; a1  = 0x80002eec, a4  = 11, (wrb) a4  <-- 0x80002ef7
       0     5247        M 0x800014b8 sb      a0, 72(a4)             #; a4  = 0x80002ef7, 48 ~~> Byte[0x80002f3f]
       0     5248        M 0x800014bc lw      a4, 0(a1)              #; a1  = 0x80002eec, a4  <~~ Word[0x80002eec]
       0     5269        M                                           #; (lsu) a4  <-- 12
       0     5270        M 0x800014c0 addi    a4, a4, -1020          #; a4  = 12, (wrb) a4  <-- -1008
       0     5271        M 0x800014c4 snez    a4, a4                 #; a4  = -1008, (wrb) a4  <-- 1
       0     5272        M 0x800014c8 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     5273        M 0x800014cc snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     5274        M 0x800014d0 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5275        M 0x800014d4 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001534
       0     5279        M 0x80001534 ret                            #; ra  = 0x80001b78, goto 0x80001b78
       0     5284        M 0x80001b78 mv      s0, s1                 #; s1  = 12, (wrb) s0  <-- 12
       0     5285        M 0x80001b7c mv      s8, s10                #; s10 = 4, (wrb) s8  <-- 4
       0     5287        M 0x80001b80 bnez    s10, pc - 40           #; s10 = 4, taken, goto 0x80001b58
       0     5290        M 0x80001b58 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 4, (wrb) a0  <-- 0x0011fe3b
       0     5291        M 0x80001b5c lbu     a0, 0(a0)              #; a0  = 0x0011fe3b, a0  <~~ Byte[0x0011fe3b]
       0     5293        M 0x80001b60 addi    s10, s8, -1            #; s8  = 4, (wrb) s10 <-- 3
       0     5294        M 0x80001b64 addi    s1, s0, 1              #; s0  = 12, (wrb) s1  <-- 13
       0     5295        M 0x80001b68 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5296        M 0x80001b6c mv      a2, s0                 #; s0  = 12, (wrb) a2  <-- 12
       0     5297        M 0x80001b70 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     5298        M 0x80001b74 jalr    s7                     #; s7  = 0x8000148c, (wrb) ra  <-- 0x80001b78, goto 0x8000148c
       0     5299        M                                           #; (lsu) a0  <-- 48
       0     5301        M 0x8000148c beqz    a0, pc + 168           #; a0  = 48, not taken
       0     5304        M 0x80001490 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5305        M 0x80001494 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5306        M 0x80001498 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5307        M 0x8000149c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000349c
       0     5308        M 0x800014a0 addi    a3, a3, -1456          #; a3  = 0x8000349c, (wrb) a3  <-- 0x80002eec
       0     5309        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5310        M 0x800014a4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002eec, (wrb) a1  <-- 0x80002eec
       0     5311        M 0x800014a8 lw      a4, 0(a1)              #; a1  = 0x80002eec, a4  <~~ Word[0x80002eec]
       0     5322        M                                           #; (lsu) a4  <-- 12
       0     5323        M 0x800014ac addi    a5, a4, 1              #; a4  = 12, (wrb) a5  <-- 13
       0     5324        M 0x800014b0 sw      a5, 0(a1)              #; a1  = 0x80002eec, 13 ~~> Word[0x80002eec]
       0     5325        M 0x800014b4 add     a4, a1, a4             #; a1  = 0x80002eec, a4  = 12, (wrb) a4  <-- 0x80002ef8
       0     5326        M 0x800014b8 sb      a0, 72(a4)             #; a4  = 0x80002ef8, 48 ~~> Byte[0x80002f40]
       0     5327        M 0x800014bc lw      a4, 0(a1)              #; a1  = 0x80002eec, a4  <~~ Word[0x80002eec]
       0     5348        M                                           #; (lsu) a4  <-- 13
       0     5349        M 0x800014c0 addi    a4, a4, -1020          #; a4  = 13, (wrb) a4  <-- -1007
       0     5350        M 0x800014c4 snez    a4, a4                 #; a4  = -1007, (wrb) a4  <-- 1
       0     5351        M 0x800014c8 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     5352        M 0x800014cc snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     5353        M 0x800014d0 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5354        M 0x800014d4 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001534
       0     5358        M 0x80001534 ret                            #; ra  = 0x80001b78, goto 0x80001b78
       0     5363        M 0x80001b78 mv      s0, s1                 #; s1  = 13, (wrb) s0  <-- 13
       0     5364        M 0x80001b7c mv      s8, s10                #; s10 = 3, (wrb) s8  <-- 3
       0     5366        M 0x80001b80 bnez    s10, pc - 40           #; s10 = 3, taken, goto 0x80001b58
       0     5369        M 0x80001b58 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 3, (wrb) a0  <-- 0x0011fe3a
       0     5370        M 0x80001b5c lbu     a0, 0(a0)              #; a0  = 0x0011fe3a, a0  <~~ Byte[0x0011fe3a]
       0     5372        M 0x80001b60 addi    s10, s8, -1            #; s8  = 3, (wrb) s10 <-- 2
       0     5373        M 0x80001b64 addi    s1, s0, 1              #; s0  = 13, (wrb) s1  <-- 14
       0     5374        M 0x80001b68 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5375        M 0x80001b6c mv      a2, s0                 #; s0  = 13, (wrb) a2  <-- 13
       0     5376        M 0x80001b70 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     5377        M 0x80001b74 jalr    s7                     #; s7  = 0x8000148c, (wrb) ra  <-- 0x80001b78, goto 0x8000148c
       0     5378        M                                           #; (lsu) a0  <-- 48
       0     5380        M 0x8000148c beqz    a0, pc + 168           #; a0  = 48, not taken
       0     5383        M 0x80001490 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5384        M 0x80001494 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5385        M 0x80001498 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5386        M 0x8000149c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000349c
       0     5387        M 0x800014a0 addi    a3, a3, -1456          #; a3  = 0x8000349c, (wrb) a3  <-- 0x80002eec
       0     5388        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5389        M 0x800014a4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002eec, (wrb) a1  <-- 0x80002eec
       0     5390        M 0x800014a8 lw      a4, 0(a1)              #; a1  = 0x80002eec, a4  <~~ Word[0x80002eec]
       0     5401        M                                           #; (lsu) a4  <-- 13
       0     5402        M 0x800014ac addi    a5, a4, 1              #; a4  = 13, (wrb) a5  <-- 14
       0     5403        M 0x800014b0 sw      a5, 0(a1)              #; a1  = 0x80002eec, 14 ~~> Word[0x80002eec]
       0     5404        M 0x800014b4 add     a4, a1, a4             #; a1  = 0x80002eec, a4  = 13, (wrb) a4  <-- 0x80002ef9
       0     5405        M 0x800014b8 sb      a0, 72(a4)             #; a4  = 0x80002ef9, 48 ~~> Byte[0x80002f41]
       0     5406        M 0x800014bc lw      a4, 0(a1)              #; a1  = 0x80002eec, a4  <~~ Word[0x80002eec]
       0     5427        M                                           #; (lsu) a4  <-- 14
       0     5428        M 0x800014c0 addi    a4, a4, -1020          #; a4  = 14, (wrb) a4  <-- -1006
       0     5429        M 0x800014c4 snez    a4, a4                 #; a4  = -1006, (wrb) a4  <-- 1
       0     5430        M 0x800014c8 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     5431        M 0x800014cc snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     5432        M 0x800014d0 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5433        M 0x800014d4 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001534
       0     5437        M 0x80001534 ret                            #; ra  = 0x80001b78, goto 0x80001b78
       0     5442        M 0x80001b78 mv      s0, s1                 #; s1  = 14, (wrb) s0  <-- 14
       0     5443        M 0x80001b7c mv      s8, s10                #; s10 = 2, (wrb) s8  <-- 2
       0     5445        M 0x80001b80 bnez    s10, pc - 40           #; s10 = 2, taken, goto 0x80001b58
       0     5448        M 0x80001b58 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 2, (wrb) a0  <-- 0x0011fe39
       0     5449        M 0x80001b5c lbu     a0, 0(a0)              #; a0  = 0x0011fe39, a0  <~~ Byte[0x0011fe39]
       0     5451        M 0x80001b60 addi    s10, s8, -1            #; s8  = 2, (wrb) s10 <-- 1
       0     5452        M 0x80001b64 addi    s1, s0, 1              #; s0  = 14, (wrb) s1  <-- 15
       0     5453        M 0x80001b68 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5454        M 0x80001b6c mv      a2, s0                 #; s0  = 14, (wrb) a2  <-- 14
       0     5455        M 0x80001b70 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     5456        M 0x80001b74 jalr    s7                     #; s7  = 0x8000148c, (wrb) ra  <-- 0x80001b78, goto 0x8000148c
       0     5457        M                                           #; (lsu) a0  <-- 48
       0     5459        M 0x8000148c beqz    a0, pc + 168           #; a0  = 48, not taken
       0     5462        M 0x80001490 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5463        M 0x80001494 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5464        M 0x80001498 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5465        M 0x8000149c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000349c
       0     5466        M 0x800014a0 addi    a3, a3, -1456          #; a3  = 0x8000349c, (wrb) a3  <-- 0x80002eec
       0     5467        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5468        M 0x800014a4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002eec, (wrb) a1  <-- 0x80002eec
       0     5469        M 0x800014a8 lw      a4, 0(a1)              #; a1  = 0x80002eec, a4  <~~ Word[0x80002eec]
       0     5480        M                                           #; (lsu) a4  <-- 14
       0     5481        M 0x800014ac addi    a5, a4, 1              #; a4  = 14, (wrb) a5  <-- 15
       0     5482        M 0x800014b0 sw      a5, 0(a1)              #; a1  = 0x80002eec, 15 ~~> Word[0x80002eec]
       0     5483        M 0x800014b4 add     a4, a1, a4             #; a1  = 0x80002eec, a4  = 14, (wrb) a4  <-- 0x80002efa
       0     5484        M 0x800014b8 sb      a0, 72(a4)             #; a4  = 0x80002efa, 48 ~~> Byte[0x80002f42]
       0     5485        M 0x800014bc lw      a4, 0(a1)              #; a1  = 0x80002eec, a4  <~~ Word[0x80002eec]
       0     5506        M                                           #; (lsu) a4  <-- 15
       0     5507        M 0x800014c0 addi    a4, a4, -1020          #; a4  = 15, (wrb) a4  <-- -1005
       0     5508        M 0x800014c4 snez    a4, a4                 #; a4  = -1005, (wrb) a4  <-- 1
       0     5509        M 0x800014c8 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     5510        M 0x800014cc snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     5511        M 0x800014d0 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5512        M 0x800014d4 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001534
       0     5516        M 0x80001534 ret                            #; ra  = 0x80001b78, goto 0x80001b78
       0     5521        M 0x80001b78 mv      s0, s1                 #; s1  = 15, (wrb) s0  <-- 15
       0     5522        M 0x80001b7c mv      s8, s10                #; s10 = 1, (wrb) s8  <-- 1
       0     5524        M 0x80001b80 bnez    s10, pc - 40           #; s10 = 1, taken, goto 0x80001b58
       0     5527        M 0x80001b58 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 1, (wrb) a0  <-- 0x0011fe38
       0     5528        M 0x80001b5c lbu     a0, 0(a0)              #; a0  = 0x0011fe38, a0  <~~ Byte[0x0011fe38]
       0     5530        M 0x80001b60 addi    s10, s8, -1            #; s8  = 1, (wrb) s10 <-- 0
       0     5531        M 0x80001b64 addi    s1, s0, 1              #; s0  = 15, (wrb) s1  <-- 16
       0     5532        M 0x80001b68 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5533        M 0x80001b6c mv      a2, s0                 #; s0  = 15, (wrb) a2  <-- 15
       0     5534        M 0x80001b70 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     5535        M 0x80001b74 jalr    s7                     #; s7  = 0x8000148c, (wrb) ra  <-- 0x80001b78, goto 0x8000148c
       0     5536        M                                           #; (lsu) a0  <-- 48
       0     5538        M 0x8000148c beqz    a0, pc + 168           #; a0  = 48, not taken
       0     5541        M 0x80001490 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5542        M 0x80001494 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5543        M 0x80001498 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5544        M 0x8000149c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000349c
       0     5545        M 0x800014a0 addi    a3, a3, -1456          #; a3  = 0x8000349c, (wrb) a3  <-- 0x80002eec
       0     5546        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5547        M 0x800014a4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002eec, (wrb) a1  <-- 0x80002eec
       0     5548        M 0x800014a8 lw      a4, 0(a1)              #; a1  = 0x80002eec, a4  <~~ Word[0x80002eec]
       0     5559        M                                           #; (lsu) a4  <-- 15
       0     5560        M 0x800014ac addi    a5, a4, 1              #; a4  = 15, (wrb) a5  <-- 16
       0     5561        M 0x800014b0 sw      a5, 0(a1)              #; a1  = 0x80002eec, 16 ~~> Word[0x80002eec]
       0     5562        M 0x800014b4 add     a4, a1, a4             #; a1  = 0x80002eec, a4  = 15, (wrb) a4  <-- 0x80002efb
       0     5563        M 0x800014b8 sb      a0, 72(a4)             #; a4  = 0x80002efb, 48 ~~> Byte[0x80002f43]
       0     5564        M 0x800014bc lw      a4, 0(a1)              #; a1  = 0x80002eec, a4  <~~ Word[0x80002eec]
       0     5585        M                                           #; (lsu) a4  <-- 16
       0     5586        M 0x800014c0 addi    a4, a4, -1020          #; a4  = 16, (wrb) a4  <-- -1004
       0     5587        M 0x800014c4 snez    a4, a4                 #; a4  = -1004, (wrb) a4  <-- 1
       0     5588        M 0x800014c8 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     5589        M 0x800014cc snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     5590        M 0x800014d0 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5591        M 0x800014d4 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001534
       0     5595        M 0x80001534 ret                            #; ra  = 0x80001b78, goto 0x80001b78
       0     5600        M 0x80001b78 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
       0     5601        M 0x80001b7c mv      s8, s10                #; s10 = 0, (wrb) s8  <-- 0
       0     5603        M 0x80001b80 bnez    s10, pc - 40           #; s10 = 0, not taken
       0     5604        M 0x80001b84 j       pc + 0x8               #; goto 0x80001b8c
       0     5605        M 0x80001b8c sub     a0, s1, s4             #; s1  = 16, s4  = 8, (wrb) a0  <-- 8
       0     5617        M 0x80001b90 sltu    a0, a0, s2             #; a0  = 8, s2  = 0, (wrb) a0  <-- 0
       0     5618        M 0x80001b94 xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0     5619        M 0x80001b98 xori    a1, s5, 1              #; s5  = 0, (wrb) a1  <-- 1
       0     5620        M 0x80001b9c or      a0, a1, a0             #; a1  = 1, a0  = 1, (wrb) a0  <-- 1
       0     5629        M 0x80001ba0 bnez    a0, pc + 48            #; a0  = 1, taken, goto 0x80001bd0
       0     5652        M 0x80001bd0 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
       0     5653        M 0x80001bd4 mv      a0, s0                 #; s0  = 16, (wrb) a0  <-- 16
       0     5656        M 0x80001bd8 fld     fs2, 40(sp)            #; fs2  <~~ Doub[0x0011fe58]
       0     5657        M 0x80001bdc fld     fs1, 48(sp)            #; fs1  <~~ Doub[0x0011fe60], (f:lsu) fs2  <-- 0.0
       0     5658        M                                           #; (f:lsu) fs1  <-- 0.0
       0     5665        M 0x80001be4 lw      s10, 64(sp)            #; sp  = 0x0011fe30, s10 <~~ Word[0x0011fe70]
       0     5666        M 0x80001be0 fld     fs0, 56(sp)            #; fs0  <~~ Doub[0x0011fe68]
       0     5667        M                                           #; (f:lsu) fs0  <-- 0.0000000
       0     5669        M                                           #; (lsu) s10 <-- 0x80002b7e
       0     5670        M 0x80001be8 lw      s9, 68(sp)             #; sp  = 0x0011fe30, s9  <~~ Word[0x0011fe74]
       0     5673        M                                           #; (lsu) s9  <-- 8
       0     5674        M 0x80001bec lw      s8, 72(sp)             #; sp  = 0x0011fe30, s8  <~~ Word[0x0011fe78]
       0     5677        M                                           #; (lsu) s8  <-- 16
       0     5678        M 0x80001bf0 lw      s7, 76(sp)             #; sp  = 0x0011fe30, s7  <~~ Word[0x0011fe7c]
       0     5681        M                                           #; (lsu) s7  <-- 0
       0     5682        M 0x80001bf4 lw      s6, 80(sp)             #; sp  = 0x0011fe30, s6  <~~ Word[0x0011fe80]
       0     5685        M                                           #; (lsu) s6  <-- 0
       0     5686        M 0x80001bf8 lw      s5, 84(sp)             #; sp  = 0x0011fe30, s5  <~~ Word[0x0011fe84]
       0     5689        M                                           #; (lsu) s5  <-- -1
       0     5690        M 0x80001bfc lw      s4, 88(sp)             #; sp  = 0x0011fe30, s4  <~~ Word[0x0011fe88]
       0     5693        M                                           #; (lsu) s4  <-- 0x0011ff17
       0     5694        M 0x80001c00 lw      s3, 92(sp)             #; sp  = 0x0011fe30, s3  <~~ Word[0x0011fe8c]
       0     5697        M                                           #; (lsu) s3  <-- 0x0011ff30
       0     5698        M 0x80001c04 lw      s2, 96(sp)             #; sp  = 0x0011fe30, s2  <~~ Word[0x0011fe90]
       0     5701        M                                           #; (lsu) s2  <-- 0x8000148c
       0     5702        M 0x80001c08 lw      s1, 100(sp)            #; sp  = 0x0011fe30, s1  <~~ Word[0x0011fe94]
       0     5705        M                                           #; (lsu) s1  <-- 8
       0     5706        M 0x80001c0c lw      s0, 104(sp)            #; sp  = 0x0011fe30, s0  <~~ Word[0x0011fe98]
       0     5709        M                                           #; (lsu) s0  <-- 0
       0     5710        M 0x80001c10 lw      ra, 108(sp)            #; sp  = 0x0011fe30, ra  <~~ Word[0x0011fe9c]
       0     5711        M 0x80001c14 addi    sp, sp, 112            #; sp  = 0x0011fe30, (wrb) sp  <-- 0x0011fea0
       0     5713        M                                           #; (lsu) ra  <-- 0x80000bbc
       0     5714        M 0x80001c18 ret                            #; ra  = 0x80000bbc, goto 0x80000bbc
       0     5731        M 0x80000bbc j       pc + 0x7c0             #; goto 0x8000137c
       0     5734        M 0x8000137c mv      s8, a0                 #; a0  = 16, (wrb) s8  <-- 16
       0     5746        M 0x80001380 li      s6, 37                 #; (wrb) s6  <-- 37
       0     5747        M 0x80001384 li      s7, 46                 #; (wrb) s7  <-- 46
       0     5748        M 0x80001388 addi    s0, s10, 1             #; s10 = 0x80002b7e, (wrb) s0  <-- 0x80002b7f
       0     5749        M 0x8000138c j       pc - 0xa74             #; goto 0x80000918
       0     5758        M 0x80000918 addi    s10, s0, 2             #; s0  = 0x80002b7f, (wrb) s10 <-- 0x80002b81
       0     5759        M 0x8000091c mv      s9, s8                 #; s8  = 16, (wrb) s9  <-- 16
       0     5770        M 0x80000920 li      s8, 10                 #; (wrb) s8  <-- 10
       0     5771        M 0x80000924 lbu     a0, 0(s0)              #; s0  = 0x80002b7f, a0  <~~ Byte[0x80002b7f]
       0     5782        M                                           #; (lsu) a0  <-- 10
       0     5783        M 0x80000928 beqz    a0, pc + 2824          #; a0  = 10, not taken
       0     5784        M 0x8000092c beq     a0, s6, pc + 48        #; a0  = 10, s6  = 37, not taken
       0     5785        M 0x80000930 addi    s1, s9, 1              #; s9  = 16, (wrb) s1  <-- 17
       0     5786        M 0x80000934 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5787        M 0x80000938 mv      a2, s9                 #; s9  = 16, (wrb) a2  <-- 16
       0     5788        M 0x8000093c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5797        M 0x80000940 jalr    s2                     #; s2  = 0x8000148c, (wrb) ra  <-- 0x80000944, goto 0x8000148c
       0     5811        M 0x8000148c beqz    a0, pc + 168           #; a0  = 10, not taken
       0     5814        M 0x80001490 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5815        M 0x80001494 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5816        M 0x80001498 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5817        M 0x8000149c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000349c
       0     5818        M 0x800014a0 addi    a3, a3, -1456          #; a3  = 0x8000349c, (wrb) a3  <-- 0x80002eec
       0     5819        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5820        M 0x800014a4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002eec, (wrb) a1  <-- 0x80002eec
       0     5821        M 0x800014a8 lw      a4, 0(a1)              #; a1  = 0x80002eec, a4  <~~ Word[0x80002eec]
       0     5832        M                                           #; (lsu) a4  <-- 16
       0     5833        M 0x800014ac addi    a5, a4, 1              #; a4  = 16, (wrb) a5  <-- 17
       0     5834        M 0x800014b0 sw      a5, 0(a1)              #; a1  = 0x80002eec, 17 ~~> Word[0x80002eec]
       0     5835        M 0x800014b4 add     a4, a1, a4             #; a1  = 0x80002eec, a4  = 16, (wrb) a4  <-- 0x80002efc
       0     5836        M 0x800014b8 sb      a0, 72(a4)             #; a4  = 0x80002efc, 10 ~~> Byte[0x80002f44]
       0     5837        M 0x800014bc lw      a4, 0(a1)              #; a1  = 0x80002eec, a4  <~~ Word[0x80002eec]
       0     5858        M                                           #; (lsu) a4  <-- 17
       0     5859        M 0x800014c0 addi    a4, a4, -1020          #; a4  = 17, (wrb) a4  <-- -1003
       0     5860        M 0x800014c4 snez    a4, a4                 #; a4  = -1003, (wrb) a4  <-- 1
       0     5861        M 0x800014c8 addi    a0, a0, -10            #; a0  = 10, (wrb) a0  <-- 0
       0     5862        M 0x800014cc snez    a0, a0                 #; a0  = 0, (wrb) a0  <-- 0
       0     5863        M 0x800014d0 and     a0, a0, a4             #; a0  = 0, a4  = 1, (wrb) a0  <-- 0
       0     5864        M 0x800014d4 bnez    a0, pc + 96            #; a0  = 0, not taken
       0     5865        M 0x800014d8 add     a0, a3, a2             #; a3  = 0x80002eec, a2  = 0, (wrb) a0  <-- 0x80002eec
       0     5866        M 0x800014dc addi    a2, a0, 72             #; a0  = 0x80002eec, (wrb) a2  <-- 0x80002f34
       0     5867        M 0x800014e0 sw      zero, 12(a0)           #; a0  = 0x80002eec, 0 ~~> Word[0x80002ef8]
       0     5868        M 0x800014e4 li      a3, 64                 #; (wrb) a3  <-- 64
       0     5869        M 0x800014e8 sw      a3, 8(a0)              #; a0  = 0x80002eec, 64 ~~> Word[0x80002ef4]
       0     5870        M 0x800014ec sw      zero, 20(a0)           #; a0  = 0x80002eec, 0 ~~> Word[0x80002f00]
       0     5879        M 0x800014f0 li      a3, 1                  #; (wrb) a3  <-- 1
       0     5880        M 0x800014f4 sw      a3, 16(a0)             #; a0  = 0x80002eec, 1 ~~> Word[0x80002efc]
       0     5881        M 0x800014f8 sw      zero, 28(a0)           #; a0  = 0x80002eec, 0 ~~> Word[0x80002f08]
       0     5883        M 0x800014fc sw      a2, 24(a0)             #; a0  = 0x80002eec, 0x80002f34 ~~> Word[0x80002f04]
       0     5893        M 0x80001500 lw      a2, 0(a1)              #; a1  = 0x80002eec, a2  <~~ Word[0x80002eec]
       0     5894        M 0x80001504 addi    a3, a0, 8              #; a0  = 0x80002eec, (wrb) a3  <-- 0x80002ef4
       0     5895        M 0x80001508 sw      zero, 36(a0)           #; a0  = 0x80002eec, 0 ~~> Word[0x80002f10]
       0     5915        M                                           #; (lsu) a2  <-- 17
       0     5916        M 0x8000150c sw      a2, 32(a0)             #; a0  = 0x80002eec, 17 ~~> Word[0x80002f0c]
       0     5917        M 0x80001510 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003510
       0     5918        M 0x80001514 addi    a0, a0, -1872          #; a0  = 0x80003510, (wrb) a0  <-- 0x80002dc0
       0     5919        M 0x80001518 sw      a3, 0(a0)              #; a0  = 0x80002dc0, 0x80002ef4 ~~> Word[0x80002dc0]
       0     5920        M 0x8000151c auipc   a0, 0x2                #; (wrb) a0  <-- 0x8000351c
       0     5929        M 0x80001520 addi    a0, a0, -1820          #; a0  = 0x8000351c, (wrb) a0  <-- 0x80002e00
       0     5930        M 0x80001524 lw      a2, 0(a0)              #; a0  = 0x80002e00, a2  <~~ Word[0x80002e00]
       0     5945        M                                           #; (lsu) a2  <-- 0
       0     5946        M 0x80001528 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001524
       0     5947        M 0x80001524 lw      a2, 0(a0)              #; a0  = 0x80002e00, a2  <~~ Word[0x80002e00]
       0     5958        M                                           #; (lsu) a2  <-- 0
       0     5959        M 0x80001528 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001524
       0     5960        M 0x80001524 lw      a2, 0(a0)              #; a0  = 0x80002e00, a2  <~~ Word[0x80002e00]
       0     5971        M                                           #; (lsu) a2  <-- 0
       0     5972        M 0x80001528 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001524
       0     5973        M 0x80001524 lw      a2, 0(a0)              #; a0  = 0x80002e00, a2  <~~ Word[0x80002e00]
       0     5984        M                                           #; (lsu) a2  <-- 0
       0     5985        M 0x80001528 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001524
       0     5986        M 0x80001524 lw      a2, 0(a0)              #; a0  = 0x80002e00, a2  <~~ Word[0x80002e00]
       0     5997        M                                           #; (lsu) a2  <-- 0
       0     5998        M 0x80001528 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001524
       0     5999        M 0x80001524 lw      a2, 0(a0)              #; a0  = 0x80002e00, a2  <~~ Word[0x80002e00]
       0     6010        M                                           #; (lsu) a2  <-- 1
       0     6011        M 0x80001528 beqz    a2, pc - 4             #; a2  = 1, not taken
       0     6012        M 0x8000152c sw      zero, 0(a0)            #; a0  = 0x80002e00, 0 ~~> Word[0x80002e00]
       0     6015        M 0x80001530 sw      zero, 0(a1)            #; a1  = 0x80002eec, 0 ~~> Word[0x80002eec]
       0     6016        M 0x80001534 ret                            #; ra  = 0x80000944, goto 0x80000944
       0     6020        M 0x80000944 addi    s0, s0, 1              #; s0  = 0x80002b7f, (wrb) s0  <-- 0x80002b80
       0     6021        M 0x80000948 addi    s10, s10, 1            #; s10 = 0x80002b81, (wrb) s10 <-- 0x80002b82
       0     6022        M 0x8000094c mv      s9, s1                 #; s1  = 17, (wrb) s9  <-- 17
       0     6023        M 0x80000950 lbu     a0, 0(s0)              #; s0  = 0x80002b80, a0  <~~ Byte[0x80002b80]
       0     6036        M                                           #; (lsu) a0  <-- 0
       0     6037        M 0x80000954 bnez    a0, pc - 40            #; a0  = 0, not taken
       0     6038        M 0x80000958 j       pc + 0xad8             #; goto 0x80001430
       0     6050        M 0x80001430 mv      a2, s9                 #; s9  = 17, (wrb) a2  <-- 17
       0     6051        M 0x80001434 bltu    s9, s5, pc + 8         #; s9  = 17, s5  = -1, taken, goto 0x8000143c
       0     6052        M 0x8000143c li      a0, 0                  #; (wrb) a0  <-- 0
       0     6062        M 0x80001440 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     6063        M 0x80001444 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     6064        M 0x80001448 jalr    s2                     #; s2  = 0x8000148c, (wrb) ra  <-- 0x8000144c, goto 0x8000148c
       0     6076        M 0x8000148c beqz    a0, pc + 168           #; a0  = 0, taken, goto 0x80001534
       0     6081        M 0x80001534 ret                            #; ra  = 0x8000144c, goto 0x8000144c
       0     6082        M 0x8000144c mv      a0, s9                 #; s9  = 17, (wrb) a0  <-- 17
       0     6083        M 0x80001450 lw      s11, 60(sp)            #; sp  = 0x0011fea0, s11 <~~ Word[0x0011fedc]
       0     6086        M                                           #; (lsu) s11 <-- 0
       0     6087        M 0x80001454 lw      s10, 64(sp)            #; sp  = 0x0011fea0, s10 <~~ Word[0x0011fee0]
       0     6090        M                                           #; (lsu) s10 <-- 0
       0     6091        M 0x80001458 lw      s9, 68(sp)             #; sp  = 0x0011fea0, s9  <~~ Word[0x0011fee4]
       0     6094        M                                           #; (lsu) s9  <-- 0
       0     6095        M 0x8000145c lw      s8, 72(sp)             #; sp  = 0x0011fea0, s8  <~~ Word[0x0011fee8]
       0     6098        M                                           #; (lsu) s8  <-- 0
       0     6099        M 0x80001460 lw      s7, 76(sp)             #; sp  = 0x0011fea0, s7  <~~ Word[0x0011feec]
       0     6102        M                                           #; (lsu) s7  <-- 0
       0     6103        M 0x80001464 lw      s6, 80(sp)             #; sp  = 0x0011fea0, s6  <~~ Word[0x0011fef0]
       0     6106        M                                           #; (lsu) s6  <-- 0
       0     6107        M 0x80001468 lw      s5, 84(sp)             #; sp  = 0x0011fea0, s5  <~~ Word[0x0011fef4]
       0     6110        M                                           #; (lsu) s5  <-- 0
       0     6111        M 0x8000146c lw      s4, 88(sp)             #; sp  = 0x0011fea0, s4  <~~ Word[0x0011fef8]
       0     6114        M                                           #; (lsu) s4  <-- 0
       0     6115        M 0x80001470 lw      s3, 92(sp)             #; sp  = 0x0011fea0, s3  <~~ Word[0x0011fefc]
       0     6118        M                                           #; (lsu) s3  <-- 0
       0     6119        M 0x80001474 lw      s2, 96(sp)             #; sp  = 0x0011fea0, s2  <~~ Word[0x0011ff00]
       0     6122        M                                           #; (lsu) s2  <-- 0
       0     6123        M 0x80001478 lw      s1, 100(sp)            #; sp  = 0x0011fea0, s1  <~~ Word[0x0011ff04]
       0     6126        M                                           #; (lsu) s1  <-- 0
       0     6127        M 0x8000147c lw      s0, 104(sp)            #; sp  = 0x0011fea0, s0  <~~ Word[0x0011ff08]
       0     6130        M                                           #; (lsu) s0  <-- 0
       0     6131        M 0x80001480 lw      ra, 108(sp)            #; sp  = 0x0011fea0, ra  <~~ Word[0x0011ff0c]
       0     6132        M 0x80001484 addi    sp, sp, 112            #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011ff10
       0     6134        M                                           #; (lsu) ra  <-- 0x80000888
       0     6135        M 0x80001488 ret                            #; ra  = 0x80000888, goto 0x80000888
       0     6147        M 0x80000888 lw      ra, 12(sp)             #; sp  = 0x0011ff10, ra  <~~ Word[0x0011ff1c]
       0     6148        M 0x8000088c addi    sp, sp, 48             #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011ff40
       0     6150        M                                           #; (lsu) ra  <-- 0x80000818
       0     6159        M 0x80000890 ret                            #; ra  = 0x80000818, goto 0x80000818
       0     6173        M 0x80000818 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002818
       0     6174        M 0x8000081c addi    a0, a0, 1568           #; a0  = 0x80002818, (wrb) a0  <-- 0x80002e38
       0     6178        M 0x80000820 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002e38]
       0     6179        M 0x8000082c lw      ra, 28(sp)             #; sp  = 0x0011ff40, ra  <~~ Word[0x0011ff5c]
       0     6187        M                                           #; (f:lsu) ft0  <-- 0.0001
       0     6188        M 0x80000830 addi    sp, sp, 32             #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff60
                         M 0x80000824 flt.d   a0, ft0, fs0           #; ft0  = 0.0001, fs0  = 0.0000000
       0     6189        M                                           #; (lsu) ra  <-- 0x800028f0
       0     6190        M 0x80000834 ret                            #; ra  = 0x800028f0, goto 0x800028f0
                         M 0x80000828 fld     fs0, 16(sp)            #; fs0  <~~ Doub[0x0011ff50]
       0     6191        M                                           #; (f:lsu) fs0  <-- 0.0
       0     6202        M 0x800028f0 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
       0     6203        M 0x800028f4 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800028f4
       0     6204        M 0x800028f8 jalr    ra, ra, 524            #; ra  = 0x800028f4, (wrb) ra  <-- 0x800028fc, goto 0x80002b00
       0     6225        M 0x80002b00 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
       0     6226        M 0x80002b04 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x800028fc ~~> Word[0x0011ff5c]
       0     6227        M 0x80002b08 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002b08
       0     6228        M 0x80002b0c jalr    ra, ra, -1268          #; ra  = 0x80002b08, (wrb) ra  <-- 0x80002b10, goto 0x80002614
       0     6231        M 0x80002614 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     6232        M 0x80002618 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     6233        M 0x8000261c lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     6236        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     6237        M 0x80002620 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     6240        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     6241        M 0x80002624 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
       0     6242        M 0x80002628 ret                            #; ra  = 0x80002b10, goto 0x80002b10
       0     6244        M                                           #; (lsu) a0  <-- 0x00120190
       0     6245        M 0x80002b10 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
       0     6255        M                                           #; (lsu) a0  <-- 0
       0     6256        M 0x80002b14 mv      zero, a0               #; a0  = 0
       0     6257        M 0x80002b18 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
       0     6258        M 0x80002b1c addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
       0     6260        M                                           #; (lsu) ra  <-- 0x800028fc
       0     6261        M 0x80002b20 ret                            #; ra  = 0x800028fc, goto 0x800028fc
       0     6275        M 0x800028fc mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
       0     6279        M 0x80002900 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002900
       0     6280        M 0x80002904 jalr    ra, ra, 556            #; ra  = 0x80002900, (wrb) ra  <-- 0x80002908, goto 0x80002b2c
       0     6281        M 0x80002b2c addi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff58
       0     6282        M 0x80002b30 sw      a0, 0(sp)              #; sp  = 0x0011ff58, 0 ~~> Word[0x0011ff58]
       0     6283        M 0x80002b34 sw      ra, 4(sp)              #; sp  = 0x0011ff58, 0x80002908 ~~> Word[0x0011ff5c]
       0     6284        M 0x80002b38 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002b38
       0     6285        M 0x80002b3c jalr    ra, ra, -1348          #; ra  = 0x80002b38, (wrb) ra  <-- 0x80002b40, goto 0x800025f4
       0     6304        M 0x800025f4 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     6305        M 0x800025f8 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     6306        M 0x800025fc lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     6309        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     6310        M 0x80002600 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     6313        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     6314        M 0x80002604 lw      a0, 8(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff78]
       0     6315        M 0x80002608 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6317        M                                           #; (lsu) a0  <-- 0
       0     6318        M 0x8000260c sub     a0, a1, a0             #; a1  = 0, a0  = 0, (wrb) a0  <-- 0
       0     6319        M 0x80002610 ret                            #; ra  = 0x80002b40, goto 0x80002b40
       0     6320        M 0x80002b40 lw      t0, 0(sp)              #; sp  = 0x0011ff58, t0  <~~ Word[0x0011ff58]
       0     6323        M                                           #; (lsu) t0  <-- 0
       0     6324        M 0x80002b44 lw      ra, 4(sp)              #; sp  = 0x0011ff58, ra  <~~ Word[0x0011ff5c]
       0     6325        M 0x80002b48 addi    sp, sp, 8              #; sp  = 0x0011ff58, (wrb) sp  <-- 0x0011ff60
       0     6326        M 0x80002b4c bnez    a0, pc + 24            #; a0  = 0, not taken
       0     6327        M                                           #; (lsu) ra  <-- 0x80002908
       0     6335        M 0x80002b50 slli    t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 0
       0     6336        M 0x80002b54 ori     t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 1
       0     6337        M 0x80002b58 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002b58
       0     6338        M 0x80002b5c addi    t1, t1, 616            #; t1  = 0x80002b58, (wrb) t1  <-- 0x80002dc0
       0     6346        M 0x80002b60 sw      t0, 0(t1)              #; t1  = 0x80002dc0, 1 ~~> Word[0x80002dc0]
       0     6347        M 0x80002b64 ret                            #; ra  = 0x80002908, goto 0x80002908
       0     6361        M 0x80002908 wfi                            #; 

## Performance metrics

Performance metrics for section 0 @ (12, 6361):
snitch_loads                                   139
snitch_stores                                  142
fpss_stores                                     30
fpss_loads                                      90
snitch_avg_load_latency                    11.9065
snitch_occupancy                            0.2924
snitch_fseq_rel_offloads                    0.1427
fseq_yield                                     1.0
fseq_fpu_yield                                 1.0
fpss_section_latency                             0
fpss_avg_fpu_latency                        2.1111
fpss_avg_load_latency                       1.9889
fpss_occupancy                              0.0487
fpss_fpu_occupancy                          0.0298
fpss_fpu_rel_occupancy                      0.6117
cycles                                        6350
total_ipc                                   0.3411
