       0       12        M 0x00001000 csrr    a0, mhartid            #; mhartid = 0, (wrb) a0  <-- 0
       0       32        M 0x00001004 auipc   a1, 0x0                #; (wrb) a1  <-- 4100
       0       56        M 0x00001008 addi    a1, a1, 32             #; a1  = 4100, (wrb) a1  <-- 4132
       0       84        M 0x0000100c auipc   t0, 0x0                #; (wrb) t0  <-- 4108
       0      104        M 0x00001010 lw      t0, 20(t0)             #; t0  = 4108, t0  <~~ Word[0x00001020]
       0      115        M                                           #; (lsu) t0  <-- 0x80002770
       0      128        M 0x00001014 jalr    t0                     #; t0  = 0x80002770, (wrb) ra  <-- 4120, goto 0x80002770
       0      269        M 0x80002770 auipc   gp, 0x1                #; (wrb) gp  <-- 0x80003770
       0      270        M 0x80002774 addi    gp, gp, -232           #; gp  = 0x80003770, (wrb) gp  <-- 0x80003688
       0      271        M 0x80002778 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002778
       0      272        M 0x8000277c jalr    ra, ra, 964            #; ra  = 0x80002778, (wrb) ra  <-- 0x80002780, goto 0x80002b3c
       0      292        M 0x80002b3c mv      a4, a1                 #; a1  = 4132, (wrb) a4  <-- 4132
       0      304        M 0x80002b40 lw      a1, 4(a4)              #; a4  = 4132, a1  <~~ Word[0x00001028]
       0      334        M                                           #; (lsu) a1  <-- 8
       0      335        M 0x80002b44 lw      t0, 8(a4)              #; a4  = 4132, t0  <~~ Word[0x0000102c]
       0      374        M                                           #; (lsu) t0  <-- 0
       0      375        M 0x80002b48 lw      a2, 12(a4)             #; a4  = 4132, a2  <~~ Word[0x00001030]
       0      414        M                                           #; (lsu) a2  <-- 0x00100000
       0      415        M 0x80002b4c lw      t1, 16(a4)             #; a4  = 4132, t1  <~~ Word[0x00001034]
       0      454        M                                           #; (lsu) t1  <-- 0x00020000
       0      455        M 0x80002b50 lw      t2, 20(a4)             #; a4  = 4132, t2  <~~ Word[0x00001038]
       0      456        M 0x80002b54 sub     a0, a0, t0             #; a0  = 0, t0  = 0, (wrb) a0  <-- 0
       0      457        M 0x80002b58 div     t3, a0, a1             #; a0  = 0, a1  = 8
       0      460        M                                           #; (acc) t4  <-- 0x027e0eb3
       0      494        M                                           #; (lsu) t2  <-- 0
       0      495        M 0x80002b5c mul     t4, t3, t2             #; t3  = 0, t2  = 0
       0      498        M                                           #; (acc) a2  <-- 0x01d60633
       0      499        M 0x80002b60 add     a2, a2, t4             #; a2  = 0x00100000, t4  = 0, (wrb) a2  <-- 0x00100000
       0      500        M 0x80002b64 add     a3, a2, t1             #; a2  = 0x00100000, t1  = 0x00020000, (wrb) a3  <-- 0x00120000
       0      501        M 0x80002b68 remu    a0, a0, a1             #; a0  = 0, a1  = 8
       0      502        M 0x80002b6c ret                            #; ra  = 0x80002780, goto 0x80002780
       0      504        M                                           #; (acc) s0  <-- 0x00050413
       0      505        M 0x80002780 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
       0      506        M 0x80002784 mv      a0, a4                 #; a4  = 4132, (wrb) a0  <-- 4132
       0      507        M 0x80002788 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002788
       0      508        M 0x8000278c jalr    ra, ra, 1036           #; ra  = 0x80002788, (wrb) ra  <-- 0x80002790, goto 0x80002b94
       0      523        M 0x80002b94 lw      a0, 8(a0)              #; a0  = 4132, a0  <~~ Word[0x0000102c]
       0      524        M 0x80002b98 ret                            #; ra  = 0x80002790, goto 0x80002790
       0      543        M                                           #; (lsu) a0  <-- 0
       0      544        M 0x80002790 mv      t0, a0                 #; a0  = 0, (wrb) t0  <-- 0
       0      545        M 0x80002794 mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
       0      546        M 0x80002798 csrr    t1, mhartid            #; mhartid = 0, (wrb) t1  <-- 0
       0      547        M 0x8000279c sub     t0, t1, t0             #; t1  = 0, t0  = 0, (wrb) t0  <-- 0
       0      549        M 0x800027a0 bnez    t0, pc + 36            #; t0  = 0, not taken
       0      550        M 0x800027a4 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800027a4
       0      551        M 0x800027a8 addi    t0, t0, 1980           #; t0  = 0x800027a4, (wrb) t0  <-- 0x80002f60
       0      552        M 0x800027ac auipc   t1, 0x0                #; (wrb) t1  <-- 0x800027ac
       0      562        M 0x800027b0 addi    t1, t1, 1976           #; t1  = 0x800027ac, (wrb) t1  <-- 0x80002f64
       0      563        M 0x800027b4 bge     t0, t1, pc + 16        #; t0  = 0x80002f60, t1  = 0x80002f64, not taken
       0      564        M 0x800027b8 sw      zero, 0(t0)            #; t0  = 0x80002f60, 0 ~~> Word[0x80002f60]
       0      565        M 0x800027bc addi    t0, t0, 4              #; t0  = 0x80002f60, (wrb) t0  <-- 0x80002f64
       0      573        M 0x800027c0 blt     t0, t1, pc - 8         #; t0  = 0x80002f64, t1  = 0x80002f64, not taken
       0      574        M 0x800027c4 csrr    t0, misa               #; misa = 0x40801129, (wrb) t0  <-- 0x40801129
       0      575        M 0x800027c8 andi    t0, t0, 40             #; t0  = 0x40801129, (wrb) t0  <-- 40
       0      576        M 0x800027cc beqz    t0, pc + 132           #; t0  = 40, not taken
       0      586        M 0x800027d0 fcvt.d.w ft0, zero             #; ac1  = 0
       0      587        M 0x800027d4 fcvt.d.w ft1, zero             #; ac1  = 0, (f:fpu) ft0  <-- 0.0
       0      588        M 0x800027d8 fcvt.d.w ft2, zero             #; ac1  = 0, (f:fpu) ft1  <-- 0.0
       0      589        M 0x800027dc fcvt.d.w ft3, zero             #; ac1  = 0, (f:fpu) ft2  <-- 0.0
       0      590        M                                           #; (f:fpu) ft3  <-- 0.0
       0      598        M 0x800027e0 fcvt.d.w ft4, zero             #; ac1  = 0
       0      599        M 0x800027e4 fcvt.d.w ft5, zero             #; ac1  = 0, (f:fpu) ft4  <-- 0.0
       0      600        M 0x800027e8 fcvt.d.w ft6, zero             #; ac1  = 0, (f:fpu) ft5  <-- 0.0
       0      601        M 0x800027ec fcvt.d.w ft7, zero             #; ac1  = 0, (f:fpu) ft6  <-- 0.0
       0      602        M                                           #; (f:fpu) ft7  <-- 0.0
       0      610        M 0x800027f0 fcvt.d.w fs0, zero             #; ac1  = 0
       0      611        M 0x800027f4 fcvt.d.w fs1, zero             #; ac1  = 0, (f:fpu) fs0  <-- 0.0
       0      612        M 0x800027f8 fcvt.d.w fa0, zero             #; ac1  = 0, (f:fpu) fs1  <-- 0.0
       0      613        M 0x800027fc fcvt.d.w fa1, zero             #; ac1  = 0, (f:fpu) fa0  <-- 0.0
       0      614        M                                           #; (f:fpu) fa1  <-- 0.0
       0      622        M 0x80002800 fcvt.d.w fa2, zero             #; ac1  = 0
       0      623        M 0x80002804 fcvt.d.w fa3, zero             #; ac1  = 0, (f:fpu) fa2  <-- 0.0
       0      624        M 0x80002808 fcvt.d.w fa4, zero             #; ac1  = 0, (f:fpu) fa3  <-- 0.0
       0      625        M 0x8000280c fcvt.d.w fa5, zero             #; ac1  = 0, (f:fpu) fa4  <-- 0.0
       0      626        M                                           #; (f:fpu) fa5  <-- 0.0
       0      634        M 0x80002810 fcvt.d.w fa6, zero             #; ac1  = 0
       0      635        M 0x80002814 fcvt.d.w fa7, zero             #; ac1  = 0, (f:fpu) fa6  <-- 0.0
       0      636        M 0x80002818 fcvt.d.w fs2, zero             #; ac1  = 0, (f:fpu) fa7  <-- 0.0
       0      637        M 0x8000281c fcvt.d.w fs3, zero             #; ac1  = 0, (f:fpu) fs2  <-- 0.0
       0      638        M                                           #; (f:fpu) fs3  <-- 0.0
       0      646        M 0x80002820 fcvt.d.w fs4, zero             #; ac1  = 0
       0      647        M 0x80002824 fcvt.d.w fs5, zero             #; ac1  = 0, (f:fpu) fs4  <-- 0.0
       0      648        M 0x80002828 fcvt.d.w fs6, zero             #; ac1  = 0, (f:fpu) fs5  <-- 0.0
       0      649        M 0x8000282c fcvt.d.w fs7, zero             #; ac1  = 0, (f:fpu) fs6  <-- 0.0
       0      650        M                                           #; (f:fpu) fs7  <-- 0.0
       0      658        M 0x80002830 fcvt.d.w fs8, zero             #; ac1  = 0
       0      659        M 0x80002834 fcvt.d.w fs9, zero             #; ac1  = 0, (f:fpu) fs8  <-- 0.0
       0      660        M 0x80002838 fcvt.d.w fs10, zero            #; ac1  = 0, (f:fpu) fs9  <-- 0.0
       0      661        M 0x8000283c fcvt.d.w fs11, zero            #; ac1  = 0, (f:fpu) fs10 <-- 0.0
       0      662        M                                           #; (f:fpu) fs11 <-- 0.0
       0      670        M 0x80002840 fcvt.d.w ft8, zero             #; ac1  = 0
       0      671        M 0x80002844 fcvt.d.w ft9, zero             #; ac1  = 0, (f:fpu) ft8  <-- 0.0
       0      672        M 0x80002848 fcvt.d.w ft10, zero            #; ac1  = 0, (f:fpu) ft9  <-- 0.0
       0      673        M 0x8000284c fcvt.d.w ft11, zero            #; ac1  = 0, (f:fpu) ft10 <-- 0.0
       0      674        M                                           #; (f:fpu) ft11 <-- 0.0
       0      681        M 0x80002850 addi    a3, a3, -8             #; a3  = 0x00120000, (wrb) a3  <-- 0x0011fff8
       0      682        M 0x80002854 sw      zero, 0(a3)            #; a3  = 0x0011fff8, 0 ~~> Word[0x0011fff8]
       0      683        M 0x80002858 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002858
       0      684        M 0x8000285c lw      t0, 900(t0)            #; t0  = 0x80002858, t0  <~~ Word[0x80002bdc]
       0      704        M                                           #; (lsu) t0  <-- 136
       0      705        M 0x80002860 sub     a3, a3, t0             #; a3  = 0x0011fff8, t0  = 136, (wrb) a3  <-- 0x0011ff70
       0      706        M 0x80002864 mv      a5, a3                 #; a3  = 0x0011ff70, (wrb) a5  <-- 0x0011ff70
       0      707        M 0x80002868 auipc   t2, 0x0                #; (wrb) t2  <-- 0x80002868
       0      708        M 0x8000286c lw      t2, 880(t2)            #; t2  = 0x80002868, t2  <~~ Word[0x80002bd8]
       0      744        M                                           #; (lsu) t2  <-- 10
       0      745        M 0x80002870 sll     t0, a0, t2             #; a0  = 0, t2  = 10, (wrb) t0  <-- 0
       0      746        M 0x80002874 sll     t1, a1, t2             #; a1  = 8, t2  = 10, (wrb) t1  <-- 8192
       0      747        M 0x80002878 sub     sp, a3, t0             #; a3  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
       0      748        M 0x8000287c sub     a3, a3, t1             #; a3  = 0x0011ff70, t1  = 8192, (wrb) a3  <-- 0x0011df70
       0      749        M 0x80002880 slli    t0, a0, 3              #; a0  = 0, (wrb) t0  <-- 0
       0      750        M 0x80002884 slli    t1, a1, 3              #; a1  = 8, (wrb) t1  <-- 64
       0      751        M 0x80002888 sub     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
       0      752        M 0x8000288c sub     a3, a3, t1             #; a3  = 0x0011df70, t1  = 64, (wrb) a3  <-- 0x0011df30
       0      761        M 0x80002890 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002890
       0      762        M 0x80002894 addi    t0, t0, 1528           #; t0  = 0x80002890, (wrb) t0  <-- 0x80002e88
       0      763        M 0x80002898 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002898
       0      764        M 0x8000289c addi    t1, t1, 1520           #; t1  = 0x80002898, (wrb) t1  <-- 0x80002e88
       0      775        M 0x800028a0 auipc   t2, 0x0                #; (wrb) t2  <-- 0x800028a0
       0      776        M 0x800028a4 addi    t2, t2, 1512           #; t2  = 0x800028a0, (wrb) t2  <-- 0x80002e88
       0      777        M 0x800028a8 auipc   t3, 0x0                #; (wrb) t3  <-- 0x800028a8
       0      778        M 0x800028ac addi    t3, t3, 1520           #; t3  = 0x800028a8, (wrb) t3  <-- 0x80002e98
       0      787        M 0x800028b0 add     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0x80002e88, (wrb) sp  <-- 0x80122df8
       0      788        M 0x800028b4 sub     sp, sp, t1             #; sp  = 0x80122df8, t1  = 0x80002e88, (wrb) sp  <-- 0x0011ff70
       0      789        M 0x800028b8 add     sp, sp, t2             #; sp  = 0x0011ff70, t2  = 0x80002e88, (wrb) sp  <-- 0x80122df8
       0      790        M 0x800028bc sub     sp, sp, t3             #; sp  = 0x80122df8, t3  = 0x80002e98, (wrb) sp  <-- 0x0011ff60
       0      799        M 0x800028c0 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
       0      800        M 0x800028c4 mv      tp, sp                 #; sp  = 0x0011ff60, (wrb) tp  <-- 0x0011ff60
       0      801        M 0x800028c8 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
       0      802        M 0x800028cc mv      t4, tp                 #; tp  = 0x0011ff60, (wrb) t4  <-- 0x0011ff60
       0      811        M 0x800028d0 bge     t0, t1, pc + 24        #; t0  = 0x80002e88, t1  = 0x80002e88, taken, goto 0x800028e8
       0      823        M 0x800028e8 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800028e8
       0      824        M 0x800028ec addi    t0, t0, 1440           #; t0  = 0x800028e8, (wrb) t0  <-- 0x80002e88
       0      835        M 0x800028f0 auipc   t1, 0x0                #; (wrb) t1  <-- 0x800028f0
       0      836        M 0x800028f4 addi    t1, t1, 1448           #; t1  = 0x800028f0, (wrb) t1  <-- 0x80002e98
       0      837        M 0x800028f8 bge     t0, t1, pc + 20        #; t0  = 0x80002e88, t1  = 0x80002e98, not taken
       0      838        M 0x800028fc sw      zero, 0(t4)            #; t4  = 0x0011ff60, 0 ~~> Word[0x0011ff60]
       0      847        M 0x80002900 addi    t0, t0, 4              #; t0  = 0x80002e88, (wrb) t0  <-- 0x80002e8c
       0      848        M 0x80002904 addi    t4, t4, 4              #; t4  = 0x0011ff60, (wrb) t4  <-- 0x0011ff64
       0      849        M 0x80002908 blt     t0, t2, pc - 12        #; t0  = 0x80002e8c, t2  = 0x80002e88, not taken
       0      850        M 0x8000290c addi    sp, sp, -20            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff4c
       0      862        M 0x80002910 sw      a0, 0(sp)              #; sp  = 0x0011ff4c, 0 ~~> Word[0x0011ff4c]
       0      863        M 0x80002914 sw      a1, 4(sp)              #; sp  = 0x0011ff4c, 8 ~~> Word[0x0011ff50]
       0      864        M 0x80002918 sw      a2, 8(sp)              #; sp  = 0x0011ff4c, 0x00100000 ~~> Word[0x0011ff54]
       0      865        M 0x8000291c sw      a3, 12(sp)             #; sp  = 0x0011ff4c, 0x0011df30 ~~> Word[0x0011ff58]
       0      875        M 0x80002920 sw      a4, 16(sp)             #; sp  = 0x0011ff4c, 4132 ~~> Word[0x0011ff5c]
       0      876        M 0x80002924 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002924
       0      877        M 0x80002928 jalr    ra, ra, -1064          #; ra  = 0x80002924, (wrb) ra  <-- 0x8000292c, goto 0x800024fc
       0      899        M 0x800024fc sw      a5, 0(a5)              #; a5  = 0x0011ff70, 0x0011ff70 ~~> Word[0x0011ff70]
       0      912        M 0x80002500 sw      a4, 4(a5)              #; a5  = 0x0011ff70, 4132 ~~> Word[0x0011ff74]
       0      913        M 0x80002504 lw      t1, 8(a4)              #; a4  = 4132, t1  <~~ Word[0x0000102c]
       0      931        M                                           #; (lsu) t1  <-- 0
       0      932        M 0x80002508 sw      t1, 8(a5)              #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff78]
       0      933        M 0x8000250c lw      a6, 40(a4)             #; a4  = 4132, a6  <~~ Word[0x0000104c]
       0      971        M                                           #; (lsu) a6  <-- 1
       0      972        M 0x80002510 lw      a7, 44(a4)             #; a4  = 4132, a7  <~~ Word[0x00001050]
       0     1011        M                                           #; (lsu) a7  <-- 1
       0     1012        M 0x80002514 lw      t0, 4(a4)              #; a4  = 4132, t0  <~~ Word[0x00001028]
       0     1013        M 0x80002518 mul     a6, a7, a6             #; a7  = 1, a6  = 1
       0     1016        M                                           #; (acc) a0  <-- 0x02580533
       0     1040        M                                           #; (lsu) t0  <-- 8
       0     1041        M 0x8000251c mul     a0, a6, t0             #; a6  = 1, t0  = 8
       0     1044        M                                           #; (acc) a2  <-- 0x00a7a623
       0     1045        M 0x80002520 sw      a0, 12(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff7c]
       0     1046        M 0x80002524 csrr    a7, mhartid            #; mhartid = 0, (wrb) a7  <-- 0
       0     1047        M 0x80002528 sub     a0, a7, t1             #; a7  = 0, t1  = 0, (wrb) a0  <-- 0
       0     1048        M 0x8000252c divu    a0, a0, t0             #; a0  = 0, t0  = 8
       0     1054        M 0x80002530 sw      a0, 16(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff80]
       0     1055        M 0x80002534 sw      a6, 20(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff84]
       0     1056        M 0x80002538 sw      t1, 24(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff88]
       0     1057        M 0x8000253c sw      a1, 28(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff8c]
       0     1067        M 0x80002540 lw      a0, 24(a4)             #; a4  = 4132, a0  <~~ Word[0x0000103c]
       0     1068        M 0x80002544 lui     a1, 0x10000            #; (wrb) a1  <-- 0x10000000
       0     1100        M                                           #; (lsu) a0  <-- 0x80000000
       0     1101        M 0x80002548 add     a0, a0, a1             #; a0  = 0x80000000, a1  = 0x10000000, (wrb) a0  <-- 0x90000000
       0     1102        M 0x8000254c sw      zero, 36(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff94]
       0     1103        M 0x80002550 sw      a0, 32(a5)             #; a5  = 0x0011ff70, 0x90000000 ~~> Word[0x0011ff90]
       0     1104        M 0x80002554 lw      a0, 32(a4)             #; a4  = 4132, a0  <~~ Word[0x00001044]
       0     1140        M                                           #; (lsu) a0  <-- 0
       0     1141        M 0x80002558 lw      a1, 36(a4)             #; a4  = 4132, a1  <~~ Word[0x00001048]
       0     1142        M 0x8000255c sw      a0, 40(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff98]
       0     1180        M                                           #; (lsu) a1  <-- 1
       0     1181        M 0x80002560 sw      a1, 44(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff9c]
       0     1182        M 0x80002564 sw      a2, 48(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffa0]
       0     1183        M 0x80002568 sw      zero, 52(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffa4]
       0     1184        M 0x8000256c sw      a3, 56(a5)             #; a5  = 0x0011ff70, 0x0011df30 ~~> Word[0x0011ffa8]
       0     1185        M 0x80002570 sw      zero, 60(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffac]
       0     1186        M 0x80002574 lw      a0, 16(a4)             #; a4  = 4132, a0  <~~ Word[0x00001034]
       0     1201        M                                           #; (lsu) a0  <-- 0x00020000
       0     1202        M 0x80002578 add     a6, a2, a0             #; a2  = 0x00100000, a0  = 0x00020000, (wrb) a6  <-- 0x00120000
       0     1203        M 0x8000257c addi    a1, a6, 400            #; a6  = 0x00120000, (wrb) a1  <-- 0x00120190
       0     1204        M 0x80002580 sw      a1, 112(a5)            #; a5  = 0x0011ff70, 0x00120190 ~~> Word[0x0011ffe0]
       0     1205        M 0x80002584 sltu    t0, a6, a0             #; a6  = 0x00120000, a0  = 0x00020000, (wrb) t0  <-- 0
       0     1206        M 0x80002588 srli    a1, a0, 1              #; a0  = 0x00020000, (wrb) a1  <-- 0x00010000
       0     1207        M 0x8000258c add     t1, a6, a1             #; a6  = 0x00120000, a1  = 0x00010000, (wrb) t1  <-- 0x00130000
       0     1215        M 0x80002590 sltu    a1, t1, a6             #; t1  = 0x00130000, a6  = 0x00120000, (wrb) a1  <-- 0
       0     1216        M 0x80002594 add     a1, t0, a1             #; t0  = 0, a1  = 0, (wrb) a1  <-- 0
       0     1217        M 0x80002598 sw      t1, 64(a5)             #; a5  = 0x0011ff70, 0x00130000 ~~> Word[0x0011ffb0]
       0     1218        M 0x8000259c sw      a1, 68(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffb4]
       0     1228        M 0x800025a0 slli    a0, a0, 1              #; a0  = 0x00020000, (wrb) a0  <-- 0x00040000
       0     1229        M 0x800025a4 add     a1, a0, a2             #; a0  = 0x00040000, a2  = 0x00100000, (wrb) a1  <-- 0x00140000
       0     1230        M 0x800025a8 sltu    a0, a1, a0             #; a1  = 0x00140000, a0  = 0x00040000, (wrb) a0  <-- 0
       0     1231        M 0x800025ac sw      a1, 72(a5)             #; a5  = 0x0011ff70, 0x00140000 ~~> Word[0x0011ffb8]
       0     1240        M 0x800025b0 sw      a0, 76(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffbc]
       0     1241        M 0x800025b4 sw      zero, 104(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd8]
       0     1244        M 0x800025b8 sw      zero, 108(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffdc]
       0     1245        M 0x800025bc lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1252        M 0x800025c0 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1253        M 0x800025c4 sw      a5, 0(a0)              #; a0  = 0x0011ff60, 0x0011ff70 ~~> Word[0x0011ff60]
       0     1254        M 0x800025c8 lw      a0, 0(a5)              #; a5  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1258        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1259        M 0x800025cc lw      a1, 24(a0)             #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ff88]
       0     1262        M                                           #; (lsu) a1  <-- 0
       0     1264        M 0x800025d0 lw      a0, 28(a0)             #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff8c]
       0     1265        M 0x800025d4 sub     a1, a7, a1             #; a7  = 0, a1  = 0, (wrb) a1  <-- 0
       0     1267        M                                           #; (lsu) a0  <-- 8
       0     1268        M 0x800025d8 remu    a0, a1, a0             #; a1  = 0, a0  = 8
       0     1269        M 0x800025dc lui     a1, 0x0                #; (wrb) a1  <-- 0
       0     1276        M 0x800025e0 add     a1, a1, tp             #; a1  = 0, tp  = 0x0011ff60, (wrb) a1  <-- 0x0011ff60
       0     1277        M 0x800025e4 sw      a0, 4(a1)              #; a1  = 0x0011ff60, 0 ~~> Word[0x0011ff64]
       0     1278        M 0x800025e8 li      a0, 1096               #; (wrb) a0  <-- 1096
       0     1279        M 0x800025ec mul     a0, a7, a0             #; a7  = 0, a0  = 1096
       0     1288        M 0x800025f0 auipc   a1, 0x1                #; (wrb) a1  <-- 0x800035f0
       0     1289        M 0x800025f4 addi    a1, a1, -1676          #; a1  = 0x800035f0, (wrb) a1  <-- 0x80002f64
       0     1290        M 0x800025f8 add     a0, a0, a1             #; a0  = 0, a1  = 0x80002f64, (wrb) a0  <-- 0x80002f64
       0     1291        M 0x800025fc sw      zero, 0(a0)            #; a0  = 0x80002f64, 0 ~~> Word[0x80002f64]
       0     1300        M 0x80002600 lw      a7, 48(a4)             #; a4  = 4132, a7  <~~ Word[0x00001054]
       0     1367        M                                           #; (lsu) a7  <-- 0xffff0000
       0     1368        M 0x80002604 sw      a7, 116(a5)            #; a5  = 0x0011ff70, 0xffff0000 ~~> Word[0x0011ffe4]
       0     1369        M 0x80002608 sw      a6, 124(a5)            #; a5  = 0x0011ff70, 0x00120000 ~~> Word[0x0011ffec]
       0     1370        M 0x8000260c sw      zero, 120(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffe8]
       0     1371        M 0x80002610 addi    a4, a6, 384            #; a6  = 0x00120000, (wrb) a4  <-- 0x00120180
       0     1372        M 0x80002614 sw      a4, 128(a5)            #; a5  = 0x0011ff70, 0x00120180 ~~> Word[0x0011fff0]
       0     1373        M 0x80002618 addi    a0, a2, 7              #; a2  = 0x00100000, (wrb) a0  <-- 0x00100007
       0     1374        M 0x8000261c andi    a0, a0, -8             #; a0  = 0x00100007, (wrb) a0  <-- 0x00100000
       0     1375        M 0x80002620 sw      a0, 80(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc0]
       0     1376        M 0x80002624 sub     a2, a3, a2             #; a3  = 0x0011df30, a2  = 0x00100000, (wrb) a2  <-- 0x0001df30
       0     1377        M 0x80002628 sw      a2, 84(a5)             #; a5  = 0x0011ff70, 0x0001df30 ~~> Word[0x0011ffc4]
       0     1378        M 0x8000262c sw      a0, 88(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc8]
       0     1379        M 0x80002630 lw      a0, 0(a1)              #; a1  = 0x80002f64, a0  <~~ Word[0x80002f64]
       0     1390        M                                           #; (lsu) a0  <-- 0
       0     1391        M 0x80002634 addi    a0, a0, 1103           #; a0  = 0, (wrb) a0  <-- 1103
       0     1392        M 0x80002638 andi    a0, a0, -8             #; a0  = 1103, (wrb) a0  <-- 1096
       0     1393        M 0x8000263c sw      a0, 92(a5)             #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffcc]
       0     1394        M 0x80002640 sw      zero, 96(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd0]
       0     1395        M 0x80002644 sw      a0, 100(a5)            #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffd4]
       0     1396        M 0x80002648 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1397        M 0x8000264c add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1398        M 0x80002650 sw      a7, 8(a0)              #; a0  = 0x0011ff60, 0xffff0000 ~~> Word[0x0011ff68]
       0     1399        M 0x80002654 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1400        M 0x80002658 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1401        M 0x8000265c sw      a4, 12(a0)             #; a0  = 0x0011ff60, 0x00120180 ~~> Word[0x0011ff6c]
       0     1406        M 0x80002660 ret                            #; ra  = 0x8000292c, goto 0x8000292c
       0     1421        M 0x8000292c lw      a0, 0(sp)              #; sp  = 0x0011ff4c, a0  <~~ Word[0x0011ff4c]
       0     1424        M                                           #; (lsu) a0  <-- 0
       0     1425        M 0x80002930 lw      a1, 4(sp)              #; sp  = 0x0011ff4c, a1  <~~ Word[0x0011ff50]
       0     1428        M                                           #; (lsu) a1  <-- 8
       0     1429        M 0x80002934 lw      a2, 8(sp)              #; sp  = 0x0011ff4c, a2  <~~ Word[0x0011ff54]
       0     1432        M                                           #; (lsu) a2  <-- 0x00100000
       0     1433        M 0x80002938 lw      a3, 12(sp)             #; sp  = 0x0011ff4c, a3  <~~ Word[0x0011ff58]
       0     1436        M                                           #; (lsu) a3  <-- 0x0011df30
       0     1437        M 0x8000293c lw      a4, 16(sp)             #; sp  = 0x0011ff4c, a4  <~~ Word[0x0011ff5c]
       0     1438        M 0x80002940 addi    sp, sp, 20             #; sp  = 0x0011ff4c, (wrb) sp  <-- 0x0011ff60
       0     1439        M 0x80002944 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002944
       0     1440        M 0x80002948 addi    t0, t0, 60             #; t0  = 0x80002944, (wrb) t0  <-- 0x80002980
       0     1441        M 0x8000294c csrw    mtvec, t0              #; t0  = 0x80002980, (lsu) a4  <-- 4132
       0     1449        M 0x80002950 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002950
       0     1450        M 0x80002954 jalr    ra, ra, 544            #; ra  = 0x80002950, (wrb) ra  <-- 0x80002958, goto 0x80002b70
       0     1466        M 0x80002b70 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
       0     1467        M 0x80002b74 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x80002958 ~~> Word[0x0011ff5c]
       0     1468        M 0x80002b78 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002b78
       0     1469        M 0x80002b7c jalr    ra, ra, -1268          #; ra  = 0x80002b78, (wrb) ra  <-- 0x80002b80, goto 0x80002684
       0     1487        M 0x80002684 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1488        M 0x80002688 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1489        M 0x8000268c lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     1492        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1499        M 0x80002690 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1503        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1504        M 0x80002694 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
       0     1505        M 0x80002698 ret                            #; ra  = 0x80002b80, goto 0x80002b80
       0     1507        M                                           #; (lsu) a0  <-- 0x00120190
       0     1508        M 0x80002b80 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
       0     1537        M                                           #; (lsu) a0  <-- 0
       0     1538        M 0x80002b84 mv      zero, a0               #; a0  = 0
       0     1539        M 0x80002b88 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
       0     1540        M 0x80002b8c addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
       0     1542        M                                           #; (lsu) ra  <-- 0x80002958
       0     1543        M 0x80002b90 ret                            #; ra  = 0x80002958, goto 0x80002958
       0     1547        M 0x80002958 auipc   ra, 0xffffe            #; (wrb) ra  <-- 0x80000958
       0     1548        M 0x8000295c jalr    ra, ra, -804           #; ra  = 0x80000958, (wrb) ra  <-- 0x80002960, goto 0x80000634
       0     1553        M 0x80000634 addi    sp, sp, -32            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff40
       0     1554        M 0x80000638 sw      ra, 28(sp)             #; sp  = 0x0011ff40, 0x80002960 ~~> Word[0x0011ff5c]
       0     1556        M 0x80000640 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1557        M 0x80000644 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
                         M 0x8000063c fsd     fs0, 16(sp)            #; 0.0 ~~> Doub[0x0011ff50]
       0     1558        M 0x80000648 lw      a1, 4(a0)              #; a0  = 0x0011ff60, a1  <~~ Word[0x0011ff64]
       0     1559        M 0x8000064c li      a0, 0                  #; (wrb) a0  <-- 0
       0     1561        M                                           #; (lsu) a1  <-- 0
       0     1569        M 0x80000650 bnez    a1, pc + 584           #; a1  = 0, not taken
       0     1570        M 0x80000654 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1571        M 0x80000658 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1572        M 0x8000065c lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     1575        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1581        M 0x80000660 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1584        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1585        M 0x80000664 lw      a1, 88(a0)             #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ffc8]
       0     1588        M                                           #; (lsu) a1  <-- 0x00100000
       0     1589        M 0x80000668 lw      a3, 80(a0)             #; a0  = 0x0011ff70, a3  <~~ Word[0x0011ffc0]
       0     1592        M                                           #; (lsu) a3  <-- 0x00100000
       0     1593        M 0x8000066c lw      a4, 84(a0)             #; a0  = 0x0011ff70, a4  <~~ Word[0x0011ffc4]
       0     1596        M                                           #; (lsu) a4  <-- 0x0001df30
       0     1597        M 0x80000670 addi    a2, a1, 2016           #; a1  = 0x00100000, (wrb) a2  <-- 0x001007e0
       0     1598        M 0x80000674 addi    a2, a2, 2016           #; a2  = 0x001007e0, (wrb) a2  <-- 0x00100fc0
       0     1599        M 0x80000678 add     a3, a4, a3             #; a4  = 0x0001df30, a3  = 0x00100000, (wrb) a3  <-- 0x0011df30
       0     1600        M 0x8000067c bgeu    a3, a2, pc + 12        #; a3  = 0x0011df30, a2  = 0x00100fc0, taken, goto 0x80000688
       0     1610        M 0x80000688 sw      a2, 88(a0)             #; a0  = 0x0011ff70, 0x00100fc0 ~~> Word[0x0011ffc8]
       0     1611        M 0x8000068c auipc   a0, 0x3                #; (wrb) a0  <-- 0x8000368c
       0     1626        M 0x80000690 addi    a0, a0, -2036          #; a0  = 0x8000368c, (wrb) a0  <-- 0x80002e98
       0     1628        M 0x80000698 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003698
       0     1629        M 0x8000069c addi    a0, a0, -2040          #; a0  = 0x80003698, (wrb) a0  <-- 0x80002ea0
                         M 0x80000694 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002e98]
       0     1638        M                                           #; (f:lsu) ft0  <-- 0.001
       0     1647        M 0x800006a8 li      a0, 504                #; (wrb) a0  <-- 504
                         M 0x800006a0 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80002ea0]
       0     1648        M 0x800006ac mv      a2, a1                 #; a1  = 0x00100000, (wrb) a2  <-- 0x00100000
                         M 0x800006a4 fcvt.d.w ft2, zero             #; ac1  = 0
       0     1649        M                                           #; (f:fpu) ft2  <-- 0.0
       0     1656        M                                           #; (f:lsu) ft1  <-- 1.0
       0     1659        M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 0.0, ft0  = 0.001
       0     1660        M 0x800006bc addi    a0, a0, -1             #; a0  = 504, (wrb) a0  <-- 503
       0     1662        M                                           #; (f:fpu) ft3  <-- 0.0
       0     1663        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.0 ~~> Doub[0x00100000]
       0     1664        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 0.0, ft1  = 1.0
       0     1667        M                                           #; (f:fpu) ft2  <-- 1.0
       0     1669        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100000, (wrb) a2  <-- 0x00100008
       0     1670        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 503, taken, goto 0x800006b0
       0     1673        M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 1.0, ft0  = 0.001
       0     1674        M 0x800006bc addi    a0, a0, -1             #; a0  = 503, (wrb) a0  <-- 502
       0     1675        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100008, (wrb) a2  <-- 0x00100010
       0     1676        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 502, taken, goto 0x800006b0
                         M                                           #; (f:fpu) ft3  <-- 0.001
       0     1677        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.001 ~~> Doub[0x00100008]
       0     1678        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 1.0, ft1  = 1.0
       0     1680        M 0x800006bc addi    a0, a0, -1             #; a0  = 502, (wrb) a0  <-- 501
       0     1681        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100010, (wrb) a2  <-- 0x00100018
                         M                                           #; (f:fpu) ft2  <-- 2.0
       0     1682        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 501, taken, goto 0x800006b0
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 2.0, ft0  = 0.001
       0     1685        M                                           #; (f:fpu) ft3  <-- 0.002
       0     1686        M 0x800006bc addi    a0, a0, -1             #; a0  = 501, (wrb) a0  <-- 500
                         M 0x800006b4 fsd     ft3, 0(a2)             #; 0.002 ~~> Doub[0x00100010]
       0     1687        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100018, (wrb) a2  <-- 0x00100020
                         M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 2.0, ft1  = 1.0
       0     1688        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 500, taken, goto 0x800006b0
       0     1690        M                                           #; (f:fpu) ft2  <-- 3.0
       0     1691        M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 3.0, ft0  = 0.001
       0     1692        M 0x800006bc addi    a0, a0, -1             #; a0  = 500, (wrb) a0  <-- 499
       0     1693        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100020, (wrb) a2  <-- 0x00100028
       0     1694        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 499, taken, goto 0x800006b0
                         M                                           #; (f:fpu) ft3  <-- 0.003
       0     1695        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.003 ~~> Doub[0x00100018]
       0     1696        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 3.0, ft1  = 1.0
       0     1698        M 0x800006bc addi    a0, a0, -1             #; a0  = 499, (wrb) a0  <-- 498
       0     1699        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100028, (wrb) a2  <-- 0x00100030
                         M                                           #; (f:fpu) ft2  <-- 4.0
       0     1700        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 498, taken, goto 0x800006b0
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 4.0, ft0  = 0.001
       0     1703        M                                           #; (f:fpu) ft3  <-- 0.004
       0     1704        M 0x800006bc addi    a0, a0, -1             #; a0  = 498, (wrb) a0  <-- 497
                         M 0x800006b4 fsd     ft3, 0(a2)             #; 0.004 ~~> Doub[0x00100020]
       0     1705        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100030, (wrb) a2  <-- 0x00100038
                         M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 4.0, ft1  = 1.0
       0     1706        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 497, taken, goto 0x800006b0
       0     1708        M                                           #; (f:fpu) ft2  <-- 5.0
       0     1709        M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 5.0, ft0  = 0.001
       0     1710        M 0x800006bc addi    a0, a0, -1             #; a0  = 497, (wrb) a0  <-- 496
       0     1711        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100038, (wrb) a2  <-- 0x00100040
       0     1712        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 496, taken, goto 0x800006b0
                         M                                           #; (f:fpu) ft3  <-- 0.005
       0     1713        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.005 ~~> Doub[0x00100028]
       0     1714        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 5.0, ft1  = 1.0
       0     1716        M 0x800006bc addi    a0, a0, -1             #; a0  = 496, (wrb) a0  <-- 495
       0     1717        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100040, (wrb) a2  <-- 0x00100048
                         M                                           #; (f:fpu) ft2  <-- 6.0
       0     1718        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 495, taken, goto 0x800006b0
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 6.0, ft0  = 0.001
       0     1721        M                                           #; (f:fpu) ft3  <-- 0.006
       0     1722        M 0x800006bc addi    a0, a0, -1             #; a0  = 495, (wrb) a0  <-- 494
                         M 0x800006b4 fsd     ft3, 0(a2)             #; 0.006 ~~> Doub[0x00100030]
       0     1723        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100048, (wrb) a2  <-- 0x00100050
                         M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 6.0, ft1  = 1.0
       0     1724        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 494, taken, goto 0x800006b0
       0     1726        M                                           #; (f:fpu) ft2  <-- 7.0
       0     1727        M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 7.0, ft0  = 0.001
       0     1728        M 0x800006bc addi    a0, a0, -1             #; a0  = 494, (wrb) a0  <-- 493
       0     1729        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100050, (wrb) a2  <-- 0x00100058
       0     1730        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 493, taken, goto 0x800006b0
                         M                                           #; (f:fpu) ft3  <-- 0.007
       0     1731        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.007 ~~> Doub[0x00100038]
       0     1732        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 7.0, ft1  = 1.0
       0     1734        M 0x800006bc addi    a0, a0, -1             #; a0  = 493, (wrb) a0  <-- 492
       0     1735        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100058, (wrb) a2  <-- 0x00100060
                         M                                           #; (f:fpu) ft2  <-- 8.0
       0     1736        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 492, taken, goto 0x800006b0
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 8.0, ft0  = 0.001
       0     1739        M                                           #; (f:fpu) ft3  <-- 0.008
       0     1740        M 0x800006bc addi    a0, a0, -1             #; a0  = 492, (wrb) a0  <-- 491
                         M 0x800006b4 fsd     ft3, 0(a2)             #; 0.008 ~~> Doub[0x00100040]
       0     1741        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100060, (wrb) a2  <-- 0x00100068
                         M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 8.0, ft1  = 1.0
       0     1742        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 491, taken, goto 0x800006b0
       0     1744        M                                           #; (f:fpu) ft2  <-- 9.0
       0     1745        M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 9.0, ft0  = 0.001
       0     1746        M 0x800006bc addi    a0, a0, -1             #; a0  = 491, (wrb) a0  <-- 490
       0     1747        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100068, (wrb) a2  <-- 0x00100070
       0     1748        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 490, taken, goto 0x800006b0
                         M                                           #; (f:fpu) ft3  <-- 0.0090000
       0     1749        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.0090000 ~~> Doub[0x00100048]
       0     1750        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 9.0, ft1  = 1.0
       0     1752        M 0x800006bc addi    a0, a0, -1             #; a0  = 490, (wrb) a0  <-- 489
       0     1753        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100070, (wrb) a2  <-- 0x00100078
                         M                                           #; (f:fpu) ft2  <-- 10.0
       0     1754        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 489, taken, goto 0x800006b0
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 10.0, ft0  = 0.001
       0     1757        M                                           #; (f:fpu) ft3  <-- 0.01
       0     1758        M 0x800006bc addi    a0, a0, -1             #; a0  = 489, (wrb) a0  <-- 488
                         M 0x800006b4 fsd     ft3, 0(a2)             #; 0.01 ~~> Doub[0x00100050]
       0     1759        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100078, (wrb) a2  <-- 0x00100080
                         M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 10.0, ft1  = 1.0
       0     1760        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 488, taken, goto 0x800006b0
       0     1762        M                                           #; (f:fpu) ft2  <-- 11.0
       0     1763        M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 11.0, ft0  = 0.001
       0     1764        M 0x800006bc addi    a0, a0, -1             #; a0  = 488, (wrb) a0  <-- 487
       0     1765        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100080, (wrb) a2  <-- 0x00100088
       0     1766        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 487, taken, goto 0x800006b0
                         M                                           #; (f:fpu) ft3  <-- 0.011
       0     1767        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.011 ~~> Doub[0x00100058]
       0     1768        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 11.0, ft1  = 1.0
       0     1771        M 0x800006bc addi    a0, a0, -1             #; a0  = 487, (wrb) a0  <-- 486
                         M                                           #; (f:fpu) ft2  <-- 12.0
       0     1772        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100088, (wrb) a2  <-- 0x00100090
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 12.0, ft0  = 0.001
       0     1773        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 486, taken, goto 0x800006b0
       0     1775        M                                           #; (f:fpu) ft3  <-- 0.012
       0     1776        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.012 ~~> Doub[0x00100060]
       0     1777        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 12.0, ft1  = 1.0
       0     1780        M 0x800006bc addi    a0, a0, -1             #; a0  = 486, (wrb) a0  <-- 485
                         M                                           #; (f:fpu) ft2  <-- 13.0
       0     1781        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100090, (wrb) a2  <-- 0x00100098
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 13.0, ft0  = 0.001
       0     1782        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 485, taken, goto 0x800006b0
       0     1784        M                                           #; (f:fpu) ft3  <-- 0.0130000
       0     1785        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.0130000 ~~> Doub[0x00100068]
       0     1786        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 13.0, ft1  = 1.0
       0     1789        M 0x800006bc addi    a0, a0, -1             #; a0  = 485, (wrb) a0  <-- 484
                         M                                           #; (f:fpu) ft2  <-- 14.0
       0     1790        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100098, (wrb) a2  <-- 0x001000a0
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 14.0, ft0  = 0.001
       0     1791        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 484, taken, goto 0x800006b0
       0     1793        M                                           #; (f:fpu) ft3  <-- 0.014
       0     1794        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.014 ~~> Doub[0x00100070]
       0     1795        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 14.0, ft1  = 1.0
       0     1798        M 0x800006bc addi    a0, a0, -1             #; a0  = 484, (wrb) a0  <-- 483
                         M                                           #; (f:fpu) ft2  <-- 15.0
       0     1799        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001000a0, (wrb) a2  <-- 0x001000a8
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 15.0, ft0  = 0.001
       0     1800        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 483, taken, goto 0x800006b0
       0     1802        M                                           #; (f:fpu) ft3  <-- 0.015
       0     1803        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.015 ~~> Doub[0x00100078]
       0     1804        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 15.0, ft1  = 1.0
       0     1807        M 0x800006bc addi    a0, a0, -1             #; a0  = 483, (wrb) a0  <-- 482
                         M                                           #; (f:fpu) ft2  <-- 16.0
       0     1808        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001000a8, (wrb) a2  <-- 0x001000b0
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 16.0, ft0  = 0.001
       0     1809        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 482, taken, goto 0x800006b0
       0     1811        M                                           #; (f:fpu) ft3  <-- 0.016
       0     1812        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.016 ~~> Doub[0x00100080]
       0     1813        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 16.0, ft1  = 1.0
       0     1816        M 0x800006bc addi    a0, a0, -1             #; a0  = 482, (wrb) a0  <-- 481
                         M                                           #; (f:fpu) ft2  <-- 17.0
       0     1817        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001000b0, (wrb) a2  <-- 0x001000b8
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 17.0, ft0  = 0.001
       0     1818        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 481, taken, goto 0x800006b0
       0     1820        M                                           #; (f:fpu) ft3  <-- 0.017
       0     1821        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.017 ~~> Doub[0x00100088]
       0     1822        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 17.0, ft1  = 1.0
       0     1825        M 0x800006bc addi    a0, a0, -1             #; a0  = 481, (wrb) a0  <-- 480
                         M                                           #; (f:fpu) ft2  <-- 18.0
       0     1826        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001000b8, (wrb) a2  <-- 0x001000c0
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 18.0, ft0  = 0.001
       0     1827        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 480, taken, goto 0x800006b0
       0     1829        M                                           #; (f:fpu) ft3  <-- 0.0180000
       0     1830        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.0180000 ~~> Doub[0x00100090]
       0     1831        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 18.0, ft1  = 1.0
       0     1834        M 0x800006bc addi    a0, a0, -1             #; a0  = 480, (wrb) a0  <-- 479
                         M                                           #; (f:fpu) ft2  <-- 19.0
       0     1835        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001000c0, (wrb) a2  <-- 0x001000c8
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 19.0, ft0  = 0.001
       0     1836        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 479, taken, goto 0x800006b0
       0     1838        M                                           #; (f:fpu) ft3  <-- 0.019
       0     1839        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.019 ~~> Doub[0x00100098]
       0     1840        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 19.0, ft1  = 1.0
       0     1843        M 0x800006bc addi    a0, a0, -1             #; a0  = 479, (wrb) a0  <-- 478
                         M                                           #; (f:fpu) ft2  <-- 20.0
       0     1844        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001000c8, (wrb) a2  <-- 0x001000d0
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 20.0, ft0  = 0.001
       0     1845        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 478, taken, goto 0x800006b0
       0     1847        M                                           #; (f:fpu) ft3  <-- 0.02
       0     1848        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.02 ~~> Doub[0x001000a0]
       0     1849        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 20.0, ft1  = 1.0
       0     1852        M 0x800006bc addi    a0, a0, -1             #; a0  = 478, (wrb) a0  <-- 477
                         M                                           #; (f:fpu) ft2  <-- 21.0
       0     1853        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001000d0, (wrb) a2  <-- 0x001000d8
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 21.0, ft0  = 0.001
       0     1854        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 477, taken, goto 0x800006b0
       0     1856        M                                           #; (f:fpu) ft3  <-- 0.021
       0     1857        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.021 ~~> Doub[0x001000a8]
       0     1858        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 21.0, ft1  = 1.0
       0     1861        M 0x800006bc addi    a0, a0, -1             #; a0  = 477, (wrb) a0  <-- 476
                         M                                           #; (f:fpu) ft2  <-- 22.0
       0     1862        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001000d8, (wrb) a2  <-- 0x001000e0
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 22.0, ft0  = 0.001
       0     1863        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 476, taken, goto 0x800006b0
       0     1865        M                                           #; (f:fpu) ft3  <-- 0.022
       0     1866        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.022 ~~> Doub[0x001000b0]
       0     1867        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 22.0, ft1  = 1.0
       0     1870        M 0x800006bc addi    a0, a0, -1             #; a0  = 476, (wrb) a0  <-- 475
                         M                                           #; (f:fpu) ft2  <-- 23.0
       0     1871        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001000e0, (wrb) a2  <-- 0x001000e8
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 23.0, ft0  = 0.001
       0     1872        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 475, taken, goto 0x800006b0
       0     1874        M                                           #; (f:fpu) ft3  <-- 0.023
       0     1875        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.023 ~~> Doub[0x001000b8]
       0     1876        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 23.0, ft1  = 1.0
       0     1879        M 0x800006bc addi    a0, a0, -1             #; a0  = 475, (wrb) a0  <-- 474
                         M                                           #; (f:fpu) ft2  <-- 24.0
       0     1880        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001000e8, (wrb) a2  <-- 0x001000f0
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 24.0, ft0  = 0.001
       0     1881        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 474, taken, goto 0x800006b0
       0     1883        M                                           #; (f:fpu) ft3  <-- 0.024
       0     1884        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.024 ~~> Doub[0x001000c0]
       0     1885        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 24.0, ft1  = 1.0
       0     1888        M 0x800006bc addi    a0, a0, -1             #; a0  = 474, (wrb) a0  <-- 473
                         M                                           #; (f:fpu) ft2  <-- 25.0
       0     1889        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001000f0, (wrb) a2  <-- 0x001000f8
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 25.0, ft0  = 0.001
       0     1890        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 473, taken, goto 0x800006b0
       0     1892        M                                           #; (f:fpu) ft3  <-- 0.025
       0     1893        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.025 ~~> Doub[0x001000c8]
       0     1894        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 25.0, ft1  = 1.0
       0     1897        M 0x800006bc addi    a0, a0, -1             #; a0  = 473, (wrb) a0  <-- 472
                         M                                           #; (f:fpu) ft2  <-- 26.0
       0     1898        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001000f8, (wrb) a2  <-- 0x00100100
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 26.0, ft0  = 0.001
       0     1899        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 472, taken, goto 0x800006b0
       0     1901        M                                           #; (f:fpu) ft3  <-- 0.0260000
       0     1902        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.0260000 ~~> Doub[0x001000d0]
       0     1903        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 26.0, ft1  = 1.0
       0     1906        M 0x800006bc addi    a0, a0, -1             #; a0  = 472, (wrb) a0  <-- 471
                         M                                           #; (f:fpu) ft2  <-- 27.0
       0     1907        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100100, (wrb) a2  <-- 0x00100108
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 27.0, ft0  = 0.001
       0     1908        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 471, taken, goto 0x800006b0
       0     1910        M                                           #; (f:fpu) ft3  <-- 0.027
       0     1911        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.027 ~~> Doub[0x001000d8]
       0     1912        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 27.0, ft1  = 1.0
       0     1915        M 0x800006bc addi    a0, a0, -1             #; a0  = 471, (wrb) a0  <-- 470
                         M                                           #; (f:fpu) ft2  <-- 28.0
       0     1916        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100108, (wrb) a2  <-- 0x00100110
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 28.0, ft0  = 0.001
       0     1917        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 470, taken, goto 0x800006b0
       0     1919        M                                           #; (f:fpu) ft3  <-- 0.028
       0     1920        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.028 ~~> Doub[0x001000e0]
       0     1921        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 28.0, ft1  = 1.0
       0     1924        M 0x800006bc addi    a0, a0, -1             #; a0  = 470, (wrb) a0  <-- 469
                         M                                           #; (f:fpu) ft2  <-- 29.0
       0     1925        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100110, (wrb) a2  <-- 0x00100118
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 29.0, ft0  = 0.001
       0     1926        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 469, taken, goto 0x800006b0
       0     1928        M                                           #; (f:fpu) ft3  <-- 0.029
       0     1929        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.029 ~~> Doub[0x001000e8]
       0     1930        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 29.0, ft1  = 1.0
       0     1933        M 0x800006bc addi    a0, a0, -1             #; a0  = 469, (wrb) a0  <-- 468
                         M                                           #; (f:fpu) ft2  <-- 30.0
       0     1934        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100118, (wrb) a2  <-- 0x00100120
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 30.0, ft0  = 0.001
       0     1935        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 468, taken, goto 0x800006b0
       0     1937        M                                           #; (f:fpu) ft3  <-- 0.03
       0     1938        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.03 ~~> Doub[0x001000f0]
       0     1939        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 30.0, ft1  = 1.0
       0     1942        M 0x800006bc addi    a0, a0, -1             #; a0  = 468, (wrb) a0  <-- 467
                         M                                           #; (f:fpu) ft2  <-- 31.0
       0     1943        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100120, (wrb) a2  <-- 0x00100128
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 31.0, ft0  = 0.001
       0     1944        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 467, taken, goto 0x800006b0
       0     1946        M                                           #; (f:fpu) ft3  <-- 0.031
       0     1947        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.031 ~~> Doub[0x001000f8]
       0     1948        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 31.0, ft1  = 1.0
       0     1951        M 0x800006bc addi    a0, a0, -1             #; a0  = 467, (wrb) a0  <-- 466
                         M                                           #; (f:fpu) ft2  <-- 32.0
       0     1952        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100128, (wrb) a2  <-- 0x00100130
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 32.0, ft0  = 0.001
       0     1953        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 466, taken, goto 0x800006b0
       0     1955        M                                           #; (f:fpu) ft3  <-- 0.032
       0     1956        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.032 ~~> Doub[0x00100100]
       0     1957        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 32.0, ft1  = 1.0
       0     1960        M 0x800006bc addi    a0, a0, -1             #; a0  = 466, (wrb) a0  <-- 465
                         M                                           #; (f:fpu) ft2  <-- 33.0
       0     1961        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100130, (wrb) a2  <-- 0x00100138
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 33.0, ft0  = 0.001
       0     1962        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 465, taken, goto 0x800006b0
       0     1964        M                                           #; (f:fpu) ft3  <-- 0.033
       0     1965        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.033 ~~> Doub[0x00100108]
       0     1966        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 33.0, ft1  = 1.0
       0     1969        M 0x800006bc addi    a0, a0, -1             #; a0  = 465, (wrb) a0  <-- 464
                         M                                           #; (f:fpu) ft2  <-- 34.0
       0     1970        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100138, (wrb) a2  <-- 0x00100140
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 34.0, ft0  = 0.001
       0     1971        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 464, taken, goto 0x800006b0
       0     1973        M                                           #; (f:fpu) ft3  <-- 0.034
       0     1974        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.034 ~~> Doub[0x00100110]
       0     1975        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 34.0, ft1  = 1.0
       0     1978        M 0x800006bc addi    a0, a0, -1             #; a0  = 464, (wrb) a0  <-- 463
                         M                                           #; (f:fpu) ft2  <-- 35.0
       0     1979        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100140, (wrb) a2  <-- 0x00100148
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 35.0, ft0  = 0.001
       0     1980        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 463, taken, goto 0x800006b0
       0     1982        M                                           #; (f:fpu) ft3  <-- 0.035
       0     1983        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.035 ~~> Doub[0x00100118]
       0     1984        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 35.0, ft1  = 1.0
       0     1987        M 0x800006bc addi    a0, a0, -1             #; a0  = 463, (wrb) a0  <-- 462
                         M                                           #; (f:fpu) ft2  <-- 36.0
       0     1988        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100148, (wrb) a2  <-- 0x00100150
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 36.0, ft0  = 0.001
       0     1989        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 462, taken, goto 0x800006b0
       0     1991        M                                           #; (f:fpu) ft3  <-- 0.0360000
       0     1992        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.0360000 ~~> Doub[0x00100120]
       0     1993        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 36.0, ft1  = 1.0
       0     1996        M 0x800006bc addi    a0, a0, -1             #; a0  = 462, (wrb) a0  <-- 461
                         M                                           #; (f:fpu) ft2  <-- 37.0
       0     1997        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100150, (wrb) a2  <-- 0x00100158
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 37.0, ft0  = 0.001
       0     1998        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 461, taken, goto 0x800006b0
       0     2000        M                                           #; (f:fpu) ft3  <-- 0.037
       0     2001        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.037 ~~> Doub[0x00100128]
       0     2002        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 37.0, ft1  = 1.0
       0     2005        M 0x800006bc addi    a0, a0, -1             #; a0  = 461, (wrb) a0  <-- 460
                         M                                           #; (f:fpu) ft2  <-- 38.0
       0     2006        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100158, (wrb) a2  <-- 0x00100160
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 38.0, ft0  = 0.001
       0     2007        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 460, taken, goto 0x800006b0
       0     2009        M                                           #; (f:fpu) ft3  <-- 0.038
       0     2010        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.038 ~~> Doub[0x00100130]
       0     2011        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 38.0, ft1  = 1.0
       0     2014        M 0x800006bc addi    a0, a0, -1             #; a0  = 460, (wrb) a0  <-- 459
                         M                                           #; (f:fpu) ft2  <-- 39.0
       0     2015        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100160, (wrb) a2  <-- 0x00100168
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 39.0, ft0  = 0.001
       0     2016        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 459, taken, goto 0x800006b0
       0     2018        M                                           #; (f:fpu) ft3  <-- 0.039
       0     2019        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.039 ~~> Doub[0x00100138]
       0     2020        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 39.0, ft1  = 1.0
       0     2023        M 0x800006bc addi    a0, a0, -1             #; a0  = 459, (wrb) a0  <-- 458
                         M                                           #; (f:fpu) ft2  <-- 40.0
       0     2024        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100168, (wrb) a2  <-- 0x00100170
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 40.0, ft0  = 0.001
       0     2025        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 458, taken, goto 0x800006b0
       0     2027        M                                           #; (f:fpu) ft3  <-- 0.04
       0     2028        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.04 ~~> Doub[0x00100140]
       0     2029        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 40.0, ft1  = 1.0
       0     2032        M 0x800006bc addi    a0, a0, -1             #; a0  = 458, (wrb) a0  <-- 457
                         M                                           #; (f:fpu) ft2  <-- 41.0
       0     2033        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100170, (wrb) a2  <-- 0x00100178
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 41.0, ft0  = 0.001
       0     2034        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 457, taken, goto 0x800006b0
       0     2036        M                                           #; (f:fpu) ft3  <-- 0.041
       0     2037        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.041 ~~> Doub[0x00100148]
       0     2038        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 41.0, ft1  = 1.0
       0     2041        M 0x800006bc addi    a0, a0, -1             #; a0  = 457, (wrb) a0  <-- 456
                         M                                           #; (f:fpu) ft2  <-- 42.0
       0     2042        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100178, (wrb) a2  <-- 0x00100180
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 42.0, ft0  = 0.001
       0     2043        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 456, taken, goto 0x800006b0
       0     2045        M                                           #; (f:fpu) ft3  <-- 0.042
       0     2046        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.042 ~~> Doub[0x00100150]
       0     2047        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 42.0, ft1  = 1.0
       0     2050        M 0x800006bc addi    a0, a0, -1             #; a0  = 456, (wrb) a0  <-- 455
                         M                                           #; (f:fpu) ft2  <-- 43.0
       0     2051        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100180, (wrb) a2  <-- 0x00100188
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 43.0, ft0  = 0.001
       0     2052        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 455, taken, goto 0x800006b0
       0     2054        M                                           #; (f:fpu) ft3  <-- 0.0430000
       0     2055        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.0430000 ~~> Doub[0x00100158]
       0     2056        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 43.0, ft1  = 1.0
       0     2059        M 0x800006bc addi    a0, a0, -1             #; a0  = 455, (wrb) a0  <-- 454
                         M                                           #; (f:fpu) ft2  <-- 44.0
       0     2060        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100188, (wrb) a2  <-- 0x00100190
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 44.0, ft0  = 0.001
       0     2061        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 454, taken, goto 0x800006b0
       0     2063        M                                           #; (f:fpu) ft3  <-- 0.044
       0     2064        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.044 ~~> Doub[0x00100160]
       0     2065        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 44.0, ft1  = 1.0
       0     2068        M 0x800006bc addi    a0, a0, -1             #; a0  = 454, (wrb) a0  <-- 453
                         M                                           #; (f:fpu) ft2  <-- 45.0
       0     2069        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100190, (wrb) a2  <-- 0x00100198
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 45.0, ft0  = 0.001
       0     2070        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 453, taken, goto 0x800006b0
       0     2072        M                                           #; (f:fpu) ft3  <-- 0.045
       0     2073        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.045 ~~> Doub[0x00100168]
       0     2074        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 45.0, ft1  = 1.0
       0     2077        M 0x800006bc addi    a0, a0, -1             #; a0  = 453, (wrb) a0  <-- 452
                         M                                           #; (f:fpu) ft2  <-- 46.0
       0     2078        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100198, (wrb) a2  <-- 0x001001a0
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 46.0, ft0  = 0.001
       0     2079        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 452, taken, goto 0x800006b0
       0     2081        M                                           #; (f:fpu) ft3  <-- 0.046
       0     2082        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.046 ~~> Doub[0x00100170]
       0     2083        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 46.0, ft1  = 1.0
       0     2086        M 0x800006bc addi    a0, a0, -1             #; a0  = 452, (wrb) a0  <-- 451
                         M                                           #; (f:fpu) ft2  <-- 47.0
       0     2087        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001001a0, (wrb) a2  <-- 0x001001a8
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 47.0, ft0  = 0.001
       0     2088        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 451, taken, goto 0x800006b0
       0     2090        M                                           #; (f:fpu) ft3  <-- 0.047
       0     2091        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.047 ~~> Doub[0x00100178]
       0     2092        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 47.0, ft1  = 1.0
       0     2095        M 0x800006bc addi    a0, a0, -1             #; a0  = 451, (wrb) a0  <-- 450
                         M                                           #; (f:fpu) ft2  <-- 48.0
       0     2096        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001001a8, (wrb) a2  <-- 0x001001b0
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 48.0, ft0  = 0.001
       0     2097        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 450, taken, goto 0x800006b0
       0     2099        M                                           #; (f:fpu) ft3  <-- 0.048
       0     2100        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.048 ~~> Doub[0x00100180]
       0     2101        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 48.0, ft1  = 1.0
       0     2104        M 0x800006bc addi    a0, a0, -1             #; a0  = 450, (wrb) a0  <-- 449
                         M                                           #; (f:fpu) ft2  <-- 49.0
       0     2105        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001001b0, (wrb) a2  <-- 0x001001b8
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 49.0, ft0  = 0.001
       0     2106        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 449, taken, goto 0x800006b0
       0     2108        M                                           #; (f:fpu) ft3  <-- 0.049
       0     2109        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.049 ~~> Doub[0x00100188]
       0     2110        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 49.0, ft1  = 1.0
       0     2113        M 0x800006bc addi    a0, a0, -1             #; a0  = 449, (wrb) a0  <-- 448
                         M                                           #; (f:fpu) ft2  <-- 50.0
       0     2114        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001001b8, (wrb) a2  <-- 0x001001c0
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 50.0, ft0  = 0.001
       0     2115        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 448, taken, goto 0x800006b0
       0     2117        M                                           #; (f:fpu) ft3  <-- 0.05
       0     2118        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.05 ~~> Doub[0x00100190]
       0     2119        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 50.0, ft1  = 1.0
       0     2122        M 0x800006bc addi    a0, a0, -1             #; a0  = 448, (wrb) a0  <-- 447
                         M                                           #; (f:fpu) ft2  <-- 51.0
       0     2123        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001001c0, (wrb) a2  <-- 0x001001c8
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 51.0, ft0  = 0.001
       0     2124        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 447, taken, goto 0x800006b0
       0     2126        M                                           #; (f:fpu) ft3  <-- 0.0510000
       0     2127        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.0510000 ~~> Doub[0x00100198]
       0     2128        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 51.0, ft1  = 1.0
       0     2131        M 0x800006bc addi    a0, a0, -1             #; a0  = 447, (wrb) a0  <-- 446
                         M                                           #; (f:fpu) ft2  <-- 52.0
       0     2132        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001001c8, (wrb) a2  <-- 0x001001d0
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 52.0, ft0  = 0.001
       0     2133        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 446, taken, goto 0x800006b0
       0     2135        M                                           #; (f:fpu) ft3  <-- 0.0520000
       0     2136        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.0520000 ~~> Doub[0x001001a0]
       0     2137        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 52.0, ft1  = 1.0
       0     2140        M 0x800006bc addi    a0, a0, -1             #; a0  = 446, (wrb) a0  <-- 445
                         M                                           #; (f:fpu) ft2  <-- 53.0
       0     2141        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001001d0, (wrb) a2  <-- 0x001001d8
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 53.0, ft0  = 0.001
       0     2142        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 445, taken, goto 0x800006b0
       0     2144        M                                           #; (f:fpu) ft3  <-- 0.053
       0     2145        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.053 ~~> Doub[0x001001a8]
       0     2146        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 53.0, ft1  = 1.0
       0     2149        M 0x800006bc addi    a0, a0, -1             #; a0  = 445, (wrb) a0  <-- 444
                         M                                           #; (f:fpu) ft2  <-- 54.0
       0     2150        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001001d8, (wrb) a2  <-- 0x001001e0
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 54.0, ft0  = 0.001
       0     2151        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 444, taken, goto 0x800006b0
       0     2153        M                                           #; (f:fpu) ft3  <-- 0.054
       0     2154        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.054 ~~> Doub[0x001001b0]
       0     2155        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 54.0, ft1  = 1.0
       0     2158        M 0x800006bc addi    a0, a0, -1             #; a0  = 444, (wrb) a0  <-- 443
                         M                                           #; (f:fpu) ft2  <-- 55.0
       0     2159        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001001e0, (wrb) a2  <-- 0x001001e8
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 55.0, ft0  = 0.001
       0     2160        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 443, taken, goto 0x800006b0
       0     2162        M                                           #; (f:fpu) ft3  <-- 0.055
       0     2163        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.055 ~~> Doub[0x001001b8]
       0     2164        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 55.0, ft1  = 1.0
       0     2167        M 0x800006bc addi    a0, a0, -1             #; a0  = 443, (wrb) a0  <-- 442
                         M                                           #; (f:fpu) ft2  <-- 56.0
       0     2168        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001001e8, (wrb) a2  <-- 0x001001f0
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 56.0, ft0  = 0.001
       0     2169        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 442, taken, goto 0x800006b0
       0     2171        M                                           #; (f:fpu) ft3  <-- 0.056
       0     2172        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.056 ~~> Doub[0x001001c0]
       0     2173        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 56.0, ft1  = 1.0
       0     2176        M 0x800006bc addi    a0, a0, -1             #; a0  = 442, (wrb) a0  <-- 441
                         M                                           #; (f:fpu) ft2  <-- 57.0
       0     2177        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001001f0, (wrb) a2  <-- 0x001001f8
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 57.0, ft0  = 0.001
       0     2178        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 441, taken, goto 0x800006b0
       0     2180        M                                           #; (f:fpu) ft3  <-- 0.057
       0     2181        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.057 ~~> Doub[0x001001c8]
       0     2182        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 57.0, ft1  = 1.0
       0     2185        M 0x800006bc addi    a0, a0, -1             #; a0  = 441, (wrb) a0  <-- 440
                         M                                           #; (f:fpu) ft2  <-- 58.0
       0     2186        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001001f8, (wrb) a2  <-- 0x00100200
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 58.0, ft0  = 0.001
       0     2187        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 440, taken, goto 0x800006b0
       0     2189        M                                           #; (f:fpu) ft3  <-- 0.058
       0     2190        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.058 ~~> Doub[0x001001d0]
       0     2191        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 58.0, ft1  = 1.0
       0     2194        M 0x800006bc addi    a0, a0, -1             #; a0  = 440, (wrb) a0  <-- 439
                         M                                           #; (f:fpu) ft2  <-- 59.0
       0     2195        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100200, (wrb) a2  <-- 0x00100208
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 59.0, ft0  = 0.001
       0     2196        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 439, taken, goto 0x800006b0
       0     2198        M                                           #; (f:fpu) ft3  <-- 0.0590000
       0     2199        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.0590000 ~~> Doub[0x001001d8]
       0     2200        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 59.0, ft1  = 1.0
       0     2203        M 0x800006bc addi    a0, a0, -1             #; a0  = 439, (wrb) a0  <-- 438
                         M                                           #; (f:fpu) ft2  <-- 60.0
       0     2204        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100208, (wrb) a2  <-- 0x00100210
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 60.0, ft0  = 0.001
       0     2205        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 438, taken, goto 0x800006b0
       0     2207        M                                           #; (f:fpu) ft3  <-- 0.06
       0     2208        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.06 ~~> Doub[0x001001e0]
       0     2209        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 60.0, ft1  = 1.0
       0     2212        M 0x800006bc addi    a0, a0, -1             #; a0  = 438, (wrb) a0  <-- 437
                         M                                           #; (f:fpu) ft2  <-- 61.0
       0     2213        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100210, (wrb) a2  <-- 0x00100218
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 61.0, ft0  = 0.001
       0     2214        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 437, taken, goto 0x800006b0
       0     2216        M                                           #; (f:fpu) ft3  <-- 0.061
       0     2217        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.061 ~~> Doub[0x001001e8]
       0     2218        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 61.0, ft1  = 1.0
       0     2221        M 0x800006bc addi    a0, a0, -1             #; a0  = 437, (wrb) a0  <-- 436
                         M                                           #; (f:fpu) ft2  <-- 62.0
       0     2222        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100218, (wrb) a2  <-- 0x00100220
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 62.0, ft0  = 0.001
       0     2223        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 436, taken, goto 0x800006b0
       0     2225        M                                           #; (f:fpu) ft3  <-- 0.062
       0     2226        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.062 ~~> Doub[0x001001f0]
       0     2227        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 62.0, ft1  = 1.0
       0     2230        M 0x800006bc addi    a0, a0, -1             #; a0  = 436, (wrb) a0  <-- 435
                         M                                           #; (f:fpu) ft2  <-- 63.0
       0     2231        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100220, (wrb) a2  <-- 0x00100228
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 63.0, ft0  = 0.001
       0     2232        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 435, taken, goto 0x800006b0
       0     2234        M                                           #; (f:fpu) ft3  <-- 0.063
       0     2235        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.063 ~~> Doub[0x001001f8]
       0     2236        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 63.0, ft1  = 1.0
       0     2239        M 0x800006bc addi    a0, a0, -1             #; a0  = 435, (wrb) a0  <-- 434
                         M                                           #; (f:fpu) ft2  <-- 64.0
       0     2240        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100228, (wrb) a2  <-- 0x00100230
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 64.0, ft0  = 0.001
       0     2241        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 434, taken, goto 0x800006b0
       0     2243        M                                           #; (f:fpu) ft3  <-- 0.064
       0     2244        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.064 ~~> Doub[0x00100200]
       0     2245        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 64.0, ft1  = 1.0
       0     2248        M 0x800006bc addi    a0, a0, -1             #; a0  = 434, (wrb) a0  <-- 433
                         M                                           #; (f:fpu) ft2  <-- 65.0
       0     2249        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100230, (wrb) a2  <-- 0x00100238
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 65.0, ft0  = 0.001
       0     2250        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 433, taken, goto 0x800006b0
       0     2252        M                                           #; (f:fpu) ft3  <-- 0.065
       0     2253        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.065 ~~> Doub[0x00100208]
       0     2254        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 65.0, ft1  = 1.0
       0     2257        M 0x800006bc addi    a0, a0, -1             #; a0  = 433, (wrb) a0  <-- 432
                         M                                           #; (f:fpu) ft2  <-- 66.0
       0     2258        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100238, (wrb) a2  <-- 0x00100240
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 66.0, ft0  = 0.001
       0     2259        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 432, taken, goto 0x800006b0
       0     2261        M                                           #; (f:fpu) ft3  <-- 0.066
       0     2262        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.066 ~~> Doub[0x00100210]
       0     2263        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 66.0, ft1  = 1.0
       0     2266        M 0x800006bc addi    a0, a0, -1             #; a0  = 432, (wrb) a0  <-- 431
                         M                                           #; (f:fpu) ft2  <-- 67.0
       0     2267        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100240, (wrb) a2  <-- 0x00100248
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 67.0, ft0  = 0.001
       0     2268        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 431, taken, goto 0x800006b0
       0     2270        M                                           #; (f:fpu) ft3  <-- 0.067
       0     2271        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.067 ~~> Doub[0x00100218]
       0     2272        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 67.0, ft1  = 1.0
       0     2275        M 0x800006bc addi    a0, a0, -1             #; a0  = 431, (wrb) a0  <-- 430
                         M                                           #; (f:fpu) ft2  <-- 68.0
       0     2276        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100248, (wrb) a2  <-- 0x00100250
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 68.0, ft0  = 0.001
       0     2277        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 430, taken, goto 0x800006b0
       0     2279        M                                           #; (f:fpu) ft3  <-- 0.068
       0     2280        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.068 ~~> Doub[0x00100220]
       0     2281        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 68.0, ft1  = 1.0
       0     2284        M 0x800006bc addi    a0, a0, -1             #; a0  = 430, (wrb) a0  <-- 429
                         M                                           #; (f:fpu) ft2  <-- 69.0
       0     2285        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100250, (wrb) a2  <-- 0x00100258
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 69.0, ft0  = 0.001
       0     2286        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 429, taken, goto 0x800006b0
       0     2288        M                                           #; (f:fpu) ft3  <-- 0.069
       0     2289        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.069 ~~> Doub[0x00100228]
       0     2290        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 69.0, ft1  = 1.0
       0     2293        M 0x800006bc addi    a0, a0, -1             #; a0  = 429, (wrb) a0  <-- 428
                         M                                           #; (f:fpu) ft2  <-- 70.0
       0     2294        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100258, (wrb) a2  <-- 0x00100260
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 70.0, ft0  = 0.001
       0     2295        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 428, taken, goto 0x800006b0
       0     2297        M                                           #; (f:fpu) ft3  <-- 0.07
       0     2298        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.07 ~~> Doub[0x00100230]
       0     2299        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 70.0, ft1  = 1.0
       0     2302        M 0x800006bc addi    a0, a0, -1             #; a0  = 428, (wrb) a0  <-- 427
                         M                                           #; (f:fpu) ft2  <-- 71.0
       0     2303        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100260, (wrb) a2  <-- 0x00100268
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 71.0, ft0  = 0.001
       0     2304        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 427, taken, goto 0x800006b0
       0     2306        M                                           #; (f:fpu) ft3  <-- 0.0710000
       0     2307        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.0710000 ~~> Doub[0x00100238]
       0     2308        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 71.0, ft1  = 1.0
       0     2311        M 0x800006bc addi    a0, a0, -1             #; a0  = 427, (wrb) a0  <-- 426
                         M                                           #; (f:fpu) ft2  <-- 72.0
       0     2312        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100268, (wrb) a2  <-- 0x00100270
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 72.0, ft0  = 0.001
       0     2313        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 426, taken, goto 0x800006b0
       0     2315        M                                           #; (f:fpu) ft3  <-- 0.0720000
       0     2316        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.0720000 ~~> Doub[0x00100240]
       0     2317        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 72.0, ft1  = 1.0
       0     2320        M 0x800006bc addi    a0, a0, -1             #; a0  = 426, (wrb) a0  <-- 425
                         M                                           #; (f:fpu) ft2  <-- 73.0
       0     2321        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100270, (wrb) a2  <-- 0x00100278
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 73.0, ft0  = 0.001
       0     2322        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 425, taken, goto 0x800006b0
       0     2324        M                                           #; (f:fpu) ft3  <-- 0.073
       0     2325        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.073 ~~> Doub[0x00100248]
       0     2326        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 73.0, ft1  = 1.0
       0     2329        M 0x800006bc addi    a0, a0, -1             #; a0  = 425, (wrb) a0  <-- 424
                         M                                           #; (f:fpu) ft2  <-- 74.0
       0     2330        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100278, (wrb) a2  <-- 0x00100280
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 74.0, ft0  = 0.001
       0     2331        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 424, taken, goto 0x800006b0
       0     2333        M                                           #; (f:fpu) ft3  <-- 0.074
       0     2334        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.074 ~~> Doub[0x00100250]
       0     2335        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 74.0, ft1  = 1.0
       0     2338        M 0x800006bc addi    a0, a0, -1             #; a0  = 424, (wrb) a0  <-- 423
                         M                                           #; (f:fpu) ft2  <-- 75.0
       0     2339        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100280, (wrb) a2  <-- 0x00100288
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 75.0, ft0  = 0.001
       0     2340        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 423, taken, goto 0x800006b0
       0     2342        M                                           #; (f:fpu) ft3  <-- 0.075
       0     2343        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.075 ~~> Doub[0x00100258]
       0     2344        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 75.0, ft1  = 1.0
       0     2347        M 0x800006bc addi    a0, a0, -1             #; a0  = 423, (wrb) a0  <-- 422
                         M                                           #; (f:fpu) ft2  <-- 76.0
       0     2348        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100288, (wrb) a2  <-- 0x00100290
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 76.0, ft0  = 0.001
       0     2349        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 422, taken, goto 0x800006b0
       0     2351        M                                           #; (f:fpu) ft3  <-- 0.076
       0     2352        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.076 ~~> Doub[0x00100260]
       0     2353        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 76.0, ft1  = 1.0
       0     2356        M 0x800006bc addi    a0, a0, -1             #; a0  = 422, (wrb) a0  <-- 421
                         M                                           #; (f:fpu) ft2  <-- 77.0
       0     2357        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100290, (wrb) a2  <-- 0x00100298
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 77.0, ft0  = 0.001
       0     2358        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 421, taken, goto 0x800006b0
       0     2360        M                                           #; (f:fpu) ft3  <-- 0.077
       0     2361        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.077 ~~> Doub[0x00100268]
       0     2362        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 77.0, ft1  = 1.0
       0     2365        M 0x800006bc addi    a0, a0, -1             #; a0  = 421, (wrb) a0  <-- 420
                         M                                           #; (f:fpu) ft2  <-- 78.0
       0     2366        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100298, (wrb) a2  <-- 0x001002a0
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 78.0, ft0  = 0.001
       0     2367        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 420, taken, goto 0x800006b0
       0     2369        M                                           #; (f:fpu) ft3  <-- 0.078
       0     2370        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.078 ~~> Doub[0x00100270]
       0     2371        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 78.0, ft1  = 1.0
       0     2374        M 0x800006bc addi    a0, a0, -1             #; a0  = 420, (wrb) a0  <-- 419
                         M                                           #; (f:fpu) ft2  <-- 79.0
       0     2375        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001002a0, (wrb) a2  <-- 0x001002a8
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 79.0, ft0  = 0.001
       0     2376        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 419, taken, goto 0x800006b0
       0     2378        M                                           #; (f:fpu) ft3  <-- 0.079
       0     2379        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.079 ~~> Doub[0x00100278]
       0     2380        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 79.0, ft1  = 1.0
       0     2383        M 0x800006bc addi    a0, a0, -1             #; a0  = 419, (wrb) a0  <-- 418
                         M                                           #; (f:fpu) ft2  <-- 80.0
       0     2384        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001002a8, (wrb) a2  <-- 0x001002b0
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 80.0, ft0  = 0.001
       0     2385        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 418, taken, goto 0x800006b0
       0     2387        M                                           #; (f:fpu) ft3  <-- 0.08
       0     2388        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.08 ~~> Doub[0x00100280]
       0     2389        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 80.0, ft1  = 1.0
       0     2392        M 0x800006bc addi    a0, a0, -1             #; a0  = 418, (wrb) a0  <-- 417
                         M                                           #; (f:fpu) ft2  <-- 81.0
       0     2393        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001002b0, (wrb) a2  <-- 0x001002b8
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 81.0, ft0  = 0.001
       0     2394        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 417, taken, goto 0x800006b0
       0     2396        M                                           #; (f:fpu) ft3  <-- 0.081
       0     2397        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.081 ~~> Doub[0x00100288]
       0     2398        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 81.0, ft1  = 1.0
       0     2401        M 0x800006bc addi    a0, a0, -1             #; a0  = 417, (wrb) a0  <-- 416
                         M                                           #; (f:fpu) ft2  <-- 82.0
       0     2402        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001002b8, (wrb) a2  <-- 0x001002c0
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 82.0, ft0  = 0.001
       0     2403        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 416, taken, goto 0x800006b0
       0     2405        M                                           #; (f:fpu) ft3  <-- 0.082
       0     2406        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.082 ~~> Doub[0x00100290]
       0     2407        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 82.0, ft1  = 1.0
       0     2410        M 0x800006bc addi    a0, a0, -1             #; a0  = 416, (wrb) a0  <-- 415
                         M                                           #; (f:fpu) ft2  <-- 83.0
       0     2411        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001002c0, (wrb) a2  <-- 0x001002c8
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 83.0, ft0  = 0.001
       0     2412        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 415, taken, goto 0x800006b0
       0     2414        M                                           #; (f:fpu) ft3  <-- 0.083
       0     2415        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.083 ~~> Doub[0x00100298]
       0     2416        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 83.0, ft1  = 1.0
       0     2419        M 0x800006bc addi    a0, a0, -1             #; a0  = 415, (wrb) a0  <-- 414
                         M                                           #; (f:fpu) ft2  <-- 84.0
       0     2420        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001002c8, (wrb) a2  <-- 0x001002d0
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 84.0, ft0  = 0.001
       0     2421        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 414, taken, goto 0x800006b0
       0     2423        M                                           #; (f:fpu) ft3  <-- 0.084
       0     2424        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.084 ~~> Doub[0x001002a0]
       0     2425        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 84.0, ft1  = 1.0
       0     2428        M 0x800006bc addi    a0, a0, -1             #; a0  = 414, (wrb) a0  <-- 413
                         M                                           #; (f:fpu) ft2  <-- 85.0
       0     2429        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001002d0, (wrb) a2  <-- 0x001002d8
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 85.0, ft0  = 0.001
       0     2430        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 413, taken, goto 0x800006b0
       0     2432        M                                           #; (f:fpu) ft3  <-- 0.085
       0     2433        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.085 ~~> Doub[0x001002a8]
       0     2434        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 85.0, ft1  = 1.0
       0     2437        M 0x800006bc addi    a0, a0, -1             #; a0  = 413, (wrb) a0  <-- 412
                         M                                           #; (f:fpu) ft2  <-- 86.0
       0     2438        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001002d8, (wrb) a2  <-- 0x001002e0
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 86.0, ft0  = 0.001
       0     2439        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 412, taken, goto 0x800006b0
       0     2441        M                                           #; (f:fpu) ft3  <-- 0.0860000
       0     2442        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.0860000 ~~> Doub[0x001002b0]
       0     2443        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 86.0, ft1  = 1.0
       0     2446        M 0x800006bc addi    a0, a0, -1             #; a0  = 412, (wrb) a0  <-- 411
                         M                                           #; (f:fpu) ft2  <-- 87.0
       0     2447        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001002e0, (wrb) a2  <-- 0x001002e8
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 87.0, ft0  = 0.001
       0     2448        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 411, taken, goto 0x800006b0
       0     2450        M                                           #; (f:fpu) ft3  <-- 0.0870000
       0     2451        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.0870000 ~~> Doub[0x001002b8]
       0     2452        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 87.0, ft1  = 1.0
       0     2455        M 0x800006bc addi    a0, a0, -1             #; a0  = 411, (wrb) a0  <-- 410
                         M                                           #; (f:fpu) ft2  <-- 88.0
       0     2456        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001002e8, (wrb) a2  <-- 0x001002f0
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 88.0, ft0  = 0.001
       0     2457        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 410, taken, goto 0x800006b0
       0     2459        M                                           #; (f:fpu) ft3  <-- 0.088
       0     2460        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.088 ~~> Doub[0x001002c0]
       0     2461        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 88.0, ft1  = 1.0
       0     2464        M 0x800006bc addi    a0, a0, -1             #; a0  = 410, (wrb) a0  <-- 409
                         M                                           #; (f:fpu) ft2  <-- 89.0
       0     2465        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001002f0, (wrb) a2  <-- 0x001002f8
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 89.0, ft0  = 0.001
       0     2466        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 409, taken, goto 0x800006b0
       0     2468        M                                           #; (f:fpu) ft3  <-- 0.089
       0     2469        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.089 ~~> Doub[0x001002c8]
       0     2470        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 89.0, ft1  = 1.0
       0     2473        M 0x800006bc addi    a0, a0, -1             #; a0  = 409, (wrb) a0  <-- 408
                         M                                           #; (f:fpu) ft2  <-- 90.0
       0     2474        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001002f8, (wrb) a2  <-- 0x00100300
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 90.0, ft0  = 0.001
       0     2475        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 408, taken, goto 0x800006b0
       0     2477        M                                           #; (f:fpu) ft3  <-- 0.09
       0     2478        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.09 ~~> Doub[0x001002d0]
       0     2479        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 90.0, ft1  = 1.0
       0     2482        M 0x800006bc addi    a0, a0, -1             #; a0  = 408, (wrb) a0  <-- 407
                         M                                           #; (f:fpu) ft2  <-- 91.0
       0     2483        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100300, (wrb) a2  <-- 0x00100308
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 91.0, ft0  = 0.001
       0     2484        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 407, taken, goto 0x800006b0
       0     2486        M                                           #; (f:fpu) ft3  <-- 0.091
       0     2487        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.091 ~~> Doub[0x001002d8]
       0     2488        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 91.0, ft1  = 1.0
       0     2491        M 0x800006bc addi    a0, a0, -1             #; a0  = 407, (wrb) a0  <-- 406
                         M                                           #; (f:fpu) ft2  <-- 92.0
       0     2492        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100308, (wrb) a2  <-- 0x00100310
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 92.0, ft0  = 0.001
       0     2493        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 406, taken, goto 0x800006b0
       0     2495        M                                           #; (f:fpu) ft3  <-- 0.092
       0     2496        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.092 ~~> Doub[0x001002e0]
       0     2497        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 92.0, ft1  = 1.0
       0     2500        M 0x800006bc addi    a0, a0, -1             #; a0  = 406, (wrb) a0  <-- 405
                         M                                           #; (f:fpu) ft2  <-- 93.0
       0     2501        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100310, (wrb) a2  <-- 0x00100318
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 93.0, ft0  = 0.001
       0     2502        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 405, taken, goto 0x800006b0
       0     2504        M                                           #; (f:fpu) ft3  <-- 0.093
       0     2505        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.093 ~~> Doub[0x001002e8]
       0     2506        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 93.0, ft1  = 1.0
       0     2509        M 0x800006bc addi    a0, a0, -1             #; a0  = 405, (wrb) a0  <-- 404
                         M                                           #; (f:fpu) ft2  <-- 94.0
       0     2510        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100318, (wrb) a2  <-- 0x00100320
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 94.0, ft0  = 0.001
       0     2511        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 404, taken, goto 0x800006b0
       0     2513        M                                           #; (f:fpu) ft3  <-- 0.094
       0     2514        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.094 ~~> Doub[0x001002f0]
       0     2515        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 94.0, ft1  = 1.0
       0     2518        M 0x800006bc addi    a0, a0, -1             #; a0  = 404, (wrb) a0  <-- 403
                         M                                           #; (f:fpu) ft2  <-- 95.0
       0     2519        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100320, (wrb) a2  <-- 0x00100328
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 95.0, ft0  = 0.001
       0     2520        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 403, taken, goto 0x800006b0
       0     2522        M                                           #; (f:fpu) ft3  <-- 0.095
       0     2523        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.095 ~~> Doub[0x001002f8]
       0     2524        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 95.0, ft1  = 1.0
       0     2527        M 0x800006bc addi    a0, a0, -1             #; a0  = 403, (wrb) a0  <-- 402
                         M                                           #; (f:fpu) ft2  <-- 96.0
       0     2528        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100328, (wrb) a2  <-- 0x00100330
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 96.0, ft0  = 0.001
       0     2529        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 402, taken, goto 0x800006b0
       0     2531        M                                           #; (f:fpu) ft3  <-- 0.096
       0     2532        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.096 ~~> Doub[0x00100300]
       0     2533        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 96.0, ft1  = 1.0
       0     2536        M 0x800006bc addi    a0, a0, -1             #; a0  = 402, (wrb) a0  <-- 401
                         M                                           #; (f:fpu) ft2  <-- 97.0
       0     2537        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100330, (wrb) a2  <-- 0x00100338
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 97.0, ft0  = 0.001
       0     2538        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 401, taken, goto 0x800006b0
       0     2540        M                                           #; (f:fpu) ft3  <-- 0.097
       0     2541        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.097 ~~> Doub[0x00100308]
       0     2542        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 97.0, ft1  = 1.0
       0     2545        M 0x800006bc addi    a0, a0, -1             #; a0  = 401, (wrb) a0  <-- 400
                         M                                           #; (f:fpu) ft2  <-- 98.0
       0     2546        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100338, (wrb) a2  <-- 0x00100340
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 98.0, ft0  = 0.001
       0     2547        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 400, taken, goto 0x800006b0
       0     2549        M                                           #; (f:fpu) ft3  <-- 0.098
       0     2550        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.098 ~~> Doub[0x00100310]
       0     2551        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 98.0, ft1  = 1.0
       0     2554        M 0x800006bc addi    a0, a0, -1             #; a0  = 400, (wrb) a0  <-- 399
                         M                                           #; (f:fpu) ft2  <-- 99.0
       0     2555        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100340, (wrb) a2  <-- 0x00100348
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 99.0, ft0  = 0.001
       0     2556        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 399, taken, goto 0x800006b0
       0     2558        M                                           #; (f:fpu) ft3  <-- 0.099
       0     2559        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.099 ~~> Doub[0x00100318]
       0     2560        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 99.0, ft1  = 1.0
       0     2563        M 0x800006bc addi    a0, a0, -1             #; a0  = 399, (wrb) a0  <-- 398
                         M                                           #; (f:fpu) ft2  <-- 100.0
       0     2564        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100348, (wrb) a2  <-- 0x00100350
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 100.0, ft0  = 0.001
       0     2565        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 398, taken, goto 0x800006b0
       0     2567        M                                           #; (f:fpu) ft3  <-- 0.1
       0     2568        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.1 ~~> Doub[0x00100320]
       0     2569        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 100.0, ft1  = 1.0
       0     2572        M 0x800006bc addi    a0, a0, -1             #; a0  = 398, (wrb) a0  <-- 397
                         M                                           #; (f:fpu) ft2  <-- 101.0
       0     2573        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100350, (wrb) a2  <-- 0x00100358
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 101.0, ft0  = 0.001
       0     2574        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 397, taken, goto 0x800006b0
       0     2576        M                                           #; (f:fpu) ft3  <-- 0.101
       0     2577        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.101 ~~> Doub[0x00100328]
       0     2578        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 101.0, ft1  = 1.0
       0     2581        M 0x800006bc addi    a0, a0, -1             #; a0  = 397, (wrb) a0  <-- 396
                         M                                           #; (f:fpu) ft2  <-- 102.0
       0     2582        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100358, (wrb) a2  <-- 0x00100360
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 102.0, ft0  = 0.001
       0     2583        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 396, taken, goto 0x800006b0
       0     2585        M                                           #; (f:fpu) ft3  <-- 0.1020000
       0     2586        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.1020000 ~~> Doub[0x00100330]
       0     2587        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 102.0, ft1  = 1.0
       0     2590        M 0x800006bc addi    a0, a0, -1             #; a0  = 396, (wrb) a0  <-- 395
                         M                                           #; (f:fpu) ft2  <-- 103.0
       0     2591        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100360, (wrb) a2  <-- 0x00100368
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 103.0, ft0  = 0.001
       0     2592        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 395, taken, goto 0x800006b0
       0     2594        M                                           #; (f:fpu) ft3  <-- 0.1030000
       0     2595        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.1030000 ~~> Doub[0x00100338]
       0     2596        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 103.0, ft1  = 1.0
       0     2599        M 0x800006bc addi    a0, a0, -1             #; a0  = 395, (wrb) a0  <-- 394
                         M                                           #; (f:fpu) ft2  <-- 104.0
       0     2600        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100368, (wrb) a2  <-- 0x00100370
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 104.0, ft0  = 0.001
       0     2601        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 394, taken, goto 0x800006b0
       0     2603        M                                           #; (f:fpu) ft3  <-- 0.1040000
       0     2604        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.1040000 ~~> Doub[0x00100340]
       0     2605        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 104.0, ft1  = 1.0
       0     2608        M 0x800006bc addi    a0, a0, -1             #; a0  = 394, (wrb) a0  <-- 393
                         M                                           #; (f:fpu) ft2  <-- 105.0
       0     2609        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100370, (wrb) a2  <-- 0x00100378
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 105.0, ft0  = 0.001
       0     2610        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 393, taken, goto 0x800006b0
       0     2612        M                                           #; (f:fpu) ft3  <-- 0.105
       0     2613        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.105 ~~> Doub[0x00100348]
       0     2614        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 105.0, ft1  = 1.0
       0     2617        M 0x800006bc addi    a0, a0, -1             #; a0  = 393, (wrb) a0  <-- 392
                         M                                           #; (f:fpu) ft2  <-- 106.0
       0     2618        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100378, (wrb) a2  <-- 0x00100380
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 106.0, ft0  = 0.001
       0     2619        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 392, taken, goto 0x800006b0
       0     2621        M                                           #; (f:fpu) ft3  <-- 0.106
       0     2622        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.106 ~~> Doub[0x00100350]
       0     2623        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 106.0, ft1  = 1.0
       0     2626        M 0x800006bc addi    a0, a0, -1             #; a0  = 392, (wrb) a0  <-- 391
                         M                                           #; (f:fpu) ft2  <-- 107.0
       0     2627        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100380, (wrb) a2  <-- 0x00100388
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 107.0, ft0  = 0.001
       0     2628        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 391, taken, goto 0x800006b0
       0     2630        M                                           #; (f:fpu) ft3  <-- 0.107
       0     2631        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.107 ~~> Doub[0x00100358]
       0     2632        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 107.0, ft1  = 1.0
       0     2635        M 0x800006bc addi    a0, a0, -1             #; a0  = 391, (wrb) a0  <-- 390
                         M                                           #; (f:fpu) ft2  <-- 108.0
       0     2636        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100388, (wrb) a2  <-- 0x00100390
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 108.0, ft0  = 0.001
       0     2637        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 390, taken, goto 0x800006b0
       0     2639        M                                           #; (f:fpu) ft3  <-- 0.108
       0     2640        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.108 ~~> Doub[0x00100360]
       0     2641        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 108.0, ft1  = 1.0
       0     2644        M 0x800006bc addi    a0, a0, -1             #; a0  = 390, (wrb) a0  <-- 389
                         M                                           #; (f:fpu) ft2  <-- 109.0
       0     2645        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100390, (wrb) a2  <-- 0x00100398
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 109.0, ft0  = 0.001
       0     2646        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 389, taken, goto 0x800006b0
       0     2648        M                                           #; (f:fpu) ft3  <-- 0.109
       0     2649        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.109 ~~> Doub[0x00100368]
       0     2650        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 109.0, ft1  = 1.0
       0     2653        M 0x800006bc addi    a0, a0, -1             #; a0  = 389, (wrb) a0  <-- 388
                         M                                           #; (f:fpu) ft2  <-- 110.0
       0     2654        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100398, (wrb) a2  <-- 0x001003a0
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 110.0, ft0  = 0.001
       0     2655        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 388, taken, goto 0x800006b0
       0     2657        M                                           #; (f:fpu) ft3  <-- 0.11
       0     2658        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.11 ~~> Doub[0x00100370]
       0     2659        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 110.0, ft1  = 1.0
       0     2662        M 0x800006bc addi    a0, a0, -1             #; a0  = 388, (wrb) a0  <-- 387
                         M                                           #; (f:fpu) ft2  <-- 111.0
       0     2663        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001003a0, (wrb) a2  <-- 0x001003a8
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 111.0, ft0  = 0.001
       0     2664        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 387, taken, goto 0x800006b0
       0     2666        M                                           #; (f:fpu) ft3  <-- 0.111
       0     2667        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.111 ~~> Doub[0x00100378]
       0     2668        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 111.0, ft1  = 1.0
       0     2671        M 0x800006bc addi    a0, a0, -1             #; a0  = 387, (wrb) a0  <-- 386
                         M                                           #; (f:fpu) ft2  <-- 112.0
       0     2672        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001003a8, (wrb) a2  <-- 0x001003b0
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 112.0, ft0  = 0.001
       0     2673        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 386, taken, goto 0x800006b0
       0     2675        M                                           #; (f:fpu) ft3  <-- 0.112
       0     2676        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.112 ~~> Doub[0x00100380]
       0     2677        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 112.0, ft1  = 1.0
       0     2680        M 0x800006bc addi    a0, a0, -1             #; a0  = 386, (wrb) a0  <-- 385
                         M                                           #; (f:fpu) ft2  <-- 113.0
       0     2681        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001003b0, (wrb) a2  <-- 0x001003b8
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 113.0, ft0  = 0.001
       0     2682        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 385, taken, goto 0x800006b0
       0     2684        M                                           #; (f:fpu) ft3  <-- 0.113
       0     2685        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.113 ~~> Doub[0x00100388]
       0     2686        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 113.0, ft1  = 1.0
       0     2689        M 0x800006bc addi    a0, a0, -1             #; a0  = 385, (wrb) a0  <-- 384
                         M                                           #; (f:fpu) ft2  <-- 114.0
       0     2690        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001003b8, (wrb) a2  <-- 0x001003c0
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 114.0, ft0  = 0.001
       0     2691        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 384, taken, goto 0x800006b0
       0     2693        M                                           #; (f:fpu) ft3  <-- 0.114
       0     2694        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.114 ~~> Doub[0x00100390]
       0     2695        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 114.0, ft1  = 1.0
       0     2698        M 0x800006bc addi    a0, a0, -1             #; a0  = 384, (wrb) a0  <-- 383
                         M                                           #; (f:fpu) ft2  <-- 115.0
       0     2699        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001003c0, (wrb) a2  <-- 0x001003c8
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 115.0, ft0  = 0.001
       0     2700        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 383, taken, goto 0x800006b0
       0     2702        M                                           #; (f:fpu) ft3  <-- 0.115
       0     2703        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.115 ~~> Doub[0x00100398]
       0     2704        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 115.0, ft1  = 1.0
       0     2707        M 0x800006bc addi    a0, a0, -1             #; a0  = 383, (wrb) a0  <-- 382
                         M                                           #; (f:fpu) ft2  <-- 116.0
       0     2708        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001003c8, (wrb) a2  <-- 0x001003d0
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 116.0, ft0  = 0.001
       0     2709        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 382, taken, goto 0x800006b0
       0     2711        M                                           #; (f:fpu) ft3  <-- 0.116
       0     2712        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.116 ~~> Doub[0x001003a0]
       0     2713        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 116.0, ft1  = 1.0
       0     2716        M 0x800006bc addi    a0, a0, -1             #; a0  = 382, (wrb) a0  <-- 381
                         M                                           #; (f:fpu) ft2  <-- 117.0
       0     2717        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001003d0, (wrb) a2  <-- 0x001003d8
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 117.0, ft0  = 0.001
       0     2718        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 381, taken, goto 0x800006b0
       0     2720        M                                           #; (f:fpu) ft3  <-- 0.117
       0     2721        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.117 ~~> Doub[0x001003a8]
       0     2722        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 117.0, ft1  = 1.0
       0     2725        M 0x800006bc addi    a0, a0, -1             #; a0  = 381, (wrb) a0  <-- 380
                         M                                           #; (f:fpu) ft2  <-- 118.0
       0     2726        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001003d8, (wrb) a2  <-- 0x001003e0
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 118.0, ft0  = 0.001
       0     2727        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 380, taken, goto 0x800006b0
       0     2729        M                                           #; (f:fpu) ft3  <-- 0.1180000
       0     2730        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.1180000 ~~> Doub[0x001003b0]
       0     2731        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 118.0, ft1  = 1.0
       0     2734        M 0x800006bc addi    a0, a0, -1             #; a0  = 380, (wrb) a0  <-- 379
                         M                                           #; (f:fpu) ft2  <-- 119.0
       0     2735        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001003e0, (wrb) a2  <-- 0x001003e8
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 119.0, ft0  = 0.001
       0     2736        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 379, taken, goto 0x800006b0
       0     2738        M                                           #; (f:fpu) ft3  <-- 0.1190000
       0     2739        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.1190000 ~~> Doub[0x001003b8]
       0     2740        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 119.0, ft1  = 1.0
       0     2743        M 0x800006bc addi    a0, a0, -1             #; a0  = 379, (wrb) a0  <-- 378
                         M                                           #; (f:fpu) ft2  <-- 120.0
       0     2744        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001003e8, (wrb) a2  <-- 0x001003f0
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 120.0, ft0  = 0.001
       0     2745        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 378, taken, goto 0x800006b0
       0     2747        M                                           #; (f:fpu) ft3  <-- 0.12
       0     2748        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.12 ~~> Doub[0x001003c0]
       0     2749        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 120.0, ft1  = 1.0
       0     2752        M 0x800006bc addi    a0, a0, -1             #; a0  = 378, (wrb) a0  <-- 377
                         M                                           #; (f:fpu) ft2  <-- 121.0
       0     2753        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001003f0, (wrb) a2  <-- 0x001003f8
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 121.0, ft0  = 0.001
       0     2754        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 377, taken, goto 0x800006b0
       0     2756        M                                           #; (f:fpu) ft3  <-- 0.121
       0     2757        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.121 ~~> Doub[0x001003c8]
       0     2758        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 121.0, ft1  = 1.0
       0     2761        M 0x800006bc addi    a0, a0, -1             #; a0  = 377, (wrb) a0  <-- 376
                         M                                           #; (f:fpu) ft2  <-- 122.0
       0     2762        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001003f8, (wrb) a2  <-- 0x00100400
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 122.0, ft0  = 0.001
       0     2763        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 376, taken, goto 0x800006b0
       0     2765        M                                           #; (f:fpu) ft3  <-- 0.122
       0     2766        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.122 ~~> Doub[0x001003d0]
       0     2767        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 122.0, ft1  = 1.0
       0     2770        M 0x800006bc addi    a0, a0, -1             #; a0  = 376, (wrb) a0  <-- 375
                         M                                           #; (f:fpu) ft2  <-- 123.0
       0     2771        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100400, (wrb) a2  <-- 0x00100408
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 123.0, ft0  = 0.001
       0     2772        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 375, taken, goto 0x800006b0
       0     2774        M                                           #; (f:fpu) ft3  <-- 0.123
       0     2775        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.123 ~~> Doub[0x001003d8]
       0     2776        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 123.0, ft1  = 1.0
       0     2779        M 0x800006bc addi    a0, a0, -1             #; a0  = 375, (wrb) a0  <-- 374
                         M                                           #; (f:fpu) ft2  <-- 124.0
       0     2780        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100408, (wrb) a2  <-- 0x00100410
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 124.0, ft0  = 0.001
       0     2781        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 374, taken, goto 0x800006b0
       0     2783        M                                           #; (f:fpu) ft3  <-- 0.124
       0     2784        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.124 ~~> Doub[0x001003e0]
       0     2785        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 124.0, ft1  = 1.0
       0     2788        M 0x800006bc addi    a0, a0, -1             #; a0  = 374, (wrb) a0  <-- 373
                         M                                           #; (f:fpu) ft2  <-- 125.0
       0     2789        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100410, (wrb) a2  <-- 0x00100418
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 125.0, ft0  = 0.001
       0     2790        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 373, taken, goto 0x800006b0
       0     2792        M                                           #; (f:fpu) ft3  <-- 0.125
       0     2793        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.125 ~~> Doub[0x001003e8]
       0     2794        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 125.0, ft1  = 1.0
       0     2797        M 0x800006bc addi    a0, a0, -1             #; a0  = 373, (wrb) a0  <-- 372
                         M                                           #; (f:fpu) ft2  <-- 126.0
       0     2798        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100418, (wrb) a2  <-- 0x00100420
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 126.0, ft0  = 0.001
       0     2799        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 372, taken, goto 0x800006b0
       0     2801        M                                           #; (f:fpu) ft3  <-- 0.126
       0     2802        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.126 ~~> Doub[0x001003f0]
       0     2803        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 126.0, ft1  = 1.0
       0     2806        M 0x800006bc addi    a0, a0, -1             #; a0  = 372, (wrb) a0  <-- 371
                         M                                           #; (f:fpu) ft2  <-- 127.0
       0     2807        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100420, (wrb) a2  <-- 0x00100428
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 127.0, ft0  = 0.001
       0     2808        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 371, taken, goto 0x800006b0
       0     2810        M                                           #; (f:fpu) ft3  <-- 0.127
       0     2811        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.127 ~~> Doub[0x001003f8]
       0     2812        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 127.0, ft1  = 1.0
       0     2815        M 0x800006bc addi    a0, a0, -1             #; a0  = 371, (wrb) a0  <-- 370
                         M                                           #; (f:fpu) ft2  <-- 128.0
       0     2816        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100428, (wrb) a2  <-- 0x00100430
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 128.0, ft0  = 0.001
       0     2817        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 370, taken, goto 0x800006b0
       0     2819        M                                           #; (f:fpu) ft3  <-- 0.128
       0     2820        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.128 ~~> Doub[0x00100400]
       0     2821        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 128.0, ft1  = 1.0
       0     2824        M 0x800006bc addi    a0, a0, -1             #; a0  = 370, (wrb) a0  <-- 369
                         M                                           #; (f:fpu) ft2  <-- 129.0
       0     2825        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100430, (wrb) a2  <-- 0x00100438
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 129.0, ft0  = 0.001
       0     2826        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 369, taken, goto 0x800006b0
       0     2828        M                                           #; (f:fpu) ft3  <-- 0.129
       0     2829        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.129 ~~> Doub[0x00100408]
       0     2830        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 129.0, ft1  = 1.0
       0     2833        M 0x800006bc addi    a0, a0, -1             #; a0  = 369, (wrb) a0  <-- 368
                         M                                           #; (f:fpu) ft2  <-- 130.0
       0     2834        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100438, (wrb) a2  <-- 0x00100440
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 130.0, ft0  = 0.001
       0     2835        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 368, taken, goto 0x800006b0
       0     2837        M                                           #; (f:fpu) ft3  <-- 0.13
       0     2838        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.13 ~~> Doub[0x00100410]
       0     2839        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 130.0, ft1  = 1.0
       0     2842        M 0x800006bc addi    a0, a0, -1             #; a0  = 368, (wrb) a0  <-- 367
                         M                                           #; (f:fpu) ft2  <-- 131.0
       0     2843        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100440, (wrb) a2  <-- 0x00100448
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 131.0, ft0  = 0.001
       0     2844        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 367, taken, goto 0x800006b0
       0     2846        M                                           #; (f:fpu) ft3  <-- 0.131
       0     2847        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.131 ~~> Doub[0x00100418]
       0     2848        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 131.0, ft1  = 1.0
       0     2851        M 0x800006bc addi    a0, a0, -1             #; a0  = 367, (wrb) a0  <-- 366
                         M                                           #; (f:fpu) ft2  <-- 132.0
       0     2852        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100448, (wrb) a2  <-- 0x00100450
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 132.0, ft0  = 0.001
       0     2853        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 366, taken, goto 0x800006b0
       0     2855        M                                           #; (f:fpu) ft3  <-- 0.132
       0     2856        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.132 ~~> Doub[0x00100420]
       0     2857        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 132.0, ft1  = 1.0
       0     2860        M 0x800006bc addi    a0, a0, -1             #; a0  = 366, (wrb) a0  <-- 365
                         M                                           #; (f:fpu) ft2  <-- 133.0
       0     2861        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100450, (wrb) a2  <-- 0x00100458
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 133.0, ft0  = 0.001
       0     2862        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 365, taken, goto 0x800006b0
       0     2864        M                                           #; (f:fpu) ft3  <-- 0.133
       0     2865        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.133 ~~> Doub[0x00100428]
       0     2866        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 133.0, ft1  = 1.0
       0     2869        M 0x800006bc addi    a0, a0, -1             #; a0  = 365, (wrb) a0  <-- 364
                         M                                           #; (f:fpu) ft2  <-- 134.0
       0     2870        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100458, (wrb) a2  <-- 0x00100460
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 134.0, ft0  = 0.001
       0     2871        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 364, taken, goto 0x800006b0
       0     2873        M                                           #; (f:fpu) ft3  <-- 0.134
       0     2874        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.134 ~~> Doub[0x00100430]
       0     2875        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 134.0, ft1  = 1.0
       0     2878        M 0x800006bc addi    a0, a0, -1             #; a0  = 364, (wrb) a0  <-- 363
                         M                                           #; (f:fpu) ft2  <-- 135.0
       0     2879        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100460, (wrb) a2  <-- 0x00100468
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 135.0, ft0  = 0.001
       0     2880        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 363, taken, goto 0x800006b0
       0     2882        M                                           #; (f:fpu) ft3  <-- 0.135
       0     2883        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.135 ~~> Doub[0x00100438]
       0     2884        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 135.0, ft1  = 1.0
       0     2887        M 0x800006bc addi    a0, a0, -1             #; a0  = 363, (wrb) a0  <-- 362
                         M                                           #; (f:fpu) ft2  <-- 136.0
       0     2888        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100468, (wrb) a2  <-- 0x00100470
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 136.0, ft0  = 0.001
       0     2889        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 362, taken, goto 0x800006b0
       0     2891        M                                           #; (f:fpu) ft3  <-- 0.136
       0     2892        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.136 ~~> Doub[0x00100440]
       0     2893        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 136.0, ft1  = 1.0
       0     2896        M 0x800006bc addi    a0, a0, -1             #; a0  = 362, (wrb) a0  <-- 361
                         M                                           #; (f:fpu) ft2  <-- 137.0
       0     2897        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100470, (wrb) a2  <-- 0x00100478
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 137.0, ft0  = 0.001
       0     2898        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 361, taken, goto 0x800006b0
       0     2900        M                                           #; (f:fpu) ft3  <-- 0.137
       0     2901        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.137 ~~> Doub[0x00100448]
       0     2902        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 137.0, ft1  = 1.0
       0     2905        M 0x800006bc addi    a0, a0, -1             #; a0  = 361, (wrb) a0  <-- 360
                         M                                           #; (f:fpu) ft2  <-- 138.0
       0     2906        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100478, (wrb) a2  <-- 0x00100480
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 138.0, ft0  = 0.001
       0     2907        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 360, taken, goto 0x800006b0
       0     2909        M                                           #; (f:fpu) ft3  <-- 0.138
       0     2910        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.138 ~~> Doub[0x00100450]
       0     2911        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 138.0, ft1  = 1.0
       0     2914        M 0x800006bc addi    a0, a0, -1             #; a0  = 360, (wrb) a0  <-- 359
                         M                                           #; (f:fpu) ft2  <-- 139.0
       0     2915        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100480, (wrb) a2  <-- 0x00100488
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 139.0, ft0  = 0.001
       0     2916        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 359, taken, goto 0x800006b0
       0     2918        M                                           #; (f:fpu) ft3  <-- 0.139
       0     2919        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.139 ~~> Doub[0x00100458]
       0     2920        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 139.0, ft1  = 1.0
       0     2923        M 0x800006bc addi    a0, a0, -1             #; a0  = 359, (wrb) a0  <-- 358
                         M                                           #; (f:fpu) ft2  <-- 140.0
       0     2924        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100488, (wrb) a2  <-- 0x00100490
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 140.0, ft0  = 0.001
       0     2925        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 358, taken, goto 0x800006b0
       0     2927        M                                           #; (f:fpu) ft3  <-- 0.14
       0     2928        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.14 ~~> Doub[0x00100460]
       0     2929        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 140.0, ft1  = 1.0
       0     2932        M 0x800006bc addi    a0, a0, -1             #; a0  = 358, (wrb) a0  <-- 357
                         M                                           #; (f:fpu) ft2  <-- 141.0
       0     2933        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100490, (wrb) a2  <-- 0x00100498
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 141.0, ft0  = 0.001
       0     2934        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 357, taken, goto 0x800006b0
       0     2936        M                                           #; (f:fpu) ft3  <-- 0.1410000
       0     2937        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.1410000 ~~> Doub[0x00100468]
       0     2938        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 141.0, ft1  = 1.0
       0     2941        M 0x800006bc addi    a0, a0, -1             #; a0  = 357, (wrb) a0  <-- 356
                         M                                           #; (f:fpu) ft2  <-- 142.0
       0     2942        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100498, (wrb) a2  <-- 0x001004a0
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 142.0, ft0  = 0.001
       0     2943        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 356, taken, goto 0x800006b0
       0     2945        M                                           #; (f:fpu) ft3  <-- 0.1420000
       0     2946        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.1420000 ~~> Doub[0x00100470]
       0     2947        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 142.0, ft1  = 1.0
       0     2950        M 0x800006bc addi    a0, a0, -1             #; a0  = 356, (wrb) a0  <-- 355
                         M                                           #; (f:fpu) ft2  <-- 143.0
       0     2951        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001004a0, (wrb) a2  <-- 0x001004a8
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 143.0, ft0  = 0.001
       0     2952        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 355, taken, goto 0x800006b0
       0     2954        M                                           #; (f:fpu) ft3  <-- 0.1430000
       0     2955        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.1430000 ~~> Doub[0x00100478]
       0     2956        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 143.0, ft1  = 1.0
       0     2959        M 0x800006bc addi    a0, a0, -1             #; a0  = 355, (wrb) a0  <-- 354
                         M                                           #; (f:fpu) ft2  <-- 144.0
       0     2960        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001004a8, (wrb) a2  <-- 0x001004b0
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 144.0, ft0  = 0.001
       0     2961        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 354, taken, goto 0x800006b0
       0     2963        M                                           #; (f:fpu) ft3  <-- 0.1440000
       0     2964        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.1440000 ~~> Doub[0x00100480]
       0     2965        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 144.0, ft1  = 1.0
       0     2968        M 0x800006bc addi    a0, a0, -1             #; a0  = 354, (wrb) a0  <-- 353
                         M                                           #; (f:fpu) ft2  <-- 145.0
       0     2969        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001004b0, (wrb) a2  <-- 0x001004b8
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 145.0, ft0  = 0.001
       0     2970        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 353, taken, goto 0x800006b0
       0     2972        M                                           #; (f:fpu) ft3  <-- 0.145
       0     2973        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.145 ~~> Doub[0x00100488]
       0     2974        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 145.0, ft1  = 1.0
       0     2977        M 0x800006bc addi    a0, a0, -1             #; a0  = 353, (wrb) a0  <-- 352
                         M                                           #; (f:fpu) ft2  <-- 146.0
       0     2978        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001004b8, (wrb) a2  <-- 0x001004c0
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 146.0, ft0  = 0.001
       0     2979        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 352, taken, goto 0x800006b0
       0     2981        M                                           #; (f:fpu) ft3  <-- 0.146
       0     2982        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.146 ~~> Doub[0x00100490]
       0     2983        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 146.0, ft1  = 1.0
       0     2986        M 0x800006bc addi    a0, a0, -1             #; a0  = 352, (wrb) a0  <-- 351
                         M                                           #; (f:fpu) ft2  <-- 147.0
       0     2987        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001004c0, (wrb) a2  <-- 0x001004c8
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 147.0, ft0  = 0.001
       0     2988        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 351, taken, goto 0x800006b0
       0     2990        M                                           #; (f:fpu) ft3  <-- 0.147
       0     2991        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.147 ~~> Doub[0x00100498]
       0     2992        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 147.0, ft1  = 1.0
       0     2995        M 0x800006bc addi    a0, a0, -1             #; a0  = 351, (wrb) a0  <-- 350
                         M                                           #; (f:fpu) ft2  <-- 148.0
       0     2996        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001004c8, (wrb) a2  <-- 0x001004d0
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 148.0, ft0  = 0.001
       0     2997        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 350, taken, goto 0x800006b0
       0     2999        M                                           #; (f:fpu) ft3  <-- 0.148
       0     3000        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.148 ~~> Doub[0x001004a0]
       0     3001        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 148.0, ft1  = 1.0
       0     3004        M 0x800006bc addi    a0, a0, -1             #; a0  = 350, (wrb) a0  <-- 349
                         M                                           #; (f:fpu) ft2  <-- 149.0
       0     3005        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001004d0, (wrb) a2  <-- 0x001004d8
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 149.0, ft0  = 0.001
       0     3006        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 349, taken, goto 0x800006b0
       0     3008        M                                           #; (f:fpu) ft3  <-- 0.149
       0     3009        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.149 ~~> Doub[0x001004a8]
       0     3010        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 149.0, ft1  = 1.0
       0     3013        M 0x800006bc addi    a0, a0, -1             #; a0  = 349, (wrb) a0  <-- 348
                         M                                           #; (f:fpu) ft2  <-- 150.0
       0     3014        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001004d8, (wrb) a2  <-- 0x001004e0
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 150.0, ft0  = 0.001
       0     3015        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 348, taken, goto 0x800006b0
       0     3017        M                                           #; (f:fpu) ft3  <-- 0.15
       0     3018        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.15 ~~> Doub[0x001004b0]
       0     3019        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 150.0, ft1  = 1.0
       0     3022        M 0x800006bc addi    a0, a0, -1             #; a0  = 348, (wrb) a0  <-- 347
                         M                                           #; (f:fpu) ft2  <-- 151.0
       0     3023        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001004e0, (wrb) a2  <-- 0x001004e8
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 151.0, ft0  = 0.001
       0     3024        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 347, taken, goto 0x800006b0
       0     3026        M                                           #; (f:fpu) ft3  <-- 0.151
       0     3027        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.151 ~~> Doub[0x001004b8]
       0     3028        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 151.0, ft1  = 1.0
       0     3031        M 0x800006bc addi    a0, a0, -1             #; a0  = 347, (wrb) a0  <-- 346
                         M                                           #; (f:fpu) ft2  <-- 152.0
       0     3032        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001004e8, (wrb) a2  <-- 0x001004f0
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 152.0, ft0  = 0.001
       0     3033        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 346, taken, goto 0x800006b0
       0     3035        M                                           #; (f:fpu) ft3  <-- 0.152
       0     3036        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.152 ~~> Doub[0x001004c0]
       0     3037        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 152.0, ft1  = 1.0
       0     3040        M 0x800006bc addi    a0, a0, -1             #; a0  = 346, (wrb) a0  <-- 345
                         M                                           #; (f:fpu) ft2  <-- 153.0
       0     3041        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001004f0, (wrb) a2  <-- 0x001004f8
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 153.0, ft0  = 0.001
       0     3042        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 345, taken, goto 0x800006b0
       0     3044        M                                           #; (f:fpu) ft3  <-- 0.153
       0     3045        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.153 ~~> Doub[0x001004c8]
       0     3046        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 153.0, ft1  = 1.0
       0     3049        M 0x800006bc addi    a0, a0, -1             #; a0  = 345, (wrb) a0  <-- 344
                         M                                           #; (f:fpu) ft2  <-- 154.0
       0     3050        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001004f8, (wrb) a2  <-- 0x00100500
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 154.0, ft0  = 0.001
       0     3051        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 344, taken, goto 0x800006b0
       0     3053        M                                           #; (f:fpu) ft3  <-- 0.154
       0     3054        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.154 ~~> Doub[0x001004d0]
       0     3055        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 154.0, ft1  = 1.0
       0     3058        M 0x800006bc addi    a0, a0, -1             #; a0  = 344, (wrb) a0  <-- 343
                         M                                           #; (f:fpu) ft2  <-- 155.0
       0     3059        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100500, (wrb) a2  <-- 0x00100508
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 155.0, ft0  = 0.001
       0     3060        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 343, taken, goto 0x800006b0
       0     3062        M                                           #; (f:fpu) ft3  <-- 0.155
       0     3063        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.155 ~~> Doub[0x001004d8]
       0     3064        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 155.0, ft1  = 1.0
       0     3067        M 0x800006bc addi    a0, a0, -1             #; a0  = 343, (wrb) a0  <-- 342
                         M                                           #; (f:fpu) ft2  <-- 156.0
       0     3068        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100508, (wrb) a2  <-- 0x00100510
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 156.0, ft0  = 0.001
       0     3069        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 342, taken, goto 0x800006b0
       0     3071        M                                           #; (f:fpu) ft3  <-- 0.156
       0     3072        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.156 ~~> Doub[0x001004e0]
       0     3073        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 156.0, ft1  = 1.0
       0     3076        M 0x800006bc addi    a0, a0, -1             #; a0  = 342, (wrb) a0  <-- 341
                         M                                           #; (f:fpu) ft2  <-- 157.0
       0     3077        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100510, (wrb) a2  <-- 0x00100518
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 157.0, ft0  = 0.001
       0     3078        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 341, taken, goto 0x800006b0
       0     3080        M                                           #; (f:fpu) ft3  <-- 0.157
       0     3081        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.157 ~~> Doub[0x001004e8]
       0     3082        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 157.0, ft1  = 1.0
       0     3085        M 0x800006bc addi    a0, a0, -1             #; a0  = 341, (wrb) a0  <-- 340
                         M                                           #; (f:fpu) ft2  <-- 158.0
       0     3086        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100518, (wrb) a2  <-- 0x00100520
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 158.0, ft0  = 0.001
       0     3087        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 340, taken, goto 0x800006b0
       0     3089        M                                           #; (f:fpu) ft3  <-- 0.158
       0     3090        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.158 ~~> Doub[0x001004f0]
       0     3091        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 158.0, ft1  = 1.0
       0     3094        M 0x800006bc addi    a0, a0, -1             #; a0  = 340, (wrb) a0  <-- 339
                         M                                           #; (f:fpu) ft2  <-- 159.0
       0     3095        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100520, (wrb) a2  <-- 0x00100528
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 159.0, ft0  = 0.001
       0     3096        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 339, taken, goto 0x800006b0
       0     3098        M                                           #; (f:fpu) ft3  <-- 0.159
       0     3099        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.159 ~~> Doub[0x001004f8]
       0     3100        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 159.0, ft1  = 1.0
       0     3103        M 0x800006bc addi    a0, a0, -1             #; a0  = 339, (wrb) a0  <-- 338
                         M                                           #; (f:fpu) ft2  <-- 160.0
       0     3104        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100528, (wrb) a2  <-- 0x00100530
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 160.0, ft0  = 0.001
       0     3105        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 338, taken, goto 0x800006b0
       0     3107        M                                           #; (f:fpu) ft3  <-- 0.16
       0     3108        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.16 ~~> Doub[0x00100500]
       0     3109        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 160.0, ft1  = 1.0
       0     3112        M 0x800006bc addi    a0, a0, -1             #; a0  = 338, (wrb) a0  <-- 337
                         M                                           #; (f:fpu) ft2  <-- 161.0
       0     3113        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100530, (wrb) a2  <-- 0x00100538
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 161.0, ft0  = 0.001
       0     3114        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 337, taken, goto 0x800006b0
       0     3116        M                                           #; (f:fpu) ft3  <-- 0.161
       0     3117        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.161 ~~> Doub[0x00100508]
       0     3118        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 161.0, ft1  = 1.0
       0     3121        M 0x800006bc addi    a0, a0, -1             #; a0  = 337, (wrb) a0  <-- 336
                         M                                           #; (f:fpu) ft2  <-- 162.0
       0     3122        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100538, (wrb) a2  <-- 0x00100540
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 162.0, ft0  = 0.001
       0     3123        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 336, taken, goto 0x800006b0
       0     3125        M                                           #; (f:fpu) ft3  <-- 0.162
       0     3126        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.162 ~~> Doub[0x00100510]
       0     3127        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 162.0, ft1  = 1.0
       0     3130        M 0x800006bc addi    a0, a0, -1             #; a0  = 336, (wrb) a0  <-- 335
                         M                                           #; (f:fpu) ft2  <-- 163.0
       0     3131        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100540, (wrb) a2  <-- 0x00100548
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 163.0, ft0  = 0.001
       0     3132        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 335, taken, goto 0x800006b0
       0     3134        M                                           #; (f:fpu) ft3  <-- 0.163
       0     3135        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.163 ~~> Doub[0x00100518]
       0     3136        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 163.0, ft1  = 1.0
       0     3139        M 0x800006bc addi    a0, a0, -1             #; a0  = 335, (wrb) a0  <-- 334
                         M                                           #; (f:fpu) ft2  <-- 164.0
       0     3140        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100548, (wrb) a2  <-- 0x00100550
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 164.0, ft0  = 0.001
       0     3141        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 334, taken, goto 0x800006b0
       0     3143        M                                           #; (f:fpu) ft3  <-- 0.164
       0     3144        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.164 ~~> Doub[0x00100520]
       0     3145        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 164.0, ft1  = 1.0
       0     3148        M 0x800006bc addi    a0, a0, -1             #; a0  = 334, (wrb) a0  <-- 333
                         M                                           #; (f:fpu) ft2  <-- 165.0
       0     3149        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100550, (wrb) a2  <-- 0x00100558
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 165.0, ft0  = 0.001
       0     3150        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 333, taken, goto 0x800006b0
       0     3152        M                                           #; (f:fpu) ft3  <-- 0.165
       0     3153        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.165 ~~> Doub[0x00100528]
       0     3154        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 165.0, ft1  = 1.0
       0     3157        M 0x800006bc addi    a0, a0, -1             #; a0  = 333, (wrb) a0  <-- 332
                         M                                           #; (f:fpu) ft2  <-- 166.0
       0     3158        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100558, (wrb) a2  <-- 0x00100560
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 166.0, ft0  = 0.001
       0     3159        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 332, taken, goto 0x800006b0
       0     3161        M                                           #; (f:fpu) ft3  <-- 0.166
       0     3162        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.166 ~~> Doub[0x00100530]
       0     3163        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 166.0, ft1  = 1.0
       0     3166        M 0x800006bc addi    a0, a0, -1             #; a0  = 332, (wrb) a0  <-- 331
                         M                                           #; (f:fpu) ft2  <-- 167.0
       0     3167        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100560, (wrb) a2  <-- 0x00100568
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 167.0, ft0  = 0.001
       0     3168        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 331, taken, goto 0x800006b0
       0     3170        M                                           #; (f:fpu) ft3  <-- 0.167
       0     3171        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.167 ~~> Doub[0x00100538]
       0     3172        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 167.0, ft1  = 1.0
       0     3175        M 0x800006bc addi    a0, a0, -1             #; a0  = 331, (wrb) a0  <-- 330
                         M                                           #; (f:fpu) ft2  <-- 168.0
       0     3176        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100568, (wrb) a2  <-- 0x00100570
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 168.0, ft0  = 0.001
       0     3177        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 330, taken, goto 0x800006b0
       0     3179        M                                           #; (f:fpu) ft3  <-- 0.168
       0     3180        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.168 ~~> Doub[0x00100540]
       0     3181        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 168.0, ft1  = 1.0
       0     3184        M 0x800006bc addi    a0, a0, -1             #; a0  = 330, (wrb) a0  <-- 329
                         M                                           #; (f:fpu) ft2  <-- 169.0
       0     3185        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100570, (wrb) a2  <-- 0x00100578
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 169.0, ft0  = 0.001
       0     3186        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 329, taken, goto 0x800006b0
       0     3188        M                                           #; (f:fpu) ft3  <-- 0.169
       0     3189        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.169 ~~> Doub[0x00100548]
       0     3190        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 169.0, ft1  = 1.0
       0     3193        M 0x800006bc addi    a0, a0, -1             #; a0  = 329, (wrb) a0  <-- 328
                         M                                           #; (f:fpu) ft2  <-- 170.0
       0     3194        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100578, (wrb) a2  <-- 0x00100580
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 170.0, ft0  = 0.001
       0     3195        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 328, taken, goto 0x800006b0
       0     3197        M                                           #; (f:fpu) ft3  <-- 0.17
       0     3198        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.17 ~~> Doub[0x00100550]
       0     3199        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 170.0, ft1  = 1.0
       0     3202        M 0x800006bc addi    a0, a0, -1             #; a0  = 328, (wrb) a0  <-- 327
                         M                                           #; (f:fpu) ft2  <-- 171.0
       0     3203        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100580, (wrb) a2  <-- 0x00100588
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 171.0, ft0  = 0.001
       0     3204        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 327, taken, goto 0x800006b0
       0     3206        M                                           #; (f:fpu) ft3  <-- 0.171
       0     3207        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.171 ~~> Doub[0x00100558]
       0     3208        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 171.0, ft1  = 1.0
       0     3211        M 0x800006bc addi    a0, a0, -1             #; a0  = 327, (wrb) a0  <-- 326
                         M                                           #; (f:fpu) ft2  <-- 172.0
       0     3212        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100588, (wrb) a2  <-- 0x00100590
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 172.0, ft0  = 0.001
       0     3213        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 326, taken, goto 0x800006b0
       0     3215        M                                           #; (f:fpu) ft3  <-- 0.1720000
       0     3216        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.1720000 ~~> Doub[0x00100560]
       0     3217        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 172.0, ft1  = 1.0
       0     3220        M 0x800006bc addi    a0, a0, -1             #; a0  = 326, (wrb) a0  <-- 325
                         M                                           #; (f:fpu) ft2  <-- 173.0
       0     3221        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100590, (wrb) a2  <-- 0x00100598
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 173.0, ft0  = 0.001
       0     3222        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 325, taken, goto 0x800006b0
       0     3224        M                                           #; (f:fpu) ft3  <-- 0.1730000
       0     3225        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.1730000 ~~> Doub[0x00100568]
       0     3226        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 173.0, ft1  = 1.0
       0     3229        M 0x800006bc addi    a0, a0, -1             #; a0  = 325, (wrb) a0  <-- 324
                         M                                           #; (f:fpu) ft2  <-- 174.0
       0     3230        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100598, (wrb) a2  <-- 0x001005a0
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 174.0, ft0  = 0.001
       0     3231        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 324, taken, goto 0x800006b0
       0     3233        M                                           #; (f:fpu) ft3  <-- 0.1740000
       0     3234        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.1740000 ~~> Doub[0x00100570]
       0     3235        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 174.0, ft1  = 1.0
       0     3238        M 0x800006bc addi    a0, a0, -1             #; a0  = 324, (wrb) a0  <-- 323
                         M                                           #; (f:fpu) ft2  <-- 175.0
       0     3239        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001005a0, (wrb) a2  <-- 0x001005a8
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 175.0, ft0  = 0.001
       0     3240        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 323, taken, goto 0x800006b0
       0     3242        M                                           #; (f:fpu) ft3  <-- 0.1750000
       0     3243        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.1750000 ~~> Doub[0x00100578]
       0     3244        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 175.0, ft1  = 1.0
       0     3247        M 0x800006bc addi    a0, a0, -1             #; a0  = 323, (wrb) a0  <-- 322
                         M                                           #; (f:fpu) ft2  <-- 176.0
       0     3248        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001005a8, (wrb) a2  <-- 0x001005b0
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 176.0, ft0  = 0.001
       0     3249        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 322, taken, goto 0x800006b0
       0     3251        M                                           #; (f:fpu) ft3  <-- 0.176
       0     3252        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.176 ~~> Doub[0x00100580]
       0     3253        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 176.0, ft1  = 1.0
       0     3256        M 0x800006bc addi    a0, a0, -1             #; a0  = 322, (wrb) a0  <-- 321
                         M                                           #; (f:fpu) ft2  <-- 177.0
       0     3257        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001005b0, (wrb) a2  <-- 0x001005b8
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 177.0, ft0  = 0.001
       0     3258        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 321, taken, goto 0x800006b0
       0     3260        M                                           #; (f:fpu) ft3  <-- 0.177
       0     3261        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.177 ~~> Doub[0x00100588]
       0     3262        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 177.0, ft1  = 1.0
       0     3265        M 0x800006bc addi    a0, a0, -1             #; a0  = 321, (wrb) a0  <-- 320
                         M                                           #; (f:fpu) ft2  <-- 178.0
       0     3266        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001005b8, (wrb) a2  <-- 0x001005c0
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 178.0, ft0  = 0.001
       0     3267        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 320, taken, goto 0x800006b0
       0     3269        M                                           #; (f:fpu) ft3  <-- 0.178
       0     3270        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.178 ~~> Doub[0x00100590]
       0     3271        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 178.0, ft1  = 1.0
       0     3274        M 0x800006bc addi    a0, a0, -1             #; a0  = 320, (wrb) a0  <-- 319
                         M                                           #; (f:fpu) ft2  <-- 179.0
       0     3275        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001005c0, (wrb) a2  <-- 0x001005c8
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 179.0, ft0  = 0.001
       0     3276        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 319, taken, goto 0x800006b0
       0     3278        M                                           #; (f:fpu) ft3  <-- 0.179
       0     3279        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.179 ~~> Doub[0x00100598]
       0     3280        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 179.0, ft1  = 1.0
       0     3283        M 0x800006bc addi    a0, a0, -1             #; a0  = 319, (wrb) a0  <-- 318
                         M                                           #; (f:fpu) ft2  <-- 180.0
       0     3284        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001005c8, (wrb) a2  <-- 0x001005d0
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 180.0, ft0  = 0.001
       0     3285        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 318, taken, goto 0x800006b0
       0     3287        M                                           #; (f:fpu) ft3  <-- 0.18
       0     3288        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.18 ~~> Doub[0x001005a0]
       0     3289        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 180.0, ft1  = 1.0
       0     3292        M 0x800006bc addi    a0, a0, -1             #; a0  = 318, (wrb) a0  <-- 317
                         M                                           #; (f:fpu) ft2  <-- 181.0
       0     3293        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001005d0, (wrb) a2  <-- 0x001005d8
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 181.0, ft0  = 0.001
       0     3294        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 317, taken, goto 0x800006b0
       0     3296        M                                           #; (f:fpu) ft3  <-- 0.181
       0     3297        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.181 ~~> Doub[0x001005a8]
       0     3298        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 181.0, ft1  = 1.0
       0     3301        M 0x800006bc addi    a0, a0, -1             #; a0  = 317, (wrb) a0  <-- 316
                         M                                           #; (f:fpu) ft2  <-- 182.0
       0     3302        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001005d8, (wrb) a2  <-- 0x001005e0
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 182.0, ft0  = 0.001
       0     3303        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 316, taken, goto 0x800006b0
       0     3305        M                                           #; (f:fpu) ft3  <-- 0.182
       0     3306        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.182 ~~> Doub[0x001005b0]
       0     3307        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 182.0, ft1  = 1.0
       0     3310        M 0x800006bc addi    a0, a0, -1             #; a0  = 316, (wrb) a0  <-- 315
                         M                                           #; (f:fpu) ft2  <-- 183.0
       0     3311        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001005e0, (wrb) a2  <-- 0x001005e8
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 183.0, ft0  = 0.001
       0     3312        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 315, taken, goto 0x800006b0
       0     3314        M                                           #; (f:fpu) ft3  <-- 0.183
       0     3315        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.183 ~~> Doub[0x001005b8]
       0     3316        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 183.0, ft1  = 1.0
       0     3319        M 0x800006bc addi    a0, a0, -1             #; a0  = 315, (wrb) a0  <-- 314
                         M                                           #; (f:fpu) ft2  <-- 184.0
       0     3320        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001005e8, (wrb) a2  <-- 0x001005f0
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 184.0, ft0  = 0.001
       0     3321        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 314, taken, goto 0x800006b0
       0     3323        M                                           #; (f:fpu) ft3  <-- 0.184
       0     3324        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.184 ~~> Doub[0x001005c0]
       0     3325        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 184.0, ft1  = 1.0
       0     3328        M 0x800006bc addi    a0, a0, -1             #; a0  = 314, (wrb) a0  <-- 313
                         M                                           #; (f:fpu) ft2  <-- 185.0
       0     3329        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001005f0, (wrb) a2  <-- 0x001005f8
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 185.0, ft0  = 0.001
       0     3330        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 313, taken, goto 0x800006b0
       0     3332        M                                           #; (f:fpu) ft3  <-- 0.185
       0     3333        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.185 ~~> Doub[0x001005c8]
       0     3334        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 185.0, ft1  = 1.0
       0     3337        M 0x800006bc addi    a0, a0, -1             #; a0  = 313, (wrb) a0  <-- 312
                         M                                           #; (f:fpu) ft2  <-- 186.0
       0     3338        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001005f8, (wrb) a2  <-- 0x00100600
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 186.0, ft0  = 0.001
       0     3339        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 312, taken, goto 0x800006b0
       0     3341        M                                           #; (f:fpu) ft3  <-- 0.186
       0     3342        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.186 ~~> Doub[0x001005d0]
       0     3343        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 186.0, ft1  = 1.0
       0     3346        M 0x800006bc addi    a0, a0, -1             #; a0  = 312, (wrb) a0  <-- 311
                         M                                           #; (f:fpu) ft2  <-- 187.0
       0     3347        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100600, (wrb) a2  <-- 0x00100608
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 187.0, ft0  = 0.001
       0     3348        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 311, taken, goto 0x800006b0
       0     3350        M                                           #; (f:fpu) ft3  <-- 0.187
       0     3351        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.187 ~~> Doub[0x001005d8]
       0     3352        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 187.0, ft1  = 1.0
       0     3355        M 0x800006bc addi    a0, a0, -1             #; a0  = 311, (wrb) a0  <-- 310
                         M                                           #; (f:fpu) ft2  <-- 188.0
       0     3356        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100608, (wrb) a2  <-- 0x00100610
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 188.0, ft0  = 0.001
       0     3357        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 310, taken, goto 0x800006b0
       0     3359        M                                           #; (f:fpu) ft3  <-- 0.188
       0     3360        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.188 ~~> Doub[0x001005e0]
       0     3361        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 188.0, ft1  = 1.0
       0     3364        M 0x800006bc addi    a0, a0, -1             #; a0  = 310, (wrb) a0  <-- 309
                         M                                           #; (f:fpu) ft2  <-- 189.0
       0     3365        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100610, (wrb) a2  <-- 0x00100618
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 189.0, ft0  = 0.001
       0     3366        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 309, taken, goto 0x800006b0
       0     3368        M                                           #; (f:fpu) ft3  <-- 0.189
       0     3369        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.189 ~~> Doub[0x001005e8]
       0     3370        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 189.0, ft1  = 1.0
       0     3373        M 0x800006bc addi    a0, a0, -1             #; a0  = 309, (wrb) a0  <-- 308
                         M                                           #; (f:fpu) ft2  <-- 190.0
       0     3374        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100618, (wrb) a2  <-- 0x00100620
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 190.0, ft0  = 0.001
       0     3375        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 308, taken, goto 0x800006b0
       0     3377        M                                           #; (f:fpu) ft3  <-- 0.19
       0     3378        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.19 ~~> Doub[0x001005f0]
       0     3379        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 190.0, ft1  = 1.0
       0     3382        M 0x800006bc addi    a0, a0, -1             #; a0  = 308, (wrb) a0  <-- 307
                         M                                           #; (f:fpu) ft2  <-- 191.0
       0     3383        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100620, (wrb) a2  <-- 0x00100628
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 191.0, ft0  = 0.001
       0     3384        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 307, taken, goto 0x800006b0
       0     3386        M                                           #; (f:fpu) ft3  <-- 0.191
       0     3387        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.191 ~~> Doub[0x001005f8]
       0     3388        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 191.0, ft1  = 1.0
       0     3391        M 0x800006bc addi    a0, a0, -1             #; a0  = 307, (wrb) a0  <-- 306
                         M                                           #; (f:fpu) ft2  <-- 192.0
       0     3392        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100628, (wrb) a2  <-- 0x00100630
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 192.0, ft0  = 0.001
       0     3393        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 306, taken, goto 0x800006b0
       0     3395        M                                           #; (f:fpu) ft3  <-- 0.192
       0     3396        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.192 ~~> Doub[0x00100600]
       0     3397        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 192.0, ft1  = 1.0
       0     3400        M 0x800006bc addi    a0, a0, -1             #; a0  = 306, (wrb) a0  <-- 305
                         M                                           #; (f:fpu) ft2  <-- 193.0
       0     3401        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100630, (wrb) a2  <-- 0x00100638
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 193.0, ft0  = 0.001
       0     3402        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 305, taken, goto 0x800006b0
       0     3404        M                                           #; (f:fpu) ft3  <-- 0.193
       0     3405        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.193 ~~> Doub[0x00100608]
       0     3406        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 193.0, ft1  = 1.0
       0     3409        M 0x800006bc addi    a0, a0, -1             #; a0  = 305, (wrb) a0  <-- 304
                         M                                           #; (f:fpu) ft2  <-- 194.0
       0     3410        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100638, (wrb) a2  <-- 0x00100640
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 194.0, ft0  = 0.001
       0     3411        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 304, taken, goto 0x800006b0
       0     3413        M                                           #; (f:fpu) ft3  <-- 0.194
       0     3414        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.194 ~~> Doub[0x00100610]
       0     3415        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 194.0, ft1  = 1.0
       0     3418        M 0x800006bc addi    a0, a0, -1             #; a0  = 304, (wrb) a0  <-- 303
                         M                                           #; (f:fpu) ft2  <-- 195.0
       0     3419        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100640, (wrb) a2  <-- 0x00100648
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 195.0, ft0  = 0.001
       0     3420        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 303, taken, goto 0x800006b0
       0     3422        M                                           #; (f:fpu) ft3  <-- 0.195
       0     3423        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.195 ~~> Doub[0x00100618]
       0     3424        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 195.0, ft1  = 1.0
       0     3427        M 0x800006bc addi    a0, a0, -1             #; a0  = 303, (wrb) a0  <-- 302
                         M                                           #; (f:fpu) ft2  <-- 196.0
       0     3428        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100648, (wrb) a2  <-- 0x00100650
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 196.0, ft0  = 0.001
       0     3429        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 302, taken, goto 0x800006b0
       0     3431        M                                           #; (f:fpu) ft3  <-- 0.196
       0     3432        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.196 ~~> Doub[0x00100620]
       0     3433        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 196.0, ft1  = 1.0
       0     3436        M 0x800006bc addi    a0, a0, -1             #; a0  = 302, (wrb) a0  <-- 301
                         M                                           #; (f:fpu) ft2  <-- 197.0
       0     3437        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100650, (wrb) a2  <-- 0x00100658
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 197.0, ft0  = 0.001
       0     3438        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 301, taken, goto 0x800006b0
       0     3440        M                                           #; (f:fpu) ft3  <-- 0.197
       0     3441        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.197 ~~> Doub[0x00100628]
       0     3442        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 197.0, ft1  = 1.0
       0     3445        M 0x800006bc addi    a0, a0, -1             #; a0  = 301, (wrb) a0  <-- 300
                         M                                           #; (f:fpu) ft2  <-- 198.0
       0     3446        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100658, (wrb) a2  <-- 0x00100660
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 198.0, ft0  = 0.001
       0     3447        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 300, taken, goto 0x800006b0
       0     3449        M                                           #; (f:fpu) ft3  <-- 0.198
       0     3450        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.198 ~~> Doub[0x00100630]
       0     3451        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 198.0, ft1  = 1.0
       0     3454        M 0x800006bc addi    a0, a0, -1             #; a0  = 300, (wrb) a0  <-- 299
                         M                                           #; (f:fpu) ft2  <-- 199.0
       0     3455        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100660, (wrb) a2  <-- 0x00100668
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 199.0, ft0  = 0.001
       0     3456        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 299, taken, goto 0x800006b0
       0     3458        M                                           #; (f:fpu) ft3  <-- 0.199
       0     3459        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.199 ~~> Doub[0x00100638]
       0     3460        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 199.0, ft1  = 1.0
       0     3463        M 0x800006bc addi    a0, a0, -1             #; a0  = 299, (wrb) a0  <-- 298
                         M                                           #; (f:fpu) ft2  <-- 200.0
       0     3464        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100668, (wrb) a2  <-- 0x00100670
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 200.0, ft0  = 0.001
       0     3465        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 298, taken, goto 0x800006b0
       0     3467        M                                           #; (f:fpu) ft3  <-- 0.2
       0     3468        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.2 ~~> Doub[0x00100640]
       0     3469        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 200.0, ft1  = 1.0
       0     3472        M 0x800006bc addi    a0, a0, -1             #; a0  = 298, (wrb) a0  <-- 297
                         M                                           #; (f:fpu) ft2  <-- 201.0
       0     3473        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100670, (wrb) a2  <-- 0x00100678
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 201.0, ft0  = 0.001
       0     3474        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 297, taken, goto 0x800006b0
       0     3476        M                                           #; (f:fpu) ft3  <-- 0.201
       0     3477        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.201 ~~> Doub[0x00100648]
       0     3478        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 201.0, ft1  = 1.0
       0     3481        M 0x800006bc addi    a0, a0, -1             #; a0  = 297, (wrb) a0  <-- 296
                         M                                           #; (f:fpu) ft2  <-- 202.0
       0     3482        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100678, (wrb) a2  <-- 0x00100680
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 202.0, ft0  = 0.001
       0     3483        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 296, taken, goto 0x800006b0
       0     3485        M                                           #; (f:fpu) ft3  <-- 0.202
       0     3486        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.202 ~~> Doub[0x00100650]
       0     3487        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 202.0, ft1  = 1.0
       0     3490        M 0x800006bc addi    a0, a0, -1             #; a0  = 296, (wrb) a0  <-- 295
                         M                                           #; (f:fpu) ft2  <-- 203.0
       0     3491        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100680, (wrb) a2  <-- 0x00100688
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 203.0, ft0  = 0.001
       0     3492        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 295, taken, goto 0x800006b0
       0     3494        M                                           #; (f:fpu) ft3  <-- 0.203
       0     3495        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.203 ~~> Doub[0x00100658]
       0     3496        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 203.0, ft1  = 1.0
       0     3499        M 0x800006bc addi    a0, a0, -1             #; a0  = 295, (wrb) a0  <-- 294
                         M                                           #; (f:fpu) ft2  <-- 204.0
       0     3500        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100688, (wrb) a2  <-- 0x00100690
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 204.0, ft0  = 0.001
       0     3501        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 294, taken, goto 0x800006b0
       0     3503        M                                           #; (f:fpu) ft3  <-- 0.2040000
       0     3504        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.2040000 ~~> Doub[0x00100660]
       0     3505        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 204.0, ft1  = 1.0
       0     3508        M 0x800006bc addi    a0, a0, -1             #; a0  = 294, (wrb) a0  <-- 293
                         M                                           #; (f:fpu) ft2  <-- 205.0
       0     3509        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100690, (wrb) a2  <-- 0x00100698
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 205.0, ft0  = 0.001
       0     3510        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 293, taken, goto 0x800006b0
       0     3512        M                                           #; (f:fpu) ft3  <-- 0.2050000
       0     3513        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.2050000 ~~> Doub[0x00100668]
       0     3514        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 205.0, ft1  = 1.0
       0     3517        M 0x800006bc addi    a0, a0, -1             #; a0  = 293, (wrb) a0  <-- 292
                         M                                           #; (f:fpu) ft2  <-- 206.0
       0     3518        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100698, (wrb) a2  <-- 0x001006a0
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 206.0, ft0  = 0.001
       0     3519        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 292, taken, goto 0x800006b0
       0     3521        M                                           #; (f:fpu) ft3  <-- 0.2060000
       0     3522        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.2060000 ~~> Doub[0x00100670]
       0     3523        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 206.0, ft1  = 1.0
       0     3526        M 0x800006bc addi    a0, a0, -1             #; a0  = 292, (wrb) a0  <-- 291
                         M                                           #; (f:fpu) ft2  <-- 207.0
       0     3527        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001006a0, (wrb) a2  <-- 0x001006a8
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 207.0, ft0  = 0.001
       0     3528        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 291, taken, goto 0x800006b0
       0     3530        M                                           #; (f:fpu) ft3  <-- 0.2070000
       0     3531        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.2070000 ~~> Doub[0x00100678]
       0     3532        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 207.0, ft1  = 1.0
       0     3535        M 0x800006bc addi    a0, a0, -1             #; a0  = 291, (wrb) a0  <-- 290
                         M                                           #; (f:fpu) ft2  <-- 208.0
       0     3536        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001006a8, (wrb) a2  <-- 0x001006b0
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 208.0, ft0  = 0.001
       0     3537        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 290, taken, goto 0x800006b0
       0     3539        M                                           #; (f:fpu) ft3  <-- 0.2080000
       0     3540        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.2080000 ~~> Doub[0x00100680]
       0     3541        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 208.0, ft1  = 1.0
       0     3544        M 0x800006bc addi    a0, a0, -1             #; a0  = 290, (wrb) a0  <-- 289
                         M                                           #; (f:fpu) ft2  <-- 209.0
       0     3545        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001006b0, (wrb) a2  <-- 0x001006b8
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 209.0, ft0  = 0.001
       0     3546        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 289, taken, goto 0x800006b0
       0     3548        M                                           #; (f:fpu) ft3  <-- 0.209
       0     3549        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.209 ~~> Doub[0x00100688]
       0     3550        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 209.0, ft1  = 1.0
       0     3553        M 0x800006bc addi    a0, a0, -1             #; a0  = 289, (wrb) a0  <-- 288
                         M                                           #; (f:fpu) ft2  <-- 210.0
       0     3554        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001006b8, (wrb) a2  <-- 0x001006c0
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 210.0, ft0  = 0.001
       0     3555        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 288, taken, goto 0x800006b0
       0     3557        M                                           #; (f:fpu) ft3  <-- 0.21
       0     3558        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.21 ~~> Doub[0x00100690]
       0     3559        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 210.0, ft1  = 1.0
       0     3562        M 0x800006bc addi    a0, a0, -1             #; a0  = 288, (wrb) a0  <-- 287
                         M                                           #; (f:fpu) ft2  <-- 211.0
       0     3563        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001006c0, (wrb) a2  <-- 0x001006c8
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 211.0, ft0  = 0.001
       0     3564        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 287, taken, goto 0x800006b0
       0     3566        M                                           #; (f:fpu) ft3  <-- 0.211
       0     3567        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.211 ~~> Doub[0x00100698]
       0     3568        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 211.0, ft1  = 1.0
       0     3571        M 0x800006bc addi    a0, a0, -1             #; a0  = 287, (wrb) a0  <-- 286
                         M                                           #; (f:fpu) ft2  <-- 212.0
       0     3572        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001006c8, (wrb) a2  <-- 0x001006d0
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 212.0, ft0  = 0.001
       0     3573        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 286, taken, goto 0x800006b0
       0     3575        M                                           #; (f:fpu) ft3  <-- 0.212
       0     3576        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.212 ~~> Doub[0x001006a0]
       0     3577        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 212.0, ft1  = 1.0
       0     3580        M 0x800006bc addi    a0, a0, -1             #; a0  = 286, (wrb) a0  <-- 285
                         M                                           #; (f:fpu) ft2  <-- 213.0
       0     3581        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001006d0, (wrb) a2  <-- 0x001006d8
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 213.0, ft0  = 0.001
       0     3582        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 285, taken, goto 0x800006b0
       0     3584        M                                           #; (f:fpu) ft3  <-- 0.213
       0     3585        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.213 ~~> Doub[0x001006a8]
       0     3586        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 213.0, ft1  = 1.0
       0     3589        M 0x800006bc addi    a0, a0, -1             #; a0  = 285, (wrb) a0  <-- 284
                         M                                           #; (f:fpu) ft2  <-- 214.0
       0     3590        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001006d8, (wrb) a2  <-- 0x001006e0
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 214.0, ft0  = 0.001
       0     3591        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 284, taken, goto 0x800006b0
       0     3593        M                                           #; (f:fpu) ft3  <-- 0.214
       0     3594        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.214 ~~> Doub[0x001006b0]
       0     3595        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 214.0, ft1  = 1.0
       0     3598        M 0x800006bc addi    a0, a0, -1             #; a0  = 284, (wrb) a0  <-- 283
                         M                                           #; (f:fpu) ft2  <-- 215.0
       0     3599        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001006e0, (wrb) a2  <-- 0x001006e8
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 215.0, ft0  = 0.001
       0     3600        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 283, taken, goto 0x800006b0
       0     3602        M                                           #; (f:fpu) ft3  <-- 0.215
       0     3603        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.215 ~~> Doub[0x001006b8]
       0     3604        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 215.0, ft1  = 1.0
       0     3607        M 0x800006bc addi    a0, a0, -1             #; a0  = 283, (wrb) a0  <-- 282
                         M                                           #; (f:fpu) ft2  <-- 216.0
       0     3608        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001006e8, (wrb) a2  <-- 0x001006f0
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 216.0, ft0  = 0.001
       0     3609        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 282, taken, goto 0x800006b0
       0     3611        M                                           #; (f:fpu) ft3  <-- 0.216
       0     3612        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.216 ~~> Doub[0x001006c0]
       0     3613        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 216.0, ft1  = 1.0
       0     3616        M 0x800006bc addi    a0, a0, -1             #; a0  = 282, (wrb) a0  <-- 281
                         M                                           #; (f:fpu) ft2  <-- 217.0
       0     3617        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001006f0, (wrb) a2  <-- 0x001006f8
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 217.0, ft0  = 0.001
       0     3618        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 281, taken, goto 0x800006b0
       0     3620        M                                           #; (f:fpu) ft3  <-- 0.217
       0     3621        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.217 ~~> Doub[0x001006c8]
       0     3622        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 217.0, ft1  = 1.0
       0     3625        M 0x800006bc addi    a0, a0, -1             #; a0  = 281, (wrb) a0  <-- 280
                         M                                           #; (f:fpu) ft2  <-- 218.0
       0     3626        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001006f8, (wrb) a2  <-- 0x00100700
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 218.0, ft0  = 0.001
       0     3627        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 280, taken, goto 0x800006b0
       0     3629        M                                           #; (f:fpu) ft3  <-- 0.218
       0     3630        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.218 ~~> Doub[0x001006d0]
       0     3631        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 218.0, ft1  = 1.0
       0     3634        M 0x800006bc addi    a0, a0, -1             #; a0  = 280, (wrb) a0  <-- 279
                         M                                           #; (f:fpu) ft2  <-- 219.0
       0     3635        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100700, (wrb) a2  <-- 0x00100708
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 219.0, ft0  = 0.001
       0     3636        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 279, taken, goto 0x800006b0
       0     3638        M                                           #; (f:fpu) ft3  <-- 0.219
       0     3639        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.219 ~~> Doub[0x001006d8]
       0     3640        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 219.0, ft1  = 1.0
       0     3643        M 0x800006bc addi    a0, a0, -1             #; a0  = 279, (wrb) a0  <-- 278
                         M                                           #; (f:fpu) ft2  <-- 220.0
       0     3644        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100708, (wrb) a2  <-- 0x00100710
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 220.0, ft0  = 0.001
       0     3645        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 278, taken, goto 0x800006b0
       0     3647        M                                           #; (f:fpu) ft3  <-- 0.22
       0     3648        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.22 ~~> Doub[0x001006e0]
       0     3649        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 220.0, ft1  = 1.0
       0     3652        M 0x800006bc addi    a0, a0, -1             #; a0  = 278, (wrb) a0  <-- 277
                         M                                           #; (f:fpu) ft2  <-- 221.0
       0     3653        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100710, (wrb) a2  <-- 0x00100718
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 221.0, ft0  = 0.001
       0     3654        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 277, taken, goto 0x800006b0
       0     3656        M                                           #; (f:fpu) ft3  <-- 0.221
       0     3657        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.221 ~~> Doub[0x001006e8]
       0     3658        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 221.0, ft1  = 1.0
       0     3661        M 0x800006bc addi    a0, a0, -1             #; a0  = 277, (wrb) a0  <-- 276
                         M                                           #; (f:fpu) ft2  <-- 222.0
       0     3662        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100718, (wrb) a2  <-- 0x00100720
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 222.0, ft0  = 0.001
       0     3663        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 276, taken, goto 0x800006b0
       0     3665        M                                           #; (f:fpu) ft3  <-- 0.222
       0     3666        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.222 ~~> Doub[0x001006f0]
       0     3667        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 222.0, ft1  = 1.0
       0     3670        M 0x800006bc addi    a0, a0, -1             #; a0  = 276, (wrb) a0  <-- 275
                         M                                           #; (f:fpu) ft2  <-- 223.0
       0     3671        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100720, (wrb) a2  <-- 0x00100728
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 223.0, ft0  = 0.001
       0     3672        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 275, taken, goto 0x800006b0
       0     3674        M                                           #; (f:fpu) ft3  <-- 0.223
       0     3675        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.223 ~~> Doub[0x001006f8]
       0     3676        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 223.0, ft1  = 1.0
       0     3679        M 0x800006bc addi    a0, a0, -1             #; a0  = 275, (wrb) a0  <-- 274
                         M                                           #; (f:fpu) ft2  <-- 224.0
       0     3680        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100728, (wrb) a2  <-- 0x00100730
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 224.0, ft0  = 0.001
       0     3681        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 274, taken, goto 0x800006b0
       0     3683        M                                           #; (f:fpu) ft3  <-- 0.224
       0     3684        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.224 ~~> Doub[0x00100700]
       0     3685        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 224.0, ft1  = 1.0
       0     3688        M 0x800006bc addi    a0, a0, -1             #; a0  = 274, (wrb) a0  <-- 273
                         M                                           #; (f:fpu) ft2  <-- 225.0
       0     3689        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100730, (wrb) a2  <-- 0x00100738
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 225.0, ft0  = 0.001
       0     3690        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 273, taken, goto 0x800006b0
       0     3692        M                                           #; (f:fpu) ft3  <-- 0.225
       0     3693        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.225 ~~> Doub[0x00100708]
       0     3694        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 225.0, ft1  = 1.0
       0     3697        M 0x800006bc addi    a0, a0, -1             #; a0  = 273, (wrb) a0  <-- 272
                         M                                           #; (f:fpu) ft2  <-- 226.0
       0     3698        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100738, (wrb) a2  <-- 0x00100740
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 226.0, ft0  = 0.001
       0     3699        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 272, taken, goto 0x800006b0
       0     3701        M                                           #; (f:fpu) ft3  <-- 0.226
       0     3702        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.226 ~~> Doub[0x00100710]
       0     3703        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 226.0, ft1  = 1.0
       0     3706        M 0x800006bc addi    a0, a0, -1             #; a0  = 272, (wrb) a0  <-- 271
                         M                                           #; (f:fpu) ft2  <-- 227.0
       0     3707        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100740, (wrb) a2  <-- 0x00100748
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 227.0, ft0  = 0.001
       0     3708        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 271, taken, goto 0x800006b0
       0     3710        M                                           #; (f:fpu) ft3  <-- 0.227
       0     3711        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.227 ~~> Doub[0x00100718]
       0     3712        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 227.0, ft1  = 1.0
       0     3715        M 0x800006bc addi    a0, a0, -1             #; a0  = 271, (wrb) a0  <-- 270
                         M                                           #; (f:fpu) ft2  <-- 228.0
       0     3716        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100748, (wrb) a2  <-- 0x00100750
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 228.0, ft0  = 0.001
       0     3717        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 270, taken, goto 0x800006b0
       0     3719        M                                           #; (f:fpu) ft3  <-- 0.228
       0     3720        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.228 ~~> Doub[0x00100720]
       0     3721        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 228.0, ft1  = 1.0
       0     3724        M 0x800006bc addi    a0, a0, -1             #; a0  = 270, (wrb) a0  <-- 269
                         M                                           #; (f:fpu) ft2  <-- 229.0
       0     3725        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100750, (wrb) a2  <-- 0x00100758
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 229.0, ft0  = 0.001
       0     3726        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 269, taken, goto 0x800006b0
       0     3728        M                                           #; (f:fpu) ft3  <-- 0.229
       0     3729        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.229 ~~> Doub[0x00100728]
       0     3730        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 229.0, ft1  = 1.0
       0     3733        M 0x800006bc addi    a0, a0, -1             #; a0  = 269, (wrb) a0  <-- 268
                         M                                           #; (f:fpu) ft2  <-- 230.0
       0     3734        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100758, (wrb) a2  <-- 0x00100760
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 230.0, ft0  = 0.001
       0     3735        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 268, taken, goto 0x800006b0
       0     3737        M                                           #; (f:fpu) ft3  <-- 0.23
       0     3738        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.23 ~~> Doub[0x00100730]
       0     3739        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 230.0, ft1  = 1.0
       0     3742        M 0x800006bc addi    a0, a0, -1             #; a0  = 268, (wrb) a0  <-- 267
                         M                                           #; (f:fpu) ft2  <-- 231.0
       0     3743        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100760, (wrb) a2  <-- 0x00100768
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 231.0, ft0  = 0.001
       0     3744        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 267, taken, goto 0x800006b0
       0     3746        M                                           #; (f:fpu) ft3  <-- 0.231
       0     3747        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.231 ~~> Doub[0x00100738]
       0     3748        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 231.0, ft1  = 1.0
       0     3751        M 0x800006bc addi    a0, a0, -1             #; a0  = 267, (wrb) a0  <-- 266
                         M                                           #; (f:fpu) ft2  <-- 232.0
       0     3752        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100768, (wrb) a2  <-- 0x00100770
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 232.0, ft0  = 0.001
       0     3753        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 266, taken, goto 0x800006b0
       0     3755        M                                           #; (f:fpu) ft3  <-- 0.232
       0     3756        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.232 ~~> Doub[0x00100740]
       0     3757        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 232.0, ft1  = 1.0
       0     3760        M 0x800006bc addi    a0, a0, -1             #; a0  = 266, (wrb) a0  <-- 265
                         M                                           #; (f:fpu) ft2  <-- 233.0
       0     3761        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100770, (wrb) a2  <-- 0x00100778
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 233.0, ft0  = 0.001
       0     3762        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 265, taken, goto 0x800006b0
       0     3764        M                                           #; (f:fpu) ft3  <-- 0.233
       0     3765        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.233 ~~> Doub[0x00100748]
       0     3766        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 233.0, ft1  = 1.0
       0     3769        M 0x800006bc addi    a0, a0, -1             #; a0  = 265, (wrb) a0  <-- 264
                         M                                           #; (f:fpu) ft2  <-- 234.0
       0     3770        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100778, (wrb) a2  <-- 0x00100780
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 234.0, ft0  = 0.001
       0     3771        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 264, taken, goto 0x800006b0
       0     3773        M                                           #; (f:fpu) ft3  <-- 0.234
       0     3774        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.234 ~~> Doub[0x00100750]
       0     3775        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 234.0, ft1  = 1.0
       0     3778        M 0x800006bc addi    a0, a0, -1             #; a0  = 264, (wrb) a0  <-- 263
                         M                                           #; (f:fpu) ft2  <-- 235.0
       0     3779        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100780, (wrb) a2  <-- 0x00100788
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 235.0, ft0  = 0.001
       0     3780        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 263, taken, goto 0x800006b0
       0     3782        M                                           #; (f:fpu) ft3  <-- 0.2350000
       0     3783        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.2350000 ~~> Doub[0x00100758]
       0     3784        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 235.0, ft1  = 1.0
       0     3787        M 0x800006bc addi    a0, a0, -1             #; a0  = 263, (wrb) a0  <-- 262
                         M                                           #; (f:fpu) ft2  <-- 236.0
       0     3788        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100788, (wrb) a2  <-- 0x00100790
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 236.0, ft0  = 0.001
       0     3789        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 262, taken, goto 0x800006b0
       0     3791        M                                           #; (f:fpu) ft3  <-- 0.2360000
       0     3792        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.2360000 ~~> Doub[0x00100760]
       0     3793        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 236.0, ft1  = 1.0
       0     3796        M 0x800006bc addi    a0, a0, -1             #; a0  = 262, (wrb) a0  <-- 261
                         M                                           #; (f:fpu) ft2  <-- 237.0
       0     3797        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100790, (wrb) a2  <-- 0x00100798
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 237.0, ft0  = 0.001
       0     3798        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 261, taken, goto 0x800006b0
       0     3800        M                                           #; (f:fpu) ft3  <-- 0.2370000
       0     3801        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.2370000 ~~> Doub[0x00100768]
       0     3802        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 237.0, ft1  = 1.0
       0     3805        M 0x800006bc addi    a0, a0, -1             #; a0  = 261, (wrb) a0  <-- 260
                         M                                           #; (f:fpu) ft2  <-- 238.0
       0     3806        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100798, (wrb) a2  <-- 0x001007a0
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 238.0, ft0  = 0.001
       0     3807        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 260, taken, goto 0x800006b0
       0     3809        M                                           #; (f:fpu) ft3  <-- 0.2380000
       0     3810        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.2380000 ~~> Doub[0x00100770]
       0     3811        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 238.0, ft1  = 1.0
       0     3814        M 0x800006bc addi    a0, a0, -1             #; a0  = 260, (wrb) a0  <-- 259
                         M                                           #; (f:fpu) ft2  <-- 239.0
       0     3815        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001007a0, (wrb) a2  <-- 0x001007a8
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 239.0, ft0  = 0.001
       0     3816        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 259, taken, goto 0x800006b0
       0     3818        M                                           #; (f:fpu) ft3  <-- 0.2390000
       0     3819        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.2390000 ~~> Doub[0x00100778]
       0     3820        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 239.0, ft1  = 1.0
       0     3823        M 0x800006bc addi    a0, a0, -1             #; a0  = 259, (wrb) a0  <-- 258
                         M                                           #; (f:fpu) ft2  <-- 240.0
       0     3824        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001007a8, (wrb) a2  <-- 0x001007b0
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 240.0, ft0  = 0.001
       0     3825        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 258, taken, goto 0x800006b0
       0     3827        M                                           #; (f:fpu) ft3  <-- 0.24
       0     3828        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.24 ~~> Doub[0x00100780]
       0     3829        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 240.0, ft1  = 1.0
       0     3832        M 0x800006bc addi    a0, a0, -1             #; a0  = 258, (wrb) a0  <-- 257
                         M                                           #; (f:fpu) ft2  <-- 241.0
       0     3833        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001007b0, (wrb) a2  <-- 0x001007b8
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 241.0, ft0  = 0.001
       0     3834        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 257, taken, goto 0x800006b0
       0     3836        M                                           #; (f:fpu) ft3  <-- 0.241
       0     3837        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.241 ~~> Doub[0x00100788]
       0     3838        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 241.0, ft1  = 1.0
       0     3841        M 0x800006bc addi    a0, a0, -1             #; a0  = 257, (wrb) a0  <-- 256
                         M                                           #; (f:fpu) ft2  <-- 242.0
       0     3842        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001007b8, (wrb) a2  <-- 0x001007c0
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 242.0, ft0  = 0.001
       0     3843        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 256, taken, goto 0x800006b0
       0     3845        M                                           #; (f:fpu) ft3  <-- 0.242
       0     3846        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.242 ~~> Doub[0x00100790]
       0     3847        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 242.0, ft1  = 1.0
       0     3850        M 0x800006bc addi    a0, a0, -1             #; a0  = 256, (wrb) a0  <-- 255
                         M                                           #; (f:fpu) ft2  <-- 243.0
       0     3851        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001007c0, (wrb) a2  <-- 0x001007c8
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 243.0, ft0  = 0.001
       0     3852        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 255, taken, goto 0x800006b0
       0     3854        M                                           #; (f:fpu) ft3  <-- 0.243
       0     3855        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.243 ~~> Doub[0x00100798]
       0     3856        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 243.0, ft1  = 1.0
       0     3859        M 0x800006bc addi    a0, a0, -1             #; a0  = 255, (wrb) a0  <-- 254
                         M                                           #; (f:fpu) ft2  <-- 244.0
       0     3860        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001007c8, (wrb) a2  <-- 0x001007d0
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 244.0, ft0  = 0.001
       0     3861        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 254, taken, goto 0x800006b0
       0     3863        M                                           #; (f:fpu) ft3  <-- 0.244
       0     3864        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.244 ~~> Doub[0x001007a0]
       0     3865        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 244.0, ft1  = 1.0
       0     3868        M 0x800006bc addi    a0, a0, -1             #; a0  = 254, (wrb) a0  <-- 253
                         M                                           #; (f:fpu) ft2  <-- 245.0
       0     3869        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001007d0, (wrb) a2  <-- 0x001007d8
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 245.0, ft0  = 0.001
       0     3870        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 253, taken, goto 0x800006b0
       0     3872        M                                           #; (f:fpu) ft3  <-- 0.245
       0     3873        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.245 ~~> Doub[0x001007a8]
       0     3874        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 245.0, ft1  = 1.0
       0     3877        M 0x800006bc addi    a0, a0, -1             #; a0  = 253, (wrb) a0  <-- 252
                         M                                           #; (f:fpu) ft2  <-- 246.0
       0     3878        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001007d8, (wrb) a2  <-- 0x001007e0
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 246.0, ft0  = 0.001
       0     3879        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 252, taken, goto 0x800006b0
       0     3881        M                                           #; (f:fpu) ft3  <-- 0.246
       0     3882        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.246 ~~> Doub[0x001007b0]
       0     3883        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 246.0, ft1  = 1.0
       0     3886        M 0x800006bc addi    a0, a0, -1             #; a0  = 252, (wrb) a0  <-- 251
                         M                                           #; (f:fpu) ft2  <-- 247.0
       0     3887        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001007e0, (wrb) a2  <-- 0x001007e8
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 247.0, ft0  = 0.001
       0     3888        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 251, taken, goto 0x800006b0
       0     3890        M                                           #; (f:fpu) ft3  <-- 0.247
       0     3891        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.247 ~~> Doub[0x001007b8]
       0     3892        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 247.0, ft1  = 1.0
       0     3895        M 0x800006bc addi    a0, a0, -1             #; a0  = 251, (wrb) a0  <-- 250
                         M                                           #; (f:fpu) ft2  <-- 248.0
       0     3896        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001007e8, (wrb) a2  <-- 0x001007f0
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 248.0, ft0  = 0.001
       0     3897        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 250, taken, goto 0x800006b0
       0     3899        M                                           #; (f:fpu) ft3  <-- 0.248
       0     3900        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.248 ~~> Doub[0x001007c0]
       0     3901        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 248.0, ft1  = 1.0
       0     3904        M 0x800006bc addi    a0, a0, -1             #; a0  = 250, (wrb) a0  <-- 249
                         M                                           #; (f:fpu) ft2  <-- 249.0
       0     3905        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001007f0, (wrb) a2  <-- 0x001007f8
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 249.0, ft0  = 0.001
       0     3906        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 249, taken, goto 0x800006b0
       0     3908        M                                           #; (f:fpu) ft3  <-- 0.249
       0     3909        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.249 ~~> Doub[0x001007c8]
       0     3910        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 249.0, ft1  = 1.0
       0     3913        M 0x800006bc addi    a0, a0, -1             #; a0  = 249, (wrb) a0  <-- 248
                         M                                           #; (f:fpu) ft2  <-- 250.0
       0     3914        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001007f8, (wrb) a2  <-- 0x00100800
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 250.0, ft0  = 0.001
       0     3915        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 248, taken, goto 0x800006b0
       0     3917        M                                           #; (f:fpu) ft3  <-- 0.25
       0     3918        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.25 ~~> Doub[0x001007d0]
       0     3919        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 250.0, ft1  = 1.0
       0     3922        M 0x800006bc addi    a0, a0, -1             #; a0  = 248, (wrb) a0  <-- 247
                         M                                           #; (f:fpu) ft2  <-- 251.0
       0     3923        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100800, (wrb) a2  <-- 0x00100808
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 251.0, ft0  = 0.001
       0     3924        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 247, taken, goto 0x800006b0
       0     3926        M                                           #; (f:fpu) ft3  <-- 0.251
       0     3927        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.251 ~~> Doub[0x001007d8]
       0     3928        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 251.0, ft1  = 1.0
       0     3931        M 0x800006bc addi    a0, a0, -1             #; a0  = 247, (wrb) a0  <-- 246
                         M                                           #; (f:fpu) ft2  <-- 252.0
       0     3932        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100808, (wrb) a2  <-- 0x00100810
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 252.0, ft0  = 0.001
       0     3933        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 246, taken, goto 0x800006b0
       0     3935        M                                           #; (f:fpu) ft3  <-- 0.252
       0     3936        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.252 ~~> Doub[0x001007e0]
       0     3937        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 252.0, ft1  = 1.0
       0     3940        M 0x800006bc addi    a0, a0, -1             #; a0  = 246, (wrb) a0  <-- 245
                         M                                           #; (f:fpu) ft2  <-- 253.0
       0     3941        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100810, (wrb) a2  <-- 0x00100818
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 253.0, ft0  = 0.001
       0     3942        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 245, taken, goto 0x800006b0
       0     3944        M                                           #; (f:fpu) ft3  <-- 0.253
       0     3945        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.253 ~~> Doub[0x001007e8]
       0     3946        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 253.0, ft1  = 1.0
       0     3949        M 0x800006bc addi    a0, a0, -1             #; a0  = 245, (wrb) a0  <-- 244
                         M                                           #; (f:fpu) ft2  <-- 254.0
       0     3950        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100818, (wrb) a2  <-- 0x00100820
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 254.0, ft0  = 0.001
       0     3951        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 244, taken, goto 0x800006b0
       0     3953        M                                           #; (f:fpu) ft3  <-- 0.254
       0     3954        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.254 ~~> Doub[0x001007f0]
       0     3955        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 254.0, ft1  = 1.0
       0     3958        M 0x800006bc addi    a0, a0, -1             #; a0  = 244, (wrb) a0  <-- 243
                         M                                           #; (f:fpu) ft2  <-- 255.0
       0     3959        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100820, (wrb) a2  <-- 0x00100828
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 255.0, ft0  = 0.001
       0     3960        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 243, taken, goto 0x800006b0
       0     3962        M                                           #; (f:fpu) ft3  <-- 0.255
       0     3963        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.255 ~~> Doub[0x001007f8]
       0     3964        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 255.0, ft1  = 1.0
       0     3967        M 0x800006bc addi    a0, a0, -1             #; a0  = 243, (wrb) a0  <-- 242
                         M                                           #; (f:fpu) ft2  <-- 256.0
       0     3968        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100828, (wrb) a2  <-- 0x00100830
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 256.0, ft0  = 0.001
       0     3969        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 242, taken, goto 0x800006b0
       0     3971        M                                           #; (f:fpu) ft3  <-- 0.256
       0     3972        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.256 ~~> Doub[0x00100800]
       0     3973        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 256.0, ft1  = 1.0
       0     3976        M 0x800006bc addi    a0, a0, -1             #; a0  = 242, (wrb) a0  <-- 241
                         M                                           #; (f:fpu) ft2  <-- 257.0
       0     3977        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100830, (wrb) a2  <-- 0x00100838
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 257.0, ft0  = 0.001
       0     3978        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 241, taken, goto 0x800006b0
       0     3980        M                                           #; (f:fpu) ft3  <-- 0.257
       0     3981        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.257 ~~> Doub[0x00100808]
       0     3982        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 257.0, ft1  = 1.0
       0     3985        M 0x800006bc addi    a0, a0, -1             #; a0  = 241, (wrb) a0  <-- 240
                         M                                           #; (f:fpu) ft2  <-- 258.0
       0     3986        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100838, (wrb) a2  <-- 0x00100840
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 258.0, ft0  = 0.001
       0     3987        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 240, taken, goto 0x800006b0
       0     3989        M                                           #; (f:fpu) ft3  <-- 0.258
       0     3990        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.258 ~~> Doub[0x00100810]
       0     3991        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 258.0, ft1  = 1.0
       0     3994        M 0x800006bc addi    a0, a0, -1             #; a0  = 240, (wrb) a0  <-- 239
                         M                                           #; (f:fpu) ft2  <-- 259.0
       0     3995        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100840, (wrb) a2  <-- 0x00100848
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 259.0, ft0  = 0.001
       0     3996        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 239, taken, goto 0x800006b0
       0     3998        M                                           #; (f:fpu) ft3  <-- 0.259
       0     3999        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.259 ~~> Doub[0x00100818]
       0     4000        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 259.0, ft1  = 1.0
       0     4003        M 0x800006bc addi    a0, a0, -1             #; a0  = 239, (wrb) a0  <-- 238
                         M                                           #; (f:fpu) ft2  <-- 260.0
       0     4004        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100848, (wrb) a2  <-- 0x00100850
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 260.0, ft0  = 0.001
       0     4005        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 238, taken, goto 0x800006b0
       0     4007        M                                           #; (f:fpu) ft3  <-- 0.26
       0     4008        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.26 ~~> Doub[0x00100820]
       0     4009        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 260.0, ft1  = 1.0
       0     4012        M 0x800006bc addi    a0, a0, -1             #; a0  = 238, (wrb) a0  <-- 237
                         M                                           #; (f:fpu) ft2  <-- 261.0
       0     4013        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100850, (wrb) a2  <-- 0x00100858
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 261.0, ft0  = 0.001
       0     4014        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 237, taken, goto 0x800006b0
       0     4016        M                                           #; (f:fpu) ft3  <-- 0.261
       0     4017        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.261 ~~> Doub[0x00100828]
       0     4018        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 261.0, ft1  = 1.0
       0     4021        M 0x800006bc addi    a0, a0, -1             #; a0  = 237, (wrb) a0  <-- 236
                         M                                           #; (f:fpu) ft2  <-- 262.0
       0     4022        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100858, (wrb) a2  <-- 0x00100860
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 262.0, ft0  = 0.001
       0     4023        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 236, taken, goto 0x800006b0
       0     4025        M                                           #; (f:fpu) ft3  <-- 0.262
       0     4026        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.262 ~~> Doub[0x00100830]
       0     4027        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 262.0, ft1  = 1.0
       0     4030        M 0x800006bc addi    a0, a0, -1             #; a0  = 236, (wrb) a0  <-- 235
                         M                                           #; (f:fpu) ft2  <-- 263.0
       0     4031        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100860, (wrb) a2  <-- 0x00100868
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 263.0, ft0  = 0.001
       0     4032        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 235, taken, goto 0x800006b0
       0     4034        M                                           #; (f:fpu) ft3  <-- 0.263
       0     4035        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.263 ~~> Doub[0x00100838]
       0     4036        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 263.0, ft1  = 1.0
       0     4039        M 0x800006bc addi    a0, a0, -1             #; a0  = 235, (wrb) a0  <-- 234
                         M                                           #; (f:fpu) ft2  <-- 264.0
       0     4040        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100868, (wrb) a2  <-- 0x00100870
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 264.0, ft0  = 0.001
       0     4041        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 234, taken, goto 0x800006b0
       0     4043        M                                           #; (f:fpu) ft3  <-- 0.264
       0     4044        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.264 ~~> Doub[0x00100840]
       0     4045        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 264.0, ft1  = 1.0
       0     4048        M 0x800006bc addi    a0, a0, -1             #; a0  = 234, (wrb) a0  <-- 233
                         M                                           #; (f:fpu) ft2  <-- 265.0
       0     4049        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100870, (wrb) a2  <-- 0x00100878
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 265.0, ft0  = 0.001
       0     4050        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 233, taken, goto 0x800006b0
       0     4052        M                                           #; (f:fpu) ft3  <-- 0.265
       0     4053        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.265 ~~> Doub[0x00100848]
       0     4054        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 265.0, ft1  = 1.0
       0     4057        M 0x800006bc addi    a0, a0, -1             #; a0  = 233, (wrb) a0  <-- 232
                         M                                           #; (f:fpu) ft2  <-- 266.0
       0     4058        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100878, (wrb) a2  <-- 0x00100880
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 266.0, ft0  = 0.001
       0     4059        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 232, taken, goto 0x800006b0
       0     4061        M                                           #; (f:fpu) ft3  <-- 0.266
       0     4062        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.266 ~~> Doub[0x00100850]
       0     4063        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 266.0, ft1  = 1.0
       0     4066        M 0x800006bc addi    a0, a0, -1             #; a0  = 232, (wrb) a0  <-- 231
                         M                                           #; (f:fpu) ft2  <-- 267.0
       0     4067        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100880, (wrb) a2  <-- 0x00100888
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 267.0, ft0  = 0.001
       0     4068        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 231, taken, goto 0x800006b0
       0     4070        M                                           #; (f:fpu) ft3  <-- 0.267
       0     4071        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.267 ~~> Doub[0x00100858]
       0     4072        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 267.0, ft1  = 1.0
       0     4075        M 0x800006bc addi    a0, a0, -1             #; a0  = 231, (wrb) a0  <-- 230
                         M                                           #; (f:fpu) ft2  <-- 268.0
       0     4076        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100888, (wrb) a2  <-- 0x00100890
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 268.0, ft0  = 0.001
       0     4077        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 230, taken, goto 0x800006b0
       0     4079        M                                           #; (f:fpu) ft3  <-- 0.268
       0     4080        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.268 ~~> Doub[0x00100860]
       0     4081        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 268.0, ft1  = 1.0
       0     4084        M 0x800006bc addi    a0, a0, -1             #; a0  = 230, (wrb) a0  <-- 229
                         M                                           #; (f:fpu) ft2  <-- 269.0
       0     4085        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100890, (wrb) a2  <-- 0x00100898
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 269.0, ft0  = 0.001
       0     4086        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 229, taken, goto 0x800006b0
       0     4088        M                                           #; (f:fpu) ft3  <-- 0.269
       0     4089        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.269 ~~> Doub[0x00100868]
       0     4090        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 269.0, ft1  = 1.0
       0     4093        M 0x800006bc addi    a0, a0, -1             #; a0  = 229, (wrb) a0  <-- 228
                         M                                           #; (f:fpu) ft2  <-- 270.0
       0     4094        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100898, (wrb) a2  <-- 0x001008a0
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 270.0, ft0  = 0.001
       0     4095        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 228, taken, goto 0x800006b0
       0     4097        M                                           #; (f:fpu) ft3  <-- 0.27
       0     4098        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.27 ~~> Doub[0x00100870]
       0     4099        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 270.0, ft1  = 1.0
       0     4102        M 0x800006bc addi    a0, a0, -1             #; a0  = 228, (wrb) a0  <-- 227
                         M                                           #; (f:fpu) ft2  <-- 271.0
       0     4103        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001008a0, (wrb) a2  <-- 0x001008a8
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 271.0, ft0  = 0.001
       0     4104        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 227, taken, goto 0x800006b0
       0     4106        M                                           #; (f:fpu) ft3  <-- 0.271
       0     4107        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.271 ~~> Doub[0x00100878]
       0     4108        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 271.0, ft1  = 1.0
       0     4111        M 0x800006bc addi    a0, a0, -1             #; a0  = 227, (wrb) a0  <-- 226
                         M                                           #; (f:fpu) ft2  <-- 272.0
       0     4112        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001008a8, (wrb) a2  <-- 0x001008b0
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 272.0, ft0  = 0.001
       0     4113        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 226, taken, goto 0x800006b0
       0     4115        M                                           #; (f:fpu) ft3  <-- 0.272
       0     4116        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.272 ~~> Doub[0x00100880]
       0     4117        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 272.0, ft1  = 1.0
       0     4120        M 0x800006bc addi    a0, a0, -1             #; a0  = 226, (wrb) a0  <-- 225
                         M                                           #; (f:fpu) ft2  <-- 273.0
       0     4121        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001008b0, (wrb) a2  <-- 0x001008b8
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 273.0, ft0  = 0.001
       0     4122        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 225, taken, goto 0x800006b0
       0     4124        M                                           #; (f:fpu) ft3  <-- 0.273
       0     4125        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.273 ~~> Doub[0x00100888]
       0     4126        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 273.0, ft1  = 1.0
       0     4129        M 0x800006bc addi    a0, a0, -1             #; a0  = 225, (wrb) a0  <-- 224
                         M                                           #; (f:fpu) ft2  <-- 274.0
       0     4130        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001008b8, (wrb) a2  <-- 0x001008c0
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 274.0, ft0  = 0.001
       0     4131        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 224, taken, goto 0x800006b0
       0     4133        M                                           #; (f:fpu) ft3  <-- 0.274
       0     4134        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.274 ~~> Doub[0x00100890]
       0     4135        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 274.0, ft1  = 1.0
       0     4138        M 0x800006bc addi    a0, a0, -1             #; a0  = 224, (wrb) a0  <-- 223
                         M                                           #; (f:fpu) ft2  <-- 275.0
       0     4139        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001008c0, (wrb) a2  <-- 0x001008c8
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 275.0, ft0  = 0.001
       0     4140        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 223, taken, goto 0x800006b0
       0     4142        M                                           #; (f:fpu) ft3  <-- 0.275
       0     4143        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.275 ~~> Doub[0x00100898]
       0     4144        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 275.0, ft1  = 1.0
       0     4147        M 0x800006bc addi    a0, a0, -1             #; a0  = 223, (wrb) a0  <-- 222
                         M                                           #; (f:fpu) ft2  <-- 276.0
       0     4148        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001008c8, (wrb) a2  <-- 0x001008d0
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 276.0, ft0  = 0.001
       0     4149        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 222, taken, goto 0x800006b0
       0     4151        M                                           #; (f:fpu) ft3  <-- 0.276
       0     4152        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.276 ~~> Doub[0x001008a0]
       0     4153        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 276.0, ft1  = 1.0
       0     4156        M 0x800006bc addi    a0, a0, -1             #; a0  = 222, (wrb) a0  <-- 221
                         M                                           #; (f:fpu) ft2  <-- 277.0
       0     4157        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001008d0, (wrb) a2  <-- 0x001008d8
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 277.0, ft0  = 0.001
       0     4158        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 221, taken, goto 0x800006b0
       0     4160        M                                           #; (f:fpu) ft3  <-- 0.277
       0     4161        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.277 ~~> Doub[0x001008a8]
       0     4162        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 277.0, ft1  = 1.0
       0     4165        M 0x800006bc addi    a0, a0, -1             #; a0  = 221, (wrb) a0  <-- 220
                         M                                           #; (f:fpu) ft2  <-- 278.0
       0     4166        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001008d8, (wrb) a2  <-- 0x001008e0
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 278.0, ft0  = 0.001
       0     4167        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 220, taken, goto 0x800006b0
       0     4169        M                                           #; (f:fpu) ft3  <-- 0.278
       0     4170        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.278 ~~> Doub[0x001008b0]
       0     4171        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 278.0, ft1  = 1.0
       0     4174        M 0x800006bc addi    a0, a0, -1             #; a0  = 220, (wrb) a0  <-- 219
                         M                                           #; (f:fpu) ft2  <-- 279.0
       0     4175        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001008e0, (wrb) a2  <-- 0x001008e8
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 279.0, ft0  = 0.001
       0     4176        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 219, taken, goto 0x800006b0
       0     4178        M                                           #; (f:fpu) ft3  <-- 0.279
       0     4179        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.279 ~~> Doub[0x001008b8]
       0     4180        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 279.0, ft1  = 1.0
       0     4183        M 0x800006bc addi    a0, a0, -1             #; a0  = 219, (wrb) a0  <-- 218
                         M                                           #; (f:fpu) ft2  <-- 280.0
       0     4184        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001008e8, (wrb) a2  <-- 0x001008f0
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 280.0, ft0  = 0.001
       0     4185        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 218, taken, goto 0x800006b0
       0     4187        M                                           #; (f:fpu) ft3  <-- 0.28
       0     4188        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.28 ~~> Doub[0x001008c0]
       0     4189        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 280.0, ft1  = 1.0
       0     4192        M 0x800006bc addi    a0, a0, -1             #; a0  = 218, (wrb) a0  <-- 217
                         M                                           #; (f:fpu) ft2  <-- 281.0
       0     4193        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001008f0, (wrb) a2  <-- 0x001008f8
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 281.0, ft0  = 0.001
       0     4194        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 217, taken, goto 0x800006b0
       0     4196        M                                           #; (f:fpu) ft3  <-- 0.281
       0     4197        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.281 ~~> Doub[0x001008c8]
       0     4198        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 281.0, ft1  = 1.0
       0     4201        M 0x800006bc addi    a0, a0, -1             #; a0  = 217, (wrb) a0  <-- 216
                         M                                           #; (f:fpu) ft2  <-- 282.0
       0     4202        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001008f8, (wrb) a2  <-- 0x00100900
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 282.0, ft0  = 0.001
       0     4203        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 216, taken, goto 0x800006b0
       0     4205        M                                           #; (f:fpu) ft3  <-- 0.2820000
       0     4206        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.2820000 ~~> Doub[0x001008d0]
       0     4207        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 282.0, ft1  = 1.0
       0     4210        M 0x800006bc addi    a0, a0, -1             #; a0  = 216, (wrb) a0  <-- 215
                         M                                           #; (f:fpu) ft2  <-- 283.0
       0     4211        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100900, (wrb) a2  <-- 0x00100908
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 283.0, ft0  = 0.001
       0     4212        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 215, taken, goto 0x800006b0
       0     4214        M                                           #; (f:fpu) ft3  <-- 0.2830000
       0     4215        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.2830000 ~~> Doub[0x001008d8]
       0     4216        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 283.0, ft1  = 1.0
       0     4219        M 0x800006bc addi    a0, a0, -1             #; a0  = 215, (wrb) a0  <-- 214
                         M                                           #; (f:fpu) ft2  <-- 284.0
       0     4220        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100908, (wrb) a2  <-- 0x00100910
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 284.0, ft0  = 0.001
       0     4221        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 214, taken, goto 0x800006b0
       0     4223        M                                           #; (f:fpu) ft3  <-- 0.2840000
       0     4224        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.2840000 ~~> Doub[0x001008e0]
       0     4225        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 284.0, ft1  = 1.0
       0     4228        M 0x800006bc addi    a0, a0, -1             #; a0  = 214, (wrb) a0  <-- 213
                         M                                           #; (f:fpu) ft2  <-- 285.0
       0     4229        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100910, (wrb) a2  <-- 0x00100918
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 285.0, ft0  = 0.001
       0     4230        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 213, taken, goto 0x800006b0
       0     4232        M                                           #; (f:fpu) ft3  <-- 0.2850000
       0     4233        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.2850000 ~~> Doub[0x001008e8]
       0     4234        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 285.0, ft1  = 1.0
       0     4237        M 0x800006bc addi    a0, a0, -1             #; a0  = 213, (wrb) a0  <-- 212
                         M                                           #; (f:fpu) ft2  <-- 286.0
       0     4238        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100918, (wrb) a2  <-- 0x00100920
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 286.0, ft0  = 0.001
       0     4239        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 212, taken, goto 0x800006b0
       0     4241        M                                           #; (f:fpu) ft3  <-- 0.2860000
       0     4242        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.2860000 ~~> Doub[0x001008f0]
       0     4243        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 286.0, ft1  = 1.0
       0     4246        M 0x800006bc addi    a0, a0, -1             #; a0  = 212, (wrb) a0  <-- 211
                         M                                           #; (f:fpu) ft2  <-- 287.0
       0     4247        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100920, (wrb) a2  <-- 0x00100928
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 287.0, ft0  = 0.001
       0     4248        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 211, taken, goto 0x800006b0
       0     4250        M                                           #; (f:fpu) ft3  <-- 0.2870000
       0     4251        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.2870000 ~~> Doub[0x001008f8]
       0     4252        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 287.0, ft1  = 1.0
       0     4255        M 0x800006bc addi    a0, a0, -1             #; a0  = 211, (wrb) a0  <-- 210
                         M                                           #; (f:fpu) ft2  <-- 288.0
       0     4256        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100928, (wrb) a2  <-- 0x00100930
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 288.0, ft0  = 0.001
       0     4257        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 210, taken, goto 0x800006b0
       0     4259        M                                           #; (f:fpu) ft3  <-- 0.2880000
       0     4260        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.2880000 ~~> Doub[0x00100900]
       0     4261        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 288.0, ft1  = 1.0
       0     4264        M 0x800006bc addi    a0, a0, -1             #; a0  = 210, (wrb) a0  <-- 209
                         M                                           #; (f:fpu) ft2  <-- 289.0
       0     4265        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100930, (wrb) a2  <-- 0x00100938
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 289.0, ft0  = 0.001
       0     4266        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 209, taken, goto 0x800006b0
       0     4268        M                                           #; (f:fpu) ft3  <-- 0.289
       0     4269        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.289 ~~> Doub[0x00100908]
       0     4270        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 289.0, ft1  = 1.0
       0     4273        M 0x800006bc addi    a0, a0, -1             #; a0  = 209, (wrb) a0  <-- 208
                         M                                           #; (f:fpu) ft2  <-- 290.0
       0     4274        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100938, (wrb) a2  <-- 0x00100940
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 290.0, ft0  = 0.001
       0     4275        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 208, taken, goto 0x800006b0
       0     4277        M                                           #; (f:fpu) ft3  <-- 0.29
       0     4278        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.29 ~~> Doub[0x00100910]
       0     4279        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 290.0, ft1  = 1.0
       0     4282        M 0x800006bc addi    a0, a0, -1             #; a0  = 208, (wrb) a0  <-- 207
                         M                                           #; (f:fpu) ft2  <-- 291.0
       0     4283        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100940, (wrb) a2  <-- 0x00100948
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 291.0, ft0  = 0.001
       0     4284        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 207, taken, goto 0x800006b0
       0     4286        M                                           #; (f:fpu) ft3  <-- 0.291
       0     4287        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.291 ~~> Doub[0x00100918]
       0     4288        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 291.0, ft1  = 1.0
       0     4291        M 0x800006bc addi    a0, a0, -1             #; a0  = 207, (wrb) a0  <-- 206
                         M                                           #; (f:fpu) ft2  <-- 292.0
       0     4292        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100948, (wrb) a2  <-- 0x00100950
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 292.0, ft0  = 0.001
       0     4293        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 206, taken, goto 0x800006b0
       0     4295        M                                           #; (f:fpu) ft3  <-- 0.292
       0     4296        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.292 ~~> Doub[0x00100920]
       0     4297        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 292.0, ft1  = 1.0
       0     4300        M 0x800006bc addi    a0, a0, -1             #; a0  = 206, (wrb) a0  <-- 205
                         M                                           #; (f:fpu) ft2  <-- 293.0
       0     4301        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100950, (wrb) a2  <-- 0x00100958
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 293.0, ft0  = 0.001
       0     4302        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 205, taken, goto 0x800006b0
       0     4304        M                                           #; (f:fpu) ft3  <-- 0.293
       0     4305        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.293 ~~> Doub[0x00100928]
       0     4306        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 293.0, ft1  = 1.0
       0     4309        M 0x800006bc addi    a0, a0, -1             #; a0  = 205, (wrb) a0  <-- 204
                         M                                           #; (f:fpu) ft2  <-- 294.0
       0     4310        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100958, (wrb) a2  <-- 0x00100960
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 294.0, ft0  = 0.001
       0     4311        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 204, taken, goto 0x800006b0
       0     4313        M                                           #; (f:fpu) ft3  <-- 0.294
       0     4314        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.294 ~~> Doub[0x00100930]
       0     4315        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 294.0, ft1  = 1.0
       0     4318        M 0x800006bc addi    a0, a0, -1             #; a0  = 204, (wrb) a0  <-- 203
                         M                                           #; (f:fpu) ft2  <-- 295.0
       0     4319        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100960, (wrb) a2  <-- 0x00100968
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 295.0, ft0  = 0.001
       0     4320        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 203, taken, goto 0x800006b0
       0     4322        M                                           #; (f:fpu) ft3  <-- 0.295
       0     4323        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.295 ~~> Doub[0x00100938]
       0     4324        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 295.0, ft1  = 1.0
       0     4327        M 0x800006bc addi    a0, a0, -1             #; a0  = 203, (wrb) a0  <-- 202
                         M                                           #; (f:fpu) ft2  <-- 296.0
       0     4328        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100968, (wrb) a2  <-- 0x00100970
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 296.0, ft0  = 0.001
       0     4329        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 202, taken, goto 0x800006b0
       0     4331        M                                           #; (f:fpu) ft3  <-- 0.296
       0     4332        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.296 ~~> Doub[0x00100940]
       0     4333        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 296.0, ft1  = 1.0
       0     4336        M 0x800006bc addi    a0, a0, -1             #; a0  = 202, (wrb) a0  <-- 201
                         M                                           #; (f:fpu) ft2  <-- 297.0
       0     4337        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100970, (wrb) a2  <-- 0x00100978
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 297.0, ft0  = 0.001
       0     4338        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 201, taken, goto 0x800006b0
       0     4340        M                                           #; (f:fpu) ft3  <-- 0.297
       0     4341        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.297 ~~> Doub[0x00100948]
       0     4342        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 297.0, ft1  = 1.0
       0     4345        M 0x800006bc addi    a0, a0, -1             #; a0  = 201, (wrb) a0  <-- 200
                         M                                           #; (f:fpu) ft2  <-- 298.0
       0     4346        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100978, (wrb) a2  <-- 0x00100980
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 298.0, ft0  = 0.001
       0     4347        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 200, taken, goto 0x800006b0
       0     4349        M                                           #; (f:fpu) ft3  <-- 0.298
       0     4350        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.298 ~~> Doub[0x00100950]
       0     4351        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 298.0, ft1  = 1.0
       0     4354        M 0x800006bc addi    a0, a0, -1             #; a0  = 200, (wrb) a0  <-- 199
                         M                                           #; (f:fpu) ft2  <-- 299.0
       0     4355        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100980, (wrb) a2  <-- 0x00100988
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 299.0, ft0  = 0.001
       0     4356        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 199, taken, goto 0x800006b0
       0     4358        M                                           #; (f:fpu) ft3  <-- 0.299
       0     4359        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.299 ~~> Doub[0x00100958]
       0     4360        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 299.0, ft1  = 1.0
       0     4363        M 0x800006bc addi    a0, a0, -1             #; a0  = 199, (wrb) a0  <-- 198
                         M                                           #; (f:fpu) ft2  <-- 300.0
       0     4364        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100988, (wrb) a2  <-- 0x00100990
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 300.0, ft0  = 0.001
       0     4365        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 198, taken, goto 0x800006b0
       0     4367        M                                           #; (f:fpu) ft3  <-- 0.3
       0     4368        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.3 ~~> Doub[0x00100960]
       0     4369        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 300.0, ft1  = 1.0
       0     4372        M 0x800006bc addi    a0, a0, -1             #; a0  = 198, (wrb) a0  <-- 197
                         M                                           #; (f:fpu) ft2  <-- 301.0
       0     4373        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100990, (wrb) a2  <-- 0x00100998
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 301.0, ft0  = 0.001
       0     4374        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 197, taken, goto 0x800006b0
       0     4376        M                                           #; (f:fpu) ft3  <-- 0.301
       0     4377        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.301 ~~> Doub[0x00100968]
       0     4378        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 301.0, ft1  = 1.0
       0     4381        M 0x800006bc addi    a0, a0, -1             #; a0  = 197, (wrb) a0  <-- 196
                         M                                           #; (f:fpu) ft2  <-- 302.0
       0     4382        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100998, (wrb) a2  <-- 0x001009a0
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 302.0, ft0  = 0.001
       0     4383        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 196, taken, goto 0x800006b0
       0     4385        M                                           #; (f:fpu) ft3  <-- 0.302
       0     4386        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.302 ~~> Doub[0x00100970]
       0     4387        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 302.0, ft1  = 1.0
       0     4390        M 0x800006bc addi    a0, a0, -1             #; a0  = 196, (wrb) a0  <-- 195
                         M                                           #; (f:fpu) ft2  <-- 303.0
       0     4391        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001009a0, (wrb) a2  <-- 0x001009a8
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 303.0, ft0  = 0.001
       0     4392        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 195, taken, goto 0x800006b0
       0     4394        M                                           #; (f:fpu) ft3  <-- 0.303
       0     4395        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.303 ~~> Doub[0x00100978]
       0     4396        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 303.0, ft1  = 1.0
       0     4399        M 0x800006bc addi    a0, a0, -1             #; a0  = 195, (wrb) a0  <-- 194
                         M                                           #; (f:fpu) ft2  <-- 304.0
       0     4400        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001009a8, (wrb) a2  <-- 0x001009b0
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 304.0, ft0  = 0.001
       0     4401        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 194, taken, goto 0x800006b0
       0     4403        M                                           #; (f:fpu) ft3  <-- 0.304
       0     4404        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.304 ~~> Doub[0x00100980]
       0     4405        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 304.0, ft1  = 1.0
       0     4408        M 0x800006bc addi    a0, a0, -1             #; a0  = 194, (wrb) a0  <-- 193
                         M                                           #; (f:fpu) ft2  <-- 305.0
       0     4409        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001009b0, (wrb) a2  <-- 0x001009b8
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 305.0, ft0  = 0.001
       0     4410        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 193, taken, goto 0x800006b0
       0     4412        M                                           #; (f:fpu) ft3  <-- 0.305
       0     4413        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.305 ~~> Doub[0x00100988]
       0     4414        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 305.0, ft1  = 1.0
       0     4417        M 0x800006bc addi    a0, a0, -1             #; a0  = 193, (wrb) a0  <-- 192
                         M                                           #; (f:fpu) ft2  <-- 306.0
       0     4418        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001009b8, (wrb) a2  <-- 0x001009c0
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 306.0, ft0  = 0.001
       0     4419        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 192, taken, goto 0x800006b0
       0     4421        M                                           #; (f:fpu) ft3  <-- 0.306
       0     4422        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.306 ~~> Doub[0x00100990]
       0     4423        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 306.0, ft1  = 1.0
       0     4426        M 0x800006bc addi    a0, a0, -1             #; a0  = 192, (wrb) a0  <-- 191
                         M                                           #; (f:fpu) ft2  <-- 307.0
       0     4427        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001009c0, (wrb) a2  <-- 0x001009c8
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 307.0, ft0  = 0.001
       0     4428        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 191, taken, goto 0x800006b0
       0     4430        M                                           #; (f:fpu) ft3  <-- 0.307
       0     4431        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.307 ~~> Doub[0x00100998]
       0     4432        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 307.0, ft1  = 1.0
       0     4435        M 0x800006bc addi    a0, a0, -1             #; a0  = 191, (wrb) a0  <-- 190
                         M                                           #; (f:fpu) ft2  <-- 308.0
       0     4436        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001009c8, (wrb) a2  <-- 0x001009d0
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 308.0, ft0  = 0.001
       0     4437        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 190, taken, goto 0x800006b0
       0     4439        M                                           #; (f:fpu) ft3  <-- 0.308
       0     4440        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.308 ~~> Doub[0x001009a0]
       0     4441        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 308.0, ft1  = 1.0
       0     4444        M 0x800006bc addi    a0, a0, -1             #; a0  = 190, (wrb) a0  <-- 189
                         M                                           #; (f:fpu) ft2  <-- 309.0
       0     4445        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001009d0, (wrb) a2  <-- 0x001009d8
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 309.0, ft0  = 0.001
       0     4446        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 189, taken, goto 0x800006b0
       0     4448        M                                           #; (f:fpu) ft3  <-- 0.309
       0     4449        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.309 ~~> Doub[0x001009a8]
       0     4450        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 309.0, ft1  = 1.0
       0     4453        M 0x800006bc addi    a0, a0, -1             #; a0  = 189, (wrb) a0  <-- 188
                         M                                           #; (f:fpu) ft2  <-- 310.0
       0     4454        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001009d8, (wrb) a2  <-- 0x001009e0
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 310.0, ft0  = 0.001
       0     4455        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 188, taken, goto 0x800006b0
       0     4457        M                                           #; (f:fpu) ft3  <-- 0.31
       0     4458        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.31 ~~> Doub[0x001009b0]
       0     4459        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 310.0, ft1  = 1.0
       0     4462        M 0x800006bc addi    a0, a0, -1             #; a0  = 188, (wrb) a0  <-- 187
                         M                                           #; (f:fpu) ft2  <-- 311.0
       0     4463        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001009e0, (wrb) a2  <-- 0x001009e8
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 311.0, ft0  = 0.001
       0     4464        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 187, taken, goto 0x800006b0
       0     4466        M                                           #; (f:fpu) ft3  <-- 0.311
       0     4467        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.311 ~~> Doub[0x001009b8]
       0     4468        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 311.0, ft1  = 1.0
       0     4471        M 0x800006bc addi    a0, a0, -1             #; a0  = 187, (wrb) a0  <-- 186
                         M                                           #; (f:fpu) ft2  <-- 312.0
       0     4472        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001009e8, (wrb) a2  <-- 0x001009f0
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 312.0, ft0  = 0.001
       0     4473        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 186, taken, goto 0x800006b0
       0     4475        M                                           #; (f:fpu) ft3  <-- 0.312
       0     4476        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.312 ~~> Doub[0x001009c0]
       0     4477        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 312.0, ft1  = 1.0
       0     4480        M 0x800006bc addi    a0, a0, -1             #; a0  = 186, (wrb) a0  <-- 185
                         M                                           #; (f:fpu) ft2  <-- 313.0
       0     4481        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001009f0, (wrb) a2  <-- 0x001009f8
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 313.0, ft0  = 0.001
       0     4482        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 185, taken, goto 0x800006b0
       0     4484        M                                           #; (f:fpu) ft3  <-- 0.313
       0     4485        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.313 ~~> Doub[0x001009c8]
       0     4486        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 313.0, ft1  = 1.0
       0     4489        M 0x800006bc addi    a0, a0, -1             #; a0  = 185, (wrb) a0  <-- 184
                         M                                           #; (f:fpu) ft2  <-- 314.0
       0     4490        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x001009f8, (wrb) a2  <-- 0x00100a00
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 314.0, ft0  = 0.001
       0     4491        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 184, taken, goto 0x800006b0
       0     4493        M                                           #; (f:fpu) ft3  <-- 0.314
       0     4494        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.314 ~~> Doub[0x001009d0]
       0     4495        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 314.0, ft1  = 1.0
       0     4498        M 0x800006bc addi    a0, a0, -1             #; a0  = 184, (wrb) a0  <-- 183
                         M                                           #; (f:fpu) ft2  <-- 315.0
       0     4499        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100a00, (wrb) a2  <-- 0x00100a08
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 315.0, ft0  = 0.001
       0     4500        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 183, taken, goto 0x800006b0
       0     4502        M                                           #; (f:fpu) ft3  <-- 0.315
       0     4503        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.315 ~~> Doub[0x001009d8]
       0     4504        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 315.0, ft1  = 1.0
       0     4507        M 0x800006bc addi    a0, a0, -1             #; a0  = 183, (wrb) a0  <-- 182
                         M                                           #; (f:fpu) ft2  <-- 316.0
       0     4508        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100a08, (wrb) a2  <-- 0x00100a10
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 316.0, ft0  = 0.001
       0     4509        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 182, taken, goto 0x800006b0
       0     4511        M                                           #; (f:fpu) ft3  <-- 0.316
       0     4512        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.316 ~~> Doub[0x001009e0]
       0     4513        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 316.0, ft1  = 1.0
       0     4516        M 0x800006bc addi    a0, a0, -1             #; a0  = 182, (wrb) a0  <-- 181
                         M                                           #; (f:fpu) ft2  <-- 317.0
       0     4517        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100a10, (wrb) a2  <-- 0x00100a18
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 317.0, ft0  = 0.001
       0     4518        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 181, taken, goto 0x800006b0
       0     4520        M                                           #; (f:fpu) ft3  <-- 0.317
       0     4521        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.317 ~~> Doub[0x001009e8]
       0     4522        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 317.0, ft1  = 1.0
       0     4525        M 0x800006bc addi    a0, a0, -1             #; a0  = 181, (wrb) a0  <-- 180
                         M                                           #; (f:fpu) ft2  <-- 318.0
       0     4526        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100a18, (wrb) a2  <-- 0x00100a20
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 318.0, ft0  = 0.001
       0     4527        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 180, taken, goto 0x800006b0
       0     4529        M                                           #; (f:fpu) ft3  <-- 0.318
       0     4530        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.318 ~~> Doub[0x001009f0]
       0     4531        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 318.0, ft1  = 1.0
       0     4534        M 0x800006bc addi    a0, a0, -1             #; a0  = 180, (wrb) a0  <-- 179
                         M                                           #; (f:fpu) ft2  <-- 319.0
       0     4535        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100a20, (wrb) a2  <-- 0x00100a28
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 319.0, ft0  = 0.001
       0     4536        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 179, taken, goto 0x800006b0
       0     4538        M                                           #; (f:fpu) ft3  <-- 0.319
       0     4539        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.319 ~~> Doub[0x001009f8]
       0     4540        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 319.0, ft1  = 1.0
       0     4543        M 0x800006bc addi    a0, a0, -1             #; a0  = 179, (wrb) a0  <-- 178
                         M                                           #; (f:fpu) ft2  <-- 320.0
       0     4544        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100a28, (wrb) a2  <-- 0x00100a30
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 320.0, ft0  = 0.001
       0     4545        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 178, taken, goto 0x800006b0
       0     4547        M                                           #; (f:fpu) ft3  <-- 0.32
       0     4548        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.32 ~~> Doub[0x00100a00]
       0     4549        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 320.0, ft1  = 1.0
       0     4552        M 0x800006bc addi    a0, a0, -1             #; a0  = 178, (wrb) a0  <-- 177
                         M                                           #; (f:fpu) ft2  <-- 321.0
       0     4553        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100a30, (wrb) a2  <-- 0x00100a38
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 321.0, ft0  = 0.001
       0     4554        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 177, taken, goto 0x800006b0
       0     4556        M                                           #; (f:fpu) ft3  <-- 0.321
       0     4557        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.321 ~~> Doub[0x00100a08]
       0     4558        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 321.0, ft1  = 1.0
       0     4561        M 0x800006bc addi    a0, a0, -1             #; a0  = 177, (wrb) a0  <-- 176
                         M                                           #; (f:fpu) ft2  <-- 322.0
       0     4562        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100a38, (wrb) a2  <-- 0x00100a40
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 322.0, ft0  = 0.001
       0     4563        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 176, taken, goto 0x800006b0
       0     4565        M                                           #; (f:fpu) ft3  <-- 0.322
       0     4566        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.322 ~~> Doub[0x00100a10]
       0     4567        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 322.0, ft1  = 1.0
       0     4570        M 0x800006bc addi    a0, a0, -1             #; a0  = 176, (wrb) a0  <-- 175
                         M                                           #; (f:fpu) ft2  <-- 323.0
       0     4571        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100a40, (wrb) a2  <-- 0x00100a48
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 323.0, ft0  = 0.001
       0     4572        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 175, taken, goto 0x800006b0
       0     4574        M                                           #; (f:fpu) ft3  <-- 0.323
       0     4575        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.323 ~~> Doub[0x00100a18]
       0     4576        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 323.0, ft1  = 1.0
       0     4579        M 0x800006bc addi    a0, a0, -1             #; a0  = 175, (wrb) a0  <-- 174
                         M                                           #; (f:fpu) ft2  <-- 324.0
       0     4580        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100a48, (wrb) a2  <-- 0x00100a50
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 324.0, ft0  = 0.001
       0     4581        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 174, taken, goto 0x800006b0
       0     4583        M                                           #; (f:fpu) ft3  <-- 0.324
       0     4584        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.324 ~~> Doub[0x00100a20]
       0     4585        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 324.0, ft1  = 1.0
       0     4588        M 0x800006bc addi    a0, a0, -1             #; a0  = 174, (wrb) a0  <-- 173
                         M                                           #; (f:fpu) ft2  <-- 325.0
       0     4589        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100a50, (wrb) a2  <-- 0x00100a58
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 325.0, ft0  = 0.001
       0     4590        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 173, taken, goto 0x800006b0
       0     4592        M                                           #; (f:fpu) ft3  <-- 0.325
       0     4593        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.325 ~~> Doub[0x00100a28]
       0     4594        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 325.0, ft1  = 1.0
       0     4597        M 0x800006bc addi    a0, a0, -1             #; a0  = 173, (wrb) a0  <-- 172
                         M                                           #; (f:fpu) ft2  <-- 326.0
       0     4598        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100a58, (wrb) a2  <-- 0x00100a60
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 326.0, ft0  = 0.001
       0     4599        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 172, taken, goto 0x800006b0
       0     4601        M                                           #; (f:fpu) ft3  <-- 0.326
       0     4602        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.326 ~~> Doub[0x00100a30]
       0     4603        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 326.0, ft1  = 1.0
       0     4606        M 0x800006bc addi    a0, a0, -1             #; a0  = 172, (wrb) a0  <-- 171
                         M                                           #; (f:fpu) ft2  <-- 327.0
       0     4607        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100a60, (wrb) a2  <-- 0x00100a68
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 327.0, ft0  = 0.001
       0     4608        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 171, taken, goto 0x800006b0
       0     4610        M                                           #; (f:fpu) ft3  <-- 0.327
       0     4611        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.327 ~~> Doub[0x00100a38]
       0     4612        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 327.0, ft1  = 1.0
       0     4615        M 0x800006bc addi    a0, a0, -1             #; a0  = 171, (wrb) a0  <-- 170
                         M                                           #; (f:fpu) ft2  <-- 328.0
       0     4616        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100a68, (wrb) a2  <-- 0x00100a70
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 328.0, ft0  = 0.001
       0     4617        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 170, taken, goto 0x800006b0
       0     4619        M                                           #; (f:fpu) ft3  <-- 0.328
       0     4620        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.328 ~~> Doub[0x00100a40]
       0     4621        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 328.0, ft1  = 1.0
       0     4624        M 0x800006bc addi    a0, a0, -1             #; a0  = 170, (wrb) a0  <-- 169
                         M                                           #; (f:fpu) ft2  <-- 329.0
       0     4625        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100a70, (wrb) a2  <-- 0x00100a78
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 329.0, ft0  = 0.001
       0     4626        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 169, taken, goto 0x800006b0
       0     4628        M                                           #; (f:fpu) ft3  <-- 0.329
       0     4629        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.329 ~~> Doub[0x00100a48]
       0     4630        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 329.0, ft1  = 1.0
       0     4633        M 0x800006bc addi    a0, a0, -1             #; a0  = 169, (wrb) a0  <-- 168
                         M                                           #; (f:fpu) ft2  <-- 330.0
       0     4634        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100a78, (wrb) a2  <-- 0x00100a80
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 330.0, ft0  = 0.001
       0     4635        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 168, taken, goto 0x800006b0
       0     4637        M                                           #; (f:fpu) ft3  <-- 0.33
       0     4638        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.33 ~~> Doub[0x00100a50]
       0     4639        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 330.0, ft1  = 1.0
       0     4642        M 0x800006bc addi    a0, a0, -1             #; a0  = 168, (wrb) a0  <-- 167
                         M                                           #; (f:fpu) ft2  <-- 331.0
       0     4643        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100a80, (wrb) a2  <-- 0x00100a88
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 331.0, ft0  = 0.001
       0     4644        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 167, taken, goto 0x800006b0
       0     4646        M                                           #; (f:fpu) ft3  <-- 0.331
       0     4647        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.331 ~~> Doub[0x00100a58]
       0     4648        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 331.0, ft1  = 1.0
       0     4651        M 0x800006bc addi    a0, a0, -1             #; a0  = 167, (wrb) a0  <-- 166
                         M                                           #; (f:fpu) ft2  <-- 332.0
       0     4652        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100a88, (wrb) a2  <-- 0x00100a90
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 332.0, ft0  = 0.001
       0     4653        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 166, taken, goto 0x800006b0
       0     4655        M                                           #; (f:fpu) ft3  <-- 0.332
       0     4656        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.332 ~~> Doub[0x00100a60]
       0     4657        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 332.0, ft1  = 1.0
       0     4660        M 0x800006bc addi    a0, a0, -1             #; a0  = 166, (wrb) a0  <-- 165
                         M                                           #; (f:fpu) ft2  <-- 333.0
       0     4661        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100a90, (wrb) a2  <-- 0x00100a98
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 333.0, ft0  = 0.001
       0     4662        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 165, taken, goto 0x800006b0
       0     4664        M                                           #; (f:fpu) ft3  <-- 0.333
       0     4665        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.333 ~~> Doub[0x00100a68]
       0     4666        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 333.0, ft1  = 1.0
       0     4669        M 0x800006bc addi    a0, a0, -1             #; a0  = 165, (wrb) a0  <-- 164
                         M                                           #; (f:fpu) ft2  <-- 334.0
       0     4670        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100a98, (wrb) a2  <-- 0x00100aa0
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 334.0, ft0  = 0.001
       0     4671        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 164, taken, goto 0x800006b0
       0     4673        M                                           #; (f:fpu) ft3  <-- 0.334
       0     4674        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.334 ~~> Doub[0x00100a70]
       0     4675        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 334.0, ft1  = 1.0
       0     4678        M 0x800006bc addi    a0, a0, -1             #; a0  = 164, (wrb) a0  <-- 163
                         M                                           #; (f:fpu) ft2  <-- 335.0
       0     4679        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100aa0, (wrb) a2  <-- 0x00100aa8
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 335.0, ft0  = 0.001
       0     4680        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 163, taken, goto 0x800006b0
       0     4682        M                                           #; (f:fpu) ft3  <-- 0.335
       0     4683        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.335 ~~> Doub[0x00100a78]
       0     4684        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 335.0, ft1  = 1.0
       0     4687        M 0x800006bc addi    a0, a0, -1             #; a0  = 163, (wrb) a0  <-- 162
                         M                                           #; (f:fpu) ft2  <-- 336.0
       0     4688        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100aa8, (wrb) a2  <-- 0x00100ab0
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 336.0, ft0  = 0.001
       0     4689        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 162, taken, goto 0x800006b0
       0     4691        M                                           #; (f:fpu) ft3  <-- 0.336
       0     4692        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.336 ~~> Doub[0x00100a80]
       0     4693        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 336.0, ft1  = 1.0
       0     4696        M 0x800006bc addi    a0, a0, -1             #; a0  = 162, (wrb) a0  <-- 161
                         M                                           #; (f:fpu) ft2  <-- 337.0
       0     4697        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100ab0, (wrb) a2  <-- 0x00100ab8
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 337.0, ft0  = 0.001
       0     4698        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 161, taken, goto 0x800006b0
       0     4700        M                                           #; (f:fpu) ft3  <-- 0.337
       0     4701        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.337 ~~> Doub[0x00100a88]
       0     4702        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 337.0, ft1  = 1.0
       0     4705        M 0x800006bc addi    a0, a0, -1             #; a0  = 161, (wrb) a0  <-- 160
                         M                                           #; (f:fpu) ft2  <-- 338.0
       0     4706        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100ab8, (wrb) a2  <-- 0x00100ac0
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 338.0, ft0  = 0.001
       0     4707        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 160, taken, goto 0x800006b0
       0     4709        M                                           #; (f:fpu) ft3  <-- 0.338
       0     4710        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.338 ~~> Doub[0x00100a90]
       0     4711        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 338.0, ft1  = 1.0
       0     4714        M 0x800006bc addi    a0, a0, -1             #; a0  = 160, (wrb) a0  <-- 159
                         M                                           #; (f:fpu) ft2  <-- 339.0
       0     4715        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100ac0, (wrb) a2  <-- 0x00100ac8
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 339.0, ft0  = 0.001
       0     4716        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 159, taken, goto 0x800006b0
       0     4718        M                                           #; (f:fpu) ft3  <-- 0.339
       0     4719        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.339 ~~> Doub[0x00100a98]
       0     4720        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 339.0, ft1  = 1.0
       0     4723        M 0x800006bc addi    a0, a0, -1             #; a0  = 159, (wrb) a0  <-- 158
                         M                                           #; (f:fpu) ft2  <-- 340.0
       0     4724        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100ac8, (wrb) a2  <-- 0x00100ad0
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 340.0, ft0  = 0.001
       0     4725        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 158, taken, goto 0x800006b0
       0     4727        M                                           #; (f:fpu) ft3  <-- 0.34
       0     4728        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.34 ~~> Doub[0x00100aa0]
       0     4729        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 340.0, ft1  = 1.0
       0     4732        M 0x800006bc addi    a0, a0, -1             #; a0  = 158, (wrb) a0  <-- 157
                         M                                           #; (f:fpu) ft2  <-- 341.0
       0     4733        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100ad0, (wrb) a2  <-- 0x00100ad8
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 341.0, ft0  = 0.001
       0     4734        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 157, taken, goto 0x800006b0
       0     4736        M                                           #; (f:fpu) ft3  <-- 0.341
       0     4737        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.341 ~~> Doub[0x00100aa8]
       0     4738        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 341.0, ft1  = 1.0
       0     4741        M 0x800006bc addi    a0, a0, -1             #; a0  = 157, (wrb) a0  <-- 156
                         M                                           #; (f:fpu) ft2  <-- 342.0
       0     4742        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100ad8, (wrb) a2  <-- 0x00100ae0
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 342.0, ft0  = 0.001
       0     4743        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 156, taken, goto 0x800006b0
       0     4745        M                                           #; (f:fpu) ft3  <-- 0.342
       0     4746        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.342 ~~> Doub[0x00100ab0]
       0     4747        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 342.0, ft1  = 1.0
       0     4750        M 0x800006bc addi    a0, a0, -1             #; a0  = 156, (wrb) a0  <-- 155
                         M                                           #; (f:fpu) ft2  <-- 343.0
       0     4751        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100ae0, (wrb) a2  <-- 0x00100ae8
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 343.0, ft0  = 0.001
       0     4752        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 155, taken, goto 0x800006b0
       0     4754        M                                           #; (f:fpu) ft3  <-- 0.343
       0     4755        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.343 ~~> Doub[0x00100ab8]
       0     4756        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 343.0, ft1  = 1.0
       0     4759        M 0x800006bc addi    a0, a0, -1             #; a0  = 155, (wrb) a0  <-- 154
                         M                                           #; (f:fpu) ft2  <-- 344.0
       0     4760        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100ae8, (wrb) a2  <-- 0x00100af0
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 344.0, ft0  = 0.001
       0     4761        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 154, taken, goto 0x800006b0
       0     4763        M                                           #; (f:fpu) ft3  <-- 0.3440000
       0     4764        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.3440000 ~~> Doub[0x00100ac0]
       0     4765        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 344.0, ft1  = 1.0
       0     4768        M 0x800006bc addi    a0, a0, -1             #; a0  = 154, (wrb) a0  <-- 153
                         M                                           #; (f:fpu) ft2  <-- 345.0
       0     4769        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100af0, (wrb) a2  <-- 0x00100af8
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 345.0, ft0  = 0.001
       0     4770        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 153, taken, goto 0x800006b0
       0     4772        M                                           #; (f:fpu) ft3  <-- 0.3450000
       0     4773        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.3450000 ~~> Doub[0x00100ac8]
       0     4774        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 345.0, ft1  = 1.0
       0     4777        M 0x800006bc addi    a0, a0, -1             #; a0  = 153, (wrb) a0  <-- 152
                         M                                           #; (f:fpu) ft2  <-- 346.0
       0     4778        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100af8, (wrb) a2  <-- 0x00100b00
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 346.0, ft0  = 0.001
       0     4779        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 152, taken, goto 0x800006b0
       0     4781        M                                           #; (f:fpu) ft3  <-- 0.3460000
       0     4782        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.3460000 ~~> Doub[0x00100ad0]
       0     4783        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 346.0, ft1  = 1.0
       0     4786        M 0x800006bc addi    a0, a0, -1             #; a0  = 152, (wrb) a0  <-- 151
                         M                                           #; (f:fpu) ft2  <-- 347.0
       0     4787        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100b00, (wrb) a2  <-- 0x00100b08
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 347.0, ft0  = 0.001
       0     4788        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 151, taken, goto 0x800006b0
       0     4790        M                                           #; (f:fpu) ft3  <-- 0.3470000
       0     4791        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.3470000 ~~> Doub[0x00100ad8]
       0     4792        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 347.0, ft1  = 1.0
       0     4795        M 0x800006bc addi    a0, a0, -1             #; a0  = 151, (wrb) a0  <-- 150
                         M                                           #; (f:fpu) ft2  <-- 348.0
       0     4796        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100b08, (wrb) a2  <-- 0x00100b10
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 348.0, ft0  = 0.001
       0     4797        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 150, taken, goto 0x800006b0
       0     4799        M                                           #; (f:fpu) ft3  <-- 0.3480000
       0     4800        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.3480000 ~~> Doub[0x00100ae0]
       0     4801        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 348.0, ft1  = 1.0
       0     4804        M 0x800006bc addi    a0, a0, -1             #; a0  = 150, (wrb) a0  <-- 149
                         M                                           #; (f:fpu) ft2  <-- 349.0
       0     4805        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100b10, (wrb) a2  <-- 0x00100b18
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 349.0, ft0  = 0.001
       0     4806        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 149, taken, goto 0x800006b0
       0     4808        M                                           #; (f:fpu) ft3  <-- 0.3490000
       0     4809        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.3490000 ~~> Doub[0x00100ae8]
       0     4810        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 349.0, ft1  = 1.0
       0     4813        M 0x800006bc addi    a0, a0, -1             #; a0  = 149, (wrb) a0  <-- 148
                         M                                           #; (f:fpu) ft2  <-- 350.0
       0     4814        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100b18, (wrb) a2  <-- 0x00100b20
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 350.0, ft0  = 0.001
       0     4815        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 148, taken, goto 0x800006b0
       0     4817        M                                           #; (f:fpu) ft3  <-- 0.3500000
       0     4818        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.3500000 ~~> Doub[0x00100af0]
       0     4819        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 350.0, ft1  = 1.0
       0     4822        M 0x800006bc addi    a0, a0, -1             #; a0  = 148, (wrb) a0  <-- 147
                         M                                           #; (f:fpu) ft2  <-- 351.0
       0     4823        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100b20, (wrb) a2  <-- 0x00100b28
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 351.0, ft0  = 0.001
       0     4824        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 147, taken, goto 0x800006b0
       0     4826        M                                           #; (f:fpu) ft3  <-- 0.3510000
       0     4827        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.3510000 ~~> Doub[0x00100af8]
       0     4828        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 351.0, ft1  = 1.0
       0     4831        M 0x800006bc addi    a0, a0, -1             #; a0  = 147, (wrb) a0  <-- 146
                         M                                           #; (f:fpu) ft2  <-- 352.0
       0     4832        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100b28, (wrb) a2  <-- 0x00100b30
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 352.0, ft0  = 0.001
       0     4833        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 146, taken, goto 0x800006b0
       0     4835        M                                           #; (f:fpu) ft3  <-- 0.352
       0     4836        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.352 ~~> Doub[0x00100b00]
       0     4837        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 352.0, ft1  = 1.0
       0     4840        M 0x800006bc addi    a0, a0, -1             #; a0  = 146, (wrb) a0  <-- 145
                         M                                           #; (f:fpu) ft2  <-- 353.0
       0     4841        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100b30, (wrb) a2  <-- 0x00100b38
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 353.0, ft0  = 0.001
       0     4842        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 145, taken, goto 0x800006b0
       0     4844        M                                           #; (f:fpu) ft3  <-- 0.353
       0     4845        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.353 ~~> Doub[0x00100b08]
       0     4846        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 353.0, ft1  = 1.0
       0     4849        M 0x800006bc addi    a0, a0, -1             #; a0  = 145, (wrb) a0  <-- 144
                         M                                           #; (f:fpu) ft2  <-- 354.0
       0     4850        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100b38, (wrb) a2  <-- 0x00100b40
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 354.0, ft0  = 0.001
       0     4851        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 144, taken, goto 0x800006b0
       0     4853        M                                           #; (f:fpu) ft3  <-- 0.354
       0     4854        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.354 ~~> Doub[0x00100b10]
       0     4855        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 354.0, ft1  = 1.0
       0     4858        M 0x800006bc addi    a0, a0, -1             #; a0  = 144, (wrb) a0  <-- 143
                         M                                           #; (f:fpu) ft2  <-- 355.0
       0     4859        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100b40, (wrb) a2  <-- 0x00100b48
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 355.0, ft0  = 0.001
       0     4860        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 143, taken, goto 0x800006b0
       0     4862        M                                           #; (f:fpu) ft3  <-- 0.355
       0     4863        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.355 ~~> Doub[0x00100b18]
       0     4864        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 355.0, ft1  = 1.0
       0     4867        M 0x800006bc addi    a0, a0, -1             #; a0  = 143, (wrb) a0  <-- 142
                         M                                           #; (f:fpu) ft2  <-- 356.0
       0     4868        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100b48, (wrb) a2  <-- 0x00100b50
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 356.0, ft0  = 0.001
       0     4869        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 142, taken, goto 0x800006b0
       0     4871        M                                           #; (f:fpu) ft3  <-- 0.356
       0     4872        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.356 ~~> Doub[0x00100b20]
       0     4873        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 356.0, ft1  = 1.0
       0     4876        M 0x800006bc addi    a0, a0, -1             #; a0  = 142, (wrb) a0  <-- 141
                         M                                           #; (f:fpu) ft2  <-- 357.0
       0     4877        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100b50, (wrb) a2  <-- 0x00100b58
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 357.0, ft0  = 0.001
       0     4878        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 141, taken, goto 0x800006b0
       0     4880        M                                           #; (f:fpu) ft3  <-- 0.357
       0     4881        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.357 ~~> Doub[0x00100b28]
       0     4882        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 357.0, ft1  = 1.0
       0     4885        M 0x800006bc addi    a0, a0, -1             #; a0  = 141, (wrb) a0  <-- 140
                         M                                           #; (f:fpu) ft2  <-- 358.0
       0     4886        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100b58, (wrb) a2  <-- 0x00100b60
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 358.0, ft0  = 0.001
       0     4887        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 140, taken, goto 0x800006b0
       0     4889        M                                           #; (f:fpu) ft3  <-- 0.358
       0     4890        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.358 ~~> Doub[0x00100b30]
       0     4891        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 358.0, ft1  = 1.0
       0     4894        M 0x800006bc addi    a0, a0, -1             #; a0  = 140, (wrb) a0  <-- 139
                         M                                           #; (f:fpu) ft2  <-- 359.0
       0     4895        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100b60, (wrb) a2  <-- 0x00100b68
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 359.0, ft0  = 0.001
       0     4896        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 139, taken, goto 0x800006b0
       0     4898        M                                           #; (f:fpu) ft3  <-- 0.359
       0     4899        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.359 ~~> Doub[0x00100b38]
       0     4900        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 359.0, ft1  = 1.0
       0     4903        M 0x800006bc addi    a0, a0, -1             #; a0  = 139, (wrb) a0  <-- 138
                         M                                           #; (f:fpu) ft2  <-- 360.0
       0     4904        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100b68, (wrb) a2  <-- 0x00100b70
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 360.0, ft0  = 0.001
       0     4905        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 138, taken, goto 0x800006b0
       0     4907        M                                           #; (f:fpu) ft3  <-- 0.36
       0     4908        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.36 ~~> Doub[0x00100b40]
       0     4909        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 360.0, ft1  = 1.0
       0     4912        M 0x800006bc addi    a0, a0, -1             #; a0  = 138, (wrb) a0  <-- 137
                         M                                           #; (f:fpu) ft2  <-- 361.0
       0     4913        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100b70, (wrb) a2  <-- 0x00100b78
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 361.0, ft0  = 0.001
       0     4914        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 137, taken, goto 0x800006b0
       0     4916        M                                           #; (f:fpu) ft3  <-- 0.361
       0     4917        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.361 ~~> Doub[0x00100b48]
       0     4918        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 361.0, ft1  = 1.0
       0     4921        M 0x800006bc addi    a0, a0, -1             #; a0  = 137, (wrb) a0  <-- 136
                         M                                           #; (f:fpu) ft2  <-- 362.0
       0     4922        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100b78, (wrb) a2  <-- 0x00100b80
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 362.0, ft0  = 0.001
       0     4923        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 136, taken, goto 0x800006b0
       0     4925        M                                           #; (f:fpu) ft3  <-- 0.362
       0     4926        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.362 ~~> Doub[0x00100b50]
       0     4927        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 362.0, ft1  = 1.0
       0     4930        M 0x800006bc addi    a0, a0, -1             #; a0  = 136, (wrb) a0  <-- 135
                         M                                           #; (f:fpu) ft2  <-- 363.0
       0     4931        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100b80, (wrb) a2  <-- 0x00100b88
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 363.0, ft0  = 0.001
       0     4932        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 135, taken, goto 0x800006b0
       0     4934        M                                           #; (f:fpu) ft3  <-- 0.363
       0     4935        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.363 ~~> Doub[0x00100b58]
       0     4936        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 363.0, ft1  = 1.0
       0     4939        M 0x800006bc addi    a0, a0, -1             #; a0  = 135, (wrb) a0  <-- 134
                         M                                           #; (f:fpu) ft2  <-- 364.0
       0     4940        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100b88, (wrb) a2  <-- 0x00100b90
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 364.0, ft0  = 0.001
       0     4941        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 134, taken, goto 0x800006b0
       0     4943        M                                           #; (f:fpu) ft3  <-- 0.364
       0     4944        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.364 ~~> Doub[0x00100b60]
       0     4945        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 364.0, ft1  = 1.0
       0     4948        M 0x800006bc addi    a0, a0, -1             #; a0  = 134, (wrb) a0  <-- 133
                         M                                           #; (f:fpu) ft2  <-- 365.0
       0     4949        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100b90, (wrb) a2  <-- 0x00100b98
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 365.0, ft0  = 0.001
       0     4950        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 133, taken, goto 0x800006b0
       0     4952        M                                           #; (f:fpu) ft3  <-- 0.365
       0     4953        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.365 ~~> Doub[0x00100b68]
       0     4954        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 365.0, ft1  = 1.0
       0     4957        M 0x800006bc addi    a0, a0, -1             #; a0  = 133, (wrb) a0  <-- 132
                         M                                           #; (f:fpu) ft2  <-- 366.0
       0     4958        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100b98, (wrb) a2  <-- 0x00100ba0
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 366.0, ft0  = 0.001
       0     4959        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 132, taken, goto 0x800006b0
       0     4961        M                                           #; (f:fpu) ft3  <-- 0.366
       0     4962        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.366 ~~> Doub[0x00100b70]
       0     4963        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 366.0, ft1  = 1.0
       0     4966        M 0x800006bc addi    a0, a0, -1             #; a0  = 132, (wrb) a0  <-- 131
                         M                                           #; (f:fpu) ft2  <-- 367.0
       0     4967        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100ba0, (wrb) a2  <-- 0x00100ba8
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 367.0, ft0  = 0.001
       0     4968        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 131, taken, goto 0x800006b0
       0     4970        M                                           #; (f:fpu) ft3  <-- 0.367
       0     4971        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.367 ~~> Doub[0x00100b78]
       0     4972        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 367.0, ft1  = 1.0
       0     4975        M 0x800006bc addi    a0, a0, -1             #; a0  = 131, (wrb) a0  <-- 130
                         M                                           #; (f:fpu) ft2  <-- 368.0
       0     4976        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100ba8, (wrb) a2  <-- 0x00100bb0
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 368.0, ft0  = 0.001
       0     4977        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 130, taken, goto 0x800006b0
       0     4979        M                                           #; (f:fpu) ft3  <-- 0.368
       0     4980        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.368 ~~> Doub[0x00100b80]
       0     4981        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 368.0, ft1  = 1.0
       0     4984        M 0x800006bc addi    a0, a0, -1             #; a0  = 130, (wrb) a0  <-- 129
                         M                                           #; (f:fpu) ft2  <-- 369.0
       0     4985        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100bb0, (wrb) a2  <-- 0x00100bb8
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 369.0, ft0  = 0.001
       0     4986        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 129, taken, goto 0x800006b0
       0     4988        M                                           #; (f:fpu) ft3  <-- 0.369
       0     4989        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.369 ~~> Doub[0x00100b88]
       0     4990        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 369.0, ft1  = 1.0
       0     4993        M 0x800006bc addi    a0, a0, -1             #; a0  = 129, (wrb) a0  <-- 128
                         M                                           #; (f:fpu) ft2  <-- 370.0
       0     4994        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100bb8, (wrb) a2  <-- 0x00100bc0
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 370.0, ft0  = 0.001
       0     4995        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 128, taken, goto 0x800006b0
       0     4997        M                                           #; (f:fpu) ft3  <-- 0.37
       0     4998        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.37 ~~> Doub[0x00100b90]
       0     4999        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 370.0, ft1  = 1.0
       0     5002        M 0x800006bc addi    a0, a0, -1             #; a0  = 128, (wrb) a0  <-- 127
                         M                                           #; (f:fpu) ft2  <-- 371.0
       0     5003        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100bc0, (wrb) a2  <-- 0x00100bc8
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 371.0, ft0  = 0.001
       0     5004        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 127, taken, goto 0x800006b0
       0     5006        M                                           #; (f:fpu) ft3  <-- 0.371
       0     5007        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.371 ~~> Doub[0x00100b98]
       0     5008        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 371.0, ft1  = 1.0
       0     5011        M 0x800006bc addi    a0, a0, -1             #; a0  = 127, (wrb) a0  <-- 126
                         M                                           #; (f:fpu) ft2  <-- 372.0
       0     5012        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100bc8, (wrb) a2  <-- 0x00100bd0
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 372.0, ft0  = 0.001
       0     5013        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 126, taken, goto 0x800006b0
       0     5015        M                                           #; (f:fpu) ft3  <-- 0.372
       0     5016        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.372 ~~> Doub[0x00100ba0]
       0     5017        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 372.0, ft1  = 1.0
       0     5020        M 0x800006bc addi    a0, a0, -1             #; a0  = 126, (wrb) a0  <-- 125
                         M                                           #; (f:fpu) ft2  <-- 373.0
       0     5021        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100bd0, (wrb) a2  <-- 0x00100bd8
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 373.0, ft0  = 0.001
       0     5022        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 125, taken, goto 0x800006b0
       0     5024        M                                           #; (f:fpu) ft3  <-- 0.373
       0     5025        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.373 ~~> Doub[0x00100ba8]
       0     5026        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 373.0, ft1  = 1.0
       0     5029        M 0x800006bc addi    a0, a0, -1             #; a0  = 125, (wrb) a0  <-- 124
                         M                                           #; (f:fpu) ft2  <-- 374.0
       0     5030        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100bd8, (wrb) a2  <-- 0x00100be0
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 374.0, ft0  = 0.001
       0     5031        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 124, taken, goto 0x800006b0
       0     5033        M                                           #; (f:fpu) ft3  <-- 0.374
       0     5034        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.374 ~~> Doub[0x00100bb0]
       0     5035        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 374.0, ft1  = 1.0
       0     5038        M 0x800006bc addi    a0, a0, -1             #; a0  = 124, (wrb) a0  <-- 123
                         M                                           #; (f:fpu) ft2  <-- 375.0
       0     5039        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100be0, (wrb) a2  <-- 0x00100be8
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 375.0, ft0  = 0.001
       0     5040        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 123, taken, goto 0x800006b0
       0     5042        M                                           #; (f:fpu) ft3  <-- 0.375
       0     5043        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.375 ~~> Doub[0x00100bb8]
       0     5044        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 375.0, ft1  = 1.0
       0     5047        M 0x800006bc addi    a0, a0, -1             #; a0  = 123, (wrb) a0  <-- 122
                         M                                           #; (f:fpu) ft2  <-- 376.0
       0     5048        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100be8, (wrb) a2  <-- 0x00100bf0
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 376.0, ft0  = 0.001
       0     5049        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 122, taken, goto 0x800006b0
       0     5051        M                                           #; (f:fpu) ft3  <-- 0.376
       0     5052        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.376 ~~> Doub[0x00100bc0]
       0     5053        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 376.0, ft1  = 1.0
       0     5056        M 0x800006bc addi    a0, a0, -1             #; a0  = 122, (wrb) a0  <-- 121
                         M                                           #; (f:fpu) ft2  <-- 377.0
       0     5057        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100bf0, (wrb) a2  <-- 0x00100bf8
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 377.0, ft0  = 0.001
       0     5058        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 121, taken, goto 0x800006b0
       0     5060        M                                           #; (f:fpu) ft3  <-- 0.377
       0     5061        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.377 ~~> Doub[0x00100bc8]
       0     5062        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 377.0, ft1  = 1.0
       0     5065        M 0x800006bc addi    a0, a0, -1             #; a0  = 121, (wrb) a0  <-- 120
                         M                                           #; (f:fpu) ft2  <-- 378.0
       0     5066        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100bf8, (wrb) a2  <-- 0x00100c00
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 378.0, ft0  = 0.001
       0     5067        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 120, taken, goto 0x800006b0
       0     5069        M                                           #; (f:fpu) ft3  <-- 0.378
       0     5070        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.378 ~~> Doub[0x00100bd0]
       0     5071        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 378.0, ft1  = 1.0
       0     5074        M 0x800006bc addi    a0, a0, -1             #; a0  = 120, (wrb) a0  <-- 119
                         M                                           #; (f:fpu) ft2  <-- 379.0
       0     5075        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100c00, (wrb) a2  <-- 0x00100c08
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 379.0, ft0  = 0.001
       0     5076        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 119, taken, goto 0x800006b0
       0     5078        M                                           #; (f:fpu) ft3  <-- 0.379
       0     5079        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.379 ~~> Doub[0x00100bd8]
       0     5080        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 379.0, ft1  = 1.0
       0     5083        M 0x800006bc addi    a0, a0, -1             #; a0  = 119, (wrb) a0  <-- 118
                         M                                           #; (f:fpu) ft2  <-- 380.0
       0     5084        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100c08, (wrb) a2  <-- 0x00100c10
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 380.0, ft0  = 0.001
       0     5085        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 118, taken, goto 0x800006b0
       0     5087        M                                           #; (f:fpu) ft3  <-- 0.38
       0     5088        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.38 ~~> Doub[0x00100be0]
       0     5089        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 380.0, ft1  = 1.0
       0     5092        M 0x800006bc addi    a0, a0, -1             #; a0  = 118, (wrb) a0  <-- 117
                         M                                           #; (f:fpu) ft2  <-- 381.0
       0     5093        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100c10, (wrb) a2  <-- 0x00100c18
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 381.0, ft0  = 0.001
       0     5094        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 117, taken, goto 0x800006b0
       0     5096        M                                           #; (f:fpu) ft3  <-- 0.381
       0     5097        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.381 ~~> Doub[0x00100be8]
       0     5098        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 381.0, ft1  = 1.0
       0     5101        M 0x800006bc addi    a0, a0, -1             #; a0  = 117, (wrb) a0  <-- 116
                         M                                           #; (f:fpu) ft2  <-- 382.0
       0     5102        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100c18, (wrb) a2  <-- 0x00100c20
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 382.0, ft0  = 0.001
       0     5103        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 116, taken, goto 0x800006b0
       0     5105        M                                           #; (f:fpu) ft3  <-- 0.382
       0     5106        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.382 ~~> Doub[0x00100bf0]
       0     5107        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 382.0, ft1  = 1.0
       0     5110        M 0x800006bc addi    a0, a0, -1             #; a0  = 116, (wrb) a0  <-- 115
                         M                                           #; (f:fpu) ft2  <-- 383.0
       0     5111        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100c20, (wrb) a2  <-- 0x00100c28
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 383.0, ft0  = 0.001
       0     5112        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 115, taken, goto 0x800006b0
       0     5114        M                                           #; (f:fpu) ft3  <-- 0.383
       0     5115        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.383 ~~> Doub[0x00100bf8]
       0     5116        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 383.0, ft1  = 1.0
       0     5119        M 0x800006bc addi    a0, a0, -1             #; a0  = 115, (wrb) a0  <-- 114
                         M                                           #; (f:fpu) ft2  <-- 384.0
       0     5120        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100c28, (wrb) a2  <-- 0x00100c30
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 384.0, ft0  = 0.001
       0     5121        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 114, taken, goto 0x800006b0
       0     5123        M                                           #; (f:fpu) ft3  <-- 0.384
       0     5124        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.384 ~~> Doub[0x00100c00]
       0     5125        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 384.0, ft1  = 1.0
       0     5128        M 0x800006bc addi    a0, a0, -1             #; a0  = 114, (wrb) a0  <-- 113
                         M                                           #; (f:fpu) ft2  <-- 385.0
       0     5129        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100c30, (wrb) a2  <-- 0x00100c38
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 385.0, ft0  = 0.001
       0     5130        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 113, taken, goto 0x800006b0
       0     5132        M                                           #; (f:fpu) ft3  <-- 0.385
       0     5133        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.385 ~~> Doub[0x00100c08]
       0     5134        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 385.0, ft1  = 1.0
       0     5137        M 0x800006bc addi    a0, a0, -1             #; a0  = 113, (wrb) a0  <-- 112
                         M                                           #; (f:fpu) ft2  <-- 386.0
       0     5138        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100c38, (wrb) a2  <-- 0x00100c40
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 386.0, ft0  = 0.001
       0     5139        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 112, taken, goto 0x800006b0
       0     5141        M                                           #; (f:fpu) ft3  <-- 0.386
       0     5142        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.386 ~~> Doub[0x00100c10]
       0     5143        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 386.0, ft1  = 1.0
       0     5146        M 0x800006bc addi    a0, a0, -1             #; a0  = 112, (wrb) a0  <-- 111
                         M                                           #; (f:fpu) ft2  <-- 387.0
       0     5147        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100c40, (wrb) a2  <-- 0x00100c48
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 387.0, ft0  = 0.001
       0     5148        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 111, taken, goto 0x800006b0
       0     5150        M                                           #; (f:fpu) ft3  <-- 0.387
       0     5151        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.387 ~~> Doub[0x00100c18]
       0     5152        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 387.0, ft1  = 1.0
       0     5155        M 0x800006bc addi    a0, a0, -1             #; a0  = 111, (wrb) a0  <-- 110
                         M                                           #; (f:fpu) ft2  <-- 388.0
       0     5156        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100c48, (wrb) a2  <-- 0x00100c50
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 388.0, ft0  = 0.001
       0     5157        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 110, taken, goto 0x800006b0
       0     5159        M                                           #; (f:fpu) ft3  <-- 0.388
       0     5160        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.388 ~~> Doub[0x00100c20]
       0     5161        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 388.0, ft1  = 1.0
       0     5164        M 0x800006bc addi    a0, a0, -1             #; a0  = 110, (wrb) a0  <-- 109
                         M                                           #; (f:fpu) ft2  <-- 389.0
       0     5165        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100c50, (wrb) a2  <-- 0x00100c58
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 389.0, ft0  = 0.001
       0     5166        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 109, taken, goto 0x800006b0
       0     5168        M                                           #; (f:fpu) ft3  <-- 0.389
       0     5169        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.389 ~~> Doub[0x00100c28]
       0     5170        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 389.0, ft1  = 1.0
       0     5173        M 0x800006bc addi    a0, a0, -1             #; a0  = 109, (wrb) a0  <-- 108
                         M                                           #; (f:fpu) ft2  <-- 390.0
       0     5174        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100c58, (wrb) a2  <-- 0x00100c60
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 390.0, ft0  = 0.001
       0     5175        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 108, taken, goto 0x800006b0
       0     5177        M                                           #; (f:fpu) ft3  <-- 0.39
       0     5178        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.39 ~~> Doub[0x00100c30]
       0     5179        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 390.0, ft1  = 1.0
       0     5182        M 0x800006bc addi    a0, a0, -1             #; a0  = 108, (wrb) a0  <-- 107
                         M                                           #; (f:fpu) ft2  <-- 391.0
       0     5183        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100c60, (wrb) a2  <-- 0x00100c68
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 391.0, ft0  = 0.001
       0     5184        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 107, taken, goto 0x800006b0
       0     5186        M                                           #; (f:fpu) ft3  <-- 0.391
       0     5187        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.391 ~~> Doub[0x00100c38]
       0     5188        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 391.0, ft1  = 1.0
       0     5191        M 0x800006bc addi    a0, a0, -1             #; a0  = 107, (wrb) a0  <-- 106
                         M                                           #; (f:fpu) ft2  <-- 392.0
       0     5192        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100c68, (wrb) a2  <-- 0x00100c70
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 392.0, ft0  = 0.001
       0     5193        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 106, taken, goto 0x800006b0
       0     5195        M                                           #; (f:fpu) ft3  <-- 0.392
       0     5196        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.392 ~~> Doub[0x00100c40]
       0     5197        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 392.0, ft1  = 1.0
       0     5200        M 0x800006bc addi    a0, a0, -1             #; a0  = 106, (wrb) a0  <-- 105
                         M                                           #; (f:fpu) ft2  <-- 393.0
       0     5201        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100c70, (wrb) a2  <-- 0x00100c78
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 393.0, ft0  = 0.001
       0     5202        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 105, taken, goto 0x800006b0
       0     5204        M                                           #; (f:fpu) ft3  <-- 0.393
       0     5205        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.393 ~~> Doub[0x00100c48]
       0     5206        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 393.0, ft1  = 1.0
       0     5209        M 0x800006bc addi    a0, a0, -1             #; a0  = 105, (wrb) a0  <-- 104
                         M                                           #; (f:fpu) ft2  <-- 394.0
       0     5210        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100c78, (wrb) a2  <-- 0x00100c80
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 394.0, ft0  = 0.001
       0     5211        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 104, taken, goto 0x800006b0
       0     5213        M                                           #; (f:fpu) ft3  <-- 0.394
       0     5214        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.394 ~~> Doub[0x00100c50]
       0     5215        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 394.0, ft1  = 1.0
       0     5218        M 0x800006bc addi    a0, a0, -1             #; a0  = 104, (wrb) a0  <-- 103
                         M                                           #; (f:fpu) ft2  <-- 395.0
       0     5219        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100c80, (wrb) a2  <-- 0x00100c88
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 395.0, ft0  = 0.001
       0     5220        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 103, taken, goto 0x800006b0
       0     5222        M                                           #; (f:fpu) ft3  <-- 0.395
       0     5223        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.395 ~~> Doub[0x00100c58]
       0     5224        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 395.0, ft1  = 1.0
       0     5227        M 0x800006bc addi    a0, a0, -1             #; a0  = 103, (wrb) a0  <-- 102
                         M                                           #; (f:fpu) ft2  <-- 396.0
       0     5228        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100c88, (wrb) a2  <-- 0x00100c90
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 396.0, ft0  = 0.001
       0     5229        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 102, taken, goto 0x800006b0
       0     5231        M                                           #; (f:fpu) ft3  <-- 0.396
       0     5232        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.396 ~~> Doub[0x00100c60]
       0     5233        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 396.0, ft1  = 1.0
       0     5236        M 0x800006bc addi    a0, a0, -1             #; a0  = 102, (wrb) a0  <-- 101
                         M                                           #; (f:fpu) ft2  <-- 397.0
       0     5237        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100c90, (wrb) a2  <-- 0x00100c98
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 397.0, ft0  = 0.001
       0     5238        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 101, taken, goto 0x800006b0
       0     5240        M                                           #; (f:fpu) ft3  <-- 0.397
       0     5241        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.397 ~~> Doub[0x00100c68]
       0     5242        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 397.0, ft1  = 1.0
       0     5245        M 0x800006bc addi    a0, a0, -1             #; a0  = 101, (wrb) a0  <-- 100
                         M                                           #; (f:fpu) ft2  <-- 398.0
       0     5246        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100c98, (wrb) a2  <-- 0x00100ca0
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 398.0, ft0  = 0.001
       0     5247        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 100, taken, goto 0x800006b0
       0     5249        M                                           #; (f:fpu) ft3  <-- 0.398
       0     5250        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.398 ~~> Doub[0x00100c70]
       0     5251        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 398.0, ft1  = 1.0
       0     5254        M 0x800006bc addi    a0, a0, -1             #; a0  = 100, (wrb) a0  <-- 99
                         M                                           #; (f:fpu) ft2  <-- 399.0
       0     5255        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100ca0, (wrb) a2  <-- 0x00100ca8
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 399.0, ft0  = 0.001
       0     5256        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 99, taken, goto 0x800006b0
       0     5258        M                                           #; (f:fpu) ft3  <-- 0.399
       0     5259        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.399 ~~> Doub[0x00100c78]
       0     5260        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 399.0, ft1  = 1.0
       0     5263        M 0x800006bc addi    a0, a0, -1             #; a0  = 99, (wrb) a0  <-- 98
                         M                                           #; (f:fpu) ft2  <-- 400.0
       0     5264        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100ca8, (wrb) a2  <-- 0x00100cb0
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 400.0, ft0  = 0.001
       0     5265        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 98, taken, goto 0x800006b0
       0     5267        M                                           #; (f:fpu) ft3  <-- 0.4
       0     5268        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.4 ~~> Doub[0x00100c80]
       0     5269        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 400.0, ft1  = 1.0
       0     5272        M 0x800006bc addi    a0, a0, -1             #; a0  = 98, (wrb) a0  <-- 97
                         M                                           #; (f:fpu) ft2  <-- 401.0
       0     5273        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100cb0, (wrb) a2  <-- 0x00100cb8
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 401.0, ft0  = 0.001
       0     5274        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 97, taken, goto 0x800006b0
       0     5276        M                                           #; (f:fpu) ft3  <-- 0.401
       0     5277        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.401 ~~> Doub[0x00100c88]
       0     5278        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 401.0, ft1  = 1.0
       0     5281        M 0x800006bc addi    a0, a0, -1             #; a0  = 97, (wrb) a0  <-- 96
                         M                                           #; (f:fpu) ft2  <-- 402.0
       0     5282        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100cb8, (wrb) a2  <-- 0x00100cc0
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 402.0, ft0  = 0.001
       0     5283        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 96, taken, goto 0x800006b0
       0     5285        M                                           #; (f:fpu) ft3  <-- 0.402
       0     5286        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.402 ~~> Doub[0x00100c90]
       0     5287        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 402.0, ft1  = 1.0
       0     5290        M 0x800006bc addi    a0, a0, -1             #; a0  = 96, (wrb) a0  <-- 95
                         M                                           #; (f:fpu) ft2  <-- 403.0
       0     5291        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100cc0, (wrb) a2  <-- 0x00100cc8
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 403.0, ft0  = 0.001
       0     5292        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 95, taken, goto 0x800006b0
       0     5294        M                                           #; (f:fpu) ft3  <-- 0.403
       0     5295        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.403 ~~> Doub[0x00100c98]
       0     5296        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 403.0, ft1  = 1.0
       0     5299        M 0x800006bc addi    a0, a0, -1             #; a0  = 95, (wrb) a0  <-- 94
                         M                                           #; (f:fpu) ft2  <-- 404.0
       0     5300        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100cc8, (wrb) a2  <-- 0x00100cd0
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 404.0, ft0  = 0.001
       0     5301        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 94, taken, goto 0x800006b0
       0     5303        M                                           #; (f:fpu) ft3  <-- 0.404
       0     5304        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.404 ~~> Doub[0x00100ca0]
       0     5305        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 404.0, ft1  = 1.0
       0     5308        M 0x800006bc addi    a0, a0, -1             #; a0  = 94, (wrb) a0  <-- 93
                         M                                           #; (f:fpu) ft2  <-- 405.0
       0     5309        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100cd0, (wrb) a2  <-- 0x00100cd8
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 405.0, ft0  = 0.001
       0     5310        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 93, taken, goto 0x800006b0
       0     5312        M                                           #; (f:fpu) ft3  <-- 0.405
       0     5313        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.405 ~~> Doub[0x00100ca8]
       0     5314        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 405.0, ft1  = 1.0
       0     5317        M 0x800006bc addi    a0, a0, -1             #; a0  = 93, (wrb) a0  <-- 92
                         M                                           #; (f:fpu) ft2  <-- 406.0
       0     5318        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100cd8, (wrb) a2  <-- 0x00100ce0
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 406.0, ft0  = 0.001
       0     5319        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 92, taken, goto 0x800006b0
       0     5321        M                                           #; (f:fpu) ft3  <-- 0.406
       0     5322        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.406 ~~> Doub[0x00100cb0]
       0     5323        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 406.0, ft1  = 1.0
       0     5326        M 0x800006bc addi    a0, a0, -1             #; a0  = 92, (wrb) a0  <-- 91
                         M                                           #; (f:fpu) ft2  <-- 407.0
       0     5327        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100ce0, (wrb) a2  <-- 0x00100ce8
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 407.0, ft0  = 0.001
       0     5328        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 91, taken, goto 0x800006b0
       0     5330        M                                           #; (f:fpu) ft3  <-- 0.4070000
       0     5331        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.4070000 ~~> Doub[0x00100cb8]
       0     5332        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 407.0, ft1  = 1.0
       0     5335        M 0x800006bc addi    a0, a0, -1             #; a0  = 91, (wrb) a0  <-- 90
                         M                                           #; (f:fpu) ft2  <-- 408.0
       0     5336        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100ce8, (wrb) a2  <-- 0x00100cf0
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 408.0, ft0  = 0.001
       0     5337        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 90, taken, goto 0x800006b0
       0     5339        M                                           #; (f:fpu) ft3  <-- 0.4080000
       0     5340        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.4080000 ~~> Doub[0x00100cc0]
       0     5341        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 408.0, ft1  = 1.0
       0     5344        M 0x800006bc addi    a0, a0, -1             #; a0  = 90, (wrb) a0  <-- 89
                         M                                           #; (f:fpu) ft2  <-- 409.0
       0     5345        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100cf0, (wrb) a2  <-- 0x00100cf8
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 409.0, ft0  = 0.001
       0     5346        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 89, taken, goto 0x800006b0
       0     5348        M                                           #; (f:fpu) ft3  <-- 0.4090000
       0     5349        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.4090000 ~~> Doub[0x00100cc8]
       0     5350        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 409.0, ft1  = 1.0
       0     5353        M 0x800006bc addi    a0, a0, -1             #; a0  = 89, (wrb) a0  <-- 88
                         M                                           #; (f:fpu) ft2  <-- 410.0
       0     5354        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100cf8, (wrb) a2  <-- 0x00100d00
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 410.0, ft0  = 0.001
       0     5355        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 88, taken, goto 0x800006b0
       0     5357        M                                           #; (f:fpu) ft3  <-- 0.4100000
       0     5358        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.4100000 ~~> Doub[0x00100cd0]
       0     5359        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 410.0, ft1  = 1.0
       0     5362        M 0x800006bc addi    a0, a0, -1             #; a0  = 88, (wrb) a0  <-- 87
                         M                                           #; (f:fpu) ft2  <-- 411.0
       0     5363        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100d00, (wrb) a2  <-- 0x00100d08
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 411.0, ft0  = 0.001
       0     5364        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 87, taken, goto 0x800006b0
       0     5366        M                                           #; (f:fpu) ft3  <-- 0.4110000
       0     5367        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.4110000 ~~> Doub[0x00100cd8]
       0     5368        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 411.0, ft1  = 1.0
       0     5371        M 0x800006bc addi    a0, a0, -1             #; a0  = 87, (wrb) a0  <-- 86
                         M                                           #; (f:fpu) ft2  <-- 412.0
       0     5372        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100d08, (wrb) a2  <-- 0x00100d10
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 412.0, ft0  = 0.001
       0     5373        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 86, taken, goto 0x800006b0
       0     5375        M                                           #; (f:fpu) ft3  <-- 0.4120000
       0     5376        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.4120000 ~~> Doub[0x00100ce0]
       0     5377        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 412.0, ft1  = 1.0
       0     5380        M 0x800006bc addi    a0, a0, -1             #; a0  = 86, (wrb) a0  <-- 85
                         M                                           #; (f:fpu) ft2  <-- 413.0
       0     5381        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100d10, (wrb) a2  <-- 0x00100d18
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 413.0, ft0  = 0.001
       0     5382        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 85, taken, goto 0x800006b0
       0     5384        M                                           #; (f:fpu) ft3  <-- 0.4130000
       0     5385        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.4130000 ~~> Doub[0x00100ce8]
       0     5386        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 413.0, ft1  = 1.0
       0     5389        M 0x800006bc addi    a0, a0, -1             #; a0  = 85, (wrb) a0  <-- 84
                         M                                           #; (f:fpu) ft2  <-- 414.0
       0     5390        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100d18, (wrb) a2  <-- 0x00100d20
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 414.0, ft0  = 0.001
       0     5391        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 84, taken, goto 0x800006b0
       0     5393        M                                           #; (f:fpu) ft3  <-- 0.4140000
       0     5394        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.4140000 ~~> Doub[0x00100cf0]
       0     5395        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 414.0, ft1  = 1.0
       0     5398        M 0x800006bc addi    a0, a0, -1             #; a0  = 84, (wrb) a0  <-- 83
                         M                                           #; (f:fpu) ft2  <-- 415.0
       0     5399        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100d20, (wrb) a2  <-- 0x00100d28
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 415.0, ft0  = 0.001
       0     5400        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 83, taken, goto 0x800006b0
       0     5402        M                                           #; (f:fpu) ft3  <-- 0.4150000
       0     5403        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.4150000 ~~> Doub[0x00100cf8]
       0     5404        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 415.0, ft1  = 1.0
       0     5407        M 0x800006bc addi    a0, a0, -1             #; a0  = 83, (wrb) a0  <-- 82
                         M                                           #; (f:fpu) ft2  <-- 416.0
       0     5408        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100d28, (wrb) a2  <-- 0x00100d30
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 416.0, ft0  = 0.001
       0     5409        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 82, taken, goto 0x800006b0
       0     5411        M                                           #; (f:fpu) ft3  <-- 0.4160000
       0     5412        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.4160000 ~~> Doub[0x00100d00]
       0     5413        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 416.0, ft1  = 1.0
       0     5416        M 0x800006bc addi    a0, a0, -1             #; a0  = 82, (wrb) a0  <-- 81
                         M                                           #; (f:fpu) ft2  <-- 417.0
       0     5417        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100d30, (wrb) a2  <-- 0x00100d38
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 417.0, ft0  = 0.001
       0     5418        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 81, taken, goto 0x800006b0
       0     5420        M                                           #; (f:fpu) ft3  <-- 0.417
       0     5421        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.417 ~~> Doub[0x00100d08]
       0     5422        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 417.0, ft1  = 1.0
       0     5425        M 0x800006bc addi    a0, a0, -1             #; a0  = 81, (wrb) a0  <-- 80
                         M                                           #; (f:fpu) ft2  <-- 418.0
       0     5426        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100d38, (wrb) a2  <-- 0x00100d40
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 418.0, ft0  = 0.001
       0     5427        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 80, taken, goto 0x800006b0
       0     5429        M                                           #; (f:fpu) ft3  <-- 0.418
       0     5430        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.418 ~~> Doub[0x00100d10]
       0     5431        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 418.0, ft1  = 1.0
       0     5434        M 0x800006bc addi    a0, a0, -1             #; a0  = 80, (wrb) a0  <-- 79
                         M                                           #; (f:fpu) ft2  <-- 419.0
       0     5435        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100d40, (wrb) a2  <-- 0x00100d48
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 419.0, ft0  = 0.001
       0     5436        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 79, taken, goto 0x800006b0
       0     5438        M                                           #; (f:fpu) ft3  <-- 0.419
       0     5439        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.419 ~~> Doub[0x00100d18]
       0     5440        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 419.0, ft1  = 1.0
       0     5443        M 0x800006bc addi    a0, a0, -1             #; a0  = 79, (wrb) a0  <-- 78
                         M                                           #; (f:fpu) ft2  <-- 420.0
       0     5444        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100d48, (wrb) a2  <-- 0x00100d50
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 420.0, ft0  = 0.001
       0     5445        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 78, taken, goto 0x800006b0
       0     5447        M                                           #; (f:fpu) ft3  <-- 0.42
       0     5448        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.42 ~~> Doub[0x00100d20]
       0     5449        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 420.0, ft1  = 1.0
       0     5452        M 0x800006bc addi    a0, a0, -1             #; a0  = 78, (wrb) a0  <-- 77
                         M                                           #; (f:fpu) ft2  <-- 421.0
       0     5453        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100d50, (wrb) a2  <-- 0x00100d58
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 421.0, ft0  = 0.001
       0     5454        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 77, taken, goto 0x800006b0
       0     5456        M                                           #; (f:fpu) ft3  <-- 0.421
       0     5457        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.421 ~~> Doub[0x00100d28]
       0     5458        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 421.0, ft1  = 1.0
       0     5461        M 0x800006bc addi    a0, a0, -1             #; a0  = 77, (wrb) a0  <-- 76
                         M                                           #; (f:fpu) ft2  <-- 422.0
       0     5462        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100d58, (wrb) a2  <-- 0x00100d60
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 422.0, ft0  = 0.001
       0     5463        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 76, taken, goto 0x800006b0
       0     5465        M                                           #; (f:fpu) ft3  <-- 0.422
       0     5466        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.422 ~~> Doub[0x00100d30]
       0     5467        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 422.0, ft1  = 1.0
       0     5470        M 0x800006bc addi    a0, a0, -1             #; a0  = 76, (wrb) a0  <-- 75
                         M                                           #; (f:fpu) ft2  <-- 423.0
       0     5471        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100d60, (wrb) a2  <-- 0x00100d68
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 423.0, ft0  = 0.001
       0     5472        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 75, taken, goto 0x800006b0
       0     5474        M                                           #; (f:fpu) ft3  <-- 0.423
       0     5475        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.423 ~~> Doub[0x00100d38]
       0     5476        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 423.0, ft1  = 1.0
       0     5479        M 0x800006bc addi    a0, a0, -1             #; a0  = 75, (wrb) a0  <-- 74
                         M                                           #; (f:fpu) ft2  <-- 424.0
       0     5480        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100d68, (wrb) a2  <-- 0x00100d70
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 424.0, ft0  = 0.001
       0     5481        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 74, taken, goto 0x800006b0
       0     5483        M                                           #; (f:fpu) ft3  <-- 0.424
       0     5484        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.424 ~~> Doub[0x00100d40]
       0     5485        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 424.0, ft1  = 1.0
       0     5488        M 0x800006bc addi    a0, a0, -1             #; a0  = 74, (wrb) a0  <-- 73
                         M                                           #; (f:fpu) ft2  <-- 425.0
       0     5489        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100d70, (wrb) a2  <-- 0x00100d78
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 425.0, ft0  = 0.001
       0     5490        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 73, taken, goto 0x800006b0
       0     5492        M                                           #; (f:fpu) ft3  <-- 0.425
       0     5493        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.425 ~~> Doub[0x00100d48]
       0     5494        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 425.0, ft1  = 1.0
       0     5497        M 0x800006bc addi    a0, a0, -1             #; a0  = 73, (wrb) a0  <-- 72
                         M                                           #; (f:fpu) ft2  <-- 426.0
       0     5498        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100d78, (wrb) a2  <-- 0x00100d80
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 426.0, ft0  = 0.001
       0     5499        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 72, taken, goto 0x800006b0
       0     5501        M                                           #; (f:fpu) ft3  <-- 0.426
       0     5502        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.426 ~~> Doub[0x00100d50]
       0     5503        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 426.0, ft1  = 1.0
       0     5506        M 0x800006bc addi    a0, a0, -1             #; a0  = 72, (wrb) a0  <-- 71
                         M                                           #; (f:fpu) ft2  <-- 427.0
       0     5507        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100d80, (wrb) a2  <-- 0x00100d88
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 427.0, ft0  = 0.001
       0     5508        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 71, taken, goto 0x800006b0
       0     5510        M                                           #; (f:fpu) ft3  <-- 0.427
       0     5511        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.427 ~~> Doub[0x00100d58]
       0     5512        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 427.0, ft1  = 1.0
       0     5515        M 0x800006bc addi    a0, a0, -1             #; a0  = 71, (wrb) a0  <-- 70
                         M                                           #; (f:fpu) ft2  <-- 428.0
       0     5516        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100d88, (wrb) a2  <-- 0x00100d90
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 428.0, ft0  = 0.001
       0     5517        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 70, taken, goto 0x800006b0
       0     5519        M                                           #; (f:fpu) ft3  <-- 0.428
       0     5520        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.428 ~~> Doub[0x00100d60]
       0     5521        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 428.0, ft1  = 1.0
       0     5524        M 0x800006bc addi    a0, a0, -1             #; a0  = 70, (wrb) a0  <-- 69
                         M                                           #; (f:fpu) ft2  <-- 429.0
       0     5525        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100d90, (wrb) a2  <-- 0x00100d98
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 429.0, ft0  = 0.001
       0     5526        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 69, taken, goto 0x800006b0
       0     5528        M                                           #; (f:fpu) ft3  <-- 0.429
       0     5529        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.429 ~~> Doub[0x00100d68]
       0     5530        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 429.0, ft1  = 1.0
       0     5533        M 0x800006bc addi    a0, a0, -1             #; a0  = 69, (wrb) a0  <-- 68
                         M                                           #; (f:fpu) ft2  <-- 430.0
       0     5534        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100d98, (wrb) a2  <-- 0x00100da0
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 430.0, ft0  = 0.001
       0     5535        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 68, taken, goto 0x800006b0
       0     5537        M                                           #; (f:fpu) ft3  <-- 0.43
       0     5538        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.43 ~~> Doub[0x00100d70]
       0     5539        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 430.0, ft1  = 1.0
       0     5542        M 0x800006bc addi    a0, a0, -1             #; a0  = 68, (wrb) a0  <-- 67
                         M                                           #; (f:fpu) ft2  <-- 431.0
       0     5543        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100da0, (wrb) a2  <-- 0x00100da8
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 431.0, ft0  = 0.001
       0     5544        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 67, taken, goto 0x800006b0
       0     5546        M                                           #; (f:fpu) ft3  <-- 0.431
       0     5547        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.431 ~~> Doub[0x00100d78]
       0     5548        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 431.0, ft1  = 1.0
       0     5551        M 0x800006bc addi    a0, a0, -1             #; a0  = 67, (wrb) a0  <-- 66
                         M                                           #; (f:fpu) ft2  <-- 432.0
       0     5552        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100da8, (wrb) a2  <-- 0x00100db0
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 432.0, ft0  = 0.001
       0     5553        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 66, taken, goto 0x800006b0
       0     5555        M                                           #; (f:fpu) ft3  <-- 0.432
       0     5556        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.432 ~~> Doub[0x00100d80]
       0     5557        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 432.0, ft1  = 1.0
       0     5560        M 0x800006bc addi    a0, a0, -1             #; a0  = 66, (wrb) a0  <-- 65
                         M                                           #; (f:fpu) ft2  <-- 433.0
       0     5561        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100db0, (wrb) a2  <-- 0x00100db8
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 433.0, ft0  = 0.001
       0     5562        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 65, taken, goto 0x800006b0
       0     5564        M                                           #; (f:fpu) ft3  <-- 0.433
       0     5565        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.433 ~~> Doub[0x00100d88]
       0     5566        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 433.0, ft1  = 1.0
       0     5569        M 0x800006bc addi    a0, a0, -1             #; a0  = 65, (wrb) a0  <-- 64
                         M                                           #; (f:fpu) ft2  <-- 434.0
       0     5570        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100db8, (wrb) a2  <-- 0x00100dc0
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 434.0, ft0  = 0.001
       0     5571        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 64, taken, goto 0x800006b0
       0     5573        M                                           #; (f:fpu) ft3  <-- 0.434
       0     5574        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.434 ~~> Doub[0x00100d90]
       0     5575        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 434.0, ft1  = 1.0
       0     5578        M 0x800006bc addi    a0, a0, -1             #; a0  = 64, (wrb) a0  <-- 63
                         M                                           #; (f:fpu) ft2  <-- 435.0
       0     5579        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100dc0, (wrb) a2  <-- 0x00100dc8
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 435.0, ft0  = 0.001
       0     5580        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 63, taken, goto 0x800006b0
       0     5582        M                                           #; (f:fpu) ft3  <-- 0.435
       0     5583        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.435 ~~> Doub[0x00100d98]
       0     5584        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 435.0, ft1  = 1.0
       0     5587        M 0x800006bc addi    a0, a0, -1             #; a0  = 63, (wrb) a0  <-- 62
                         M                                           #; (f:fpu) ft2  <-- 436.0
       0     5588        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100dc8, (wrb) a2  <-- 0x00100dd0
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 436.0, ft0  = 0.001
       0     5589        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 62, taken, goto 0x800006b0
       0     5591        M                                           #; (f:fpu) ft3  <-- 0.436
       0     5592        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.436 ~~> Doub[0x00100da0]
       0     5593        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 436.0, ft1  = 1.0
       0     5596        M 0x800006bc addi    a0, a0, -1             #; a0  = 62, (wrb) a0  <-- 61
                         M                                           #; (f:fpu) ft2  <-- 437.0
       0     5597        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100dd0, (wrb) a2  <-- 0x00100dd8
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 437.0, ft0  = 0.001
       0     5598        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 61, taken, goto 0x800006b0
       0     5600        M                                           #; (f:fpu) ft3  <-- 0.437
       0     5601        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.437 ~~> Doub[0x00100da8]
       0     5602        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 437.0, ft1  = 1.0
       0     5605        M 0x800006bc addi    a0, a0, -1             #; a0  = 61, (wrb) a0  <-- 60
                         M                                           #; (f:fpu) ft2  <-- 438.0
       0     5606        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100dd8, (wrb) a2  <-- 0x00100de0
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 438.0, ft0  = 0.001
       0     5607        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 60, taken, goto 0x800006b0
       0     5609        M                                           #; (f:fpu) ft3  <-- 0.438
       0     5610        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.438 ~~> Doub[0x00100db0]
       0     5611        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 438.0, ft1  = 1.0
       0     5614        M 0x800006bc addi    a0, a0, -1             #; a0  = 60, (wrb) a0  <-- 59
                         M                                           #; (f:fpu) ft2  <-- 439.0
       0     5615        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100de0, (wrb) a2  <-- 0x00100de8
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 439.0, ft0  = 0.001
       0     5616        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 59, taken, goto 0x800006b0
       0     5618        M                                           #; (f:fpu) ft3  <-- 0.439
       0     5619        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.439 ~~> Doub[0x00100db8]
       0     5620        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 439.0, ft1  = 1.0
       0     5623        M 0x800006bc addi    a0, a0, -1             #; a0  = 59, (wrb) a0  <-- 58
                         M                                           #; (f:fpu) ft2  <-- 440.0
       0     5624        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100de8, (wrb) a2  <-- 0x00100df0
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 440.0, ft0  = 0.001
       0     5625        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 58, taken, goto 0x800006b0
       0     5627        M                                           #; (f:fpu) ft3  <-- 0.44
       0     5628        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.44 ~~> Doub[0x00100dc0]
       0     5629        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 440.0, ft1  = 1.0
       0     5632        M 0x800006bc addi    a0, a0, -1             #; a0  = 58, (wrb) a0  <-- 57
                         M                                           #; (f:fpu) ft2  <-- 441.0
       0     5633        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100df0, (wrb) a2  <-- 0x00100df8
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 441.0, ft0  = 0.001
       0     5634        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 57, taken, goto 0x800006b0
       0     5636        M                                           #; (f:fpu) ft3  <-- 0.441
       0     5637        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.441 ~~> Doub[0x00100dc8]
       0     5638        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 441.0, ft1  = 1.0
       0     5641        M 0x800006bc addi    a0, a0, -1             #; a0  = 57, (wrb) a0  <-- 56
                         M                                           #; (f:fpu) ft2  <-- 442.0
       0     5642        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100df8, (wrb) a2  <-- 0x00100e00
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 442.0, ft0  = 0.001
       0     5643        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 56, taken, goto 0x800006b0
       0     5645        M                                           #; (f:fpu) ft3  <-- 0.442
       0     5646        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.442 ~~> Doub[0x00100dd0]
       0     5647        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 442.0, ft1  = 1.0
       0     5650        M 0x800006bc addi    a0, a0, -1             #; a0  = 56, (wrb) a0  <-- 55
                         M                                           #; (f:fpu) ft2  <-- 443.0
       0     5651        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100e00, (wrb) a2  <-- 0x00100e08
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 443.0, ft0  = 0.001
       0     5652        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 55, taken, goto 0x800006b0
       0     5654        M                                           #; (f:fpu) ft3  <-- 0.443
       0     5655        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.443 ~~> Doub[0x00100dd8]
       0     5656        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 443.0, ft1  = 1.0
       0     5659        M 0x800006bc addi    a0, a0, -1             #; a0  = 55, (wrb) a0  <-- 54
                         M                                           #; (f:fpu) ft2  <-- 444.0
       0     5660        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100e08, (wrb) a2  <-- 0x00100e10
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 444.0, ft0  = 0.001
       0     5661        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 54, taken, goto 0x800006b0
       0     5663        M                                           #; (f:fpu) ft3  <-- 0.444
       0     5664        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.444 ~~> Doub[0x00100de0]
       0     5665        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 444.0, ft1  = 1.0
       0     5668        M 0x800006bc addi    a0, a0, -1             #; a0  = 54, (wrb) a0  <-- 53
                         M                                           #; (f:fpu) ft2  <-- 445.0
       0     5669        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100e10, (wrb) a2  <-- 0x00100e18
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 445.0, ft0  = 0.001
       0     5670        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 53, taken, goto 0x800006b0
       0     5672        M                                           #; (f:fpu) ft3  <-- 0.445
       0     5673        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.445 ~~> Doub[0x00100de8]
       0     5674        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 445.0, ft1  = 1.0
       0     5677        M 0x800006bc addi    a0, a0, -1             #; a0  = 53, (wrb) a0  <-- 52
                         M                                           #; (f:fpu) ft2  <-- 446.0
       0     5678        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100e18, (wrb) a2  <-- 0x00100e20
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 446.0, ft0  = 0.001
       0     5679        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 52, taken, goto 0x800006b0
       0     5681        M                                           #; (f:fpu) ft3  <-- 0.446
       0     5682        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.446 ~~> Doub[0x00100df0]
       0     5683        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 446.0, ft1  = 1.0
       0     5686        M 0x800006bc addi    a0, a0, -1             #; a0  = 52, (wrb) a0  <-- 51
                         M                                           #; (f:fpu) ft2  <-- 447.0
       0     5687        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100e20, (wrb) a2  <-- 0x00100e28
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 447.0, ft0  = 0.001
       0     5688        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 51, taken, goto 0x800006b0
       0     5690        M                                           #; (f:fpu) ft3  <-- 0.447
       0     5691        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.447 ~~> Doub[0x00100df8]
       0     5692        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 447.0, ft1  = 1.0
       0     5695        M 0x800006bc addi    a0, a0, -1             #; a0  = 51, (wrb) a0  <-- 50
                         M                                           #; (f:fpu) ft2  <-- 448.0
       0     5696        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100e28, (wrb) a2  <-- 0x00100e30
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 448.0, ft0  = 0.001
       0     5697        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 50, taken, goto 0x800006b0
       0     5699        M                                           #; (f:fpu) ft3  <-- 0.448
       0     5700        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.448 ~~> Doub[0x00100e00]
       0     5701        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 448.0, ft1  = 1.0
       0     5704        M 0x800006bc addi    a0, a0, -1             #; a0  = 50, (wrb) a0  <-- 49
                         M                                           #; (f:fpu) ft2  <-- 449.0
       0     5705        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100e30, (wrb) a2  <-- 0x00100e38
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 449.0, ft0  = 0.001
       0     5706        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 49, taken, goto 0x800006b0
       0     5708        M                                           #; (f:fpu) ft3  <-- 0.449
       0     5709        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.449 ~~> Doub[0x00100e08]
       0     5710        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 449.0, ft1  = 1.0
       0     5713        M 0x800006bc addi    a0, a0, -1             #; a0  = 49, (wrb) a0  <-- 48
                         M                                           #; (f:fpu) ft2  <-- 450.0
       0     5714        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100e38, (wrb) a2  <-- 0x00100e40
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 450.0, ft0  = 0.001
       0     5715        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 48, taken, goto 0x800006b0
       0     5717        M                                           #; (f:fpu) ft3  <-- 0.45
       0     5718        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.45 ~~> Doub[0x00100e10]
       0     5719        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 450.0, ft1  = 1.0
       0     5722        M 0x800006bc addi    a0, a0, -1             #; a0  = 48, (wrb) a0  <-- 47
                         M                                           #; (f:fpu) ft2  <-- 451.0
       0     5723        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100e40, (wrb) a2  <-- 0x00100e48
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 451.0, ft0  = 0.001
       0     5724        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 47, taken, goto 0x800006b0
       0     5726        M                                           #; (f:fpu) ft3  <-- 0.451
       0     5727        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.451 ~~> Doub[0x00100e18]
       0     5728        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 451.0, ft1  = 1.0
       0     5731        M 0x800006bc addi    a0, a0, -1             #; a0  = 47, (wrb) a0  <-- 46
                         M                                           #; (f:fpu) ft2  <-- 452.0
       0     5732        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100e48, (wrb) a2  <-- 0x00100e50
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 452.0, ft0  = 0.001
       0     5733        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 46, taken, goto 0x800006b0
       0     5735        M                                           #; (f:fpu) ft3  <-- 0.452
       0     5736        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.452 ~~> Doub[0x00100e20]
       0     5737        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 452.0, ft1  = 1.0
       0     5740        M 0x800006bc addi    a0, a0, -1             #; a0  = 46, (wrb) a0  <-- 45
                         M                                           #; (f:fpu) ft2  <-- 453.0
       0     5741        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100e50, (wrb) a2  <-- 0x00100e58
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 453.0, ft0  = 0.001
       0     5742        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 45, taken, goto 0x800006b0
       0     5744        M                                           #; (f:fpu) ft3  <-- 0.453
       0     5745        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.453 ~~> Doub[0x00100e28]
       0     5746        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 453.0, ft1  = 1.0
       0     5749        M 0x800006bc addi    a0, a0, -1             #; a0  = 45, (wrb) a0  <-- 44
                         M                                           #; (f:fpu) ft2  <-- 454.0
       0     5750        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100e58, (wrb) a2  <-- 0x00100e60
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 454.0, ft0  = 0.001
       0     5751        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 44, taken, goto 0x800006b0
       0     5753        M                                           #; (f:fpu) ft3  <-- 0.454
       0     5754        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.454 ~~> Doub[0x00100e30]
       0     5755        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 454.0, ft1  = 1.0
       0     5758        M 0x800006bc addi    a0, a0, -1             #; a0  = 44, (wrb) a0  <-- 43
                         M                                           #; (f:fpu) ft2  <-- 455.0
       0     5759        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100e60, (wrb) a2  <-- 0x00100e68
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 455.0, ft0  = 0.001
       0     5760        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 43, taken, goto 0x800006b0
       0     5762        M                                           #; (f:fpu) ft3  <-- 0.455
       0     5763        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.455 ~~> Doub[0x00100e38]
       0     5764        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 455.0, ft1  = 1.0
       0     5767        M 0x800006bc addi    a0, a0, -1             #; a0  = 43, (wrb) a0  <-- 42
                         M                                           #; (f:fpu) ft2  <-- 456.0
       0     5768        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100e68, (wrb) a2  <-- 0x00100e70
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 456.0, ft0  = 0.001
       0     5769        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 42, taken, goto 0x800006b0
       0     5771        M                                           #; (f:fpu) ft3  <-- 0.456
       0     5772        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.456 ~~> Doub[0x00100e40]
       0     5773        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 456.0, ft1  = 1.0
       0     5776        M 0x800006bc addi    a0, a0, -1             #; a0  = 42, (wrb) a0  <-- 41
                         M                                           #; (f:fpu) ft2  <-- 457.0
       0     5777        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100e70, (wrb) a2  <-- 0x00100e78
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 457.0, ft0  = 0.001
       0     5778        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 41, taken, goto 0x800006b0
       0     5780        M                                           #; (f:fpu) ft3  <-- 0.457
       0     5781        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.457 ~~> Doub[0x00100e48]
       0     5782        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 457.0, ft1  = 1.0
       0     5785        M 0x800006bc addi    a0, a0, -1             #; a0  = 41, (wrb) a0  <-- 40
                         M                                           #; (f:fpu) ft2  <-- 458.0
       0     5786        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100e78, (wrb) a2  <-- 0x00100e80
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 458.0, ft0  = 0.001
       0     5787        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 40, taken, goto 0x800006b0
       0     5789        M                                           #; (f:fpu) ft3  <-- 0.458
       0     5790        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.458 ~~> Doub[0x00100e50]
       0     5791        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 458.0, ft1  = 1.0
       0     5794        M 0x800006bc addi    a0, a0, -1             #; a0  = 40, (wrb) a0  <-- 39
                         M                                           #; (f:fpu) ft2  <-- 459.0
       0     5795        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100e80, (wrb) a2  <-- 0x00100e88
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 459.0, ft0  = 0.001
       0     5796        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 39, taken, goto 0x800006b0
       0     5798        M                                           #; (f:fpu) ft3  <-- 0.459
       0     5799        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.459 ~~> Doub[0x00100e58]
       0     5800        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 459.0, ft1  = 1.0
       0     5803        M 0x800006bc addi    a0, a0, -1             #; a0  = 39, (wrb) a0  <-- 38
                         M                                           #; (f:fpu) ft2  <-- 460.0
       0     5804        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100e88, (wrb) a2  <-- 0x00100e90
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 460.0, ft0  = 0.001
       0     5805        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 38, taken, goto 0x800006b0
       0     5807        M                                           #; (f:fpu) ft3  <-- 0.46
       0     5808        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.46 ~~> Doub[0x00100e60]
       0     5809        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 460.0, ft1  = 1.0
       0     5812        M 0x800006bc addi    a0, a0, -1             #; a0  = 38, (wrb) a0  <-- 37
                         M                                           #; (f:fpu) ft2  <-- 461.0
       0     5813        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100e90, (wrb) a2  <-- 0x00100e98
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 461.0, ft0  = 0.001
       0     5814        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 37, taken, goto 0x800006b0
       0     5816        M                                           #; (f:fpu) ft3  <-- 0.461
       0     5817        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.461 ~~> Doub[0x00100e68]
       0     5818        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 461.0, ft1  = 1.0
       0     5821        M 0x800006bc addi    a0, a0, -1             #; a0  = 37, (wrb) a0  <-- 36
                         M                                           #; (f:fpu) ft2  <-- 462.0
       0     5822        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100e98, (wrb) a2  <-- 0x00100ea0
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 462.0, ft0  = 0.001
       0     5823        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 36, taken, goto 0x800006b0
       0     5825        M                                           #; (f:fpu) ft3  <-- 0.462
       0     5826        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.462 ~~> Doub[0x00100e70]
       0     5827        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 462.0, ft1  = 1.0
       0     5830        M 0x800006bc addi    a0, a0, -1             #; a0  = 36, (wrb) a0  <-- 35
                         M                                           #; (f:fpu) ft2  <-- 463.0
       0     5831        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100ea0, (wrb) a2  <-- 0x00100ea8
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 463.0, ft0  = 0.001
       0     5832        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 35, taken, goto 0x800006b0
       0     5834        M                                           #; (f:fpu) ft3  <-- 0.463
       0     5835        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.463 ~~> Doub[0x00100e78]
       0     5836        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 463.0, ft1  = 1.0
       0     5839        M 0x800006bc addi    a0, a0, -1             #; a0  = 35, (wrb) a0  <-- 34
                         M                                           #; (f:fpu) ft2  <-- 464.0
       0     5840        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100ea8, (wrb) a2  <-- 0x00100eb0
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 464.0, ft0  = 0.001
       0     5841        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 34, taken, goto 0x800006b0
       0     5843        M                                           #; (f:fpu) ft3  <-- 0.464
       0     5844        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.464 ~~> Doub[0x00100e80]
       0     5845        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 464.0, ft1  = 1.0
       0     5848        M 0x800006bc addi    a0, a0, -1             #; a0  = 34, (wrb) a0  <-- 33
                         M                                           #; (f:fpu) ft2  <-- 465.0
       0     5849        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100eb0, (wrb) a2  <-- 0x00100eb8
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 465.0, ft0  = 0.001
       0     5850        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 33, taken, goto 0x800006b0
       0     5852        M                                           #; (f:fpu) ft3  <-- 0.465
       0     5853        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.465 ~~> Doub[0x00100e88]
       0     5854        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 465.0, ft1  = 1.0
       0     5857        M 0x800006bc addi    a0, a0, -1             #; a0  = 33, (wrb) a0  <-- 32
                         M                                           #; (f:fpu) ft2  <-- 466.0
       0     5858        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100eb8, (wrb) a2  <-- 0x00100ec0
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 466.0, ft0  = 0.001
       0     5859        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 32, taken, goto 0x800006b0
       0     5861        M                                           #; (f:fpu) ft3  <-- 0.466
       0     5862        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.466 ~~> Doub[0x00100e90]
       0     5863        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 466.0, ft1  = 1.0
       0     5866        M 0x800006bc addi    a0, a0, -1             #; a0  = 32, (wrb) a0  <-- 31
                         M                                           #; (f:fpu) ft2  <-- 467.0
       0     5867        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100ec0, (wrb) a2  <-- 0x00100ec8
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 467.0, ft0  = 0.001
       0     5868        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 31, taken, goto 0x800006b0
       0     5870        M                                           #; (f:fpu) ft3  <-- 0.467
       0     5871        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.467 ~~> Doub[0x00100e98]
       0     5872        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 467.0, ft1  = 1.0
       0     5875        M 0x800006bc addi    a0, a0, -1             #; a0  = 31, (wrb) a0  <-- 30
                         M                                           #; (f:fpu) ft2  <-- 468.0
       0     5876        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100ec8, (wrb) a2  <-- 0x00100ed0
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 468.0, ft0  = 0.001
       0     5877        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 30, taken, goto 0x800006b0
       0     5879        M                                           #; (f:fpu) ft3  <-- 0.468
       0     5880        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.468 ~~> Doub[0x00100ea0]
       0     5881        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 468.0, ft1  = 1.0
       0     5884        M 0x800006bc addi    a0, a0, -1             #; a0  = 30, (wrb) a0  <-- 29
                         M                                           #; (f:fpu) ft2  <-- 469.0
       0     5885        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100ed0, (wrb) a2  <-- 0x00100ed8
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 469.0, ft0  = 0.001
       0     5886        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 29, taken, goto 0x800006b0
       0     5888        M                                           #; (f:fpu) ft3  <-- 0.4690000
       0     5889        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.4690000 ~~> Doub[0x00100ea8]
       0     5890        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 469.0, ft1  = 1.0
       0     5893        M 0x800006bc addi    a0, a0, -1             #; a0  = 29, (wrb) a0  <-- 28
                         M                                           #; (f:fpu) ft2  <-- 470.0
       0     5894        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100ed8, (wrb) a2  <-- 0x00100ee0
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 470.0, ft0  = 0.001
       0     5895        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 28, taken, goto 0x800006b0
       0     5897        M                                           #; (f:fpu) ft3  <-- 0.4700000
       0     5898        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.4700000 ~~> Doub[0x00100eb0]
       0     5899        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 470.0, ft1  = 1.0
       0     5902        M 0x800006bc addi    a0, a0, -1             #; a0  = 28, (wrb) a0  <-- 27
                         M                                           #; (f:fpu) ft2  <-- 471.0
       0     5903        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100ee0, (wrb) a2  <-- 0x00100ee8
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 471.0, ft0  = 0.001
       0     5904        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 27, taken, goto 0x800006b0
       0     5906        M                                           #; (f:fpu) ft3  <-- 0.4710000
       0     5907        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.4710000 ~~> Doub[0x00100eb8]
       0     5908        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 471.0, ft1  = 1.0
       0     5911        M 0x800006bc addi    a0, a0, -1             #; a0  = 27, (wrb) a0  <-- 26
                         M                                           #; (f:fpu) ft2  <-- 472.0
       0     5912        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100ee8, (wrb) a2  <-- 0x00100ef0
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 472.0, ft0  = 0.001
       0     5913        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 26, taken, goto 0x800006b0
       0     5915        M                                           #; (f:fpu) ft3  <-- 0.4720000
       0     5916        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.4720000 ~~> Doub[0x00100ec0]
       0     5917        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 472.0, ft1  = 1.0
       0     5920        M 0x800006bc addi    a0, a0, -1             #; a0  = 26, (wrb) a0  <-- 25
                         M                                           #; (f:fpu) ft2  <-- 473.0
       0     5921        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100ef0, (wrb) a2  <-- 0x00100ef8
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 473.0, ft0  = 0.001
       0     5922        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 25, taken, goto 0x800006b0
       0     5924        M                                           #; (f:fpu) ft3  <-- 0.4730000
       0     5925        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.4730000 ~~> Doub[0x00100ec8]
       0     5926        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 473.0, ft1  = 1.0
       0     5929        M 0x800006bc addi    a0, a0, -1             #; a0  = 25, (wrb) a0  <-- 24
                         M                                           #; (f:fpu) ft2  <-- 474.0
       0     5930        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100ef8, (wrb) a2  <-- 0x00100f00
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 474.0, ft0  = 0.001
       0     5931        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 24, taken, goto 0x800006b0
       0     5933        M                                           #; (f:fpu) ft3  <-- 0.4740000
       0     5934        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.4740000 ~~> Doub[0x00100ed0]
       0     5935        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 474.0, ft1  = 1.0
       0     5938        M 0x800006bc addi    a0, a0, -1             #; a0  = 24, (wrb) a0  <-- 23
                         M                                           #; (f:fpu) ft2  <-- 475.0
       0     5939        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100f00, (wrb) a2  <-- 0x00100f08
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 475.0, ft0  = 0.001
       0     5940        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 23, taken, goto 0x800006b0
       0     5942        M                                           #; (f:fpu) ft3  <-- 0.4750000
       0     5943        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.4750000 ~~> Doub[0x00100ed8]
       0     5944        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 475.0, ft1  = 1.0
       0     5947        M 0x800006bc addi    a0, a0, -1             #; a0  = 23, (wrb) a0  <-- 22
                         M                                           #; (f:fpu) ft2  <-- 476.0
       0     5948        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100f08, (wrb) a2  <-- 0x00100f10
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 476.0, ft0  = 0.001
       0     5949        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 22, taken, goto 0x800006b0
       0     5951        M                                           #; (f:fpu) ft3  <-- 0.4760000
       0     5952        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.4760000 ~~> Doub[0x00100ee0]
       0     5953        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 476.0, ft1  = 1.0
       0     5956        M 0x800006bc addi    a0, a0, -1             #; a0  = 22, (wrb) a0  <-- 21
                         M                                           #; (f:fpu) ft2  <-- 477.0
       0     5957        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100f10, (wrb) a2  <-- 0x00100f18
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 477.0, ft0  = 0.001
       0     5958        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 21, taken, goto 0x800006b0
       0     5960        M                                           #; (f:fpu) ft3  <-- 0.4770000
       0     5961        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.4770000 ~~> Doub[0x00100ee8]
       0     5962        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 477.0, ft1  = 1.0
       0     5965        M 0x800006bc addi    a0, a0, -1             #; a0  = 21, (wrb) a0  <-- 20
                         M                                           #; (f:fpu) ft2  <-- 478.0
       0     5966        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100f18, (wrb) a2  <-- 0x00100f20
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 478.0, ft0  = 0.001
       0     5967        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 20, taken, goto 0x800006b0
       0     5969        M                                           #; (f:fpu) ft3  <-- 0.4780000
       0     5970        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.4780000 ~~> Doub[0x00100ef0]
       0     5971        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 478.0, ft1  = 1.0
       0     5974        M 0x800006bc addi    a0, a0, -1             #; a0  = 20, (wrb) a0  <-- 19
                         M                                           #; (f:fpu) ft2  <-- 479.0
       0     5975        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100f20, (wrb) a2  <-- 0x00100f28
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 479.0, ft0  = 0.001
       0     5976        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 19, taken, goto 0x800006b0
       0     5978        M                                           #; (f:fpu) ft3  <-- 0.4790000
       0     5979        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.4790000 ~~> Doub[0x00100ef8]
       0     5980        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 479.0, ft1  = 1.0
       0     5983        M 0x800006bc addi    a0, a0, -1             #; a0  = 19, (wrb) a0  <-- 18
                         M                                           #; (f:fpu) ft2  <-- 480.0
       0     5984        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100f28, (wrb) a2  <-- 0x00100f30
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 480.0, ft0  = 0.001
       0     5985        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 18, taken, goto 0x800006b0
       0     5987        M                                           #; (f:fpu) ft3  <-- 0.48
       0     5988        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.48 ~~> Doub[0x00100f00]
       0     5989        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 480.0, ft1  = 1.0
       0     5992        M 0x800006bc addi    a0, a0, -1             #; a0  = 18, (wrb) a0  <-- 17
                         M                                           #; (f:fpu) ft2  <-- 481.0
       0     5993        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100f30, (wrb) a2  <-- 0x00100f38
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 481.0, ft0  = 0.001
       0     5994        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 17, taken, goto 0x800006b0
       0     5996        M                                           #; (f:fpu) ft3  <-- 0.481
       0     5997        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.481 ~~> Doub[0x00100f08]
       0     5998        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 481.0, ft1  = 1.0
       0     6001        M 0x800006bc addi    a0, a0, -1             #; a0  = 17, (wrb) a0  <-- 16
                         M                                           #; (f:fpu) ft2  <-- 482.0
       0     6002        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100f38, (wrb) a2  <-- 0x00100f40
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 482.0, ft0  = 0.001
       0     6003        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 16, taken, goto 0x800006b0
       0     6005        M                                           #; (f:fpu) ft3  <-- 0.482
       0     6006        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.482 ~~> Doub[0x00100f10]
       0     6007        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 482.0, ft1  = 1.0
       0     6010        M 0x800006bc addi    a0, a0, -1             #; a0  = 16, (wrb) a0  <-- 15
                         M                                           #; (f:fpu) ft2  <-- 483.0
       0     6011        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100f40, (wrb) a2  <-- 0x00100f48
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 483.0, ft0  = 0.001
       0     6012        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 15, taken, goto 0x800006b0
       0     6014        M                                           #; (f:fpu) ft3  <-- 0.483
       0     6015        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.483 ~~> Doub[0x00100f18]
       0     6016        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 483.0, ft1  = 1.0
       0     6019        M 0x800006bc addi    a0, a0, -1             #; a0  = 15, (wrb) a0  <-- 14
                         M                                           #; (f:fpu) ft2  <-- 484.0
       0     6020        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100f48, (wrb) a2  <-- 0x00100f50
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 484.0, ft0  = 0.001
       0     6021        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 14, taken, goto 0x800006b0
       0     6023        M                                           #; (f:fpu) ft3  <-- 0.484
       0     6024        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.484 ~~> Doub[0x00100f20]
       0     6025        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 484.0, ft1  = 1.0
       0     6028        M 0x800006bc addi    a0, a0, -1             #; a0  = 14, (wrb) a0  <-- 13
                         M                                           #; (f:fpu) ft2  <-- 485.0
       0     6029        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100f50, (wrb) a2  <-- 0x00100f58
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 485.0, ft0  = 0.001
       0     6030        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 13, taken, goto 0x800006b0
       0     6032        M                                           #; (f:fpu) ft3  <-- 0.485
       0     6033        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.485 ~~> Doub[0x00100f28]
       0     6034        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 485.0, ft1  = 1.0
       0     6037        M 0x800006bc addi    a0, a0, -1             #; a0  = 13, (wrb) a0  <-- 12
                         M                                           #; (f:fpu) ft2  <-- 486.0
       0     6038        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100f58, (wrb) a2  <-- 0x00100f60
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 486.0, ft0  = 0.001
       0     6039        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 12, taken, goto 0x800006b0
       0     6041        M                                           #; (f:fpu) ft3  <-- 0.486
       0     6042        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.486 ~~> Doub[0x00100f30]
       0     6043        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 486.0, ft1  = 1.0
       0     6046        M 0x800006bc addi    a0, a0, -1             #; a0  = 12, (wrb) a0  <-- 11
                         M                                           #; (f:fpu) ft2  <-- 487.0
       0     6047        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100f60, (wrb) a2  <-- 0x00100f68
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 487.0, ft0  = 0.001
       0     6048        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 11, taken, goto 0x800006b0
       0     6050        M                                           #; (f:fpu) ft3  <-- 0.487
       0     6051        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.487 ~~> Doub[0x00100f38]
       0     6052        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 487.0, ft1  = 1.0
       0     6055        M 0x800006bc addi    a0, a0, -1             #; a0  = 11, (wrb) a0  <-- 10
                         M                                           #; (f:fpu) ft2  <-- 488.0
       0     6056        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100f68, (wrb) a2  <-- 0x00100f70
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 488.0, ft0  = 0.001
       0     6057        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 10, taken, goto 0x800006b0
       0     6059        M                                           #; (f:fpu) ft3  <-- 0.488
       0     6060        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.488 ~~> Doub[0x00100f40]
       0     6061        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 488.0, ft1  = 1.0
       0     6064        M 0x800006bc addi    a0, a0, -1             #; a0  = 10, (wrb) a0  <-- 9
                         M                                           #; (f:fpu) ft2  <-- 489.0
       0     6065        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100f70, (wrb) a2  <-- 0x00100f78
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 489.0, ft0  = 0.001
       0     6066        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 9, taken, goto 0x800006b0
       0     6068        M                                           #; (f:fpu) ft3  <-- 0.489
       0     6069        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.489 ~~> Doub[0x00100f48]
       0     6070        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 489.0, ft1  = 1.0
       0     6073        M 0x800006bc addi    a0, a0, -1             #; a0  = 9, (wrb) a0  <-- 8
                         M                                           #; (f:fpu) ft2  <-- 490.0
       0     6074        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100f78, (wrb) a2  <-- 0x00100f80
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 490.0, ft0  = 0.001
       0     6075        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 8, taken, goto 0x800006b0
       0     6077        M                                           #; (f:fpu) ft3  <-- 0.49
       0     6078        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.49 ~~> Doub[0x00100f50]
       0     6079        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 490.0, ft1  = 1.0
       0     6082        M 0x800006bc addi    a0, a0, -1             #; a0  = 8, (wrb) a0  <-- 7
                         M                                           #; (f:fpu) ft2  <-- 491.0
       0     6083        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100f80, (wrb) a2  <-- 0x00100f88
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 491.0, ft0  = 0.001
       0     6084        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 7, taken, goto 0x800006b0
       0     6086        M                                           #; (f:fpu) ft3  <-- 0.491
       0     6087        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.491 ~~> Doub[0x00100f58]
       0     6088        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 491.0, ft1  = 1.0
       0     6091        M 0x800006bc addi    a0, a0, -1             #; a0  = 7, (wrb) a0  <-- 6
                         M                                           #; (f:fpu) ft2  <-- 492.0
       0     6092        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100f88, (wrb) a2  <-- 0x00100f90
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 492.0, ft0  = 0.001
       0     6093        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 6, taken, goto 0x800006b0
       0     6095        M                                           #; (f:fpu) ft3  <-- 0.492
       0     6096        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.492 ~~> Doub[0x00100f60]
       0     6097        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 492.0, ft1  = 1.0
       0     6100        M 0x800006bc addi    a0, a0, -1             #; a0  = 6, (wrb) a0  <-- 5
                         M                                           #; (f:fpu) ft2  <-- 493.0
       0     6101        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100f90, (wrb) a2  <-- 0x00100f98
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 493.0, ft0  = 0.001
       0     6102        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 5, taken, goto 0x800006b0
       0     6104        M                                           #; (f:fpu) ft3  <-- 0.493
       0     6105        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.493 ~~> Doub[0x00100f68]
       0     6106        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 493.0, ft1  = 1.0
       0     6109        M 0x800006bc addi    a0, a0, -1             #; a0  = 5, (wrb) a0  <-- 4
                         M                                           #; (f:fpu) ft2  <-- 494.0
       0     6110        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100f98, (wrb) a2  <-- 0x00100fa0
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 494.0, ft0  = 0.001
       0     6111        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 4, taken, goto 0x800006b0
       0     6113        M                                           #; (f:fpu) ft3  <-- 0.494
       0     6114        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.494 ~~> Doub[0x00100f70]
       0     6115        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 494.0, ft1  = 1.0
       0     6118        M 0x800006bc addi    a0, a0, -1             #; a0  = 4, (wrb) a0  <-- 3
                         M                                           #; (f:fpu) ft2  <-- 495.0
       0     6119        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100fa0, (wrb) a2  <-- 0x00100fa8
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 495.0, ft0  = 0.001
       0     6120        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 3, taken, goto 0x800006b0
       0     6122        M                                           #; (f:fpu) ft3  <-- 0.495
       0     6123        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.495 ~~> Doub[0x00100f78]
       0     6124        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 495.0, ft1  = 1.0
       0     6127        M 0x800006bc addi    a0, a0, -1             #; a0  = 3, (wrb) a0  <-- 2
                         M                                           #; (f:fpu) ft2  <-- 496.0
       0     6128        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100fa8, (wrb) a2  <-- 0x00100fb0
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 496.0, ft0  = 0.001
       0     6129        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 2, taken, goto 0x800006b0
       0     6131        M                                           #; (f:fpu) ft3  <-- 0.496
       0     6132        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.496 ~~> Doub[0x00100f80]
       0     6133        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 496.0, ft1  = 1.0
       0     6136        M 0x800006bc addi    a0, a0, -1             #; a0  = 2, (wrb) a0  <-- 1
                         M                                           #; (f:fpu) ft2  <-- 497.0
       0     6137        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100fb0, (wrb) a2  <-- 0x00100fb8
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 497.0, ft0  = 0.001
       0     6138        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 1, taken, goto 0x800006b0
       0     6140        M                                           #; (f:fpu) ft3  <-- 0.497
       0     6141        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.497 ~~> Doub[0x00100f88]
       0     6142        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 497.0, ft1  = 1.0
       0     6145        M 0x800006bc addi    a0, a0, -1             #; a0  = 1, (wrb) a0  <-- 0
                         M                                           #; (f:fpu) ft2  <-- 498.0
       0     6146        M 0x800006c0 addi    a2, a2, 8              #; a2  = 0x00100fb8, (wrb) a2  <-- 0x00100fc0
                         M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 498.0, ft0  = 0.001
       0     6147        M 0x800006c4 bnez    a0, pc - 20            #; a0  = 0, not taken
       0     6148        M 0x800006c8 li      a0, 0                  #; (wrb) a0  <-- 0
       0     6149        M 0x800006cc addi    a1, a1, 168            #; a1  = 0x00100000, (wrb) a1  <-- 0x001000a8
                         M                                           #; (f:fpu) ft3  <-- 0.498
       0     6150        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.498 ~~> Doub[0x00100f90]
       0     6151        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 498.0, ft1  = 1.0
       0     6154        M                                           #; (f:fpu) ft2  <-- 499.0
       0     6155        M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 499.0, ft0  = 0.001
       0     6158        M                                           #; (f:fpu) ft3  <-- 0.499
       0     6159        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.499 ~~> Doub[0x00100f98]
       0     6160        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 499.0, ft1  = 1.0
       0     6161        M 0x800006d4 li      a2, 1344               #; (wrb) a2  <-- 1344
       0     6162        M 0x800006d8 li      a3, 3                  #; (wrb) a3  <-- 3
       0     6163        M 0x800006dc li      a4, 0                  #; (wrb) a4  <-- 0
                         M                                           #; (f:fpu) ft2  <-- 500.0
       0     6164        M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 500.0, ft0  = 0.001
       0     6167        M                                           #; (f:fpu) ft3  <-- 0.5
       0     6168        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.5 ~~> Doub[0x00100fa0]
       0     6169        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 500.0, ft1  = 1.0
       0     6172        M 0x800006e0 add     a5, a1, a4             #; a1  = 0x001000a8, a4  = 0, (wrb) a5  <-- 0x001000a8
                         M                                           #; (f:fpu) ft2  <-- 501.0
       0     6173        M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 501.0, ft0  = 0.001
       0     6176        M                                           #; (f:fpu) ft3  <-- 0.501
       0     6177        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.501 ~~> Doub[0x00100fa8]
       0     6178        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 501.0, ft1  = 1.0
       0     6181        M                                           #; (f:fpu) ft2  <-- 502.0
       0     6182        M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 502.0, ft0  = 0.001
       0     6185        M                                           #; (f:fpu) ft3  <-- 0.502
       0     6186        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.502 ~~> Doub[0x00100fb0]
       0     6187        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 502.0, ft1  = 1.0
       0     6190        M                                           #; (f:fpu) ft2  <-- 503.0
       0     6191        M 0x800006b0 fmul.d  ft3, ft2, ft0          #; ft2  = 503.0, ft0  = 0.001
       0     6194        M                                           #; (f:fpu) ft3  <-- 0.503
       0     6195        M 0x800006b4 fsd     ft3, 0(a2)             #; 0.503 ~~> Doub[0x00100fb8]
       0     6196        M 0x800006b8 fadd.d  ft2, ft2, ft1          #; ft2  = 503.0, ft1  = 1.0
       0     6197        M 0x800006d0 fcvt.d.w ft0, zero             #; ac1  = 0
       0     6198        M                                           #; (f:fpu) ft0  <-- 0.0
       0     6199        M 0x800006e4 fld     ft1, 3928(a5)          #; ft1  <~~ Doub[0x00100000], (f:fpu) ft2  <-- 504.0
       0     6200        M 0x800006e8 fld     ft2, 3936(a5)          #; ft2  <~~ Doub[0x00100008], (f:lsu) ft1  <-- 0.0
       0     6201        M 0x800006ec fld     ft3, 3944(a5)          #; ft3  <~~ Doub[0x00100010], (f:lsu) ft2  <-- 0.001
       0     6202        M 0x800006f0 fld     ft4, 3952(a5)          #; ft4  <~~ Doub[0x00100018], (f:lsu) ft3  <-- 0.002
       0     6203        M 0x800006f4 fld     ft5, 3960(a5)          #; ft5  <~~ Doub[0x00100020], (f:lsu) ft4  <-- 0.003
       0     6204        M 0x800006f8 fadd.d  ft1, ft2, ft1          #; ft2  = 0.001, ft1  = 0.0, (f:lsu) ft5  <-- 0.004
       0     6205        M 0x800006fc fld     ft2, 3968(a5)          #; ft2  <~~ Doub[0x00100028]
       0     6206        M                                           #; (f:lsu) ft2  <-- 0.005
       0     6207        M                                           #; (f:fpu) ft1  <-- 0.001
       0     6214        M 0x80000700 fadd.d  ft1, ft1, ft3          #; ft1  = 0.001, ft3  = 0.002
       0     6215        M 0x80000704 fld     ft3, 3976(a5)          #; ft3  <~~ Doub[0x00100030]
       0     6216        M                                           #; (f:lsu) ft3  <-- 0.006
       0     6217        M                                           #; (f:fpu) ft1  <-- 0.003
       0     6218        M 0x80000708 fadd.d  ft1, ft1, ft4          #; ft1  = 0.003, ft4  = 0.003
       0     6219        M 0x8000070c fld     ft4, 3984(a5)          #; ft4  <~~ Doub[0x00100038]
       0     6220        M                                           #; (f:lsu) ft4  <-- 0.007
       0     6221        M                                           #; (f:fpu) ft1  <-- 0.006
       0     6226        M 0x80000710 fadd.d  ft1, ft1, ft5          #; ft1  = 0.006, ft5  = 0.004
       0     6227        M 0x80000714 fld     ft5, 3992(a5)          #; ft5  <~~ Doub[0x00100040]
       0     6228        M                                           #; (f:lsu) ft5  <-- 0.008
       0     6229        M                                           #; (f:fpu) ft1  <-- 0.01
       0     6230        M 0x80000718 fadd.d  ft1, ft1, ft2          #; ft1  = 0.01, ft2  = 0.005
       0     6231        M 0x8000071c fld     ft2, 4000(a5)          #; ft2  <~~ Doub[0x00100048]
       0     6232        M                                           #; (f:lsu) ft2  <-- 0.0090000
       0     6233        M                                           #; (f:fpu) ft1  <-- 0.015
       0     6238        M 0x80000720 fadd.d  ft1, ft1, ft3          #; ft1  = 0.015, ft3  = 0.006
       0     6239        M 0x80000724 fld     ft3, 4008(a5)          #; ft3  <~~ Doub[0x00100050]
       0     6240        M                                           #; (f:lsu) ft3  <-- 0.01
       0     6241        M                                           #; (f:fpu) ft1  <-- 0.0210000
       0     6242        M 0x80000728 fadd.d  ft1, ft1, ft4          #; ft1  = 0.0210000, ft4  = 0.007
       0     6243        M 0x8000072c fld     ft4, 4016(a5)          #; ft4  <~~ Doub[0x00100058]
       0     6244        M                                           #; (f:lsu) ft4  <-- 0.011
       0     6245        M                                           #; (f:fpu) ft1  <-- 0.0280000
       0     6250        M 0x80000730 fadd.d  ft1, ft1, ft5          #; ft1  = 0.0280000, ft5  = 0.008
       0     6251        M 0x80000734 fld     ft5, 4024(a5)          #; ft5  <~~ Doub[0x00100060]
       0     6252        M                                           #; (f:lsu) ft5  <-- 0.012
       0     6253        M                                           #; (f:fpu) ft1  <-- 0.036
       0     6254        M 0x80000738 fadd.d  ft1, ft1, ft2          #; ft1  = 0.036, ft2  = 0.0090000
       0     6255        M 0x8000073c fld     ft2, 4032(a5)          #; ft2  <~~ Doub[0x00100068]
       0     6256        M                                           #; (f:lsu) ft2  <-- 0.0130000
       0     6257        M                                           #; (f:fpu) ft1  <-- 0.045
       0     6262        M 0x80000740 fadd.d  ft1, ft1, ft3          #; ft1  = 0.045, ft3  = 0.01
       0     6263        M 0x80000744 fld     ft3, 4040(a5)          #; ft3  <~~ Doub[0x00100070]
       0     6264        M                                           #; (f:lsu) ft3  <-- 0.014
       0     6265        M                                           #; (f:fpu) ft1  <-- 0.055
       0     6266        M 0x80000748 fadd.d  ft1, ft1, ft4          #; ft1  = 0.055, ft4  = 0.011
       0     6267        M 0x8000074c fld     ft4, 4048(a5)          #; ft4  <~~ Doub[0x00100078]
       0     6268        M                                           #; (f:lsu) ft4  <-- 0.015
       0     6269        M                                           #; (f:fpu) ft1  <-- 0.066
       0     6274        M 0x80000750 fadd.d  ft1, ft1, ft5          #; ft1  = 0.066, ft5  = 0.012
       0     6275        M 0x80000754 fld     ft5, 4056(a5)          #; ft5  <~~ Doub[0x00100080]
       0     6276        M                                           #; (f:lsu) ft5  <-- 0.016
       0     6277        M                                           #; (f:fpu) ft1  <-- 0.078
       0     6278        M 0x80000758 fadd.d  ft1, ft1, ft2          #; ft1  = 0.078, ft2  = 0.0130000
       0     6279        M 0x8000075c fld     ft2, 4064(a5)          #; ft2  <~~ Doub[0x00100088]
       0     6280        M                                           #; (f:lsu) ft2  <-- 0.017
       0     6281        M                                           #; (f:fpu) ft1  <-- 0.091
       0     6286        M 0x80000760 fadd.d  ft1, ft1, ft3          #; ft1  = 0.091, ft3  = 0.014
       0     6287        M 0x80000764 fld     ft3, 4072(a5)          #; ft3  <~~ Doub[0x00100090]
       0     6288        M                                           #; (f:lsu) ft3  <-- 0.0180000
       0     6289        M                                           #; (f:fpu) ft1  <-- 0.105
       0     6290        M 0x80000768 fadd.d  ft1, ft1, ft4          #; ft1  = 0.105, ft4  = 0.015
       0     6291        M 0x8000076c fld     ft4, 4080(a5)          #; ft4  <~~ Doub[0x00100098]
       0     6292        M                                           #; (f:lsu) ft4  <-- 0.019
       0     6293        M                                           #; (f:fpu) ft1  <-- 0.12
       0     6298        M 0x80000770 fadd.d  ft1, ft1, ft5          #; ft1  = 0.12, ft5  = 0.016
       0     6299        M 0x80000774 fld     ft5, 4088(a5)          #; ft5  <~~ Doub[0x001000a0]
       0     6300        M                                           #; (f:lsu) ft5  <-- 0.02
       0     6301        M                                           #; (f:fpu) ft1  <-- 0.136
       0     6302        M 0x80000778 fadd.d  ft1, ft1, ft2          #; ft1  = 0.136, ft2  = 0.017
       0     6303        M 0x8000077c fld     ft2, 0(a5)             #; ft2  <~~ Doub[0x001000a8]
       0     6304        M                                           #; (f:lsu) ft2  <-- 0.021
       0     6305        M                                           #; (f:fpu) ft1  <-- 0.1530000
       0     6310        M 0x80000780 fadd.d  ft1, ft1, ft3          #; ft1  = 0.1530000, ft3  = 0.0180000
       0     6311        M 0x80000784 fld     ft3, 8(a5)             #; ft3  <~~ Doub[0x001000b0]
       0     6312        M                                           #; (f:lsu) ft3  <-- 0.022
       0     6313        M                                           #; (f:fpu) ft1  <-- 0.1710000
       0     6314        M 0x80000788 fadd.d  ft1, ft1, ft4          #; ft1  = 0.1710000, ft4  = 0.019
       0     6315        M 0x8000078c fld     ft4, 16(a5)            #; ft4  <~~ Doub[0x001000b8]
       0     6316        M                                           #; (f:lsu) ft4  <-- 0.023
       0     6317        M                                           #; (f:fpu) ft1  <-- 0.1900000
       0     6322        M 0x80000790 fadd.d  ft1, ft1, ft5          #; ft1  = 0.1900000, ft5  = 0.02
       0     6323        M 0x80000794 fld     ft5, 24(a5)            #; ft5  <~~ Doub[0x001000c0]
       0     6324        M                                           #; (f:lsu) ft5  <-- 0.024
       0     6325        M                                           #; (f:fpu) ft1  <-- 0.2100000
       0     6326        M 0x80000798 fadd.d  ft1, ft1, ft2          #; ft1  = 0.2100000, ft2  = 0.021
       0     6327        M 0x8000079c fld     ft2, 32(a5)            #; ft2  <~~ Doub[0x001000c8]
       0     6328        M                                           #; (f:lsu) ft2  <-- 0.025
       0     6329        M                                           #; (f:fpu) ft1  <-- 0.231
       0     6334        M 0x800007a0 fadd.d  ft1, ft1, ft3          #; ft1  = 0.231, ft3  = 0.022
       0     6335        M 0x800007a4 fld     ft3, 40(a5)            #; ft3  <~~ Doub[0x001000d0]
       0     6336        M                                           #; (f:lsu) ft3  <-- 0.0260000
       0     6337        M                                           #; (f:fpu) ft1  <-- 0.253
       0     6338        M 0x800007a8 fadd.d  ft1, ft1, ft4          #; ft1  = 0.253, ft4  = 0.023
       0     6339        M 0x800007ac fld     ft4, 48(a5)            #; ft4  <~~ Doub[0x001000d8]
       0     6340        M                                           #; (f:lsu) ft4  <-- 0.027
       0     6341        M                                           #; (f:fpu) ft1  <-- 0.276
       0     6346        M 0x800007b0 fadd.d  ft1, ft1, ft5          #; ft1  = 0.276, ft5  = 0.024
       0     6347        M 0x800007b4 fld     ft5, 56(a5)            #; ft5  <~~ Doub[0x001000e0]
       0     6348        M                                           #; (f:lsu) ft5  <-- 0.028
       0     6349        M                                           #; (f:fpu) ft1  <-- 0.3000000
       0     6350        M 0x800007b8 fadd.d  ft1, ft1, ft2          #; ft1  = 0.3000000, ft2  = 0.025
       0     6351        M 0x800007bc fld     ft2, 64(a5)            #; ft2  <~~ Doub[0x001000e8]
       0     6352        M                                           #; (f:lsu) ft2  <-- 0.029
       0     6353        M                                           #; (f:fpu) ft1  <-- 0.3250000
       0     6358        M 0x800007c0 fadd.d  ft1, ft1, ft3          #; ft1  = 0.3250000, ft3  = 0.0260000
       0     6359        M 0x800007c4 fld     ft3, 72(a5)            #; ft3  <~~ Doub[0x001000f0]
       0     6360        M                                           #; (f:lsu) ft3  <-- 0.03
       0     6361        M                                           #; (f:fpu) ft1  <-- 0.3510000
       0     6362        M 0x800007c8 fadd.d  ft1, ft1, ft4          #; ft1  = 0.3510000, ft4  = 0.027
       0     6363        M 0x800007cc fld     ft4, 80(a5)            #; ft4  <~~ Doub[0x001000f8]
       0     6364        M                                           #; (f:lsu) ft4  <-- 0.031
       0     6365        M                                           #; (f:fpu) ft1  <-- 0.3780000
       0     6370        M 0x800007d0 fadd.d  ft1, ft1, ft5          #; ft1  = 0.3780000, ft5  = 0.028
       0     6371        M 0x800007d4 fld     ft5, 88(a5)            #; ft5  <~~ Doub[0x00100100]
       0     6372        M                                           #; (f:lsu) ft5  <-- 0.032
       0     6373        M                                           #; (f:fpu) ft1  <-- 0.4060000
       0     6374        M 0x800007d8 fadd.d  ft1, ft1, ft2          #; ft1  = 0.4060000, ft2  = 0.029
       0     6375        M 0x800007dc fld     ft2, 96(a5)            #; ft2  <~~ Doub[0x00100108]
       0     6376        M                                           #; (f:lsu) ft2  <-- 0.033
       0     6377        M                                           #; (f:fpu) ft1  <-- 0.4350000
       0     6382        M 0x800007e0 fadd.d  ft1, ft1, ft3          #; ft1  = 0.4350000, ft3  = 0.03
       0     6383        M 0x800007e4 fld     ft3, 104(a5)           #; ft3  <~~ Doub[0x00100110]
       0     6384        M                                           #; (f:lsu) ft3  <-- 0.034
       0     6385        M                                           #; (f:fpu) ft1  <-- 0.4650000
       0     6386        M 0x800007e8 fadd.d  ft1, ft1, ft4          #; ft1  = 0.4650000, ft4  = 0.031
       0     6387        M 0x800007ec fld     ft4, 112(a5)           #; ft4  <~~ Doub[0x00100118]
       0     6388        M                                           #; (f:lsu) ft4  <-- 0.035
       0     6389        M                                           #; (f:fpu) ft1  <-- 0.4960000
       0     6394        M 0x800007f0 fadd.d  ft1, ft1, ft5          #; ft1  = 0.4960000, ft5  = 0.032
       0     6395        M 0x800007f4 fld     ft5, 120(a5)           #; ft5  <~~ Doub[0x00100120]
       0     6396        M                                           #; (f:lsu) ft5  <-- 0.0360000
       0     6397        M                                           #; (f:fpu) ft1  <-- 0.5280000
       0     6398        M 0x800007f8 fadd.d  ft1, ft1, ft2          #; ft1  = 0.5280000, ft2  = 0.033
       0     6399        M 0x800007fc fld     ft2, 128(a5)           #; ft2  <~~ Doub[0x00100128]
       0     6400        M                                           #; (f:lsu) ft2  <-- 0.037
       0     6401        M                                           #; (f:fpu) ft1  <-- 0.5610000
       0     6406        M 0x80000800 fadd.d  ft1, ft1, ft3          #; ft1  = 0.5610000, ft3  = 0.034
       0     6407        M 0x80000804 fld     ft3, 136(a5)           #; ft3  <~~ Doub[0x00100130]
       0     6408        M                                           #; (f:lsu) ft3  <-- 0.038
       0     6409        M                                           #; (f:fpu) ft1  <-- 0.5950000
       0     6410        M 0x80000808 fadd.d  ft1, ft1, ft4          #; ft1  = 0.5950000, ft4  = 0.035
       0     6411        M 0x8000080c fld     ft4, 144(a5)           #; ft4  <~~ Doub[0x00100138]
       0     6412        M                                           #; (f:lsu) ft4  <-- 0.039
       0     6413        M                                           #; (f:fpu) ft1  <-- 0.6300000
       0     6418        M 0x80000810 fadd.d  ft1, ft1, ft5          #; ft1  = 0.6300000, ft5  = 0.0360000
       0     6419        M 0x80000814 fld     ft5, 152(a5)           #; ft5  <~~ Doub[0x00100140]
       0     6420        M                                           #; (f:lsu) ft5  <-- 0.04
       0     6421        M                                           #; (f:fpu) ft1  <-- 0.6660000
       0     6422        M 0x80000818 fadd.d  ft1, ft1, ft2          #; ft1  = 0.6660000, ft2  = 0.037
       0     6423        M 0x8000081c fld     ft2, 160(a5)           #; ft2  <~~ Doub[0x00100148]
       0     6424        M                                           #; (f:lsu) ft2  <-- 0.041
       0     6425        M                                           #; (f:fpu) ft1  <-- 0.7030000
       0     6430        M 0x80000820 fadd.d  ft1, ft1, ft3          #; ft1  = 0.7030000, ft3  = 0.038
       0     6433        M                                           #; (f:fpu) ft1  <-- 0.7410000
       0     6434        M 0x80000824 fadd.d  ft1, ft1, ft4          #; ft1  = 0.7410000, ft4  = 0.039
       0     6437        M                                           #; (f:fpu) ft1  <-- 0.7800000
       0     6438        M 0x80000828 fadd.d  ft1, ft1, ft5          #; ft1  = 0.7800000, ft5  = 0.04
       0     6441        M                                           #; (f:fpu) ft1  <-- 0.8200000
       0     6442        M 0x8000082c fadd.d  ft1, ft1, ft2          #; ft1  = 0.8200000, ft2  = 0.041
       0     6445        M                                           #; (f:fpu) ft1  <-- 0.8610000
       0     6446        M 0x80000830 fadd.d  ft0, ft1, ft0          #; ft1  = 0.8610000, ft0  = 0.0
       0     6449        M                                           #; (f:fpu) ft0  <-- 0.8610000
       0     6450        M 0x80000834 fadd.d  ft0, ft1, ft0          #; ft1  = 0.8610000, ft0  = 0.8610000
       0     6452        M 0x80000840 addi    a4, a4, 336            #; a4  = 0, (wrb) a4  <-- 336
       0     6453        M                                           #; (f:fpu) ft0  <-- 1.7220000
       0     6454        M 0x80000848 bne     a4, a2, pc - 360       #; a4  = 336, a2  = 1344, taken, goto 0x800006e0
                         M 0x80000838 fadd.d  ft0, ft1, ft0          #; ft1  = 0.8610000, ft0  = 1.7220000
       0     6455        M 0x800006e0 add     a5, a1, a4             #; a1  = 0x001000a8, a4  = 336, (wrb) a5  <-- 0x001001f8
       0     6457        M                                           #; (f:fpu) ft0  <-- 2.5830000
       0     6458        M 0x8000083c fadd.d  ft0, ft1, ft0          #; ft1  = 0.8610000, ft0  = 2.5830000
       0     6461        M                                           #; (f:fpu) ft0  <-- 3.4440000
       0     6462        M 0x80000844 fadd.d  ft0, ft1, ft0          #; ft1  = 0.8610000, ft0  = 3.4440000
       0     6463        M 0x800006e4 fld     ft1, 3928(a5)          #; ft1  <~~ Doub[0x00100150]
       0     6464        M 0x800006e8 fld     ft2, 3936(a5)          #; ft2  <~~ Doub[0x00100158], (f:lsu) ft1  <-- 0.042
       0     6465        M 0x800006ec fld     ft3, 3944(a5)          #; ft3  <~~ Doub[0x00100160], (f:fpu) ft0  <-- 4.3050000
       0     6466        M 0x800006f0 fld     ft4, 3952(a5)          #; ft4  <~~ Doub[0x00100168], (f:lsu) ft2  <-- 0.0430000
       0     6467        M 0x800006f4 fld     ft5, 3960(a5)          #; ft5  <~~ Doub[0x00100170], (f:lsu) ft3  <-- 0.044
       0     6468        M 0x800006f8 fadd.d  ft1, ft2, ft1          #; ft2  = 0.0430000, ft1  = 0.042, (f:lsu) ft4  <-- 0.045
       0     6469        M 0x800006fc fld     ft2, 3968(a5)          #; ft2  <~~ Doub[0x00100178], (f:lsu) ft5  <-- 0.046
       0     6470        M                                           #; (f:lsu) ft2  <-- 0.047
       0     6471        M                                           #; (f:fpu) ft1  <-- 0.085
       0     6472        M 0x80000700 fadd.d  ft1, ft1, ft3          #; ft1  = 0.085, ft3  = 0.044
       0     6473        M 0x80000704 fld     ft3, 3976(a5)          #; ft3  <~~ Doub[0x00100180]
       0     6474        M                                           #; (f:lsu) ft3  <-- 0.048
       0     6475        M                                           #; (f:fpu) ft1  <-- 0.129
       0     6476        M 0x80000708 fadd.d  ft1, ft1, ft4          #; ft1  = 0.129, ft4  = 0.045
       0     6477        M 0x8000070c fld     ft4, 3984(a5)          #; ft4  <~~ Doub[0x00100188]
       0     6478        M                                           #; (f:lsu) ft4  <-- 0.049
       0     6479        M                                           #; (f:fpu) ft1  <-- 0.174
       0     6480        M 0x80000710 fadd.d  ft1, ft1, ft5          #; ft1  = 0.174, ft5  = 0.046
       0     6481        M 0x80000714 fld     ft5, 3992(a5)          #; ft5  <~~ Doub[0x00100190]
       0     6482        M                                           #; (f:lsu) ft5  <-- 0.05
       0     6483        M                                           #; (f:fpu) ft1  <-- 0.2200000
       0     6484        M 0x80000718 fadd.d  ft1, ft1, ft2          #; ft1  = 0.2200000, ft2  = 0.047
       0     6485        M 0x8000071c fld     ft2, 4000(a5)          #; ft2  <~~ Doub[0x00100198]
       0     6486        M                                           #; (f:lsu) ft2  <-- 0.0510000
       0     6487        M                                           #; (f:fpu) ft1  <-- 0.2670000
       0     6488        M 0x80000720 fadd.d  ft1, ft1, ft3          #; ft1  = 0.2670000, ft3  = 0.048
       0     6489        M 0x80000724 fld     ft3, 4008(a5)          #; ft3  <~~ Doub[0x001001a0]
       0     6490        M                                           #; (f:lsu) ft3  <-- 0.0520000
       0     6491        M                                           #; (f:fpu) ft1  <-- 0.3150000
       0     6492        M 0x80000728 fadd.d  ft1, ft1, ft4          #; ft1  = 0.3150000, ft4  = 0.049
       0     6493        M 0x8000072c fld     ft4, 4016(a5)          #; ft4  <~~ Doub[0x001001a8]
       0     6494        M                                           #; (f:lsu) ft4  <-- 0.053
       0     6495        M                                           #; (f:fpu) ft1  <-- 0.3640000
       0     6496        M 0x80000730 fadd.d  ft1, ft1, ft5          #; ft1  = 0.3640000, ft5  = 0.05
       0     6497        M 0x80000734 fld     ft5, 4024(a5)          #; ft5  <~~ Doub[0x001001b0]
       0     6498        M                                           #; (f:lsu) ft5  <-- 0.054
       0     6499        M                                           #; (f:fpu) ft1  <-- 0.4140000
       0     6500        M 0x80000738 fadd.d  ft1, ft1, ft2          #; ft1  = 0.4140000, ft2  = 0.0510000
       0     6501        M 0x8000073c fld     ft2, 4032(a5)          #; ft2  <~~ Doub[0x001001b8]
       0     6502        M                                           #; (f:lsu) ft2  <-- 0.055
       0     6503        M                                           #; (f:fpu) ft1  <-- 0.4650000
       0     6504        M 0x80000740 fadd.d  ft1, ft1, ft3          #; ft1  = 0.4650000, ft3  = 0.0520000
       0     6505        M 0x80000744 fld     ft3, 4040(a5)          #; ft3  <~~ Doub[0x001001c0]
       0     6506        M                                           #; (f:lsu) ft3  <-- 0.056
       0     6507        M                                           #; (f:fpu) ft1  <-- 0.5170000
       0     6508        M 0x80000748 fadd.d  ft1, ft1, ft4          #; ft1  = 0.5170000, ft4  = 0.053
       0     6509        M 0x8000074c fld     ft4, 4048(a5)          #; ft4  <~~ Doub[0x001001c8]
       0     6510        M                                           #; (f:lsu) ft4  <-- 0.057
       0     6511        M                                           #; (f:fpu) ft1  <-- 0.57
       0     6512        M 0x80000750 fadd.d  ft1, ft1, ft5          #; ft1  = 0.57, ft5  = 0.054
       0     6513        M 0x80000754 fld     ft5, 4056(a5)          #; ft5  <~~ Doub[0x001001d0]
       0     6514        M                                           #; (f:lsu) ft5  <-- 0.058
       0     6515        M                                           #; (f:fpu) ft1  <-- 0.624
       0     6516        M 0x80000758 fadd.d  ft1, ft1, ft2          #; ft1  = 0.624, ft2  = 0.055
       0     6517        M 0x8000075c fld     ft2, 4064(a5)          #; ft2  <~~ Doub[0x001001d8]
       0     6518        M                                           #; (f:lsu) ft2  <-- 0.0590000
       0     6519        M                                           #; (f:fpu) ft1  <-- 0.679
       0     6520        M 0x80000760 fadd.d  ft1, ft1, ft3          #; ft1  = 0.679, ft3  = 0.056
       0     6521        M 0x80000764 fld     ft3, 4072(a5)          #; ft3  <~~ Doub[0x001001e0]
       0     6522        M                                           #; (f:lsu) ft3  <-- 0.06
       0     6523        M                                           #; (f:fpu) ft1  <-- 0.7350000
       0     6524        M 0x80000768 fadd.d  ft1, ft1, ft4          #; ft1  = 0.7350000, ft4  = 0.057
       0     6525        M 0x8000076c fld     ft4, 4080(a5)          #; ft4  <~~ Doub[0x001001e8]
       0     6526        M                                           #; (f:lsu) ft4  <-- 0.061
       0     6527        M                                           #; (f:fpu) ft1  <-- 0.7920000
       0     6528        M 0x80000770 fadd.d  ft1, ft1, ft5          #; ft1  = 0.7920000, ft5  = 0.058
       0     6529        M 0x80000774 fld     ft5, 4088(a5)          #; ft5  <~~ Doub[0x001001f0]
       0     6530        M                                           #; (f:lsu) ft5  <-- 0.062
       0     6531        M                                           #; (f:fpu) ft1  <-- 0.8500000
       0     6532        M 0x80000778 fadd.d  ft1, ft1, ft2          #; ft1  = 0.8500000, ft2  = 0.0590000
       0     6533        M 0x8000077c fld     ft2, 0(a5)             #; ft2  <~~ Doub[0x001001f8]
       0     6534        M                                           #; (f:lsu) ft2  <-- 0.063
       0     6535        M                                           #; (f:fpu) ft1  <-- 0.9090000
       0     6536        M 0x80000780 fadd.d  ft1, ft1, ft3          #; ft1  = 0.9090000, ft3  = 0.06
       0     6537        M 0x80000784 fld     ft3, 8(a5)             #; ft3  <~~ Doub[0x00100200]
       0     6538        M                                           #; (f:lsu) ft3  <-- 0.064
       0     6539        M                                           #; (f:fpu) ft1  <-- 0.9690000
       0     6540        M 0x80000788 fadd.d  ft1, ft1, ft4          #; ft1  = 0.9690000, ft4  = 0.061
       0     6541        M 0x8000078c fld     ft4, 16(a5)            #; ft4  <~~ Doub[0x00100208]
       0     6542        M                                           #; (f:lsu) ft4  <-- 0.065
       0     6543        M                                           #; (f:fpu) ft1  <-- 1.0300000
       0     6544        M 0x80000790 fadd.d  ft1, ft1, ft5          #; ft1  = 1.0300000, ft5  = 0.062
       0     6545        M 0x80000794 fld     ft5, 24(a5)            #; ft5  <~~ Doub[0x00100210]
       0     6546        M                                           #; (f:lsu) ft5  <-- 0.066
       0     6547        M                                           #; (f:fpu) ft1  <-- 1.0920000
       0     6548        M 0x80000798 fadd.d  ft1, ft1, ft2          #; ft1  = 1.0920000, ft2  = 0.063
       0     6549        M 0x8000079c fld     ft2, 32(a5)            #; ft2  <~~ Doub[0x00100218]
       0     6550        M                                           #; (f:lsu) ft2  <-- 0.067
       0     6551        M                                           #; (f:fpu) ft1  <-- 1.1550000
       0     6552        M 0x800007a0 fadd.d  ft1, ft1, ft3          #; ft1  = 1.1550000, ft3  = 0.064
       0     6553        M 0x800007a4 fld     ft3, 40(a5)            #; ft3  <~~ Doub[0x00100220]
       0     6554        M                                           #; (f:lsu) ft3  <-- 0.068
       0     6555        M                                           #; (f:fpu) ft1  <-- 1.2190000
       0     6556        M 0x800007a8 fadd.d  ft1, ft1, ft4          #; ft1  = 1.2190000, ft4  = 0.065
       0     6557        M 0x800007ac fld     ft4, 48(a5)            #; ft4  <~~ Doub[0x00100228]
       0     6558        M                                           #; (f:lsu) ft4  <-- 0.069
       0     6559        M                                           #; (f:fpu) ft1  <-- 1.2840000
       0     6560        M 0x800007b0 fadd.d  ft1, ft1, ft5          #; ft1  = 1.2840000, ft5  = 0.066
       0     6561        M 0x800007b4 fld     ft5, 56(a5)            #; ft5  <~~ Doub[0x00100230]
       0     6562        M                                           #; (f:lsu) ft5  <-- 0.07
       0     6563        M                                           #; (f:fpu) ft1  <-- 1.3500000
       0     6564        M 0x800007b8 fadd.d  ft1, ft1, ft2          #; ft1  = 1.3500000, ft2  = 0.067
       0     6565        M 0x800007bc fld     ft2, 64(a5)            #; ft2  <~~ Doub[0x00100238]
       0     6566        M                                           #; (f:lsu) ft2  <-- 0.0710000
       0     6567        M                                           #; (f:fpu) ft1  <-- 1.4170000
       0     6568        M 0x800007c0 fadd.d  ft1, ft1, ft3          #; ft1  = 1.4170000, ft3  = 0.068
       0     6569        M 0x800007c4 fld     ft3, 72(a5)            #; ft3  <~~ Doub[0x00100240]
       0     6570        M                                           #; (f:lsu) ft3  <-- 0.0720000
       0     6571        M                                           #; (f:fpu) ft1  <-- 1.4850000
       0     6572        M 0x800007c8 fadd.d  ft1, ft1, ft4          #; ft1  = 1.4850000, ft4  = 0.069
       0     6573        M 0x800007cc fld     ft4, 80(a5)            #; ft4  <~~ Doub[0x00100248]
       0     6574        M                                           #; (f:lsu) ft4  <-- 0.073
       0     6575        M                                           #; (f:fpu) ft1  <-- 1.5540000
       0     6576        M 0x800007d0 fadd.d  ft1, ft1, ft5          #; ft1  = 1.5540000, ft5  = 0.07
       0     6577        M 0x800007d4 fld     ft5, 88(a5)            #; ft5  <~~ Doub[0x00100250]
       0     6578        M                                           #; (f:lsu) ft5  <-- 0.074
       0     6579        M                                           #; (f:fpu) ft1  <-- 1.6240000
       0     6580        M 0x800007d8 fadd.d  ft1, ft1, ft2          #; ft1  = 1.6240000, ft2  = 0.0710000
       0     6581        M 0x800007dc fld     ft2, 96(a5)            #; ft2  <~~ Doub[0x00100258]
       0     6582        M                                           #; (f:lsu) ft2  <-- 0.075
       0     6583        M                                           #; (f:fpu) ft1  <-- 1.6950000
       0     6584        M 0x800007e0 fadd.d  ft1, ft1, ft3          #; ft1  = 1.6950000, ft3  = 0.0720000
       0     6585        M 0x800007e4 fld     ft3, 104(a5)           #; ft3  <~~ Doub[0x00100260]
       0     6586        M                                           #; (f:lsu) ft3  <-- 0.076
       0     6587        M                                           #; (f:fpu) ft1  <-- 1.7670000
       0     6588        M 0x800007e8 fadd.d  ft1, ft1, ft4          #; ft1  = 1.7670000, ft4  = 0.073
       0     6589        M 0x800007ec fld     ft4, 112(a5)           #; ft4  <~~ Doub[0x00100268]
       0     6590        M                                           #; (f:lsu) ft4  <-- 0.077
       0     6591        M                                           #; (f:fpu) ft1  <-- 1.8400000
       0     6592        M 0x800007f0 fadd.d  ft1, ft1, ft5          #; ft1  = 1.8400000, ft5  = 0.074
       0     6593        M 0x800007f4 fld     ft5, 120(a5)           #; ft5  <~~ Doub[0x00100270]
       0     6594        M                                           #; (f:lsu) ft5  <-- 0.078
       0     6595        M                                           #; (f:fpu) ft1  <-- 1.9140000
       0     6596        M 0x80000840 addi    a4, a4, 336            #; a4  = 336, (wrb) a4  <-- 672
                         M 0x800007f8 fadd.d  ft1, ft1, ft2          #; ft1  = 1.9140000, ft2  = 0.075
       0     6597        M 0x800007fc fld     ft2, 128(a5)           #; ft2  <~~ Doub[0x00100278]
       0     6598        M                                           #; (f:lsu) ft2  <-- 0.079
       0     6599        M 0x80000848 bne     a4, a2, pc - 360       #; a4  = 672, a2  = 1344, taken, goto 0x800006e0
                         M                                           #; (f:fpu) ft1  <-- 1.9890000
       0     6600        M 0x800006e0 add     a5, a1, a4             #; a1  = 0x001000a8, a4  = 672, (wrb) a5  <-- 0x00100348
                         M 0x80000800 fadd.d  ft1, ft1, ft3          #; ft1  = 1.9890000, ft3  = 0.076
       0     6601        M 0x80000804 fld     ft3, 136(a5)           #; ft3  <~~ Doub[0x00100280]
       0     6602        M                                           #; (f:lsu) ft3  <-- 0.08
       0     6603        M                                           #; (f:fpu) ft1  <-- 2.0650000
       0     6604        M 0x80000808 fadd.d  ft1, ft1, ft4          #; ft1  = 2.0650000, ft4  = 0.077
       0     6605        M 0x8000080c fld     ft4, 144(a5)           #; ft4  <~~ Doub[0x00100288]
       0     6606        M                                           #; (f:lsu) ft4  <-- 0.081
       0     6607        M                                           #; (f:fpu) ft1  <-- 2.1420000
       0     6608        M 0x80000810 fadd.d  ft1, ft1, ft5          #; ft1  = 2.1420000, ft5  = 0.078
       0     6609        M 0x80000814 fld     ft5, 152(a5)           #; ft5  <~~ Doub[0x00100290]
       0     6610        M                                           #; (f:lsu) ft5  <-- 0.082
       0     6611        M                                           #; (f:fpu) ft1  <-- 2.22
       0     6612        M 0x80000818 fadd.d  ft1, ft1, ft2          #; ft1  = 2.22, ft2  = 0.079
       0     6613        M 0x8000081c fld     ft2, 160(a5)           #; ft2  <~~ Doub[0x00100298]
       0     6614        M                                           #; (f:lsu) ft2  <-- 0.083
       0     6615        M                                           #; (f:fpu) ft1  <-- 2.2990000
       0     6616        M 0x80000820 fadd.d  ft1, ft1, ft3          #; ft1  = 2.2990000, ft3  = 0.08
       0     6619        M                                           #; (f:fpu) ft1  <-- 2.3790000
       0     6620        M 0x80000824 fadd.d  ft1, ft1, ft4          #; ft1  = 2.3790000, ft4  = 0.081
       0     6623        M                                           #; (f:fpu) ft1  <-- 2.4600000
       0     6624        M 0x80000828 fadd.d  ft1, ft1, ft5          #; ft1  = 2.4600000, ft5  = 0.082
       0     6627        M                                           #; (f:fpu) ft1  <-- 2.5420000
       0     6628        M 0x8000082c fadd.d  ft1, ft1, ft2          #; ft1  = 2.5420000, ft2  = 0.083
       0     6631        M                                           #; (f:fpu) ft1  <-- 2.6250000
       0     6632        M 0x80000830 fadd.d  ft0, ft1, ft0          #; ft1  = 2.6250000, ft0  = 4.3050000
       0     6635        M                                           #; (f:fpu) ft0  <-- 6.9300000
       0     6636        M 0x80000834 fadd.d  ft0, ft1, ft0          #; ft1  = 2.6250000, ft0  = 6.9300000
       0     6639        M                                           #; (f:fpu) ft0  <-- 9.5550000
       0     6640        M 0x80000838 fadd.d  ft0, ft1, ft0          #; ft1  = 2.6250000, ft0  = 9.5550000
       0     6643        M                                           #; (f:fpu) ft0  <-- 12.1800000
       0     6644        M 0x8000083c fadd.d  ft0, ft1, ft0          #; ft1  = 2.6250000, ft0  = 12.1800000
       0     6647        M                                           #; (f:fpu) ft0  <-- 14.8050000
       0     6648        M 0x80000844 fadd.d  ft0, ft1, ft0          #; ft1  = 2.6250000, ft0  = 14.8050000
       0     6649        M 0x800006e4 fld     ft1, 3928(a5)          #; ft1  <~~ Doub[0x001002a0]
       0     6650        M 0x800006e8 fld     ft2, 3936(a5)          #; ft2  <~~ Doub[0x001002a8], (f:lsu) ft1  <-- 0.084
       0     6651        M 0x800006ec fld     ft3, 3944(a5)          #; ft3  <~~ Doub[0x001002b0], (f:fpu) ft0  <-- 17.4300000
       0     6652        M 0x800006f0 fld     ft4, 3952(a5)          #; ft4  <~~ Doub[0x001002b8], (f:lsu) ft2  <-- 0.085
       0     6653        M 0x800006f4 fld     ft5, 3960(a5)          #; ft5  <~~ Doub[0x001002c0], (f:lsu) ft3  <-- 0.0860000
       0     6654        M 0x800006f8 fadd.d  ft1, ft2, ft1          #; ft2  = 0.085, ft1  = 0.084, (f:lsu) ft4  <-- 0.0870000
       0     6655        M 0x800006fc fld     ft2, 3968(a5)          #; ft2  <~~ Doub[0x001002c8], (f:lsu) ft5  <-- 0.088
       0     6656        M                                           #; (f:lsu) ft2  <-- 0.089
       0     6657        M                                           #; (f:fpu) ft1  <-- 0.169
       0     6658        M 0x80000700 fadd.d  ft1, ft1, ft3          #; ft1  = 0.169, ft3  = 0.0860000
       0     6659        M 0x80000704 fld     ft3, 3976(a5)          #; ft3  <~~ Doub[0x001002d0]
       0     6660        M                                           #; (f:lsu) ft3  <-- 0.09
       0     6661        M                                           #; (f:fpu) ft1  <-- 0.255
       0     6662        M 0x80000708 fadd.d  ft1, ft1, ft4          #; ft1  = 0.255, ft4  = 0.0870000
       0     6663        M 0x8000070c fld     ft4, 3984(a5)          #; ft4  <~~ Doub[0x001002d8]
       0     6664        M                                           #; (f:lsu) ft4  <-- 0.091
       0     6665        M                                           #; (f:fpu) ft1  <-- 0.342
       0     6666        M 0x80000710 fadd.d  ft1, ft1, ft5          #; ft1  = 0.342, ft5  = 0.088
       0     6667        M 0x80000714 fld     ft5, 3992(a5)          #; ft5  <~~ Doub[0x001002e0]
       0     6668        M                                           #; (f:lsu) ft5  <-- 0.092
       0     6669        M                                           #; (f:fpu) ft1  <-- 0.4300000
       0     6670        M 0x80000718 fadd.d  ft1, ft1, ft2          #; ft1  = 0.4300000, ft2  = 0.089
       0     6671        M 0x8000071c fld     ft2, 4000(a5)          #; ft2  <~~ Doub[0x001002e8]
       0     6672        M                                           #; (f:lsu) ft2  <-- 0.093
       0     6673        M                                           #; (f:fpu) ft1  <-- 0.519
       0     6674        M 0x80000720 fadd.d  ft1, ft1, ft3          #; ft1  = 0.519, ft3  = 0.09
       0     6675        M 0x80000724 fld     ft3, 4008(a5)          #; ft3  <~~ Doub[0x001002f0]
       0     6676        M                                           #; (f:lsu) ft3  <-- 0.094
       0     6677        M                                           #; (f:fpu) ft1  <-- 0.609
       0     6678        M 0x80000728 fadd.d  ft1, ft1, ft4          #; ft1  = 0.609, ft4  = 0.091
       0     6679        M 0x8000072c fld     ft4, 4016(a5)          #; ft4  <~~ Doub[0x001002f8]
       0     6680        M                                           #; (f:lsu) ft4  <-- 0.095
       0     6681        M                                           #; (f:fpu) ft1  <-- 0.7
       0     6682        M 0x80000730 fadd.d  ft1, ft1, ft5          #; ft1  = 0.7, ft5  = 0.092
       0     6683        M 0x80000734 fld     ft5, 4024(a5)          #; ft5  <~~ Doub[0x00100300]
       0     6684        M                                           #; (f:lsu) ft5  <-- 0.096
       0     6685        M                                           #; (f:fpu) ft1  <-- 0.7920000
       0     6686        M 0x80000738 fadd.d  ft1, ft1, ft2          #; ft1  = 0.7920000, ft2  = 0.093
       0     6687        M 0x8000073c fld     ft2, 4032(a5)          #; ft2  <~~ Doub[0x00100308]
       0     6688        M                                           #; (f:lsu) ft2  <-- 0.097
       0     6689        M                                           #; (f:fpu) ft1  <-- 0.8850000
       0     6690        M 0x80000740 fadd.d  ft1, ft1, ft3          #; ft1  = 0.8850000, ft3  = 0.094
       0     6691        M 0x80000744 fld     ft3, 4040(a5)          #; ft3  <~~ Doub[0x00100310]
       0     6692        M                                           #; (f:lsu) ft3  <-- 0.098
       0     6693        M                                           #; (f:fpu) ft1  <-- 0.9790000
       0     6694        M 0x80000748 fadd.d  ft1, ft1, ft4          #; ft1  = 0.9790000, ft4  = 0.095
       0     6695        M 0x8000074c fld     ft4, 4048(a5)          #; ft4  <~~ Doub[0x00100318]
       0     6696        M                                           #; (f:lsu) ft4  <-- 0.099
       0     6697        M                                           #; (f:fpu) ft1  <-- 1.0740000
       0     6698        M 0x80000750 fadd.d  ft1, ft1, ft5          #; ft1  = 1.0740000, ft5  = 0.096
       0     6699        M 0x80000754 fld     ft5, 4056(a5)          #; ft5  <~~ Doub[0x00100320]
       0     6700        M                                           #; (f:lsu) ft5  <-- 0.1
       0     6701        M                                           #; (f:fpu) ft1  <-- 1.17
       0     6702        M 0x80000758 fadd.d  ft1, ft1, ft2          #; ft1  = 1.17, ft2  = 0.097
       0     6703        M 0x8000075c fld     ft2, 4064(a5)          #; ft2  <~~ Doub[0x00100328]
       0     6704        M                                           #; (f:lsu) ft2  <-- 0.101
       0     6705        M                                           #; (f:fpu) ft1  <-- 1.267
       0     6706        M 0x80000760 fadd.d  ft1, ft1, ft3          #; ft1  = 1.267, ft3  = 0.098
       0     6707        M 0x80000764 fld     ft3, 4072(a5)          #; ft3  <~~ Doub[0x00100330]
       0     6708        M                                           #; (f:lsu) ft3  <-- 0.1020000
       0     6709        M                                           #; (f:fpu) ft1  <-- 1.365
       0     6710        M 0x80000768 fadd.d  ft1, ft1, ft4          #; ft1  = 1.365, ft4  = 0.099
       0     6711        M 0x8000076c fld     ft4, 4080(a5)          #; ft4  <~~ Doub[0x00100338]
       0     6712        M                                           #; (f:lsu) ft4  <-- 0.1030000
       0     6713        M                                           #; (f:fpu) ft1  <-- 1.464
       0     6714        M 0x80000770 fadd.d  ft1, ft1, ft5          #; ft1  = 1.464, ft5  = 0.1
       0     6715        M 0x80000774 fld     ft5, 4088(a5)          #; ft5  <~~ Doub[0x00100340]
       0     6716        M                                           #; (f:lsu) ft5  <-- 0.1040000
       0     6717        M                                           #; (f:fpu) ft1  <-- 1.564
       0     6718        M 0x80000778 fadd.d  ft1, ft1, ft2          #; ft1  = 1.564, ft2  = 0.101
       0     6719        M 0x8000077c fld     ft2, 0(a5)             #; ft2  <~~ Doub[0x00100348]
       0     6720        M                                           #; (f:lsu) ft2  <-- 0.105
       0     6721        M                                           #; (f:fpu) ft1  <-- 1.665
       0     6722        M 0x80000780 fadd.d  ft1, ft1, ft3          #; ft1  = 1.665, ft3  = 0.1020000
       0     6723        M 0x80000784 fld     ft3, 8(a5)             #; ft3  <~~ Doub[0x00100350]
       0     6724        M                                           #; (f:lsu) ft3  <-- 0.106
       0     6725        M                                           #; (f:fpu) ft1  <-- 1.7670000
       0     6726        M 0x80000788 fadd.d  ft1, ft1, ft4          #; ft1  = 1.7670000, ft4  = 0.1030000
       0     6727        M 0x8000078c fld     ft4, 16(a5)            #; ft4  <~~ Doub[0x00100358]
       0     6728        M                                           #; (f:lsu) ft4  <-- 0.107
       0     6729        M                                           #; (f:fpu) ft1  <-- 1.87
       0     6730        M 0x80000790 fadd.d  ft1, ft1, ft5          #; ft1  = 1.87, ft5  = 0.1040000
       0     6731        M 0x80000794 fld     ft5, 24(a5)            #; ft5  <~~ Doub[0x00100360]
       0     6732        M                                           #; (f:lsu) ft5  <-- 0.108
       0     6733        M                                           #; (f:fpu) ft1  <-- 1.9740000
       0     6734        M 0x80000798 fadd.d  ft1, ft1, ft2          #; ft1  = 1.9740000, ft2  = 0.105
       0     6735        M 0x8000079c fld     ft2, 32(a5)            #; ft2  <~~ Doub[0x00100368]
       0     6736        M                                           #; (f:lsu) ft2  <-- 0.109
       0     6737        M                                           #; (f:fpu) ft1  <-- 2.079
       0     6738        M 0x800007a0 fadd.d  ft1, ft1, ft3          #; ft1  = 2.079, ft3  = 0.106
       0     6739        M 0x800007a4 fld     ft3, 40(a5)            #; ft3  <~~ Doub[0x00100370]
       0     6740        M                                           #; (f:lsu) ft3  <-- 0.11
       0     6741        M                                           #; (f:fpu) ft1  <-- 2.185
       0     6742        M 0x800007a8 fadd.d  ft1, ft1, ft4          #; ft1  = 2.185, ft4  = 0.107
       0     6743        M 0x800007ac fld     ft4, 48(a5)            #; ft4  <~~ Doub[0x00100378]
       0     6744        M                                           #; (f:lsu) ft4  <-- 0.111
       0     6745        M                                           #; (f:fpu) ft1  <-- 2.2920000
       0     6746        M 0x800007b0 fadd.d  ft1, ft1, ft5          #; ft1  = 2.2920000, ft5  = 0.108
       0     6747        M 0x800007b4 fld     ft5, 56(a5)            #; ft5  <~~ Doub[0x00100380]
       0     6748        M                                           #; (f:lsu) ft5  <-- 0.112
       0     6749        M                                           #; (f:fpu) ft1  <-- 2.4000000
       0     6750        M 0x800007b8 fadd.d  ft1, ft1, ft2          #; ft1  = 2.4000000, ft2  = 0.109
       0     6751        M 0x800007bc fld     ft2, 64(a5)            #; ft2  <~~ Doub[0x00100388]
       0     6752        M                                           #; (f:lsu) ft2  <-- 0.113
       0     6753        M                                           #; (f:fpu) ft1  <-- 2.5090000
       0     6754        M 0x800007c0 fadd.d  ft1, ft1, ft3          #; ft1  = 2.5090000, ft3  = 0.11
       0     6755        M 0x800007c4 fld     ft3, 72(a5)            #; ft3  <~~ Doub[0x00100390]
       0     6756        M                                           #; (f:lsu) ft3  <-- 0.114
       0     6757        M                                           #; (f:fpu) ft1  <-- 2.619
       0     6758        M 0x800007c8 fadd.d  ft1, ft1, ft4          #; ft1  = 2.619, ft4  = 0.111
       0     6759        M 0x800007cc fld     ft4, 80(a5)            #; ft4  <~~ Doub[0x00100398]
       0     6760        M                                           #; (f:lsu) ft4  <-- 0.115
       0     6761        M                                           #; (f:fpu) ft1  <-- 2.7300000
       0     6762        M 0x800007d0 fadd.d  ft1, ft1, ft5          #; ft1  = 2.7300000, ft5  = 0.112
       0     6763        M 0x800007d4 fld     ft5, 88(a5)            #; ft5  <~~ Doub[0x001003a0]
       0     6764        M                                           #; (f:lsu) ft5  <-- 0.116
       0     6765        M                                           #; (f:fpu) ft1  <-- 2.8420000
       0     6766        M 0x800007d8 fadd.d  ft1, ft1, ft2          #; ft1  = 2.8420000, ft2  = 0.113
       0     6767        M 0x800007dc fld     ft2, 96(a5)            #; ft2  <~~ Doub[0x001003a8]
       0     6768        M                                           #; (f:lsu) ft2  <-- 0.117
       0     6769        M                                           #; (f:fpu) ft1  <-- 2.9550000
       0     6770        M 0x800007e0 fadd.d  ft1, ft1, ft3          #; ft1  = 2.9550000, ft3  = 0.114
       0     6771        M 0x800007e4 fld     ft3, 104(a5)           #; ft3  <~~ Doub[0x001003b0]
       0     6772        M                                           #; (f:lsu) ft3  <-- 0.1180000
       0     6773        M                                           #; (f:fpu) ft1  <-- 3.0690000
       0     6774        M 0x800007e8 fadd.d  ft1, ft1, ft4          #; ft1  = 3.0690000, ft4  = 0.115
       0     6775        M 0x800007ec fld     ft4, 112(a5)           #; ft4  <~~ Doub[0x001003b8]
       0     6776        M                                           #; (f:lsu) ft4  <-- 0.1190000
       0     6777        M                                           #; (f:fpu) ft1  <-- 3.1840000
       0     6778        M 0x800007f0 fadd.d  ft1, ft1, ft5          #; ft1  = 3.1840000, ft5  = 0.116
       0     6779        M 0x800007f4 fld     ft5, 120(a5)           #; ft5  <~~ Doub[0x001003c0]
       0     6780        M                                           #; (f:lsu) ft5  <-- 0.12
       0     6781        M                                           #; (f:fpu) ft1  <-- 3.3000000
       0     6782        M 0x80000840 addi    a4, a4, 336            #; a4  = 672, (wrb) a4  <-- 1008
                         M 0x800007f8 fadd.d  ft1, ft1, ft2          #; ft1  = 3.3000000, ft2  = 0.117
       0     6783        M 0x800007fc fld     ft2, 128(a5)           #; ft2  <~~ Doub[0x001003c8]
       0     6784        M                                           #; (f:lsu) ft2  <-- 0.121
       0     6785        M 0x80000848 bne     a4, a2, pc - 360       #; a4  = 1008, a2  = 1344, taken, goto 0x800006e0
                         M                                           #; (f:fpu) ft1  <-- 3.4170000
       0     6786        M 0x800006e0 add     a5, a1, a4             #; a1  = 0x001000a8, a4  = 1008, (wrb) a5  <-- 0x00100498
                         M 0x80000800 fadd.d  ft1, ft1, ft3          #; ft1  = 3.4170000, ft3  = 0.1180000
       0     6787        M 0x80000804 fld     ft3, 136(a5)           #; ft3  <~~ Doub[0x001003d0]
       0     6788        M                                           #; (f:lsu) ft3  <-- 0.122
       0     6789        M                                           #; (f:fpu) ft1  <-- 3.5350000
       0     6790        M 0x80000808 fadd.d  ft1, ft1, ft4          #; ft1  = 3.5350000, ft4  = 0.1190000
       0     6791        M 0x8000080c fld     ft4, 144(a5)           #; ft4  <~~ Doub[0x001003d8]
       0     6792        M                                           #; (f:lsu) ft4  <-- 0.123
       0     6793        M                                           #; (f:fpu) ft1  <-- 3.6540000
       0     6794        M 0x80000810 fadd.d  ft1, ft1, ft5          #; ft1  = 3.6540000, ft5  = 0.12
       0     6795        M 0x80000814 fld     ft5, 152(a5)           #; ft5  <~~ Doub[0x001003e0]
       0     6796        M                                           #; (f:lsu) ft5  <-- 0.124
       0     6797        M                                           #; (f:fpu) ft1  <-- 3.7740000
       0     6798        M 0x80000818 fadd.d  ft1, ft1, ft2          #; ft1  = 3.7740000, ft2  = 0.121
       0     6799        M 0x8000081c fld     ft2, 160(a5)           #; ft2  <~~ Doub[0x001003e8]
       0     6800        M                                           #; (f:lsu) ft2  <-- 0.125
       0     6801        M                                           #; (f:fpu) ft1  <-- 3.8950000
       0     6802        M 0x80000820 fadd.d  ft1, ft1, ft3          #; ft1  = 3.8950000, ft3  = 0.122
       0     6805        M                                           #; (f:fpu) ft1  <-- 4.0170000
       0     6806        M 0x80000824 fadd.d  ft1, ft1, ft4          #; ft1  = 4.0170000, ft4  = 0.123
       0     6809        M                                           #; (f:fpu) ft1  <-- 4.1400000
       0     6810        M 0x80000828 fadd.d  ft1, ft1, ft5          #; ft1  = 4.1400000, ft5  = 0.124
       0     6813        M                                           #; (f:fpu) ft1  <-- 4.2640000
       0     6814        M 0x8000082c fadd.d  ft1, ft1, ft2          #; ft1  = 4.2640000, ft2  = 0.125
       0     6817        M                                           #; (f:fpu) ft1  <-- 4.3890000
       0     6818        M 0x80000830 fadd.d  ft0, ft1, ft0          #; ft1  = 4.3890000, ft0  = 17.4300000
       0     6821        M                                           #; (f:fpu) ft0  <-- 21.8190000
       0     6822        M 0x80000834 fadd.d  ft0, ft1, ft0          #; ft1  = 4.3890000, ft0  = 21.8190000
       0     6825        M                                           #; (f:fpu) ft0  <-- 26.2080000
       0     6826        M 0x80000838 fadd.d  ft0, ft1, ft0          #; ft1  = 4.3890000, ft0  = 26.2080000
       0     6829        M                                           #; (f:fpu) ft0  <-- 30.5970000
       0     6830        M 0x8000083c fadd.d  ft0, ft1, ft0          #; ft1  = 4.3890000, ft0  = 30.5970000
       0     6833        M                                           #; (f:fpu) ft0  <-- 34.9860000
       0     6834        M 0x80000844 fadd.d  ft0, ft1, ft0          #; ft1  = 4.3890000, ft0  = 34.9860000
       0     6835        M 0x800006e4 fld     ft1, 3928(a5)          #; ft1  <~~ Doub[0x001003f0]
       0     6836        M 0x800006e8 fld     ft2, 3936(a5)          #; ft2  <~~ Doub[0x001003f8], (f:lsu) ft1  <-- 0.126
       0     6837        M 0x800006ec fld     ft3, 3944(a5)          #; ft3  <~~ Doub[0x00100400], (f:fpu) ft0  <-- 39.3750000
       0     6838        M 0x800006f0 fld     ft4, 3952(a5)          #; ft4  <~~ Doub[0x00100408], (f:lsu) ft2  <-- 0.127
       0     6839        M 0x800006f4 fld     ft5, 3960(a5)          #; ft5  <~~ Doub[0x00100410], (f:lsu) ft3  <-- 0.128
       0     6840        M 0x800006f8 fadd.d  ft1, ft2, ft1          #; ft2  = 0.127, ft1  = 0.126, (f:lsu) ft4  <-- 0.129
       0     6841        M 0x800006fc fld     ft2, 3968(a5)          #; ft2  <~~ Doub[0x00100418], (f:lsu) ft5  <-- 0.13
       0     6842        M                                           #; (f:lsu) ft2  <-- 0.131
       0     6843        M                                           #; (f:fpu) ft1  <-- 0.253
       0     6844        M 0x80000700 fadd.d  ft1, ft1, ft3          #; ft1  = 0.253, ft3  = 0.128
       0     6845        M 0x80000704 fld     ft3, 3976(a5)          #; ft3  <~~ Doub[0x00100420]
       0     6846        M                                           #; (f:lsu) ft3  <-- 0.132
       0     6847        M                                           #; (f:fpu) ft1  <-- 0.381
       0     6848        M 0x80000708 fadd.d  ft1, ft1, ft4          #; ft1  = 0.381, ft4  = 0.129
       0     6849        M 0x8000070c fld     ft4, 3984(a5)          #; ft4  <~~ Doub[0x00100428]
       0     6850        M                                           #; (f:lsu) ft4  <-- 0.133
       0     6851        M                                           #; (f:fpu) ft1  <-- 0.51
       0     6852        M 0x80000710 fadd.d  ft1, ft1, ft5          #; ft1  = 0.51, ft5  = 0.13
       0     6853        M 0x80000714 fld     ft5, 3992(a5)          #; ft5  <~~ Doub[0x00100430]
       0     6854        M                                           #; (f:lsu) ft5  <-- 0.134
       0     6855        M                                           #; (f:fpu) ft1  <-- 0.64
       0     6856        M 0x80000718 fadd.d  ft1, ft1, ft2          #; ft1  = 0.64, ft2  = 0.131
       0     6857        M 0x8000071c fld     ft2, 4000(a5)          #; ft2  <~~ Doub[0x00100438]
       0     6858        M                                           #; (f:lsu) ft2  <-- 0.135
       0     6859        M                                           #; (f:fpu) ft1  <-- 0.771
       0     6860        M 0x80000720 fadd.d  ft1, ft1, ft3          #; ft1  = 0.771, ft3  = 0.132
       0     6861        M 0x80000724 fld     ft3, 4008(a5)          #; ft3  <~~ Doub[0x00100440]
       0     6862        M                                           #; (f:lsu) ft3  <-- 0.136
       0     6863        M                                           #; (f:fpu) ft1  <-- 0.903
       0     6864        M 0x80000728 fadd.d  ft1, ft1, ft4          #; ft1  = 0.903, ft4  = 0.133
       0     6865        M 0x8000072c fld     ft4, 4016(a5)          #; ft4  <~~ Doub[0x00100448]
       0     6866        M                                           #; (f:lsu) ft4  <-- 0.137
       0     6867        M                                           #; (f:fpu) ft1  <-- 1.036
       0     6868        M 0x80000730 fadd.d  ft1, ft1, ft5          #; ft1  = 1.036, ft5  = 0.134
       0     6869        M 0x80000734 fld     ft5, 4024(a5)          #; ft5  <~~ Doub[0x00100450]
       0     6870        M                                           #; (f:lsu) ft5  <-- 0.138
       0     6871        M                                           #; (f:fpu) ft1  <-- 1.17
       0     6872        M 0x80000738 fadd.d  ft1, ft1, ft2          #; ft1  = 1.17, ft2  = 0.135
       0     6873        M 0x8000073c fld     ft2, 4032(a5)          #; ft2  <~~ Doub[0x00100458]
       0     6874        M                                           #; (f:lsu) ft2  <-- 0.139
       0     6875        M                                           #; (f:fpu) ft1  <-- 1.305
       0     6876        M 0x80000740 fadd.d  ft1, ft1, ft3          #; ft1  = 1.305, ft3  = 0.136
       0     6877        M 0x80000744 fld     ft3, 4040(a5)          #; ft3  <~~ Doub[0x00100460]
       0     6878        M                                           #; (f:lsu) ft3  <-- 0.14
       0     6879        M                                           #; (f:fpu) ft1  <-- 1.4410000
       0     6880        M 0x80000748 fadd.d  ft1, ft1, ft4          #; ft1  = 1.4410000, ft4  = 0.137
       0     6881        M 0x8000074c fld     ft4, 4048(a5)          #; ft4  <~~ Doub[0x00100468]
       0     6882        M                                           #; (f:lsu) ft4  <-- 0.1410000
       0     6883        M                                           #; (f:fpu) ft1  <-- 1.5780000
       0     6884        M 0x80000750 fadd.d  ft1, ft1, ft5          #; ft1  = 1.5780000, ft5  = 0.138
       0     6885        M 0x80000754 fld     ft5, 4056(a5)          #; ft5  <~~ Doub[0x00100470]
       0     6886        M                                           #; (f:lsu) ft5  <-- 0.1420000
       0     6887        M                                           #; (f:fpu) ft1  <-- 1.7160000
       0     6888        M 0x80000758 fadd.d  ft1, ft1, ft2          #; ft1  = 1.7160000, ft2  = 0.139
       0     6889        M 0x8000075c fld     ft2, 4064(a5)          #; ft2  <~~ Doub[0x00100478]
       0     6890        M                                           #; (f:lsu) ft2  <-- 0.1430000
       0     6891        M                                           #; (f:fpu) ft1  <-- 1.8550000
       0     6892        M 0x80000760 fadd.d  ft1, ft1, ft3          #; ft1  = 1.8550000, ft3  = 0.14
       0     6893        M 0x80000764 fld     ft3, 4072(a5)          #; ft3  <~~ Doub[0x00100480]
       0     6894        M                                           #; (f:lsu) ft3  <-- 0.1440000
       0     6895        M                                           #; (f:fpu) ft1  <-- 1.9950000
       0     6896        M 0x80000768 fadd.d  ft1, ft1, ft4          #; ft1  = 1.9950000, ft4  = 0.1410000
       0     6897        M 0x8000076c fld     ft4, 4080(a5)          #; ft4  <~~ Doub[0x00100488]
       0     6898        M                                           #; (f:lsu) ft4  <-- 0.145
       0     6899        M                                           #; (f:fpu) ft1  <-- 2.1360000
       0     6900        M 0x80000770 fadd.d  ft1, ft1, ft5          #; ft1  = 2.1360000, ft5  = 0.1420000
       0     6901        M 0x80000774 fld     ft5, 4088(a5)          #; ft5  <~~ Doub[0x00100490]
       0     6902        M                                           #; (f:lsu) ft5  <-- 0.146
       0     6903        M                                           #; (f:fpu) ft1  <-- 2.2780000
       0     6904        M 0x80000778 fadd.d  ft1, ft1, ft2          #; ft1  = 2.2780000, ft2  = 0.1430000
       0     6905        M 0x8000077c fld     ft2, 0(a5)             #; ft2  <~~ Doub[0x00100498]
       0     6906        M                                           #; (f:lsu) ft2  <-- 0.147
       0     6907        M                                           #; (f:fpu) ft1  <-- 2.4210000
       0     6908        M 0x80000780 fadd.d  ft1, ft1, ft3          #; ft1  = 2.4210000, ft3  = 0.1440000
       0     6909        M 0x80000784 fld     ft3, 8(a5)             #; ft3  <~~ Doub[0x001004a0]
       0     6910        M                                           #; (f:lsu) ft3  <-- 0.148
       0     6911        M                                           #; (f:fpu) ft1  <-- 2.5650000
       0     6912        M 0x80000788 fadd.d  ft1, ft1, ft4          #; ft1  = 2.5650000, ft4  = 0.145
       0     6913        M 0x8000078c fld     ft4, 16(a5)            #; ft4  <~~ Doub[0x001004a8]
       0     6914        M                                           #; (f:lsu) ft4  <-- 0.149
       0     6915        M                                           #; (f:fpu) ft1  <-- 2.7100000
       0     6916        M 0x80000790 fadd.d  ft1, ft1, ft5          #; ft1  = 2.7100000, ft5  = 0.146
       0     6917        M 0x80000794 fld     ft5, 24(a5)            #; ft5  <~~ Doub[0x001004b0]
       0     6918        M                                           #; (f:lsu) ft5  <-- 0.15
       0     6919        M                                           #; (f:fpu) ft1  <-- 2.8560000
       0     6920        M 0x80000798 fadd.d  ft1, ft1, ft2          #; ft1  = 2.8560000, ft2  = 0.147
       0     6921        M 0x8000079c fld     ft2, 32(a5)            #; ft2  <~~ Doub[0x001004b8]
       0     6922        M                                           #; (f:lsu) ft2  <-- 0.151
       0     6923        M                                           #; (f:fpu) ft1  <-- 3.0030000
       0     6924        M 0x800007a0 fadd.d  ft1, ft1, ft3          #; ft1  = 3.0030000, ft3  = 0.148
       0     6925        M 0x800007a4 fld     ft3, 40(a5)            #; ft3  <~~ Doub[0x001004c0]
       0     6926        M                                           #; (f:lsu) ft3  <-- 0.152
       0     6927        M                                           #; (f:fpu) ft1  <-- 3.1510000
       0     6928        M 0x800007a8 fadd.d  ft1, ft1, ft4          #; ft1  = 3.1510000, ft4  = 0.149
       0     6929        M 0x800007ac fld     ft4, 48(a5)            #; ft4  <~~ Doub[0x001004c8]
       0     6930        M                                           #; (f:lsu) ft4  <-- 0.153
       0     6931        M                                           #; (f:fpu) ft1  <-- 3.3000000
       0     6932        M 0x800007b0 fadd.d  ft1, ft1, ft5          #; ft1  = 3.3000000, ft5  = 0.15
       0     6933        M 0x800007b4 fld     ft5, 56(a5)            #; ft5  <~~ Doub[0x001004d0]
       0     6934        M                                           #; (f:lsu) ft5  <-- 0.154
       0     6935        M                                           #; (f:fpu) ft1  <-- 3.4500000
       0     6936        M 0x800007b8 fadd.d  ft1, ft1, ft2          #; ft1  = 3.4500000, ft2  = 0.151
       0     6937        M 0x800007bc fld     ft2, 64(a5)            #; ft2  <~~ Doub[0x001004d8]
       0     6938        M                                           #; (f:lsu) ft2  <-- 0.155
       0     6939        M                                           #; (f:fpu) ft1  <-- 3.6010000
       0     6940        M 0x800007c0 fadd.d  ft1, ft1, ft3          #; ft1  = 3.6010000, ft3  = 0.152
       0     6941        M 0x800007c4 fld     ft3, 72(a5)            #; ft3  <~~ Doub[0x001004e0]
       0     6942        M                                           #; (f:lsu) ft3  <-- 0.156
       0     6943        M                                           #; (f:fpu) ft1  <-- 3.7530000
       0     6944        M 0x800007c8 fadd.d  ft1, ft1, ft4          #; ft1  = 3.7530000, ft4  = 0.153
       0     6945        M 0x800007cc fld     ft4, 80(a5)            #; ft4  <~~ Doub[0x001004e8]
       0     6946        M                                           #; (f:lsu) ft4  <-- 0.157
       0     6947        M                                           #; (f:fpu) ft1  <-- 3.9060000
       0     6948        M 0x800007d0 fadd.d  ft1, ft1, ft5          #; ft1  = 3.9060000, ft5  = 0.154
       0     6949        M 0x800007d4 fld     ft5, 88(a5)            #; ft5  <~~ Doub[0x001004f0]
       0     6950        M                                           #; (f:lsu) ft5  <-- 0.158
       0     6951        M                                           #; (f:fpu) ft1  <-- 4.06
       0     6952        M 0x800007d8 fadd.d  ft1, ft1, ft2          #; ft1  = 4.06, ft2  = 0.155
       0     6953        M 0x800007dc fld     ft2, 96(a5)            #; ft2  <~~ Doub[0x001004f8]
       0     6954        M                                           #; (f:lsu) ft2  <-- 0.159
       0     6955        M                                           #; (f:fpu) ft1  <-- 4.215
       0     6956        M 0x800007e0 fadd.d  ft1, ft1, ft3          #; ft1  = 4.215, ft3  = 0.156
       0     6957        M 0x800007e4 fld     ft3, 104(a5)           #; ft3  <~~ Doub[0x00100500]
       0     6958        M                                           #; (f:lsu) ft3  <-- 0.16
       0     6959        M                                           #; (f:fpu) ft1  <-- 4.3710000
       0     6960        M 0x800007e8 fadd.d  ft1, ft1, ft4          #; ft1  = 4.3710000, ft4  = 0.157
       0     6961        M 0x800007ec fld     ft4, 112(a5)           #; ft4  <~~ Doub[0x00100508]
       0     6962        M                                           #; (f:lsu) ft4  <-- 0.161
       0     6963        M                                           #; (f:fpu) ft1  <-- 4.528
       0     6964        M 0x800007f0 fadd.d  ft1, ft1, ft5          #; ft1  = 4.528, ft5  = 0.158
       0     6965        M 0x800007f4 fld     ft5, 120(a5)           #; ft5  <~~ Doub[0x00100510]
       0     6966        M                                           #; (f:lsu) ft5  <-- 0.162
       0     6967        M                                           #; (f:fpu) ft1  <-- 4.686
       0     6968        M 0x80000840 addi    a4, a4, 336            #; a4  = 1008, (wrb) a4  <-- 1344
                         M 0x800007f8 fadd.d  ft1, ft1, ft2          #; ft1  = 4.686, ft2  = 0.159
       0     6969        M 0x800007fc fld     ft2, 128(a5)           #; ft2  <~~ Doub[0x00100518]
       0     6970        M                                           #; (f:lsu) ft2  <-- 0.163
       0     6971        M 0x80000848 bne     a4, a2, pc - 360       #; a4  = 1344, a2  = 1344, not taken
                         M                                           #; (f:fpu) ft1  <-- 4.845
       0     6972        M 0x8000084c addi    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
                         M 0x80000800 fadd.d  ft1, ft1, ft3          #; ft1  = 4.845, ft3  = 0.16
       0     6973        M 0x80000804 fld     ft3, 136(a5)           #; ft3  <~~ Doub[0x00100520]
       0     6974        M                                           #; (f:lsu) ft3  <-- 0.164
       0     6975        M                                           #; (f:fpu) ft1  <-- 5.005
       0     6976        M 0x80000808 fadd.d  ft1, ft1, ft4          #; ft1  = 5.005, ft4  = 0.161
       0     6977        M 0x8000080c fld     ft4, 144(a5)           #; ft4  <~~ Doub[0x00100528]
       0     6978        M                                           #; (f:lsu) ft4  <-- 0.165
       0     6979        M                                           #; (f:fpu) ft1  <-- 5.1660000
       0     6980        M 0x80000810 fadd.d  ft1, ft1, ft5          #; ft1  = 5.1660000, ft5  = 0.162
       0     6981        M 0x80000814 fld     ft5, 152(a5)           #; ft5  <~~ Doub[0x00100530]
       0     6982        M                                           #; (f:lsu) ft5  <-- 0.166
       0     6983        M                                           #; (f:fpu) ft1  <-- 5.3280000
       0     6984        M 0x80000850 addi    a1, a1, 1344           #; a1  = 0x001000a8, (wrb) a1  <-- 0x001005e8
                         M 0x80000818 fadd.d  ft1, ft1, ft2          #; ft1  = 5.3280000, ft2  = 0.163
       0     6985        M 0x80000854 bne     a0, a3, pc - 376       #; a0  = 1, a3  = 3, taken, goto 0x800006dc
                         M 0x8000081c fld     ft2, 160(a5)           #; ft2  <~~ Doub[0x00100538]
       0     6986        M                                           #; (f:lsu) ft2  <-- 0.167
       0     6987        M 0x800006dc li      a4, 0                  #; (wrb) a4  <-- 0
                         M                                           #; (f:fpu) ft1  <-- 5.491
       0     6988        M 0x800006e0 add     a5, a1, a4             #; a1  = 0x001005e8, a4  = 0, (wrb) a5  <-- 0x001005e8
                         M 0x80000820 fadd.d  ft1, ft1, ft3          #; ft1  = 5.491, ft3  = 0.164
       0     6991        M                                           #; (f:fpu) ft1  <-- 5.6550000
       0     6992        M 0x80000824 fadd.d  ft1, ft1, ft4          #; ft1  = 5.6550000, ft4  = 0.165
       0     6995        M                                           #; (f:fpu) ft1  <-- 5.8200000
       0     6996        M 0x80000828 fadd.d  ft1, ft1, ft5          #; ft1  = 5.8200000, ft5  = 0.166
       0     6999        M                                           #; (f:fpu) ft1  <-- 5.986
       0     7000        M 0x8000082c fadd.d  ft1, ft1, ft2          #; ft1  = 5.986, ft2  = 0.167
       0     7003        M                                           #; (f:fpu) ft1  <-- 6.153
       0     7004        M 0x80000830 fadd.d  ft0, ft1, ft0          #; ft1  = 6.153, ft0  = 39.3750000
       0     7007        M                                           #; (f:fpu) ft0  <-- 45.5280000
       0     7008        M 0x80000834 fadd.d  ft0, ft1, ft0          #; ft1  = 6.153, ft0  = 45.5280000
       0     7011        M                                           #; (f:fpu) ft0  <-- 51.6810000
       0     7012        M 0x80000838 fadd.d  ft0, ft1, ft0          #; ft1  = 6.153, ft0  = 51.6810000
       0     7015        M                                           #; (f:fpu) ft0  <-- 57.8340000
       0     7016        M 0x8000083c fadd.d  ft0, ft1, ft0          #; ft1  = 6.153, ft0  = 57.8340000
       0     7019        M                                           #; (f:fpu) ft0  <-- 63.9870000
       0     7020        M 0x80000844 fadd.d  ft0, ft1, ft0          #; ft1  = 6.153, ft0  = 63.9870000
       0     7021        M 0x800006e4 fld     ft1, 3928(a5)          #; ft1  <~~ Doub[0x00100540]
       0     7022        M 0x800006e8 fld     ft2, 3936(a5)          #; ft2  <~~ Doub[0x00100548], (f:lsu) ft1  <-- 0.168
       0     7023        M 0x800006ec fld     ft3, 3944(a5)          #; ft3  <~~ Doub[0x00100550], (f:fpu) ft0  <-- 70.1400000
       0     7024        M 0x800006f0 fld     ft4, 3952(a5)          #; ft4  <~~ Doub[0x00100558], (f:lsu) ft2  <-- 0.169
       0     7025        M 0x800006f4 fld     ft5, 3960(a5)          #; ft5  <~~ Doub[0x00100560], (f:lsu) ft3  <-- 0.17
       0     7026        M 0x800006f8 fadd.d  ft1, ft2, ft1          #; ft2  = 0.169, ft1  = 0.168, (f:lsu) ft4  <-- 0.171
       0     7027        M 0x800006fc fld     ft2, 3968(a5)          #; ft2  <~~ Doub[0x00100568], (f:lsu) ft5  <-- 0.1720000
       0     7028        M                                           #; (f:lsu) ft2  <-- 0.1730000
       0     7029        M                                           #; (f:fpu) ft1  <-- 0.337
       0     7030        M 0x80000700 fadd.d  ft1, ft1, ft3          #; ft1  = 0.337, ft3  = 0.17
       0     7031        M 0x80000704 fld     ft3, 3976(a5)          #; ft3  <~~ Doub[0x00100570]
       0     7032        M                                           #; (f:lsu) ft3  <-- 0.1740000
       0     7033        M                                           #; (f:fpu) ft1  <-- 0.507
       0     7034        M 0x80000708 fadd.d  ft1, ft1, ft4          #; ft1  = 0.507, ft4  = 0.171
       0     7035        M 0x8000070c fld     ft4, 3984(a5)          #; ft4  <~~ Doub[0x00100578]
       0     7036        M                                           #; (f:lsu) ft4  <-- 0.1750000
       0     7037        M                                           #; (f:fpu) ft1  <-- 0.678
       0     7038        M 0x80000710 fadd.d  ft1, ft1, ft5          #; ft1  = 0.678, ft5  = 0.1720000
       0     7039        M 0x80000714 fld     ft5, 3992(a5)          #; ft5  <~~ Doub[0x00100580]
       0     7040        M                                           #; (f:lsu) ft5  <-- 0.176
       0     7041        M                                           #; (f:fpu) ft1  <-- 0.8500000
       0     7042        M 0x80000718 fadd.d  ft1, ft1, ft2          #; ft1  = 0.8500000, ft2  = 0.1730000
       0     7043        M 0x8000071c fld     ft2, 4000(a5)          #; ft2  <~~ Doub[0x00100588]
       0     7044        M                                           #; (f:lsu) ft2  <-- 0.177
       0     7045        M                                           #; (f:fpu) ft1  <-- 1.0230000
       0     7046        M 0x80000720 fadd.d  ft1, ft1, ft3          #; ft1  = 1.0230000, ft3  = 0.1740000
       0     7047        M 0x80000724 fld     ft3, 4008(a5)          #; ft3  <~~ Doub[0x00100590]
       0     7048        M                                           #; (f:lsu) ft3  <-- 0.178
       0     7049        M                                           #; (f:fpu) ft1  <-- 1.197
       0     7050        M 0x80000728 fadd.d  ft1, ft1, ft4          #; ft1  = 1.197, ft4  = 0.1750000
       0     7051        M 0x8000072c fld     ft4, 4016(a5)          #; ft4  <~~ Doub[0x00100598]
       0     7052        M                                           #; (f:lsu) ft4  <-- 0.179
       0     7053        M                                           #; (f:fpu) ft1  <-- 1.372
       0     7054        M 0x80000730 fadd.d  ft1, ft1, ft5          #; ft1  = 1.372, ft5  = 0.176
       0     7055        M 0x80000734 fld     ft5, 4024(a5)          #; ft5  <~~ Doub[0x001005a0]
       0     7056        M                                           #; (f:lsu) ft5  <-- 0.18
       0     7057        M                                           #; (f:fpu) ft1  <-- 1.548
       0     7058        M 0x80000738 fadd.d  ft1, ft1, ft2          #; ft1  = 1.548, ft2  = 0.177
       0     7059        M 0x8000073c fld     ft2, 4032(a5)          #; ft2  <~~ Doub[0x001005a8]
       0     7060        M                                           #; (f:lsu) ft2  <-- 0.181
       0     7061        M                                           #; (f:fpu) ft1  <-- 1.725
       0     7062        M 0x80000740 fadd.d  ft1, ft1, ft3          #; ft1  = 1.725, ft3  = 0.178
       0     7063        M 0x80000744 fld     ft3, 4040(a5)          #; ft3  <~~ Doub[0x001005b0]
       0     7064        M                                           #; (f:lsu) ft3  <-- 0.182
       0     7065        M                                           #; (f:fpu) ft1  <-- 1.903
       0     7066        M 0x80000748 fadd.d  ft1, ft1, ft4          #; ft1  = 1.903, ft4  = 0.179
       0     7067        M 0x8000074c fld     ft4, 4048(a5)          #; ft4  <~~ Doub[0x001005b8]
       0     7068        M                                           #; (f:lsu) ft4  <-- 0.183
       0     7069        M                                           #; (f:fpu) ft1  <-- 2.082
       0     7070        M 0x80000750 fadd.d  ft1, ft1, ft5          #; ft1  = 2.082, ft5  = 0.18
       0     7071        M 0x80000754 fld     ft5, 4056(a5)          #; ft5  <~~ Doub[0x001005c0]
       0     7072        M                                           #; (f:lsu) ft5  <-- 0.184
       0     7073        M                                           #; (f:fpu) ft1  <-- 2.262
       0     7074        M 0x80000758 fadd.d  ft1, ft1, ft2          #; ft1  = 2.262, ft2  = 0.181
       0     7075        M 0x8000075c fld     ft2, 4064(a5)          #; ft2  <~~ Doub[0x001005c8]
       0     7076        M                                           #; (f:lsu) ft2  <-- 0.185
       0     7077        M                                           #; (f:fpu) ft1  <-- 2.443
       0     7078        M 0x80000760 fadd.d  ft1, ft1, ft3          #; ft1  = 2.443, ft3  = 0.182
       0     7079        M 0x80000764 fld     ft3, 4072(a5)          #; ft3  <~~ Doub[0x001005d0]
       0     7080        M                                           #; (f:lsu) ft3  <-- 0.186
       0     7081        M                                           #; (f:fpu) ft1  <-- 2.625
       0     7082        M 0x80000768 fadd.d  ft1, ft1, ft4          #; ft1  = 2.625, ft4  = 0.183
       0     7083        M 0x8000076c fld     ft4, 4080(a5)          #; ft4  <~~ Doub[0x001005d8]
       0     7084        M                                           #; (f:lsu) ft4  <-- 0.187
       0     7085        M                                           #; (f:fpu) ft1  <-- 2.808
       0     7086        M 0x80000770 fadd.d  ft1, ft1, ft5          #; ft1  = 2.808, ft5  = 0.184
       0     7087        M 0x80000774 fld     ft5, 4088(a5)          #; ft5  <~~ Doub[0x001005e0]
       0     7088        M                                           #; (f:lsu) ft5  <-- 0.188
       0     7089        M                                           #; (f:fpu) ft1  <-- 2.992
       0     7090        M 0x80000778 fadd.d  ft1, ft1, ft2          #; ft1  = 2.992, ft2  = 0.185
       0     7091        M 0x8000077c fld     ft2, 0(a5)             #; ft2  <~~ Doub[0x001005e8]
       0     7092        M                                           #; (f:lsu) ft2  <-- 0.189
       0     7093        M                                           #; (f:fpu) ft1  <-- 3.177
       0     7094        M 0x80000780 fadd.d  ft1, ft1, ft3          #; ft1  = 3.177, ft3  = 0.186
       0     7095        M 0x80000784 fld     ft3, 8(a5)             #; ft3  <~~ Doub[0x001005f0]
       0     7096        M                                           #; (f:lsu) ft3  <-- 0.19
       0     7097        M                                           #; (f:fpu) ft1  <-- 3.363
       0     7098        M 0x80000788 fadd.d  ft1, ft1, ft4          #; ft1  = 3.363, ft4  = 0.187
       0     7099        M 0x8000078c fld     ft4, 16(a5)            #; ft4  <~~ Doub[0x001005f8]
       0     7100        M                                           #; (f:lsu) ft4  <-- 0.191
       0     7101        M                                           #; (f:fpu) ft1  <-- 3.55
       0     7102        M 0x80000790 fadd.d  ft1, ft1, ft5          #; ft1  = 3.55, ft5  = 0.188
       0     7103        M 0x80000794 fld     ft5, 24(a5)            #; ft5  <~~ Doub[0x00100600]
       0     7104        M                                           #; (f:lsu) ft5  <-- 0.192
       0     7105        M                                           #; (f:fpu) ft1  <-- 3.738
       0     7106        M 0x80000798 fadd.d  ft1, ft1, ft2          #; ft1  = 3.738, ft2  = 0.189
       0     7107        M 0x8000079c fld     ft2, 32(a5)            #; ft2  <~~ Doub[0x00100608]
       0     7108        M                                           #; (f:lsu) ft2  <-- 0.193
       0     7109        M                                           #; (f:fpu) ft1  <-- 3.927
       0     7110        M 0x800007a0 fadd.d  ft1, ft1, ft3          #; ft1  = 3.927, ft3  = 0.19
       0     7111        M 0x800007a4 fld     ft3, 40(a5)            #; ft3  <~~ Doub[0x00100610]
       0     7112        M                                           #; (f:lsu) ft3  <-- 0.194
       0     7113        M                                           #; (f:fpu) ft1  <-- 4.117
       0     7114        M 0x800007a8 fadd.d  ft1, ft1, ft4          #; ft1  = 4.117, ft4  = 0.191
       0     7115        M 0x800007ac fld     ft4, 48(a5)            #; ft4  <~~ Doub[0x00100618]
       0     7116        M                                           #; (f:lsu) ft4  <-- 0.195
       0     7117        M                                           #; (f:fpu) ft1  <-- 4.308
       0     7118        M 0x800007b0 fadd.d  ft1, ft1, ft5          #; ft1  = 4.308, ft5  = 0.192
       0     7119        M 0x800007b4 fld     ft5, 56(a5)            #; ft5  <~~ Doub[0x00100620]
       0     7120        M                                           #; (f:lsu) ft5  <-- 0.196
       0     7121        M                                           #; (f:fpu) ft1  <-- 4.5
       0     7122        M 0x800007b8 fadd.d  ft1, ft1, ft2          #; ft1  = 4.5, ft2  = 0.193
       0     7123        M 0x800007bc fld     ft2, 64(a5)            #; ft2  <~~ Doub[0x00100628]
       0     7124        M                                           #; (f:lsu) ft2  <-- 0.197
       0     7125        M                                           #; (f:fpu) ft1  <-- 4.693
       0     7126        M 0x800007c0 fadd.d  ft1, ft1, ft3          #; ft1  = 4.693, ft3  = 0.194
       0     7127        M 0x800007c4 fld     ft3, 72(a5)            #; ft3  <~~ Doub[0x00100630]
       0     7128        M                                           #; (f:lsu) ft3  <-- 0.198
       0     7129        M                                           #; (f:fpu) ft1  <-- 4.887
       0     7130        M 0x800007c8 fadd.d  ft1, ft1, ft4          #; ft1  = 4.887, ft4  = 0.195
       0     7131        M 0x800007cc fld     ft4, 80(a5)            #; ft4  <~~ Doub[0x00100638]
       0     7132        M                                           #; (f:lsu) ft4  <-- 0.199
       0     7133        M                                           #; (f:fpu) ft1  <-- 5.082
       0     7134        M 0x800007d0 fadd.d  ft1, ft1, ft5          #; ft1  = 5.082, ft5  = 0.196
       0     7135        M 0x800007d4 fld     ft5, 88(a5)            #; ft5  <~~ Doub[0x00100640]
       0     7136        M                                           #; (f:lsu) ft5  <-- 0.2
       0     7137        M                                           #; (f:fpu) ft1  <-- 5.278
       0     7138        M 0x800007d8 fadd.d  ft1, ft1, ft2          #; ft1  = 5.278, ft2  = 0.197
       0     7139        M 0x800007dc fld     ft2, 96(a5)            #; ft2  <~~ Doub[0x00100648]
       0     7140        M                                           #; (f:lsu) ft2  <-- 0.201
       0     7141        M                                           #; (f:fpu) ft1  <-- 5.475
       0     7142        M 0x800007e0 fadd.d  ft1, ft1, ft3          #; ft1  = 5.475, ft3  = 0.198
       0     7143        M 0x800007e4 fld     ft3, 104(a5)           #; ft3  <~~ Doub[0x00100650]
       0     7144        M                                           #; (f:lsu) ft3  <-- 0.202
       0     7145        M                                           #; (f:fpu) ft1  <-- 5.673
       0     7146        M 0x800007e8 fadd.d  ft1, ft1, ft4          #; ft1  = 5.673, ft4  = 0.199
       0     7147        M 0x800007ec fld     ft4, 112(a5)           #; ft4  <~~ Doub[0x00100658]
       0     7148        M                                           #; (f:lsu) ft4  <-- 0.203
       0     7149        M                                           #; (f:fpu) ft1  <-- 5.872
       0     7150        M 0x800007f0 fadd.d  ft1, ft1, ft5          #; ft1  = 5.872, ft5  = 0.2
       0     7151        M 0x800007f4 fld     ft5, 120(a5)           #; ft5  <~~ Doub[0x00100660]
       0     7152        M                                           #; (f:lsu) ft5  <-- 0.2040000
       0     7153        M                                           #; (f:fpu) ft1  <-- 6.072
       0     7154        M 0x80000840 addi    a4, a4, 336            #; a4  = 0, (wrb) a4  <-- 336
                         M 0x800007f8 fadd.d  ft1, ft1, ft2          #; ft1  = 6.072, ft2  = 0.201
       0     7155        M 0x800007fc fld     ft2, 128(a5)           #; ft2  <~~ Doub[0x00100668]
       0     7156        M                                           #; (f:lsu) ft2  <-- 0.2050000
       0     7157        M 0x80000848 bne     a4, a2, pc - 360       #; a4  = 336, a2  = 1344, taken, goto 0x800006e0
                         M                                           #; (f:fpu) ft1  <-- 6.273
       0     7158        M 0x800006e0 add     a5, a1, a4             #; a1  = 0x001005e8, a4  = 336, (wrb) a5  <-- 0x00100738
                         M 0x80000800 fadd.d  ft1, ft1, ft3          #; ft1  = 6.273, ft3  = 0.202
       0     7159        M 0x80000804 fld     ft3, 136(a5)           #; ft3  <~~ Doub[0x00100670]
       0     7160        M                                           #; (f:lsu) ft3  <-- 0.2060000
       0     7161        M                                           #; (f:fpu) ft1  <-- 6.475
       0     7162        M 0x80000808 fadd.d  ft1, ft1, ft4          #; ft1  = 6.475, ft4  = 0.203
       0     7163        M 0x8000080c fld     ft4, 144(a5)           #; ft4  <~~ Doub[0x00100678]
       0     7164        M                                           #; (f:lsu) ft4  <-- 0.2070000
       0     7165        M                                           #; (f:fpu) ft1  <-- 6.678
       0     7166        M 0x80000810 fadd.d  ft1, ft1, ft5          #; ft1  = 6.678, ft5  = 0.2040000
       0     7167        M 0x80000814 fld     ft5, 152(a5)           #; ft5  <~~ Doub[0x00100680]
       0     7168        M                                           #; (f:lsu) ft5  <-- 0.2080000
       0     7169        M                                           #; (f:fpu) ft1  <-- 6.882
       0     7170        M 0x80000818 fadd.d  ft1, ft1, ft2          #; ft1  = 6.882, ft2  = 0.2050000
       0     7171        M 0x8000081c fld     ft2, 160(a5)           #; ft2  <~~ Doub[0x00100688]
       0     7172        M                                           #; (f:lsu) ft2  <-- 0.209
       0     7173        M                                           #; (f:fpu) ft1  <-- 7.087
       0     7174        M 0x80000820 fadd.d  ft1, ft1, ft3          #; ft1  = 7.087, ft3  = 0.2060000
       0     7177        M                                           #; (f:fpu) ft1  <-- 7.293
       0     7178        M 0x80000824 fadd.d  ft1, ft1, ft4          #; ft1  = 7.293, ft4  = 0.2070000
       0     7181        M                                           #; (f:fpu) ft1  <-- 7.5
       0     7182        M 0x80000828 fadd.d  ft1, ft1, ft5          #; ft1  = 7.5, ft5  = 0.2080000
       0     7185        M                                           #; (f:fpu) ft1  <-- 7.708
       0     7186        M 0x8000082c fadd.d  ft1, ft1, ft2          #; ft1  = 7.708, ft2  = 0.209
       0     7189        M                                           #; (f:fpu) ft1  <-- 7.917
       0     7190        M 0x80000830 fadd.d  ft0, ft1, ft0          #; ft1  = 7.917, ft0  = 70.1400000
       0     7193        M                                           #; (f:fpu) ft0  <-- 78.0570000
       0     7194        M 0x80000834 fadd.d  ft0, ft1, ft0          #; ft1  = 7.917, ft0  = 78.0570000
       0     7197        M                                           #; (f:fpu) ft0  <-- 85.9740000
       0     7198        M 0x80000838 fadd.d  ft0, ft1, ft0          #; ft1  = 7.917, ft0  = 85.9740000
       0     7201        M                                           #; (f:fpu) ft0  <-- 93.8910000
       0     7202        M 0x8000083c fadd.d  ft0, ft1, ft0          #; ft1  = 7.917, ft0  = 93.8910000
       0     7205        M                                           #; (f:fpu) ft0  <-- 101.8080000
       0     7206        M 0x80000844 fadd.d  ft0, ft1, ft0          #; ft1  = 7.917, ft0  = 101.8080000
       0     7207        M 0x800006e4 fld     ft1, 3928(a5)          #; ft1  <~~ Doub[0x00100690]
       0     7208        M 0x800006e8 fld     ft2, 3936(a5)          #; ft2  <~~ Doub[0x00100698], (f:lsu) ft1  <-- 0.21
       0     7209        M 0x800006ec fld     ft3, 3944(a5)          #; ft3  <~~ Doub[0x001006a0], (f:fpu) ft0  <-- 109.7250000
       0     7210        M 0x800006f0 fld     ft4, 3952(a5)          #; ft4  <~~ Doub[0x001006a8], (f:lsu) ft2  <-- 0.211
       0     7211        M 0x800006f4 fld     ft5, 3960(a5)          #; ft5  <~~ Doub[0x001006b0], (f:lsu) ft3  <-- 0.212
       0     7212        M 0x800006f8 fadd.d  ft1, ft2, ft1          #; ft2  = 0.211, ft1  = 0.21, (f:lsu) ft4  <-- 0.213
       0     7213        M 0x800006fc fld     ft2, 3968(a5)          #; ft2  <~~ Doub[0x001006b8], (f:lsu) ft5  <-- 0.214
       0     7214        M                                           #; (f:lsu) ft2  <-- 0.215
       0     7215        M                                           #; (f:fpu) ft1  <-- 0.421
       0     7216        M 0x80000700 fadd.d  ft1, ft1, ft3          #; ft1  = 0.421, ft3  = 0.212
       0     7217        M 0x80000704 fld     ft3, 3976(a5)          #; ft3  <~~ Doub[0x001006c0]
       0     7218        M                                           #; (f:lsu) ft3  <-- 0.216
       0     7219        M                                           #; (f:fpu) ft1  <-- 0.633
       0     7220        M 0x80000708 fadd.d  ft1, ft1, ft4          #; ft1  = 0.633, ft4  = 0.213
       0     7221        M 0x8000070c fld     ft4, 3984(a5)          #; ft4  <~~ Doub[0x001006c8]
       0     7222        M                                           #; (f:lsu) ft4  <-- 0.217
       0     7223        M                                           #; (f:fpu) ft1  <-- 0.846
       0     7224        M 0x80000710 fadd.d  ft1, ft1, ft5          #; ft1  = 0.846, ft5  = 0.214
       0     7225        M 0x80000714 fld     ft5, 3992(a5)          #; ft5  <~~ Doub[0x001006d0]
       0     7226        M                                           #; (f:lsu) ft5  <-- 0.218
       0     7227        M                                           #; (f:fpu) ft1  <-- 1.06
       0     7228        M 0x80000718 fadd.d  ft1, ft1, ft2          #; ft1  = 1.06, ft2  = 0.215
       0     7229        M 0x8000071c fld     ft2, 4000(a5)          #; ft2  <~~ Doub[0x001006d8]
       0     7230        M                                           #; (f:lsu) ft2  <-- 0.219
       0     7231        M                                           #; (f:fpu) ft1  <-- 1.2750000
       0     7232        M 0x80000720 fadd.d  ft1, ft1, ft3          #; ft1  = 1.2750000, ft3  = 0.216
       0     7233        M 0x80000724 fld     ft3, 4008(a5)          #; ft3  <~~ Doub[0x001006e0]
       0     7234        M                                           #; (f:lsu) ft3  <-- 0.22
       0     7235        M                                           #; (f:fpu) ft1  <-- 1.491
       0     7236        M 0x80000728 fadd.d  ft1, ft1, ft4          #; ft1  = 1.491, ft4  = 0.217
       0     7237        M 0x8000072c fld     ft4, 4016(a5)          #; ft4  <~~ Doub[0x001006e8]
       0     7238        M                                           #; (f:lsu) ft4  <-- 0.221
       0     7239        M                                           #; (f:fpu) ft1  <-- 1.7080000
       0     7240        M 0x80000730 fadd.d  ft1, ft1, ft5          #; ft1  = 1.7080000, ft5  = 0.218
       0     7241        M 0x80000734 fld     ft5, 4024(a5)          #; ft5  <~~ Doub[0x001006f0]
       0     7242        M                                           #; (f:lsu) ft5  <-- 0.222
       0     7243        M                                           #; (f:fpu) ft1  <-- 1.9260000
       0     7244        M 0x80000738 fadd.d  ft1, ft1, ft2          #; ft1  = 1.9260000, ft2  = 0.219
       0     7245        M 0x8000073c fld     ft2, 4032(a5)          #; ft2  <~~ Doub[0x001006f8]
       0     7246        M                                           #; (f:lsu) ft2  <-- 0.223
       0     7247        M                                           #; (f:fpu) ft1  <-- 2.145
       0     7248        M 0x80000740 fadd.d  ft1, ft1, ft3          #; ft1  = 2.145, ft3  = 0.22
       0     7249        M 0x80000744 fld     ft3, 4040(a5)          #; ft3  <~~ Doub[0x00100700]
       0     7250        M                                           #; (f:lsu) ft3  <-- 0.224
       0     7251        M                                           #; (f:fpu) ft1  <-- 2.365
       0     7252        M 0x80000748 fadd.d  ft1, ft1, ft4          #; ft1  = 2.365, ft4  = 0.221
       0     7253        M 0x8000074c fld     ft4, 4048(a5)          #; ft4  <~~ Doub[0x00100708]
       0     7254        M                                           #; (f:lsu) ft4  <-- 0.225
       0     7255        M                                           #; (f:fpu) ft1  <-- 2.5860000
       0     7256        M 0x80000750 fadd.d  ft1, ft1, ft5          #; ft1  = 2.5860000, ft5  = 0.222
       0     7257        M 0x80000754 fld     ft5, 4056(a5)          #; ft5  <~~ Doub[0x00100710]
       0     7258        M                                           #; (f:lsu) ft5  <-- 0.226
       0     7259        M                                           #; (f:fpu) ft1  <-- 2.8080000
       0     7260        M 0x80000758 fadd.d  ft1, ft1, ft2          #; ft1  = 2.8080000, ft2  = 0.223
       0     7261        M 0x8000075c fld     ft2, 4064(a5)          #; ft2  <~~ Doub[0x00100718]
       0     7262        M                                           #; (f:lsu) ft2  <-- 0.227
       0     7263        M                                           #; (f:fpu) ft1  <-- 3.031
       0     7264        M 0x80000760 fadd.d  ft1, ft1, ft3          #; ft1  = 3.031, ft3  = 0.224
       0     7265        M 0x80000764 fld     ft3, 4072(a5)          #; ft3  <~~ Doub[0x00100720]
       0     7266        M                                           #; (f:lsu) ft3  <-- 0.228
       0     7267        M                                           #; (f:fpu) ft1  <-- 3.2550000
       0     7268        M 0x80000768 fadd.d  ft1, ft1, ft4          #; ft1  = 3.2550000, ft4  = 0.225
       0     7269        M 0x8000076c fld     ft4, 4080(a5)          #; ft4  <~~ Doub[0x00100728]
       0     7270        M                                           #; (f:lsu) ft4  <-- 0.229
       0     7271        M                                           #; (f:fpu) ft1  <-- 3.4800000
       0     7272        M 0x80000770 fadd.d  ft1, ft1, ft5          #; ft1  = 3.4800000, ft5  = 0.226
       0     7273        M 0x80000774 fld     ft5, 4088(a5)          #; ft5  <~~ Doub[0x00100730]
       0     7274        M                                           #; (f:lsu) ft5  <-- 0.23
       0     7275        M                                           #; (f:fpu) ft1  <-- 3.7060000
       0     7276        M 0x80000778 fadd.d  ft1, ft1, ft2          #; ft1  = 3.7060000, ft2  = 0.227
       0     7277        M 0x8000077c fld     ft2, 0(a5)             #; ft2  <~~ Doub[0x00100738]
       0     7278        M                                           #; (f:lsu) ft2  <-- 0.231
       0     7279        M                                           #; (f:fpu) ft1  <-- 3.9330000
       0     7280        M 0x80000780 fadd.d  ft1, ft1, ft3          #; ft1  = 3.9330000, ft3  = 0.228
       0     7281        M 0x80000784 fld     ft3, 8(a5)             #; ft3  <~~ Doub[0x00100740]
       0     7282        M                                           #; (f:lsu) ft3  <-- 0.232
       0     7283        M                                           #; (f:fpu) ft1  <-- 4.1610000
       0     7284        M 0x80000788 fadd.d  ft1, ft1, ft4          #; ft1  = 4.1610000, ft4  = 0.229
       0     7285        M 0x8000078c fld     ft4, 16(a5)            #; ft4  <~~ Doub[0x00100748]
       0     7286        M                                           #; (f:lsu) ft4  <-- 0.233
       0     7287        M                                           #; (f:fpu) ft1  <-- 4.3900000
       0     7288        M 0x80000790 fadd.d  ft1, ft1, ft5          #; ft1  = 4.3900000, ft5  = 0.23
       0     7289        M 0x80000794 fld     ft5, 24(a5)            #; ft5  <~~ Doub[0x00100750]
       0     7290        M                                           #; (f:lsu) ft5  <-- 0.234
       0     7291        M                                           #; (f:fpu) ft1  <-- 4.6200000
       0     7292        M 0x80000798 fadd.d  ft1, ft1, ft2          #; ft1  = 4.6200000, ft2  = 0.231
       0     7293        M 0x8000079c fld     ft2, 32(a5)            #; ft2  <~~ Doub[0x00100758]
       0     7294        M                                           #; (f:lsu) ft2  <-- 0.2350000
       0     7295        M                                           #; (f:fpu) ft1  <-- 4.8510000
       0     7296        M 0x800007a0 fadd.d  ft1, ft1, ft3          #; ft1  = 4.8510000, ft3  = 0.232
       0     7297        M 0x800007a4 fld     ft3, 40(a5)            #; ft3  <~~ Doub[0x00100760]
       0     7298        M                                           #; (f:lsu) ft3  <-- 0.2360000
       0     7299        M                                           #; (f:fpu) ft1  <-- 5.0830000
       0     7300        M 0x800007a8 fadd.d  ft1, ft1, ft4          #; ft1  = 5.0830000, ft4  = 0.233
       0     7301        M 0x800007ac fld     ft4, 48(a5)            #; ft4  <~~ Doub[0x00100768]
       0     7302        M                                           #; (f:lsu) ft4  <-- 0.2370000
       0     7303        M                                           #; (f:fpu) ft1  <-- 5.3160000
       0     7304        M 0x800007b0 fadd.d  ft1, ft1, ft5          #; ft1  = 5.3160000, ft5  = 0.234
       0     7305        M 0x800007b4 fld     ft5, 56(a5)            #; ft5  <~~ Doub[0x00100770]
       0     7306        M                                           #; (f:lsu) ft5  <-- 0.2380000
       0     7307        M                                           #; (f:fpu) ft1  <-- 5.5500000
       0     7308        M 0x800007b8 fadd.d  ft1, ft1, ft2          #; ft1  = 5.5500000, ft2  = 0.2350000
       0     7309        M 0x800007bc fld     ft2, 64(a5)            #; ft2  <~~ Doub[0x00100778]
       0     7310        M                                           #; (f:lsu) ft2  <-- 0.2390000
       0     7311        M                                           #; (f:fpu) ft1  <-- 5.7850000
       0     7312        M 0x800007c0 fadd.d  ft1, ft1, ft3          #; ft1  = 5.7850000, ft3  = 0.2360000
       0     7313        M 0x800007c4 fld     ft3, 72(a5)            #; ft3  <~~ Doub[0x00100780]
       0     7314        M                                           #; (f:lsu) ft3  <-- 0.24
       0     7315        M                                           #; (f:fpu) ft1  <-- 6.0210000
       0     7316        M 0x800007c8 fadd.d  ft1, ft1, ft4          #; ft1  = 6.0210000, ft4  = 0.2370000
       0     7317        M 0x800007cc fld     ft4, 80(a5)            #; ft4  <~~ Doub[0x00100788]
       0     7318        M                                           #; (f:lsu) ft4  <-- 0.241
       0     7319        M                                           #; (f:fpu) ft1  <-- 6.2580000
       0     7320        M 0x800007d0 fadd.d  ft1, ft1, ft5          #; ft1  = 6.2580000, ft5  = 0.2380000
       0     7321        M 0x800007d4 fld     ft5, 88(a5)            #; ft5  <~~ Doub[0x00100790]
       0     7322        M                                           #; (f:lsu) ft5  <-- 0.242
       0     7323        M                                           #; (f:fpu) ft1  <-- 6.4960000
       0     7324        M 0x800007d8 fadd.d  ft1, ft1, ft2          #; ft1  = 6.4960000, ft2  = 0.2390000
       0     7325        M 0x800007dc fld     ft2, 96(a5)            #; ft2  <~~ Doub[0x00100798]
       0     7326        M                                           #; (f:lsu) ft2  <-- 0.243
       0     7327        M                                           #; (f:fpu) ft1  <-- 6.7350000
       0     7328        M 0x800007e0 fadd.d  ft1, ft1, ft3          #; ft1  = 6.7350000, ft3  = 0.24
       0     7329        M 0x800007e4 fld     ft3, 104(a5)           #; ft3  <~~ Doub[0x001007a0]
       0     7330        M                                           #; (f:lsu) ft3  <-- 0.244
       0     7331        M                                           #; (f:fpu) ft1  <-- 6.9750000
       0     7332        M 0x800007e8 fadd.d  ft1, ft1, ft4          #; ft1  = 6.9750000, ft4  = 0.241
       0     7333        M 0x800007ec fld     ft4, 112(a5)           #; ft4  <~~ Doub[0x001007a8]
       0     7334        M                                           #; (f:lsu) ft4  <-- 0.245
       0     7335        M                                           #; (f:fpu) ft1  <-- 7.2160000
       0     7336        M 0x800007f0 fadd.d  ft1, ft1, ft5          #; ft1  = 7.2160000, ft5  = 0.242
       0     7337        M 0x800007f4 fld     ft5, 120(a5)           #; ft5  <~~ Doub[0x001007b0]
       0     7338        M                                           #; (f:lsu) ft5  <-- 0.246
       0     7339        M                                           #; (f:fpu) ft1  <-- 7.4580000
       0     7340        M 0x80000840 addi    a4, a4, 336            #; a4  = 336, (wrb) a4  <-- 672
                         M 0x800007f8 fadd.d  ft1, ft1, ft2          #; ft1  = 7.4580000, ft2  = 0.243
       0     7341        M 0x800007fc fld     ft2, 128(a5)           #; ft2  <~~ Doub[0x001007b8]
       0     7342        M                                           #; (f:lsu) ft2  <-- 0.247
       0     7343        M 0x80000848 bne     a4, a2, pc - 360       #; a4  = 672, a2  = 1344, taken, goto 0x800006e0
                         M                                           #; (f:fpu) ft1  <-- 7.7010000
       0     7344        M 0x800006e0 add     a5, a1, a4             #; a1  = 0x001005e8, a4  = 672, (wrb) a5  <-- 0x00100888
                         M 0x80000800 fadd.d  ft1, ft1, ft3          #; ft1  = 7.7010000, ft3  = 0.244
       0     7345        M 0x80000804 fld     ft3, 136(a5)           #; ft3  <~~ Doub[0x001007c0]
       0     7346        M                                           #; (f:lsu) ft3  <-- 0.248
       0     7347        M                                           #; (f:fpu) ft1  <-- 7.9450000
       0     7348        M 0x80000808 fadd.d  ft1, ft1, ft4          #; ft1  = 7.9450000, ft4  = 0.245
       0     7349        M 0x8000080c fld     ft4, 144(a5)           #; ft4  <~~ Doub[0x001007c8]
       0     7350        M                                           #; (f:lsu) ft4  <-- 0.249
       0     7351        M                                           #; (f:fpu) ft1  <-- 8.1900000
       0     7352        M 0x80000810 fadd.d  ft1, ft1, ft5          #; ft1  = 8.1900000, ft5  = 0.246
       0     7353        M 0x80000814 fld     ft5, 152(a5)           #; ft5  <~~ Doub[0x001007d0]
       0     7354        M                                           #; (f:lsu) ft5  <-- 0.25
       0     7355        M                                           #; (f:fpu) ft1  <-- 8.4360000
       0     7356        M 0x80000818 fadd.d  ft1, ft1, ft2          #; ft1  = 8.4360000, ft2  = 0.247
       0     7357        M 0x8000081c fld     ft2, 160(a5)           #; ft2  <~~ Doub[0x001007d8]
       0     7358        M                                           #; (f:lsu) ft2  <-- 0.251
       0     7359        M                                           #; (f:fpu) ft1  <-- 8.6830000
       0     7360        M 0x80000820 fadd.d  ft1, ft1, ft3          #; ft1  = 8.6830000, ft3  = 0.248
       0     7363        M                                           #; (f:fpu) ft1  <-- 8.9310000
       0     7364        M 0x80000824 fadd.d  ft1, ft1, ft4          #; ft1  = 8.9310000, ft4  = 0.249
       0     7367        M                                           #; (f:fpu) ft1  <-- 9.1800000
       0     7368        M 0x80000828 fadd.d  ft1, ft1, ft5          #; ft1  = 9.1800000, ft5  = 0.25
       0     7371        M                                           #; (f:fpu) ft1  <-- 9.4300000
       0     7372        M 0x8000082c fadd.d  ft1, ft1, ft2          #; ft1  = 9.4300000, ft2  = 0.251
       0     7375        M                                           #; (f:fpu) ft1  <-- 9.6810000
       0     7376        M 0x80000830 fadd.d  ft0, ft1, ft0          #; ft1  = 9.6810000, ft0  = 109.7250000
       0     7379        M                                           #; (f:fpu) ft0  <-- 119.4060000
       0     7380        M 0x80000834 fadd.d  ft0, ft1, ft0          #; ft1  = 9.6810000, ft0  = 119.4060000
       0     7383        M                                           #; (f:fpu) ft0  <-- 129.0870000
       0     7384        M 0x80000838 fadd.d  ft0, ft1, ft0          #; ft1  = 9.6810000, ft0  = 129.0870000
       0     7387        M                                           #; (f:fpu) ft0  <-- 138.7680000
       0     7388        M 0x8000083c fadd.d  ft0, ft1, ft0          #; ft1  = 9.6810000, ft0  = 138.7680000
       0     7391        M                                           #; (f:fpu) ft0  <-- 148.4490000
       0     7392        M 0x80000844 fadd.d  ft0, ft1, ft0          #; ft1  = 9.6810000, ft0  = 148.4490000
       0     7393        M 0x800006e4 fld     ft1, 3928(a5)          #; ft1  <~~ Doub[0x001007e0]
       0     7394        M 0x800006e8 fld     ft2, 3936(a5)          #; ft2  <~~ Doub[0x001007e8], (f:lsu) ft1  <-- 0.252
       0     7395        M 0x800006ec fld     ft3, 3944(a5)          #; ft3  <~~ Doub[0x001007f0], (f:fpu) ft0  <-- 158.1300000
       0     7396        M 0x800006f0 fld     ft4, 3952(a5)          #; ft4  <~~ Doub[0x001007f8], (f:lsu) ft2  <-- 0.253
       0     7397        M 0x800006f4 fld     ft5, 3960(a5)          #; ft5  <~~ Doub[0x00100800], (f:lsu) ft3  <-- 0.254
       0     7398        M 0x800006f8 fadd.d  ft1, ft2, ft1          #; ft2  = 0.253, ft1  = 0.252, (f:lsu) ft4  <-- 0.255
       0     7399        M 0x800006fc fld     ft2, 3968(a5)          #; ft2  <~~ Doub[0x00100808], (f:lsu) ft5  <-- 0.256
       0     7400        M                                           #; (f:lsu) ft2  <-- 0.257
       0     7401        M                                           #; (f:fpu) ft1  <-- 0.505
       0     7402        M 0x80000700 fadd.d  ft1, ft1, ft3          #; ft1  = 0.505, ft3  = 0.254
       0     7403        M 0x80000704 fld     ft3, 3976(a5)          #; ft3  <~~ Doub[0x00100810]
       0     7404        M                                           #; (f:lsu) ft3  <-- 0.258
       0     7405        M                                           #; (f:fpu) ft1  <-- 0.759
       0     7406        M 0x80000708 fadd.d  ft1, ft1, ft4          #; ft1  = 0.759, ft4  = 0.255
       0     7407        M 0x8000070c fld     ft4, 3984(a5)          #; ft4  <~~ Doub[0x00100818]
       0     7408        M                                           #; (f:lsu) ft4  <-- 0.259
       0     7409        M                                           #; (f:fpu) ft1  <-- 1.014
       0     7410        M 0x80000710 fadd.d  ft1, ft1, ft5          #; ft1  = 1.014, ft5  = 0.256
       0     7411        M 0x80000714 fld     ft5, 3992(a5)          #; ft5  <~~ Doub[0x00100820]
       0     7412        M                                           #; (f:lsu) ft5  <-- 0.26
       0     7413        M                                           #; (f:fpu) ft1  <-- 1.27
       0     7414        M 0x80000718 fadd.d  ft1, ft1, ft2          #; ft1  = 1.27, ft2  = 0.257
       0     7415        M 0x8000071c fld     ft2, 4000(a5)          #; ft2  <~~ Doub[0x00100828]
       0     7416        M                                           #; (f:lsu) ft2  <-- 0.261
       0     7417        M                                           #; (f:fpu) ft1  <-- 1.5270000
       0     7418        M 0x80000720 fadd.d  ft1, ft1, ft3          #; ft1  = 1.5270000, ft3  = 0.258
       0     7419        M 0x80000724 fld     ft3, 4008(a5)          #; ft3  <~~ Doub[0x00100830]
       0     7420        M                                           #; (f:lsu) ft3  <-- 0.262
       0     7421        M                                           #; (f:fpu) ft1  <-- 1.7850000
       0     7422        M 0x80000728 fadd.d  ft1, ft1, ft4          #; ft1  = 1.7850000, ft4  = 0.259
       0     7423        M 0x8000072c fld     ft4, 4016(a5)          #; ft4  <~~ Doub[0x00100838]
       0     7424        M                                           #; (f:lsu) ft4  <-- 0.263
       0     7425        M                                           #; (f:fpu) ft1  <-- 2.044
       0     7426        M 0x80000730 fadd.d  ft1, ft1, ft5          #; ft1  = 2.044, ft5  = 0.26
       0     7427        M 0x80000734 fld     ft5, 4024(a5)          #; ft5  <~~ Doub[0x00100840]
       0     7428        M                                           #; (f:lsu) ft5  <-- 0.264
       0     7429        M                                           #; (f:fpu) ft1  <-- 2.3040000
       0     7430        M 0x80000738 fadd.d  ft1, ft1, ft2          #; ft1  = 2.3040000, ft2  = 0.261
       0     7431        M 0x8000073c fld     ft2, 4032(a5)          #; ft2  <~~ Doub[0x00100848]
       0     7432        M                                           #; (f:lsu) ft2  <-- 0.265
       0     7433        M                                           #; (f:fpu) ft1  <-- 2.5650000
       0     7434        M 0x80000740 fadd.d  ft1, ft1, ft3          #; ft1  = 2.5650000, ft3  = 0.262
       0     7435        M 0x80000744 fld     ft3, 4040(a5)          #; ft3  <~~ Doub[0x00100850]
       0     7436        M                                           #; (f:lsu) ft3  <-- 0.266
       0     7437        M                                           #; (f:fpu) ft1  <-- 2.8270000
       0     7438        M 0x80000748 fadd.d  ft1, ft1, ft4          #; ft1  = 2.8270000, ft4  = 0.263
       0     7439        M 0x8000074c fld     ft4, 4048(a5)          #; ft4  <~~ Doub[0x00100858]
       0     7440        M                                           #; (f:lsu) ft4  <-- 0.267
       0     7441        M                                           #; (f:fpu) ft1  <-- 3.0900000
       0     7442        M 0x80000750 fadd.d  ft1, ft1, ft5          #; ft1  = 3.0900000, ft5  = 0.264
       0     7443        M 0x80000754 fld     ft5, 4056(a5)          #; ft5  <~~ Doub[0x00100860]
       0     7444        M                                           #; (f:lsu) ft5  <-- 0.268
       0     7445        M                                           #; (f:fpu) ft1  <-- 3.354
       0     7446        M 0x80000758 fadd.d  ft1, ft1, ft2          #; ft1  = 3.354, ft2  = 0.265
       0     7447        M 0x8000075c fld     ft2, 4064(a5)          #; ft2  <~~ Doub[0x00100868]
       0     7448        M                                           #; (f:lsu) ft2  <-- 0.269
       0     7449        M                                           #; (f:fpu) ft1  <-- 3.619
       0     7450        M 0x80000760 fadd.d  ft1, ft1, ft3          #; ft1  = 3.619, ft3  = 0.266
       0     7451        M 0x80000764 fld     ft3, 4072(a5)          #; ft3  <~~ Doub[0x00100870]
       0     7452        M                                           #; (f:lsu) ft3  <-- 0.27
       0     7453        M                                           #; (f:fpu) ft1  <-- 3.8850000
       0     7454        M 0x80000768 fadd.d  ft1, ft1, ft4          #; ft1  = 3.8850000, ft4  = 0.267
       0     7455        M 0x8000076c fld     ft4, 4080(a5)          #; ft4  <~~ Doub[0x00100878]
       0     7456        M                                           #; (f:lsu) ft4  <-- 0.271
       0     7457        M                                           #; (f:fpu) ft1  <-- 4.152
       0     7458        M 0x80000770 fadd.d  ft1, ft1, ft5          #; ft1  = 4.152, ft5  = 0.268
       0     7459        M 0x80000774 fld     ft5, 4088(a5)          #; ft5  <~~ Doub[0x00100880]
       0     7460        M                                           #; (f:lsu) ft5  <-- 0.272
       0     7461        M                                           #; (f:fpu) ft1  <-- 4.42
       0     7462        M 0x80000778 fadd.d  ft1, ft1, ft2          #; ft1  = 4.42, ft2  = 0.269
       0     7463        M 0x8000077c fld     ft2, 0(a5)             #; ft2  <~~ Doub[0x00100888]
       0     7464        M                                           #; (f:lsu) ft2  <-- 0.273
       0     7465        M                                           #; (f:fpu) ft1  <-- 4.689
       0     7466        M 0x80000780 fadd.d  ft1, ft1, ft3          #; ft1  = 4.689, ft3  = 0.27
       0     7467        M 0x80000784 fld     ft3, 8(a5)             #; ft3  <~~ Doub[0x00100890]
       0     7468        M                                           #; (f:lsu) ft3  <-- 0.274
       0     7469        M                                           #; (f:fpu) ft1  <-- 4.959
       0     7470        M 0x80000788 fadd.d  ft1, ft1, ft4          #; ft1  = 4.959, ft4  = 0.271
       0     7471        M 0x8000078c fld     ft4, 16(a5)            #; ft4  <~~ Doub[0x00100898]
       0     7472        M                                           #; (f:lsu) ft4  <-- 0.275
       0     7473        M                                           #; (f:fpu) ft1  <-- 5.2300000
       0     7474        M 0x80000790 fadd.d  ft1, ft1, ft5          #; ft1  = 5.2300000, ft5  = 0.272
       0     7475        M 0x80000794 fld     ft5, 24(a5)            #; ft5  <~~ Doub[0x001008a0]
       0     7476        M                                           #; (f:lsu) ft5  <-- 0.276
       0     7477        M                                           #; (f:fpu) ft1  <-- 5.502
       0     7478        M 0x80000798 fadd.d  ft1, ft1, ft2          #; ft1  = 5.502, ft2  = 0.273
       0     7479        M 0x8000079c fld     ft2, 32(a5)            #; ft2  <~~ Doub[0x001008a8]
       0     7480        M                                           #; (f:lsu) ft2  <-- 0.277
       0     7481        M                                           #; (f:fpu) ft1  <-- 5.7750000
       0     7482        M 0x800007a0 fadd.d  ft1, ft1, ft3          #; ft1  = 5.7750000, ft3  = 0.274
       0     7483        M 0x800007a4 fld     ft3, 40(a5)            #; ft3  <~~ Doub[0x001008b0]
       0     7484        M                                           #; (f:lsu) ft3  <-- 0.278
       0     7485        M                                           #; (f:fpu) ft1  <-- 6.0490000
       0     7486        M 0x800007a8 fadd.d  ft1, ft1, ft4          #; ft1  = 6.0490000, ft4  = 0.275
       0     7487        M 0x800007ac fld     ft4, 48(a5)            #; ft4  <~~ Doub[0x001008b8]
       0     7488        M                                           #; (f:lsu) ft4  <-- 0.279
       0     7489        M                                           #; (f:fpu) ft1  <-- 6.324
       0     7490        M 0x800007b0 fadd.d  ft1, ft1, ft5          #; ft1  = 6.324, ft5  = 0.276
       0     7491        M 0x800007b4 fld     ft5, 56(a5)            #; ft5  <~~ Doub[0x001008c0]
       0     7492        M                                           #; (f:lsu) ft5  <-- 0.28
       0     7493        M                                           #; (f:fpu) ft1  <-- 6.6
       0     7494        M 0x800007b8 fadd.d  ft1, ft1, ft2          #; ft1  = 6.6, ft2  = 0.277
       0     7495        M 0x800007bc fld     ft2, 64(a5)            #; ft2  <~~ Doub[0x001008c8]
       0     7496        M                                           #; (f:lsu) ft2  <-- 0.281
       0     7497        M                                           #; (f:fpu) ft1  <-- 6.877
       0     7498        M 0x800007c0 fadd.d  ft1, ft1, ft3          #; ft1  = 6.877, ft3  = 0.278
       0     7499        M 0x800007c4 fld     ft3, 72(a5)            #; ft3  <~~ Doub[0x001008d0]
       0     7500        M                                           #; (f:lsu) ft3  <-- 0.2820000
       0     7501        M                                           #; (f:fpu) ft1  <-- 7.1550000
       0     7502        M 0x800007c8 fadd.d  ft1, ft1, ft4          #; ft1  = 7.1550000, ft4  = 0.279
       0     7503        M 0x800007cc fld     ft4, 80(a5)            #; ft4  <~~ Doub[0x001008d8]
       0     7504        M                                           #; (f:lsu) ft4  <-- 0.2830000
       0     7505        M                                           #; (f:fpu) ft1  <-- 7.4340000
       0     7506        M 0x800007d0 fadd.d  ft1, ft1, ft5          #; ft1  = 7.4340000, ft5  = 0.28
       0     7507        M 0x800007d4 fld     ft5, 88(a5)            #; ft5  <~~ Doub[0x001008e0]
       0     7508        M                                           #; (f:lsu) ft5  <-- 0.2840000
       0     7509        M                                           #; (f:fpu) ft1  <-- 7.7140000
       0     7510        M 0x800007d8 fadd.d  ft1, ft1, ft2          #; ft1  = 7.7140000, ft2  = 0.281
       0     7511        M 0x800007dc fld     ft2, 96(a5)            #; ft2  <~~ Doub[0x001008e8]
       0     7512        M                                           #; (f:lsu) ft2  <-- 0.2850000
       0     7513        M                                           #; (f:fpu) ft1  <-- 7.9950000
       0     7514        M 0x800007e0 fadd.d  ft1, ft1, ft3          #; ft1  = 7.9950000, ft3  = 0.2820000
       0     7515        M 0x800007e4 fld     ft3, 104(a5)           #; ft3  <~~ Doub[0x001008f0]
       0     7516        M                                           #; (f:lsu) ft3  <-- 0.2860000
       0     7517        M                                           #; (f:fpu) ft1  <-- 8.277
       0     7518        M 0x800007e8 fadd.d  ft1, ft1, ft4          #; ft1  = 8.277, ft4  = 0.2830000
       0     7519        M 0x800007ec fld     ft4, 112(a5)           #; ft4  <~~ Doub[0x001008f8]
       0     7520        M                                           #; (f:lsu) ft4  <-- 0.2870000
       0     7521        M                                           #; (f:fpu) ft1  <-- 8.5600000
       0     7522        M 0x800007f0 fadd.d  ft1, ft1, ft5          #; ft1  = 8.5600000, ft5  = 0.2840000
       0     7523        M 0x800007f4 fld     ft5, 120(a5)           #; ft5  <~~ Doub[0x00100900]
       0     7524        M                                           #; (f:lsu) ft5  <-- 0.2880000
       0     7525        M                                           #; (f:fpu) ft1  <-- 8.844
       0     7526        M 0x80000840 addi    a4, a4, 336            #; a4  = 672, (wrb) a4  <-- 1008
                         M 0x800007f8 fadd.d  ft1, ft1, ft2          #; ft1  = 8.844, ft2  = 0.2850000
       0     7527        M 0x800007fc fld     ft2, 128(a5)           #; ft2  <~~ Doub[0x00100908]
       0     7528        M                                           #; (f:lsu) ft2  <-- 0.289
       0     7529        M 0x80000848 bne     a4, a2, pc - 360       #; a4  = 1008, a2  = 1344, taken, goto 0x800006e0
                         M                                           #; (f:fpu) ft1  <-- 9.129
       0     7530        M 0x800006e0 add     a5, a1, a4             #; a1  = 0x001005e8, a4  = 1008, (wrb) a5  <-- 0x001009d8
                         M 0x80000800 fadd.d  ft1, ft1, ft3          #; ft1  = 9.129, ft3  = 0.2860000
       0     7531        M 0x80000804 fld     ft3, 136(a5)           #; ft3  <~~ Doub[0x00100910]
       0     7532        M                                           #; (f:lsu) ft3  <-- 0.29
       0     7533        M                                           #; (f:fpu) ft1  <-- 9.415
       0     7534        M 0x80000808 fadd.d  ft1, ft1, ft4          #; ft1  = 9.415, ft4  = 0.2870000
       0     7535        M 0x8000080c fld     ft4, 144(a5)           #; ft4  <~~ Doub[0x00100918]
       0     7536        M                                           #; (f:lsu) ft4  <-- 0.291
       0     7537        M                                           #; (f:fpu) ft1  <-- 9.702
       0     7538        M 0x80000810 fadd.d  ft1, ft1, ft5          #; ft1  = 9.702, ft5  = 0.2880000
       0     7539        M 0x80000814 fld     ft5, 152(a5)           #; ft5  <~~ Doub[0x00100920]
       0     7540        M                                           #; (f:lsu) ft5  <-- 0.292
       0     7541        M                                           #; (f:fpu) ft1  <-- 9.99
       0     7542        M 0x80000818 fadd.d  ft1, ft1, ft2          #; ft1  = 9.99, ft2  = 0.289
       0     7543        M 0x8000081c fld     ft2, 160(a5)           #; ft2  <~~ Doub[0x00100928]
       0     7544        M                                           #; (f:lsu) ft2  <-- 0.293
       0     7545        M                                           #; (f:fpu) ft1  <-- 10.279
       0     7546        M 0x80000820 fadd.d  ft1, ft1, ft3          #; ft1  = 10.279, ft3  = 0.29
       0     7549        M                                           #; (f:fpu) ft1  <-- 10.5690000
       0     7550        M 0x80000824 fadd.d  ft1, ft1, ft4          #; ft1  = 10.5690000, ft4  = 0.291
       0     7553        M                                           #; (f:fpu) ft1  <-- 10.86
       0     7554        M 0x80000828 fadd.d  ft1, ft1, ft5          #; ft1  = 10.86, ft5  = 0.292
       0     7557        M                                           #; (f:fpu) ft1  <-- 11.152
       0     7558        M 0x8000082c fadd.d  ft1, ft1, ft2          #; ft1  = 11.152, ft2  = 0.293
       0     7561        M                                           #; (f:fpu) ft1  <-- 11.4450000
       0     7562        M 0x80000830 fadd.d  ft0, ft1, ft0          #; ft1  = 11.4450000, ft0  = 158.1300000
       0     7565        M                                           #; (f:fpu) ft0  <-- 169.5750000
       0     7566        M 0x80000834 fadd.d  ft0, ft1, ft0          #; ft1  = 11.4450000, ft0  = 169.5750000
       0     7569        M                                           #; (f:fpu) ft0  <-- 181.0200000
       0     7570        M 0x80000838 fadd.d  ft0, ft1, ft0          #; ft1  = 11.4450000, ft0  = 181.0200000
       0     7573        M                                           #; (f:fpu) ft0  <-- 192.4650000
       0     7574        M 0x8000083c fadd.d  ft0, ft1, ft0          #; ft1  = 11.4450000, ft0  = 192.4650000
       0     7577        M                                           #; (f:fpu) ft0  <-- 203.9100000
       0     7578        M 0x80000844 fadd.d  ft0, ft1, ft0          #; ft1  = 11.4450000, ft0  = 203.9100000
       0     7579        M 0x800006e4 fld     ft1, 3928(a5)          #; ft1  <~~ Doub[0x00100930]
       0     7580        M 0x800006e8 fld     ft2, 3936(a5)          #; ft2  <~~ Doub[0x00100938], (f:lsu) ft1  <-- 0.294
       0     7581        M 0x800006ec fld     ft3, 3944(a5)          #; ft3  <~~ Doub[0x00100940], (f:fpu) ft0  <-- 215.3550000
       0     7582        M 0x800006f0 fld     ft4, 3952(a5)          #; ft4  <~~ Doub[0x00100948], (f:lsu) ft2  <-- 0.295
       0     7583        M 0x800006f4 fld     ft5, 3960(a5)          #; ft5  <~~ Doub[0x00100950], (f:lsu) ft3  <-- 0.296
       0     7584        M 0x800006f8 fadd.d  ft1, ft2, ft1          #; ft2  = 0.295, ft1  = 0.294, (f:lsu) ft4  <-- 0.297
       0     7585        M 0x800006fc fld     ft2, 3968(a5)          #; ft2  <~~ Doub[0x00100958], (f:lsu) ft5  <-- 0.298
       0     7586        M                                           #; (f:lsu) ft2  <-- 0.299
       0     7587        M                                           #; (f:fpu) ft1  <-- 0.589
       0     7588        M 0x80000700 fadd.d  ft1, ft1, ft3          #; ft1  = 0.589, ft3  = 0.296
       0     7589        M 0x80000704 fld     ft3, 3976(a5)          #; ft3  <~~ Doub[0x00100960]
       0     7590        M                                           #; (f:lsu) ft3  <-- 0.3
       0     7591        M                                           #; (f:fpu) ft1  <-- 0.885
       0     7592        M 0x80000708 fadd.d  ft1, ft1, ft4          #; ft1  = 0.885, ft4  = 0.297
       0     7593        M 0x8000070c fld     ft4, 3984(a5)          #; ft4  <~~ Doub[0x00100968]
       0     7594        M                                           #; (f:lsu) ft4  <-- 0.301
       0     7595        M                                           #; (f:fpu) ft1  <-- 1.182
       0     7596        M 0x80000710 fadd.d  ft1, ft1, ft5          #; ft1  = 1.182, ft5  = 0.298
       0     7597        M 0x80000714 fld     ft5, 3992(a5)          #; ft5  <~~ Doub[0x00100970]
       0     7598        M                                           #; (f:lsu) ft5  <-- 0.302
       0     7599        M                                           #; (f:fpu) ft1  <-- 1.48
       0     7600        M 0x80000718 fadd.d  ft1, ft1, ft2          #; ft1  = 1.48, ft2  = 0.299
       0     7601        M 0x8000071c fld     ft2, 4000(a5)          #; ft2  <~~ Doub[0x00100978]
       0     7602        M                                           #; (f:lsu) ft2  <-- 0.303
       0     7603        M                                           #; (f:fpu) ft1  <-- 1.779
       0     7604        M 0x80000720 fadd.d  ft1, ft1, ft3          #; ft1  = 1.779, ft3  = 0.3
       0     7605        M 0x80000724 fld     ft3, 4008(a5)          #; ft3  <~~ Doub[0x00100980]
       0     7606        M                                           #; (f:lsu) ft3  <-- 0.304
       0     7607        M                                           #; (f:fpu) ft1  <-- 2.0790000
       0     7608        M 0x80000728 fadd.d  ft1, ft1, ft4          #; ft1  = 2.0790000, ft4  = 0.301
       0     7609        M 0x8000072c fld     ft4, 4016(a5)          #; ft4  <~~ Doub[0x00100988]
       0     7610        M                                           #; (f:lsu) ft4  <-- 0.305
       0     7611        M                                           #; (f:fpu) ft1  <-- 2.38
       0     7612        M 0x80000730 fadd.d  ft1, ft1, ft5          #; ft1  = 2.38, ft5  = 0.302
       0     7613        M 0x80000734 fld     ft5, 4024(a5)          #; ft5  <~~ Doub[0x00100990]
       0     7614        M                                           #; (f:lsu) ft5  <-- 0.306
       0     7615        M                                           #; (f:fpu) ft1  <-- 2.682
       0     7616        M 0x80000738 fadd.d  ft1, ft1, ft2          #; ft1  = 2.682, ft2  = 0.303
       0     7617        M 0x8000073c fld     ft2, 4032(a5)          #; ft2  <~~ Doub[0x00100998]
       0     7618        M                                           #; (f:lsu) ft2  <-- 0.307
       0     7619        M                                           #; (f:fpu) ft1  <-- 2.985
       0     7620        M 0x80000740 fadd.d  ft1, ft1, ft3          #; ft1  = 2.985, ft3  = 0.304
       0     7621        M 0x80000744 fld     ft3, 4040(a5)          #; ft3  <~~ Doub[0x001009a0]
       0     7622        M                                           #; (f:lsu) ft3  <-- 0.308
       0     7623        M                                           #; (f:fpu) ft1  <-- 3.2890000
       0     7624        M 0x80000748 fadd.d  ft1, ft1, ft4          #; ft1  = 3.2890000, ft4  = 0.305
       0     7625        M 0x8000074c fld     ft4, 4048(a5)          #; ft4  <~~ Doub[0x001009a8]
       0     7626        M                                           #; (f:lsu) ft4  <-- 0.309
       0     7627        M                                           #; (f:fpu) ft1  <-- 3.594
       0     7628        M 0x80000750 fadd.d  ft1, ft1, ft5          #; ft1  = 3.594, ft5  = 0.306
       0     7629        M 0x80000754 fld     ft5, 4056(a5)          #; ft5  <~~ Doub[0x001009b0]
       0     7630        M                                           #; (f:lsu) ft5  <-- 0.31
       0     7631        M                                           #; (f:fpu) ft1  <-- 3.9
       0     7632        M 0x80000758 fadd.d  ft1, ft1, ft2          #; ft1  = 3.9, ft2  = 0.307
       0     7633        M 0x8000075c fld     ft2, 4064(a5)          #; ft2  <~~ Doub[0x001009b8]
       0     7634        M                                           #; (f:lsu) ft2  <-- 0.311
       0     7635        M                                           #; (f:fpu) ft1  <-- 4.207
       0     7636        M 0x80000760 fadd.d  ft1, ft1, ft3          #; ft1  = 4.207, ft3  = 0.308
       0     7637        M 0x80000764 fld     ft3, 4072(a5)          #; ft3  <~~ Doub[0x001009c0]
       0     7638        M                                           #; (f:lsu) ft3  <-- 0.312
       0     7639        M                                           #; (f:fpu) ft1  <-- 4.515
       0     7640        M 0x80000768 fadd.d  ft1, ft1, ft4          #; ft1  = 4.515, ft4  = 0.309
       0     7641        M 0x8000076c fld     ft4, 4080(a5)          #; ft4  <~~ Doub[0x001009c8]
       0     7642        M                                           #; (f:lsu) ft4  <-- 0.313
       0     7643        M                                           #; (f:fpu) ft1  <-- 4.824
       0     7644        M 0x80000770 fadd.d  ft1, ft1, ft5          #; ft1  = 4.824, ft5  = 0.31
       0     7645        M 0x80000774 fld     ft5, 4088(a5)          #; ft5  <~~ Doub[0x001009d0]
       0     7646        M                                           #; (f:lsu) ft5  <-- 0.314
       0     7647        M                                           #; (f:fpu) ft1  <-- 5.1340000
       0     7648        M 0x80000778 fadd.d  ft1, ft1, ft2          #; ft1  = 5.1340000, ft2  = 0.311
       0     7649        M 0x8000077c fld     ft2, 0(a5)             #; ft2  <~~ Doub[0x001009d8]
       0     7650        M                                           #; (f:lsu) ft2  <-- 0.315
       0     7651        M                                           #; (f:fpu) ft1  <-- 5.4450000
       0     7652        M 0x80000780 fadd.d  ft1, ft1, ft3          #; ft1  = 5.4450000, ft3  = 0.312
       0     7653        M 0x80000784 fld     ft3, 8(a5)             #; ft3  <~~ Doub[0x001009e0]
       0     7654        M                                           #; (f:lsu) ft3  <-- 0.316
       0     7655        M                                           #; (f:fpu) ft1  <-- 5.757
       0     7656        M 0x80000788 fadd.d  ft1, ft1, ft4          #; ft1  = 5.757, ft4  = 0.313
       0     7657        M 0x8000078c fld     ft4, 16(a5)            #; ft4  <~~ Doub[0x001009e8]
       0     7658        M                                           #; (f:lsu) ft4  <-- 0.317
       0     7659        M                                           #; (f:fpu) ft1  <-- 6.0700000
       0     7660        M 0x80000790 fadd.d  ft1, ft1, ft5          #; ft1  = 6.0700000, ft5  = 0.314
       0     7661        M 0x80000794 fld     ft5, 24(a5)            #; ft5  <~~ Doub[0x001009f0]
       0     7662        M                                           #; (f:lsu) ft5  <-- 0.318
       0     7663        M                                           #; (f:fpu) ft1  <-- 6.3840000
       0     7664        M 0x80000798 fadd.d  ft1, ft1, ft2          #; ft1  = 6.3840000, ft2  = 0.315
       0     7665        M 0x8000079c fld     ft2, 32(a5)            #; ft2  <~~ Doub[0x001009f8]
       0     7666        M                                           #; (f:lsu) ft2  <-- 0.319
       0     7667        M                                           #; (f:fpu) ft1  <-- 6.699
       0     7668        M 0x800007a0 fadd.d  ft1, ft1, ft3          #; ft1  = 6.699, ft3  = 0.316
       0     7669        M 0x800007a4 fld     ft3, 40(a5)            #; ft3  <~~ Doub[0x00100a00]
       0     7670        M                                           #; (f:lsu) ft3  <-- 0.32
       0     7671        M                                           #; (f:fpu) ft1  <-- 7.015
       0     7672        M 0x800007a8 fadd.d  ft1, ft1, ft4          #; ft1  = 7.015, ft4  = 0.317
       0     7673        M 0x800007ac fld     ft4, 48(a5)            #; ft4  <~~ Doub[0x00100a08]
       0     7674        M                                           #; (f:lsu) ft4  <-- 0.321
       0     7675        M                                           #; (f:fpu) ft1  <-- 7.332
       0     7676        M 0x800007b0 fadd.d  ft1, ft1, ft5          #; ft1  = 7.332, ft5  = 0.318
       0     7677        M 0x800007b4 fld     ft5, 56(a5)            #; ft5  <~~ Doub[0x00100a10]
       0     7678        M                                           #; (f:lsu) ft5  <-- 0.322
       0     7679        M                                           #; (f:fpu) ft1  <-- 7.6500000
       0     7680        M 0x800007b8 fadd.d  ft1, ft1, ft2          #; ft1  = 7.6500000, ft2  = 0.319
       0     7681        M 0x800007bc fld     ft2, 64(a5)            #; ft2  <~~ Doub[0x00100a18]
       0     7682        M                                           #; (f:lsu) ft2  <-- 0.323
       0     7683        M                                           #; (f:fpu) ft1  <-- 7.9690000
       0     7684        M 0x800007c0 fadd.d  ft1, ft1, ft3          #; ft1  = 7.9690000, ft3  = 0.32
       0     7685        M 0x800007c4 fld     ft3, 72(a5)            #; ft3  <~~ Doub[0x00100a20]
       0     7686        M                                           #; (f:lsu) ft3  <-- 0.324
       0     7687        M                                           #; (f:fpu) ft1  <-- 8.289
       0     7688        M 0x800007c8 fadd.d  ft1, ft1, ft4          #; ft1  = 8.289, ft4  = 0.321
       0     7689        M 0x800007cc fld     ft4, 80(a5)            #; ft4  <~~ Doub[0x00100a28]
       0     7690        M                                           #; (f:lsu) ft4  <-- 0.325
       0     7691        M                                           #; (f:fpu) ft1  <-- 8.61
       0     7692        M 0x800007d0 fadd.d  ft1, ft1, ft5          #; ft1  = 8.61, ft5  = 0.322
       0     7693        M 0x800007d4 fld     ft5, 88(a5)            #; ft5  <~~ Doub[0x00100a30]
       0     7694        M                                           #; (f:lsu) ft5  <-- 0.326
       0     7695        M                                           #; (f:fpu) ft1  <-- 8.9320000
       0     7696        M 0x800007d8 fadd.d  ft1, ft1, ft2          #; ft1  = 8.9320000, ft2  = 0.323
       0     7697        M 0x800007dc fld     ft2, 96(a5)            #; ft2  <~~ Doub[0x00100a38]
       0     7698        M                                           #; (f:lsu) ft2  <-- 0.327
       0     7699        M                                           #; (f:fpu) ft1  <-- 9.2550000
       0     7700        M 0x800007e0 fadd.d  ft1, ft1, ft3          #; ft1  = 9.2550000, ft3  = 0.324
       0     7701        M 0x800007e4 fld     ft3, 104(a5)           #; ft3  <~~ Doub[0x00100a40]
       0     7702        M                                           #; (f:lsu) ft3  <-- 0.328
       0     7703        M                                           #; (f:fpu) ft1  <-- 9.5790000
       0     7704        M 0x800007e8 fadd.d  ft1, ft1, ft4          #; ft1  = 9.5790000, ft4  = 0.325
       0     7705        M 0x800007ec fld     ft4, 112(a5)           #; ft4  <~~ Doub[0x00100a48]
       0     7706        M                                           #; (f:lsu) ft4  <-- 0.329
       0     7707        M                                           #; (f:fpu) ft1  <-- 9.9040000
       0     7708        M 0x800007f0 fadd.d  ft1, ft1, ft5          #; ft1  = 9.9040000, ft5  = 0.326
       0     7709        M 0x800007f4 fld     ft5, 120(a5)           #; ft5  <~~ Doub[0x00100a50]
       0     7710        M                                           #; (f:lsu) ft5  <-- 0.33
       0     7711        M                                           #; (f:fpu) ft1  <-- 10.2300000
       0     7712        M 0x80000840 addi    a4, a4, 336            #; a4  = 1008, (wrb) a4  <-- 1344
                         M 0x800007f8 fadd.d  ft1, ft1, ft2          #; ft1  = 10.2300000, ft2  = 0.327
       0     7713        M 0x800007fc fld     ft2, 128(a5)           #; ft2  <~~ Doub[0x00100a58]
       0     7714        M                                           #; (f:lsu) ft2  <-- 0.331
       0     7715        M 0x80000848 bne     a4, a2, pc - 360       #; a4  = 1344, a2  = 1344, not taken
                         M                                           #; (f:fpu) ft1  <-- 10.5570000
       0     7716        M 0x8000084c addi    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 2
                         M 0x80000800 fadd.d  ft1, ft1, ft3          #; ft1  = 10.5570000, ft3  = 0.328
       0     7717        M 0x80000804 fld     ft3, 136(a5)           #; ft3  <~~ Doub[0x00100a60]
       0     7718        M                                           #; (f:lsu) ft3  <-- 0.332
       0     7719        M 0x80000850 addi    a1, a1, 1344           #; a1  = 0x001005e8, (wrb) a1  <-- 0x00100b28
                         M                                           #; (f:fpu) ft1  <-- 10.8850000
       0     7720        M 0x80000854 bne     a0, a3, pc - 376       #; a0  = 2, a3  = 3, taken, goto 0x800006dc
                         M 0x80000808 fadd.d  ft1, ft1, ft4          #; ft1  = 10.8850000, ft4  = 0.329
       0     7721        M 0x8000080c fld     ft4, 144(a5)           #; ft4  <~~ Doub[0x00100a68]
       0     7722        M 0x800006dc li      a4, 0                  #; (wrb) a4  <-- 0
                         M                                           #; (f:lsu) ft4  <-- 0.333
       0     7723        M 0x800006e0 add     a5, a1, a4             #; a1  = 0x00100b28, a4  = 0, (wrb) a5  <-- 0x00100b28
                         M                                           #; (f:fpu) ft1  <-- 11.2140000
       0     7724        M 0x80000810 fadd.d  ft1, ft1, ft5          #; ft1  = 11.2140000, ft5  = 0.33
       0     7725        M 0x80000814 fld     ft5, 152(a5)           #; ft5  <~~ Doub[0x00100a70]
       0     7726        M                                           #; (f:lsu) ft5  <-- 0.334
       0     7727        M                                           #; (f:fpu) ft1  <-- 11.5440000
       0     7728        M 0x80000818 fadd.d  ft1, ft1, ft2          #; ft1  = 11.5440000, ft2  = 0.331
       0     7729        M 0x8000081c fld     ft2, 160(a5)           #; ft2  <~~ Doub[0x00100a78]
       0     7730        M                                           #; (f:lsu) ft2  <-- 0.335
       0     7731        M                                           #; (f:fpu) ft1  <-- 11.8750000
       0     7732        M 0x80000820 fadd.d  ft1, ft1, ft3          #; ft1  = 11.8750000, ft3  = 0.332
       0     7735        M                                           #; (f:fpu) ft1  <-- 12.2070000
       0     7736        M 0x80000824 fadd.d  ft1, ft1, ft4          #; ft1  = 12.2070000, ft4  = 0.333
       0     7739        M                                           #; (f:fpu) ft1  <-- 12.54
       0     7740        M 0x80000828 fadd.d  ft1, ft1, ft5          #; ft1  = 12.54, ft5  = 0.334
       0     7743        M                                           #; (f:fpu) ft1  <-- 12.8740000
       0     7744        M 0x8000082c fadd.d  ft1, ft1, ft2          #; ft1  = 12.8740000, ft2  = 0.335
       0     7747        M                                           #; (f:fpu) ft1  <-- 13.209
       0     7748        M 0x80000830 fadd.d  ft0, ft1, ft0          #; ft1  = 13.209, ft0  = 215.3550000
       0     7751        M                                           #; (f:fpu) ft0  <-- 228.5640000
       0     7752        M 0x80000834 fadd.d  ft0, ft1, ft0          #; ft1  = 13.209, ft0  = 228.5640000
       0     7755        M                                           #; (f:fpu) ft0  <-- 241.7730000
       0     7756        M 0x80000838 fadd.d  ft0, ft1, ft0          #; ft1  = 13.209, ft0  = 241.7730000
       0     7759        M                                           #; (f:fpu) ft0  <-- 254.9820000
       0     7760        M 0x8000083c fadd.d  ft0, ft1, ft0          #; ft1  = 13.209, ft0  = 254.9820000
       0     7763        M                                           #; (f:fpu) ft0  <-- 268.1910000
       0     7764        M 0x80000844 fadd.d  ft0, ft1, ft0          #; ft1  = 13.209, ft0  = 268.1910000
       0     7765        M 0x800006e4 fld     ft1, 3928(a5)          #; ft1  <~~ Doub[0x00100a80]
       0     7766        M 0x800006e8 fld     ft2, 3936(a5)          #; ft2  <~~ Doub[0x00100a88], (f:lsu) ft1  <-- 0.336
       0     7767        M 0x800006ec fld     ft3, 3944(a5)          #; ft3  <~~ Doub[0x00100a90], (f:fpu) ft0  <-- 281.4000000
       0     7768        M 0x800006f0 fld     ft4, 3952(a5)          #; ft4  <~~ Doub[0x00100a98], (f:lsu) ft2  <-- 0.337
       0     7769        M 0x800006f4 fld     ft5, 3960(a5)          #; ft5  <~~ Doub[0x00100aa0], (f:lsu) ft3  <-- 0.338
       0     7770        M 0x800006f8 fadd.d  ft1, ft2, ft1          #; ft2  = 0.337, ft1  = 0.336, (f:lsu) ft4  <-- 0.339
       0     7771        M 0x800006fc fld     ft2, 3968(a5)          #; ft2  <~~ Doub[0x00100aa8], (f:lsu) ft5  <-- 0.34
       0     7772        M                                           #; (f:lsu) ft2  <-- 0.341
       0     7773        M                                           #; (f:fpu) ft1  <-- 0.673
       0     7774        M 0x80000700 fadd.d  ft1, ft1, ft3          #; ft1  = 0.673, ft3  = 0.338
       0     7775        M 0x80000704 fld     ft3, 3976(a5)          #; ft3  <~~ Doub[0x00100ab0]
       0     7776        M                                           #; (f:lsu) ft3  <-- 0.342
       0     7777        M                                           #; (f:fpu) ft1  <-- 1.0110000
       0     7778        M 0x80000708 fadd.d  ft1, ft1, ft4          #; ft1  = 1.0110000, ft4  = 0.339
       0     7779        M 0x8000070c fld     ft4, 3984(a5)          #; ft4  <~~ Doub[0x00100ab8]
       0     7780        M                                           #; (f:lsu) ft4  <-- 0.343
       0     7781        M                                           #; (f:fpu) ft1  <-- 1.35
       0     7782        M 0x80000710 fadd.d  ft1, ft1, ft5          #; ft1  = 1.35, ft5  = 0.34
       0     7783        M 0x80000714 fld     ft5, 3992(a5)          #; ft5  <~~ Doub[0x00100ac0]
       0     7784        M                                           #; (f:lsu) ft5  <-- 0.3440000
       0     7785        M                                           #; (f:fpu) ft1  <-- 1.6900000
       0     7786        M 0x80000718 fadd.d  ft1, ft1, ft2          #; ft1  = 1.6900000, ft2  = 0.341
       0     7787        M 0x8000071c fld     ft2, 4000(a5)          #; ft2  <~~ Doub[0x00100ac8]
       0     7788        M                                           #; (f:lsu) ft2  <-- 0.3450000
       0     7789        M                                           #; (f:fpu) ft1  <-- 2.031
       0     7790        M 0x80000720 fadd.d  ft1, ft1, ft3          #; ft1  = 2.031, ft3  = 0.342
       0     7791        M 0x80000724 fld     ft3, 4008(a5)          #; ft3  <~~ Doub[0x00100ad0]
       0     7792        M                                           #; (f:lsu) ft3  <-- 0.3460000
       0     7793        M                                           #; (f:fpu) ft1  <-- 2.373
       0     7794        M 0x80000728 fadd.d  ft1, ft1, ft4          #; ft1  = 2.373, ft4  = 0.343
       0     7795        M 0x8000072c fld     ft4, 4016(a5)          #; ft4  <~~ Doub[0x00100ad8]
       0     7796        M                                           #; (f:lsu) ft4  <-- 0.3470000
       0     7797        M                                           #; (f:fpu) ft1  <-- 2.716
       0     7798        M 0x80000730 fadd.d  ft1, ft1, ft5          #; ft1  = 2.716, ft5  = 0.3440000
       0     7799        M 0x80000734 fld     ft5, 4024(a5)          #; ft5  <~~ Doub[0x00100ae0]
       0     7800        M                                           #; (f:lsu) ft5  <-- 0.3480000
       0     7801        M                                           #; (f:fpu) ft1  <-- 3.06
       0     7802        M 0x80000738 fadd.d  ft1, ft1, ft2          #; ft1  = 3.06, ft2  = 0.3450000
       0     7803        M 0x8000073c fld     ft2, 4032(a5)          #; ft2  <~~ Doub[0x00100ae8]
       0     7804        M                                           #; (f:lsu) ft2  <-- 0.3490000
       0     7805        M                                           #; (f:fpu) ft1  <-- 3.4050000
       0     7806        M 0x80000740 fadd.d  ft1, ft1, ft3          #; ft1  = 3.4050000, ft3  = 0.3460000
       0     7807        M 0x80000744 fld     ft3, 4040(a5)          #; ft3  <~~ Doub[0x00100af0]
       0     7808        M                                           #; (f:lsu) ft3  <-- 0.3500000
       0     7809        M                                           #; (f:fpu) ft1  <-- 3.7510000
       0     7810        M 0x80000748 fadd.d  ft1, ft1, ft4          #; ft1  = 3.7510000, ft4  = 0.3470000
       0     7811        M 0x8000074c fld     ft4, 4048(a5)          #; ft4  <~~ Doub[0x00100af8]
       0     7812        M                                           #; (f:lsu) ft4  <-- 0.3510000
       0     7813        M                                           #; (f:fpu) ft1  <-- 4.0980000
       0     7814        M 0x80000750 fadd.d  ft1, ft1, ft5          #; ft1  = 4.0980000, ft5  = 0.3480000
       0     7815        M 0x80000754 fld     ft5, 4056(a5)          #; ft5  <~~ Doub[0x00100b00]
       0     7816        M                                           #; (f:lsu) ft5  <-- 0.352
       0     7817        M                                           #; (f:fpu) ft1  <-- 4.4460000
       0     7818        M 0x80000758 fadd.d  ft1, ft1, ft2          #; ft1  = 4.4460000, ft2  = 0.3490000
       0     7819        M 0x8000075c fld     ft2, 4064(a5)          #; ft2  <~~ Doub[0x00100b08]
       0     7820        M                                           #; (f:lsu) ft2  <-- 0.353
       0     7821        M                                           #; (f:fpu) ft1  <-- 4.7950000
       0     7822        M 0x80000760 fadd.d  ft1, ft1, ft3          #; ft1  = 4.7950000, ft3  = 0.3500000
       0     7823        M 0x80000764 fld     ft3, 4072(a5)          #; ft3  <~~ Doub[0x00100b10]
       0     7824        M                                           #; (f:lsu) ft3  <-- 0.354
       0     7825        M                                           #; (f:fpu) ft1  <-- 5.1450000
       0     7826        M 0x80000768 fadd.d  ft1, ft1, ft4          #; ft1  = 5.1450000, ft4  = 0.3510000
       0     7827        M 0x8000076c fld     ft4, 4080(a5)          #; ft4  <~~ Doub[0x00100b18]
       0     7828        M                                           #; (f:lsu) ft4  <-- 0.355
       0     7829        M                                           #; (f:fpu) ft1  <-- 5.496
       0     7830        M 0x80000770 fadd.d  ft1, ft1, ft5          #; ft1  = 5.496, ft5  = 0.352
       0     7831        M 0x80000774 fld     ft5, 4088(a5)          #; ft5  <~~ Doub[0x00100b20]
       0     7832        M                                           #; (f:lsu) ft5  <-- 0.356
       0     7833        M                                           #; (f:fpu) ft1  <-- 5.8480000
       0     7834        M 0x80000778 fadd.d  ft1, ft1, ft2          #; ft1  = 5.8480000, ft2  = 0.353
       0     7835        M 0x8000077c fld     ft2, 0(a5)             #; ft2  <~~ Doub[0x00100b28]
       0     7836        M                                           #; (f:lsu) ft2  <-- 0.357
       0     7837        M                                           #; (f:fpu) ft1  <-- 6.2010000
       0     7838        M 0x80000780 fadd.d  ft1, ft1, ft3          #; ft1  = 6.2010000, ft3  = 0.354
       0     7839        M 0x80000784 fld     ft3, 8(a5)             #; ft3  <~~ Doub[0x00100b30]
       0     7840        M                                           #; (f:lsu) ft3  <-- 0.358
       0     7841        M                                           #; (f:fpu) ft1  <-- 6.5550000
       0     7842        M 0x80000788 fadd.d  ft1, ft1, ft4          #; ft1  = 6.5550000, ft4  = 0.355
       0     7843        M 0x8000078c fld     ft4, 16(a5)            #; ft4  <~~ Doub[0x00100b38]
       0     7844        M                                           #; (f:lsu) ft4  <-- 0.359
       0     7845        M                                           #; (f:fpu) ft1  <-- 6.91
       0     7846        M 0x80000790 fadd.d  ft1, ft1, ft5          #; ft1  = 6.91, ft5  = 0.356
       0     7847        M 0x80000794 fld     ft5, 24(a5)            #; ft5  <~~ Doub[0x00100b40]
       0     7848        M                                           #; (f:lsu) ft5  <-- 0.36
       0     7849        M                                           #; (f:fpu) ft1  <-- 7.266
       0     7850        M 0x80000798 fadd.d  ft1, ft1, ft2          #; ft1  = 7.266, ft2  = 0.357
       0     7851        M 0x8000079c fld     ft2, 32(a5)            #; ft2  <~~ Doub[0x00100b48]
       0     7852        M                                           #; (f:lsu) ft2  <-- 0.361
       0     7853        M                                           #; (f:fpu) ft1  <-- 7.623
       0     7854        M 0x800007a0 fadd.d  ft1, ft1, ft3          #; ft1  = 7.623, ft3  = 0.358
       0     7855        M 0x800007a4 fld     ft3, 40(a5)            #; ft3  <~~ Doub[0x00100b50]
       0     7856        M                                           #; (f:lsu) ft3  <-- 0.362
       0     7857        M                                           #; (f:fpu) ft1  <-- 7.981
       0     7858        M 0x800007a8 fadd.d  ft1, ft1, ft4          #; ft1  = 7.981, ft4  = 0.359
       0     7859        M 0x800007ac fld     ft4, 48(a5)            #; ft4  <~~ Doub[0x00100b58]
       0     7860        M                                           #; (f:lsu) ft4  <-- 0.363
       0     7861        M                                           #; (f:fpu) ft1  <-- 8.34
       0     7862        M 0x800007b0 fadd.d  ft1, ft1, ft5          #; ft1  = 8.34, ft5  = 0.36
       0     7863        M 0x800007b4 fld     ft5, 56(a5)            #; ft5  <~~ Doub[0x00100b60]
       0     7864        M                                           #; (f:lsu) ft5  <-- 0.364
       0     7865        M                                           #; (f:fpu) ft1  <-- 8.7
       0     7866        M 0x800007b8 fadd.d  ft1, ft1, ft2          #; ft1  = 8.7, ft2  = 0.361
       0     7867        M 0x800007bc fld     ft2, 64(a5)            #; ft2  <~~ Doub[0x00100b68]
       0     7868        M                                           #; (f:lsu) ft2  <-- 0.365
       0     7869        M                                           #; (f:fpu) ft1  <-- 9.061
       0     7870        M 0x800007c0 fadd.d  ft1, ft1, ft3          #; ft1  = 9.061, ft3  = 0.362
       0     7871        M 0x800007c4 fld     ft3, 72(a5)            #; ft3  <~~ Doub[0x00100b70]
       0     7872        M                                           #; (f:lsu) ft3  <-- 0.366
       0     7873        M                                           #; (f:fpu) ft1  <-- 9.423
       0     7874        M 0x800007c8 fadd.d  ft1, ft1, ft4          #; ft1  = 9.423, ft4  = 0.363
       0     7875        M 0x800007cc fld     ft4, 80(a5)            #; ft4  <~~ Doub[0x00100b78]
       0     7876        M                                           #; (f:lsu) ft4  <-- 0.367
       0     7877        M                                           #; (f:fpu) ft1  <-- 9.786
       0     7878        M 0x800007d0 fadd.d  ft1, ft1, ft5          #; ft1  = 9.786, ft5  = 0.364
       0     7879        M 0x800007d4 fld     ft5, 88(a5)            #; ft5  <~~ Doub[0x00100b80]
       0     7880        M                                           #; (f:lsu) ft5  <-- 0.368
       0     7881        M                                           #; (f:fpu) ft1  <-- 10.15
       0     7882        M 0x800007d8 fadd.d  ft1, ft1, ft2          #; ft1  = 10.15, ft2  = 0.365
       0     7883        M 0x800007dc fld     ft2, 96(a5)            #; ft2  <~~ Doub[0x00100b88]
       0     7884        M                                           #; (f:lsu) ft2  <-- 0.369
       0     7885        M                                           #; (f:fpu) ft1  <-- 10.515
       0     7886        M 0x800007e0 fadd.d  ft1, ft1, ft3          #; ft1  = 10.515, ft3  = 0.366
       0     7887        M 0x800007e4 fld     ft3, 104(a5)           #; ft3  <~~ Doub[0x00100b90]
       0     7888        M                                           #; (f:lsu) ft3  <-- 0.37
       0     7889        M                                           #; (f:fpu) ft1  <-- 10.881
       0     7890        M 0x800007e8 fadd.d  ft1, ft1, ft4          #; ft1  = 10.881, ft4  = 0.367
       0     7891        M 0x800007ec fld     ft4, 112(a5)           #; ft4  <~~ Doub[0x00100b98]
       0     7892        M                                           #; (f:lsu) ft4  <-- 0.371
       0     7893        M                                           #; (f:fpu) ft1  <-- 11.2480000
       0     7894        M 0x800007f0 fadd.d  ft1, ft1, ft5          #; ft1  = 11.2480000, ft5  = 0.368
       0     7895        M 0x800007f4 fld     ft5, 120(a5)           #; ft5  <~~ Doub[0x00100ba0]
       0     7896        M                                           #; (f:lsu) ft5  <-- 0.372
       0     7897        M                                           #; (f:fpu) ft1  <-- 11.6160000
       0     7898        M 0x80000840 addi    a4, a4, 336            #; a4  = 0, (wrb) a4  <-- 336
                         M 0x800007f8 fadd.d  ft1, ft1, ft2          #; ft1  = 11.6160000, ft2  = 0.369
       0     7899        M 0x800007fc fld     ft2, 128(a5)           #; ft2  <~~ Doub[0x00100ba8]
       0     7900        M                                           #; (f:lsu) ft2  <-- 0.373
       0     7901        M 0x80000848 bne     a4, a2, pc - 360       #; a4  = 336, a2  = 1344, taken, goto 0x800006e0
                         M                                           #; (f:fpu) ft1  <-- 11.9850000
       0     7902        M 0x800006e0 add     a5, a1, a4             #; a1  = 0x00100b28, a4  = 336, (wrb) a5  <-- 0x00100c78
                         M 0x80000800 fadd.d  ft1, ft1, ft3          #; ft1  = 11.9850000, ft3  = 0.37
       0     7903        M 0x80000804 fld     ft3, 136(a5)           #; ft3  <~~ Doub[0x00100bb0]
       0     7904        M                                           #; (f:lsu) ft3  <-- 0.374
       0     7905        M                                           #; (f:fpu) ft1  <-- 12.355
       0     7906        M 0x80000808 fadd.d  ft1, ft1, ft4          #; ft1  = 12.355, ft4  = 0.371
       0     7907        M 0x8000080c fld     ft4, 144(a5)           #; ft4  <~~ Doub[0x00100bb8]
       0     7908        M                                           #; (f:lsu) ft4  <-- 0.375
       0     7909        M                                           #; (f:fpu) ft1  <-- 12.726
       0     7910        M 0x80000810 fadd.d  ft1, ft1, ft5          #; ft1  = 12.726, ft5  = 0.372
       0     7911        M 0x80000814 fld     ft5, 152(a5)           #; ft5  <~~ Doub[0x00100bc0]
       0     7912        M                                           #; (f:lsu) ft5  <-- 0.376
       0     7913        M                                           #; (f:fpu) ft1  <-- 13.098
       0     7914        M 0x80000818 fadd.d  ft1, ft1, ft2          #; ft1  = 13.098, ft2  = 0.373
       0     7915        M 0x8000081c fld     ft2, 160(a5)           #; ft2  <~~ Doub[0x00100bc8]
       0     7916        M                                           #; (f:lsu) ft2  <-- 0.377
       0     7917        M                                           #; (f:fpu) ft1  <-- 13.471
       0     7918        M 0x80000820 fadd.d  ft1, ft1, ft3          #; ft1  = 13.471, ft3  = 0.374
       0     7921        M                                           #; (f:fpu) ft1  <-- 13.845
       0     7922        M 0x80000824 fadd.d  ft1, ft1, ft4          #; ft1  = 13.845, ft4  = 0.375
       0     7925        M                                           #; (f:fpu) ft1  <-- 14.22
       0     7926        M 0x80000828 fadd.d  ft1, ft1, ft5          #; ft1  = 14.22, ft5  = 0.376
       0     7929        M                                           #; (f:fpu) ft1  <-- 14.596
       0     7930        M 0x8000082c fadd.d  ft1, ft1, ft2          #; ft1  = 14.596, ft2  = 0.377
       0     7933        M                                           #; (f:fpu) ft1  <-- 14.973
       0     7934        M 0x80000830 fadd.d  ft0, ft1, ft0          #; ft1  = 14.973, ft0  = 281.4000000
       0     7937        M                                           #; (f:fpu) ft0  <-- 296.3730000
       0     7938        M 0x80000834 fadd.d  ft0, ft1, ft0          #; ft1  = 14.973, ft0  = 296.3730000
       0     7941        M                                           #; (f:fpu) ft0  <-- 311.3460000
       0     7942        M 0x80000838 fadd.d  ft0, ft1, ft0          #; ft1  = 14.973, ft0  = 311.3460000
       0     7945        M                                           #; (f:fpu) ft0  <-- 326.3190000
       0     7946        M 0x8000083c fadd.d  ft0, ft1, ft0          #; ft1  = 14.973, ft0  = 326.3190000
       0     7949        M                                           #; (f:fpu) ft0  <-- 341.2920000
       0     7950        M 0x80000844 fadd.d  ft0, ft1, ft0          #; ft1  = 14.973, ft0  = 341.2920000
       0     7951        M 0x800006e4 fld     ft1, 3928(a5)          #; ft1  <~~ Doub[0x00100bd0]
       0     7952        M 0x800006e8 fld     ft2, 3936(a5)          #; ft2  <~~ Doub[0x00100bd8], (f:lsu) ft1  <-- 0.378
       0     7953        M 0x800006ec fld     ft3, 3944(a5)          #; ft3  <~~ Doub[0x00100be0], (f:fpu) ft0  <-- 356.2650000
       0     7954        M 0x800006f0 fld     ft4, 3952(a5)          #; ft4  <~~ Doub[0x00100be8], (f:lsu) ft2  <-- 0.379
       0     7955        M 0x800006f4 fld     ft5, 3960(a5)          #; ft5  <~~ Doub[0x00100bf0], (f:lsu) ft3  <-- 0.38
       0     7956        M 0x800006f8 fadd.d  ft1, ft2, ft1          #; ft2  = 0.379, ft1  = 0.378, (f:lsu) ft4  <-- 0.381
       0     7957        M 0x800006fc fld     ft2, 3968(a5)          #; ft2  <~~ Doub[0x00100bf8], (f:lsu) ft5  <-- 0.382
       0     7958        M                                           #; (f:lsu) ft2  <-- 0.383
       0     7959        M                                           #; (f:fpu) ft1  <-- 0.757
       0     7960        M 0x80000700 fadd.d  ft1, ft1, ft3          #; ft1  = 0.757, ft3  = 0.38
       0     7961        M 0x80000704 fld     ft3, 3976(a5)          #; ft3  <~~ Doub[0x00100c00]
       0     7962        M                                           #; (f:lsu) ft3  <-- 0.384
       0     7963        M                                           #; (f:fpu) ft1  <-- 1.137
       0     7964        M 0x80000708 fadd.d  ft1, ft1, ft4          #; ft1  = 1.137, ft4  = 0.381
       0     7965        M 0x8000070c fld     ft4, 3984(a5)          #; ft4  <~~ Doub[0x00100c08]
       0     7966        M                                           #; (f:lsu) ft4  <-- 0.385
       0     7967        M                                           #; (f:fpu) ft1  <-- 1.518
       0     7968        M 0x80000710 fadd.d  ft1, ft1, ft5          #; ft1  = 1.518, ft5  = 0.382
       0     7969        M 0x80000714 fld     ft5, 3992(a5)          #; ft5  <~~ Doub[0x00100c10]
       0     7970        M                                           #; (f:lsu) ft5  <-- 0.386
       0     7971        M                                           #; (f:fpu) ft1  <-- 1.9
       0     7972        M 0x80000718 fadd.d  ft1, ft1, ft2          #; ft1  = 1.9, ft2  = 0.383
       0     7973        M 0x8000071c fld     ft2, 4000(a5)          #; ft2  <~~ Doub[0x00100c18]
       0     7974        M                                           #; (f:lsu) ft2  <-- 0.387
       0     7975        M                                           #; (f:fpu) ft1  <-- 2.283
       0     7976        M 0x80000720 fadd.d  ft1, ft1, ft3          #; ft1  = 2.283, ft3  = 0.384
       0     7977        M 0x80000724 fld     ft3, 4008(a5)          #; ft3  <~~ Doub[0x00100c20]
       0     7978        M                                           #; (f:lsu) ft3  <-- 0.388
       0     7979        M                                           #; (f:fpu) ft1  <-- 2.667
       0     7980        M 0x80000728 fadd.d  ft1, ft1, ft4          #; ft1  = 2.667, ft4  = 0.385
       0     7981        M 0x8000072c fld     ft4, 4016(a5)          #; ft4  <~~ Doub[0x00100c28]
       0     7982        M                                           #; (f:lsu) ft4  <-- 0.389
       0     7983        M                                           #; (f:fpu) ft1  <-- 3.0520000
       0     7984        M 0x80000730 fadd.d  ft1, ft1, ft5          #; ft1  = 3.0520000, ft5  = 0.386
       0     7985        M 0x80000734 fld     ft5, 4024(a5)          #; ft5  <~~ Doub[0x00100c30]
       0     7986        M                                           #; (f:lsu) ft5  <-- 0.39
       0     7987        M                                           #; (f:fpu) ft1  <-- 3.4380000
       0     7988        M 0x80000738 fadd.d  ft1, ft1, ft2          #; ft1  = 3.4380000, ft2  = 0.387
       0     7989        M 0x8000073c fld     ft2, 4032(a5)          #; ft2  <~~ Doub[0x00100c38]
       0     7990        M                                           #; (f:lsu) ft2  <-- 0.391
       0     7991        M                                           #; (f:fpu) ft1  <-- 3.8250000
       0     7992        M 0x80000740 fadd.d  ft1, ft1, ft3          #; ft1  = 3.8250000, ft3  = 0.388
       0     7993        M 0x80000744 fld     ft3, 4040(a5)          #; ft3  <~~ Doub[0x00100c40]
       0     7994        M                                           #; (f:lsu) ft3  <-- 0.392
       0     7995        M                                           #; (f:fpu) ft1  <-- 4.213
       0     7996        M 0x80000748 fadd.d  ft1, ft1, ft4          #; ft1  = 4.213, ft4  = 0.389
       0     7997        M 0x8000074c fld     ft4, 4048(a5)          #; ft4  <~~ Doub[0x00100c48]
       0     7998        M                                           #; (f:lsu) ft4  <-- 0.393
       0     7999        M                                           #; (f:fpu) ft1  <-- 4.602
       0     8000        M 0x80000750 fadd.d  ft1, ft1, ft5          #; ft1  = 4.602, ft5  = 0.39
       0     8001        M 0x80000754 fld     ft5, 4056(a5)          #; ft5  <~~ Doub[0x00100c50]
       0     8002        M                                           #; (f:lsu) ft5  <-- 0.394
       0     8003        M                                           #; (f:fpu) ft1  <-- 4.992
       0     8004        M 0x80000758 fadd.d  ft1, ft1, ft2          #; ft1  = 4.992, ft2  = 0.391
       0     8005        M 0x8000075c fld     ft2, 4064(a5)          #; ft2  <~~ Doub[0x00100c58]
       0     8006        M                                           #; (f:lsu) ft2  <-- 0.395
       0     8007        M                                           #; (f:fpu) ft1  <-- 5.383
       0     8008        M 0x80000760 fadd.d  ft1, ft1, ft3          #; ft1  = 5.383, ft3  = 0.392
       0     8009        M 0x80000764 fld     ft3, 4072(a5)          #; ft3  <~~ Doub[0x00100c60]
       0     8010        M                                           #; (f:lsu) ft3  <-- 0.396
       0     8011        M                                           #; (f:fpu) ft1  <-- 5.775
       0     8012        M 0x80000768 fadd.d  ft1, ft1, ft4          #; ft1  = 5.775, ft4  = 0.393
       0     8013        M 0x8000076c fld     ft4, 4080(a5)          #; ft4  <~~ Doub[0x00100c68]
       0     8014        M                                           #; (f:lsu) ft4  <-- 0.397
       0     8015        M                                           #; (f:fpu) ft1  <-- 6.168
       0     8016        M 0x80000770 fadd.d  ft1, ft1, ft5          #; ft1  = 6.168, ft5  = 0.394
       0     8017        M 0x80000774 fld     ft5, 4088(a5)          #; ft5  <~~ Doub[0x00100c70]
       0     8018        M                                           #; (f:lsu) ft5  <-- 0.398
       0     8019        M                                           #; (f:fpu) ft1  <-- 6.562
       0     8020        M 0x80000778 fadd.d  ft1, ft1, ft2          #; ft1  = 6.562, ft2  = 0.395
       0     8021        M 0x8000077c fld     ft2, 0(a5)             #; ft2  <~~ Doub[0x00100c78]
       0     8022        M                                           #; (f:lsu) ft2  <-- 0.399
       0     8023        M                                           #; (f:fpu) ft1  <-- 6.9570000
       0     8024        M 0x80000780 fadd.d  ft1, ft1, ft3          #; ft1  = 6.9570000, ft3  = 0.396
       0     8025        M 0x80000784 fld     ft3, 8(a5)             #; ft3  <~~ Doub[0x00100c80]
       0     8026        M                                           #; (f:lsu) ft3  <-- 0.4
       0     8027        M                                           #; (f:fpu) ft1  <-- 7.3530000
       0     8028        M 0x80000788 fadd.d  ft1, ft1, ft4          #; ft1  = 7.3530000, ft4  = 0.397
       0     8029        M 0x8000078c fld     ft4, 16(a5)            #; ft4  <~~ Doub[0x00100c88]
       0     8030        M                                           #; (f:lsu) ft4  <-- 0.401
       0     8031        M                                           #; (f:fpu) ft1  <-- 7.7500000
       0     8032        M 0x80000790 fadd.d  ft1, ft1, ft5          #; ft1  = 7.7500000, ft5  = 0.398
       0     8033        M 0x80000794 fld     ft5, 24(a5)            #; ft5  <~~ Doub[0x00100c90]
       0     8034        M                                           #; (f:lsu) ft5  <-- 0.402
       0     8035        M                                           #; (f:fpu) ft1  <-- 8.1480000
       0     8036        M 0x80000798 fadd.d  ft1, ft1, ft2          #; ft1  = 8.1480000, ft2  = 0.399
       0     8037        M 0x8000079c fld     ft2, 32(a5)            #; ft2  <~~ Doub[0x00100c98]
       0     8038        M                                           #; (f:lsu) ft2  <-- 0.403
       0     8039        M                                           #; (f:fpu) ft1  <-- 8.547
       0     8040        M 0x800007a0 fadd.d  ft1, ft1, ft3          #; ft1  = 8.547, ft3  = 0.4
       0     8041        M 0x800007a4 fld     ft3, 40(a5)            #; ft3  <~~ Doub[0x00100ca0]
       0     8042        M                                           #; (f:lsu) ft3  <-- 0.404
       0     8043        M                                           #; (f:fpu) ft1  <-- 8.9470000
       0     8044        M 0x800007a8 fadd.d  ft1, ft1, ft4          #; ft1  = 8.9470000, ft4  = 0.401
       0     8045        M 0x800007ac fld     ft4, 48(a5)            #; ft4  <~~ Doub[0x00100ca8]
       0     8046        M                                           #; (f:lsu) ft4  <-- 0.405
       0     8047        M                                           #; (f:fpu) ft1  <-- 9.348
       0     8048        M 0x800007b0 fadd.d  ft1, ft1, ft5          #; ft1  = 9.348, ft5  = 0.402
       0     8049        M 0x800007b4 fld     ft5, 56(a5)            #; ft5  <~~ Doub[0x00100cb0]
       0     8050        M                                           #; (f:lsu) ft5  <-- 0.406
       0     8051        M                                           #; (f:fpu) ft1  <-- 9.75
       0     8052        M 0x800007b8 fadd.d  ft1, ft1, ft2          #; ft1  = 9.75, ft2  = 0.403
       0     8053        M 0x800007bc fld     ft2, 64(a5)            #; ft2  <~~ Doub[0x00100cb8]
       0     8054        M                                           #; (f:lsu) ft2  <-- 0.4070000
       0     8055        M                                           #; (f:fpu) ft1  <-- 10.153
       0     8056        M 0x800007c0 fadd.d  ft1, ft1, ft3          #; ft1  = 10.153, ft3  = 0.404
       0     8057        M 0x800007c4 fld     ft3, 72(a5)            #; ft3  <~~ Doub[0x00100cc0]
       0     8058        M                                           #; (f:lsu) ft3  <-- 0.4080000
       0     8059        M                                           #; (f:fpu) ft1  <-- 10.557
       0     8060        M 0x800007c8 fadd.d  ft1, ft1, ft4          #; ft1  = 10.557, ft4  = 0.405
       0     8061        M 0x800007cc fld     ft4, 80(a5)            #; ft4  <~~ Doub[0x00100cc8]
       0     8062        M                                           #; (f:lsu) ft4  <-- 0.4090000
       0     8063        M                                           #; (f:fpu) ft1  <-- 10.962
       0     8064        M 0x800007d0 fadd.d  ft1, ft1, ft5          #; ft1  = 10.962, ft5  = 0.406
       0     8065        M 0x800007d4 fld     ft5, 88(a5)            #; ft5  <~~ Doub[0x00100cd0]
       0     8066        M                                           #; (f:lsu) ft5  <-- 0.4100000
       0     8067        M                                           #; (f:fpu) ft1  <-- 11.368
       0     8068        M 0x800007d8 fadd.d  ft1, ft1, ft2          #; ft1  = 11.368, ft2  = 0.4070000
       0     8069        M 0x800007dc fld     ft2, 96(a5)            #; ft2  <~~ Doub[0x00100cd8]
       0     8070        M                                           #; (f:lsu) ft2  <-- 0.4110000
       0     8071        M                                           #; (f:fpu) ft1  <-- 11.775
       0     8072        M 0x800007e0 fadd.d  ft1, ft1, ft3          #; ft1  = 11.775, ft3  = 0.4080000
       0     8073        M 0x800007e4 fld     ft3, 104(a5)           #; ft3  <~~ Doub[0x00100ce0]
       0     8074        M                                           #; (f:lsu) ft3  <-- 0.4120000
       0     8075        M                                           #; (f:fpu) ft1  <-- 12.183
       0     8076        M 0x800007e8 fadd.d  ft1, ft1, ft4          #; ft1  = 12.183, ft4  = 0.4090000
       0     8077        M 0x800007ec fld     ft4, 112(a5)           #; ft4  <~~ Doub[0x00100ce8]
       0     8078        M                                           #; (f:lsu) ft4  <-- 0.4130000
       0     8079        M                                           #; (f:fpu) ft1  <-- 12.592
       0     8080        M 0x800007f0 fadd.d  ft1, ft1, ft5          #; ft1  = 12.592, ft5  = 0.4100000
       0     8081        M 0x800007f4 fld     ft5, 120(a5)           #; ft5  <~~ Doub[0x00100cf0]
       0     8082        M                                           #; (f:lsu) ft5  <-- 0.4140000
       0     8083        M                                           #; (f:fpu) ft1  <-- 13.002
       0     8084        M 0x80000840 addi    a4, a4, 336            #; a4  = 336, (wrb) a4  <-- 672
                         M 0x800007f8 fadd.d  ft1, ft1, ft2          #; ft1  = 13.002, ft2  = 0.4110000
       0     8085        M 0x800007fc fld     ft2, 128(a5)           #; ft2  <~~ Doub[0x00100cf8]
       0     8086        M                                           #; (f:lsu) ft2  <-- 0.4150000
       0     8087        M 0x80000848 bne     a4, a2, pc - 360       #; a4  = 672, a2  = 1344, taken, goto 0x800006e0
                         M                                           #; (f:fpu) ft1  <-- 13.413
       0     8088        M 0x800006e0 add     a5, a1, a4             #; a1  = 0x00100b28, a4  = 672, (wrb) a5  <-- 0x00100dc8
                         M 0x80000800 fadd.d  ft1, ft1, ft3          #; ft1  = 13.413, ft3  = 0.4120000
       0     8089        M 0x80000804 fld     ft3, 136(a5)           #; ft3  <~~ Doub[0x00100d00]
       0     8090        M                                           #; (f:lsu) ft3  <-- 0.4160000
       0     8091        M                                           #; (f:fpu) ft1  <-- 13.8250000
       0     8092        M 0x80000808 fadd.d  ft1, ft1, ft4          #; ft1  = 13.8250000, ft4  = 0.4130000
       0     8093        M 0x8000080c fld     ft4, 144(a5)           #; ft4  <~~ Doub[0x00100d08]
       0     8094        M                                           #; (f:lsu) ft4  <-- 0.417
       0     8095        M                                           #; (f:fpu) ft1  <-- 14.2380000
       0     8096        M 0x80000810 fadd.d  ft1, ft1, ft5          #; ft1  = 14.2380000, ft5  = 0.4140000
       0     8097        M 0x80000814 fld     ft5, 152(a5)           #; ft5  <~~ Doub[0x00100d10]
       0     8098        M                                           #; (f:lsu) ft5  <-- 0.418
       0     8099        M                                           #; (f:fpu) ft1  <-- 14.6520000
       0     8100        M 0x80000818 fadd.d  ft1, ft1, ft2          #; ft1  = 14.6520000, ft2  = 0.4150000
       0     8101        M 0x8000081c fld     ft2, 160(a5)           #; ft2  <~~ Doub[0x00100d18]
       0     8102        M                                           #; (f:lsu) ft2  <-- 0.419
       0     8103        M                                           #; (f:fpu) ft1  <-- 15.067
       0     8104        M 0x80000820 fadd.d  ft1, ft1, ft3          #; ft1  = 15.067, ft3  = 0.4160000
       0     8107        M                                           #; (f:fpu) ft1  <-- 15.483
       0     8108        M 0x80000824 fadd.d  ft1, ft1, ft4          #; ft1  = 15.483, ft4  = 0.417
       0     8111        M                                           #; (f:fpu) ft1  <-- 15.9
       0     8112        M 0x80000828 fadd.d  ft1, ft1, ft5          #; ft1  = 15.9, ft5  = 0.418
       0     8115        M                                           #; (f:fpu) ft1  <-- 16.318
       0     8116        M 0x8000082c fadd.d  ft1, ft1, ft2          #; ft1  = 16.318, ft2  = 0.419
       0     8119        M                                           #; (f:fpu) ft1  <-- 16.7370000
       0     8120        M 0x80000830 fadd.d  ft0, ft1, ft0          #; ft1  = 16.7370000, ft0  = 356.2650000
       0     8123        M                                           #; (f:fpu) ft0  <-- 373.0020000
       0     8124        M 0x80000834 fadd.d  ft0, ft1, ft0          #; ft1  = 16.7370000, ft0  = 373.0020000
       0     8127        M                                           #; (f:fpu) ft0  <-- 389.7390000
       0     8128        M 0x80000838 fadd.d  ft0, ft1, ft0          #; ft1  = 16.7370000, ft0  = 389.7390000
       0     8131        M                                           #; (f:fpu) ft0  <-- 406.4760000
       0     8132        M 0x8000083c fadd.d  ft0, ft1, ft0          #; ft1  = 16.7370000, ft0  = 406.4760000
       0     8135        M                                           #; (f:fpu) ft0  <-- 423.2130000
       0     8136        M 0x80000844 fadd.d  ft0, ft1, ft0          #; ft1  = 16.7370000, ft0  = 423.2130000
       0     8137        M 0x800006e4 fld     ft1, 3928(a5)          #; ft1  <~~ Doub[0x00100d20]
       0     8138        M 0x800006e8 fld     ft2, 3936(a5)          #; ft2  <~~ Doub[0x00100d28], (f:lsu) ft1  <-- 0.42
       0     8139        M 0x800006ec fld     ft3, 3944(a5)          #; ft3  <~~ Doub[0x00100d30], (f:fpu) ft0  <-- 439.9500000
       0     8140        M 0x800006f0 fld     ft4, 3952(a5)          #; ft4  <~~ Doub[0x00100d38], (f:lsu) ft2  <-- 0.421
       0     8141        M 0x800006f4 fld     ft5, 3960(a5)          #; ft5  <~~ Doub[0x00100d40], (f:lsu) ft3  <-- 0.422
       0     8142        M 0x800006f8 fadd.d  ft1, ft2, ft1          #; ft2  = 0.421, ft1  = 0.42, (f:lsu) ft4  <-- 0.423
       0     8143        M 0x800006fc fld     ft2, 3968(a5)          #; ft2  <~~ Doub[0x00100d48], (f:lsu) ft5  <-- 0.424
       0     8144        M                                           #; (f:lsu) ft2  <-- 0.425
       0     8145        M                                           #; (f:fpu) ft1  <-- 0.841
       0     8146        M 0x80000700 fadd.d  ft1, ft1, ft3          #; ft1  = 0.841, ft3  = 0.422
       0     8147        M 0x80000704 fld     ft3, 3976(a5)          #; ft3  <~~ Doub[0x00100d50]
       0     8148        M                                           #; (f:lsu) ft3  <-- 0.426
       0     8149        M                                           #; (f:fpu) ft1  <-- 1.263
       0     8150        M 0x80000708 fadd.d  ft1, ft1, ft4          #; ft1  = 1.263, ft4  = 0.423
       0     8151        M 0x8000070c fld     ft4, 3984(a5)          #; ft4  <~~ Doub[0x00100d58]
       0     8152        M                                           #; (f:lsu) ft4  <-- 0.427
       0     8153        M                                           #; (f:fpu) ft1  <-- 1.686
       0     8154        M 0x80000710 fadd.d  ft1, ft1, ft5          #; ft1  = 1.686, ft5  = 0.424
       0     8155        M 0x80000714 fld     ft5, 3992(a5)          #; ft5  <~~ Doub[0x00100d60]
       0     8156        M                                           #; (f:lsu) ft5  <-- 0.428
       0     8157        M                                           #; (f:fpu) ft1  <-- 2.11
       0     8158        M 0x80000718 fadd.d  ft1, ft1, ft2          #; ft1  = 2.11, ft2  = 0.425
       0     8159        M 0x8000071c fld     ft2, 4000(a5)          #; ft2  <~~ Doub[0x00100d68]
       0     8160        M                                           #; (f:lsu) ft2  <-- 0.429
       0     8161        M                                           #; (f:fpu) ft1  <-- 2.5350000
       0     8162        M 0x80000720 fadd.d  ft1, ft1, ft3          #; ft1  = 2.5350000, ft3  = 0.426
       0     8163        M 0x80000724 fld     ft3, 4008(a5)          #; ft3  <~~ Doub[0x00100d70]
       0     8164        M                                           #; (f:lsu) ft3  <-- 0.43
       0     8165        M                                           #; (f:fpu) ft1  <-- 2.961
       0     8166        M 0x80000728 fadd.d  ft1, ft1, ft4          #; ft1  = 2.961, ft4  = 0.427
       0     8167        M 0x8000072c fld     ft4, 4016(a5)          #; ft4  <~~ Doub[0x00100d78]
       0     8168        M                                           #; (f:lsu) ft4  <-- 0.431
       0     8169        M                                           #; (f:fpu) ft1  <-- 3.388
       0     8170        M 0x80000730 fadd.d  ft1, ft1, ft5          #; ft1  = 3.388, ft5  = 0.428
       0     8171        M 0x80000734 fld     ft5, 4024(a5)          #; ft5  <~~ Doub[0x00100d80]
       0     8172        M                                           #; (f:lsu) ft5  <-- 0.432
       0     8173        M                                           #; (f:fpu) ft1  <-- 3.816
       0     8174        M 0x80000738 fadd.d  ft1, ft1, ft2          #; ft1  = 3.816, ft2  = 0.429
       0     8175        M 0x8000073c fld     ft2, 4032(a5)          #; ft2  <~~ Doub[0x00100d88]
       0     8176        M                                           #; (f:lsu) ft2  <-- 0.433
       0     8177        M                                           #; (f:fpu) ft1  <-- 4.245
       0     8178        M 0x80000740 fadd.d  ft1, ft1, ft3          #; ft1  = 4.245, ft3  = 0.43
       0     8179        M 0x80000744 fld     ft3, 4040(a5)          #; ft3  <~~ Doub[0x00100d90]
       0     8180        M                                           #; (f:lsu) ft3  <-- 0.434
       0     8181        M                                           #; (f:fpu) ft1  <-- 4.675
       0     8182        M 0x80000748 fadd.d  ft1, ft1, ft4          #; ft1  = 4.675, ft4  = 0.431
       0     8183        M 0x8000074c fld     ft4, 4048(a5)          #; ft4  <~~ Doub[0x00100d98]
       0     8184        M                                           #; (f:lsu) ft4  <-- 0.435
       0     8185        M                                           #; (f:fpu) ft1  <-- 5.106
       0     8186        M 0x80000750 fadd.d  ft1, ft1, ft5          #; ft1  = 5.106, ft5  = 0.432
       0     8187        M 0x80000754 fld     ft5, 4056(a5)          #; ft5  <~~ Doub[0x00100da0]
       0     8188        M                                           #; (f:lsu) ft5  <-- 0.436
       0     8189        M                                           #; (f:fpu) ft1  <-- 5.538
       0     8190        M 0x80000758 fadd.d  ft1, ft1, ft2          #; ft1  = 5.538, ft2  = 0.433
       0     8191        M 0x8000075c fld     ft2, 4064(a5)          #; ft2  <~~ Doub[0x00100da8]
       0     8192        M                                           #; (f:lsu) ft2  <-- 0.437
       0     8193        M                                           #; (f:fpu) ft1  <-- 5.971
       0     8194        M 0x80000760 fadd.d  ft1, ft1, ft3          #; ft1  = 5.971, ft3  = 0.434
       0     8195        M 0x80000764 fld     ft3, 4072(a5)          #; ft3  <~~ Doub[0x00100db0]
       0     8196        M                                           #; (f:lsu) ft3  <-- 0.438
       0     8197        M                                           #; (f:fpu) ft1  <-- 6.405
       0     8198        M 0x80000768 fadd.d  ft1, ft1, ft4          #; ft1  = 6.405, ft4  = 0.435
       0     8199        M 0x8000076c fld     ft4, 4080(a5)          #; ft4  <~~ Doub[0x00100db8]
       0     8200        M                                           #; (f:lsu) ft4  <-- 0.439
       0     8201        M                                           #; (f:fpu) ft1  <-- 6.84
       0     8202        M 0x80000770 fadd.d  ft1, ft1, ft5          #; ft1  = 6.84, ft5  = 0.436
       0     8203        M 0x80000774 fld     ft5, 4088(a5)          #; ft5  <~~ Doub[0x00100dc0]
       0     8204        M                                           #; (f:lsu) ft5  <-- 0.44
       0     8205        M                                           #; (f:fpu) ft1  <-- 7.276
       0     8206        M 0x80000778 fadd.d  ft1, ft1, ft2          #; ft1  = 7.276, ft2  = 0.437
       0     8207        M 0x8000077c fld     ft2, 0(a5)             #; ft2  <~~ Doub[0x00100dc8]
       0     8208        M                                           #; (f:lsu) ft2  <-- 0.441
       0     8209        M                                           #; (f:fpu) ft1  <-- 7.713
       0     8210        M 0x80000780 fadd.d  ft1, ft1, ft3          #; ft1  = 7.713, ft3  = 0.438
       0     8211        M 0x80000784 fld     ft3, 8(a5)             #; ft3  <~~ Doub[0x00100dd0]
       0     8212        M                                           #; (f:lsu) ft3  <-- 0.442
       0     8213        M                                           #; (f:fpu) ft1  <-- 8.151
       0     8214        M 0x80000788 fadd.d  ft1, ft1, ft4          #; ft1  = 8.151, ft4  = 0.439
       0     8215        M 0x8000078c fld     ft4, 16(a5)            #; ft4  <~~ Doub[0x00100dd8]
       0     8216        M                                           #; (f:lsu) ft4  <-- 0.443
       0     8217        M                                           #; (f:fpu) ft1  <-- 8.59
       0     8218        M 0x80000790 fadd.d  ft1, ft1, ft5          #; ft1  = 8.59, ft5  = 0.44
       0     8219        M 0x80000794 fld     ft5, 24(a5)            #; ft5  <~~ Doub[0x00100de0]
       0     8220        M                                           #; (f:lsu) ft5  <-- 0.444
       0     8221        M                                           #; (f:fpu) ft1  <-- 9.03
       0     8222        M 0x80000798 fadd.d  ft1, ft1, ft2          #; ft1  = 9.03, ft2  = 0.441
       0     8223        M 0x8000079c fld     ft2, 32(a5)            #; ft2  <~~ Doub[0x00100de8]
       0     8224        M                                           #; (f:lsu) ft2  <-- 0.445
       0     8225        M                                           #; (f:fpu) ft1  <-- 9.471
       0     8226        M 0x800007a0 fadd.d  ft1, ft1, ft3          #; ft1  = 9.471, ft3  = 0.442
       0     8227        M 0x800007a4 fld     ft3, 40(a5)            #; ft3  <~~ Doub[0x00100df0]
       0     8228        M                                           #; (f:lsu) ft3  <-- 0.446
       0     8229        M                                           #; (f:fpu) ft1  <-- 9.913
       0     8230        M 0x800007a8 fadd.d  ft1, ft1, ft4          #; ft1  = 9.913, ft4  = 0.443
       0     8231        M 0x800007ac fld     ft4, 48(a5)            #; ft4  <~~ Doub[0x00100df8]
       0     8232        M                                           #; (f:lsu) ft4  <-- 0.447
       0     8233        M                                           #; (f:fpu) ft1  <-- 10.356
       0     8234        M 0x800007b0 fadd.d  ft1, ft1, ft5          #; ft1  = 10.356, ft5  = 0.444
       0     8235        M 0x800007b4 fld     ft5, 56(a5)            #; ft5  <~~ Doub[0x00100e00]
       0     8236        M                                           #; (f:lsu) ft5  <-- 0.448
       0     8237        M                                           #; (f:fpu) ft1  <-- 10.8
       0     8238        M 0x800007b8 fadd.d  ft1, ft1, ft2          #; ft1  = 10.8, ft2  = 0.445
       0     8239        M 0x800007bc fld     ft2, 64(a5)            #; ft2  <~~ Doub[0x00100e08]
       0     8240        M                                           #; (f:lsu) ft2  <-- 0.449
       0     8241        M                                           #; (f:fpu) ft1  <-- 11.2450000
       0     8242        M 0x800007c0 fadd.d  ft1, ft1, ft3          #; ft1  = 11.2450000, ft3  = 0.446
       0     8243        M 0x800007c4 fld     ft3, 72(a5)            #; ft3  <~~ Doub[0x00100e10]
       0     8244        M                                           #; (f:lsu) ft3  <-- 0.45
       0     8245        M                                           #; (f:fpu) ft1  <-- 11.691
       0     8246        M 0x800007c8 fadd.d  ft1, ft1, ft4          #; ft1  = 11.691, ft4  = 0.447
       0     8247        M 0x800007cc fld     ft4, 80(a5)            #; ft4  <~~ Doub[0x00100e18]
       0     8248        M                                           #; (f:lsu) ft4  <-- 0.451
       0     8249        M                                           #; (f:fpu) ft1  <-- 12.138
       0     8250        M 0x800007d0 fadd.d  ft1, ft1, ft5          #; ft1  = 12.138, ft5  = 0.448
       0     8251        M 0x800007d4 fld     ft5, 88(a5)            #; ft5  <~~ Doub[0x00100e20]
       0     8252        M                                           #; (f:lsu) ft5  <-- 0.452
       0     8253        M                                           #; (f:fpu) ft1  <-- 12.586
       0     8254        M 0x800007d8 fadd.d  ft1, ft1, ft2          #; ft1  = 12.586, ft2  = 0.449
       0     8255        M 0x800007dc fld     ft2, 96(a5)            #; ft2  <~~ Doub[0x00100e28]
       0     8256        M                                           #; (f:lsu) ft2  <-- 0.453
       0     8257        M                                           #; (f:fpu) ft1  <-- 13.035
       0     8258        M 0x800007e0 fadd.d  ft1, ft1, ft3          #; ft1  = 13.035, ft3  = 0.45
       0     8259        M 0x800007e4 fld     ft3, 104(a5)           #; ft3  <~~ Doub[0x00100e30]
       0     8260        M                                           #; (f:lsu) ft3  <-- 0.454
       0     8261        M                                           #; (f:fpu) ft1  <-- 13.485
       0     8262        M 0x800007e8 fadd.d  ft1, ft1, ft4          #; ft1  = 13.485, ft4  = 0.451
       0     8263        M 0x800007ec fld     ft4, 112(a5)           #; ft4  <~~ Doub[0x00100e38]
       0     8264        M                                           #; (f:lsu) ft4  <-- 0.455
       0     8265        M                                           #; (f:fpu) ft1  <-- 13.936
       0     8266        M 0x800007f0 fadd.d  ft1, ft1, ft5          #; ft1  = 13.936, ft5  = 0.452
       0     8267        M 0x800007f4 fld     ft5, 120(a5)           #; ft5  <~~ Doub[0x00100e40]
       0     8268        M                                           #; (f:lsu) ft5  <-- 0.456
       0     8269        M                                           #; (f:fpu) ft1  <-- 14.388
       0     8270        M 0x80000840 addi    a4, a4, 336            #; a4  = 672, (wrb) a4  <-- 1008
                         M 0x800007f8 fadd.d  ft1, ft1, ft2          #; ft1  = 14.388, ft2  = 0.453
       0     8271        M 0x800007fc fld     ft2, 128(a5)           #; ft2  <~~ Doub[0x00100e48]
       0     8272        M                                           #; (f:lsu) ft2  <-- 0.457
       0     8273        M 0x80000848 bne     a4, a2, pc - 360       #; a4  = 1008, a2  = 1344, taken, goto 0x800006e0
                         M                                           #; (f:fpu) ft1  <-- 14.841
       0     8274        M 0x800006e0 add     a5, a1, a4             #; a1  = 0x00100b28, a4  = 1008, (wrb) a5  <-- 0x00100f18
                         M 0x80000800 fadd.d  ft1, ft1, ft3          #; ft1  = 14.841, ft3  = 0.454
       0     8275        M 0x80000804 fld     ft3, 136(a5)           #; ft3  <~~ Doub[0x00100e50]
       0     8276        M                                           #; (f:lsu) ft3  <-- 0.458
       0     8277        M                                           #; (f:fpu) ft1  <-- 15.295
       0     8278        M 0x80000808 fadd.d  ft1, ft1, ft4          #; ft1  = 15.295, ft4  = 0.455
       0     8279        M 0x8000080c fld     ft4, 144(a5)           #; ft4  <~~ Doub[0x00100e58]
       0     8280        M                                           #; (f:lsu) ft4  <-- 0.459
       0     8281        M                                           #; (f:fpu) ft1  <-- 15.75
       0     8282        M 0x80000810 fadd.d  ft1, ft1, ft5          #; ft1  = 15.75, ft5  = 0.456
       0     8283        M 0x80000814 fld     ft5, 152(a5)           #; ft5  <~~ Doub[0x00100e60]
       0     8284        M                                           #; (f:lsu) ft5  <-- 0.46
       0     8285        M                                           #; (f:fpu) ft1  <-- 16.206
       0     8286        M 0x80000818 fadd.d  ft1, ft1, ft2          #; ft1  = 16.206, ft2  = 0.457
       0     8287        M 0x8000081c fld     ft2, 160(a5)           #; ft2  <~~ Doub[0x00100e68]
       0     8288        M                                           #; (f:lsu) ft2  <-- 0.461
       0     8289        M                                           #; (f:fpu) ft1  <-- 16.663
       0     8290        M 0x80000820 fadd.d  ft1, ft1, ft3          #; ft1  = 16.663, ft3  = 0.458
       0     8293        M                                           #; (f:fpu) ft1  <-- 17.121
       0     8294        M 0x80000824 fadd.d  ft1, ft1, ft4          #; ft1  = 17.121, ft4  = 0.459
       0     8297        M                                           #; (f:fpu) ft1  <-- 17.58
       0     8298        M 0x80000828 fadd.d  ft1, ft1, ft5          #; ft1  = 17.58, ft5  = 0.46
       0     8301        M                                           #; (f:fpu) ft1  <-- 18.04
       0     8302        M 0x8000082c fadd.d  ft1, ft1, ft2          #; ft1  = 18.04, ft2  = 0.461
       0     8305        M                                           #; (f:fpu) ft1  <-- 18.5010000
       0     8306        M 0x80000830 fadd.d  ft0, ft1, ft0          #; ft1  = 18.5010000, ft0  = 439.9500000
       0     8309        M                                           #; (f:fpu) ft0  <-- 458.4510000
       0     8310        M 0x80000834 fadd.d  ft0, ft1, ft0          #; ft1  = 18.5010000, ft0  = 458.4510000
       0     8313        M                                           #; (f:fpu) ft0  <-- 476.9520000
       0     8314        M 0x80000838 fadd.d  ft0, ft1, ft0          #; ft1  = 18.5010000, ft0  = 476.9520000
       0     8317        M                                           #; (f:fpu) ft0  <-- 495.4530000
       0     8318        M 0x8000083c fadd.d  ft0, ft1, ft0          #; ft1  = 18.5010000, ft0  = 495.4530000
       0     8321        M                                           #; (f:fpu) ft0  <-- 513.9540000
       0     8322        M 0x80000844 fadd.d  ft0, ft1, ft0          #; ft1  = 18.5010000, ft0  = 513.9540000
       0     8323        M 0x800006e4 fld     ft1, 3928(a5)          #; ft1  <~~ Doub[0x00100e70]
       0     8324        M 0x800006e8 fld     ft2, 3936(a5)          #; ft2  <~~ Doub[0x00100e78], (f:lsu) ft1  <-- 0.462
       0     8325        M 0x800006ec fld     ft3, 3944(a5)          #; ft3  <~~ Doub[0x00100e80], (f:fpu) ft0  <-- 532.4550000
       0     8326        M 0x800006f0 fld     ft4, 3952(a5)          #; ft4  <~~ Doub[0x00100e88], (f:lsu) ft2  <-- 0.463
       0     8327        M 0x800006f4 fld     ft5, 3960(a5)          #; ft5  <~~ Doub[0x00100e90], (f:lsu) ft3  <-- 0.464
       0     8328        M 0x800006f8 fadd.d  ft1, ft2, ft1          #; ft2  = 0.463, ft1  = 0.462, (f:lsu) ft4  <-- 0.465
       0     8329        M 0x800006fc fld     ft2, 3968(a5)          #; ft2  <~~ Doub[0x00100e98], (f:lsu) ft5  <-- 0.466
       0     8330        M                                           #; (f:lsu) ft2  <-- 0.467
       0     8331        M                                           #; (f:fpu) ft1  <-- 0.925
       0     8332        M 0x80000700 fadd.d  ft1, ft1, ft3          #; ft1  = 0.925, ft3  = 0.464
       0     8333        M 0x80000704 fld     ft3, 3976(a5)          #; ft3  <~~ Doub[0x00100ea0]
       0     8334        M                                           #; (f:lsu) ft3  <-- 0.468
       0     8335        M                                           #; (f:fpu) ft1  <-- 1.389
       0     8336        M 0x80000708 fadd.d  ft1, ft1, ft4          #; ft1  = 1.389, ft4  = 0.465
       0     8337        M 0x8000070c fld     ft4, 3984(a5)          #; ft4  <~~ Doub[0x00100ea8]
       0     8338        M                                           #; (f:lsu) ft4  <-- 0.4690000
       0     8339        M                                           #; (f:fpu) ft1  <-- 1.854
       0     8340        M 0x80000710 fadd.d  ft1, ft1, ft5          #; ft1  = 1.854, ft5  = 0.466
       0     8341        M 0x80000714 fld     ft5, 3992(a5)          #; ft5  <~~ Doub[0x00100eb0]
       0     8342        M                                           #; (f:lsu) ft5  <-- 0.4700000
       0     8343        M                                           #; (f:fpu) ft1  <-- 2.3200000
       0     8344        M 0x80000718 fadd.d  ft1, ft1, ft2          #; ft1  = 2.3200000, ft2  = 0.467
       0     8345        M 0x8000071c fld     ft2, 4000(a5)          #; ft2  <~~ Doub[0x00100eb8]
       0     8346        M                                           #; (f:lsu) ft2  <-- 0.4710000
       0     8347        M                                           #; (f:fpu) ft1  <-- 2.7870000
       0     8348        M 0x80000720 fadd.d  ft1, ft1, ft3          #; ft1  = 2.7870000, ft3  = 0.468
       0     8349        M 0x80000724 fld     ft3, 4008(a5)          #; ft3  <~~ Doub[0x00100ec0]
       0     8350        M                                           #; (f:lsu) ft3  <-- 0.4720000
       0     8351        M                                           #; (f:fpu) ft1  <-- 3.2550000
       0     8352        M 0x80000728 fadd.d  ft1, ft1, ft4          #; ft1  = 3.2550000, ft4  = 0.4690000
       0     8353        M 0x8000072c fld     ft4, 4016(a5)          #; ft4  <~~ Doub[0x00100ec8]
       0     8354        M                                           #; (f:lsu) ft4  <-- 0.4730000
       0     8355        M                                           #; (f:fpu) ft1  <-- 3.724
       0     8356        M 0x80000730 fadd.d  ft1, ft1, ft5          #; ft1  = 3.724, ft5  = 0.4700000
       0     8357        M 0x80000734 fld     ft5, 4024(a5)          #; ft5  <~~ Doub[0x00100ed0]
       0     8358        M                                           #; (f:lsu) ft5  <-- 0.4740000
       0     8359        M                                           #; (f:fpu) ft1  <-- 4.194
       0     8360        M 0x80000738 fadd.d  ft1, ft1, ft2          #; ft1  = 4.194, ft2  = 0.4710000
       0     8361        M 0x8000073c fld     ft2, 4032(a5)          #; ft2  <~~ Doub[0x00100ed8]
       0     8362        M                                           #; (f:lsu) ft2  <-- 0.4750000
       0     8363        M                                           #; (f:fpu) ft1  <-- 4.665
       0     8364        M 0x80000740 fadd.d  ft1, ft1, ft3          #; ft1  = 4.665, ft3  = 0.4720000
       0     8365        M 0x80000744 fld     ft3, 4040(a5)          #; ft3  <~~ Doub[0x00100ee0]
       0     8366        M                                           #; (f:lsu) ft3  <-- 0.4760000
       0     8367        M                                           #; (f:fpu) ft1  <-- 5.1370000
       0     8368        M 0x80000748 fadd.d  ft1, ft1, ft4          #; ft1  = 5.1370000, ft4  = 0.4730000
       0     8369        M 0x8000074c fld     ft4, 4048(a5)          #; ft4  <~~ Doub[0x00100ee8]
       0     8370        M                                           #; (f:lsu) ft4  <-- 0.4770000
       0     8371        M                                           #; (f:fpu) ft1  <-- 5.61
       0     8372        M 0x80000750 fadd.d  ft1, ft1, ft5          #; ft1  = 5.61, ft5  = 0.4740000
       0     8373        M 0x80000754 fld     ft5, 4056(a5)          #; ft5  <~~ Doub[0x00100ef0]
       0     8374        M                                           #; (f:lsu) ft5  <-- 0.4780000
       0     8375        M                                           #; (f:fpu) ft1  <-- 6.0840000
       0     8376        M 0x80000758 fadd.d  ft1, ft1, ft2          #; ft1  = 6.0840000, ft2  = 0.4750000
       0     8377        M 0x8000075c fld     ft2, 4064(a5)          #; ft2  <~~ Doub[0x00100ef8]
       0     8378        M                                           #; (f:lsu) ft2  <-- 0.4790000
       0     8379        M                                           #; (f:fpu) ft1  <-- 6.559
       0     8380        M 0x80000760 fadd.d  ft1, ft1, ft3          #; ft1  = 6.559, ft3  = 0.4760000
       0     8381        M 0x80000764 fld     ft3, 4072(a5)          #; ft3  <~~ Doub[0x00100f00]
       0     8382        M                                           #; (f:lsu) ft3  <-- 0.48
       0     8383        M                                           #; (f:fpu) ft1  <-- 7.035
       0     8384        M 0x80000768 fadd.d  ft1, ft1, ft4          #; ft1  = 7.035, ft4  = 0.4770000
       0     8385        M 0x8000076c fld     ft4, 4080(a5)          #; ft4  <~~ Doub[0x00100f08]
       0     8386        M                                           #; (f:lsu) ft4  <-- 0.481
       0     8387        M                                           #; (f:fpu) ft1  <-- 7.5120000
       0     8388        M 0x80000770 fadd.d  ft1, ft1, ft5          #; ft1  = 7.5120000, ft5  = 0.4780000
       0     8389        M 0x80000774 fld     ft5, 4088(a5)          #; ft5  <~~ Doub[0x00100f10]
       0     8390        M                                           #; (f:lsu) ft5  <-- 0.482
       0     8391        M                                           #; (f:fpu) ft1  <-- 7.99
       0     8392        M 0x80000778 fadd.d  ft1, ft1, ft2          #; ft1  = 7.99, ft2  = 0.4790000
       0     8393        M 0x8000077c fld     ft2, 0(a5)             #; ft2  <~~ Doub[0x00100f18]
       0     8394        M                                           #; (f:lsu) ft2  <-- 0.483
       0     8395        M                                           #; (f:fpu) ft1  <-- 8.469
       0     8396        M 0x80000780 fadd.d  ft1, ft1, ft3          #; ft1  = 8.469, ft3  = 0.48
       0     8397        M 0x80000784 fld     ft3, 8(a5)             #; ft3  <~~ Doub[0x00100f20]
       0     8398        M                                           #; (f:lsu) ft3  <-- 0.484
       0     8399        M                                           #; (f:fpu) ft1  <-- 8.949
       0     8400        M 0x80000788 fadd.d  ft1, ft1, ft4          #; ft1  = 8.949, ft4  = 0.481
       0     8401        M 0x8000078c fld     ft4, 16(a5)            #; ft4  <~~ Doub[0x00100f28]
       0     8402        M                                           #; (f:lsu) ft4  <-- 0.485
       0     8403        M                                           #; (f:fpu) ft1  <-- 9.43
       0     8404        M 0x80000790 fadd.d  ft1, ft1, ft5          #; ft1  = 9.43, ft5  = 0.482
       0     8405        M 0x80000794 fld     ft5, 24(a5)            #; ft5  <~~ Doub[0x00100f30]
       0     8406        M                                           #; (f:lsu) ft5  <-- 0.486
       0     8407        M                                           #; (f:fpu) ft1  <-- 9.9120000
       0     8408        M 0x80000798 fadd.d  ft1, ft1, ft2          #; ft1  = 9.9120000, ft2  = 0.483
       0     8409        M 0x8000079c fld     ft2, 32(a5)            #; ft2  <~~ Doub[0x00100f38]
       0     8410        M                                           #; (f:lsu) ft2  <-- 0.487
       0     8411        M                                           #; (f:fpu) ft1  <-- 10.395
       0     8412        M 0x800007a0 fadd.d  ft1, ft1, ft3          #; ft1  = 10.395, ft3  = 0.484
       0     8413        M 0x800007a4 fld     ft3, 40(a5)            #; ft3  <~~ Doub[0x00100f40]
       0     8414        M                                           #; (f:lsu) ft3  <-- 0.488
       0     8415        M                                           #; (f:fpu) ft1  <-- 10.879
       0     8416        M 0x800007a8 fadd.d  ft1, ft1, ft4          #; ft1  = 10.879, ft4  = 0.485
       0     8417        M 0x800007ac fld     ft4, 48(a5)            #; ft4  <~~ Doub[0x00100f48]
       0     8418        M                                           #; (f:lsu) ft4  <-- 0.489
       0     8419        M                                           #; (f:fpu) ft1  <-- 11.3640000
       0     8420        M 0x800007b0 fadd.d  ft1, ft1, ft5          #; ft1  = 11.3640000, ft5  = 0.486
       0     8421        M 0x800007b4 fld     ft5, 56(a5)            #; ft5  <~~ Doub[0x00100f50]
       0     8422        M                                           #; (f:lsu) ft5  <-- 0.49
       0     8423        M                                           #; (f:fpu) ft1  <-- 11.85
       0     8424        M 0x800007b8 fadd.d  ft1, ft1, ft2          #; ft1  = 11.85, ft2  = 0.487
       0     8425        M 0x800007bc fld     ft2, 64(a5)            #; ft2  <~~ Doub[0x00100f58]
       0     8426        M                                           #; (f:lsu) ft2  <-- 0.491
       0     8427        M                                           #; (f:fpu) ft1  <-- 12.337
       0     8428        M 0x800007c0 fadd.d  ft1, ft1, ft3          #; ft1  = 12.337, ft3  = 0.488
       0     8429        M 0x800007c4 fld     ft3, 72(a5)            #; ft3  <~~ Doub[0x00100f60]
       0     8430        M                                           #; (f:lsu) ft3  <-- 0.492
       0     8431        M                                           #; (f:fpu) ft1  <-- 12.825
       0     8432        M 0x800007c8 fadd.d  ft1, ft1, ft4          #; ft1  = 12.825, ft4  = 0.489
       0     8433        M 0x800007cc fld     ft4, 80(a5)            #; ft4  <~~ Doub[0x00100f68]
       0     8434        M                                           #; (f:lsu) ft4  <-- 0.493
       0     8435        M                                           #; (f:fpu) ft1  <-- 13.314
       0     8436        M 0x800007d0 fadd.d  ft1, ft1, ft5          #; ft1  = 13.314, ft5  = 0.49
       0     8437        M 0x800007d4 fld     ft5, 88(a5)            #; ft5  <~~ Doub[0x00100f70]
       0     8438        M                                           #; (f:lsu) ft5  <-- 0.494
       0     8439        M                                           #; (f:fpu) ft1  <-- 13.804
       0     8440        M 0x800007d8 fadd.d  ft1, ft1, ft2          #; ft1  = 13.804, ft2  = 0.491
       0     8441        M 0x800007dc fld     ft2, 96(a5)            #; ft2  <~~ Doub[0x00100f78]
       0     8442        M                                           #; (f:lsu) ft2  <-- 0.495
       0     8443        M                                           #; (f:fpu) ft1  <-- 14.295
       0     8444        M 0x800007e0 fadd.d  ft1, ft1, ft3          #; ft1  = 14.295, ft3  = 0.492
       0     8445        M 0x800007e4 fld     ft3, 104(a5)           #; ft3  <~~ Doub[0x00100f80]
       0     8446        M                                           #; (f:lsu) ft3  <-- 0.496
       0     8447        M                                           #; (f:fpu) ft1  <-- 14.7870000
       0     8448        M 0x800007e8 fadd.d  ft1, ft1, ft4          #; ft1  = 14.7870000, ft4  = 0.493
       0     8449        M 0x800007ec fld     ft4, 112(a5)           #; ft4  <~~ Doub[0x00100f88]
       0     8450        M                                           #; (f:lsu) ft4  <-- 0.497
       0     8451        M                                           #; (f:fpu) ft1  <-- 15.28
       0     8452        M 0x800007f0 fadd.d  ft1, ft1, ft5          #; ft1  = 15.28, ft5  = 0.494
       0     8453        M 0x800007f4 fld     ft5, 120(a5)           #; ft5  <~~ Doub[0x00100f90]
       0     8454        M                                           #; (f:lsu) ft5  <-- 0.498
       0     8455        M                                           #; (f:fpu) ft1  <-- 15.774
       0     8456        M 0x80000840 addi    a4, a4, 336            #; a4  = 1008, (wrb) a4  <-- 1344
                         M 0x800007f8 fadd.d  ft1, ft1, ft2          #; ft1  = 15.774, ft2  = 0.495
       0     8457        M 0x800007fc fld     ft2, 128(a5)           #; ft2  <~~ Doub[0x00100f98]
       0     8458        M                                           #; (f:lsu) ft2  <-- 0.499
       0     8459        M 0x80000848 bne     a4, a2, pc - 360       #; a4  = 1344, a2  = 1344, not taken
                         M                                           #; (f:fpu) ft1  <-- 16.269
       0     8460        M 0x8000084c addi    a0, a0, 1              #; a0  = 2, (wrb) a0  <-- 3
                         M 0x80000800 fadd.d  ft1, ft1, ft3          #; ft1  = 16.269, ft3  = 0.496
       0     8461        M 0x80000804 fld     ft3, 136(a5)           #; ft3  <~~ Doub[0x00100fa0]
       0     8462        M                                           #; (f:lsu) ft3  <-- 0.5
       0     8463        M 0x80000850 addi    a1, a1, 1344           #; a1  = 0x00100b28, (wrb) a1  <-- 0x00101068
                         M                                           #; (f:fpu) ft1  <-- 16.7650000
       0     8464        M 0x80000854 bne     a0, a3, pc - 376       #; a0  = 3, a3  = 3, not taken
                         M 0x80000808 fadd.d  ft1, ft1, ft4          #; ft1  = 16.7650000, ft4  = 0.497
       0     8465        M 0x80000858 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002858
                         M 0x8000080c fld     ft4, 144(a5)           #; ft4  <~~ Doub[0x00100fa8]
       0     8466        M 0x8000085c addi    a0, a0, 1616           #; a0  = 0x80002858, (wrb) a0  <-- 0x80002ea8
                         M                                           #; (f:lsu) ft4  <-- 0.501
       0     8467        M                                           #; (f:fpu) ft1  <-- 17.2620000
       0     8468        M 0x80000810 fadd.d  ft1, ft1, ft5          #; ft1  = 17.2620000, ft5  = 0.498
       0     8469        M 0x80000814 fld     ft5, 152(a5)           #; ft5  <~~ Doub[0x00100fb0]
       0     8470        M                                           #; (f:lsu) ft5  <-- 0.502
       0     8471        M                                           #; (f:fpu) ft1  <-- 17.7600000
       0     8472        M 0x80000818 fadd.d  ft1, ft1, ft2          #; ft1  = 17.7600000, ft2  = 0.499
       0     8473        M 0x8000081c fld     ft2, 160(a5)           #; ft2  <~~ Doub[0x00100fb8]
       0     8474        M                                           #; (f:lsu) ft2  <-- 0.503
       0     8475        M                                           #; (f:fpu) ft1  <-- 18.2590000
       0     8476        M 0x80000820 fadd.d  ft1, ft1, ft3          #; ft1  = 18.2590000, ft3  = 0.5
       0     8479        M                                           #; (f:fpu) ft1  <-- 18.7590000
       0     8480        M 0x80000824 fadd.d  ft1, ft1, ft4          #; ft1  = 18.7590000, ft4  = 0.501
       0     8483        M                                           #; (f:fpu) ft1  <-- 19.2600000
       0     8484        M 0x80000828 fadd.d  ft1, ft1, ft5          #; ft1  = 19.2600000, ft5  = 0.502
       0     8487        M                                           #; (f:fpu) ft1  <-- 19.7620000
       0     8488        M 0x8000082c fadd.d  ft1, ft1, ft2          #; ft1  = 19.7620000, ft2  = 0.503
       0     8490        M 0x80000870 lw      a2, 8(sp)              #; sp  = 0x0011ff40, a2  <~~ Word[0x0011ff48]
       0     8491        M                                           #; (f:fpu) ft1  <-- 20.2650000
       0     8492        M 0x80000830 fadd.d  ft0, ft1, ft0          #; ft1  = 20.2650000, ft0  = 532.4550000
       0     8493        M                                           #; (lsu) a2  <-- 0
       0     8494        M 0x80000874 lw      a3, 12(sp)             #; sp  = 0x0011ff40, a3  <~~ Word[0x0011ff4c]
       0     8495        M 0x80000878 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002878
                         M                                           #; (f:fpu) ft0  <-- 552.7200000
       0     8496        M 0x8000087c addi    a0, a0, 877            #; a0  = 0x80002878, (wrb) a0  <-- 0x80002be5
                         M 0x80000834 fadd.d  ft0, ft1, ft0          #; ft1  = 20.2650000, ft0  = 552.7200000
       0     8497        M                                           #; (lsu) a3  <-- 0
       0     8499        M                                           #; (f:fpu) ft0  <-- 572.9850000
       0     8500        M 0x80000838 fadd.d  ft0, ft1, ft0          #; ft1  = 20.2650000, ft0  = 572.9850000
       0     8502        M 0x80000880 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000880
       0     8503        M 0x80000884 jalr    ra, ra, 40             #; ra  = 0x80000880, (wrb) ra  <-- 0x80000888, goto 0x800008a8
                         M                                           #; (f:fpu) ft0  <-- 593.2500000
       0     8504        M 0x8000083c fadd.d  ft0, ft1, ft0          #; ft1  = 20.2650000, ft0  = 593.2500000
       0     8507        M 0x800008a8 addi    sp, sp, -48            #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff10
                         M                                           #; (f:fpu) ft0  <-- 613.5150000
       0     8508        M 0x800008ac sw      ra, 12(sp)             #; sp  = 0x0011ff10, 0x80000888 ~~> Word[0x0011ff1c]
                         M 0x80000844 fadd.d  ft0, ft1, ft0          #; ft1  = 20.2650000, ft0  = 613.5150000
       0     8510        M 0x800008b0 mv      t0, a0                 #; a0  = 0x80002be5, (wrb) t0  <-- 0x80002be5
                         M 0x80000860 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80002ea8]
       0     8511        M 0x800008b4 sw      a7, 44(sp)             #; sp  = 0x0011ff10, 0xffff0000 ~~> Word[0x0011ff3c]
                         M                                           #; (f:fpu) ft0  <-- 633.7800000
       0     8512        M 0x800008b8 sw      a6, 40(sp)             #; sp  = 0x0011ff10, 0x00120000 ~~> Word[0x0011ff38]
       0     8513        M 0x800008bc sw      a5, 36(sp)             #; sp  = 0x0011ff10, 0x00100f18 ~~> Word[0x0011ff34]
       0     8519        M                                           #; (f:lsu) ft1  <-- -633.78
       0     8520        M 0x80000864 fadd.d  ft0, ft0, ft1          #; ft0  = 633.7800000, ft1  = -633.78
       0     8522        M 0x800008c0 sw      a4, 32(sp)             #; sp  = 0x0011ff10, 1344 ~~> Word[0x0011ff30]
       0     8523        M 0x800008c4 sw      a3, 28(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff2c]
                         M                                           #; (f:fpu) ft0  <-- 0.0000000
       0     8524        M 0x800008c8 sw      a2, 24(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff28]
                         M 0x80000868 fsgnjx.d fs0, ft0, ft0         #; ft0  = 0.0000000, ft0  = 0.0000000
       0     8525        M 0x800008cc sw      a1, 20(sp)             #; sp  = 0x0011ff10, 0x00101068 ~~> Word[0x0011ff24]
                         M                                           #; (f:fpu) fs0  <-- 0.0000000
       0     8527        M 0x8000086c fsd     fs0, 8(sp)             #; 0.0000000 ~~> Doub[0x0011ff48]
       0     8534        M 0x800008d0 addi    a0, sp, 20             #; sp  = 0x0011ff10, (wrb) a0  <-- 0x0011ff24
       0     8535        M 0x800008d4 sw      a0, 8(sp)              #; sp  = 0x0011ff10, 0x0011ff24 ~~> Word[0x0011ff18]
       0     8536        M 0x800008d8 auipc   a0, 0x1                #; (wrb) a0  <-- 0x800018d8
       0     8537        M 0x800008dc addi    a0, a0, -988           #; a0  = 0x800018d8, (wrb) a0  <-- 0x800014fc
       0     8546        M 0x800008e0 addi    a1, sp, 7              #; sp  = 0x0011ff10, (wrb) a1  <-- 0x0011ff17
       0     8547        M 0x800008e4 li      a2, -1                 #; (wrb) a2  <-- -1
       0     8548        M 0x800008e8 addi    a4, sp, 20             #; sp  = 0x0011ff10, (wrb) a4  <-- 0x0011ff24
       0     8549        M 0x800008ec mv      a3, t0                 #; t0  = 0x80002be5, (wrb) a3  <-- 0x80002be5
       0     8558        M 0x800008f0 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800008f0
       0     8559        M 0x800008f4 jalr    ra, ra, 20             #; ra  = 0x800008f0, (wrb) ra  <-- 0x800008f8, goto 0x80000904
       0     8570        M 0x80000904 addi    sp, sp, -112           #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011fea0
       0     8571        M 0x80000908 sw      ra, 108(sp)            #; sp  = 0x0011fea0, 0x800008f8 ~~> Word[0x0011ff0c]
       0     8572        M 0x8000090c sw      s0, 104(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff08]
       0     8582        M 0x80000910 sw      s1, 100(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff04]
       0     8583        M 0x80000914 sw      s2, 96(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff00]
       0     8584        M 0x80000918 sw      s3, 92(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fefc]
       0     8585        M 0x8000091c sw      s4, 88(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef8]
       0     8594        M 0x80000920 sw      s5, 84(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef4]
       0     8595        M 0x80000924 sw      s6, 80(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef0]
       0     8596        M 0x80000928 sw      s7, 76(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011feec]
       0     8597        M 0x8000092c sw      s8, 72(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee8]
       0     8606        M 0x80000930 sw      s9, 68(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee4]
       0     8607        M 0x80000934 sw      s10, 64(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee0]
       0     8608        M 0x80000938 sw      s11, 60(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fedc]
       0     8609        M 0x8000093c mv      s3, a4                 #; a4  = 0x0011ff24, (wrb) s3  <-- 0x0011ff24
       0     8618        M 0x80000940 mv      s0, a3                 #; a3  = 0x80002be5, (wrb) s0  <-- 0x80002be5
       0     8619        M 0x80000944 mv      s5, a2                 #; a2  = -1, (wrb) s5  <-- -1
       0     8620        M 0x80000948 mv      s4, a1                 #; a1  = 0x0011ff17, (wrb) s4  <-- 0x0011ff17
       0     8621        M 0x8000094c beqz    a1, pc + 12            #; a1  = 0x0011ff17, not taken
       0     8630        M 0x80000950 mv      s2, a0                 #; a0  = 0x800014fc, (wrb) s2  <-- 0x800014fc
       0     8631        M 0x80000954 j       pc + 0xc               #; goto 0x80000960
       0     8642        M 0x80000960 li      s8, 0                  #; (wrb) s8  <-- 0
       0     8643        M 0x80000964 li      s6, 37                 #; (wrb) s6  <-- 37
       0     8644        M 0x80000968 li      s11, 16                #; (wrb) s11 <-- 16
       0     8645        M 0x8000096c li      s7, 46                 #; (wrb) s7  <-- 46
       0     8654        M 0x80000970 lui     a0, 0x1                #; (wrb) a0  <-- 4096
       0     8655        M 0x80000974 addi    a0, a0, -2048          #; a0  = 4096, (wrb) a0  <-- 2048
       0     8656        M 0x80000978 sw      a0, 24(sp)             #; sp  = 0x0011fea0, 2048 ~~> Word[0x0011feb8]
       0     8657        M 0x8000097c lui     a0, 0x10               #; (wrb) a0  <-- 0x00010000
       0     8666        M 0x80000980 addi    a0, a0, -1             #; a0  = 0x00010000, (wrb) a0  <-- 65535
       0     8667        M 0x80000984 sw      a0, 16(sp)             #; sp  = 0x0011fea0, 65535 ~~> Word[0x0011feb0]
       0     8668        M 0x80000988 addi    s10, s0, 2             #; s0  = 0x80002be5, (wrb) s10 <-- 0x80002be7
       0     8669        M 0x8000098c mv      s9, s8                 #; s8  = 0, (wrb) s9  <-- 0
       0     8678        M 0x80000990 li      s8, 10                 #; (wrb) s8  <-- 10
       0     8679        M 0x80000994 lbu     a0, 0(s0)              #; s0  = 0x80002be5, a0  <~~ Byte[0x80002be5]
       0     8690        M                                           #; (lsu) a0  <-- 101
       0     8691        M 0x80000998 beqz    a0, pc + 2824          #; a0  = 101, not taken
       0     8692        M 0x8000099c beq     a0, s6, pc + 48        #; a0  = 101, s6  = 37, not taken
       0     8693        M 0x800009a0 addi    s1, s9, 1              #; s9  = 0, (wrb) s1  <-- 1
       0     8694        M 0x800009a4 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     8695        M 0x800009a8 mv      a2, s9                 #; s9  = 0, (wrb) a2  <-- 0
       0     8696        M 0x800009ac mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     8705        M 0x800009b0 jalr    s2                     #; s2  = 0x800014fc, (wrb) ra  <-- 0x800009b4, goto 0x800014fc
       0     8728        M 0x800014fc beqz    a0, pc + 168           #; a0  = 101, not taken
       0     8740        M 0x80001500 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     8741        M 0x80001504 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     8742        M 0x80001508 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     8743        M 0x8000150c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000350c
       0     8752        M 0x80001510 addi    a3, a3, -1448          #; a3  = 0x8000350c, (wrb) a3  <-- 0x80002f64
       0     8753        M 0x80001514 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f64, (wrb) a1  <-- 0x80002f64
       0     8754        M 0x80001518 lw      a4, 0(a1)              #; a1  = 0x80002f64, a4  <~~ Word[0x80002f64]
       0     8765        M                                           #; (lsu) a4  <-- 0
       0     8766        M 0x8000151c addi    a5, a4, 1              #; a4  = 0, (wrb) a5  <-- 1
       0     8767        M 0x80001520 sw      a5, 0(a1)              #; a1  = 0x80002f64, 1 ~~> Word[0x80002f64]
       0     8768        M 0x80001524 add     a4, a1, a4             #; a1  = 0x80002f64, a4  = 0, (wrb) a4  <-- 0x80002f64
       0     8769        M 0x80001528 sb      a0, 72(a4)             #; a4  = 0x80002f64, 101 ~~> Byte[0x80002fac]
       0     8770        M 0x8000152c lw      a4, 0(a1)              #; a1  = 0x80002f64, a4  <~~ Word[0x80002f64]
       0     8791        M                                           #; (lsu) a4  <-- 1
       0     8792        M 0x80001530 addi    a4, a4, -1020          #; a4  = 1, (wrb) a4  <-- -1019
       0     8793        M 0x80001534 snez    a4, a4                 #; a4  = -1019, (wrb) a4  <-- 1
       0     8794        M 0x80001538 addi    a0, a0, -10            #; a0  = 101, (wrb) a0  <-- 91
       0     8795        M 0x8000153c snez    a0, a0                 #; a0  = 91, (wrb) a0  <-- 1
       0     8796        M 0x80001540 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     8797        M 0x80001544 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015a4
       0     8819        M 0x800015a4 ret                            #; ra  = 0x800009b4, goto 0x800009b4
       0     8833        M 0x800009b4 addi    s0, s0, 1              #; s0  = 0x80002be5, (wrb) s0  <-- 0x80002be6
       0     8834        M 0x800009b8 addi    s10, s10, 1            #; s10 = 0x80002be7, (wrb) s10 <-- 0x80002be8
       0     8835        M 0x800009bc mv      s9, s1                 #; s1  = 1, (wrb) s9  <-- 1
       0     8836        M 0x800009c0 lbu     a0, 0(s0)              #; s0  = 0x80002be6, a0  <~~ Byte[0x80002be6]
       0     8847        M                                           #; (lsu) a0  <-- 114
       0     8848        M 0x800009c4 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x8000099c
       0     8849        M 0x8000099c beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     8852        M 0x800009a0 addi    s1, s9, 1              #; s9  = 1, (wrb) s1  <-- 2
       0     8853        M 0x800009a4 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     8854        M 0x800009a8 mv      a2, s9                 #; s9  = 1, (wrb) a2  <-- 1
       0     8855        M 0x800009ac mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     8856        M 0x800009b0 jalr    s2                     #; s2  = 0x800014fc, (wrb) ra  <-- 0x800009b4, goto 0x800014fc
       0     8859        M 0x800014fc beqz    a0, pc + 168           #; a0  = 114, not taken
       0     8862        M 0x80001500 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     8863        M 0x80001504 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     8864        M 0x80001508 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     8865        M 0x8000150c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000350c
       0     8866        M 0x80001510 addi    a3, a3, -1448          #; a3  = 0x8000350c, (wrb) a3  <-- 0x80002f64
       0     8867        M                                           #; (acc) a1  <-- 0x00d605b3
       0     8868        M 0x80001514 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f64, (wrb) a1  <-- 0x80002f64
       0     8869        M 0x80001518 lw      a4, 0(a1)              #; a1  = 0x80002f64, a4  <~~ Word[0x80002f64]
       0     8880        M                                           #; (lsu) a4  <-- 1
       0     8881        M 0x8000151c addi    a5, a4, 1              #; a4  = 1, (wrb) a5  <-- 2
       0     8882        M 0x80001520 sw      a5, 0(a1)              #; a1  = 0x80002f64, 2 ~~> Word[0x80002f64]
       0     8883        M 0x80001524 add     a4, a1, a4             #; a1  = 0x80002f64, a4  = 1, (wrb) a4  <-- 0x80002f65
       0     8884        M 0x80001528 sb      a0, 72(a4)             #; a4  = 0x80002f65, 114 ~~> Byte[0x80002fad]
       0     8885        M 0x8000152c lw      a4, 0(a1)              #; a1  = 0x80002f64, a4  <~~ Word[0x80002f64]
       0     8906        M                                           #; (lsu) a4  <-- 2
       0     8907        M 0x80001530 addi    a4, a4, -1020          #; a4  = 2, (wrb) a4  <-- -1018
       0     8908        M 0x80001534 snez    a4, a4                 #; a4  = -1018, (wrb) a4  <-- 1
       0     8909        M 0x80001538 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     8910        M 0x8000153c snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     8911        M 0x80001540 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     8912        M 0x80001544 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015a4
       0     8916        M 0x800015a4 ret                            #; ra  = 0x800009b4, goto 0x800009b4
       0     8921        M 0x800009b4 addi    s0, s0, 1              #; s0  = 0x80002be6, (wrb) s0  <-- 0x80002be7
       0     8922        M 0x800009b8 addi    s10, s10, 1            #; s10 = 0x80002be8, (wrb) s10 <-- 0x80002be9
       0     8923        M 0x800009bc mv      s9, s1                 #; s1  = 2, (wrb) s9  <-- 2
       0     8924        M 0x800009c0 lbu     a0, 0(s0)              #; s0  = 0x80002be7, a0  <~~ Byte[0x80002be7]
       0     8935        M                                           #; (lsu) a0  <-- 114
       0     8936        M 0x800009c4 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x8000099c
       0     8937        M 0x8000099c beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     8940        M 0x800009a0 addi    s1, s9, 1              #; s9  = 2, (wrb) s1  <-- 3
       0     8941        M 0x800009a4 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     8942        M 0x800009a8 mv      a2, s9                 #; s9  = 2, (wrb) a2  <-- 2
       0     8943        M 0x800009ac mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     8944        M 0x800009b0 jalr    s2                     #; s2  = 0x800014fc, (wrb) ra  <-- 0x800009b4, goto 0x800014fc
       0     8947        M 0x800014fc beqz    a0, pc + 168           #; a0  = 114, not taken
       0     8950        M 0x80001500 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     8951        M 0x80001504 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     8952        M 0x80001508 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     8953        M 0x8000150c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000350c
       0     8954        M 0x80001510 addi    a3, a3, -1448          #; a3  = 0x8000350c, (wrb) a3  <-- 0x80002f64
       0     8955        M                                           #; (acc) a1  <-- 0x00d605b3
       0     8956        M 0x80001514 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f64, (wrb) a1  <-- 0x80002f64
       0     8957        M 0x80001518 lw      a4, 0(a1)              #; a1  = 0x80002f64, a4  <~~ Word[0x80002f64]
       0     8968        M                                           #; (lsu) a4  <-- 2
       0     8969        M 0x8000151c addi    a5, a4, 1              #; a4  = 2, (wrb) a5  <-- 3
       0     8970        M 0x80001520 sw      a5, 0(a1)              #; a1  = 0x80002f64, 3 ~~> Word[0x80002f64]
       0     8971        M 0x80001524 add     a4, a1, a4             #; a1  = 0x80002f64, a4  = 2, (wrb) a4  <-- 0x80002f66
       0     8972        M 0x80001528 sb      a0, 72(a4)             #; a4  = 0x80002f66, 114 ~~> Byte[0x80002fae]
       0     8973        M 0x8000152c lw      a4, 0(a1)              #; a1  = 0x80002f64, a4  <~~ Word[0x80002f64]
       0     8994        M                                           #; (lsu) a4  <-- 3
       0     8995        M 0x80001530 addi    a4, a4, -1020          #; a4  = 3, (wrb) a4  <-- -1017
       0     8996        M 0x80001534 snez    a4, a4                 #; a4  = -1017, (wrb) a4  <-- 1
       0     8997        M 0x80001538 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     8998        M 0x8000153c snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     8999        M 0x80001540 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     9000        M 0x80001544 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015a4
       0     9004        M 0x800015a4 ret                            #; ra  = 0x800009b4, goto 0x800009b4
       0     9009        M 0x800009b4 addi    s0, s0, 1              #; s0  = 0x80002be7, (wrb) s0  <-- 0x80002be8
       0     9010        M 0x800009b8 addi    s10, s10, 1            #; s10 = 0x80002be9, (wrb) s10 <-- 0x80002bea
       0     9011        M 0x800009bc mv      s9, s1                 #; s1  = 3, (wrb) s9  <-- 3
       0     9012        M 0x800009c0 lbu     a0, 0(s0)              #; s0  = 0x80002be8, a0  <~~ Byte[0x80002be8]
       0     9023        M                                           #; (lsu) a0  <-- 111
       0     9024        M 0x800009c4 bnez    a0, pc - 40            #; a0  = 111, taken, goto 0x8000099c
       0     9025        M 0x8000099c beq     a0, s6, pc + 48        #; a0  = 111, s6  = 37, not taken
       0     9028        M 0x800009a0 addi    s1, s9, 1              #; s9  = 3, (wrb) s1  <-- 4
       0     9029        M 0x800009a4 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     9030        M 0x800009a8 mv      a2, s9                 #; s9  = 3, (wrb) a2  <-- 3
       0     9031        M 0x800009ac mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     9032        M 0x800009b0 jalr    s2                     #; s2  = 0x800014fc, (wrb) ra  <-- 0x800009b4, goto 0x800014fc
       0     9035        M 0x800014fc beqz    a0, pc + 168           #; a0  = 111, not taken
       0     9038        M 0x80001500 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     9039        M 0x80001504 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     9040        M 0x80001508 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     9041        M 0x8000150c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000350c
       0     9042        M 0x80001510 addi    a3, a3, -1448          #; a3  = 0x8000350c, (wrb) a3  <-- 0x80002f64
       0     9043        M                                           #; (acc) a1  <-- 0x00d605b3
       0     9044        M 0x80001514 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f64, (wrb) a1  <-- 0x80002f64
       0     9045        M 0x80001518 lw      a4, 0(a1)              #; a1  = 0x80002f64, a4  <~~ Word[0x80002f64]
       0     9056        M                                           #; (lsu) a4  <-- 3
       0     9057        M 0x8000151c addi    a5, a4, 1              #; a4  = 3, (wrb) a5  <-- 4
       0     9058        M 0x80001520 sw      a5, 0(a1)              #; a1  = 0x80002f64, 4 ~~> Word[0x80002f64]
       0     9059        M 0x80001524 add     a4, a1, a4             #; a1  = 0x80002f64, a4  = 3, (wrb) a4  <-- 0x80002f67
       0     9060        M 0x80001528 sb      a0, 72(a4)             #; a4  = 0x80002f67, 111 ~~> Byte[0x80002faf]
       0     9061        M 0x8000152c lw      a4, 0(a1)              #; a1  = 0x80002f64, a4  <~~ Word[0x80002f64]
       0     9082        M                                           #; (lsu) a4  <-- 4
       0     9083        M 0x80001530 addi    a4, a4, -1020          #; a4  = 4, (wrb) a4  <-- -1016
       0     9084        M 0x80001534 snez    a4, a4                 #; a4  = -1016, (wrb) a4  <-- 1
       0     9085        M 0x80001538 addi    a0, a0, -10            #; a0  = 111, (wrb) a0  <-- 101
       0     9086        M 0x8000153c snez    a0, a0                 #; a0  = 101, (wrb) a0  <-- 1
       0     9087        M 0x80001540 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     9088        M 0x80001544 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015a4
       0     9092        M 0x800015a4 ret                            #; ra  = 0x800009b4, goto 0x800009b4
       0     9097        M 0x800009b4 addi    s0, s0, 1              #; s0  = 0x80002be8, (wrb) s0  <-- 0x80002be9
       0     9098        M 0x800009b8 addi    s10, s10, 1            #; s10 = 0x80002bea, (wrb) s10 <-- 0x80002beb
       0     9099        M 0x800009bc mv      s9, s1                 #; s1  = 4, (wrb) s9  <-- 4
       0     9100        M 0x800009c0 lbu     a0, 0(s0)              #; s0  = 0x80002be9, a0  <~~ Byte[0x80002be9]
       0     9111        M                                           #; (lsu) a0  <-- 114
       0     9112        M 0x800009c4 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x8000099c
       0     9113        M 0x8000099c beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     9116        M 0x800009a0 addi    s1, s9, 1              #; s9  = 4, (wrb) s1  <-- 5
       0     9117        M 0x800009a4 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     9118        M 0x800009a8 mv      a2, s9                 #; s9  = 4, (wrb) a2  <-- 4
       0     9119        M 0x800009ac mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     9120        M 0x800009b0 jalr    s2                     #; s2  = 0x800014fc, (wrb) ra  <-- 0x800009b4, goto 0x800014fc
       0     9123        M 0x800014fc beqz    a0, pc + 168           #; a0  = 114, not taken
       0     9126        M 0x80001500 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     9127        M 0x80001504 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     9128        M 0x80001508 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     9129        M 0x8000150c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000350c
       0     9130        M 0x80001510 addi    a3, a3, -1448          #; a3  = 0x8000350c, (wrb) a3  <-- 0x80002f64
       0     9131        M                                           #; (acc) a1  <-- 0x00d605b3
       0     9132        M 0x80001514 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f64, (wrb) a1  <-- 0x80002f64
       0     9133        M 0x80001518 lw      a4, 0(a1)              #; a1  = 0x80002f64, a4  <~~ Word[0x80002f64]
       0     9144        M                                           #; (lsu) a4  <-- 4
       0     9145        M 0x8000151c addi    a5, a4, 1              #; a4  = 4, (wrb) a5  <-- 5
       0     9146        M 0x80001520 sw      a5, 0(a1)              #; a1  = 0x80002f64, 5 ~~> Word[0x80002f64]
       0     9147        M 0x80001524 add     a4, a1, a4             #; a1  = 0x80002f64, a4  = 4, (wrb) a4  <-- 0x80002f68
       0     9148        M 0x80001528 sb      a0, 72(a4)             #; a4  = 0x80002f68, 114 ~~> Byte[0x80002fb0]
       0     9149        M 0x8000152c lw      a4, 0(a1)              #; a1  = 0x80002f64, a4  <~~ Word[0x80002f64]
       0     9170        M                                           #; (lsu) a4  <-- 5
       0     9171        M 0x80001530 addi    a4, a4, -1020          #; a4  = 5, (wrb) a4  <-- -1015
       0     9172        M 0x80001534 snez    a4, a4                 #; a4  = -1015, (wrb) a4  <-- 1
       0     9173        M 0x80001538 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     9174        M 0x8000153c snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     9175        M 0x80001540 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     9176        M 0x80001544 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015a4
       0     9180        M 0x800015a4 ret                            #; ra  = 0x800009b4, goto 0x800009b4
       0     9185        M 0x800009b4 addi    s0, s0, 1              #; s0  = 0x80002be9, (wrb) s0  <-- 0x80002bea
       0     9186        M 0x800009b8 addi    s10, s10, 1            #; s10 = 0x80002beb, (wrb) s10 <-- 0x80002bec
       0     9187        M 0x800009bc mv      s9, s1                 #; s1  = 5, (wrb) s9  <-- 5
       0     9188        M 0x800009c0 lbu     a0, 0(s0)              #; s0  = 0x80002bea, a0  <~~ Byte[0x80002bea]
       0     9199        M                                           #; (lsu) a0  <-- 32
       0     9200        M 0x800009c4 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x8000099c
       0     9201        M 0x8000099c beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     9204        M 0x800009a0 addi    s1, s9, 1              #; s9  = 5, (wrb) s1  <-- 6
       0     9205        M 0x800009a4 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     9206        M 0x800009a8 mv      a2, s9                 #; s9  = 5, (wrb) a2  <-- 5
       0     9207        M 0x800009ac mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     9208        M 0x800009b0 jalr    s2                     #; s2  = 0x800014fc, (wrb) ra  <-- 0x800009b4, goto 0x800014fc
       0     9211        M 0x800014fc beqz    a0, pc + 168           #; a0  = 32, not taken
       0     9214        M 0x80001500 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     9215        M 0x80001504 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     9216        M 0x80001508 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     9217        M 0x8000150c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000350c
       0     9218        M 0x80001510 addi    a3, a3, -1448          #; a3  = 0x8000350c, (wrb) a3  <-- 0x80002f64
       0     9219        M                                           #; (acc) a1  <-- 0x00d605b3
       0     9220        M 0x80001514 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f64, (wrb) a1  <-- 0x80002f64
       0     9221        M 0x80001518 lw      a4, 0(a1)              #; a1  = 0x80002f64, a4  <~~ Word[0x80002f64]
       0     9232        M                                           #; (lsu) a4  <-- 5
       0     9233        M 0x8000151c addi    a5, a4, 1              #; a4  = 5, (wrb) a5  <-- 6
       0     9234        M 0x80001520 sw      a5, 0(a1)              #; a1  = 0x80002f64, 6 ~~> Word[0x80002f64]
       0     9235        M 0x80001524 add     a4, a1, a4             #; a1  = 0x80002f64, a4  = 5, (wrb) a4  <-- 0x80002f69
       0     9236        M 0x80001528 sb      a0, 72(a4)             #; a4  = 0x80002f69, 32 ~~> Byte[0x80002fb1]
       0     9237        M 0x8000152c lw      a4, 0(a1)              #; a1  = 0x80002f64, a4  <~~ Word[0x80002f64]
       0     9258        M                                           #; (lsu) a4  <-- 6
       0     9259        M 0x80001530 addi    a4, a4, -1020          #; a4  = 6, (wrb) a4  <-- -1014
       0     9260        M 0x80001534 snez    a4, a4                 #; a4  = -1014, (wrb) a4  <-- 1
       0     9261        M 0x80001538 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
       0     9262        M 0x8000153c snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
       0     9263        M 0x80001540 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     9264        M 0x80001544 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015a4
       0     9268        M 0x800015a4 ret                            #; ra  = 0x800009b4, goto 0x800009b4
       0     9273        M 0x800009b4 addi    s0, s0, 1              #; s0  = 0x80002bea, (wrb) s0  <-- 0x80002beb
       0     9274        M 0x800009b8 addi    s10, s10, 1            #; s10 = 0x80002bec, (wrb) s10 <-- 0x80002bed
       0     9275        M 0x800009bc mv      s9, s1                 #; s1  = 6, (wrb) s9  <-- 6
       0     9276        M 0x800009c0 lbu     a0, 0(s0)              #; s0  = 0x80002beb, a0  <~~ Byte[0x80002beb]
       0     9287        M                                           #; (lsu) a0  <-- 61
       0     9288        M 0x800009c4 bnez    a0, pc - 40            #; a0  = 61, taken, goto 0x8000099c
       0     9289        M 0x8000099c beq     a0, s6, pc + 48        #; a0  = 61, s6  = 37, not taken
       0     9292        M 0x800009a0 addi    s1, s9, 1              #; s9  = 6, (wrb) s1  <-- 7
       0     9293        M 0x800009a4 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     9294        M 0x800009a8 mv      a2, s9                 #; s9  = 6, (wrb) a2  <-- 6
       0     9295        M 0x800009ac mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     9296        M 0x800009b0 jalr    s2                     #; s2  = 0x800014fc, (wrb) ra  <-- 0x800009b4, goto 0x800014fc
       0     9299        M 0x800014fc beqz    a0, pc + 168           #; a0  = 61, not taken
       0     9302        M 0x80001500 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     9303        M 0x80001504 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     9304        M 0x80001508 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     9305        M 0x8000150c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000350c
       0     9306        M 0x80001510 addi    a3, a3, -1448          #; a3  = 0x8000350c, (wrb) a3  <-- 0x80002f64
       0     9307        M                                           #; (acc) a1  <-- 0x00d605b3
       0     9308        M 0x80001514 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f64, (wrb) a1  <-- 0x80002f64
       0     9309        M 0x80001518 lw      a4, 0(a1)              #; a1  = 0x80002f64, a4  <~~ Word[0x80002f64]
       0     9320        M                                           #; (lsu) a4  <-- 6
       0     9321        M 0x8000151c addi    a5, a4, 1              #; a4  = 6, (wrb) a5  <-- 7
       0     9322        M 0x80001520 sw      a5, 0(a1)              #; a1  = 0x80002f64, 7 ~~> Word[0x80002f64]
       0     9323        M 0x80001524 add     a4, a1, a4             #; a1  = 0x80002f64, a4  = 6, (wrb) a4  <-- 0x80002f6a
       0     9324        M 0x80001528 sb      a0, 72(a4)             #; a4  = 0x80002f6a, 61 ~~> Byte[0x80002fb2]
       0     9325        M 0x8000152c lw      a4, 0(a1)              #; a1  = 0x80002f64, a4  <~~ Word[0x80002f64]
       0     9346        M                                           #; (lsu) a4  <-- 7
       0     9347        M 0x80001530 addi    a4, a4, -1020          #; a4  = 7, (wrb) a4  <-- -1013
       0     9348        M 0x80001534 snez    a4, a4                 #; a4  = -1013, (wrb) a4  <-- 1
       0     9349        M 0x80001538 addi    a0, a0, -10            #; a0  = 61, (wrb) a0  <-- 51
       0     9350        M 0x8000153c snez    a0, a0                 #; a0  = 51, (wrb) a0  <-- 1
       0     9351        M 0x80001540 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     9352        M 0x80001544 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015a4
       0     9356        M 0x800015a4 ret                            #; ra  = 0x800009b4, goto 0x800009b4
       0     9361        M 0x800009b4 addi    s0, s0, 1              #; s0  = 0x80002beb, (wrb) s0  <-- 0x80002bec
       0     9362        M 0x800009b8 addi    s10, s10, 1            #; s10 = 0x80002bed, (wrb) s10 <-- 0x80002bee
       0     9363        M 0x800009bc mv      s9, s1                 #; s1  = 7, (wrb) s9  <-- 7
       0     9364        M 0x800009c0 lbu     a0, 0(s0)              #; s0  = 0x80002bec, a0  <~~ Byte[0x80002bec]
       0     9375        M                                           #; (lsu) a0  <-- 32
       0     9376        M 0x800009c4 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x8000099c
       0     9377        M 0x8000099c beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     9380        M 0x800009a0 addi    s1, s9, 1              #; s9  = 7, (wrb) s1  <-- 8
       0     9381        M 0x800009a4 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     9382        M 0x800009a8 mv      a2, s9                 #; s9  = 7, (wrb) a2  <-- 7
       0     9383        M 0x800009ac mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     9384        M 0x800009b0 jalr    s2                     #; s2  = 0x800014fc, (wrb) ra  <-- 0x800009b4, goto 0x800014fc
       0     9387        M 0x800014fc beqz    a0, pc + 168           #; a0  = 32, not taken
       0     9390        M 0x80001500 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     9391        M 0x80001504 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     9392        M 0x80001508 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     9393        M 0x8000150c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000350c
       0     9394        M 0x80001510 addi    a3, a3, -1448          #; a3  = 0x8000350c, (wrb) a3  <-- 0x80002f64
       0     9395        M                                           #; (acc) a1  <-- 0x00d605b3
       0     9396        M 0x80001514 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f64, (wrb) a1  <-- 0x80002f64
       0     9397        M 0x80001518 lw      a4, 0(a1)              #; a1  = 0x80002f64, a4  <~~ Word[0x80002f64]
       0     9408        M                                           #; (lsu) a4  <-- 7
       0     9409        M 0x8000151c addi    a5, a4, 1              #; a4  = 7, (wrb) a5  <-- 8
       0     9410        M 0x80001520 sw      a5, 0(a1)              #; a1  = 0x80002f64, 8 ~~> Word[0x80002f64]
       0     9411        M 0x80001524 add     a4, a1, a4             #; a1  = 0x80002f64, a4  = 7, (wrb) a4  <-- 0x80002f6b
       0     9412        M 0x80001528 sb      a0, 72(a4)             #; a4  = 0x80002f6b, 32 ~~> Byte[0x80002fb3]
       0     9413        M 0x8000152c lw      a4, 0(a1)              #; a1  = 0x80002f64, a4  <~~ Word[0x80002f64]
       0     9434        M                                           #; (lsu) a4  <-- 8
       0     9435        M 0x80001530 addi    a4, a4, -1020          #; a4  = 8, (wrb) a4  <-- -1012
       0     9436        M 0x80001534 snez    a4, a4                 #; a4  = -1012, (wrb) a4  <-- 1
       0     9437        M 0x80001538 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
       0     9438        M 0x8000153c snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
       0     9439        M 0x80001540 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     9440        M 0x80001544 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015a4
       0     9444        M 0x800015a4 ret                            #; ra  = 0x800009b4, goto 0x800009b4
       0     9449        M 0x800009b4 addi    s0, s0, 1              #; s0  = 0x80002bec, (wrb) s0  <-- 0x80002bed
       0     9450        M 0x800009b8 addi    s10, s10, 1            #; s10 = 0x80002bee, (wrb) s10 <-- 0x80002bef
       0     9451        M 0x800009bc mv      s9, s1                 #; s1  = 8, (wrb) s9  <-- 8
       0     9452        M 0x800009c0 lbu     a0, 0(s0)              #; s0  = 0x80002bed, a0  <~~ Byte[0x80002bed]
       0     9463        M                                           #; (lsu) a0  <-- 37
       0     9464        M 0x800009c4 bnez    a0, pc - 40            #; a0  = 37, taken, goto 0x8000099c
       0     9465        M 0x8000099c beq     a0, s6, pc + 48        #; a0  = 37, s6  = 37, taken, goto 0x800009cc
       0     9466        M 0x800009cc li      s0, 0                  #; (wrb) s0  <-- 0
       0     9479        M 0x800009d0 j       pc + 0x10              #; goto 0x800009e0
       0     9491        M 0x800009e0 lbu     a0, -1(s10)            #; s10 = 0x80002bef, a0  <~~ Byte[0x80002bee]
       0     9502        M                                           #; (lsu) a0  <-- 102
       0     9503        M 0x800009e4 addi    a1, a0, -32            #; a0  = 102, (wrb) a1  <-- 70
       0     9504        M 0x800009e8 bltu    s11, a1, pc + 56       #; s11 = 16, a1  = 70, taken, goto 0x80000a20
       0     9516        M 0x80000a20 addi    a1, a0, -48            #; a0  = 102, (wrb) a1  <-- 54
       0     9517        M 0x80000a24 andi    a2, a1, 255            #; a1  = 54, (wrb) a2  <-- 54
       0     9518        M 0x80000a28 addi    a1, s10, -1            #; s10 = 0x80002bef, (wrb) a1  <-- 0x80002bee
       0     9519        M 0x80000a2c li      a3, 9                  #; (wrb) a3  <-- 9
       0     9528        M 0x80000a30 bltu    a3, a2, pc + 124       #; a3  = 9, a2  = 54, taken, goto 0x80000aac
       0     9551        M 0x80000aac li      a2, 42                 #; (wrb) a2  <-- 42
       0     9563        M 0x80000ab0 bne     a0, a2, pc + 80        #; a0  = 102, a2  = 42, taken, goto 0x80000b00
       0     9586        M 0x80000b00 li      s6, 0                  #; (wrb) s6  <-- 0
       0     9587        M 0x80000b04 mv      s10, a1                #; a1  = 0x80002bee, (wrb) s10 <-- 0x80002bee
       0     9588        M 0x80000b08 beq     a0, s7, pc - 164       #; a0  = 102, s7  = 46, not taken
       0     9589        M 0x80000b0c li      s7, 0                  #; (wrb) s7  <-- 0
       0     9609        M 0x80000b10 j       pc + 0xc               #; goto 0x80000b1c
       0     9610        M 0x80000b1c addi    a1, a0, -104           #; a0  = 102, (wrb) a1  <-- -2
       0     9622        M 0x80000b20 srli    a2, a1, 1              #; a1  = -2, (wrb) a2  <-- 0x7fffffff
       0     9623        M 0x80000b24 slli    a1, a1, 31             #; a1  = -2, (wrb) a1  <-- 0
       0     9624        M 0x80000b28 or      a1, a1, a2             #; a1  = 0, a2  = 0x7fffffff, (wrb) a1  <-- 0x7fffffff
       0     9625        M 0x80000b2c li      a2, 9                  #; (wrb) a2  <-- 9
       0     9634        M 0x80000b30 bltu    a2, a1, pc + 100       #; a2  = 9, a1  = 0x7fffffff, taken, goto 0x80000b94
       0     9657        M 0x80000b94 addi    a1, a0, -37            #; a0  = 102, (wrb) a1  <-- 65
       0     9658        M 0x80000b98 li      a2, 83                 #; (wrb) a2  <-- 83
       0     9659        M 0x80000b9c bltu    a2, a1, pc + 264       #; a2  = 83, a1  = 65, not taken
       0     9669        M 0x80000ba0 slli    a1, a1, 2              #; a1  = 65, (wrb) a1  <-- 260
       0     9670        M 0x80000ba4 auipc   a2, 0x2                #; (wrb) a2  <-- 0x80002ba4
       0     9671        M 0x80000ba8 addi    a2, a2, 192            #; a2  = 0x80002ba4, (wrb) a2  <-- 0x80002c64
       0     9672        M 0x80000bac add     a1, a1, a2             #; a1  = 260, a2  = 0x80002c64, (wrb) a1  <-- 0x80002d68
       0     9681        M 0x80000bb0 lw      a2, 0(a1)              #; a1  = 0x80002d68, a2  <~~ Word[0x80002d68]
       0     9682        M 0x80000bb4 li      a1, 8                  #; (wrb) a1  <-- 8
       0     9683        M 0x80000bb8 li      s8, 16                 #; (wrb) s8  <-- 16
       0     9692        M                                           #; (lsu) a2  <-- 0x80000bec
       0     9693        M 0x80000bbc jr      a2                     #; a2  = 0x80000bec, goto 0x80000bec
       0     9705        M 0x80000bec li      a1, 70                 #; (wrb) a1  <-- 70
       0     9717        M 0x80000bf0 bne     a0, a1, pc + 8         #; a0  = 102, a1  = 70, taken, goto 0x80000bf8
       0     9718        M 0x80000bf8 addi    a0, s3, 7              #; s3  = 0x0011ff24, (wrb) a0  <-- 0x0011ff2b
       0     9719        M 0x80000bfc andi    a0, a0, -8             #; a0  = 0x0011ff2b, (wrb) a0  <-- 0x0011ff28
       0     9730        M 0x80000c04 addi    s3, a0, 8              #; a0  = 0x0011ff28, (wrb) s3  <-- 0x0011ff30
       0     9731        M 0x80000c08 mv      a0, s2                 #; s2  = 0x800014fc, (wrb) a0  <-- 0x800014fc
                         M 0x80000c00 fld     fa0, 0(a0)             #; fa0  <~~ Doub[0x0011ff28]
       0     9732        M 0x80000c0c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
                         M                                           #; (f:lsu) fa0  <-- 0.0
       0     9741        M 0x80000c10 mv      a2, s9                 #; s9  = 8, (wrb) a2  <-- 8
       0     9742        M 0x80000c14 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     9743        M 0x80000c18 mv      a4, s7                 #; s7  = 0, (wrb) a4  <-- 0
       0     9744        M 0x80000c1c mv      a5, s6                 #; s6  = 0, (wrb) a5  <-- 0
       0     9753        M 0x80000c20 mv      a6, s0                 #; s0  = 0, (wrb) a6  <-- 0
       0     9754        M 0x80000c24 auipc   ra, 0x1                #; (wrb) ra  <-- 0x80001c24
       0     9755        M 0x80000c28 jalr    ra, ra, -1656          #; ra  = 0x80001c24, (wrb) ra  <-- 0x80000c2c, goto 0x800015ac
       0     9767        M 0x800015ac addi    sp, sp, -112           #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011fe30
       0     9770        M 0x800015b0 sw      ra, 108(sp)            #; sp  = 0x0011fe30, 0x80000c2c ~~> Word[0x0011fe9c]
       0     9771        M 0x800015b4 sw      s0, 104(sp)            #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe98]
       0     9772        M 0x800015b8 sw      s1, 100(sp)            #; sp  = 0x0011fe30, 8 ~~> Word[0x0011fe94]
       0     9773        M 0x800015bc sw      s2, 96(sp)             #; sp  = 0x0011fe30, 0x800014fc ~~> Word[0x0011fe90]
       0     9782        M 0x800015c0 sw      s3, 92(sp)             #; sp  = 0x0011fe30, 0x0011ff30 ~~> Word[0x0011fe8c]
       0     9783        M 0x800015c4 sw      s4, 88(sp)             #; sp  = 0x0011fe30, 0x0011ff17 ~~> Word[0x0011fe88]
       0     9784        M 0x800015c8 sw      s5, 84(sp)             #; sp  = 0x0011fe30, -1 ~~> Word[0x0011fe84]
       0     9785        M 0x800015cc sw      s6, 80(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe80]
       0     9794        M 0x800015d0 sw      s7, 76(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe7c]
       0     9795        M 0x800015d4 sw      s8, 72(sp)             #; sp  = 0x0011fe30, 16 ~~> Word[0x0011fe78]
       0     9796        M 0x800015d8 sw      s9, 68(sp)             #; sp  = 0x0011fe30, 8 ~~> Word[0x0011fe74]
       0     9797        M 0x800015dc sw      s10, 64(sp)            #; sp  = 0x0011fe30, 0x80002bee ~~> Word[0x0011fe70]
       0     9808        M 0x800015e0 fsd     fs0, 56(sp)            #; 0.0000000 ~~> Doub[0x0011fe68]
       0     9809        M 0x800015ec auipc   s1, 0x2                #; (wrb) s1  <-- 0x800035ec
                         M 0x800015e4 fsd     fs1, 48(sp)            #; 0.0 ~~> Doub[0x0011fe60]
       0     9810        M 0x800015e8 fsd     fs2, 40(sp)            #; 0.0 ~~> Doub[0x0011fe58]
       0     9818        M 0x800015f0 addi    s1, s1, -1844          #; s1  = 0x800035ec, (wrb) s1  <-- 0x80002eb8
       0     9821        M 0x800015fc mv      s5, a6                 #; a6  = 0, (wrb) s5  <-- 0
                         M 0x800015f4 fld     ft0, 0(s1)             #; ft0  <~~ Doub[0x80002eb8]
       0     9830        M 0x80001600 mv      s2, a5                 #; a5  = 0, (wrb) s2  <-- 0
                         M                                           #; (f:lsu) ft0  <-- -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     9831        M 0x80001604 mv      s3, a3                 #; a3  = -1, (wrb) s3  <-- -1
                         M 0x800015f8 fle.d   s1, ft0, fa0           #; ft0  = -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000, fa0  = 0.0
       0     9832        M 0x80001608 mv      s4, a2                 #; a2  = 8, (wrb) s4  <-- 8
       0     9833        M 0x8000160c mv      s6, a1                 #; a1  = 0x0011ff17, (wrb) s6  <-- 0x0011ff17
       0     9842        M 0x80001610 mv      s7, a0                 #; a0  = 0x800014fc, (wrb) s7  <-- 0x800014fc
       0     9843        M 0x80001614 bnez    s1, pc + 240           #; s1  = 1, taken, goto 0x80001704
       0     9866        M 0x80001708 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002708
       0     9867        M 0x8000170c addi    a0, a0, 1976           #; a0  = 0x80002708, (wrb) a0  <-- 0x80002ec0
                         M 0x80001704 fsgnj.d fs0, fa0, fa0          #; fa0  = 0.0, fa0  = 0.0
       0     9868        M                                           #; (f:fpu) fs0  <-- 0.0
       0     9879        M 0x80001710 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002ec0]
       0     9888        M                                           #; (f:lsu) ft0  <-- 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     9889        M 0x80001714 fle.d   a0, fa0, ft0           #; fa0  = 0.0, ft0  = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     9891        M                                           #; (acc) t3  <-- 0x00051e63
       0     9892        M 0x80001718 bnez    a0, pc + 28            #; a0  = 1, taken, goto 0x80001734
       0     9904        M 0x80001734 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002734
       0     9905        M 0x80001738 addi    a0, a0, 1940           #; a0  = 0x80002734, (wrb) a0  <-- 0x80002ec8
       0     9908        M 0x8000173c fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002ec8]
       0     9916        M 0x80001740 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002740
       0     9917        M 0x80001744 addi    a0, a0, 1936           #; a0  = 0x80002740, (wrb) a0  <-- 0x80002ed0
                         M                                           #; (f:lsu) ft0  <-- 1000000000.0000000
       0     9920        M 0x80001748 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80002ed0]
       0     9921        M 0x8000174c fle.d   a0, fs0, ft0           #; fs0  = 0.0, ft0  = 1000000000.0000000
       0     9929        M                                           #; (f:lsu) ft1  <-- -1000000000.0000000
       0     9930        M 0x80001750 fle.d   a1, ft1, fs0           #; ft1  = -1000000000.0000000, fs0  = 0.0
       0     9932        M                                           #; (acc) a0  <-- 0x00b57533
       0     9933        M 0x80001754 and     a0, a0, a1             #; a0  = 1, a1  = 1, (wrb) a0  <-- 1
       0     9934        M 0x80001758 bnez    a0, pc + 252           #; a0  = 1, taken, goto 0x80001854
       0     9951        M 0x80001854 andi    a0, s5, 1024           #; s5  = 0, (wrb) a0  <-- 0
       0     9952        M 0x80001858 li      s8, 6                  #; (wrb) s8  <-- 6
       0     9953        M 0x8000185c beqz    a0, pc + 8             #; a0  = 0, taken, goto 0x80001864
       0     9963        M 0x80001864 li      a0, 10                 #; (wrb) a0  <-- 10
       0     9965        M 0x8000186c bltu    s8, a0, pc + 56        #; s8  = 6, a0  = 10, taken, goto 0x800018a4
       0     9966        M 0x80001868 fsgnjx.d fs2, fs0, fs0         #; fs0  = 0.0, fs0  = 0.0
       0     9967        M                                           #; (f:fpu) fs2  <-- 0.0
       0     9986        M 0x800018a4 li      s0, 0                  #; (wrb) s0  <-- 0
       0     9987        M 0x800018a8 slli    a0, s8, 3              #; s8  = 6, (wrb) a0  <-- 48
       0     9988        M 0x800018ac auipc   a1, 0x1                #; (wrb) a1  <-- 0x800028ac
       0     9998        M 0x800018b0 addi    a1, a1, 1292           #; a1  = 0x800028ac, (wrb) a1  <-- 0x80002db8
       0     9999        M 0x800018b4 add     a0, a0, a1             #; a0  = 48, a1  = 0x80002db8, (wrb) a0  <-- 0x80002de8
       0    10002        M 0x800018b8 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80002de8]
       0    10003        M 0x800018bc fcvt.w.d s1, fs2               #; fs2  = 0.0
       0    10011        M 0x800018c0 fcvt.d.w ft0, s1               #; ac1  = 0, (f:lsu) ft1  <-- 1000000.0000000
       0    10012        M                                           #; (f:fpu) ft0  <-- 0.0
       0    10013        M 0x800018cc auipc   a0, 0x1                #; (wrb) a0  <-- 0x800028cc
                         M 0x800018c4 fsub.d  ft0, fs2, ft0          #; fs2  = 0.0, ft0  = 0.0
       0    10016        M                                           #; (f:fpu) ft0  <-- 0.0
       0    10017        M 0x800018c8 fmul.d  ft2, ft1, ft0          #; ft1  = 1000000.0000000, ft0  = 0.0
       0    10020        M                                           #; (f:fpu) ft2  <-- 0.0
       0    10022        M 0x800018d0 addi    a0, a0, 1548           #; a0  = 0x800028cc, (wrb) a0  <-- 0x80002ed8
       0    10025        M 0x800018d4 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002ed8]
       0    10026        M 0x800018d8 fcvt.wu.d a0, ft2              #; ft2  = 0.0
       0    10028        M                                           #; (acc) gp  <-- 0xd21501d3
       0    10030        M 0x800018dc fcvt.d.wu ft3, a0              #; ac1  = 0
       0    10031        M                                           #; (f:fpu) ft3  <-- 0.0
       0    10034        M                                           #; (f:lsu) ft0  <-- 0.5
       0    10036        M 0x800018e0 fsub.d  ft2, ft2, ft3          #; ft2  = 0.0, ft3  = 0.0
       0    10039        M                                           #; (f:fpu) ft2  <-- 0.0
       0    10040        M 0x800018e4 fle.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
       0    10043        M 0x800018e8 bnez    a1, pc + 32            #; a1  = 1, taken, goto 0x80001908
       0    10058        M 0x80001908 flt.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
       0    10060        M                                           #; (acc) s4  <-- 0x00059a63
       0    10061        M 0x8000190c bnez    a1, pc + 20            #; a1  = 1, taken, goto 0x80001920
       0    10081        M 0x80001924 beqz    s8, pc + 216           #; s8  = 6, not taken
                         M 0x80001920 fcvt.d.w fs1, zero             #; ac1  = 0
       0    10082        M 0x80001928 li      a2, 0                  #; (wrb) a2  <-- 0
                         M                                           #; (f:fpu) fs1  <-- 0.0
       0    10083        M 0x8000192c addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
       0    10092        M 0x80001930 add     t1, a1, s0             #; a1  = 0x0011fe38, s0  = 0, (wrb) t1  <-- 0x0011fe38
       0    10093        M 0x80001934 li      t0, 32                 #; (wrb) t0  <-- 32
       0    10094        M 0x80001938 sub     a4, t0, s0             #; t0  = 32, s0  = 0, (wrb) a4  <-- 32
       0    10095        M 0x8000193c lui     a1, 0xccccd            #; (wrb) a1  <-- 0xccccd000
       0    10104        M 0x80001940 addi    t2, a1, -819           #; a1  = 0xccccd000, (wrb) t2  <-- 0xcccccccd
       0    10105        M 0x80001944 li      a6, 10                 #; (wrb) a6  <-- 10
       0    10106        M 0x80001948 li      a7, 9                  #; (wrb) a7  <-- 9
       0    10107        M 0x8000194c beq     a4, a2, pc + 200       #; a4  = 32, a2  = 0, not taken
       0    10116        M 0x80001950 mv      a1, a0                 #; a0  = 0, (wrb) a1  <-- 0
       0    10117        M 0x80001954 mulhu   a0, a0, t2             #; a0  = 0, t2  = 0xcccccccd
       0    10120        M                                           #; (acc) a0  <-- 0x00355513
       0    10121        M 0x80001958 srli    a0, a0, 3              #; a0  = 0, (wrb) a0  <-- 0
       0    10122        M 0x8000195c mul     a3, a0, a6             #; a0  = 0, a6  = 10
       0    10128        M 0x80001960 sub     a3, a1, a3             #; a1  = 0, a3  = 0, (wrb) a3  <-- 0
       0    10129        M 0x80001964 ori     a3, a3, 48             #; a3  = 0, (wrb) a3  <-- 48
       0    10130        M 0x80001968 add     a5, t1, a2             #; t1  = 0x0011fe38, a2  = 0, (wrb) a5  <-- 0x0011fe38
       0    10131        M 0x8000196c sb      a3, 0(a5)              #; a5  = 0x0011fe38, 48 ~~> Byte[0x0011fe38]
       0    10140        M 0x80001970 addi    a2, a2, 1              #; a2  = 0, (wrb) a2  <-- 1
       0    10141        M 0x80001974 bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 0, not taken
       0    10142        M 0x80001978 add     a0, s0, a2             #; s0  = 0, a2  = 1, (wrb) a0  <-- 1
       0    10143        M 0x8000197c addi    a1, a0, -1             #; a0  = 1, (wrb) a1  <-- 0
       0    10154        M 0x80001980 li      a3, 30                 #; (wrb) a3  <-- 30
       0    10155        M 0x80001984 sltu    a3, a3, a1             #; a3  = 30, a1  = 0, (wrb) a3  <-- 0
       0    10156        M 0x80001988 xor     a4, s8, a2             #; s8  = 6, a2  = 1, (wrb) a4  <-- 7
       0    10157        M 0x8000198c seqz    a4, a4                 #; a4  = 7, (wrb) a4  <-- 0
       0    10166        M 0x80001990 or      a3, a3, a4             #; a3  = 0, a4  = 0, (wrb) a3  <-- 0
       0    10167        M 0x80001994 bnez    a3, pc + 136           #; a3  = 0, not taken
       0    10168        M 0x80001998 addi    a0, sp, 8              #; sp  = 0x0011fe30, (wrb) a0  <-- 0x0011fe38
       0    10169        M 0x8000199c add     a0, a0, s0             #; a0  = 0x0011fe38, s0  = 0, (wrb) a0  <-- 0x0011fe38
       0    10178        M 0x800019a0 not     a1, a2                 #; a2  = 1, (wrb) a1  <-- -2
       0    10179        M 0x800019a4 add     s8, a1, s8             #; a1  = -2, s8  = 6, (wrb) s8  <-- 4
       0    10180        M 0x800019a8 add     s0, s0, a2             #; s0  = 0, a2  = 1, (wrb) s0  <-- 1
       0    10181        M 0x800019ac li      a1, 31                 #; (wrb) a1  <-- 31
       0    10190        M 0x800019b0 sub     a3, a1, s0             #; a1  = 31, s0  = 1, (wrb) a3  <-- 30
       0    10191        M 0x800019b4 add     a0, a0, a2             #; a0  = 0x0011fe38, a2  = 1, (wrb) a0  <-- 0x0011fe39
       0    10192        M 0x800019b8 mv      a1, s8                 #; s8  = 4, (wrb) a1  <-- 4
       0    10193        M 0x800019bc bltu    s8, a3, pc + 8         #; s8  = 4, a3  = 30, taken, goto 0x800019c4
       0    10202        M 0x800019c4 addi    a2, a1, 1              #; a1  = 4, (wrb) a2  <-- 5
       0    10203        M 0x800019c8 li      a1, 48                 #; (wrb) a1  <-- 48
       0    10204        M 0x800019cc auipc   ra, 0xfffff            #; (wrb) ra  <-- 0x800009cc
       0    10214        M 0x800019d0 jalr    ra, ra, -1140          #; ra  = 0x800009cc, (wrb) ra  <-- 0x800019d4, goto 0x80000558
       0    10237        M 0x80000558 li      t1, 15                 #; (wrb) t1  <-- 15
       0    10238        M 0x8000055c mv      a4, a0                 #; a0  = 0x0011fe39, (wrb) a4  <-- 0x0011fe39
       0    10249        M 0x80000560 bgeu    t1, a2, pc + 60        #; t1  = 15, a2  = 5, taken, goto 0x8000059c
       0    10272        M 0x8000059c sub     a3, t1, a2             #; t1  = 15, a2  = 5, (wrb) a3  <-- 10
       0    10284        M 0x800005a0 slli    a3, a3, 2              #; a3  = 10, (wrb) a3  <-- 40
       0    10285        M 0x800005a4 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800005a4
       0    10286        M 0x800005a8 add     a3, a3, t0             #; a3  = 40, t0  = 0x800005a4, (wrb) a3  <-- 0x800005cc
       0    10287        M 0x800005ac jalr    zero, a3, 12           #; a3  = 0x800005cc, goto 0x800005d8
       0    10307        M 0x800005d8 sb      a1, 4(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3d]
       0    10308        M 0x800005dc sb      a1, 3(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3c]
       0    10319        M 0x800005e0 sb      a1, 2(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3b]
       0    10320        M 0x800005e4 sb      a1, 1(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3a]
       0    10321        M 0x800005e8 sb      a1, 0(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe39]
       0    10322        M 0x800005ec ret                            #; ra  = 0x800019d4, goto 0x800019d4
       0    10333        M 0x800019d4 li      a0, 0                  #; (wrb) a0  <-- 0
       0    10334        M 0x800019d8 add     a1, s0, a0             #; s0  = 1, a0  = 0, (wrb) a1  <-- 1
       0    10335        M 0x800019dc sltiu   a1, a1, 31             #; a1  = 1, (wrb) a1  <-- 1
       0    10336        M 0x800019e0 xor     a2, s8, a0             #; s8  = 4, a0  = 0, (wrb) a2  <-- 4
       0    10337        M 0x800019e4 snez    a2, a2                 #; a2  = 4, (wrb) a2  <-- 1
       0    10338        M 0x800019e8 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0    10339        M 0x800019ec addi    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0    10348        M 0x800019f0 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x800019d8
       0    10349        M 0x800019d8 add     a1, s0, a0             #; s0  = 1, a0  = 1, (wrb) a1  <-- 2
       0    10350        M 0x800019dc sltiu   a1, a1, 31             #; a1  = 2, (wrb) a1  <-- 1
       0    10351        M 0x800019e0 xor     a2, s8, a0             #; s8  = 4, a0  = 1, (wrb) a2  <-- 5
       0    10352        M 0x800019e4 snez    a2, a2                 #; a2  = 5, (wrb) a2  <-- 1
       0    10353        M 0x800019e8 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0    10354        M 0x800019ec addi    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 2
       0    10355        M 0x800019f0 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x800019d8
       0    10356        M 0x800019d8 add     a1, s0, a0             #; s0  = 1, a0  = 2, (wrb) a1  <-- 3
       0    10357        M 0x800019dc sltiu   a1, a1, 31             #; a1  = 3, (wrb) a1  <-- 1
       0    10358        M 0x800019e0 xor     a2, s8, a0             #; s8  = 4, a0  = 2, (wrb) a2  <-- 6
       0    10359        M 0x800019e4 snez    a2, a2                 #; a2  = 6, (wrb) a2  <-- 1
       0    10360        M 0x800019e8 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0    10361        M 0x800019ec addi    a0, a0, 1              #; a0  = 2, (wrb) a0  <-- 3
       0    10362        M 0x800019f0 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x800019d8
       0    10363        M 0x800019d8 add     a1, s0, a0             #; s0  = 1, a0  = 3, (wrb) a1  <-- 4
       0    10364        M 0x800019dc sltiu   a1, a1, 31             #; a1  = 4, (wrb) a1  <-- 1
       0    10365        M 0x800019e0 xor     a2, s8, a0             #; s8  = 4, a0  = 3, (wrb) a2  <-- 7
       0    10366        M 0x800019e4 snez    a2, a2                 #; a2  = 7, (wrb) a2  <-- 1
       0    10367        M 0x800019e8 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0    10368        M 0x800019ec addi    a0, a0, 1              #; a0  = 3, (wrb) a0  <-- 4
       0    10369        M 0x800019f0 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x800019d8
       0    10370        M 0x800019d8 add     a1, s0, a0             #; s0  = 1, a0  = 4, (wrb) a1  <-- 5
       0    10371        M 0x800019dc sltiu   a1, a1, 31             #; a1  = 5, (wrb) a1  <-- 1
       0    10372        M 0x800019e0 xor     a2, s8, a0             #; s8  = 4, a0  = 4, (wrb) a2  <-- 0
       0    10373        M 0x800019e4 snez    a2, a2                 #; a2  = 0, (wrb) a2  <-- 0
       0    10374        M 0x800019e8 and     a2, a1, a2             #; a1  = 1, a2  = 0, (wrb) a2  <-- 0
       0    10375        M 0x800019ec addi    a0, a0, 1              #; a0  = 4, (wrb) a0  <-- 5
       0    10376        M 0x800019f0 bnez    a2, pc - 24            #; a2  = 0, not taken
       0    10377        M 0x800019f4 add     a0, s0, a0             #; s0  = 1, a0  = 5, (wrb) a0  <-- 6
       0    10378        M 0x800019f8 j       pc + 0x28              #; goto 0x80001a20
       0    10389        M 0x80001a20 beqz    a1, pc + 28            #; a1  = 1, not taken
       0    10390        M 0x80001a24 addi    s0, a0, 1              #; a0  = 6, (wrb) s0  <-- 7
       0    10391        M 0x80001a28 addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
       0    10392        M 0x80001a2c add     a0, a1, a0             #; a1  = 0x0011fe38, a0  = 6, (wrb) a0  <-- 0x0011fe3e
       0    10401        M 0x80001a30 li      a1, 46                 #; (wrb) a1  <-- 46
       0    10402        M 0x80001a34 sb      a1, 0(a0)              #; a0  = 0x0011fe3e, 46 ~~> Byte[0x0011fe3e]
       0    10403        M 0x80001a38 j       pc + 0x8               #; goto 0x80001a40
       0    10413        M 0x80001a40 li      a0, 32                 #; (wrb) a0  <-- 32
       0    10414        M 0x80001a44 mv      t0, s0                 #; s0  = 7, (wrb) t0  <-- 7
       0    10415        M 0x80001a48 bltu    a0, s0, pc + 8         #; a0  = 32, s0  = 7, not taken
       0    10416        M 0x80001a4c li      t0, 32                 #; (wrb) t0  <-- 32
       0    10426        M 0x80001a54 lui     a0, 0x66666            #; (wrb) a0  <-- 0x66666000
                         M 0x80001a50 flt.d   s9, fs0, fs1           #; fs0  = 0.0, fs1  = 0.0
       0    10427        M 0x80001a58 addi    a1, a0, 1639           #; a0  = 0x66666000, (wrb) a1  <-- 0x66666667
       0    10428        M 0x80001a5c li      a6, 10                 #; (wrb) a6  <-- 10
       0    10437        M 0x80001a60 addi    a3, sp, 8              #; sp  = 0x0011fe30, (wrb) a3  <-- 0x0011fe38
       0    10438        M 0x80001a64 li      a4, 18                 #; (wrb) a4  <-- 18
       0    10439        M 0x80001a68 beq     t0, s0, pc + 64        #; t0  = 32, s0  = 7, not taken
       0    10440        M 0x80001a6c mulh    a0, s1, a1             #; s1  = 0, a1  = 0x66666667
       0    10449        M 0x80001a70 srli    a5, a0, 31             #; a0  = 0, (wrb) a5  <-- 0
       0    10450        M 0x80001a74 srai    a0, a0, 2              #; a0  = 0, (wrb) a0  <-- 0
       0    10451        M 0x80001a78 add     a0, a0, a5             #; a0  = 0, a5  = 0, (wrb) a0  <-- 0
       0    10452        M 0x80001a7c mul     a5, a0, a6             #; a0  = 0, a6  = 10
       0    10461        M 0x80001a80 sub     a5, s1, a5             #; s1  = 0, a5  = 0, (wrb) a5  <-- 0
       0    10462        M 0x80001a84 addi    a5, a5, 48             #; a5  = 0, (wrb) a5  <-- 48
       0    10463        M 0x80001a88 addi    s8, s0, 1              #; s0  = 7, (wrb) s8  <-- 8
       0    10464        M 0x80001a8c add     s0, a3, s0             #; a3  = 0x0011fe38, s0  = 7, (wrb) s0  <-- 0x0011fe3f
       0    10473        M 0x80001a90 addi    a2, s1, 9              #; s1  = 0, (wrb) a2  <-- 9
       0    10474        M 0x80001a94 sb      a5, 0(s0)              #; s0  = 0x0011fe3f, 48 ~~> Byte[0x0011fe3f]
       0    10475        M 0x80001a98 mv      s0, s8                 #; s8  = 8, (wrb) s0  <-- 8
       0    10476        M 0x80001a9c mv      s1, a0                 #; a0  = 0, (wrb) s1  <-- 0
       0    10485        M 0x80001aa0 bltu    a4, a2, pc - 56        #; a4  = 18, a2  = 9, not taken
       0    10486        M 0x80001aa4 j       pc + 0x8               #; goto 0x80001aac
       0    10487        M 0x80001aac andi    s1, s5, 3              #; s5  = 0, (wrb) s1  <-- 0
       0    10499        M 0x80001ab0 li      a0, 1                  #; (wrb) a0  <-- 1
       0    10500        M 0x80001ab4 bne     s1, a0, pc + 108       #; s1  = 0, a0  = 1, taken, goto 0x80001b20
       0    10522        M 0x80001b20 li      a0, 31                 #; (wrb) a0  <-- 31
       0    10523        M 0x80001b24 bltu    a0, s8, pc + 84        #; a0  = 31, s8  = 8, not taken
       0    10524        M 0x80001b28 beqz    s9, pc + 24            #; s9  = 0, taken, goto 0x80001b40
       0    10545        M 0x80001b40 andi    a0, s5, 4              #; s5  = 0, (wrb) a0  <-- 0
       0    10546        M 0x80001b44 bnez    a0, pc + 32            #; a0  = 0, not taken
       0    10547        M 0x80001b48 andi    a0, s5, 8              #; s5  = 0, (wrb) a0  <-- 0
       0    10548        M 0x80001b4c beqz    a0, pc + 44            #; a0  = 0, taken, goto 0x80001b78
       0    10568        M 0x80001b78 snez    a0, s1                 #; s1  = 0, (wrb) a0  <-- 0
       0    10569        M 0x80001b7c sltu    a1, s8, s2             #; s8  = 8, s2  = 0, (wrb) a1  <-- 0
       0    10580        M 0x80001b80 xori    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
       0    10581        M 0x80001b84 or      a0, a0, a1             #; a0  = 0, a1  = 1, (wrb) a0  <-- 1
       0    10582        M 0x80001b88 andi    s5, s5, 2              #; s5  = 0, (wrb) s5  <-- 0
       0    10583        M 0x80001b8c mv      s0, s4                 #; s4  = 8, (wrb) s0  <-- 8
       0    10592        M 0x80001b90 bnez    a0, pc + 44            #; a0  = 1, taken, goto 0x80001bbc
       0    10615        M 0x80001bbc srli    s5, s5, 1              #; s5  = 0, (wrb) s5  <-- 0
       0    10627        M 0x80001bc0 beqz    s8, pc + 56            #; s8  = 8, not taken
       0    10628        M 0x80001bc4 addi    s9, sp, 7              #; sp  = 0x0011fe30, (wrb) s9  <-- 0x0011fe37
       0    10629        M 0x80001bc8 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 8, (wrb) a0  <-- 0x0011fe3f
       0    10630        M 0x80001bcc lbu     a0, 0(a0)              #; a0  = 0x0011fe3f, a0  <~~ Byte[0x0011fe3f]
       0    10633        M                                           #; (lsu) a0  <-- 48
       0    10639        M 0x80001bd0 addi    s10, s8, -1            #; s8  = 8, (wrb) s10 <-- 7
       0    10640        M 0x80001bd4 addi    s1, s0, 1              #; s0  = 8, (wrb) s1  <-- 9
       0    10641        M 0x80001bd8 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0    10642        M 0x80001bdc mv      a2, s0                 #; s0  = 8, (wrb) a2  <-- 8
       0    10651        M 0x80001be0 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0    10652        M 0x80001be4 jalr    s7                     #; s7  = 0x800014fc, (wrb) ra  <-- 0x80001be8, goto 0x800014fc
       0    10665        M 0x800014fc beqz    a0, pc + 168           #; a0  = 48, not taken
       0    10668        M 0x80001500 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0    10669        M 0x80001504 li      a2, 1096               #; (wrb) a2  <-- 1096
       0    10670        M 0x80001508 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0    10671        M 0x8000150c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000350c
       0    10672        M 0x80001510 addi    a3, a3, -1448          #; a3  = 0x8000350c, (wrb) a3  <-- 0x80002f64
       0    10673        M                                           #; (acc) a1  <-- 0x00d605b3
       0    10674        M 0x80001514 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f64, (wrb) a1  <-- 0x80002f64
       0    10675        M 0x80001518 lw      a4, 0(a1)              #; a1  = 0x80002f64, a4  <~~ Word[0x80002f64]
       0    10686        M                                           #; (lsu) a4  <-- 8
       0    10687        M 0x8000151c addi    a5, a4, 1              #; a4  = 8, (wrb) a5  <-- 9
       0    10688        M 0x80001520 sw      a5, 0(a1)              #; a1  = 0x80002f64, 9 ~~> Word[0x80002f64]
       0    10689        M 0x80001524 add     a4, a1, a4             #; a1  = 0x80002f64, a4  = 8, (wrb) a4  <-- 0x80002f6c
       0    10690        M 0x80001528 sb      a0, 72(a4)             #; a4  = 0x80002f6c, 48 ~~> Byte[0x80002fb4]
       0    10691        M 0x8000152c lw      a4, 0(a1)              #; a1  = 0x80002f64, a4  <~~ Word[0x80002f64]
       0    10712        M                                           #; (lsu) a4  <-- 9
       0    10713        M 0x80001530 addi    a4, a4, -1020          #; a4  = 9, (wrb) a4  <-- -1011
       0    10714        M 0x80001534 snez    a4, a4                 #; a4  = -1011, (wrb) a4  <-- 1
       0    10715        M 0x80001538 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0    10716        M 0x8000153c snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0    10717        M 0x80001540 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0    10718        M 0x80001544 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015a4
       0    10731        M 0x800015a4 ret                            #; ra  = 0x80001be8, goto 0x80001be8
       0    10736        M 0x80001be8 mv      s0, s1                 #; s1  = 9, (wrb) s0  <-- 9
       0    10737        M 0x80001bec mv      s8, s10                #; s10 = 7, (wrb) s8  <-- 7
       0    10739        M 0x80001bf0 bnez    s10, pc - 40           #; s10 = 7, taken, goto 0x80001bc8
       0    10742        M 0x80001bc8 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 7, (wrb) a0  <-- 0x0011fe3e
       0    10743        M 0x80001bcc lbu     a0, 0(a0)              #; a0  = 0x0011fe3e, a0  <~~ Byte[0x0011fe3e]
       0    10745        M 0x80001bd0 addi    s10, s8, -1            #; s8  = 7, (wrb) s10 <-- 6
       0    10746        M 0x80001bd4 addi    s1, s0, 1              #; s0  = 9, (wrb) s1  <-- 10
       0    10747        M 0x80001bd8 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0    10748        M 0x80001bdc mv      a2, s0                 #; s0  = 9, (wrb) a2  <-- 9
       0    10749        M 0x80001be0 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0    10750        M 0x80001be4 jalr    s7                     #; s7  = 0x800014fc, (wrb) ra  <-- 0x80001be8, goto 0x800014fc
       0    10751        M                                           #; (lsu) a0  <-- 46
       0    10753        M 0x800014fc beqz    a0, pc + 168           #; a0  = 46, not taken
       0    10756        M 0x80001500 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0    10757        M 0x80001504 li      a2, 1096               #; (wrb) a2  <-- 1096
       0    10758        M 0x80001508 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0    10759        M 0x8000150c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000350c
       0    10760        M 0x80001510 addi    a3, a3, -1448          #; a3  = 0x8000350c, (wrb) a3  <-- 0x80002f64
       0    10761        M                                           #; (acc) a1  <-- 0x00d605b3
       0    10762        M 0x80001514 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f64, (wrb) a1  <-- 0x80002f64
       0    10763        M 0x80001518 lw      a4, 0(a1)              #; a1  = 0x80002f64, a4  <~~ Word[0x80002f64]
       0    10774        M                                           #; (lsu) a4  <-- 9
       0    10775        M 0x8000151c addi    a5, a4, 1              #; a4  = 9, (wrb) a5  <-- 10
       0    10776        M 0x80001520 sw      a5, 0(a1)              #; a1  = 0x80002f64, 10 ~~> Word[0x80002f64]
       0    10777        M 0x80001524 add     a4, a1, a4             #; a1  = 0x80002f64, a4  = 9, (wrb) a4  <-- 0x80002f6d
       0    10778        M 0x80001528 sb      a0, 72(a4)             #; a4  = 0x80002f6d, 46 ~~> Byte[0x80002fb5]
       0    10779        M 0x8000152c lw      a4, 0(a1)              #; a1  = 0x80002f64, a4  <~~ Word[0x80002f64]
       0    10800        M                                           #; (lsu) a4  <-- 10
       0    10801        M 0x80001530 addi    a4, a4, -1020          #; a4  = 10, (wrb) a4  <-- -1010
       0    10802        M 0x80001534 snez    a4, a4                 #; a4  = -1010, (wrb) a4  <-- 1
       0    10803        M 0x80001538 addi    a0, a0, -10            #; a0  = 46, (wrb) a0  <-- 36
       0    10804        M 0x8000153c snez    a0, a0                 #; a0  = 36, (wrb) a0  <-- 1
       0    10805        M 0x80001540 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0    10806        M 0x80001544 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015a4
       0    10810        M 0x800015a4 ret                            #; ra  = 0x80001be8, goto 0x80001be8
       0    10815        M 0x80001be8 mv      s0, s1                 #; s1  = 10, (wrb) s0  <-- 10
       0    10816        M 0x80001bec mv      s8, s10                #; s10 = 6, (wrb) s8  <-- 6
       0    10818        M 0x80001bf0 bnez    s10, pc - 40           #; s10 = 6, taken, goto 0x80001bc8
       0    10821        M 0x80001bc8 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 6, (wrb) a0  <-- 0x0011fe3d
       0    10822        M 0x80001bcc lbu     a0, 0(a0)              #; a0  = 0x0011fe3d, a0  <~~ Byte[0x0011fe3d]
       0    10824        M 0x80001bd0 addi    s10, s8, -1            #; s8  = 6, (wrb) s10 <-- 5
       0    10825        M 0x80001bd4 addi    s1, s0, 1              #; s0  = 10, (wrb) s1  <-- 11
       0    10826        M 0x80001bd8 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0    10827        M 0x80001bdc mv      a2, s0                 #; s0  = 10, (wrb) a2  <-- 10
       0    10828        M 0x80001be0 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0    10829        M 0x80001be4 jalr    s7                     #; s7  = 0x800014fc, (wrb) ra  <-- 0x80001be8, goto 0x800014fc
       0    10830        M                                           #; (lsu) a0  <-- 48
       0    10832        M 0x800014fc beqz    a0, pc + 168           #; a0  = 48, not taken
       0    10835        M 0x80001500 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0    10836        M 0x80001504 li      a2, 1096               #; (wrb) a2  <-- 1096
       0    10837        M 0x80001508 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0    10838        M 0x8000150c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000350c
       0    10839        M 0x80001510 addi    a3, a3, -1448          #; a3  = 0x8000350c, (wrb) a3  <-- 0x80002f64
       0    10840        M                                           #; (acc) a1  <-- 0x00d605b3
       0    10841        M 0x80001514 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f64, (wrb) a1  <-- 0x80002f64
       0    10842        M 0x80001518 lw      a4, 0(a1)              #; a1  = 0x80002f64, a4  <~~ Word[0x80002f64]
       0    10853        M                                           #; (lsu) a4  <-- 10
       0    10854        M 0x8000151c addi    a5, a4, 1              #; a4  = 10, (wrb) a5  <-- 11
       0    10855        M 0x80001520 sw      a5, 0(a1)              #; a1  = 0x80002f64, 11 ~~> Word[0x80002f64]
       0    10856        M 0x80001524 add     a4, a1, a4             #; a1  = 0x80002f64, a4  = 10, (wrb) a4  <-- 0x80002f6e
       0    10857        M 0x80001528 sb      a0, 72(a4)             #; a4  = 0x80002f6e, 48 ~~> Byte[0x80002fb6]
       0    10858        M 0x8000152c lw      a4, 0(a1)              #; a1  = 0x80002f64, a4  <~~ Word[0x80002f64]
       0    10879        M                                           #; (lsu) a4  <-- 11
       0    10880        M 0x80001530 addi    a4, a4, -1020          #; a4  = 11, (wrb) a4  <-- -1009
       0    10881        M 0x80001534 snez    a4, a4                 #; a4  = -1009, (wrb) a4  <-- 1
       0    10882        M 0x80001538 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0    10883        M 0x8000153c snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0    10884        M 0x80001540 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0    10885        M 0x80001544 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015a4
       0    10889        M 0x800015a4 ret                            #; ra  = 0x80001be8, goto 0x80001be8
       0    10894        M 0x80001be8 mv      s0, s1                 #; s1  = 11, (wrb) s0  <-- 11
       0    10895        M 0x80001bec mv      s8, s10                #; s10 = 5, (wrb) s8  <-- 5
       0    10897        M 0x80001bf0 bnez    s10, pc - 40           #; s10 = 5, taken, goto 0x80001bc8
       0    10900        M 0x80001bc8 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 5, (wrb) a0  <-- 0x0011fe3c
       0    10901        M 0x80001bcc lbu     a0, 0(a0)              #; a0  = 0x0011fe3c, a0  <~~ Byte[0x0011fe3c]
       0    10903        M 0x80001bd0 addi    s10, s8, -1            #; s8  = 5, (wrb) s10 <-- 4
       0    10904        M 0x80001bd4 addi    s1, s0, 1              #; s0  = 11, (wrb) s1  <-- 12
       0    10905        M 0x80001bd8 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0    10906        M 0x80001bdc mv      a2, s0                 #; s0  = 11, (wrb) a2  <-- 11
       0    10907        M 0x80001be0 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0    10908        M 0x80001be4 jalr    s7                     #; s7  = 0x800014fc, (wrb) ra  <-- 0x80001be8, goto 0x800014fc
       0    10909        M                                           #; (lsu) a0  <-- 48
       0    10911        M 0x800014fc beqz    a0, pc + 168           #; a0  = 48, not taken
       0    10914        M 0x80001500 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0    10915        M 0x80001504 li      a2, 1096               #; (wrb) a2  <-- 1096
       0    10916        M 0x80001508 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0    10917        M 0x8000150c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000350c
       0    10918        M 0x80001510 addi    a3, a3, -1448          #; a3  = 0x8000350c, (wrb) a3  <-- 0x80002f64
       0    10919        M                                           #; (acc) a1  <-- 0x00d605b3
       0    10920        M 0x80001514 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f64, (wrb) a1  <-- 0x80002f64
       0    10921        M 0x80001518 lw      a4, 0(a1)              #; a1  = 0x80002f64, a4  <~~ Word[0x80002f64]
       0    10932        M                                           #; (lsu) a4  <-- 11
       0    10933        M 0x8000151c addi    a5, a4, 1              #; a4  = 11, (wrb) a5  <-- 12
       0    10934        M 0x80001520 sw      a5, 0(a1)              #; a1  = 0x80002f64, 12 ~~> Word[0x80002f64]
       0    10935        M 0x80001524 add     a4, a1, a4             #; a1  = 0x80002f64, a4  = 11, (wrb) a4  <-- 0x80002f6f
       0    10936        M 0x80001528 sb      a0, 72(a4)             #; a4  = 0x80002f6f, 48 ~~> Byte[0x80002fb7]
       0    10937        M 0x8000152c lw      a4, 0(a1)              #; a1  = 0x80002f64, a4  <~~ Word[0x80002f64]
       0    10958        M                                           #; (lsu) a4  <-- 12
       0    10959        M 0x80001530 addi    a4, a4, -1020          #; a4  = 12, (wrb) a4  <-- -1008
       0    10960        M 0x80001534 snez    a4, a4                 #; a4  = -1008, (wrb) a4  <-- 1
       0    10961        M 0x80001538 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0    10962        M 0x8000153c snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0    10963        M 0x80001540 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0    10964        M 0x80001544 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015a4
       0    10968        M 0x800015a4 ret                            #; ra  = 0x80001be8, goto 0x80001be8
       0    10973        M 0x80001be8 mv      s0, s1                 #; s1  = 12, (wrb) s0  <-- 12
       0    10974        M 0x80001bec mv      s8, s10                #; s10 = 4, (wrb) s8  <-- 4
       0    10976        M 0x80001bf0 bnez    s10, pc - 40           #; s10 = 4, taken, goto 0x80001bc8
       0    10979        M 0x80001bc8 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 4, (wrb) a0  <-- 0x0011fe3b
       0    10980        M 0x80001bcc lbu     a0, 0(a0)              #; a0  = 0x0011fe3b, a0  <~~ Byte[0x0011fe3b]
       0    10982        M 0x80001bd0 addi    s10, s8, -1            #; s8  = 4, (wrb) s10 <-- 3
       0    10983        M 0x80001bd4 addi    s1, s0, 1              #; s0  = 12, (wrb) s1  <-- 13
       0    10984        M 0x80001bd8 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0    10985        M 0x80001bdc mv      a2, s0                 #; s0  = 12, (wrb) a2  <-- 12
       0    10986        M 0x80001be0 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0    10987        M 0x80001be4 jalr    s7                     #; s7  = 0x800014fc, (wrb) ra  <-- 0x80001be8, goto 0x800014fc
       0    10988        M                                           #; (lsu) a0  <-- 48
       0    10990        M 0x800014fc beqz    a0, pc + 168           #; a0  = 48, not taken
       0    10993        M 0x80001500 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0    10994        M 0x80001504 li      a2, 1096               #; (wrb) a2  <-- 1096
       0    10995        M 0x80001508 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0    10996        M 0x8000150c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000350c
       0    10997        M 0x80001510 addi    a3, a3, -1448          #; a3  = 0x8000350c, (wrb) a3  <-- 0x80002f64
       0    10998        M                                           #; (acc) a1  <-- 0x00d605b3
       0    10999        M 0x80001514 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f64, (wrb) a1  <-- 0x80002f64
       0    11000        M 0x80001518 lw      a4, 0(a1)              #; a1  = 0x80002f64, a4  <~~ Word[0x80002f64]
       0    11011        M                                           #; (lsu) a4  <-- 12
       0    11012        M 0x8000151c addi    a5, a4, 1              #; a4  = 12, (wrb) a5  <-- 13
       0    11013        M 0x80001520 sw      a5, 0(a1)              #; a1  = 0x80002f64, 13 ~~> Word[0x80002f64]
       0    11014        M 0x80001524 add     a4, a1, a4             #; a1  = 0x80002f64, a4  = 12, (wrb) a4  <-- 0x80002f70
       0    11015        M 0x80001528 sb      a0, 72(a4)             #; a4  = 0x80002f70, 48 ~~> Byte[0x80002fb8]
       0    11016        M 0x8000152c lw      a4, 0(a1)              #; a1  = 0x80002f64, a4  <~~ Word[0x80002f64]
       0    11037        M                                           #; (lsu) a4  <-- 13
       0    11038        M 0x80001530 addi    a4, a4, -1020          #; a4  = 13, (wrb) a4  <-- -1007
       0    11039        M 0x80001534 snez    a4, a4                 #; a4  = -1007, (wrb) a4  <-- 1
       0    11040        M 0x80001538 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0    11041        M 0x8000153c snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0    11042        M 0x80001540 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0    11043        M 0x80001544 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015a4
       0    11047        M 0x800015a4 ret                            #; ra  = 0x80001be8, goto 0x80001be8
       0    11052        M 0x80001be8 mv      s0, s1                 #; s1  = 13, (wrb) s0  <-- 13
       0    11053        M 0x80001bec mv      s8, s10                #; s10 = 3, (wrb) s8  <-- 3
       0    11055        M 0x80001bf0 bnez    s10, pc - 40           #; s10 = 3, taken, goto 0x80001bc8
       0    11058        M 0x80001bc8 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 3, (wrb) a0  <-- 0x0011fe3a
       0    11059        M 0x80001bcc lbu     a0, 0(a0)              #; a0  = 0x0011fe3a, a0  <~~ Byte[0x0011fe3a]
       0    11061        M 0x80001bd0 addi    s10, s8, -1            #; s8  = 3, (wrb) s10 <-- 2
       0    11062        M 0x80001bd4 addi    s1, s0, 1              #; s0  = 13, (wrb) s1  <-- 14
       0    11063        M 0x80001bd8 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0    11064        M 0x80001bdc mv      a2, s0                 #; s0  = 13, (wrb) a2  <-- 13
       0    11065        M 0x80001be0 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0    11066        M 0x80001be4 jalr    s7                     #; s7  = 0x800014fc, (wrb) ra  <-- 0x80001be8, goto 0x800014fc
       0    11067        M                                           #; (lsu) a0  <-- 48
       0    11069        M 0x800014fc beqz    a0, pc + 168           #; a0  = 48, not taken
       0    11072        M 0x80001500 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0    11073        M 0x80001504 li      a2, 1096               #; (wrb) a2  <-- 1096
       0    11074        M 0x80001508 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0    11075        M 0x8000150c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000350c
       0    11076        M 0x80001510 addi    a3, a3, -1448          #; a3  = 0x8000350c, (wrb) a3  <-- 0x80002f64
       0    11077        M                                           #; (acc) a1  <-- 0x00d605b3
       0    11078        M 0x80001514 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f64, (wrb) a1  <-- 0x80002f64
       0    11079        M 0x80001518 lw      a4, 0(a1)              #; a1  = 0x80002f64, a4  <~~ Word[0x80002f64]
       0    11090        M                                           #; (lsu) a4  <-- 13
       0    11091        M 0x8000151c addi    a5, a4, 1              #; a4  = 13, (wrb) a5  <-- 14
       0    11092        M 0x80001520 sw      a5, 0(a1)              #; a1  = 0x80002f64, 14 ~~> Word[0x80002f64]
       0    11093        M 0x80001524 add     a4, a1, a4             #; a1  = 0x80002f64, a4  = 13, (wrb) a4  <-- 0x80002f71
       0    11094        M 0x80001528 sb      a0, 72(a4)             #; a4  = 0x80002f71, 48 ~~> Byte[0x80002fb9]
       0    11095        M 0x8000152c lw      a4, 0(a1)              #; a1  = 0x80002f64, a4  <~~ Word[0x80002f64]
       0    11116        M                                           #; (lsu) a4  <-- 14
       0    11117        M 0x80001530 addi    a4, a4, -1020          #; a4  = 14, (wrb) a4  <-- -1006
       0    11118        M 0x80001534 snez    a4, a4                 #; a4  = -1006, (wrb) a4  <-- 1
       0    11119        M 0x80001538 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0    11120        M 0x8000153c snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0    11121        M 0x80001540 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0    11122        M 0x80001544 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015a4
       0    11126        M 0x800015a4 ret                            #; ra  = 0x80001be8, goto 0x80001be8
       0    11131        M 0x80001be8 mv      s0, s1                 #; s1  = 14, (wrb) s0  <-- 14
       0    11132        M 0x80001bec mv      s8, s10                #; s10 = 2, (wrb) s8  <-- 2
       0    11134        M 0x80001bf0 bnez    s10, pc - 40           #; s10 = 2, taken, goto 0x80001bc8
       0    11137        M 0x80001bc8 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 2, (wrb) a0  <-- 0x0011fe39
       0    11138        M 0x80001bcc lbu     a0, 0(a0)              #; a0  = 0x0011fe39, a0  <~~ Byte[0x0011fe39]
       0    11140        M 0x80001bd0 addi    s10, s8, -1            #; s8  = 2, (wrb) s10 <-- 1
       0    11141        M 0x80001bd4 addi    s1, s0, 1              #; s0  = 14, (wrb) s1  <-- 15
       0    11142        M 0x80001bd8 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0    11143        M 0x80001bdc mv      a2, s0                 #; s0  = 14, (wrb) a2  <-- 14
       0    11144        M 0x80001be0 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0    11145        M 0x80001be4 jalr    s7                     #; s7  = 0x800014fc, (wrb) ra  <-- 0x80001be8, goto 0x800014fc
       0    11146        M                                           #; (lsu) a0  <-- 48
       0    11148        M 0x800014fc beqz    a0, pc + 168           #; a0  = 48, not taken
       0    11151        M 0x80001500 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0    11152        M 0x80001504 li      a2, 1096               #; (wrb) a2  <-- 1096
       0    11153        M 0x80001508 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0    11154        M 0x8000150c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000350c
       0    11155        M 0x80001510 addi    a3, a3, -1448          #; a3  = 0x8000350c, (wrb) a3  <-- 0x80002f64
       0    11156        M                                           #; (acc) a1  <-- 0x00d605b3
       0    11157        M 0x80001514 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f64, (wrb) a1  <-- 0x80002f64
       0    11158        M 0x80001518 lw      a4, 0(a1)              #; a1  = 0x80002f64, a4  <~~ Word[0x80002f64]
       0    11169        M                                           #; (lsu) a4  <-- 14
       0    11170        M 0x8000151c addi    a5, a4, 1              #; a4  = 14, (wrb) a5  <-- 15
       0    11171        M 0x80001520 sw      a5, 0(a1)              #; a1  = 0x80002f64, 15 ~~> Word[0x80002f64]
       0    11172        M 0x80001524 add     a4, a1, a4             #; a1  = 0x80002f64, a4  = 14, (wrb) a4  <-- 0x80002f72
       0    11173        M 0x80001528 sb      a0, 72(a4)             #; a4  = 0x80002f72, 48 ~~> Byte[0x80002fba]
       0    11174        M 0x8000152c lw      a4, 0(a1)              #; a1  = 0x80002f64, a4  <~~ Word[0x80002f64]
       0    11195        M                                           #; (lsu) a4  <-- 15
       0    11196        M 0x80001530 addi    a4, a4, -1020          #; a4  = 15, (wrb) a4  <-- -1005
       0    11197        M 0x80001534 snez    a4, a4                 #; a4  = -1005, (wrb) a4  <-- 1
       0    11198        M 0x80001538 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0    11199        M 0x8000153c snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0    11200        M 0x80001540 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0    11201        M 0x80001544 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015a4
       0    11205        M 0x800015a4 ret                            #; ra  = 0x80001be8, goto 0x80001be8
       0    11210        M 0x80001be8 mv      s0, s1                 #; s1  = 15, (wrb) s0  <-- 15
       0    11211        M 0x80001bec mv      s8, s10                #; s10 = 1, (wrb) s8  <-- 1
       0    11213        M 0x80001bf0 bnez    s10, pc - 40           #; s10 = 1, taken, goto 0x80001bc8
       0    11216        M 0x80001bc8 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 1, (wrb) a0  <-- 0x0011fe38
       0    11217        M 0x80001bcc lbu     a0, 0(a0)              #; a0  = 0x0011fe38, a0  <~~ Byte[0x0011fe38]
       0    11219        M 0x80001bd0 addi    s10, s8, -1            #; s8  = 1, (wrb) s10 <-- 0
       0    11220        M 0x80001bd4 addi    s1, s0, 1              #; s0  = 15, (wrb) s1  <-- 16
       0    11221        M 0x80001bd8 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0    11222        M 0x80001bdc mv      a2, s0                 #; s0  = 15, (wrb) a2  <-- 15
       0    11223        M 0x80001be0 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0    11224        M 0x80001be4 jalr    s7                     #; s7  = 0x800014fc, (wrb) ra  <-- 0x80001be8, goto 0x800014fc
       0    11225        M                                           #; (lsu) a0  <-- 48
       0    11227        M 0x800014fc beqz    a0, pc + 168           #; a0  = 48, not taken
       0    11230        M 0x80001500 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0    11231        M 0x80001504 li      a2, 1096               #; (wrb) a2  <-- 1096
       0    11232        M 0x80001508 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0    11233        M 0x8000150c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000350c
       0    11234        M 0x80001510 addi    a3, a3, -1448          #; a3  = 0x8000350c, (wrb) a3  <-- 0x80002f64
       0    11235        M                                           #; (acc) a1  <-- 0x00d605b3
       0    11236        M 0x80001514 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f64, (wrb) a1  <-- 0x80002f64
       0    11237        M 0x80001518 lw      a4, 0(a1)              #; a1  = 0x80002f64, a4  <~~ Word[0x80002f64]
       0    11248        M                                           #; (lsu) a4  <-- 15
       0    11249        M 0x8000151c addi    a5, a4, 1              #; a4  = 15, (wrb) a5  <-- 16
       0    11250        M 0x80001520 sw      a5, 0(a1)              #; a1  = 0x80002f64, 16 ~~> Word[0x80002f64]
       0    11251        M 0x80001524 add     a4, a1, a4             #; a1  = 0x80002f64, a4  = 15, (wrb) a4  <-- 0x80002f73
       0    11252        M 0x80001528 sb      a0, 72(a4)             #; a4  = 0x80002f73, 48 ~~> Byte[0x80002fbb]
       0    11253        M 0x8000152c lw      a4, 0(a1)              #; a1  = 0x80002f64, a4  <~~ Word[0x80002f64]
       0    11274        M                                           #; (lsu) a4  <-- 16
       0    11275        M 0x80001530 addi    a4, a4, -1020          #; a4  = 16, (wrb) a4  <-- -1004
       0    11276        M 0x80001534 snez    a4, a4                 #; a4  = -1004, (wrb) a4  <-- 1
       0    11277        M 0x80001538 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0    11278        M 0x8000153c snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0    11279        M 0x80001540 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0    11280        M 0x80001544 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015a4
       0    11284        M 0x800015a4 ret                            #; ra  = 0x80001be8, goto 0x80001be8
       0    11289        M 0x80001be8 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
       0    11290        M 0x80001bec mv      s8, s10                #; s10 = 0, (wrb) s8  <-- 0
       0    11292        M 0x80001bf0 bnez    s10, pc - 40           #; s10 = 0, not taken
       0    11293        M 0x80001bf4 j       pc + 0x8               #; goto 0x80001bfc
       0    11294        M 0x80001bfc sub     a0, s1, s4             #; s1  = 16, s4  = 8, (wrb) a0  <-- 8
       0    11306        M 0x80001c00 sltu    a0, a0, s2             #; a0  = 8, s2  = 0, (wrb) a0  <-- 0
       0    11307        M 0x80001c04 xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0    11308        M 0x80001c08 xori    a1, s5, 1              #; s5  = 0, (wrb) a1  <-- 1
       0    11309        M 0x80001c0c or      a0, a1, a0             #; a1  = 1, a0  = 1, (wrb) a0  <-- 1
       0    11318        M 0x80001c10 bnez    a0, pc + 48            #; a0  = 1, taken, goto 0x80001c40
       0    11341        M 0x80001c40 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
       0    11342        M 0x80001c44 mv      a0, s0                 #; s0  = 16, (wrb) a0  <-- 16
       0    11345        M 0x80001c48 fld     fs2, 40(sp)            #; fs2  <~~ Doub[0x0011fe58]
       0    11346        M 0x80001c4c fld     fs1, 48(sp)            #; fs1  <~~ Doub[0x0011fe60], (f:lsu) fs2  <-- 0.0
       0    11347        M                                           #; (f:lsu) fs1  <-- 0.0
       0    11354        M 0x80001c54 lw      s10, 64(sp)            #; sp  = 0x0011fe30, s10 <~~ Word[0x0011fe70]
       0    11355        M 0x80001c50 fld     fs0, 56(sp)            #; fs0  <~~ Doub[0x0011fe68]
       0    11356        M                                           #; (f:lsu) fs0  <-- 0.0000000
       0    11358        M                                           #; (lsu) s10 <-- 0x80002bee
       0    11359        M 0x80001c58 lw      s9, 68(sp)             #; sp  = 0x0011fe30, s9  <~~ Word[0x0011fe74]
       0    11362        M                                           #; (lsu) s9  <-- 8
       0    11363        M 0x80001c5c lw      s8, 72(sp)             #; sp  = 0x0011fe30, s8  <~~ Word[0x0011fe78]
       0    11366        M                                           #; (lsu) s8  <-- 16
       0    11367        M 0x80001c60 lw      s7, 76(sp)             #; sp  = 0x0011fe30, s7  <~~ Word[0x0011fe7c]
       0    11370        M                                           #; (lsu) s7  <-- 0
       0    11371        M 0x80001c64 lw      s6, 80(sp)             #; sp  = 0x0011fe30, s6  <~~ Word[0x0011fe80]
       0    11374        M                                           #; (lsu) s6  <-- 0
       0    11375        M 0x80001c68 lw      s5, 84(sp)             #; sp  = 0x0011fe30, s5  <~~ Word[0x0011fe84]
       0    11378        M                                           #; (lsu) s5  <-- -1
       0    11379        M 0x80001c6c lw      s4, 88(sp)             #; sp  = 0x0011fe30, s4  <~~ Word[0x0011fe88]
       0    11382        M                                           #; (lsu) s4  <-- 0x0011ff17
       0    11383        M 0x80001c70 lw      s3, 92(sp)             #; sp  = 0x0011fe30, s3  <~~ Word[0x0011fe8c]
       0    11386        M                                           #; (lsu) s3  <-- 0x0011ff30
       0    11387        M 0x80001c74 lw      s2, 96(sp)             #; sp  = 0x0011fe30, s2  <~~ Word[0x0011fe90]
       0    11390        M                                           #; (lsu) s2  <-- 0x800014fc
       0    11391        M 0x80001c78 lw      s1, 100(sp)            #; sp  = 0x0011fe30, s1  <~~ Word[0x0011fe94]
       0    11394        M                                           #; (lsu) s1  <-- 8
       0    11395        M 0x80001c7c lw      s0, 104(sp)            #; sp  = 0x0011fe30, s0  <~~ Word[0x0011fe98]
       0    11398        M                                           #; (lsu) s0  <-- 0
       0    11399        M 0x80001c80 lw      ra, 108(sp)            #; sp  = 0x0011fe30, ra  <~~ Word[0x0011fe9c]
       0    11400        M 0x80001c84 addi    sp, sp, 112            #; sp  = 0x0011fe30, (wrb) sp  <-- 0x0011fea0
       0    11402        M                                           #; (lsu) ra  <-- 0x80000c2c
       0    11403        M 0x80001c88 ret                            #; ra  = 0x80000c2c, goto 0x80000c2c
       0    11411        M 0x80000c2c j       pc + 0x7c0             #; goto 0x800013ec
       0    11414        M 0x800013ec mv      s8, a0                 #; a0  = 16, (wrb) s8  <-- 16
       0    11426        M 0x800013f0 li      s6, 37                 #; (wrb) s6  <-- 37
       0    11427        M 0x800013f4 li      s7, 46                 #; (wrb) s7  <-- 46
       0    11428        M 0x800013f8 addi    s0, s10, 1             #; s10 = 0x80002bee, (wrb) s0  <-- 0x80002bef
       0    11429        M 0x800013fc j       pc - 0xa74             #; goto 0x80000988
       0    11438        M 0x80000988 addi    s10, s0, 2             #; s0  = 0x80002bef, (wrb) s10 <-- 0x80002bf1
       0    11439        M 0x8000098c mv      s9, s8                 #; s8  = 16, (wrb) s9  <-- 16
       0    11450        M 0x80000990 li      s8, 10                 #; (wrb) s8  <-- 10
       0    11451        M 0x80000994 lbu     a0, 0(s0)              #; s0  = 0x80002bef, a0  <~~ Byte[0x80002bef]
       0    11462        M                                           #; (lsu) a0  <-- 10
       0    11463        M 0x80000998 beqz    a0, pc + 2824          #; a0  = 10, not taken
       0    11464        M 0x8000099c beq     a0, s6, pc + 48        #; a0  = 10, s6  = 37, not taken
       0    11465        M 0x800009a0 addi    s1, s9, 1              #; s9  = 16, (wrb) s1  <-- 17
       0    11466        M 0x800009a4 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0    11467        M 0x800009a8 mv      a2, s9                 #; s9  = 16, (wrb) a2  <-- 16
       0    11468        M 0x800009ac mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0    11477        M 0x800009b0 jalr    s2                     #; s2  = 0x800014fc, (wrb) ra  <-- 0x800009b4, goto 0x800014fc
       0    11491        M 0x800014fc beqz    a0, pc + 168           #; a0  = 10, not taken
       0    11494        M 0x80001500 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0    11495        M 0x80001504 li      a2, 1096               #; (wrb) a2  <-- 1096
       0    11496        M 0x80001508 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0    11497        M 0x8000150c auipc   a3, 0x2                #; (wrb) a3  <-- 0x8000350c
       0    11498        M 0x80001510 addi    a3, a3, -1448          #; a3  = 0x8000350c, (wrb) a3  <-- 0x80002f64
       0    11499        M                                           #; (acc) a1  <-- 0x00d605b3
       0    11500        M 0x80001514 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002f64, (wrb) a1  <-- 0x80002f64
       0    11501        M 0x80001518 lw      a4, 0(a1)              #; a1  = 0x80002f64, a4  <~~ Word[0x80002f64]
       0    11512        M                                           #; (lsu) a4  <-- 16
       0    11513        M 0x8000151c addi    a5, a4, 1              #; a4  = 16, (wrb) a5  <-- 17
       0    11514        M 0x80001520 sw      a5, 0(a1)              #; a1  = 0x80002f64, 17 ~~> Word[0x80002f64]
       0    11515        M 0x80001524 add     a4, a1, a4             #; a1  = 0x80002f64, a4  = 16, (wrb) a4  <-- 0x80002f74
       0    11516        M 0x80001528 sb      a0, 72(a4)             #; a4  = 0x80002f74, 10 ~~> Byte[0x80002fbc]
       0    11517        M 0x8000152c lw      a4, 0(a1)              #; a1  = 0x80002f64, a4  <~~ Word[0x80002f64]
       0    11538        M                                           #; (lsu) a4  <-- 17
       0    11539        M 0x80001530 addi    a4, a4, -1020          #; a4  = 17, (wrb) a4  <-- -1003
       0    11540        M 0x80001534 snez    a4, a4                 #; a4  = -1003, (wrb) a4  <-- 1
       0    11541        M 0x80001538 addi    a0, a0, -10            #; a0  = 10, (wrb) a0  <-- 0
       0    11542        M 0x8000153c snez    a0, a0                 #; a0  = 0, (wrb) a0  <-- 0
       0    11543        M 0x80001540 and     a0, a0, a4             #; a0  = 0, a4  = 1, (wrb) a0  <-- 0
       0    11544        M 0x80001544 bnez    a0, pc + 96            #; a0  = 0, not taken
       0    11545        M 0x80001548 add     a0, a3, a2             #; a3  = 0x80002f64, a2  = 0, (wrb) a0  <-- 0x80002f64
       0    11546        M 0x8000154c addi    a2, a0, 72             #; a0  = 0x80002f64, (wrb) a2  <-- 0x80002fac
       0    11547        M 0x80001550 sw      zero, 12(a0)           #; a0  = 0x80002f64, 0 ~~> Word[0x80002f70]
       0    11548        M 0x80001554 li      a3, 64                 #; (wrb) a3  <-- 64
       0    11549        M 0x80001558 sw      a3, 8(a0)              #; a0  = 0x80002f64, 64 ~~> Word[0x80002f6c]
       0    11550        M 0x8000155c sw      zero, 20(a0)           #; a0  = 0x80002f64, 0 ~~> Word[0x80002f78]
       0    11559        M 0x80001560 li      a3, 1                  #; (wrb) a3  <-- 1
       0    11560        M 0x80001564 sw      a3, 16(a0)             #; a0  = 0x80002f64, 1 ~~> Word[0x80002f74]
       0    11561        M 0x80001568 sw      zero, 28(a0)           #; a0  = 0x80002f64, 0 ~~> Word[0x80002f80]
       0    11563        M 0x8000156c sw      a2, 24(a0)             #; a0  = 0x80002f64, 0x80002fac ~~> Word[0x80002f7c]
       0    11573        M 0x80001570 lw      a2, 0(a1)              #; a1  = 0x80002f64, a2  <~~ Word[0x80002f64]
       0    11574        M 0x80001574 addi    a3, a0, 8              #; a0  = 0x80002f64, (wrb) a3  <-- 0x80002f6c
       0    11575        M 0x80001578 sw      zero, 36(a0)           #; a0  = 0x80002f64, 0 ~~> Word[0x80002f88]
       0    11595        M                                           #; (lsu) a2  <-- 17
       0    11596        M 0x8000157c sw      a2, 32(a0)             #; a0  = 0x80002f64, 17 ~~> Word[0x80002f84]
       0    11597        M 0x80001580 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003580
       0    11598        M 0x80001584 addi    a0, a0, -1856          #; a0  = 0x80003580, (wrb) a0  <-- 0x80002e40
       0    11599        M 0x80001588 sw      a3, 0(a0)              #; a0  = 0x80002e40, 0x80002f6c ~~> Word[0x80002e40]
       0    11600        M 0x8000158c auipc   a0, 0x2                #; (wrb) a0  <-- 0x8000358c
       0    11609        M 0x80001590 addi    a0, a0, -1804          #; a0  = 0x8000358c, (wrb) a0  <-- 0x80002e80
       0    11610        M 0x80001594 lw      a2, 0(a0)              #; a0  = 0x80002e80, a2  <~~ Word[0x80002e80]
       0    11625        M                                           #; (lsu) a2  <-- 0
       0    11626        M 0x80001598 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001594
       0    11627        M 0x80001594 lw      a2, 0(a0)              #; a0  = 0x80002e80, a2  <~~ Word[0x80002e80]
       0    11638        M                                           #; (lsu) a2  <-- 0
       0    11639        M 0x80001598 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001594
       0    11640        M 0x80001594 lw      a2, 0(a0)              #; a0  = 0x80002e80, a2  <~~ Word[0x80002e80]
       0    11651        M                                           #; (lsu) a2  <-- 0
       0    11652        M 0x80001598 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001594
       0    11653        M 0x80001594 lw      a2, 0(a0)              #; a0  = 0x80002e80, a2  <~~ Word[0x80002e80]
       0    11664        M                                           #; (lsu) a2  <-- 0
       0    11665        M 0x80001598 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001594
       0    11666        M 0x80001594 lw      a2, 0(a0)              #; a0  = 0x80002e80, a2  <~~ Word[0x80002e80]
       0    11677        M                                           #; (lsu) a2  <-- 0
       0    11678        M 0x80001598 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001594
       0    11679        M 0x80001594 lw      a2, 0(a0)              #; a0  = 0x80002e80, a2  <~~ Word[0x80002e80]
       0    11690        M                                           #; (lsu) a2  <-- 0
       0    11691        M 0x80001598 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001594
       0    11692        M 0x80001594 lw      a2, 0(a0)              #; a0  = 0x80002e80, a2  <~~ Word[0x80002e80]
       0    11703        M                                           #; (lsu) a2  <-- 0
       0    11704        M 0x80001598 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001594
       0    11705        M 0x80001594 lw      a2, 0(a0)              #; a0  = 0x80002e80, a2  <~~ Word[0x80002e80]
       0    11716        M                                           #; (lsu) a2  <-- 1
       0    11717        M 0x80001598 beqz    a2, pc - 4             #; a2  = 1, not taken
       0    11718        M 0x8000159c sw      zero, 0(a0)            #; a0  = 0x80002e80, 0 ~~> Word[0x80002e80]
       0    11721        M 0x800015a0 sw      zero, 0(a1)            #; a1  = 0x80002f64, 0 ~~> Word[0x80002f64]
       0    11722        M 0x800015a4 ret                            #; ra  = 0x800009b4, goto 0x800009b4
       0    11726        M 0x800009b4 addi    s0, s0, 1              #; s0  = 0x80002bef, (wrb) s0  <-- 0x80002bf0
       0    11727        M 0x800009b8 addi    s10, s10, 1            #; s10 = 0x80002bf1, (wrb) s10 <-- 0x80002bf2
       0    11728        M 0x800009bc mv      s9, s1                 #; s1  = 17, (wrb) s9  <-- 17
       0    11729        M 0x800009c0 lbu     a0, 0(s0)              #; s0  = 0x80002bf0, a0  <~~ Byte[0x80002bf0]
       0    11742        M                                           #; (lsu) a0  <-- 0
       0    11743        M 0x800009c4 bnez    a0, pc - 40            #; a0  = 0, not taken
       0    11744        M 0x800009c8 j       pc + 0xad8             #; goto 0x800014a0
       0    11756        M 0x800014a0 mv      a2, s9                 #; s9  = 17, (wrb) a2  <-- 17
       0    11757        M 0x800014a4 bltu    s9, s5, pc + 8         #; s9  = 17, s5  = -1, taken, goto 0x800014ac
       0    11758        M 0x800014ac li      a0, 0                  #; (wrb) a0  <-- 0
       0    11768        M 0x800014b0 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0    11769        M 0x800014b4 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0    11770        M 0x800014b8 jalr    s2                     #; s2  = 0x800014fc, (wrb) ra  <-- 0x800014bc, goto 0x800014fc
       0    11782        M 0x800014fc beqz    a0, pc + 168           #; a0  = 0, taken, goto 0x800015a4
       0    11787        M 0x800015a4 ret                            #; ra  = 0x800014bc, goto 0x800014bc
       0    11788        M 0x800014bc mv      a0, s9                 #; s9  = 17, (wrb) a0  <-- 17
       0    11789        M 0x800014c0 lw      s11, 60(sp)            #; sp  = 0x0011fea0, s11 <~~ Word[0x0011fedc]
       0    11792        M                                           #; (lsu) s11 <-- 0
       0    11793        M 0x800014c4 lw      s10, 64(sp)            #; sp  = 0x0011fea0, s10 <~~ Word[0x0011fee0]
       0    11796        M                                           #; (lsu) s10 <-- 0
       0    11797        M 0x800014c8 lw      s9, 68(sp)             #; sp  = 0x0011fea0, s9  <~~ Word[0x0011fee4]
       0    11800        M                                           #; (lsu) s9  <-- 0
       0    11801        M 0x800014cc lw      s8, 72(sp)             #; sp  = 0x0011fea0, s8  <~~ Word[0x0011fee8]
       0    11804        M                                           #; (lsu) s8  <-- 0
       0    11805        M 0x800014d0 lw      s7, 76(sp)             #; sp  = 0x0011fea0, s7  <~~ Word[0x0011feec]
       0    11808        M                                           #; (lsu) s7  <-- 0
       0    11809        M 0x800014d4 lw      s6, 80(sp)             #; sp  = 0x0011fea0, s6  <~~ Word[0x0011fef0]
       0    11812        M                                           #; (lsu) s6  <-- 0
       0    11813        M 0x800014d8 lw      s5, 84(sp)             #; sp  = 0x0011fea0, s5  <~~ Word[0x0011fef4]
       0    11816        M                                           #; (lsu) s5  <-- 0
       0    11817        M 0x800014dc lw      s4, 88(sp)             #; sp  = 0x0011fea0, s4  <~~ Word[0x0011fef8]
       0    11820        M                                           #; (lsu) s4  <-- 0
       0    11821        M 0x800014e0 lw      s3, 92(sp)             #; sp  = 0x0011fea0, s3  <~~ Word[0x0011fefc]
       0    11824        M                                           #; (lsu) s3  <-- 0
       0    11825        M 0x800014e4 lw      s2, 96(sp)             #; sp  = 0x0011fea0, s2  <~~ Word[0x0011ff00]
       0    11828        M                                           #; (lsu) s2  <-- 0
       0    11829        M 0x800014e8 lw      s1, 100(sp)            #; sp  = 0x0011fea0, s1  <~~ Word[0x0011ff04]
       0    11832        M                                           #; (lsu) s1  <-- 0
       0    11833        M 0x800014ec lw      s0, 104(sp)            #; sp  = 0x0011fea0, s0  <~~ Word[0x0011ff08]
       0    11836        M                                           #; (lsu) s0  <-- 0
       0    11837        M 0x800014f0 lw      ra, 108(sp)            #; sp  = 0x0011fea0, ra  <~~ Word[0x0011ff0c]
       0    11838        M 0x800014f4 addi    sp, sp, 112            #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011ff10
       0    11840        M                                           #; (lsu) ra  <-- 0x800008f8
       0    11841        M 0x800014f8 ret                            #; ra  = 0x800008f8, goto 0x800008f8
       0    11853        M 0x800008f8 lw      ra, 12(sp)             #; sp  = 0x0011ff10, ra  <~~ Word[0x0011ff1c]
       0    11854        M 0x800008fc addi    sp, sp, 48             #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011ff40
       0    11856        M                                           #; (lsu) ra  <-- 0x80000888
       0    11865        M 0x80000900 ret                            #; ra  = 0x80000888, goto 0x80000888
       0    11879        M 0x80000888 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002888
       0    11880        M 0x8000088c addi    a0, a0, 1576           #; a0  = 0x80002888, (wrb) a0  <-- 0x80002eb0
       0    11884        M 0x80000890 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002eb0]
       0    11885        M 0x8000089c lw      ra, 28(sp)             #; sp  = 0x0011ff40, ra  <~~ Word[0x0011ff5c]
       0    11893        M                                           #; (f:lsu) ft0  <-- 0.0001
       0    11894        M 0x800008a0 addi    sp, sp, 32             #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff60
                         M 0x80000894 flt.d   a0, ft0, fs0           #; ft0  = 0.0001, fs0  = 0.0000000
       0    11895        M                                           #; (lsu) ra  <-- 0x80002960
       0    11896        M 0x800008a4 ret                            #; ra  = 0x80002960, goto 0x80002960
                         M 0x80000898 fld     fs0, 16(sp)            #; fs0  <~~ Doub[0x0011ff50]
       0    11897        M                                           #; (f:lsu) fs0  <-- 0.0
       0    11899        M 0x80002960 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
       0    11900        M 0x80002964 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002964
       0    11901        M 0x80002968 jalr    ra, ra, 524            #; ra  = 0x80002964, (wrb) ra  <-- 0x8000296c, goto 0x80002b70
       0    11922        M 0x80002b70 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
       0    11923        M 0x80002b74 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x8000296c ~~> Word[0x0011ff5c]
       0    11924        M 0x80002b78 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002b78
       0    11925        M 0x80002b7c jalr    ra, ra, -1268          #; ra  = 0x80002b78, (wrb) ra  <-- 0x80002b80, goto 0x80002684
       0    11928        M 0x80002684 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0    11929        M 0x80002688 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0    11930        M 0x8000268c lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0    11933        M                                           #; (lsu) a0  <-- 0x0011ff70
       0    11934        M 0x80002690 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0    11937        M                                           #; (lsu) a0  <-- 0x0011ff70
       0    11938        M 0x80002694 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
       0    11939        M 0x80002698 ret                            #; ra  = 0x80002b80, goto 0x80002b80
       0    11941        M                                           #; (lsu) a0  <-- 0x00120190
       0    11942        M 0x80002b80 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
       0    11952        M                                           #; (lsu) a0  <-- 0
       0    11953        M 0x80002b84 mv      zero, a0               #; a0  = 0
       0    11954        M 0x80002b88 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
       0    11955        M 0x80002b8c addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
       0    11957        M                                           #; (lsu) ra  <-- 0x8000296c
       0    11958        M 0x80002b90 ret                            #; ra  = 0x8000296c, goto 0x8000296c
       0    11972        M 0x8000296c mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
       0    11976        M 0x80002970 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002970
       0    11977        M 0x80002974 jalr    ra, ra, 556            #; ra  = 0x80002970, (wrb) ra  <-- 0x80002978, goto 0x80002b9c
       0    11978        M 0x80002b9c addi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff58
       0    11979        M 0x80002ba0 sw      a0, 0(sp)              #; sp  = 0x0011ff58, 0 ~~> Word[0x0011ff58]
       0    11980        M 0x80002ba4 sw      ra, 4(sp)              #; sp  = 0x0011ff58, 0x80002978 ~~> Word[0x0011ff5c]
       0    11981        M 0x80002ba8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002ba8
       0    11982        M 0x80002bac jalr    ra, ra, -1348          #; ra  = 0x80002ba8, (wrb) ra  <-- 0x80002bb0, goto 0x80002664
       0    12001        M 0x80002664 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0    12002        M 0x80002668 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0    12003        M 0x8000266c lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0    12006        M                                           #; (lsu) a0  <-- 0x0011ff70
       0    12007        M 0x80002670 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0    12010        M                                           #; (lsu) a0  <-- 0x0011ff70
       0    12011        M 0x80002674 lw      a0, 8(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff78]
       0    12012        M 0x80002678 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0    12014        M                                           #; (lsu) a0  <-- 0
       0    12015        M 0x8000267c sub     a0, a1, a0             #; a1  = 0, a0  = 0, (wrb) a0  <-- 0
       0    12016        M 0x80002680 ret                            #; ra  = 0x80002bb0, goto 0x80002bb0
       0    12017        M 0x80002bb0 lw      t0, 0(sp)              #; sp  = 0x0011ff58, t0  <~~ Word[0x0011ff58]
       0    12020        M                                           #; (lsu) t0  <-- 0
       0    12021        M 0x80002bb4 lw      ra, 4(sp)              #; sp  = 0x0011ff58, ra  <~~ Word[0x0011ff5c]
       0    12022        M 0x80002bb8 addi    sp, sp, 8              #; sp  = 0x0011ff58, (wrb) sp  <-- 0x0011ff60
       0    12023        M 0x80002bbc bnez    a0, pc + 24            #; a0  = 0, not taken
       0    12024        M                                           #; (lsu) ra  <-- 0x80002978
       0    12032        M 0x80002bc0 slli    t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 0
       0    12033        M 0x80002bc4 ori     t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 1
       0    12034        M 0x80002bc8 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002bc8
       0    12035        M 0x80002bcc addi    t1, t1, 632            #; t1  = 0x80002bc8, (wrb) t1  <-- 0x80002e40
       0    12043        M 0x80002bd0 sw      t0, 0(t1)              #; t1  = 0x80002e40, 1 ~~> Word[0x80002e40]
       0    12044        M 0x80002bd4 ret                            #; ra  = 0x80002978, goto 0x80002978
       0    12059        M 0x80002978 wfi                            #; 

## Performance metrics

Performance metrics for section 0 @ (12, 12059):
snitch_loads                                   141
snitch_stores                                  142
fpss_stores                                    509
fpss_loads                                     519
snitch_avg_load_latency                    11.8936
snitch_occupancy                            0.2310
snitch_fseq_rel_offloads                    0.4870
fseq_yield                                     1.0
fseq_fpu_yield                                 1.0
fpss_section_latency                             0
fpss_avg_fpu_latency                        2.9318
fpss_avg_load_latency                       1.2389
fpss_occupancy                              0.2193
fpss_fpu_occupancy                          0.1340
fpss_fpu_rel_occupancy                      0.6109
cycles                                       12048
total_ipc                                   0.4503
