       0       12        M 0x00001000 csrr    a0, mhartid            #; mhartid = 0, (wrb) a0  <-- 0
       0       32        M 0x00001004 auipc   a1, 0x0                #; (wrb) a1  <-- 4100
       0       56        M 0x00001008 addi    a1, a1, 32             #; a1  = 4100, (wrb) a1  <-- 4132
       0       84        M 0x0000100c auipc   t0, 0x0                #; (wrb) t0  <-- 4108
       0      104        M 0x00001010 lw      t0, 20(t0)             #; t0  = 4108, t0  <~~ Word[0x00001020]
       0      115        M                                           #; (lsu) t0  <-- 0x80002710
       0      128        M 0x00001014 jalr    t0                     #; t0  = 0x80002710, (wrb) ra  <-- 4120, goto 0x80002710
       0      269        M 0x80002710 auipc   gp, 0x1                #; (wrb) gp  <-- 0x80003710
       0      270        M 0x80002714 addi    gp, gp, -264           #; gp  = 0x80003710, (wrb) gp  <-- 0x80003608
       0      271        M 0x80002718 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002718
       0      272        M 0x8000271c jalr    ra, ra, 964            #; ra  = 0x80002718, (wrb) ra  <-- 0x80002720, goto 0x80002adc
       0      292        M 0x80002adc mv      a4, a1                 #; a1  = 4132, (wrb) a4  <-- 4132
       0      304        M 0x80002ae0 lw      a1, 4(a4)              #; a4  = 4132, a1  <~~ Word[0x00001028]
       0      334        M                                           #; (lsu) a1  <-- 8
       0      335        M 0x80002ae4 lw      t0, 8(a4)              #; a4  = 4132, t0  <~~ Word[0x0000102c]
       0      374        M                                           #; (lsu) t0  <-- 0
       0      375        M 0x80002ae8 lw      a2, 12(a4)             #; a4  = 4132, a2  <~~ Word[0x00001030]
       0      414        M                                           #; (lsu) a2  <-- 0x00100000
       0      415        M 0x80002aec lw      t1, 16(a4)             #; a4  = 4132, t1  <~~ Word[0x00001034]
       0      454        M                                           #; (lsu) t1  <-- 0x00020000
       0      455        M 0x80002af0 lw      t2, 20(a4)             #; a4  = 4132, t2  <~~ Word[0x00001038]
       0      456        M 0x80002af4 sub     a0, a0, t0             #; a0  = 0, t0  = 0, (wrb) a0  <-- 0
       0      457        M 0x80002af8 div     t3, a0, a1             #; a0  = 0, a1  = 8
       0      460        M                                           #; (acc) t4  <-- 0x027e0eb3
       0      494        M                                           #; (lsu) t2  <-- 0
       0      495        M 0x80002afc mul     t4, t3, t2             #; t3  = 0, t2  = 0
       0      498        M                                           #; (acc) a2  <-- 0x01d60633
       0      499        M 0x80002b00 add     a2, a2, t4             #; a2  = 0x00100000, t4  = 0, (wrb) a2  <-- 0x00100000
       0      500        M 0x80002b04 add     a3, a2, t1             #; a2  = 0x00100000, t1  = 0x00020000, (wrb) a3  <-- 0x00120000
       0      501        M 0x80002b08 remu    a0, a0, a1             #; a0  = 0, a1  = 8
       0      502        M 0x80002b0c ret                            #; ra  = 0x80002720, goto 0x80002720
       0      504        M                                           #; (acc) s0  <-- 0x00050413
       0      505        M 0x80002720 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
       0      506        M 0x80002724 mv      a0, a4                 #; a4  = 4132, (wrb) a0  <-- 4132
       0      507        M 0x80002728 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002728
       0      508        M 0x8000272c jalr    ra, ra, 1036           #; ra  = 0x80002728, (wrb) ra  <-- 0x80002730, goto 0x80002b34
       0      523        M 0x80002b34 lw      a0, 8(a0)              #; a0  = 4132, a0  <~~ Word[0x0000102c]
       0      524        M 0x80002b38 ret                            #; ra  = 0x80002730, goto 0x80002730
       0      543        M                                           #; (lsu) a0  <-- 0
       0      544        M 0x80002730 mv      t0, a0                 #; a0  = 0, (wrb) t0  <-- 0
       0      545        M 0x80002734 mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
       0      546        M 0x80002738 csrr    t1, mhartid            #; mhartid = 0, (wrb) t1  <-- 0
       0      547        M 0x8000273c sub     t0, t1, t0             #; t1  = 0, t0  = 0, (wrb) t0  <-- 0
       0      549        M 0x80002740 bnez    t0, pc + 36            #; t0  = 0, not taken
       0      550        M 0x80002744 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002744
       0      551        M 0x80002748 addi    t0, t0, 1932           #; t0  = 0x80002744, (wrb) t0  <-- 0x80002ed0
       0      552        M 0x8000274c auipc   t1, 0x0                #; (wrb) t1  <-- 0x8000274c
       0      562        M 0x80002750 addi    t1, t1, 1928           #; t1  = 0x8000274c, (wrb) t1  <-- 0x80002ed4
       0      563        M 0x80002754 bge     t0, t1, pc + 16        #; t0  = 0x80002ed0, t1  = 0x80002ed4, not taken
       0      564        M 0x80002758 sw      zero, 0(t0)            #; t0  = 0x80002ed0, 0 ~~> Word[0x80002ed0]
       0      565        M 0x8000275c addi    t0, t0, 4              #; t0  = 0x80002ed0, (wrb) t0  <-- 0x80002ed4
       0      573        M 0x80002760 blt     t0, t1, pc - 8         #; t0  = 0x80002ed4, t1  = 0x80002ed4, not taken
       0      574        M 0x80002764 csrr    t0, misa               #; misa = 0x40801129, (wrb) t0  <-- 0x40801129
       0      575        M 0x80002768 andi    t0, t0, 40             #; t0  = 0x40801129, (wrb) t0  <-- 40
       0      576        M 0x8000276c beqz    t0, pc + 132           #; t0  = 40, not taken
       0      586        M 0x80002770 fcvt.d.w ft0, zero             #; ac1  = 0
       0      587        M 0x80002774 fcvt.d.w ft1, zero             #; ac1  = 0, (f:fpu) ft0  <-- 0.0
       0      588        M 0x80002778 fcvt.d.w ft2, zero             #; ac1  = 0, (f:fpu) ft1  <-- 0.0
       0      589        M 0x8000277c fcvt.d.w ft3, zero             #; ac1  = 0, (f:fpu) ft2  <-- 0.0
       0      590        M                                           #; (f:fpu) ft3  <-- 0.0
       0      598        M 0x80002780 fcvt.d.w ft4, zero             #; ac1  = 0
       0      599        M 0x80002784 fcvt.d.w ft5, zero             #; ac1  = 0, (f:fpu) ft4  <-- 0.0
       0      600        M 0x80002788 fcvt.d.w ft6, zero             #; ac1  = 0, (f:fpu) ft5  <-- 0.0
       0      601        M 0x8000278c fcvt.d.w ft7, zero             #; ac1  = 0, (f:fpu) ft6  <-- 0.0
       0      602        M                                           #; (f:fpu) ft7  <-- 0.0
       0      610        M 0x80002790 fcvt.d.w fs0, zero             #; ac1  = 0
       0      611        M 0x80002794 fcvt.d.w fs1, zero             #; ac1  = 0, (f:fpu) fs0  <-- 0.0
       0      612        M 0x80002798 fcvt.d.w fa0, zero             #; ac1  = 0, (f:fpu) fs1  <-- 0.0
       0      613        M 0x8000279c fcvt.d.w fa1, zero             #; ac1  = 0, (f:fpu) fa0  <-- 0.0
       0      614        M                                           #; (f:fpu) fa1  <-- 0.0
       0      622        M 0x800027a0 fcvt.d.w fa2, zero             #; ac1  = 0
       0      623        M 0x800027a4 fcvt.d.w fa3, zero             #; ac1  = 0, (f:fpu) fa2  <-- 0.0
       0      624        M 0x800027a8 fcvt.d.w fa4, zero             #; ac1  = 0, (f:fpu) fa3  <-- 0.0
       0      625        M 0x800027ac fcvt.d.w fa5, zero             #; ac1  = 0, (f:fpu) fa4  <-- 0.0
       0      626        M                                           #; (f:fpu) fa5  <-- 0.0
       0      634        M 0x800027b0 fcvt.d.w fa6, zero             #; ac1  = 0
       0      635        M 0x800027b4 fcvt.d.w fa7, zero             #; ac1  = 0, (f:fpu) fa6  <-- 0.0
       0      636        M 0x800027b8 fcvt.d.w fs2, zero             #; ac1  = 0, (f:fpu) fa7  <-- 0.0
       0      637        M 0x800027bc fcvt.d.w fs3, zero             #; ac1  = 0, (f:fpu) fs2  <-- 0.0
       0      638        M                                           #; (f:fpu) fs3  <-- 0.0
       0      646        M 0x800027c0 fcvt.d.w fs4, zero             #; ac1  = 0
       0      647        M 0x800027c4 fcvt.d.w fs5, zero             #; ac1  = 0, (f:fpu) fs4  <-- 0.0
       0      648        M 0x800027c8 fcvt.d.w fs6, zero             #; ac1  = 0, (f:fpu) fs5  <-- 0.0
       0      649        M 0x800027cc fcvt.d.w fs7, zero             #; ac1  = 0, (f:fpu) fs6  <-- 0.0
       0      650        M                                           #; (f:fpu) fs7  <-- 0.0
       0      658        M 0x800027d0 fcvt.d.w fs8, zero             #; ac1  = 0
       0      659        M 0x800027d4 fcvt.d.w fs9, zero             #; ac1  = 0, (f:fpu) fs8  <-- 0.0
       0      660        M 0x800027d8 fcvt.d.w fs10, zero            #; ac1  = 0, (f:fpu) fs9  <-- 0.0
       0      661        M 0x800027dc fcvt.d.w fs11, zero            #; ac1  = 0, (f:fpu) fs10 <-- 0.0
       0      662        M                                           #; (f:fpu) fs11 <-- 0.0
       0      670        M 0x800027e0 fcvt.d.w ft8, zero             #; ac1  = 0
       0      671        M 0x800027e4 fcvt.d.w ft9, zero             #; ac1  = 0, (f:fpu) ft8  <-- 0.0
       0      672        M 0x800027e8 fcvt.d.w ft10, zero            #; ac1  = 0, (f:fpu) ft9  <-- 0.0
       0      673        M 0x800027ec fcvt.d.w ft11, zero            #; ac1  = 0, (f:fpu) ft10 <-- 0.0
       0      674        M                                           #; (f:fpu) ft11 <-- 0.0
       0      681        M 0x800027f0 addi    a3, a3, -8             #; a3  = 0x00120000, (wrb) a3  <-- 0x0011fff8
       0      682        M 0x800027f4 sw      zero, 0(a3)            #; a3  = 0x0011fff8, 0 ~~> Word[0x0011fff8]
       0      683        M 0x800027f8 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800027f8
       0      684        M 0x800027fc lw      t0, 900(t0)            #; t0  = 0x800027f8, t0  <~~ Word[0x80002b7c]
       0      704        M                                           #; (lsu) t0  <-- 136
       0      705        M 0x80002800 sub     a3, a3, t0             #; a3  = 0x0011fff8, t0  = 136, (wrb) a3  <-- 0x0011ff70
       0      706        M 0x80002804 mv      a5, a3                 #; a3  = 0x0011ff70, (wrb) a5  <-- 0x0011ff70
       0      707        M 0x80002808 auipc   t2, 0x0                #; (wrb) t2  <-- 0x80002808
       0      708        M 0x8000280c lw      t2, 880(t2)            #; t2  = 0x80002808, t2  <~~ Word[0x80002b78]
       0      744        M                                           #; (lsu) t2  <-- 10
       0      745        M 0x80002810 sll     t0, a0, t2             #; a0  = 0, t2  = 10, (wrb) t0  <-- 0
       0      746        M 0x80002814 sll     t1, a1, t2             #; a1  = 8, t2  = 10, (wrb) t1  <-- 8192
       0      747        M 0x80002818 sub     sp, a3, t0             #; a3  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
       0      748        M 0x8000281c sub     a3, a3, t1             #; a3  = 0x0011ff70, t1  = 8192, (wrb) a3  <-- 0x0011df70
       0      749        M 0x80002820 slli    t0, a0, 3              #; a0  = 0, (wrb) t0  <-- 0
       0      750        M 0x80002824 slli    t1, a1, 3              #; a1  = 8, (wrb) t1  <-- 64
       0      751        M 0x80002828 sub     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
       0      752        M 0x8000282c sub     a3, a3, t1             #; a3  = 0x0011df70, t1  = 64, (wrb) a3  <-- 0x0011df30
       0      761        M 0x80002830 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002830
       0      762        M 0x80002834 addi    t0, t0, 1496           #; t0  = 0x80002830, (wrb) t0  <-- 0x80002e08
       0      763        M 0x80002838 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002838
       0      764        M 0x8000283c addi    t1, t1, 1488           #; t1  = 0x80002838, (wrb) t1  <-- 0x80002e08
       0      775        M 0x80002840 auipc   t2, 0x0                #; (wrb) t2  <-- 0x80002840
       0      776        M 0x80002844 addi    t2, t2, 1480           #; t2  = 0x80002840, (wrb) t2  <-- 0x80002e08
       0      777        M 0x80002848 auipc   t3, 0x0                #; (wrb) t3  <-- 0x80002848
       0      778        M 0x8000284c addi    t3, t3, 1488           #; t3  = 0x80002848, (wrb) t3  <-- 0x80002e18
       0      787        M 0x80002850 add     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0x80002e08, (wrb) sp  <-- 0x80122d78
       0      788        M 0x80002854 sub     sp, sp, t1             #; sp  = 0x80122d78, t1  = 0x80002e08, (wrb) sp  <-- 0x0011ff70
       0      789        M 0x80002858 add     sp, sp, t2             #; sp  = 0x0011ff70, t2  = 0x80002e08, (wrb) sp  <-- 0x80122d78
       0      790        M 0x8000285c sub     sp, sp, t3             #; sp  = 0x80122d78, t3  = 0x80002e18, (wrb) sp  <-- 0x0011ff60
       0      799        M 0x80002860 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
       0      800        M 0x80002864 mv      tp, sp                 #; sp  = 0x0011ff60, (wrb) tp  <-- 0x0011ff60
       0      801        M 0x80002868 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
       0      802        M 0x8000286c mv      t4, tp                 #; tp  = 0x0011ff60, (wrb) t4  <-- 0x0011ff60
       0      811        M 0x80002870 bge     t0, t1, pc + 24        #; t0  = 0x80002e08, t1  = 0x80002e08, taken, goto 0x80002888
       0      823        M 0x80002888 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002888
       0      824        M 0x8000288c addi    t0, t0, 1408           #; t0  = 0x80002888, (wrb) t0  <-- 0x80002e08
       0      835        M 0x80002890 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002890
       0      836        M 0x80002894 addi    t1, t1, 1416           #; t1  = 0x80002890, (wrb) t1  <-- 0x80002e18
       0      837        M 0x80002898 bge     t0, t1, pc + 20        #; t0  = 0x80002e08, t1  = 0x80002e18, not taken
       0      838        M 0x8000289c sw      zero, 0(t4)            #; t4  = 0x0011ff60, 0 ~~> Word[0x0011ff60]
       0      847        M 0x800028a0 addi    t0, t0, 4              #; t0  = 0x80002e08, (wrb) t0  <-- 0x80002e0c
       0      848        M 0x800028a4 addi    t4, t4, 4              #; t4  = 0x0011ff60, (wrb) t4  <-- 0x0011ff64
       0      849        M 0x800028a8 blt     t0, t2, pc - 12        #; t0  = 0x80002e0c, t2  = 0x80002e08, not taken
       0      850        M 0x800028ac addi    sp, sp, -20            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff4c
       0      862        M 0x800028b0 sw      a0, 0(sp)              #; sp  = 0x0011ff4c, 0 ~~> Word[0x0011ff4c]
       0      863        M 0x800028b4 sw      a1, 4(sp)              #; sp  = 0x0011ff4c, 8 ~~> Word[0x0011ff50]
       0      864        M 0x800028b8 sw      a2, 8(sp)              #; sp  = 0x0011ff4c, 0x00100000 ~~> Word[0x0011ff54]
       0      865        M 0x800028bc sw      a3, 12(sp)             #; sp  = 0x0011ff4c, 0x0011df30 ~~> Word[0x0011ff58]
       0      875        M 0x800028c0 sw      a4, 16(sp)             #; sp  = 0x0011ff4c, 4132 ~~> Word[0x0011ff5c]
       0      876        M 0x800028c4 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800028c4
       0      877        M 0x800028c8 jalr    ra, ra, -1056          #; ra  = 0x800028c4, (wrb) ra  <-- 0x800028cc, goto 0x800024a4
       0      899        M 0x800024a4 sw      a5, 0(a5)              #; a5  = 0x0011ff70, 0x0011ff70 ~~> Word[0x0011ff70]
       0      900        M 0x800024a8 sw      a4, 4(a5)              #; a5  = 0x0011ff70, 4132 ~~> Word[0x0011ff74]
       0      902        M 0x800024ac lw      t1, 8(a4)              #; a4  = 4132, t1  <~~ Word[0x0000102c]
       0      923        M                                           #; (lsu) t1  <-- 0
       0      924        M 0x800024b0 sw      t1, 8(a5)              #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff78]
       0      925        M 0x800024b4 lw      a6, 40(a4)             #; a4  = 4132, a6  <~~ Word[0x0000104c]
       0      963        M                                           #; (lsu) a6  <-- 1
       0      964        M 0x800024b8 lw      a7, 44(a4)             #; a4  = 4132, a7  <~~ Word[0x00001050]
       0     1003        M                                           #; (lsu) a7  <-- 1
       0     1004        M 0x800024bc lw      t0, 4(a4)              #; a4  = 4132, t0  <~~ Word[0x00001028]
       0     1005        M 0x800024c0 mul     a6, a7, a6             #; a7  = 1, a6  = 1
       0     1008        M                                           #; (acc) a0  <-- 0x02580533
       0     1043        M                                           #; (lsu) t0  <-- 8
       0     1044        M 0x800024c4 mul     a0, a6, t0             #; a6  = 1, t0  = 8
       0     1047        M                                           #; (acc) a2  <-- 0x00a7a623
       0     1048        M 0x800024c8 sw      a0, 12(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff7c]
       0     1049        M 0x800024cc csrr    a7, mhartid            #; mhartid = 0, (wrb) a7  <-- 0
       0     1050        M 0x800024d0 sub     a0, a7, t1             #; a7  = 0, t1  = 0, (wrb) a0  <-- 0
       0     1051        M 0x800024d4 divu    a0, a0, t0             #; a0  = 0, t0  = 8
       0     1054        M                                           #; (acc) a6  <-- 0x00a7a823
       0     1055        M 0x800024d8 sw      a0, 16(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff80]
       0     1056        M 0x800024dc sw      a6, 20(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff84]
       0     1062        M 0x800024e0 sw      t1, 24(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff88]
       0     1063        M 0x800024e4 sw      a1, 28(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff8c]
       0     1064        M 0x800024e8 lw      a0, 24(a4)             #; a4  = 4132, a0  <~~ Word[0x0000103c]
       0     1065        M 0x800024ec lui     a1, 0x10000            #; (wrb) a1  <-- 0x10000000
       0     1083        M                                           #; (lsu) a0  <-- 0x80000000
       0     1084        M 0x800024f0 add     a0, a0, a1             #; a0  = 0x80000000, a1  = 0x10000000, (wrb) a0  <-- 0x90000000
       0     1085        M 0x800024f4 sw      zero, 36(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff94]
       0     1086        M 0x800024f8 sw      a0, 32(a5)             #; a5  = 0x0011ff70, 0x90000000 ~~> Word[0x0011ff90]
       0     1087        M 0x800024fc lw      a0, 32(a4)             #; a4  = 4132, a0  <~~ Word[0x00001044]
       0     1123        M                                           #; (lsu) a0  <-- 0
       0     1124        M 0x80002500 lw      a1, 36(a4)             #; a4  = 4132, a1  <~~ Word[0x00001048]
       0     1125        M 0x80002504 sw      a0, 40(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff98]
       0     1163        M                                           #; (lsu) a1  <-- 1
       0     1164        M 0x80002508 sw      a1, 44(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff9c]
       0     1165        M 0x8000250c sw      a2, 48(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffa0]
       0     1166        M 0x80002510 sw      zero, 52(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffa4]
       0     1167        M 0x80002514 sw      a3, 56(a5)             #; a5  = 0x0011ff70, 0x0011df30 ~~> Word[0x0011ffa8]
       0     1168        M 0x80002518 sw      zero, 60(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffac]
       0     1169        M 0x8000251c lw      a0, 16(a4)             #; a4  = 4132, a0  <~~ Word[0x00001034]
       0     1190        M                                           #; (lsu) a0  <-- 0x00020000
       0     1191        M 0x80002520 add     a6, a2, a0             #; a2  = 0x00100000, a0  = 0x00020000, (wrb) a6  <-- 0x00120000
       0     1192        M 0x80002524 addi    a1, a6, 400            #; a6  = 0x00120000, (wrb) a1  <-- 0x00120190
       0     1193        M 0x80002528 sw      a1, 112(a5)            #; a5  = 0x0011ff70, 0x00120190 ~~> Word[0x0011ffe0]
       0     1194        M 0x8000252c sltu    t0, a6, a0             #; a6  = 0x00120000, a0  = 0x00020000, (wrb) t0  <-- 0
       0     1195        M 0x80002530 srli    a1, a0, 1              #; a0  = 0x00020000, (wrb) a1  <-- 0x00010000
       0     1196        M 0x80002534 add     t1, a6, a1             #; a6  = 0x00120000, a1  = 0x00010000, (wrb) t1  <-- 0x00130000
       0     1197        M 0x80002538 sltu    a1, t1, a6             #; t1  = 0x00130000, a6  = 0x00120000, (wrb) a1  <-- 0
       0     1198        M 0x8000253c add     a1, t0, a1             #; t0  = 0, a1  = 0, (wrb) a1  <-- 0
       0     1208        M 0x80002540 sw      t1, 64(a5)             #; a5  = 0x0011ff70, 0x00130000 ~~> Word[0x0011ffb0]
       0     1209        M 0x80002544 sw      a1, 68(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffb4]
       0     1210        M 0x80002548 slli    a0, a0, 1              #; a0  = 0x00020000, (wrb) a0  <-- 0x00040000
       0     1211        M 0x8000254c add     a1, a0, a2             #; a0  = 0x00040000, a2  = 0x00100000, (wrb) a1  <-- 0x00140000
       0     1222        M 0x80002550 sltu    a0, a1, a0             #; a1  = 0x00140000, a0  = 0x00040000, (wrb) a0  <-- 0
       0     1223        M 0x80002554 sw      a1, 72(a5)             #; a5  = 0x0011ff70, 0x00140000 ~~> Word[0x0011ffb8]
       0     1224        M 0x80002558 sw      a0, 76(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffbc]
       0     1226        M 0x8000255c sw      zero, 104(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd8]
       0     1234        M 0x80002560 sw      zero, 108(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffdc]
       0     1235        M 0x80002564 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1236        M 0x80002568 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1237        M 0x8000256c sw      a5, 0(a0)              #; a0  = 0x0011ff60, 0x0011ff70 ~~> Word[0x0011ff60]
       0     1246        M 0x80002570 lw      a0, 0(a5)              #; a5  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1250        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1251        M 0x80002574 lw      a1, 24(a0)             #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ff88]
       0     1254        M                                           #; (lsu) a1  <-- 0
       0     1255        M 0x80002578 lw      a0, 28(a0)             #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff8c]
       0     1256        M 0x8000257c sub     a1, a7, a1             #; a7  = 0, a1  = 0, (wrb) a1  <-- 0
       0     1258        M                                           #; (lsu) a0  <-- 8
       0     1259        M 0x80002580 remu    a0, a1, a0             #; a1  = 0, a0  = 8
       0     1260        M 0x80002584 lui     a1, 0x0                #; (wrb) a1  <-- 0
       0     1261        M 0x80002588 add     a1, a1, tp             #; a1  = 0, tp  = 0x0011ff60, (wrb) a1  <-- 0x0011ff60
       0     1263        M                                           #; (acc) tp  <-- 0x00a5a223
       0     1264        M 0x8000258c sw      a0, 4(a1)              #; a1  = 0x0011ff60, 0 ~~> Word[0x0011ff64]
       0     1270        M 0x80002590 li      a0, 1096               #; (wrb) a0  <-- 1096
       0     1271        M 0x80002594 mul     a0, a7, a0             #; a7  = 0, a0  = 1096
       0     1272        M 0x80002598 auipc   a1, 0x1                #; (wrb) a1  <-- 0x80003598
       0     1273        M 0x8000259c addi    a1, a1, -1732          #; a1  = 0x80003598, (wrb) a1  <-- 0x80002ed4
       0     1282        M 0x800025a0 add     a0, a0, a1             #; a0  = 0, a1  = 0x80002ed4, (wrb) a0  <-- 0x80002ed4
       0     1283        M 0x800025a4 sw      zero, 0(a0)            #; a0  = 0x80002ed4, 0 ~~> Word[0x80002ed4]
       0     1284        M 0x800025a8 lw      a7, 48(a4)             #; a4  = 4132, a7  <~~ Word[0x00001054]
       0     1354        M                                           #; (lsu) a7  <-- 0xffff0000
       0     1355        M 0x800025ac sw      a7, 116(a5)            #; a5  = 0x0011ff70, 0xffff0000 ~~> Word[0x0011ffe4]
       0     1356        M 0x800025b0 sw      a6, 124(a5)            #; a5  = 0x0011ff70, 0x00120000 ~~> Word[0x0011ffec]
       0     1357        M 0x800025b4 sw      zero, 120(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffe8]
       0     1358        M 0x800025b8 addi    a4, a6, 384            #; a6  = 0x00120000, (wrb) a4  <-- 0x00120180
       0     1359        M 0x800025bc sw      a4, 128(a5)            #; a5  = 0x0011ff70, 0x00120180 ~~> Word[0x0011fff0]
       0     1360        M 0x800025c0 addi    a0, a2, 7              #; a2  = 0x00100000, (wrb) a0  <-- 0x00100007
       0     1361        M 0x800025c4 andi    a0, a0, -8             #; a0  = 0x00100007, (wrb) a0  <-- 0x00100000
       0     1362        M 0x800025c8 sw      a0, 80(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc0]
       0     1363        M 0x800025cc sub     a2, a3, a2             #; a3  = 0x0011df30, a2  = 0x00100000, (wrb) a2  <-- 0x0001df30
       0     1364        M 0x800025d0 sw      a2, 84(a5)             #; a5  = 0x0011ff70, 0x0001df30 ~~> Word[0x0011ffc4]
       0     1365        M 0x800025d4 sw      a0, 88(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc8]
       0     1366        M 0x800025d8 lw      a0, 0(a1)              #; a1  = 0x80002ed4, a0  <~~ Word[0x80002ed4]
       0     1377        M                                           #; (lsu) a0  <-- 0
       0     1378        M 0x800025dc addi    a0, a0, 1103           #; a0  = 0, (wrb) a0  <-- 1103
       0     1379        M 0x800025e0 andi    a0, a0, -8             #; a0  = 1103, (wrb) a0  <-- 1096
       0     1380        M 0x800025e4 sw      a0, 92(a5)             #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffcc]
       0     1381        M 0x800025e8 sw      zero, 96(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd0]
       0     1382        M 0x800025ec sw      a0, 100(a5)            #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffd4]
       0     1383        M 0x800025f0 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1384        M 0x800025f4 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1385        M 0x800025f8 sw      a7, 8(a0)              #; a0  = 0x0011ff60, 0xffff0000 ~~> Word[0x0011ff68]
       0     1386        M 0x800025fc lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1391        M 0x80002600 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1392        M 0x80002604 sw      a4, 12(a0)             #; a0  = 0x0011ff60, 0x00120180 ~~> Word[0x0011ff6c]
       0     1393        M 0x80002608 ret                            #; ra  = 0x800028cc, goto 0x800028cc
       0     1406        M 0x800028cc lw      a0, 0(sp)              #; sp  = 0x0011ff4c, a0  <~~ Word[0x0011ff4c]
       0     1409        M                                           #; (lsu) a0  <-- 0
       0     1410        M 0x800028d0 lw      a1, 4(sp)              #; sp  = 0x0011ff4c, a1  <~~ Word[0x0011ff50]
       0     1413        M                                           #; (lsu) a1  <-- 8
       0     1414        M 0x800028d4 lw      a2, 8(sp)              #; sp  = 0x0011ff4c, a2  <~~ Word[0x0011ff54]
       0     1417        M                                           #; (lsu) a2  <-- 0x00100000
       0     1418        M 0x800028d8 lw      a3, 12(sp)             #; sp  = 0x0011ff4c, a3  <~~ Word[0x0011ff58]
       0     1421        M                                           #; (lsu) a3  <-- 0x0011df30
       0     1422        M 0x800028dc lw      a4, 16(sp)             #; sp  = 0x0011ff4c, a4  <~~ Word[0x0011ff5c]
       0     1423        M 0x800028e0 addi    sp, sp, 20             #; sp  = 0x0011ff4c, (wrb) sp  <-- 0x0011ff60
       0     1424        M 0x800028e4 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800028e4
       0     1425        M 0x800028e8 addi    t0, t0, 60             #; t0  = 0x800028e4, (wrb) t0  <-- 0x80002920
       0     1426        M 0x800028ec csrw    mtvec, t0              #; t0  = 0x80002920, (lsu) a4  <-- 4132
       0     1434        M 0x800028f0 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800028f0
       0     1435        M 0x800028f4 jalr    ra, ra, 544            #; ra  = 0x800028f0, (wrb) ra  <-- 0x800028f8, goto 0x80002b10
       0     1451        M 0x80002b10 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
       0     1452        M 0x80002b14 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x800028f8 ~~> Word[0x0011ff5c]
       0     1453        M 0x80002b18 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002b18
       0     1454        M 0x80002b1c jalr    ra, ra, -1260          #; ra  = 0x80002b18, (wrb) ra  <-- 0x80002b20, goto 0x8000262c
       0     1472        M 0x8000262c lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1484        M 0x80002630 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1485        M 0x80002634 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     1488        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1489        M 0x80002638 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1493        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1494        M 0x8000263c lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
       0     1496        M 0x80002640 ret                            #; ra  = 0x80002b20, goto 0x80002b20
       0     1497        M                                           #; (lsu) a0  <-- 0x00120190
       0     1498        M 0x80002b20 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
       0     1527        M                                           #; (lsu) a0  <-- 0
       0     1528        M 0x80002b24 mv      zero, a0               #; a0  = 0
       0     1529        M 0x80002b28 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
       0     1530        M 0x80002b2c addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
       0     1532        M                                           #; (lsu) ra  <-- 0x800028f8
       0     1533        M 0x80002b30 ret                            #; ra  = 0x800028f8, goto 0x800028f8
       0     1537        M 0x800028f8 auipc   ra, 0xffffe            #; (wrb) ra  <-- 0x800008f8
       0     1538        M 0x800028fc jalr    ra, ra, -708           #; ra  = 0x800008f8, (wrb) ra  <-- 0x80002900, goto 0x80000634
       0     1543        M 0x80000634 addi    sp, sp, -32            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff40
       0     1544        M 0x80000638 sw      ra, 28(sp)             #; sp  = 0x0011ff40, 0x80002900 ~~> Word[0x0011ff5c]
       0     1547        M 0x8000063c fsd     fs0, 16(sp)            #; 0.0 ~~> Doub[0x0011ff50]
       0     1550        M 0x80000640 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1551        M 0x80000644 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1552        M 0x80000648 lw      a1, 4(a0)              #; a0  = 0x0011ff60, a1  <~~ Word[0x0011ff64]
       0     1553        M 0x8000064c li      a0, 0                  #; (wrb) a0  <-- 0
       0     1555        M                                           #; (lsu) a1  <-- 0
       0     1562        M 0x80000650 bnez    a1, pc + 496           #; a1  = 0, not taken
       0     1563        M 0x80000654 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1564        M 0x80000658 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1565        M 0x8000065c lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     1568        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1574        M 0x80000660 lw      a2, 0(a0)              #; a0  = 0x0011ff70, a2  <~~ Word[0x0011ff70]
       0     1577        M                                           #; (lsu) a2  <-- 0x0011ff70
       0     1578        M 0x80000664 lw      a0, 88(a2)             #; a2  = 0x0011ff70, a0  <~~ Word[0x0011ffc8]
       0     1581        M                                           #; (lsu) a0  <-- 0x00100000
       0     1582        M 0x80000668 lw      a1, 80(a2)             #; a2  = 0x0011ff70, a1  <~~ Word[0x0011ffc0]
       0     1585        M                                           #; (lsu) a1  <-- 0x00100000
       0     1586        M 0x8000066c lw      a3, 84(a2)             #; a2  = 0x0011ff70, a3  <~~ Word[0x0011ffc4]
       0     1589        M                                           #; (lsu) a3  <-- 0x0001df30
       0     1590        M 0x80000670 addi    a4, a0, 80             #; a0  = 0x00100000, (wrb) a4  <-- 0x00100050
       0     1591        M 0x80000674 add     a3, a3, a1             #; a3  = 0x0001df30, a1  = 0x00100000, (wrb) a3  <-- 0x0011df30
       0     1592        M 0x80000678 bgeu    a3, a4, pc + 24        #; a3  = 0x0011df30, a4  = 0x00100050, taken, goto 0x80000690
       0     1623        M 0x80000690 mv      a1, a0                 #; a0  = 0x00100000, (wrb) a1  <-- 0x00100000
       0     1624        M 0x80000694 sw      a4, 88(a2)             #; a2  = 0x0011ff70, 0x00100050 ~~> Word[0x0011ffc8]
       0     1625        M 0x80000698 addi    a5, a0, 160            #; a0  = 0x00100000, (wrb) a5  <-- 0x001000a0
       0     1626        M 0x8000069c mv      a0, a4                 #; a4  = 0x00100050, (wrb) a0  <-- 0x00100050
       0     1639        M 0x800006a0 bgeu    a3, a5, pc - 24        #; a3  = 0x0011df30, a5  = 0x001000a0, taken, goto 0x80000688
       0     1640        M 0x80000688 sw      a5, 88(a2)             #; a2  = 0x0011ff70, 0x001000a0 ~~> Word[0x0011ffc8]
       0     1641        M 0x8000068c j       pc + 0x1c              #; goto 0x800006a8
       0     1642        M 0x800006a8 sw      zero, 4(a1)            #; a1  = 0x00100000, 0 ~~> Word[0x00100004]
       0     1643        M 0x800006ac sw      zero, 0(a1)            #; a1  = 0x00100000, 0 ~~> Word[0x00100000]
       0     1654        M 0x800006b0 lui     a6, 0x3ff00            #; (wrb) a6  <-- 0x3ff00000
       0     1655        M 0x800006b4 sw      a6, 12(a1)             #; a1  = 0x00100000, 0x3ff00000 ~~> Word[0x0010000c]
       0     1656        M 0x800006b8 sw      zero, 8(a1)            #; a1  = 0x00100000, 0 ~~> Word[0x00100008]
       0     1657        M 0x800006bc lui     a7, 0x40000            #; (wrb) a7  <-- 0x40000000
       0     1666        M 0x800006c0 sw      a7, 20(a1)             #; a1  = 0x00100000, 0x40000000 ~~> Word[0x00100014]
       0     1667        M 0x800006c4 sw      zero, 16(a1)           #; a1  = 0x00100000, 0 ~~> Word[0x00100010]
       0     1668        M 0x800006c8 lui     t0, 0x40080            #; (wrb) t0  <-- 0x40080000
       0     1669        M 0x800006cc sw      t0, 28(a1)             #; a1  = 0x00100000, 0x40080000 ~~> Word[0x0010001c]
       0     1678        M 0x800006d0 sw      zero, 24(a1)           #; a1  = 0x00100000, 0 ~~> Word[0x00100018]
       0     1679        M 0x800006d4 lui     t1, 0x40100            #; (wrb) t1  <-- 0x40100000
       0     1680        M 0x800006d8 sw      t1, 36(a1)             #; a1  = 0x00100000, 0x40100000 ~~> Word[0x00100024]
       0     1681        M 0x800006dc sw      zero, 32(a1)           #; a1  = 0x00100000, 0 ~~> Word[0x00100020]
       0     1690        M 0x800006e0 lui     t2, 0x40140            #; (wrb) t2  <-- 0x40140000
       0     1691        M 0x800006e4 sw      t2, 44(a1)             #; a1  = 0x00100000, 0x40140000 ~~> Word[0x0010002c]
       0     1692        M 0x800006e8 sw      zero, 40(a1)           #; a1  = 0x00100000, 0 ~~> Word[0x00100028]
       0     1693        M 0x800006ec lui     a3, 0x40180            #; (wrb) a3  <-- 0x40180000
       0     1702        M 0x800006f0 sw      a3, 52(a1)             #; a1  = 0x00100000, 0x40180000 ~~> Word[0x00100034]
       0     1703        M 0x800006f4 sw      zero, 48(a1)           #; a1  = 0x00100000, 0 ~~> Word[0x00100030]
       0     1704        M 0x800006f8 lui     a4, 0x401c0            #; (wrb) a4  <-- 0x401c0000
       0     1705        M 0x800006fc sw      a4, 60(a1)             #; a1  = 0x00100000, 0x401c0000 ~~> Word[0x0010003c]
       0     1714        M 0x80000700 sw      zero, 56(a1)           #; a1  = 0x00100000, 0 ~~> Word[0x00100038]
       0     1715        M 0x80000704 lui     a5, 0x40200            #; (wrb) a5  <-- 0x40200000
       0     1716        M 0x80000708 sw      a5, 68(a1)             #; a1  = 0x00100000, 0x40200000 ~~> Word[0x00100044]
       0     1717        M 0x8000070c sw      zero, 64(a1)           #; a1  = 0x00100000, 0 ~~> Word[0x00100040]
       0     1726        M 0x80000710 sw      zero, 72(a1)           #; a1  = 0x00100000, 0 ~~> Word[0x00100048]
       0     1727        M 0x80000714 lui     a2, 0x40220            #; (wrb) a2  <-- 0x40220000
       0     1728        M 0x80000718 sw      a2, 76(a1)             #; a1  = 0x00100000, 0x40220000 ~~> Word[0x0010004c]
       0     1729        M 0x8000071c sw      zero, 0(a0)            #; a0  = 0x00100050, 0 ~~> Word[0x00100050]
       0     1738        M 0x80000720 sw      zero, 4(a0)            #; a0  = 0x00100050, 0 ~~> Word[0x00100054]
       0     1739        M 0x80000724 sw      zero, 8(a0)            #; a0  = 0x00100050, 0 ~~> Word[0x00100058]
       0     1740        M 0x80000728 sw      a6, 12(a0)             #; a0  = 0x00100050, 0x3ff00000 ~~> Word[0x0010005c]
       0     1741        M 0x8000072c sw      zero, 16(a0)           #; a0  = 0x00100050, 0 ~~> Word[0x00100060]
       0     1750        M 0x80000730 sw      a7, 20(a0)             #; a0  = 0x00100050, 0x40000000 ~~> Word[0x00100064]
       0     1751        M 0x80000734 sw      zero, 24(a0)           #; a0  = 0x00100050, 0 ~~> Word[0x00100068]
       0     1752        M 0x80000738 sw      t0, 28(a0)             #; a0  = 0x00100050, 0x40080000 ~~> Word[0x0010006c]
       0     1753        M 0x8000073c sw      zero, 32(a0)           #; a0  = 0x00100050, 0 ~~> Word[0x00100070]
       0     1762        M 0x80000740 sw      t1, 36(a0)             #; a0  = 0x00100050, 0x40100000 ~~> Word[0x00100074]
       0     1763        M 0x80000744 sw      zero, 40(a0)           #; a0  = 0x00100050, 0 ~~> Word[0x00100078]
       0     1764        M 0x80000748 sw      t2, 44(a0)             #; a0  = 0x00100050, 0x40140000 ~~> Word[0x0010007c]
       0     1765        M 0x8000074c sw      zero, 48(a0)           #; a0  = 0x00100050, 0 ~~> Word[0x00100080]
       0     1774        M 0x80000750 sw      a3, 52(a0)             #; a0  = 0x00100050, 0x40180000 ~~> Word[0x00100084]
       0     1775        M 0x80000754 sw      zero, 56(a0)           #; a0  = 0x00100050, 0 ~~> Word[0x00100088]
       0     1776        M 0x80000758 sw      a4, 60(a0)             #; a0  = 0x00100050, 0x401c0000 ~~> Word[0x0010008c]
       0     1777        M 0x8000075c sw      zero, 64(a0)           #; a0  = 0x00100050, 0 ~~> Word[0x00100090]
       0     1786        M 0x80000760 sw      a5, 68(a0)             #; a0  = 0x00100050, 0x40200000 ~~> Word[0x00100094]
       0     1787        M 0x80000764 sw      zero, 72(a0)           #; a0  = 0x00100050, 0 ~~> Word[0x00100098]
       0     1788        M 0x80000768 sw      a2, 76(a0)             #; a0  = 0x00100050, 0x40220000 ~~> Word[0x0010009c]
       0     1789        M 0x8000076c csrr    a2, mcycle             #; mcycle = 1788, (wrb) a2  <-- 1788
       0     1800        M 0x80000770 fld     ft0, 0(a1)             #; ft0  <~~ Doub[0x00100000]
       0     1801        M 0x80000774 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x00100050], (f:lsu) ft0  <-- 0.0
       0     1802        M 0x80000778 fld     ft2, 8(a1)             #; ft2  <~~ Doub[0x00100008], (f:lsu) ft1  <-- 0.0
       0     1803        M 0x8000077c fld     ft3, 8(a0)             #; ft3  <~~ Doub[0x00100058], (f:lsu) ft2  <-- 1.0
       0     1804        M                                           #; (f:lsu) ft3  <-- 1.0
       0     1812        M 0x80000780 fmul.d  ft0, ft1, ft0          #; ft1  = 0.0, ft0  = 0.0
       0     1815        M                                           #; (f:fpu) ft0  <-- 0.0
       0     1816        M 0x80000784 fmadd.d ft0, ft3, ft2, ft0     #; ft3  = 1.0, ft2  = 1.0, ft0  = 0.0
       0     1817        M 0x80000788 fld     ft1, 16(a1)            #; ft1  <~~ Doub[0x00100010]
       0     1818        M 0x8000078c fld     ft2, 16(a0)            #; ft2  <~~ Doub[0x00100060], (f:lsu) ft1  <-- 2.0
       0     1819        M                                           #; (f:fpu) ft0  <-- 1.0
       0     1820        M                                           #; (f:lsu) ft2  <-- 2.0
       0     1824        M 0x80000790 fld     ft3, 24(a1)            #; ft3  <~~ Doub[0x00100018]
       0     1825        M 0x80000794 fld     ft4, 24(a0)            #; ft4  <~~ Doub[0x00100068], (f:lsu) ft3  <-- 3.0
       0     1826        M 0x80000798 fld     ft5, 32(a1)            #; ft5  <~~ Doub[0x00100020], (f:lsu) ft4  <-- 3.0
       0     1827        M 0x8000079c fld     ft6, 32(a0)            #; ft6  <~~ Doub[0x00100070], (f:lsu) ft5  <-- 4.0
       0     1828        M                                           #; (f:lsu) ft6  <-- 4.0
       0     1836        M 0x800007a0 fld     ft7, 40(a1)            #; ft7  <~~ Doub[0x00100028]
       0     1837        M 0x800007a4 fld     fa0, 40(a0)            #; fa0  <~~ Doub[0x00100078], (f:lsu) ft7  <-- 5.0
       0     1838        M 0x800007a8 fmadd.d ft0, ft2, ft1, ft0     #; ft2  = 2.0, ft1  = 2.0, ft0  = 1.0, (f:lsu) fa0  <-- 5.0
       0     1841        M                                           #; (f:fpu) ft0  <-- 5.0
       0     1842        M 0x800007ac fmadd.d ft0, ft4, ft3, ft0     #; ft4  = 3.0, ft3  = 3.0, ft0  = 5.0
       0     1845        M                                           #; (f:fpu) ft0  <-- 14.0
       0     1848        M 0x800007b0 fmadd.d ft0, ft6, ft5, ft0     #; ft6  = 4.0, ft5  = 4.0, ft0  = 14.0
       0     1851        M                                           #; (f:fpu) ft0  <-- 30.0
       0     1852        M 0x800007b4 fmadd.d ft0, fa0, ft7, ft0     #; fa0  = 5.0, ft7  = 5.0, ft0  = 30.0
       0     1853        M 0x800007b8 fld     ft1, 48(a1)            #; ft1  <~~ Doub[0x00100030]
       0     1854        M 0x800007bc fld     ft2, 48(a0)            #; ft2  <~~ Doub[0x00100080], (f:lsu) ft1  <-- 6.0
       0     1855        M                                           #; (f:fpu) ft0  <-- 55.0
       0     1856        M                                           #; (f:lsu) ft2  <-- 6.0
       0     1860        M 0x800007c0 fld     ft3, 56(a1)            #; ft3  <~~ Doub[0x00100038]
       0     1861        M 0x800007c4 fld     ft4, 56(a0)            #; ft4  <~~ Doub[0x00100088], (f:lsu) ft3  <-- 7.0
       0     1862        M 0x800007c8 fld     ft5, 64(a1)            #; ft5  <~~ Doub[0x00100040], (f:lsu) ft4  <-- 7.0
       0     1863        M 0x800007cc fld     ft6, 64(a0)            #; ft6  <~~ Doub[0x00100090], (f:lsu) ft5  <-- 8.0
       0     1864        M                                           #; (f:lsu) ft6  <-- 8.0
       0     1872        M 0x800007d0 fld     ft7, 72(a1)            #; ft7  <~~ Doub[0x00100048]
       0     1873        M 0x800007d4 fld     fa0, 72(a0)            #; fa0  <~~ Doub[0x00100098], (f:lsu) ft7  <-- 9.0
       0     1874        M 0x800007d8 fmadd.d ft0, ft2, ft1, ft0     #; ft2  = 6.0, ft1  = 6.0, ft0  = 55.0, (f:lsu) fa0  <-- 9.0
       0     1877        M                                           #; (f:fpu) ft0  <-- 91.0
       0     1878        M 0x800007dc fmadd.d ft0, ft4, ft3, ft0     #; ft4  = 7.0, ft3  = 7.0, ft0  = 91.0
       0     1881        M                                           #; (f:fpu) ft0  <-- 140.0
       0     1884        M 0x800007e8 csrr    a0, mcycle             #; mcycle = 1883, (wrb) a0  <-- 1883
                         M 0x800007e0 fmadd.d ft0, ft6, ft5, ft0     #; ft6  = 8.0, ft5  = 8.0, ft0  = 140.0
       0     1885        M 0x800007ec sub     a1, a0, a2             #; a0  = 1883, a2  = 1788, (wrb) a1  <-- 95
       0     1887        M                                           #; (f:fpu) ft0  <-- 204.0
       0     1888        M 0x800007e4 fmadd.d fs0, fa0, ft7, ft0     #; fa0  = 9.0, ft7  = 9.0, ft0  = 204.0
       0     1891        M                                           #; (f:fpu) fs0  <-- 285.0
       0     1894        M 0x800007f0 auipc   a0, 0x2                #; (wrb) a0  <-- 0x800027f0
       0     1895        M 0x800007f4 addi    a0, a0, 917            #; a0  = 0x800027f0, (wrb) a0  <-- 0x80002b85
       0     1896        M 0x800007f8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800007f8
       0     1897        M 0x800007fc jalr    ra, ra, 88             #; ra  = 0x800007f8, (wrb) ra  <-- 0x80000800, goto 0x80000850
       0     1908        M 0x80000850 addi    sp, sp, -48            #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff10
       0     1909        M 0x80000854 sw      ra, 12(sp)             #; sp  = 0x0011ff10, 0x80000800 ~~> Word[0x0011ff1c]
       0     1910        M 0x80000858 mv      t0, a0                 #; a0  = 0x80002b85, (wrb) t0  <-- 0x80002b85
       0     1911        M 0x8000085c sw      a7, 44(sp)             #; sp  = 0x0011ff10, 0x40000000 ~~> Word[0x0011ff3c]
       0     1920        M 0x80000860 sw      a6, 40(sp)             #; sp  = 0x0011ff10, 0x3ff00000 ~~> Word[0x0011ff38]
       0     1921        M 0x80000864 sw      a5, 36(sp)             #; sp  = 0x0011ff10, 0x40200000 ~~> Word[0x0011ff34]
       0     1922        M 0x80000868 sw      a4, 32(sp)             #; sp  = 0x0011ff10, 0x401c0000 ~~> Word[0x0011ff30]
       0     1923        M 0x8000086c sw      a3, 28(sp)             #; sp  = 0x0011ff10, 0x40180000 ~~> Word[0x0011ff2c]
       0     1932        M 0x80000870 sw      a2, 24(sp)             #; sp  = 0x0011ff10, 1788 ~~> Word[0x0011ff28]
       0     1933        M 0x80000874 sw      a1, 20(sp)             #; sp  = 0x0011ff10, 95 ~~> Word[0x0011ff24]
       0     1934        M 0x80000878 addi    a0, sp, 20             #; sp  = 0x0011ff10, (wrb) a0  <-- 0x0011ff24
       0     1935        M 0x8000087c sw      a0, 8(sp)              #; sp  = 0x0011ff10, 0x0011ff24 ~~> Word[0x0011ff18]
       0     1944        M 0x80000880 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80001880
       0     1945        M 0x80000884 addi    a0, a0, -988           #; a0  = 0x80001880, (wrb) a0  <-- 0x800014a4
       0     1946        M 0x80000888 addi    a1, sp, 7              #; sp  = 0x0011ff10, (wrb) a1  <-- 0x0011ff17
       0     1947        M 0x8000088c li      a2, -1                 #; (wrb) a2  <-- -1
       0     1956        M 0x80000890 addi    a4, sp, 20             #; sp  = 0x0011ff10, (wrb) a4  <-- 0x0011ff24
       0     1957        M 0x80000894 mv      a3, t0                 #; t0  = 0x80002b85, (wrb) a3  <-- 0x80002b85
       0     1958        M 0x80000898 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000898
       0     1959        M 0x8000089c jalr    ra, ra, 20             #; ra  = 0x80000898, (wrb) ra  <-- 0x800008a0, goto 0x800008ac
       0     1968        M 0x800008ac addi    sp, sp, -112           #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011fea0
       0     1980        M 0x800008b0 sw      ra, 108(sp)            #; sp  = 0x0011fea0, 0x800008a0 ~~> Word[0x0011ff0c]
       0     1981        M 0x800008b4 sw      s0, 104(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff08]
       0     1982        M 0x800008b8 sw      s1, 100(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff04]
       0     1983        M 0x800008bc sw      s2, 96(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff00]
       0     1992        M 0x800008c0 sw      s3, 92(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fefc]
       0     1993        M 0x800008c4 sw      s4, 88(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef8]
       0     1994        M 0x800008c8 sw      s5, 84(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef4]
       0     1995        M 0x800008cc sw      s6, 80(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef0]
       0     2004        M 0x800008d0 sw      s7, 76(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011feec]
       0     2005        M 0x800008d4 sw      s8, 72(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee8]
       0     2006        M 0x800008d8 sw      s9, 68(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee4]
       0     2007        M 0x800008dc sw      s10, 64(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee0]
       0     2016        M 0x800008e0 sw      s11, 60(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fedc]
       0     2017        M 0x800008e4 mv      s3, a4                 #; a4  = 0x0011ff24, (wrb) s3  <-- 0x0011ff24
       0     2018        M 0x800008e8 mv      s0, a3                 #; a3  = 0x80002b85, (wrb) s0  <-- 0x80002b85
       0     2019        M 0x800008ec mv      s5, a2                 #; a2  = -1, (wrb) s5  <-- -1
       0     2028        M 0x800008f0 mv      s4, a1                 #; a1  = 0x0011ff17, (wrb) s4  <-- 0x0011ff17
       0     2029        M 0x800008f4 beqz    a1, pc + 12            #; a1  = 0x0011ff17, not taken
       0     2030        M 0x800008f8 mv      s2, a0                 #; a0  = 0x800014a4, (wrb) s2  <-- 0x800014a4
       0     2031        M 0x800008fc j       pc + 0xc               #; goto 0x80000908
       0     2040        M 0x80000908 li      s8, 0                  #; (wrb) s8  <-- 0
       0     2041        M 0x8000090c li      s6, 37                 #; (wrb) s6  <-- 37
       0     2052        M 0x80000910 li      s11, 16                #; (wrb) s11 <-- 16
       0     2053        M 0x80000914 li      s7, 46                 #; (wrb) s7  <-- 46
       0     2054        M 0x80000918 lui     a0, 0x1                #; (wrb) a0  <-- 4096
       0     2055        M 0x8000091c addi    a0, a0, -2048          #; a0  = 4096, (wrb) a0  <-- 2048
       0     2064        M 0x80000920 sw      a0, 24(sp)             #; sp  = 0x0011fea0, 2048 ~~> Word[0x0011feb8]
       0     2065        M 0x80000924 lui     a0, 0x10               #; (wrb) a0  <-- 0x00010000
       0     2066        M 0x80000928 addi    a0, a0, -1             #; a0  = 0x00010000, (wrb) a0  <-- 65535
       0     2067        M 0x8000092c sw      a0, 16(sp)             #; sp  = 0x0011fea0, 65535 ~~> Word[0x0011feb0]
       0     2076        M 0x80000930 addi    s10, s0, 2             #; s0  = 0x80002b85, (wrb) s10 <-- 0x80002b87
       0     2077        M 0x80000934 mv      s9, s8                 #; s8  = 0, (wrb) s9  <-- 0
       0     2078        M 0x80000938 li      s8, 10                 #; (wrb) s8  <-- 10
       0     2079        M 0x8000093c lbu     a0, 0(s0)              #; s0  = 0x80002b85, a0  <~~ Byte[0x80002b85]
       0     2090        M                                           #; (lsu) a0  <-- 99
       0     2091        M 0x80000940 beqz    a0, pc + 2824          #; a0  = 99, not taken
       0     2092        M 0x80000944 beq     a0, s6, pc + 48        #; a0  = 99, s6  = 37, not taken
       0     2093        M 0x80000948 addi    s1, s9, 1              #; s9  = 0, (wrb) s1  <-- 1
       0     2094        M 0x8000094c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     2100        M 0x80000950 mv      a2, s9                 #; s9  = 0, (wrb) a2  <-- 0
       0     2101        M 0x80000954 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2102        M 0x80000958 jalr    s2                     #; s2  = 0x800014a4, (wrb) ra  <-- 0x8000095c, goto 0x800014a4
       0     2123        M 0x800014a4 beqz    a0, pc + 168           #; a0  = 99, not taken
       0     2124        M 0x800014a8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2125        M 0x800014ac li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2135        M 0x800014b0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2136        M 0x800014b4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800034b4
       0     2137        M 0x800014b8 addi    a3, a3, -1504          #; a3  = 0x800034b4, (wrb) a3  <-- 0x80002ed4
       0     2138        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2139        M 0x800014bc add     a1, a2, a3             #; a2  = 0, a3  = 0x80002ed4, (wrb) a1  <-- 0x80002ed4
       0     2147        M 0x800014c0 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
       0     2158        M                                           #; (lsu) a4  <-- 0
       0     2159        M 0x800014c4 addi    a5, a4, 1              #; a4  = 0, (wrb) a5  <-- 1
       0     2160        M 0x800014c8 sw      a5, 0(a1)              #; a1  = 0x80002ed4, 1 ~~> Word[0x80002ed4]
       0     2161        M 0x800014cc add     a4, a1, a4             #; a1  = 0x80002ed4, a4  = 0, (wrb) a4  <-- 0x80002ed4
       0     2162        M 0x800014d0 sb      a0, 72(a4)             #; a4  = 0x80002ed4, 99 ~~> Byte[0x80002f1c]
       0     2163        M 0x800014d4 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
       0     2184        M                                           #; (lsu) a4  <-- 1
       0     2185        M 0x800014d8 addi    a4, a4, -1020          #; a4  = 1, (wrb) a4  <-- -1019
       0     2186        M 0x800014dc snez    a4, a4                 #; a4  = -1019, (wrb) a4  <-- 1
       0     2187        M 0x800014e0 addi    a0, a0, -10            #; a0  = 99, (wrb) a0  <-- 89
       0     2188        M 0x800014e4 snez    a0, a0                 #; a0  = 89, (wrb) a0  <-- 1
       0     2189        M 0x800014e8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2190        M 0x800014ec bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000154c
       0     2210        M 0x8000154c ret                            #; ra  = 0x8000095c, goto 0x8000095c
       0     2224        M 0x8000095c addi    s0, s0, 1              #; s0  = 0x80002b85, (wrb) s0  <-- 0x80002b86
       0     2227        M 0x80000960 addi    s10, s10, 1            #; s10 = 0x80002b87, (wrb) s10 <-- 0x80002b88
       0     2228        M 0x80000964 mv      s9, s1                 #; s1  = 1, (wrb) s9  <-- 1
       0     2229        M 0x80000968 lbu     a0, 0(s0)              #; s0  = 0x80002b86, a0  <~~ Byte[0x80002b86]
       0     2240        M                                           #; (lsu) a0  <-- 121
       0     2241        M 0x8000096c bnez    a0, pc - 40            #; a0  = 121, taken, goto 0x80000944
       0     2242        M 0x80000944 beq     a0, s6, pc + 48        #; a0  = 121, s6  = 37, not taken
       0     2243        M 0x80000948 addi    s1, s9, 1              #; s9  = 1, (wrb) s1  <-- 2
       0     2244        M 0x8000094c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     2245        M 0x80000950 mv      a2, s9                 #; s9  = 1, (wrb) a2  <-- 1
       0     2246        M 0x80000954 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2247        M 0x80000958 jalr    s2                     #; s2  = 0x800014a4, (wrb) ra  <-- 0x8000095c, goto 0x800014a4
       0     2250        M 0x800014a4 beqz    a0, pc + 168           #; a0  = 121, not taken
       0     2251        M 0x800014a8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2252        M 0x800014ac li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2253        M 0x800014b0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2254        M 0x800014b4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800034b4
       0     2255        M 0x800014b8 addi    a3, a3, -1504          #; a3  = 0x800034b4, (wrb) a3  <-- 0x80002ed4
       0     2256        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2257        M 0x800014bc add     a1, a2, a3             #; a2  = 0, a3  = 0x80002ed4, (wrb) a1  <-- 0x80002ed4
       0     2258        M 0x800014c0 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
       0     2269        M                                           #; (lsu) a4  <-- 1
       0     2270        M 0x800014c4 addi    a5, a4, 1              #; a4  = 1, (wrb) a5  <-- 2
       0     2271        M 0x800014c8 sw      a5, 0(a1)              #; a1  = 0x80002ed4, 2 ~~> Word[0x80002ed4]
       0     2272        M 0x800014cc add     a4, a1, a4             #; a1  = 0x80002ed4, a4  = 1, (wrb) a4  <-- 0x80002ed5
       0     2273        M 0x800014d0 sb      a0, 72(a4)             #; a4  = 0x80002ed5, 121 ~~> Byte[0x80002f1d]
       0     2274        M 0x800014d4 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
       0     2295        M                                           #; (lsu) a4  <-- 2
       0     2296        M 0x800014d8 addi    a4, a4, -1020          #; a4  = 2, (wrb) a4  <-- -1018
       0     2297        M 0x800014dc snez    a4, a4                 #; a4  = -1018, (wrb) a4  <-- 1
       0     2298        M 0x800014e0 addi    a0, a0, -10            #; a0  = 121, (wrb) a0  <-- 111
       0     2299        M 0x800014e4 snez    a0, a0                 #; a0  = 111, (wrb) a0  <-- 1
       0     2300        M 0x800014e8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2301        M 0x800014ec bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000154c
       0     2304        M 0x8000154c ret                            #; ra  = 0x8000095c, goto 0x8000095c
       0     2309        M 0x8000095c addi    s0, s0, 1              #; s0  = 0x80002b86, (wrb) s0  <-- 0x80002b87
       0     2312        M 0x80000960 addi    s10, s10, 1            #; s10 = 0x80002b88, (wrb) s10 <-- 0x80002b89
       0     2313        M 0x80000964 mv      s9, s1                 #; s1  = 2, (wrb) s9  <-- 2
       0     2314        M 0x80000968 lbu     a0, 0(s0)              #; s0  = 0x80002b87, a0  <~~ Byte[0x80002b87]
       0     2325        M                                           #; (lsu) a0  <-- 99
       0     2326        M 0x8000096c bnez    a0, pc - 40            #; a0  = 99, taken, goto 0x80000944
       0     2327        M 0x80000944 beq     a0, s6, pc + 48        #; a0  = 99, s6  = 37, not taken
       0     2328        M 0x80000948 addi    s1, s9, 1              #; s9  = 2, (wrb) s1  <-- 3
       0     2329        M 0x8000094c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     2330        M 0x80000950 mv      a2, s9                 #; s9  = 2, (wrb) a2  <-- 2
       0     2331        M 0x80000954 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2332        M 0x80000958 jalr    s2                     #; s2  = 0x800014a4, (wrb) ra  <-- 0x8000095c, goto 0x800014a4
       0     2335        M 0x800014a4 beqz    a0, pc + 168           #; a0  = 99, not taken
       0     2336        M 0x800014a8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2337        M 0x800014ac li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2338        M 0x800014b0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2339        M 0x800014b4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800034b4
       0     2340        M 0x800014b8 addi    a3, a3, -1504          #; a3  = 0x800034b4, (wrb) a3  <-- 0x80002ed4
       0     2341        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2342        M 0x800014bc add     a1, a2, a3             #; a2  = 0, a3  = 0x80002ed4, (wrb) a1  <-- 0x80002ed4
       0     2343        M 0x800014c0 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
       0     2354        M                                           #; (lsu) a4  <-- 2
       0     2355        M 0x800014c4 addi    a5, a4, 1              #; a4  = 2, (wrb) a5  <-- 3
       0     2356        M 0x800014c8 sw      a5, 0(a1)              #; a1  = 0x80002ed4, 3 ~~> Word[0x80002ed4]
       0     2357        M 0x800014cc add     a4, a1, a4             #; a1  = 0x80002ed4, a4  = 2, (wrb) a4  <-- 0x80002ed6
       0     2358        M 0x800014d0 sb      a0, 72(a4)             #; a4  = 0x80002ed6, 99 ~~> Byte[0x80002f1e]
       0     2359        M 0x800014d4 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
       0     2380        M                                           #; (lsu) a4  <-- 3
       0     2381        M 0x800014d8 addi    a4, a4, -1020          #; a4  = 3, (wrb) a4  <-- -1017
       0     2382        M 0x800014dc snez    a4, a4                 #; a4  = -1017, (wrb) a4  <-- 1
       0     2383        M 0x800014e0 addi    a0, a0, -10            #; a0  = 99, (wrb) a0  <-- 89
       0     2384        M 0x800014e4 snez    a0, a0                 #; a0  = 89, (wrb) a0  <-- 1
       0     2385        M 0x800014e8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2386        M 0x800014ec bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000154c
       0     2389        M 0x8000154c ret                            #; ra  = 0x8000095c, goto 0x8000095c
       0     2394        M 0x8000095c addi    s0, s0, 1              #; s0  = 0x80002b87, (wrb) s0  <-- 0x80002b88
       0     2397        M 0x80000960 addi    s10, s10, 1            #; s10 = 0x80002b89, (wrb) s10 <-- 0x80002b8a
       0     2398        M 0x80000964 mv      s9, s1                 #; s1  = 3, (wrb) s9  <-- 3
       0     2399        M 0x80000968 lbu     a0, 0(s0)              #; s0  = 0x80002b88, a0  <~~ Byte[0x80002b88]
       0     2410        M                                           #; (lsu) a0  <-- 108
       0     2411        M 0x8000096c bnez    a0, pc - 40            #; a0  = 108, taken, goto 0x80000944
       0     2412        M 0x80000944 beq     a0, s6, pc + 48        #; a0  = 108, s6  = 37, not taken
       0     2413        M 0x80000948 addi    s1, s9, 1              #; s9  = 3, (wrb) s1  <-- 4
       0     2414        M 0x8000094c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     2415        M 0x80000950 mv      a2, s9                 #; s9  = 3, (wrb) a2  <-- 3
       0     2416        M 0x80000954 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2417        M 0x80000958 jalr    s2                     #; s2  = 0x800014a4, (wrb) ra  <-- 0x8000095c, goto 0x800014a4
       0     2420        M 0x800014a4 beqz    a0, pc + 168           #; a0  = 108, not taken
       0     2421        M 0x800014a8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2422        M 0x800014ac li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2423        M 0x800014b0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2424        M 0x800014b4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800034b4
       0     2425        M 0x800014b8 addi    a3, a3, -1504          #; a3  = 0x800034b4, (wrb) a3  <-- 0x80002ed4
       0     2426        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2427        M 0x800014bc add     a1, a2, a3             #; a2  = 0, a3  = 0x80002ed4, (wrb) a1  <-- 0x80002ed4
       0     2428        M 0x800014c0 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
       0     2439        M                                           #; (lsu) a4  <-- 3
       0     2440        M 0x800014c4 addi    a5, a4, 1              #; a4  = 3, (wrb) a5  <-- 4
       0     2441        M 0x800014c8 sw      a5, 0(a1)              #; a1  = 0x80002ed4, 4 ~~> Word[0x80002ed4]
       0     2442        M 0x800014cc add     a4, a1, a4             #; a1  = 0x80002ed4, a4  = 3, (wrb) a4  <-- 0x80002ed7
       0     2443        M 0x800014d0 sb      a0, 72(a4)             #; a4  = 0x80002ed7, 108 ~~> Byte[0x80002f1f]
       0     2444        M 0x800014d4 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
       0     2465        M                                           #; (lsu) a4  <-- 4
       0     2466        M 0x800014d8 addi    a4, a4, -1020          #; a4  = 4, (wrb) a4  <-- -1016
       0     2467        M 0x800014dc snez    a4, a4                 #; a4  = -1016, (wrb) a4  <-- 1
       0     2468        M 0x800014e0 addi    a0, a0, -10            #; a0  = 108, (wrb) a0  <-- 98
       0     2469        M 0x800014e4 snez    a0, a0                 #; a0  = 98, (wrb) a0  <-- 1
       0     2470        M 0x800014e8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2471        M 0x800014ec bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000154c
       0     2474        M 0x8000154c ret                            #; ra  = 0x8000095c, goto 0x8000095c
       0     2479        M 0x8000095c addi    s0, s0, 1              #; s0  = 0x80002b88, (wrb) s0  <-- 0x80002b89
       0     2482        M 0x80000960 addi    s10, s10, 1            #; s10 = 0x80002b8a, (wrb) s10 <-- 0x80002b8b
       0     2483        M 0x80000964 mv      s9, s1                 #; s1  = 4, (wrb) s9  <-- 4
       0     2484        M 0x80000968 lbu     a0, 0(s0)              #; s0  = 0x80002b89, a0  <~~ Byte[0x80002b89]
       0     2495        M                                           #; (lsu) a0  <-- 101
       0     2496        M 0x8000096c bnez    a0, pc - 40            #; a0  = 101, taken, goto 0x80000944
       0     2497        M 0x80000944 beq     a0, s6, pc + 48        #; a0  = 101, s6  = 37, not taken
       0     2498        M 0x80000948 addi    s1, s9, 1              #; s9  = 4, (wrb) s1  <-- 5
       0     2499        M 0x8000094c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     2500        M 0x80000950 mv      a2, s9                 #; s9  = 4, (wrb) a2  <-- 4
       0     2501        M 0x80000954 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2502        M 0x80000958 jalr    s2                     #; s2  = 0x800014a4, (wrb) ra  <-- 0x8000095c, goto 0x800014a4
       0     2505        M 0x800014a4 beqz    a0, pc + 168           #; a0  = 101, not taken
       0     2506        M 0x800014a8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2507        M 0x800014ac li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2508        M 0x800014b0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2509        M 0x800014b4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800034b4
       0     2510        M 0x800014b8 addi    a3, a3, -1504          #; a3  = 0x800034b4, (wrb) a3  <-- 0x80002ed4
       0     2511        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2512        M 0x800014bc add     a1, a2, a3             #; a2  = 0, a3  = 0x80002ed4, (wrb) a1  <-- 0x80002ed4
       0     2513        M 0x800014c0 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
       0     2524        M                                           #; (lsu) a4  <-- 4
       0     2525        M 0x800014c4 addi    a5, a4, 1              #; a4  = 4, (wrb) a5  <-- 5
       0     2526        M 0x800014c8 sw      a5, 0(a1)              #; a1  = 0x80002ed4, 5 ~~> Word[0x80002ed4]
       0     2527        M 0x800014cc add     a4, a1, a4             #; a1  = 0x80002ed4, a4  = 4, (wrb) a4  <-- 0x80002ed8
       0     2528        M 0x800014d0 sb      a0, 72(a4)             #; a4  = 0x80002ed8, 101 ~~> Byte[0x80002f20]
       0     2529        M 0x800014d4 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
       0     2550        M                                           #; (lsu) a4  <-- 5
       0     2551        M 0x800014d8 addi    a4, a4, -1020          #; a4  = 5, (wrb) a4  <-- -1015
       0     2552        M 0x800014dc snez    a4, a4                 #; a4  = -1015, (wrb) a4  <-- 1
       0     2553        M 0x800014e0 addi    a0, a0, -10            #; a0  = 101, (wrb) a0  <-- 91
       0     2554        M 0x800014e4 snez    a0, a0                 #; a0  = 91, (wrb) a0  <-- 1
       0     2555        M 0x800014e8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2556        M 0x800014ec bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000154c
       0     2559        M 0x8000154c ret                            #; ra  = 0x8000095c, goto 0x8000095c
       0     2564        M 0x8000095c addi    s0, s0, 1              #; s0  = 0x80002b89, (wrb) s0  <-- 0x80002b8a
       0     2567        M 0x80000960 addi    s10, s10, 1            #; s10 = 0x80002b8b, (wrb) s10 <-- 0x80002b8c
       0     2568        M 0x80000964 mv      s9, s1                 #; s1  = 5, (wrb) s9  <-- 5
       0     2569        M 0x80000968 lbu     a0, 0(s0)              #; s0  = 0x80002b8a, a0  <~~ Byte[0x80002b8a]
       0     2580        M                                           #; (lsu) a0  <-- 115
       0     2581        M 0x8000096c bnez    a0, pc - 40            #; a0  = 115, taken, goto 0x80000944
       0     2582        M 0x80000944 beq     a0, s6, pc + 48        #; a0  = 115, s6  = 37, not taken
       0     2583        M 0x80000948 addi    s1, s9, 1              #; s9  = 5, (wrb) s1  <-- 6
       0     2584        M 0x8000094c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     2585        M 0x80000950 mv      a2, s9                 #; s9  = 5, (wrb) a2  <-- 5
       0     2586        M 0x80000954 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2587        M 0x80000958 jalr    s2                     #; s2  = 0x800014a4, (wrb) ra  <-- 0x8000095c, goto 0x800014a4
       0     2590        M 0x800014a4 beqz    a0, pc + 168           #; a0  = 115, not taken
       0     2591        M 0x800014a8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2592        M 0x800014ac li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2593        M 0x800014b0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2594        M 0x800014b4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800034b4
       0     2595        M 0x800014b8 addi    a3, a3, -1504          #; a3  = 0x800034b4, (wrb) a3  <-- 0x80002ed4
       0     2596        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2597        M 0x800014bc add     a1, a2, a3             #; a2  = 0, a3  = 0x80002ed4, (wrb) a1  <-- 0x80002ed4
       0     2598        M 0x800014c0 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
       0     2609        M                                           #; (lsu) a4  <-- 5
       0     2610        M 0x800014c4 addi    a5, a4, 1              #; a4  = 5, (wrb) a5  <-- 6
       0     2611        M 0x800014c8 sw      a5, 0(a1)              #; a1  = 0x80002ed4, 6 ~~> Word[0x80002ed4]
       0     2612        M 0x800014cc add     a4, a1, a4             #; a1  = 0x80002ed4, a4  = 5, (wrb) a4  <-- 0x80002ed9
       0     2613        M 0x800014d0 sb      a0, 72(a4)             #; a4  = 0x80002ed9, 115 ~~> Byte[0x80002f21]
       0     2614        M 0x800014d4 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
       0     2635        M                                           #; (lsu) a4  <-- 6
       0     2636        M 0x800014d8 addi    a4, a4, -1020          #; a4  = 6, (wrb) a4  <-- -1014
       0     2637        M 0x800014dc snez    a4, a4                 #; a4  = -1014, (wrb) a4  <-- 1
       0     2638        M 0x800014e0 addi    a0, a0, -10            #; a0  = 115, (wrb) a0  <-- 105
       0     2639        M 0x800014e4 snez    a0, a0                 #; a0  = 105, (wrb) a0  <-- 1
       0     2640        M 0x800014e8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2641        M 0x800014ec bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000154c
       0     2644        M 0x8000154c ret                            #; ra  = 0x8000095c, goto 0x8000095c
       0     2649        M 0x8000095c addi    s0, s0, 1              #; s0  = 0x80002b8a, (wrb) s0  <-- 0x80002b8b
       0     2652        M 0x80000960 addi    s10, s10, 1            #; s10 = 0x80002b8c, (wrb) s10 <-- 0x80002b8d
       0     2653        M 0x80000964 mv      s9, s1                 #; s1  = 6, (wrb) s9  <-- 6
       0     2654        M 0x80000968 lbu     a0, 0(s0)              #; s0  = 0x80002b8b, a0  <~~ Byte[0x80002b8b]
       0     2665        M                                           #; (lsu) a0  <-- 32
       0     2666        M 0x8000096c bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000944
       0     2667        M 0x80000944 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     2668        M 0x80000948 addi    s1, s9, 1              #; s9  = 6, (wrb) s1  <-- 7
       0     2669        M 0x8000094c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     2670        M 0x80000950 mv      a2, s9                 #; s9  = 6, (wrb) a2  <-- 6
       0     2671        M 0x80000954 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2672        M 0x80000958 jalr    s2                     #; s2  = 0x800014a4, (wrb) ra  <-- 0x8000095c, goto 0x800014a4
       0     2675        M 0x800014a4 beqz    a0, pc + 168           #; a0  = 32, not taken
       0     2676        M 0x800014a8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2677        M 0x800014ac li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2678        M 0x800014b0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2679        M 0x800014b4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800034b4
       0     2680        M 0x800014b8 addi    a3, a3, -1504          #; a3  = 0x800034b4, (wrb) a3  <-- 0x80002ed4
       0     2681        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2682        M 0x800014bc add     a1, a2, a3             #; a2  = 0, a3  = 0x80002ed4, (wrb) a1  <-- 0x80002ed4
       0     2683        M 0x800014c0 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
       0     2694        M                                           #; (lsu) a4  <-- 6
       0     2695        M 0x800014c4 addi    a5, a4, 1              #; a4  = 6, (wrb) a5  <-- 7
       0     2696        M 0x800014c8 sw      a5, 0(a1)              #; a1  = 0x80002ed4, 7 ~~> Word[0x80002ed4]
       0     2697        M 0x800014cc add     a4, a1, a4             #; a1  = 0x80002ed4, a4  = 6, (wrb) a4  <-- 0x80002eda
       0     2698        M 0x800014d0 sb      a0, 72(a4)             #; a4  = 0x80002eda, 32 ~~> Byte[0x80002f22]
       0     2699        M 0x800014d4 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
       0     2720        M                                           #; (lsu) a4  <-- 7
       0     2721        M 0x800014d8 addi    a4, a4, -1020          #; a4  = 7, (wrb) a4  <-- -1013
       0     2722        M 0x800014dc snez    a4, a4                 #; a4  = -1013, (wrb) a4  <-- 1
       0     2723        M 0x800014e0 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
       0     2724        M 0x800014e4 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
       0     2725        M 0x800014e8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2726        M 0x800014ec bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000154c
       0     2729        M 0x8000154c ret                            #; ra  = 0x8000095c, goto 0x8000095c
       0     2734        M 0x8000095c addi    s0, s0, 1              #; s0  = 0x80002b8b, (wrb) s0  <-- 0x80002b8c
       0     2737        M 0x80000960 addi    s10, s10, 1            #; s10 = 0x80002b8d, (wrb) s10 <-- 0x80002b8e
       0     2738        M 0x80000964 mv      s9, s1                 #; s1  = 7, (wrb) s9  <-- 7
       0     2739        M 0x80000968 lbu     a0, 0(s0)              #; s0  = 0x80002b8c, a0  <~~ Byte[0x80002b8c]
       0     2750        M                                           #; (lsu) a0  <-- 61
       0     2751        M 0x8000096c bnez    a0, pc - 40            #; a0  = 61, taken, goto 0x80000944
       0     2752        M 0x80000944 beq     a0, s6, pc + 48        #; a0  = 61, s6  = 37, not taken
       0     2753        M 0x80000948 addi    s1, s9, 1              #; s9  = 7, (wrb) s1  <-- 8
       0     2754        M 0x8000094c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     2755        M 0x80000950 mv      a2, s9                 #; s9  = 7, (wrb) a2  <-- 7
       0     2756        M 0x80000954 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2757        M 0x80000958 jalr    s2                     #; s2  = 0x800014a4, (wrb) ra  <-- 0x8000095c, goto 0x800014a4
       0     2760        M 0x800014a4 beqz    a0, pc + 168           #; a0  = 61, not taken
       0     2761        M 0x800014a8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2762        M 0x800014ac li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2763        M 0x800014b0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2764        M 0x800014b4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800034b4
       0     2765        M 0x800014b8 addi    a3, a3, -1504          #; a3  = 0x800034b4, (wrb) a3  <-- 0x80002ed4
       0     2766        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2767        M 0x800014bc add     a1, a2, a3             #; a2  = 0, a3  = 0x80002ed4, (wrb) a1  <-- 0x80002ed4
       0     2768        M 0x800014c0 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
       0     2779        M                                           #; (lsu) a4  <-- 7
       0     2780        M 0x800014c4 addi    a5, a4, 1              #; a4  = 7, (wrb) a5  <-- 8
       0     2781        M 0x800014c8 sw      a5, 0(a1)              #; a1  = 0x80002ed4, 8 ~~> Word[0x80002ed4]
       0     2782        M 0x800014cc add     a4, a1, a4             #; a1  = 0x80002ed4, a4  = 7, (wrb) a4  <-- 0x80002edb
       0     2783        M 0x800014d0 sb      a0, 72(a4)             #; a4  = 0x80002edb, 61 ~~> Byte[0x80002f23]
       0     2784        M 0x800014d4 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
       0     2805        M                                           #; (lsu) a4  <-- 8
       0     2806        M 0x800014d8 addi    a4, a4, -1020          #; a4  = 8, (wrb) a4  <-- -1012
       0     2807        M 0x800014dc snez    a4, a4                 #; a4  = -1012, (wrb) a4  <-- 1
       0     2808        M 0x800014e0 addi    a0, a0, -10            #; a0  = 61, (wrb) a0  <-- 51
       0     2809        M 0x800014e4 snez    a0, a0                 #; a0  = 51, (wrb) a0  <-- 1
       0     2810        M 0x800014e8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2811        M 0x800014ec bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000154c
       0     2814        M 0x8000154c ret                            #; ra  = 0x8000095c, goto 0x8000095c
       0     2819        M 0x8000095c addi    s0, s0, 1              #; s0  = 0x80002b8c, (wrb) s0  <-- 0x80002b8d
       0     2822        M 0x80000960 addi    s10, s10, 1            #; s10 = 0x80002b8e, (wrb) s10 <-- 0x80002b8f
       0     2823        M 0x80000964 mv      s9, s1                 #; s1  = 8, (wrb) s9  <-- 8
       0     2824        M 0x80000968 lbu     a0, 0(s0)              #; s0  = 0x80002b8d, a0  <~~ Byte[0x80002b8d]
       0     2835        M                                           #; (lsu) a0  <-- 32
       0     2836        M 0x8000096c bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000944
       0     2837        M 0x80000944 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     2838        M 0x80000948 addi    s1, s9, 1              #; s9  = 8, (wrb) s1  <-- 9
       0     2839        M 0x8000094c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     2840        M 0x80000950 mv      a2, s9                 #; s9  = 8, (wrb) a2  <-- 8
       0     2841        M 0x80000954 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2842        M 0x80000958 jalr    s2                     #; s2  = 0x800014a4, (wrb) ra  <-- 0x8000095c, goto 0x800014a4
       0     2845        M 0x800014a4 beqz    a0, pc + 168           #; a0  = 32, not taken
       0     2846        M 0x800014a8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2847        M 0x800014ac li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2848        M 0x800014b0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2849        M 0x800014b4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800034b4
       0     2850        M 0x800014b8 addi    a3, a3, -1504          #; a3  = 0x800034b4, (wrb) a3  <-- 0x80002ed4
       0     2851        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2852        M 0x800014bc add     a1, a2, a3             #; a2  = 0, a3  = 0x80002ed4, (wrb) a1  <-- 0x80002ed4
       0     2853        M 0x800014c0 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
       0     2864        M                                           #; (lsu) a4  <-- 8
       0     2865        M 0x800014c4 addi    a5, a4, 1              #; a4  = 8, (wrb) a5  <-- 9
       0     2866        M 0x800014c8 sw      a5, 0(a1)              #; a1  = 0x80002ed4, 9 ~~> Word[0x80002ed4]
       0     2867        M 0x800014cc add     a4, a1, a4             #; a1  = 0x80002ed4, a4  = 8, (wrb) a4  <-- 0x80002edc
       0     2868        M 0x800014d0 sb      a0, 72(a4)             #; a4  = 0x80002edc, 32 ~~> Byte[0x80002f24]
       0     2869        M 0x800014d4 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
       0     2890        M                                           #; (lsu) a4  <-- 9
       0     2891        M 0x800014d8 addi    a4, a4, -1020          #; a4  = 9, (wrb) a4  <-- -1011
       0     2892        M 0x800014dc snez    a4, a4                 #; a4  = -1011, (wrb) a4  <-- 1
       0     2893        M 0x800014e0 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
       0     2894        M 0x800014e4 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
       0     2895        M 0x800014e8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2896        M 0x800014ec bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000154c
       0     2899        M 0x8000154c ret                            #; ra  = 0x8000095c, goto 0x8000095c
       0     2904        M 0x8000095c addi    s0, s0, 1              #; s0  = 0x80002b8d, (wrb) s0  <-- 0x80002b8e
       0     2907        M 0x80000960 addi    s10, s10, 1            #; s10 = 0x80002b8f, (wrb) s10 <-- 0x80002b90
       0     2908        M 0x80000964 mv      s9, s1                 #; s1  = 9, (wrb) s9  <-- 9
       0     2909        M 0x80000968 lbu     a0, 0(s0)              #; s0  = 0x80002b8e, a0  <~~ Byte[0x80002b8e]
       0     2920        M                                           #; (lsu) a0  <-- 37
       0     2921        M 0x8000096c bnez    a0, pc - 40            #; a0  = 37, taken, goto 0x80000944
       0     2922        M 0x80000944 beq     a0, s6, pc + 48        #; a0  = 37, s6  = 37, taken, goto 0x80000974
       0     2934        M 0x80000974 li      s0, 0                  #; (wrb) s0  <-- 0
       0     2935        M 0x80000978 j       pc + 0x10              #; goto 0x80000988
       0     2946        M 0x80000988 lbu     a0, -1(s10)            #; s10 = 0x80002b90, a0  <~~ Byte[0x80002b8f]
       0     2957        M                                           #; (lsu) a0  <-- 102
       0     2958        M 0x8000098c addi    a1, a0, -32            #; a0  = 102, (wrb) a1  <-- 70
       0     2959        M 0x80000990 bltu    s11, a1, pc + 56       #; s11 = 16, a1  = 70, taken, goto 0x800009c8
       0     2982        M 0x800009c8 addi    a1, a0, -48            #; a0  = 102, (wrb) a1  <-- 54
       0     2983        M 0x800009cc andi    a2, a1, 255            #; a1  = 54, (wrb) a2  <-- 54
       0     2994        M 0x800009d0 addi    a1, s10, -1            #; s10 = 0x80002b90, (wrb) a1  <-- 0x80002b8f
       0     2995        M 0x800009d4 li      a3, 9                  #; (wrb) a3  <-- 9
       0     2996        M 0x800009d8 bltu    a3, a2, pc + 124       #; a3  = 9, a2  = 54, taken, goto 0x80000a54
       0     3017        M 0x80000a54 li      a2, 42                 #; (wrb) a2  <-- 42
       0     3018        M 0x80000a58 bne     a0, a2, pc + 80        #; a0  = 102, a2  = 42, taken, goto 0x80000aa8
       0     3040        M 0x80000aa8 li      s6, 0                  #; (wrb) s6  <-- 0
       0     3041        M 0x80000aac mv      s10, a1                #; a1  = 0x80002b8f, (wrb) s10 <-- 0x80002b8f
       0     3052        M 0x80000ab0 beq     a0, s7, pc - 164       #; a0  = 102, s7  = 46, not taken
       0     3053        M 0x80000ab4 li      s7, 0                  #; (wrb) s7  <-- 0
       0     3054        M 0x80000ab8 j       pc + 0xc               #; goto 0x80000ac4
       0     3075        M 0x80000ac4 addi    a1, a0, -104           #; a0  = 102, (wrb) a1  <-- -2
       0     3076        M 0x80000ac8 srli    a2, a1, 1              #; a1  = -2, (wrb) a2  <-- 0x7fffffff
       0     3077        M 0x80000acc slli    a1, a1, 31             #; a1  = -2, (wrb) a1  <-- 0
       0     3087        M 0x80000ad0 or      a1, a1, a2             #; a1  = 0, a2  = 0x7fffffff, (wrb) a1  <-- 0x7fffffff
       0     3088        M 0x80000ad4 li      a2, 9                  #; (wrb) a2  <-- 9
       0     3089        M 0x80000ad8 bltu    a2, a1, pc + 100       #; a2  = 9, a1  = 0x7fffffff, taken, goto 0x80000b3c
       0     3110        M 0x80000b3c addi    a1, a0, -37            #; a0  = 102, (wrb) a1  <-- 65
       0     3122        M 0x80000b40 li      a2, 83                 #; (wrb) a2  <-- 83
       0     3123        M 0x80000b44 bltu    a2, a1, pc + 264       #; a2  = 83, a1  = 65, not taken
       0     3124        M 0x80000b48 slli    a1, a1, 2              #; a1  = 65, (wrb) a1  <-- 260
       0     3125        M 0x80000b4c auipc   a2, 0x2                #; (wrb) a2  <-- 0x80002b4c
       0     3134        M 0x80000b50 addi    a2, a2, 196            #; a2  = 0x80002b4c, (wrb) a2  <-- 0x80002c10
       0     3135        M 0x80000b54 add     a1, a1, a2             #; a1  = 260, a2  = 0x80002c10, (wrb) a1  <-- 0x80002d14
       0     3136        M 0x80000b58 lw      a2, 0(a1)              #; a1  = 0x80002d14, a2  <~~ Word[0x80002d14]
       0     3137        M 0x80000b5c li      a1, 8                  #; (wrb) a1  <-- 8
       0     3146        M 0x80000b60 li      s8, 16                 #; (wrb) s8  <-- 16
       0     3147        M                                           #; (lsu) a2  <-- 0x80000b94
       0     3148        M 0x80000b64 jr      a2                     #; a2  = 0x80000b94, goto 0x80000b94
       0     3169        M 0x80000b94 li      a1, 70                 #; (wrb) a1  <-- 70
       0     3170        M 0x80000b98 bne     a0, a1, pc + 8         #; a0  = 102, a1  = 70, taken, goto 0x80000ba0
       0     3181        M 0x80000ba0 addi    a0, s3, 7              #; s3  = 0x0011ff24, (wrb) a0  <-- 0x0011ff2b
       0     3182        M 0x80000ba4 andi    a0, a0, -8             #; a0  = 0x0011ff2b, (wrb) a0  <-- 0x0011ff28
       0     3184        M 0x80000bac addi    s3, a0, 8              #; a0  = 0x0011ff28, (wrb) s3  <-- 0x0011ff30
       0     3185        M 0x80000ba8 fld     fa0, 0(a0)             #; fa0  <~~ Doub[0x0011ff28]
       0     3186        M                                           #; (f:lsu) fa0  <-- 6.0000000
       0     3193        M 0x80000bb0 mv      a0, s2                 #; s2  = 0x800014a4, (wrb) a0  <-- 0x800014a4
       0     3194        M 0x80000bb4 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     3195        M 0x80000bb8 mv      a2, s9                 #; s9  = 9, (wrb) a2  <-- 9
       0     3196        M 0x80000bbc mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3205        M 0x80000bc0 mv      a4, s7                 #; s7  = 0, (wrb) a4  <-- 0
       0     3206        M 0x80000bc4 mv      a5, s6                 #; s6  = 0, (wrb) a5  <-- 0
       0     3207        M 0x80000bc8 mv      a6, s0                 #; s0  = 0, (wrb) a6  <-- 0
       0     3208        M 0x80000bcc auipc   ra, 0x1                #; (wrb) ra  <-- 0x80001bcc
       0     3217        M 0x80000bd0 jalr    ra, ra, -1656          #; ra  = 0x80001bcc, (wrb) ra  <-- 0x80000bd4, goto 0x80001554
       0     3231        M 0x80001554 addi    sp, sp, -112           #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011fe30
       0     3232        M 0x80001558 sw      ra, 108(sp)            #; sp  = 0x0011fe30, 0x80000bd4 ~~> Word[0x0011fe9c]
       0     3233        M 0x8000155c sw      s0, 104(sp)            #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe98]
       0     3243        M 0x80001560 sw      s1, 100(sp)            #; sp  = 0x0011fe30, 9 ~~> Word[0x0011fe94]
       0     3244        M 0x80001564 sw      s2, 96(sp)             #; sp  = 0x0011fe30, 0x800014a4 ~~> Word[0x0011fe90]
       0     3245        M 0x80001568 sw      s3, 92(sp)             #; sp  = 0x0011fe30, 0x0011ff30 ~~> Word[0x0011fe8c]
       0     3246        M 0x8000156c sw      s4, 88(sp)             #; sp  = 0x0011fe30, 0x0011ff17 ~~> Word[0x0011fe88]
       0     3255        M 0x80001570 sw      s5, 84(sp)             #; sp  = 0x0011fe30, -1 ~~> Word[0x0011fe84]
       0     3256        M 0x80001574 sw      s6, 80(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe80]
       0     3257        M 0x80001578 sw      s7, 76(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe7c]
       0     3258        M 0x8000157c sw      s8, 72(sp)             #; sp  = 0x0011fe30, 16 ~~> Word[0x0011fe78]
       0     3267        M 0x80001580 sw      s9, 68(sp)             #; sp  = 0x0011fe30, 9 ~~> Word[0x0011fe74]
       0     3268        M 0x80001584 sw      s10, 64(sp)            #; sp  = 0x0011fe30, 0x80002b8f ~~> Word[0x0011fe70]
       0     3271        M 0x80001588 fsd     fs0, 56(sp)            #; 285.0 ~~> Doub[0x0011fe68]
       0     3272        M 0x8000158c fsd     fs1, 48(sp)            #; 0.0 ~~> Doub[0x0011fe60]
       0     3280        M 0x80001594 auipc   s1, 0x2                #; (wrb) s1  <-- 0x80003594
       0     3281        M 0x80001598 addi    s1, s1, -1900          #; s1  = 0x80003594, (wrb) s1  <-- 0x80002e28
                         M 0x80001590 fsd     fs2, 40(sp)            #; 0.0 ~~> Doub[0x0011fe58]
       0     3284        M 0x8000159c fld     ft0, 0(s1)             #; ft0  <~~ Doub[0x80002e28]
       0     3292        M 0x800015a4 mv      s5, a6                 #; a6  = 0, (wrb) s5  <-- 0
       0     3293        M 0x800015a8 mv      s2, a5                 #; a5  = 0, (wrb) s2  <-- 0
                         M                                           #; (f:lsu) ft0  <-- -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     3294        M 0x800015ac mv      s3, a3                 #; a3  = -1, (wrb) s3  <-- -1
                         M 0x800015a0 fle.d   s1, ft0, fa0           #; ft0  = -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000, fa0  = 6.0000000
       0     3303        M 0x800015b0 mv      s4, a2                 #; a2  = 9, (wrb) s4  <-- 9
       0     3304        M 0x800015b4 mv      s6, a1                 #; a1  = 0x0011ff17, (wrb) s6  <-- 0x0011ff17
       0     3305        M 0x800015b8 mv      s7, a0                 #; a0  = 0x800014a4, (wrb) s7  <-- 0x800014a4
       0     3306        M 0x800015bc bnez    s1, pc + 240           #; s1  = 1, taken, goto 0x800016ac
       0     3328        M 0x800016ac fsgnj.d fs0, fa0, fa0          #; fa0  = 6.0000000, fa0  = 6.0000000
       0     3329        M                                           #; (f:fpu) fs0  <-- 6.0000000
       0     3338        M 0x800016b0 auipc   a0, 0x1                #; (wrb) a0  <-- 0x800026b0
       0     3339        M 0x800016b4 addi    a0, a0, 1920           #; a0  = 0x800026b0, (wrb) a0  <-- 0x80002e30
       0     3342        M 0x800016b8 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002e30]
       0     3351        M                                           #; (f:lsu) ft0  <-- 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     3352        M 0x800016bc fle.d   a0, fa0, ft0           #; fa0  = 6.0000000, ft0  = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     3354        M                                           #; (acc) t3  <-- 0x00051e63
       0     3355        M 0x800016c0 bnez    a0, pc + 28            #; a0  = 1, taken, goto 0x800016dc
       0     3362        M 0x800016dc auipc   a0, 0x1                #; (wrb) a0  <-- 0x800026dc
       0     3374        M 0x800016e0 addi    a0, a0, 1884           #; a0  = 0x800026dc, (wrb) a0  <-- 0x80002e38
       0     3376        M 0x800016e8 auipc   a0, 0x1                #; (wrb) a0  <-- 0x800026e8
       0     3377        M 0x800016ec addi    a0, a0, 1880           #; a0  = 0x800026e8, (wrb) a0  <-- 0x80002e40
                         M 0x800016e4 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002e38]
       0     3386        M                                           #; (f:lsu) ft0  <-- 1000000000.0000000
       0     3388        M 0x800016f0 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80002e40]
       0     3389        M 0x800016f4 fle.d   a0, fs0, ft0           #; fs0  = 6.0000000, ft0  = 1000000000.0000000
       0     3391        M                                           #; (acc) a0  <-- 0x00b57533
       0     3397        M                                           #; (f:lsu) ft1  <-- -1000000000.0000000
       0     3398        M 0x800016f8 fle.d   a1, ft1, fs0           #; ft1  = -1000000000.0000000, fs0  = 6.0000000
       0     3400        M                                           #; (acc) a0  <-- 0x00b57533
       0     3401        M 0x800016fc and     a0, a0, a1             #; a0  = 1, a1  = 1, (wrb) a0  <-- 1
       0     3402        M 0x80001700 bnez    a0, pc + 252           #; a0  = 1, taken, goto 0x800017fc
       0     3425        M 0x800017fc andi    a0, s5, 1024           #; s5  = 0, (wrb) a0  <-- 0
       0     3437        M 0x80001800 li      s8, 6                  #; (wrb) s8  <-- 6
       0     3438        M 0x80001804 beqz    a0, pc + 8             #; a0  = 0, taken, goto 0x8000180c
       0     3439        M 0x8000180c li      a0, 10                 #; (wrb) a0  <-- 10
       0     3450        M 0x80001814 bltu    s8, a0, pc + 56        #; s8  = 6, a0  = 10, taken, goto 0x8000184c
       0     3451        M 0x80001810 fsgnjx.d fs2, fs0, fs0         #; fs0  = 6.0000000, fs0  = 6.0000000
       0     3452        M                                           #; (f:fpu) fs2  <-- 6.0000000
       0     3472        M 0x8000184c li      s0, 0                  #; (wrb) s0  <-- 0
       0     3484        M 0x80001850 slli    a0, s8, 3              #; s8  = 6, (wrb) a0  <-- 48
       0     3485        M 0x80001854 auipc   a1, 0x1                #; (wrb) a1  <-- 0x80002854
       0     3486        M 0x80001858 addi    a1, a1, 1292           #; a1  = 0x80002854, (wrb) a1  <-- 0x80002d60
       0     3487        M 0x8000185c add     a0, a0, a1             #; a0  = 48, a1  = 0x80002d60, (wrb) a0  <-- 0x80002d90
       0     3498        M 0x80001860 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80002d90]
       0     3499        M 0x80001864 fcvt.w.d s1, fs2               #; fs2  = 6.0000000
       0     3503        M 0x80001868 fcvt.d.w ft0, s1               #; ac1  = 6
       0     3504        M                                           #; (f:fpu) ft0  <-- 6.0
       0     3505        M 0x8000186c fsub.d  ft0, fs2, ft0          #; fs2  = 6.0000000, ft0  = 6.0
       0     3507        M                                           #; (f:lsu) ft1  <-- 1000000.0000000
       0     3508        M                                           #; (f:fpu) ft0  <-- 0.0000000
       0     3509        M 0x80001874 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002874
       0     3510        M 0x80001878 addi    a0, a0, 1492           #; a0  = 0x80002874, (wrb) a0  <-- 0x80002e48
                         M 0x80001870 fmul.d  ft2, ft1, ft0          #; ft1  = 1000000.0000000, ft0  = 0.0000000
       0     3513        M 0x8000187c fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002e48], (f:fpu) ft2  <-- 0.0000016
       0     3521        M 0x80001880 fcvt.wu.d a0, ft2              #; ft2  = 0.0000016
       0     3522        M                                           #; (f:lsu) ft0  <-- 0.5
       0     3523        M                                           #; (acc) gp  <-- 0xd21501d3
       0     3525        M 0x80001884 fcvt.d.wu ft3, a0              #; ac1  = 0
       0     3526        M                                           #; (f:fpu) ft3  <-- 0.0
       0     3527        M 0x80001888 fsub.d  ft2, ft2, ft3          #; ft2  = 0.0000016, ft3  = 0.0
       0     3530        M                                           #; (f:fpu) ft2  <-- 0.0000016
       0     3531        M 0x8000188c fle.d   a1, ft2, ft0           #; ft2  = 0.0000016, ft0  = 0.5
       0     3534        M 0x80001890 bnez    a1, pc + 32            #; a1  = 1, taken, goto 0x800018b0
       0     3556        M 0x800018b0 flt.d   a1, ft2, ft0           #; ft2  = 0.0000016, ft0  = 0.5
       0     3558        M                                           #; (acc) s4  <-- 0x00059a63
       0     3559        M 0x800018b4 bnez    a1, pc + 20            #; a1  = 1, taken, goto 0x800018c8
       0     3568        M 0x800018cc beqz    s8, pc + 216           #; s8  = 6, not taken
                         M 0x800018c8 fcvt.d.w fs1, zero             #; ac1  = 0
       0     3569        M                                           #; (f:fpu) fs1  <-- 0.0
       0     3579        M 0x800018d0 li      a2, 0                  #; (wrb) a2  <-- 0
       0     3580        M 0x800018d4 addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
       0     3581        M 0x800018d8 add     t1, a1, s0             #; a1  = 0x0011fe38, s0  = 0, (wrb) t1  <-- 0x0011fe38
       0     3582        M 0x800018dc li      t0, 32                 #; (wrb) t0  <-- 32
       0     3591        M 0x800018e0 sub     a4, t0, s0             #; t0  = 32, s0  = 0, (wrb) a4  <-- 32
       0     3592        M 0x800018e4 lui     a1, 0xccccd            #; (wrb) a1  <-- 0xccccd000
       0     3593        M 0x800018e8 addi    t2, a1, -819           #; a1  = 0xccccd000, (wrb) t2  <-- 0xcccccccd
       0     3594        M 0x800018ec li      a6, 10                 #; (wrb) a6  <-- 10
       0     3603        M 0x800018f0 li      a7, 9                  #; (wrb) a7  <-- 9
       0     3604        M 0x800018f4 beq     a4, a2, pc + 200       #; a4  = 32, a2  = 0, not taken
       0     3605        M 0x800018f8 mv      a1, a0                 #; a0  = 0, (wrb) a1  <-- 0
       0     3606        M 0x800018fc mulhu   a0, a0, t2             #; a0  = 0, t2  = 0xcccccccd
       0     3615        M 0x80001900 srli    a0, a0, 3              #; a0  = 0, (wrb) a0  <-- 0
       0     3616        M 0x80001904 mul     a3, a0, a6             #; a0  = 0, a6  = 10
       0     3619        M                                           #; (acc) a3  <-- 0x40d586b3
       0     3620        M 0x80001908 sub     a3, a1, a3             #; a1  = 0, a3  = 0, (wrb) a3  <-- 0
       0     3621        M 0x8000190c ori     a3, a3, 48             #; a3  = 0, (wrb) a3  <-- 48
       0     3627        M 0x80001910 add     a5, t1, a2             #; t1  = 0x0011fe38, a2  = 0, (wrb) a5  <-- 0x0011fe38
       0     3628        M 0x80001914 sb      a3, 0(a5)              #; a5  = 0x0011fe38, 48 ~~> Byte[0x0011fe38]
       0     3629        M 0x80001918 addi    a2, a2, 1              #; a2  = 0, (wrb) a2  <-- 1
       0     3630        M 0x8000191c bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 0, not taken
       0     3642        M 0x80001920 add     a0, s0, a2             #; s0  = 0, a2  = 1, (wrb) a0  <-- 1
       0     3643        M 0x80001924 addi    a1, a0, -1             #; a0  = 1, (wrb) a1  <-- 0
       0     3644        M 0x80001928 li      a3, 30                 #; (wrb) a3  <-- 30
       0     3645        M 0x8000192c sltu    a3, a3, a1             #; a3  = 30, a1  = 0, (wrb) a3  <-- 0
       0     3654        M 0x80001930 xor     a4, s8, a2             #; s8  = 6, a2  = 1, (wrb) a4  <-- 7
       0     3655        M 0x80001934 seqz    a4, a4                 #; a4  = 7, (wrb) a4  <-- 0
       0     3656        M 0x80001938 or      a3, a3, a4             #; a3  = 0, a4  = 0, (wrb) a3  <-- 0
       0     3657        M 0x8000193c bnez    a3, pc + 136           #; a3  = 0, not taken
       0     3666        M 0x80001940 addi    a0, sp, 8              #; sp  = 0x0011fe30, (wrb) a0  <-- 0x0011fe38
       0     3667        M 0x80001944 add     a0, a0, s0             #; a0  = 0x0011fe38, s0  = 0, (wrb) a0  <-- 0x0011fe38
       0     3668        M 0x80001948 not     a1, a2                 #; a2  = 1, (wrb) a1  <-- -2
       0     3669        M 0x8000194c add     s8, a1, s8             #; a1  = -2, s8  = 6, (wrb) s8  <-- 4
       0     3678        M 0x80001950 add     s0, s0, a2             #; s0  = 0, a2  = 1, (wrb) s0  <-- 1
       0     3679        M 0x80001954 li      a1, 31                 #; (wrb) a1  <-- 31
       0     3680        M 0x80001958 sub     a3, a1, s0             #; a1  = 31, s0  = 1, (wrb) a3  <-- 30
       0     3681        M 0x8000195c add     a0, a0, a2             #; a0  = 0x0011fe38, a2  = 1, (wrb) a0  <-- 0x0011fe39
       0     3690        M 0x80001960 mv      a1, s8                 #; s8  = 4, (wrb) a1  <-- 4
       0     3691        M 0x80001964 bltu    s8, a3, pc + 8         #; s8  = 4, a3  = 30, taken, goto 0x8000196c
       0     3692        M 0x8000196c addi    a2, a1, 1              #; a1  = 4, (wrb) a2  <-- 5
       0     3702        M 0x80001970 li      a1, 48                 #; (wrb) a1  <-- 48
       0     3703        M 0x80001974 auipc   ra, 0xfffff            #; (wrb) ra  <-- 0x80000974
       0     3704        M 0x80001978 jalr    ra, ra, -1052          #; ra  = 0x80000974, (wrb) ra  <-- 0x8000197c, goto 0x80000558
       0     3725        M 0x80000558 li      t1, 15                 #; (wrb) t1  <-- 15
       0     3726        M 0x8000055c mv      a4, a0                 #; a0  = 0x0011fe39, (wrb) a4  <-- 0x0011fe39
       0     3737        M 0x80000560 bgeu    t1, a2, pc + 60        #; t1  = 15, a2  = 5, taken, goto 0x8000059c
       0     3760        M 0x8000059c sub     a3, t1, a2             #; t1  = 15, a2  = 5, (wrb) a3  <-- 10
       0     3772        M 0x800005a0 slli    a3, a3, 2              #; a3  = 10, (wrb) a3  <-- 40
       0     3773        M 0x800005a4 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800005a4
       0     3774        M 0x800005a8 add     a3, a3, t0             #; a3  = 40, t0  = 0x800005a4, (wrb) a3  <-- 0x800005cc
       0     3775        M 0x800005ac jalr    zero, a3, 12           #; a3  = 0x800005cc, goto 0x800005d8
       0     3795        M 0x800005d8 sb      a1, 4(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3d]
       0     3796        M 0x800005dc sb      a1, 3(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3c]
       0     3807        M 0x800005e0 sb      a1, 2(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3b]
       0     3808        M 0x800005e4 sb      a1, 1(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3a]
       0     3809        M 0x800005e8 sb      a1, 0(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe39]
       0     3810        M 0x800005ec ret                            #; ra  = 0x8000197c, goto 0x8000197c
       0     3821        M 0x8000197c li      a0, 0                  #; (wrb) a0  <-- 0
       0     3824        M 0x80001980 add     a1, s0, a0             #; s0  = 1, a0  = 0, (wrb) a1  <-- 1
       0     3825        M 0x80001984 sltiu   a1, a1, 31             #; a1  = 1, (wrb) a1  <-- 1
       0     3826        M 0x80001988 xor     a2, s8, a0             #; s8  = 4, a0  = 0, (wrb) a2  <-- 4
       0     3827        M 0x8000198c snez    a2, a2                 #; a2  = 4, (wrb) a2  <-- 1
       0     3836        M 0x80001990 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     3837        M 0x80001994 addi    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0     3838        M 0x80001998 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001980
       0     3839        M 0x80001980 add     a1, s0, a0             #; s0  = 1, a0  = 1, (wrb) a1  <-- 2
       0     3840        M 0x80001984 sltiu   a1, a1, 31             #; a1  = 2, (wrb) a1  <-- 1
       0     3841        M 0x80001988 xor     a2, s8, a0             #; s8  = 4, a0  = 1, (wrb) a2  <-- 5
       0     3842        M 0x8000198c snez    a2, a2                 #; a2  = 5, (wrb) a2  <-- 1
       0     3843        M 0x80001990 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     3844        M 0x80001994 addi    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 2
       0     3845        M 0x80001998 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001980
       0     3846        M 0x80001980 add     a1, s0, a0             #; s0  = 1, a0  = 2, (wrb) a1  <-- 3
       0     3847        M 0x80001984 sltiu   a1, a1, 31             #; a1  = 3, (wrb) a1  <-- 1
       0     3848        M 0x80001988 xor     a2, s8, a0             #; s8  = 4, a0  = 2, (wrb) a2  <-- 6
       0     3849        M 0x8000198c snez    a2, a2                 #; a2  = 6, (wrb) a2  <-- 1
       0     3850        M 0x80001990 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     3851        M 0x80001994 addi    a0, a0, 1              #; a0  = 2, (wrb) a0  <-- 3
       0     3852        M 0x80001998 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001980
       0     3853        M 0x80001980 add     a1, s0, a0             #; s0  = 1, a0  = 3, (wrb) a1  <-- 4
       0     3854        M 0x80001984 sltiu   a1, a1, 31             #; a1  = 4, (wrb) a1  <-- 1
       0     3855        M 0x80001988 xor     a2, s8, a0             #; s8  = 4, a0  = 3, (wrb) a2  <-- 7
       0     3856        M 0x8000198c snez    a2, a2                 #; a2  = 7, (wrb) a2  <-- 1
       0     3857        M 0x80001990 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     3858        M 0x80001994 addi    a0, a0, 1              #; a0  = 3, (wrb) a0  <-- 4
       0     3859        M 0x80001998 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001980
       0     3860        M 0x80001980 add     a1, s0, a0             #; s0  = 1, a0  = 4, (wrb) a1  <-- 5
       0     3861        M 0x80001984 sltiu   a1, a1, 31             #; a1  = 5, (wrb) a1  <-- 1
       0     3862        M 0x80001988 xor     a2, s8, a0             #; s8  = 4, a0  = 4, (wrb) a2  <-- 0
       0     3863        M 0x8000198c snez    a2, a2                 #; a2  = 0, (wrb) a2  <-- 0
       0     3864        M 0x80001990 and     a2, a1, a2             #; a1  = 1, a2  = 0, (wrb) a2  <-- 0
       0     3865        M 0x80001994 addi    a0, a0, 1              #; a0  = 4, (wrb) a0  <-- 5
       0     3866        M 0x80001998 bnez    a2, pc - 24            #; a2  = 0, not taken
       0     3867        M 0x8000199c add     a0, s0, a0             #; s0  = 1, a0  = 5, (wrb) a0  <-- 6
       0     3879        M 0x800019a0 j       pc + 0x28              #; goto 0x800019c8
       0     3891        M 0x800019c8 beqz    a1, pc + 28            #; a1  = 1, not taken
       0     3892        M 0x800019cc addi    s0, a0, 1              #; a0  = 6, (wrb) s0  <-- 7
       0     3903        M 0x800019d0 addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
       0     3904        M 0x800019d4 add     a0, a1, a0             #; a1  = 0x0011fe38, a0  = 6, (wrb) a0  <-- 0x0011fe3e
       0     3905        M 0x800019d8 li      a1, 46                 #; (wrb) a1  <-- 46
       0     3906        M 0x800019dc sb      a1, 0(a0)              #; a0  = 0x0011fe3e, 46 ~~> Byte[0x0011fe3e]
       0     3915        M 0x800019e0 j       pc + 0x8               #; goto 0x800019e8
       0     3916        M 0x800019e8 li      a0, 32                 #; (wrb) a0  <-- 32
       0     3917        M 0x800019ec mv      t0, s0                 #; s0  = 7, (wrb) t0  <-- 7
       0     3928        M 0x800019f0 bltu    a0, s0, pc + 8         #; a0  = 32, s0  = 7, not taken
       0     3929        M 0x800019f4 li      t0, 32                 #; (wrb) t0  <-- 32
       0     3931        M 0x800019fc lui     a0, 0x66666            #; (wrb) a0  <-- 0x66666000
                         M 0x800019f8 flt.d   s9, fs0, fs1           #; fs0  = 6.0000000, fs1  = 0.0
       0     3940        M 0x80001a00 addi    a1, a0, 1639           #; a0  = 0x66666000, (wrb) a1  <-- 0x66666667
       0     3941        M 0x80001a04 li      a6, 10                 #; (wrb) a6  <-- 10
       0     3942        M 0x80001a08 addi    a3, sp, 8              #; sp  = 0x0011fe30, (wrb) a3  <-- 0x0011fe38
       0     3943        M 0x80001a0c li      a4, 18                 #; (wrb) a4  <-- 18
       0     3952        M 0x80001a10 beq     t0, s0, pc + 64        #; t0  = 32, s0  = 7, not taken
       0     3953        M 0x80001a14 mulh    a0, s1, a1             #; s1  = 6, a1  = 0x66666667
       0     3956        M                                           #; (acc) a5  <-- 0x01f55793
       0     3957        M 0x80001a18 srli    a5, a0, 31             #; a0  = 2, (wrb) a5  <-- 0
       0     3958        M 0x80001a1c srai    a0, a0, 2              #; a0  = 2, (wrb) a0  <-- 0
       0     3964        M 0x80001a20 add     a0, a0, a5             #; a0  = 0, a5  = 0, (wrb) a0  <-- 0
       0     3965        M 0x80001a24 mul     a5, a0, a6             #; a0  = 0, a6  = 10
       0     3968        M                                           #; (acc) a5  <-- 0x40f487b3
       0     3969        M 0x80001a28 sub     a5, s1, a5             #; s1  = 6, a5  = 0, (wrb) a5  <-- 6
       0     3970        M 0x80001a2c addi    a5, a5, 48             #; a5  = 6, (wrb) a5  <-- 54
       0     3976        M 0x80001a30 addi    s8, s0, 1              #; s0  = 7, (wrb) s8  <-- 8
       0     3977        M 0x80001a34 add     s0, a3, s0             #; a3  = 0x0011fe38, s0  = 7, (wrb) s0  <-- 0x0011fe3f
       0     3978        M 0x80001a38 addi    a2, s1, 9              #; s1  = 6, (wrb) a2  <-- 15
       0     3979        M 0x80001a3c sb      a5, 0(s0)              #; s0  = 0x0011fe3f, 54 ~~> Byte[0x0011fe3f]
       0     3988        M 0x80001a40 mv      s0, s8                 #; s8  = 8, (wrb) s0  <-- 8
       0     3989        M 0x80001a44 mv      s1, a0                 #; a0  = 0, (wrb) s1  <-- 0
       0     3990        M 0x80001a48 bltu    a4, a2, pc - 56        #; a4  = 18, a2  = 15, not taken
       0     3991        M 0x80001a4c j       pc + 0x8               #; goto 0x80001a54
       0     4003        M 0x80001a54 andi    s1, s5, 3              #; s5  = 0, (wrb) s1  <-- 0
       0     4004        M 0x80001a58 li      a0, 1                  #; (wrb) a0  <-- 1
       0     4005        M 0x80001a5c bne     s1, a0, pc + 108       #; s1  = 0, a0  = 1, taken, goto 0x80001ac8
       0     4026        M 0x80001ac8 li      a0, 31                 #; (wrb) a0  <-- 31
       0     4027        M 0x80001acc bltu    a0, s8, pc + 84        #; a0  = 31, s8  = 8, not taken
       0     4038        M 0x80001ad0 beqz    s9, pc + 24            #; s9  = 0, taken, goto 0x80001ae8
       0     4050        M 0x80001ae8 andi    a0, s5, 4              #; s5  = 0, (wrb) a0  <-- 0
       0     4051        M 0x80001aec bnez    a0, pc + 32            #; a0  = 0, not taken
       0     4062        M 0x80001af0 andi    a0, s5, 8              #; s5  = 0, (wrb) a0  <-- 0
       0     4063        M 0x80001af4 beqz    a0, pc + 44            #; a0  = 0, taken, goto 0x80001b20
       0     4085        M 0x80001b20 snez    a0, s1                 #; s1  = 0, (wrb) a0  <-- 0
       0     4086        M 0x80001b24 sltu    a1, s8, s2             #; s8  = 8, s2  = 0, (wrb) a1  <-- 0
       0     4087        M 0x80001b28 xori    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
       0     4088        M 0x80001b2c or      a0, a0, a1             #; a0  = 0, a1  = 1, (wrb) a0  <-- 1
       0     4097        M 0x80001b30 andi    s5, s5, 2              #; s5  = 0, (wrb) s5  <-- 0
       0     4098        M 0x80001b34 mv      s0, s4                 #; s4  = 9, (wrb) s0  <-- 9
       0     4099        M 0x80001b38 bnez    a0, pc + 44            #; a0  = 1, taken, goto 0x80001b64
       0     4120        M 0x80001b64 srli    s5, s5, 1              #; s5  = 0, (wrb) s5  <-- 0
       0     4121        M 0x80001b68 beqz    s8, pc + 56            #; s8  = 8, not taken
       0     4122        M 0x80001b6c addi    s9, sp, 7              #; sp  = 0x0011fe30, (wrb) s9  <-- 0x0011fe37
       0     4132        M 0x80001b70 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 8, (wrb) a0  <-- 0x0011fe3f
       0     4133        M 0x80001b74 lbu     a0, 0(a0)              #; a0  = 0x0011fe3f, a0  <~~ Byte[0x0011fe3f]
       0     4134        M 0x80001b78 addi    s10, s8, -1            #; s8  = 8, (wrb) s10 <-- 7
       0     4135        M 0x80001b7c addi    s1, s0, 1              #; s0  = 9, (wrb) s1  <-- 10
       0     4136        M                                           #; (lsu) a0  <-- 54
       0     4144        M 0x80001b80 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4145        M 0x80001b84 mv      a2, s0                 #; s0  = 9, (wrb) a2  <-- 9
       0     4146        M 0x80001b88 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4147        M 0x80001b8c jalr    s7                     #; s7  = 0x800014a4, (wrb) ra  <-- 0x80001b90, goto 0x800014a4
       0     4158        M 0x800014a4 beqz    a0, pc + 168           #; a0  = 54, not taken
       0     4159        M 0x800014a8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4160        M 0x800014ac li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4161        M 0x800014b0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4162        M 0x800014b4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800034b4
       0     4163        M 0x800014b8 addi    a3, a3, -1504          #; a3  = 0x800034b4, (wrb) a3  <-- 0x80002ed4
       0     4164        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4165        M 0x800014bc add     a1, a2, a3             #; a2  = 0, a3  = 0x80002ed4, (wrb) a1  <-- 0x80002ed4
       0     4166        M 0x800014c0 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
       0     4177        M                                           #; (lsu) a4  <-- 9
       0     4178        M 0x800014c4 addi    a5, a4, 1              #; a4  = 9, (wrb) a5  <-- 10
       0     4179        M 0x800014c8 sw      a5, 0(a1)              #; a1  = 0x80002ed4, 10 ~~> Word[0x80002ed4]
       0     4180        M 0x800014cc add     a4, a1, a4             #; a1  = 0x80002ed4, a4  = 9, (wrb) a4  <-- 0x80002edd
       0     4181        M 0x800014d0 sb      a0, 72(a4)             #; a4  = 0x80002edd, 54 ~~> Byte[0x80002f25]
       0     4182        M 0x800014d4 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
       0     4203        M                                           #; (lsu) a4  <-- 10
       0     4204        M 0x800014d8 addi    a4, a4, -1020          #; a4  = 10, (wrb) a4  <-- -1010
       0     4205        M 0x800014dc snez    a4, a4                 #; a4  = -1010, (wrb) a4  <-- 1
       0     4206        M 0x800014e0 addi    a0, a0, -10            #; a0  = 54, (wrb) a0  <-- 44
       0     4207        M 0x800014e4 snez    a0, a0                 #; a0  = 44, (wrb) a0  <-- 1
       0     4208        M 0x800014e8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4209        M 0x800014ec bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000154c
       0     4212        M 0x8000154c ret                            #; ra  = 0x80001b90, goto 0x80001b90
       0     4217        M 0x80001b90 mv      s0, s1                 #; s1  = 10, (wrb) s0  <-- 10
       0     4218        M 0x80001b94 mv      s8, s10                #; s10 = 7, (wrb) s8  <-- 7
       0     4219        M 0x80001b98 bnez    s10, pc - 40           #; s10 = 7, taken, goto 0x80001b70
       0     4220        M 0x80001b70 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 7, (wrb) a0  <-- 0x0011fe3e
       0     4221        M 0x80001b74 lbu     a0, 0(a0)              #; a0  = 0x0011fe3e, a0  <~~ Byte[0x0011fe3e]
       0     4222        M 0x80001b78 addi    s10, s8, -1            #; s8  = 7, (wrb) s10 <-- 6
       0     4223        M 0x80001b7c addi    s1, s0, 1              #; s0  = 10, (wrb) s1  <-- 11
       0     4224        M 0x80001b80 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4225        M 0x80001b84 mv      a2, s0                 #; s0  = 10, (wrb) a2  <-- 10
       0     4226        M 0x80001b88 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4227        M 0x80001b8c jalr    s7                     #; s7  = 0x800014a4, (wrb) ra  <-- 0x80001b90, goto 0x800014a4
       0     4228        M                                           #; (lsu) a0  <-- 46
       0     4230        M 0x800014a4 beqz    a0, pc + 168           #; a0  = 46, not taken
       0     4231        M 0x800014a8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4232        M 0x800014ac li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4233        M 0x800014b0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4234        M 0x800014b4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800034b4
       0     4235        M 0x800014b8 addi    a3, a3, -1504          #; a3  = 0x800034b4, (wrb) a3  <-- 0x80002ed4
       0     4236        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4237        M 0x800014bc add     a1, a2, a3             #; a2  = 0, a3  = 0x80002ed4, (wrb) a1  <-- 0x80002ed4
       0     4238        M 0x800014c0 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
       0     4249        M                                           #; (lsu) a4  <-- 10
       0     4250        M 0x800014c4 addi    a5, a4, 1              #; a4  = 10, (wrb) a5  <-- 11
       0     4251        M 0x800014c8 sw      a5, 0(a1)              #; a1  = 0x80002ed4, 11 ~~> Word[0x80002ed4]
       0     4252        M 0x800014cc add     a4, a1, a4             #; a1  = 0x80002ed4, a4  = 10, (wrb) a4  <-- 0x80002ede
       0     4253        M 0x800014d0 sb      a0, 72(a4)             #; a4  = 0x80002ede, 46 ~~> Byte[0x80002f26]
       0     4254        M 0x800014d4 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
       0     4275        M                                           #; (lsu) a4  <-- 11
       0     4276        M 0x800014d8 addi    a4, a4, -1020          #; a4  = 11, (wrb) a4  <-- -1009
       0     4277        M 0x800014dc snez    a4, a4                 #; a4  = -1009, (wrb) a4  <-- 1
       0     4278        M 0x800014e0 addi    a0, a0, -10            #; a0  = 46, (wrb) a0  <-- 36
       0     4279        M 0x800014e4 snez    a0, a0                 #; a0  = 36, (wrb) a0  <-- 1
       0     4280        M 0x800014e8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4281        M 0x800014ec bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000154c
       0     4284        M 0x8000154c ret                            #; ra  = 0x80001b90, goto 0x80001b90
       0     4289        M 0x80001b90 mv      s0, s1                 #; s1  = 11, (wrb) s0  <-- 11
       0     4290        M 0x80001b94 mv      s8, s10                #; s10 = 6, (wrb) s8  <-- 6
       0     4291        M 0x80001b98 bnez    s10, pc - 40           #; s10 = 6, taken, goto 0x80001b70
       0     4292        M 0x80001b70 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 6, (wrb) a0  <-- 0x0011fe3d
       0     4293        M 0x80001b74 lbu     a0, 0(a0)              #; a0  = 0x0011fe3d, a0  <~~ Byte[0x0011fe3d]
       0     4294        M 0x80001b78 addi    s10, s8, -1            #; s8  = 6, (wrb) s10 <-- 5
       0     4295        M 0x80001b7c addi    s1, s0, 1              #; s0  = 11, (wrb) s1  <-- 12
       0     4296        M 0x80001b80 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4297        M 0x80001b84 mv      a2, s0                 #; s0  = 11, (wrb) a2  <-- 11
       0     4298        M 0x80001b88 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4299        M 0x80001b8c jalr    s7                     #; s7  = 0x800014a4, (wrb) ra  <-- 0x80001b90, goto 0x800014a4
       0     4300        M                                           #; (lsu) a0  <-- 48
       0     4302        M 0x800014a4 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4303        M 0x800014a8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4304        M 0x800014ac li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4305        M 0x800014b0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4306        M 0x800014b4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800034b4
       0     4307        M 0x800014b8 addi    a3, a3, -1504          #; a3  = 0x800034b4, (wrb) a3  <-- 0x80002ed4
       0     4308        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4309        M 0x800014bc add     a1, a2, a3             #; a2  = 0, a3  = 0x80002ed4, (wrb) a1  <-- 0x80002ed4
       0     4310        M 0x800014c0 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
       0     4321        M                                           #; (lsu) a4  <-- 11
       0     4322        M 0x800014c4 addi    a5, a4, 1              #; a4  = 11, (wrb) a5  <-- 12
       0     4323        M 0x800014c8 sw      a5, 0(a1)              #; a1  = 0x80002ed4, 12 ~~> Word[0x80002ed4]
       0     4324        M 0x800014cc add     a4, a1, a4             #; a1  = 0x80002ed4, a4  = 11, (wrb) a4  <-- 0x80002edf
       0     4325        M 0x800014d0 sb      a0, 72(a4)             #; a4  = 0x80002edf, 48 ~~> Byte[0x80002f27]
       0     4326        M 0x800014d4 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
       0     4347        M                                           #; (lsu) a4  <-- 12
       0     4348        M 0x800014d8 addi    a4, a4, -1020          #; a4  = 12, (wrb) a4  <-- -1008
       0     4349        M 0x800014dc snez    a4, a4                 #; a4  = -1008, (wrb) a4  <-- 1
       0     4350        M 0x800014e0 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     4351        M 0x800014e4 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     4352        M 0x800014e8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4353        M 0x800014ec bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000154c
       0     4356        M 0x8000154c ret                            #; ra  = 0x80001b90, goto 0x80001b90
       0     4361        M 0x80001b90 mv      s0, s1                 #; s1  = 12, (wrb) s0  <-- 12
       0     4362        M 0x80001b94 mv      s8, s10                #; s10 = 5, (wrb) s8  <-- 5
       0     4363        M 0x80001b98 bnez    s10, pc - 40           #; s10 = 5, taken, goto 0x80001b70
       0     4364        M 0x80001b70 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 5, (wrb) a0  <-- 0x0011fe3c
       0     4365        M 0x80001b74 lbu     a0, 0(a0)              #; a0  = 0x0011fe3c, a0  <~~ Byte[0x0011fe3c]
       0     4366        M 0x80001b78 addi    s10, s8, -1            #; s8  = 5, (wrb) s10 <-- 4
       0     4367        M 0x80001b7c addi    s1, s0, 1              #; s0  = 12, (wrb) s1  <-- 13
       0     4368        M 0x80001b80 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4369        M 0x80001b84 mv      a2, s0                 #; s0  = 12, (wrb) a2  <-- 12
       0     4370        M 0x80001b88 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4371        M 0x80001b8c jalr    s7                     #; s7  = 0x800014a4, (wrb) ra  <-- 0x80001b90, goto 0x800014a4
       0     4372        M                                           #; (lsu) a0  <-- 48
       0     4374        M 0x800014a4 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4375        M 0x800014a8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4376        M 0x800014ac li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4377        M 0x800014b0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4378        M 0x800014b4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800034b4
       0     4379        M 0x800014b8 addi    a3, a3, -1504          #; a3  = 0x800034b4, (wrb) a3  <-- 0x80002ed4
       0     4380        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4381        M 0x800014bc add     a1, a2, a3             #; a2  = 0, a3  = 0x80002ed4, (wrb) a1  <-- 0x80002ed4
       0     4382        M 0x800014c0 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
       0     4393        M                                           #; (lsu) a4  <-- 12
       0     4394        M 0x800014c4 addi    a5, a4, 1              #; a4  = 12, (wrb) a5  <-- 13
       0     4395        M 0x800014c8 sw      a5, 0(a1)              #; a1  = 0x80002ed4, 13 ~~> Word[0x80002ed4]
       0     4396        M 0x800014cc add     a4, a1, a4             #; a1  = 0x80002ed4, a4  = 12, (wrb) a4  <-- 0x80002ee0
       0     4397        M 0x800014d0 sb      a0, 72(a4)             #; a4  = 0x80002ee0, 48 ~~> Byte[0x80002f28]
       0     4398        M 0x800014d4 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
       0     4419        M                                           #; (lsu) a4  <-- 13
       0     4420        M 0x800014d8 addi    a4, a4, -1020          #; a4  = 13, (wrb) a4  <-- -1007
       0     4421        M 0x800014dc snez    a4, a4                 #; a4  = -1007, (wrb) a4  <-- 1
       0     4422        M 0x800014e0 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     4423        M 0x800014e4 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     4424        M 0x800014e8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4425        M 0x800014ec bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000154c
       0     4428        M 0x8000154c ret                            #; ra  = 0x80001b90, goto 0x80001b90
       0     4433        M 0x80001b90 mv      s0, s1                 #; s1  = 13, (wrb) s0  <-- 13
       0     4434        M 0x80001b94 mv      s8, s10                #; s10 = 4, (wrb) s8  <-- 4
       0     4435        M 0x80001b98 bnez    s10, pc - 40           #; s10 = 4, taken, goto 0x80001b70
       0     4436        M 0x80001b70 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 4, (wrb) a0  <-- 0x0011fe3b
       0     4437        M 0x80001b74 lbu     a0, 0(a0)              #; a0  = 0x0011fe3b, a0  <~~ Byte[0x0011fe3b]
       0     4438        M 0x80001b78 addi    s10, s8, -1            #; s8  = 4, (wrb) s10 <-- 3
       0     4439        M 0x80001b7c addi    s1, s0, 1              #; s0  = 13, (wrb) s1  <-- 14
       0     4440        M 0x80001b80 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4441        M 0x80001b84 mv      a2, s0                 #; s0  = 13, (wrb) a2  <-- 13
       0     4442        M 0x80001b88 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4443        M 0x80001b8c jalr    s7                     #; s7  = 0x800014a4, (wrb) ra  <-- 0x80001b90, goto 0x800014a4
       0     4444        M                                           #; (lsu) a0  <-- 48
       0     4446        M 0x800014a4 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4447        M 0x800014a8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4448        M 0x800014ac li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4449        M 0x800014b0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4450        M 0x800014b4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800034b4
       0     4451        M 0x800014b8 addi    a3, a3, -1504          #; a3  = 0x800034b4, (wrb) a3  <-- 0x80002ed4
       0     4452        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4453        M 0x800014bc add     a1, a2, a3             #; a2  = 0, a3  = 0x80002ed4, (wrb) a1  <-- 0x80002ed4
       0     4454        M 0x800014c0 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
       0     4465        M                                           #; (lsu) a4  <-- 13
       0     4466        M 0x800014c4 addi    a5, a4, 1              #; a4  = 13, (wrb) a5  <-- 14
       0     4467        M 0x800014c8 sw      a5, 0(a1)              #; a1  = 0x80002ed4, 14 ~~> Word[0x80002ed4]
       0     4468        M 0x800014cc add     a4, a1, a4             #; a1  = 0x80002ed4, a4  = 13, (wrb) a4  <-- 0x80002ee1
       0     4469        M 0x800014d0 sb      a0, 72(a4)             #; a4  = 0x80002ee1, 48 ~~> Byte[0x80002f29]
       0     4470        M 0x800014d4 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
       0     4491        M                                           #; (lsu) a4  <-- 14
       0     4492        M 0x800014d8 addi    a4, a4, -1020          #; a4  = 14, (wrb) a4  <-- -1006
       0     4493        M 0x800014dc snez    a4, a4                 #; a4  = -1006, (wrb) a4  <-- 1
       0     4494        M 0x800014e0 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     4495        M 0x800014e4 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     4496        M 0x800014e8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4497        M 0x800014ec bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000154c
       0     4500        M 0x8000154c ret                            #; ra  = 0x80001b90, goto 0x80001b90
       0     4505        M 0x80001b90 mv      s0, s1                 #; s1  = 14, (wrb) s0  <-- 14
       0     4506        M 0x80001b94 mv      s8, s10                #; s10 = 3, (wrb) s8  <-- 3
       0     4507        M 0x80001b98 bnez    s10, pc - 40           #; s10 = 3, taken, goto 0x80001b70
       0     4508        M 0x80001b70 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 3, (wrb) a0  <-- 0x0011fe3a
       0     4509        M 0x80001b74 lbu     a0, 0(a0)              #; a0  = 0x0011fe3a, a0  <~~ Byte[0x0011fe3a]
       0     4510        M 0x80001b78 addi    s10, s8, -1            #; s8  = 3, (wrb) s10 <-- 2
       0     4511        M 0x80001b7c addi    s1, s0, 1              #; s0  = 14, (wrb) s1  <-- 15
       0     4512        M 0x80001b80 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4513        M 0x80001b84 mv      a2, s0                 #; s0  = 14, (wrb) a2  <-- 14
       0     4514        M 0x80001b88 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4515        M 0x80001b8c jalr    s7                     #; s7  = 0x800014a4, (wrb) ra  <-- 0x80001b90, goto 0x800014a4
       0     4516        M                                           #; (lsu) a0  <-- 48
       0     4518        M 0x800014a4 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4519        M 0x800014a8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4520        M 0x800014ac li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4521        M 0x800014b0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4522        M 0x800014b4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800034b4
       0     4523        M 0x800014b8 addi    a3, a3, -1504          #; a3  = 0x800034b4, (wrb) a3  <-- 0x80002ed4
       0     4524        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4525        M 0x800014bc add     a1, a2, a3             #; a2  = 0, a3  = 0x80002ed4, (wrb) a1  <-- 0x80002ed4
       0     4526        M 0x800014c0 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
       0     4537        M                                           #; (lsu) a4  <-- 14
       0     4538        M 0x800014c4 addi    a5, a4, 1              #; a4  = 14, (wrb) a5  <-- 15
       0     4539        M 0x800014c8 sw      a5, 0(a1)              #; a1  = 0x80002ed4, 15 ~~> Word[0x80002ed4]
       0     4540        M 0x800014cc add     a4, a1, a4             #; a1  = 0x80002ed4, a4  = 14, (wrb) a4  <-- 0x80002ee2
       0     4541        M 0x800014d0 sb      a0, 72(a4)             #; a4  = 0x80002ee2, 48 ~~> Byte[0x80002f2a]
       0     4542        M 0x800014d4 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
       0     4563        M                                           #; (lsu) a4  <-- 15
       0     4564        M 0x800014d8 addi    a4, a4, -1020          #; a4  = 15, (wrb) a4  <-- -1005
       0     4565        M 0x800014dc snez    a4, a4                 #; a4  = -1005, (wrb) a4  <-- 1
       0     4566        M 0x800014e0 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     4567        M 0x800014e4 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     4568        M 0x800014e8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4569        M 0x800014ec bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000154c
       0     4572        M 0x8000154c ret                            #; ra  = 0x80001b90, goto 0x80001b90
       0     4577        M 0x80001b90 mv      s0, s1                 #; s1  = 15, (wrb) s0  <-- 15
       0     4578        M 0x80001b94 mv      s8, s10                #; s10 = 2, (wrb) s8  <-- 2
       0     4579        M 0x80001b98 bnez    s10, pc - 40           #; s10 = 2, taken, goto 0x80001b70
       0     4580        M 0x80001b70 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 2, (wrb) a0  <-- 0x0011fe39
       0     4581        M 0x80001b74 lbu     a0, 0(a0)              #; a0  = 0x0011fe39, a0  <~~ Byte[0x0011fe39]
       0     4582        M 0x80001b78 addi    s10, s8, -1            #; s8  = 2, (wrb) s10 <-- 1
       0     4583        M 0x80001b7c addi    s1, s0, 1              #; s0  = 15, (wrb) s1  <-- 16
       0     4584        M 0x80001b80 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4585        M 0x80001b84 mv      a2, s0                 #; s0  = 15, (wrb) a2  <-- 15
       0     4586        M 0x80001b88 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4587        M 0x80001b8c jalr    s7                     #; s7  = 0x800014a4, (wrb) ra  <-- 0x80001b90, goto 0x800014a4
       0     4588        M                                           #; (lsu) a0  <-- 48
       0     4590        M 0x800014a4 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4591        M 0x800014a8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4592        M 0x800014ac li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4593        M 0x800014b0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4594        M 0x800014b4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800034b4
       0     4595        M 0x800014b8 addi    a3, a3, -1504          #; a3  = 0x800034b4, (wrb) a3  <-- 0x80002ed4
       0     4596        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4597        M 0x800014bc add     a1, a2, a3             #; a2  = 0, a3  = 0x80002ed4, (wrb) a1  <-- 0x80002ed4
       0     4598        M 0x800014c0 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
       0     4609        M                                           #; (lsu) a4  <-- 15
       0     4610        M 0x800014c4 addi    a5, a4, 1              #; a4  = 15, (wrb) a5  <-- 16
       0     4611        M 0x800014c8 sw      a5, 0(a1)              #; a1  = 0x80002ed4, 16 ~~> Word[0x80002ed4]
       0     4612        M 0x800014cc add     a4, a1, a4             #; a1  = 0x80002ed4, a4  = 15, (wrb) a4  <-- 0x80002ee3
       0     4613        M 0x800014d0 sb      a0, 72(a4)             #; a4  = 0x80002ee3, 48 ~~> Byte[0x80002f2b]
       0     4614        M 0x800014d4 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
       0     4635        M                                           #; (lsu) a4  <-- 16
       0     4636        M 0x800014d8 addi    a4, a4, -1020          #; a4  = 16, (wrb) a4  <-- -1004
       0     4637        M 0x800014dc snez    a4, a4                 #; a4  = -1004, (wrb) a4  <-- 1
       0     4638        M 0x800014e0 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     4639        M 0x800014e4 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     4640        M 0x800014e8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4641        M 0x800014ec bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000154c
       0     4644        M 0x8000154c ret                            #; ra  = 0x80001b90, goto 0x80001b90
       0     4649        M 0x80001b90 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
       0     4650        M 0x80001b94 mv      s8, s10                #; s10 = 1, (wrb) s8  <-- 1
       0     4651        M 0x80001b98 bnez    s10, pc - 40           #; s10 = 1, taken, goto 0x80001b70
       0     4652        M 0x80001b70 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 1, (wrb) a0  <-- 0x0011fe38
       0     4653        M 0x80001b74 lbu     a0, 0(a0)              #; a0  = 0x0011fe38, a0  <~~ Byte[0x0011fe38]
       0     4654        M 0x80001b78 addi    s10, s8, -1            #; s8  = 1, (wrb) s10 <-- 0
       0     4655        M 0x80001b7c addi    s1, s0, 1              #; s0  = 16, (wrb) s1  <-- 17
       0     4656        M 0x80001b80 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4657        M 0x80001b84 mv      a2, s0                 #; s0  = 16, (wrb) a2  <-- 16
       0     4658        M 0x80001b88 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4659        M 0x80001b8c jalr    s7                     #; s7  = 0x800014a4, (wrb) ra  <-- 0x80001b90, goto 0x800014a4
       0     4660        M                                           #; (lsu) a0  <-- 48
       0     4662        M 0x800014a4 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4663        M 0x800014a8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4664        M 0x800014ac li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4665        M 0x800014b0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4666        M 0x800014b4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800034b4
       0     4667        M 0x800014b8 addi    a3, a3, -1504          #; a3  = 0x800034b4, (wrb) a3  <-- 0x80002ed4
       0     4668        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4669        M 0x800014bc add     a1, a2, a3             #; a2  = 0, a3  = 0x80002ed4, (wrb) a1  <-- 0x80002ed4
       0     4670        M 0x800014c0 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
       0     4681        M                                           #; (lsu) a4  <-- 16
       0     4682        M 0x800014c4 addi    a5, a4, 1              #; a4  = 16, (wrb) a5  <-- 17
       0     4683        M 0x800014c8 sw      a5, 0(a1)              #; a1  = 0x80002ed4, 17 ~~> Word[0x80002ed4]
       0     4684        M 0x800014cc add     a4, a1, a4             #; a1  = 0x80002ed4, a4  = 16, (wrb) a4  <-- 0x80002ee4
       0     4685        M 0x800014d0 sb      a0, 72(a4)             #; a4  = 0x80002ee4, 48 ~~> Byte[0x80002f2c]
       0     4686        M 0x800014d4 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
       0     4707        M                                           #; (lsu) a4  <-- 17
       0     4708        M 0x800014d8 addi    a4, a4, -1020          #; a4  = 17, (wrb) a4  <-- -1003
       0     4709        M 0x800014dc snez    a4, a4                 #; a4  = -1003, (wrb) a4  <-- 1
       0     4710        M 0x800014e0 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     4711        M 0x800014e4 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     4712        M 0x800014e8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4713        M 0x800014ec bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000154c
       0     4716        M 0x8000154c ret                            #; ra  = 0x80001b90, goto 0x80001b90
       0     4721        M 0x80001b90 mv      s0, s1                 #; s1  = 17, (wrb) s0  <-- 17
       0     4722        M 0x80001b94 mv      s8, s10                #; s10 = 0, (wrb) s8  <-- 0
       0     4723        M 0x80001b98 bnez    s10, pc - 40           #; s10 = 0, not taken
       0     4724        M 0x80001b9c j       pc + 0x8               #; goto 0x80001ba4
       0     4736        M 0x80001ba4 sub     a0, s1, s4             #; s1  = 17, s4  = 9, (wrb) a0  <-- 8
       0     4737        M 0x80001ba8 sltu    a0, a0, s2             #; a0  = 8, s2  = 0, (wrb) a0  <-- 0
       0     4738        M 0x80001bac xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0     4748        M 0x80001bb0 xori    a1, s5, 1              #; s5  = 0, (wrb) a1  <-- 1
       0     4749        M 0x80001bb4 or      a0, a1, a0             #; a1  = 1, a0  = 1, (wrb) a0  <-- 1
       0     4750        M 0x80001bb8 bnez    a0, pc + 48            #; a0  = 1, taken, goto 0x80001be8
       0     4771        M 0x80001be8 mv      s0, s1                 #; s1  = 17, (wrb) s0  <-- 17
       0     4772        M 0x80001bec mv      a0, s0                 #; s0  = 17, (wrb) a0  <-- 17
       0     4785        M 0x80001bf0 fld     fs2, 40(sp)            #; fs2  <~~ Doub[0x0011fe58]
       0     4786        M 0x80001bfc lw      s10, 64(sp)            #; sp  = 0x0011fe30, s10 <~~ Word[0x0011fe70]
                         M 0x80001bf4 fld     fs1, 48(sp)            #; fs1  <~~ Doub[0x0011fe60], (f:lsu) fs2  <-- 0.0
       0     4787        M 0x80001bf8 fld     fs0, 56(sp)            #; fs0  <~~ Doub[0x0011fe68], (f:lsu) fs1  <-- 0.0
       0     4788        M                                           #; (f:lsu) fs0  <-- 285.0
       0     4790        M                                           #; (lsu) s10 <-- 0x80002b8f
       0     4795        M 0x80001c00 lw      s9, 68(sp)             #; sp  = 0x0011fe30, s9  <~~ Word[0x0011fe74]
       0     4798        M                                           #; (lsu) s9  <-- 9
       0     4799        M 0x80001c04 lw      s8, 72(sp)             #; sp  = 0x0011fe30, s8  <~~ Word[0x0011fe78]
       0     4802        M                                           #; (lsu) s8  <-- 16
       0     4803        M 0x80001c08 lw      s7, 76(sp)             #; sp  = 0x0011fe30, s7  <~~ Word[0x0011fe7c]
       0     4806        M                                           #; (lsu) s7  <-- 0
       0     4807        M 0x80001c0c lw      s6, 80(sp)             #; sp  = 0x0011fe30, s6  <~~ Word[0x0011fe80]
       0     4810        M                                           #; (lsu) s6  <-- 0
       0     4811        M 0x80001c10 lw      s5, 84(sp)             #; sp  = 0x0011fe30, s5  <~~ Word[0x0011fe84]
       0     4814        M                                           #; (lsu) s5  <-- -1
       0     4815        M 0x80001c14 lw      s4, 88(sp)             #; sp  = 0x0011fe30, s4  <~~ Word[0x0011fe88]
       0     4818        M                                           #; (lsu) s4  <-- 0x0011ff17
       0     4819        M 0x80001c18 lw      s3, 92(sp)             #; sp  = 0x0011fe30, s3  <~~ Word[0x0011fe8c]
       0     4822        M                                           #; (lsu) s3  <-- 0x0011ff30
       0     4823        M 0x80001c1c lw      s2, 96(sp)             #; sp  = 0x0011fe30, s2  <~~ Word[0x0011fe90]
       0     4826        M                                           #; (lsu) s2  <-- 0x800014a4
       0     4827        M 0x80001c20 lw      s1, 100(sp)            #; sp  = 0x0011fe30, s1  <~~ Word[0x0011fe94]
       0     4830        M                                           #; (lsu) s1  <-- 9
       0     4831        M 0x80001c24 lw      s0, 104(sp)            #; sp  = 0x0011fe30, s0  <~~ Word[0x0011fe98]
       0     4834        M                                           #; (lsu) s0  <-- 0
       0     4835        M 0x80001c28 lw      ra, 108(sp)            #; sp  = 0x0011fe30, ra  <~~ Word[0x0011fe9c]
       0     4836        M 0x80001c2c addi    sp, sp, 112            #; sp  = 0x0011fe30, (wrb) sp  <-- 0x0011fea0
       0     4838        M                                           #; (lsu) ra  <-- 0x80000bd4
       0     4839        M 0x80001c30 ret                            #; ra  = 0x80000bd4, goto 0x80000bd4
       0     4851        M 0x80000bd4 j       pc + 0x7c0             #; goto 0x80001394
       0     4854        M 0x80001394 mv      s8, a0                 #; a0  = 17, (wrb) s8  <-- 17
       0     4855        M 0x80001398 li      s6, 37                 #; (wrb) s6  <-- 37
       0     4856        M 0x8000139c li      s7, 46                 #; (wrb) s7  <-- 46
       0     4866        M 0x800013a0 addi    s0, s10, 1             #; s10 = 0x80002b8f, (wrb) s0  <-- 0x80002b90
       0     4867        M 0x800013a4 j       pc - 0xa74             #; goto 0x80000930
       0     4878        M 0x80000930 addi    s10, s0, 2             #; s0  = 0x80002b90, (wrb) s10 <-- 0x80002b92
       0     4879        M 0x80000934 mv      s9, s8                 #; s8  = 17, (wrb) s9  <-- 17
       0     4880        M 0x80000938 li      s8, 10                 #; (wrb) s8  <-- 10
       0     4881        M 0x8000093c lbu     a0, 0(s0)              #; s0  = 0x80002b90, a0  <~~ Byte[0x80002b90]
       0     4892        M                                           #; (lsu) a0  <-- 10
       0     4893        M 0x80000940 beqz    a0, pc + 2824          #; a0  = 10, not taken
       0     4894        M 0x80000944 beq     a0, s6, pc + 48        #; a0  = 10, s6  = 37, not taken
       0     4895        M 0x80000948 addi    s1, s9, 1              #; s9  = 17, (wrb) s1  <-- 18
       0     4896        M 0x8000094c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4902        M 0x80000950 mv      a2, s9                 #; s9  = 17, (wrb) a2  <-- 17
       0     4903        M 0x80000954 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     4904        M 0x80000958 jalr    s2                     #; s2  = 0x800014a4, (wrb) ra  <-- 0x8000095c, goto 0x800014a4
       0     4916        M 0x800014a4 beqz    a0, pc + 168           #; a0  = 10, not taken
       0     4917        M 0x800014a8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4918        M 0x800014ac li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4919        M 0x800014b0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4920        M 0x800014b4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800034b4
       0     4921        M 0x800014b8 addi    a3, a3, -1504          #; a3  = 0x800034b4, (wrb) a3  <-- 0x80002ed4
       0     4922        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4923        M 0x800014bc add     a1, a2, a3             #; a2  = 0, a3  = 0x80002ed4, (wrb) a1  <-- 0x80002ed4
       0     4924        M 0x800014c0 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
       0     4935        M                                           #; (lsu) a4  <-- 17
       0     4936        M 0x800014c4 addi    a5, a4, 1              #; a4  = 17, (wrb) a5  <-- 18
       0     4937        M 0x800014c8 sw      a5, 0(a1)              #; a1  = 0x80002ed4, 18 ~~> Word[0x80002ed4]
       0     4938        M 0x800014cc add     a4, a1, a4             #; a1  = 0x80002ed4, a4  = 17, (wrb) a4  <-- 0x80002ee5
       0     4939        M 0x800014d0 sb      a0, 72(a4)             #; a4  = 0x80002ee5, 10 ~~> Byte[0x80002f2d]
       0     4940        M 0x800014d4 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
       0     4961        M                                           #; (lsu) a4  <-- 18
       0     4962        M 0x800014d8 addi    a4, a4, -1020          #; a4  = 18, (wrb) a4  <-- -1002
       0     4963        M 0x800014dc snez    a4, a4                 #; a4  = -1002, (wrb) a4  <-- 1
       0     4964        M 0x800014e0 addi    a0, a0, -10            #; a0  = 10, (wrb) a0  <-- 0
       0     4965        M 0x800014e4 snez    a0, a0                 #; a0  = 0, (wrb) a0  <-- 0
       0     4966        M 0x800014e8 and     a0, a0, a4             #; a0  = 0, a4  = 1, (wrb) a0  <-- 0
       0     4967        M 0x800014ec bnez    a0, pc + 96            #; a0  = 0, not taken
       0     4968        M 0x800014f0 add     a0, a3, a2             #; a3  = 0x80002ed4, a2  = 0, (wrb) a0  <-- 0x80002ed4
       0     4969        M 0x800014f4 addi    a2, a0, 72             #; a0  = 0x80002ed4, (wrb) a2  <-- 0x80002f1c
       0     4970        M 0x800014f8 sw      zero, 12(a0)           #; a0  = 0x80002ed4, 0 ~~> Word[0x80002ee0]
       0     4971        M 0x800014fc li      a3, 64                 #; (wrb) a3  <-- 64
       0     4980        M 0x80001500 sw      a3, 8(a0)              #; a0  = 0x80002ed4, 64 ~~> Word[0x80002edc]
       0     4981        M 0x80001504 sw      zero, 20(a0)           #; a0  = 0x80002ed4, 0 ~~> Word[0x80002ee8]
       0     4982        M 0x80001508 li      a3, 1                  #; (wrb) a3  <-- 1
       0     4983        M 0x8000150c sw      a3, 16(a0)             #; a0  = 0x80002ed4, 1 ~~> Word[0x80002ee4]
       0     4992        M 0x80001510 sw      zero, 28(a0)           #; a0  = 0x80002ed4, 0 ~~> Word[0x80002ef0]
       0     4993        M 0x80001514 sw      a2, 24(a0)             #; a0  = 0x80002ed4, 0x80002f1c ~~> Word[0x80002eec]
       0     4995        M 0x80001518 lw      a2, 0(a1)              #; a1  = 0x80002ed4, a2  <~~ Word[0x80002ed4]
       0     4996        M 0x8000151c addi    a3, a0, 8              #; a0  = 0x80002ed4, (wrb) a3  <-- 0x80002edc
       0     5005        M 0x80001520 sw      zero, 36(a0)           #; a0  = 0x80002ed4, 0 ~~> Word[0x80002ef8]
       0     5024        M                                           #; (lsu) a2  <-- 18
       0     5025        M 0x80001524 sw      a2, 32(a0)             #; a0  = 0x80002ed4, 18 ~~> Word[0x80002ef4]
       0     5026        M 0x80001528 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003528
       0     5027        M 0x8000152c addi    a0, a0, -1896          #; a0  = 0x80003528, (wrb) a0  <-- 0x80002dc0
       0     5028        M 0x80001530 sw      a3, 0(a0)              #; a0  = 0x80002dc0, 0x80002edc ~~> Word[0x80002dc0]
       0     5029        M 0x80001534 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003534
       0     5030        M 0x80001538 addi    a0, a0, -1844          #; a0  = 0x80003534, (wrb) a0  <-- 0x80002e00
       0     5031        M 0x8000153c lw      a2, 0(a0)              #; a0  = 0x80002e00, a2  <~~ Word[0x80002e00]
       0     5054        M                                           #; (lsu) a2  <-- 0
       0     5055        M 0x80001540 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x8000153c
       0     5056        M 0x8000153c lw      a2, 0(a0)              #; a0  = 0x80002e00, a2  <~~ Word[0x80002e00]
       0     5067        M                                           #; (lsu) a2  <-- 0
       0     5068        M 0x80001540 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x8000153c
       0     5069        M 0x8000153c lw      a2, 0(a0)              #; a0  = 0x80002e00, a2  <~~ Word[0x80002e00]
       0     5080        M                                           #; (lsu) a2  <-- 0
       0     5081        M 0x80001540 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x8000153c
       0     5082        M 0x8000153c lw      a2, 0(a0)              #; a0  = 0x80002e00, a2  <~~ Word[0x80002e00]
       0     5093        M                                           #; (lsu) a2  <-- 0
       0     5094        M 0x80001540 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x8000153c
       0     5095        M 0x8000153c lw      a2, 0(a0)              #; a0  = 0x80002e00, a2  <~~ Word[0x80002e00]
       0     5106        M                                           #; (lsu) a2  <-- 1
       0     5107        M 0x80001540 beqz    a2, pc - 4             #; a2  = 1, not taken
       0     5108        M 0x80001544 sw      zero, 0(a0)            #; a0  = 0x80002e00, 0 ~~> Word[0x80002e00]
       0     5109        M 0x80001548 sw      zero, 0(a1)            #; a1  = 0x80002ed4, 0 ~~> Word[0x80002ed4]
       0     5110        M 0x8000154c ret                            #; ra  = 0x8000095c, goto 0x8000095c
       0     5113        M 0x8000095c addi    s0, s0, 1              #; s0  = 0x80002b90, (wrb) s0  <-- 0x80002b91
       0     5116        M 0x80000960 addi    s10, s10, 1            #; s10 = 0x80002b92, (wrb) s10 <-- 0x80002b93
       0     5117        M 0x80000964 mv      s9, s1                 #; s1  = 18, (wrb) s9  <-- 18
       0     5118        M 0x80000968 lbu     a0, 0(s0)              #; s0  = 0x80002b91, a0  <~~ Byte[0x80002b91]
       0     5131        M                                           #; (lsu) a0  <-- 0
       0     5132        M 0x8000096c bnez    a0, pc - 40            #; a0  = 0, not taken
       0     5144        M 0x80000970 j       pc + 0xad8             #; goto 0x80001448
       0     5156        M 0x80001448 mv      a2, s9                 #; s9  = 18, (wrb) a2  <-- 18
       0     5157        M 0x8000144c bltu    s9, s5, pc + 8         #; s9  = 18, s5  = -1, taken, goto 0x80001454
       0     5168        M 0x80001454 li      a0, 0                  #; (wrb) a0  <-- 0
       0     5169        M 0x80001458 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5170        M 0x8000145c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5180        M 0x80001460 jalr    s2                     #; s2  = 0x800014a4, (wrb) ra  <-- 0x80001464, goto 0x800014a4
       0     5194        M 0x800014a4 beqz    a0, pc + 168           #; a0  = 0, taken, goto 0x8000154c
       0     5199        M 0x8000154c ret                            #; ra  = 0x80001464, goto 0x80001464
       0     5200        M 0x80001464 mv      a0, s9                 #; s9  = 18, (wrb) a0  <-- 18
       0     5201        M 0x80001468 lw      s11, 60(sp)            #; sp  = 0x0011fea0, s11 <~~ Word[0x0011fedc]
       0     5204        M                                           #; (lsu) s11 <-- 0
       0     5205        M 0x8000146c lw      s10, 64(sp)            #; sp  = 0x0011fea0, s10 <~~ Word[0x0011fee0]
       0     5208        M                                           #; (lsu) s10 <-- 0
       0     5209        M 0x80001470 lw      s9, 68(sp)             #; sp  = 0x0011fea0, s9  <~~ Word[0x0011fee4]
       0     5212        M                                           #; (lsu) s9  <-- 0
       0     5213        M 0x80001474 lw      s8, 72(sp)             #; sp  = 0x0011fea0, s8  <~~ Word[0x0011fee8]
       0     5216        M                                           #; (lsu) s8  <-- 0
       0     5217        M 0x80001478 lw      s7, 76(sp)             #; sp  = 0x0011fea0, s7  <~~ Word[0x0011feec]
       0     5220        M                                           #; (lsu) s7  <-- 0
       0     5221        M 0x8000147c lw      s6, 80(sp)             #; sp  = 0x0011fea0, s6  <~~ Word[0x0011fef0]
       0     5224        M                                           #; (lsu) s6  <-- 0
       0     5225        M 0x80001480 lw      s5, 84(sp)             #; sp  = 0x0011fea0, s5  <~~ Word[0x0011fef4]
       0     5228        M                                           #; (lsu) s5  <-- 0
       0     5229        M 0x80001484 lw      s4, 88(sp)             #; sp  = 0x0011fea0, s4  <~~ Word[0x0011fef8]
       0     5232        M                                           #; (lsu) s4  <-- 0
       0     5233        M 0x80001488 lw      s3, 92(sp)             #; sp  = 0x0011fea0, s3  <~~ Word[0x0011fefc]
       0     5236        M                                           #; (lsu) s3  <-- 0
       0     5237        M 0x8000148c lw      s2, 96(sp)             #; sp  = 0x0011fea0, s2  <~~ Word[0x0011ff00]
       0     5240        M                                           #; (lsu) s2  <-- 0
       0     5241        M 0x80001490 lw      s1, 100(sp)            #; sp  = 0x0011fea0, s1  <~~ Word[0x0011ff04]
       0     5244        M                                           #; (lsu) s1  <-- 0
       0     5245        M 0x80001494 lw      s0, 104(sp)            #; sp  = 0x0011fea0, s0  <~~ Word[0x0011ff08]
       0     5248        M                                           #; (lsu) s0  <-- 0
       0     5249        M 0x80001498 lw      ra, 108(sp)            #; sp  = 0x0011fea0, ra  <~~ Word[0x0011ff0c]
       0     5250        M 0x8000149c addi    sp, sp, 112            #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011ff10
       0     5252        M                                           #; (lsu) ra  <-- 0x800008a0
       0     5253        M 0x800014a0 ret                            #; ra  = 0x800008a0, goto 0x800008a0
       0     5265        M 0x800008a0 lw      ra, 12(sp)             #; sp  = 0x0011ff10, ra  <~~ Word[0x0011ff1c]
       0     5266        M 0x800008a4 addi    sp, sp, 48             #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011ff40
       0     5268        M                                           #; (lsu) ra  <-- 0x80000800
       0     5269        M 0x800008a8 ret                            #; ra  = 0x80000800, goto 0x80000800
       0     5288        M 0x80000800 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002800
       0     5289        M 0x80000804 addi    a0, a0, 1560           #; a0  = 0x80002800, (wrb) a0  <-- 0x80002e18
       0     5292        M 0x80000808 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002e18]
       0     5301        M                                           #; (f:lsu) ft0  <-- 285.0
       0     5302        M 0x80000818 lw      a2, 8(sp)              #; sp  = 0x0011ff40, a2  <~~ Word[0x0011ff48]
                         M 0x8000080c fadd.d  ft0, fs0, ft0          #; fs0  = 285.0, ft0  = 285.0
       0     5305        M                                           #; (lsu) a2  <-- 0
                         M                                           #; (f:fpu) ft0  <-- 570.0
       0     5306        M 0x8000081c lw      a3, 12(sp)             #; sp  = 0x0011ff40, a3  <~~ Word[0x0011ff4c]
                         M 0x80000810 fsgnjx.d fs0, ft0, ft0         #; ft0  = 570.0, ft0  = 570.0
       0     5307        M                                           #; (f:fpu) fs0  <-- 570.0
       0     5308        M 0x80000814 fsd     fs0, 8(sp)             #; 570.0 ~~> Doub[0x0011ff48]
       0     5309        M                                           #; (lsu) a3  <-- 0
       0     5312        M 0x80000820 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002820
       0     5313        M 0x80000824 addi    a0, a0, 882            #; a0  = 0x80002820, (wrb) a0  <-- 0x80002b92
       0     5314        M 0x80000828 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000828
       0     5315        M 0x8000082c jalr    ra, ra, 40             #; ra  = 0x80000828, (wrb) ra  <-- 0x80000830, goto 0x80000850
       0     5326        M 0x80000850 addi    sp, sp, -48            #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff10
       0     5327        M 0x80000854 sw      ra, 12(sp)             #; sp  = 0x0011ff10, 0x80000830 ~~> Word[0x0011ff1c]
       0     5328        M 0x80000858 mv      t0, a0                 #; a0  = 0x80002b92, (wrb) t0  <-- 0x80002b92
       0     5329        M 0x8000085c sw      a7, 44(sp)             #; sp  = 0x0011ff10, 9 ~~> Word[0x0011ff3c]
       0     5338        M 0x80000860 sw      a6, 40(sp)             #; sp  = 0x0011ff10, 10 ~~> Word[0x0011ff38]
       0     5339        M 0x80000864 sw      a5, 36(sp)             #; sp  = 0x0011ff10, 18 ~~> Word[0x0011ff34]
       0     5340        M 0x80000868 sw      a4, 32(sp)             #; sp  = 0x0011ff10, 1 ~~> Word[0x0011ff30]
       0     5341        M 0x8000086c sw      a3, 28(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff2c]
       0     5350        M 0x80000870 sw      a2, 24(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff28]
       0     5351        M 0x80000874 sw      a1, 20(sp)             #; sp  = 0x0011ff10, 0x0011ff17 ~~> Word[0x0011ff24]
       0     5352        M 0x80000878 addi    a0, sp, 20             #; sp  = 0x0011ff10, (wrb) a0  <-- 0x0011ff24
       0     5353        M 0x8000087c sw      a0, 8(sp)              #; sp  = 0x0011ff10, 0x0011ff24 ~~> Word[0x0011ff18]
       0     5362        M 0x80000880 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80001880
       0     5363        M 0x80000884 addi    a0, a0, -988           #; a0  = 0x80001880, (wrb) a0  <-- 0x800014a4
       0     5364        M 0x80000888 addi    a1, sp, 7              #; sp  = 0x0011ff10, (wrb) a1  <-- 0x0011ff17
       0     5365        M 0x8000088c li      a2, -1                 #; (wrb) a2  <-- -1
       0     5374        M 0x80000890 addi    a4, sp, 20             #; sp  = 0x0011ff10, (wrb) a4  <-- 0x0011ff24
       0     5375        M 0x80000894 mv      a3, t0                 #; t0  = 0x80002b92, (wrb) a3  <-- 0x80002b92
       0     5376        M 0x80000898 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000898
       0     5377        M 0x8000089c jalr    ra, ra, 20             #; ra  = 0x80000898, (wrb) ra  <-- 0x800008a0, goto 0x800008ac
       0     5378        M 0x800008ac addi    sp, sp, -112           #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011fea0
       0     5381        M 0x800008b0 sw      ra, 108(sp)            #; sp  = 0x0011fea0, 0x800008a0 ~~> Word[0x0011ff0c]
       0     5382        M 0x800008b4 sw      s0, 104(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff08]
       0     5383        M 0x800008b8 sw      s1, 100(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff04]
       0     5384        M 0x800008bc sw      s2, 96(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff00]
       0     5393        M 0x800008c0 sw      s3, 92(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fefc]
       0     5394        M 0x800008c4 sw      s4, 88(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef8]
       0     5395        M 0x800008c8 sw      s5, 84(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef4]
       0     5396        M 0x800008cc sw      s6, 80(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef0]
       0     5405        M 0x800008d0 sw      s7, 76(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011feec]
       0     5406        M 0x800008d4 sw      s8, 72(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee8]
       0     5407        M 0x800008d8 sw      s9, 68(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee4]
       0     5408        M 0x800008dc sw      s10, 64(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee0]
       0     5417        M 0x800008e0 sw      s11, 60(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fedc]
       0     5418        M 0x800008e4 mv      s3, a4                 #; a4  = 0x0011ff24, (wrb) s3  <-- 0x0011ff24
       0     5419        M 0x800008e8 mv      s0, a3                 #; a3  = 0x80002b92, (wrb) s0  <-- 0x80002b92
       0     5420        M 0x800008ec mv      s5, a2                 #; a2  = -1, (wrb) s5  <-- -1
       0     5429        M 0x800008f0 mv      s4, a1                 #; a1  = 0x0011ff17, (wrb) s4  <-- 0x0011ff17
       0     5430        M 0x800008f4 beqz    a1, pc + 12            #; a1  = 0x0011ff17, not taken
       0     5431        M 0x800008f8 mv      s2, a0                 #; a0  = 0x800014a4, (wrb) s2  <-- 0x800014a4
       0     5432        M 0x800008fc j       pc + 0xc               #; goto 0x80000908
       0     5441        M 0x80000908 li      s8, 0                  #; (wrb) s8  <-- 0
       0     5442        M 0x8000090c li      s6, 37                 #; (wrb) s6  <-- 37
       0     5453        M 0x80000910 li      s11, 16                #; (wrb) s11 <-- 16
       0     5454        M 0x80000914 li      s7, 46                 #; (wrb) s7  <-- 46
       0     5455        M 0x80000918 lui     a0, 0x1                #; (wrb) a0  <-- 4096
       0     5456        M 0x8000091c addi    a0, a0, -2048          #; a0  = 4096, (wrb) a0  <-- 2048
       0     5465        M 0x80000920 sw      a0, 24(sp)             #; sp  = 0x0011fea0, 2048 ~~> Word[0x0011feb8]
       0     5466        M 0x80000924 lui     a0, 0x10               #; (wrb) a0  <-- 0x00010000
       0     5467        M 0x80000928 addi    a0, a0, -1             #; a0  = 0x00010000, (wrb) a0  <-- 65535
       0     5468        M 0x8000092c sw      a0, 16(sp)             #; sp  = 0x0011fea0, 65535 ~~> Word[0x0011feb0]
       0     5469        M 0x80000930 addi    s10, s0, 2             #; s0  = 0x80002b92, (wrb) s10 <-- 0x80002b94
       0     5470        M 0x80000934 mv      s9, s8                 #; s8  = 0, (wrb) s9  <-- 0
       0     5471        M 0x80000938 li      s8, 10                 #; (wrb) s8  <-- 10
       0     5472        M 0x8000093c lbu     a0, 0(s0)              #; s0  = 0x80002b92, a0  <~~ Byte[0x80002b92]
       0     5483        M                                           #; (lsu) a0  <-- 101
       0     5484        M 0x80000940 beqz    a0, pc + 2824          #; a0  = 101, not taken
       0     5485        M 0x80000944 beq     a0, s6, pc + 48        #; a0  = 101, s6  = 37, not taken
       0     5486        M 0x80000948 addi    s1, s9, 1              #; s9  = 0, (wrb) s1  <-- 1
       0     5487        M 0x8000094c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5488        M 0x80000950 mv      a2, s9                 #; s9  = 0, (wrb) a2  <-- 0
       0     5489        M 0x80000954 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5490        M 0x80000958 jalr    s2                     #; s2  = 0x800014a4, (wrb) ra  <-- 0x8000095c, goto 0x800014a4
       0     5493        M 0x800014a4 beqz    a0, pc + 168           #; a0  = 101, not taken
       0     5494        M 0x800014a8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5495        M 0x800014ac li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5496        M 0x800014b0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5497        M 0x800014b4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800034b4
       0     5498        M 0x800014b8 addi    a3, a3, -1504          #; a3  = 0x800034b4, (wrb) a3  <-- 0x80002ed4
       0     5499        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5500        M 0x800014bc add     a1, a2, a3             #; a2  = 0, a3  = 0x80002ed4, (wrb) a1  <-- 0x80002ed4
       0     5501        M 0x800014c0 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
       0     5512        M                                           #; (lsu) a4  <-- 0
       0     5513        M 0x800014c4 addi    a5, a4, 1              #; a4  = 0, (wrb) a5  <-- 1
       0     5514        M 0x800014c8 sw      a5, 0(a1)              #; a1  = 0x80002ed4, 1 ~~> Word[0x80002ed4]
       0     5515        M 0x800014cc add     a4, a1, a4             #; a1  = 0x80002ed4, a4  = 0, (wrb) a4  <-- 0x80002ed4
       0     5516        M 0x800014d0 sb      a0, 72(a4)             #; a4  = 0x80002ed4, 101 ~~> Byte[0x80002f1c]
       0     5517        M 0x800014d4 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
       0     5538        M                                           #; (lsu) a4  <-- 1
       0     5539        M 0x800014d8 addi    a4, a4, -1020          #; a4  = 1, (wrb) a4  <-- -1019
       0     5540        M 0x800014dc snez    a4, a4                 #; a4  = -1019, (wrb) a4  <-- 1
       0     5541        M 0x800014e0 addi    a0, a0, -10            #; a0  = 101, (wrb) a0  <-- 91
       0     5542        M 0x800014e4 snez    a0, a0                 #; a0  = 91, (wrb) a0  <-- 1
       0     5543        M 0x800014e8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5544        M 0x800014ec bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000154c
       0     5547        M 0x8000154c ret                            #; ra  = 0x8000095c, goto 0x8000095c
       0     5552        M 0x8000095c addi    s0, s0, 1              #; s0  = 0x80002b92, (wrb) s0  <-- 0x80002b93
       0     5555        M 0x80000960 addi    s10, s10, 1            #; s10 = 0x80002b94, (wrb) s10 <-- 0x80002b95
       0     5556        M 0x80000964 mv      s9, s1                 #; s1  = 1, (wrb) s9  <-- 1
       0     5557        M 0x80000968 lbu     a0, 0(s0)              #; s0  = 0x80002b93, a0  <~~ Byte[0x80002b93]
       0     5568        M                                           #; (lsu) a0  <-- 114
       0     5569        M 0x8000096c bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000944
       0     5570        M 0x80000944 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     5571        M 0x80000948 addi    s1, s9, 1              #; s9  = 1, (wrb) s1  <-- 2
       0     5572        M 0x8000094c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5573        M 0x80000950 mv      a2, s9                 #; s9  = 1, (wrb) a2  <-- 1
       0     5574        M 0x80000954 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5575        M 0x80000958 jalr    s2                     #; s2  = 0x800014a4, (wrb) ra  <-- 0x8000095c, goto 0x800014a4
       0     5578        M 0x800014a4 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     5579        M 0x800014a8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5580        M 0x800014ac li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5581        M 0x800014b0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5582        M 0x800014b4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800034b4
       0     5583        M 0x800014b8 addi    a3, a3, -1504          #; a3  = 0x800034b4, (wrb) a3  <-- 0x80002ed4
       0     5584        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5585        M 0x800014bc add     a1, a2, a3             #; a2  = 0, a3  = 0x80002ed4, (wrb) a1  <-- 0x80002ed4
       0     5586        M 0x800014c0 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
       0     5597        M                                           #; (lsu) a4  <-- 1
       0     5598        M 0x800014c4 addi    a5, a4, 1              #; a4  = 1, (wrb) a5  <-- 2
       0     5599        M 0x800014c8 sw      a5, 0(a1)              #; a1  = 0x80002ed4, 2 ~~> Word[0x80002ed4]
       0     5600        M 0x800014cc add     a4, a1, a4             #; a1  = 0x80002ed4, a4  = 1, (wrb) a4  <-- 0x80002ed5
       0     5601        M 0x800014d0 sb      a0, 72(a4)             #; a4  = 0x80002ed5, 114 ~~> Byte[0x80002f1d]
       0     5602        M 0x800014d4 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
       0     5623        M                                           #; (lsu) a4  <-- 2
       0     5624        M 0x800014d8 addi    a4, a4, -1020          #; a4  = 2, (wrb) a4  <-- -1018
       0     5625        M 0x800014dc snez    a4, a4                 #; a4  = -1018, (wrb) a4  <-- 1
       0     5626        M 0x800014e0 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     5627        M 0x800014e4 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     5628        M 0x800014e8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5629        M 0x800014ec bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000154c
       0     5632        M 0x8000154c ret                            #; ra  = 0x8000095c, goto 0x8000095c
       0     5637        M 0x8000095c addi    s0, s0, 1              #; s0  = 0x80002b93, (wrb) s0  <-- 0x80002b94
       0     5640        M 0x80000960 addi    s10, s10, 1            #; s10 = 0x80002b95, (wrb) s10 <-- 0x80002b96
       0     5641        M 0x80000964 mv      s9, s1                 #; s1  = 2, (wrb) s9  <-- 2
       0     5642        M 0x80000968 lbu     a0, 0(s0)              #; s0  = 0x80002b94, a0  <~~ Byte[0x80002b94]
       0     5653        M                                           #; (lsu) a0  <-- 114
       0     5654        M 0x8000096c bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000944
       0     5655        M 0x80000944 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     5656        M 0x80000948 addi    s1, s9, 1              #; s9  = 2, (wrb) s1  <-- 3
       0     5657        M 0x8000094c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5658        M 0x80000950 mv      a2, s9                 #; s9  = 2, (wrb) a2  <-- 2
       0     5659        M 0x80000954 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5660        M 0x80000958 jalr    s2                     #; s2  = 0x800014a4, (wrb) ra  <-- 0x8000095c, goto 0x800014a4
       0     5663        M 0x800014a4 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     5664        M 0x800014a8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5665        M 0x800014ac li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5666        M 0x800014b0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5667        M 0x800014b4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800034b4
       0     5668        M 0x800014b8 addi    a3, a3, -1504          #; a3  = 0x800034b4, (wrb) a3  <-- 0x80002ed4
       0     5669        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5670        M 0x800014bc add     a1, a2, a3             #; a2  = 0, a3  = 0x80002ed4, (wrb) a1  <-- 0x80002ed4
       0     5671        M 0x800014c0 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
       0     5682        M                                           #; (lsu) a4  <-- 2
       0     5683        M 0x800014c4 addi    a5, a4, 1              #; a4  = 2, (wrb) a5  <-- 3
       0     5684        M 0x800014c8 sw      a5, 0(a1)              #; a1  = 0x80002ed4, 3 ~~> Word[0x80002ed4]
       0     5685        M 0x800014cc add     a4, a1, a4             #; a1  = 0x80002ed4, a4  = 2, (wrb) a4  <-- 0x80002ed6
       0     5686        M 0x800014d0 sb      a0, 72(a4)             #; a4  = 0x80002ed6, 114 ~~> Byte[0x80002f1e]
       0     5687        M 0x800014d4 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
       0     5708        M                                           #; (lsu) a4  <-- 3
       0     5709        M 0x800014d8 addi    a4, a4, -1020          #; a4  = 3, (wrb) a4  <-- -1017
       0     5710        M 0x800014dc snez    a4, a4                 #; a4  = -1017, (wrb) a4  <-- 1
       0     5711        M 0x800014e0 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     5712        M 0x800014e4 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     5713        M 0x800014e8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5714        M 0x800014ec bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000154c
       0     5717        M 0x8000154c ret                            #; ra  = 0x8000095c, goto 0x8000095c
       0     5722        M 0x8000095c addi    s0, s0, 1              #; s0  = 0x80002b94, (wrb) s0  <-- 0x80002b95
       0     5725        M 0x80000960 addi    s10, s10, 1            #; s10 = 0x80002b96, (wrb) s10 <-- 0x80002b97
       0     5726        M 0x80000964 mv      s9, s1                 #; s1  = 3, (wrb) s9  <-- 3
       0     5727        M 0x80000968 lbu     a0, 0(s0)              #; s0  = 0x80002b95, a0  <~~ Byte[0x80002b95]
       0     5738        M                                           #; (lsu) a0  <-- 111
       0     5739        M 0x8000096c bnez    a0, pc - 40            #; a0  = 111, taken, goto 0x80000944
       0     5740        M 0x80000944 beq     a0, s6, pc + 48        #; a0  = 111, s6  = 37, not taken
       0     5741        M 0x80000948 addi    s1, s9, 1              #; s9  = 3, (wrb) s1  <-- 4
       0     5742        M 0x8000094c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5743        M 0x80000950 mv      a2, s9                 #; s9  = 3, (wrb) a2  <-- 3
       0     5744        M 0x80000954 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5745        M 0x80000958 jalr    s2                     #; s2  = 0x800014a4, (wrb) ra  <-- 0x8000095c, goto 0x800014a4
       0     5748        M 0x800014a4 beqz    a0, pc + 168           #; a0  = 111, not taken
       0     5749        M 0x800014a8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5750        M 0x800014ac li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5751        M 0x800014b0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5752        M 0x800014b4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800034b4
       0     5753        M 0x800014b8 addi    a3, a3, -1504          #; a3  = 0x800034b4, (wrb) a3  <-- 0x80002ed4
       0     5754        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5755        M 0x800014bc add     a1, a2, a3             #; a2  = 0, a3  = 0x80002ed4, (wrb) a1  <-- 0x80002ed4
       0     5756        M 0x800014c0 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
       0     5767        M                                           #; (lsu) a4  <-- 3
       0     5768        M 0x800014c4 addi    a5, a4, 1              #; a4  = 3, (wrb) a5  <-- 4
       0     5769        M 0x800014c8 sw      a5, 0(a1)              #; a1  = 0x80002ed4, 4 ~~> Word[0x80002ed4]
       0     5770        M 0x800014cc add     a4, a1, a4             #; a1  = 0x80002ed4, a4  = 3, (wrb) a4  <-- 0x80002ed7
       0     5771        M 0x800014d0 sb      a0, 72(a4)             #; a4  = 0x80002ed7, 111 ~~> Byte[0x80002f1f]
       0     5772        M 0x800014d4 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
       0     5793        M                                           #; (lsu) a4  <-- 4
       0     5794        M 0x800014d8 addi    a4, a4, -1020          #; a4  = 4, (wrb) a4  <-- -1016
       0     5795        M 0x800014dc snez    a4, a4                 #; a4  = -1016, (wrb) a4  <-- 1
       0     5796        M 0x800014e0 addi    a0, a0, -10            #; a0  = 111, (wrb) a0  <-- 101
       0     5797        M 0x800014e4 snez    a0, a0                 #; a0  = 101, (wrb) a0  <-- 1
       0     5798        M 0x800014e8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5799        M 0x800014ec bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000154c
       0     5802        M 0x8000154c ret                            #; ra  = 0x8000095c, goto 0x8000095c
       0     5807        M 0x8000095c addi    s0, s0, 1              #; s0  = 0x80002b95, (wrb) s0  <-- 0x80002b96
       0     5810        M 0x80000960 addi    s10, s10, 1            #; s10 = 0x80002b97, (wrb) s10 <-- 0x80002b98
       0     5811        M 0x80000964 mv      s9, s1                 #; s1  = 4, (wrb) s9  <-- 4
       0     5812        M 0x80000968 lbu     a0, 0(s0)              #; s0  = 0x80002b96, a0  <~~ Byte[0x80002b96]
       0     5823        M                                           #; (lsu) a0  <-- 114
       0     5824        M 0x8000096c bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000944
       0     5825        M 0x80000944 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     5826        M 0x80000948 addi    s1, s9, 1              #; s9  = 4, (wrb) s1  <-- 5
       0     5827        M 0x8000094c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5828        M 0x80000950 mv      a2, s9                 #; s9  = 4, (wrb) a2  <-- 4
       0     5829        M 0x80000954 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5830        M 0x80000958 jalr    s2                     #; s2  = 0x800014a4, (wrb) ra  <-- 0x8000095c, goto 0x800014a4
       0     5833        M 0x800014a4 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     5834        M 0x800014a8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5835        M 0x800014ac li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5836        M 0x800014b0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5837        M 0x800014b4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800034b4
       0     5838        M 0x800014b8 addi    a3, a3, -1504          #; a3  = 0x800034b4, (wrb) a3  <-- 0x80002ed4
       0     5839        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5840        M 0x800014bc add     a1, a2, a3             #; a2  = 0, a3  = 0x80002ed4, (wrb) a1  <-- 0x80002ed4
       0     5841        M 0x800014c0 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
       0     5852        M                                           #; (lsu) a4  <-- 4
       0     5853        M 0x800014c4 addi    a5, a4, 1              #; a4  = 4, (wrb) a5  <-- 5
       0     5854        M 0x800014c8 sw      a5, 0(a1)              #; a1  = 0x80002ed4, 5 ~~> Word[0x80002ed4]
       0     5855        M 0x800014cc add     a4, a1, a4             #; a1  = 0x80002ed4, a4  = 4, (wrb) a4  <-- 0x80002ed8
       0     5856        M 0x800014d0 sb      a0, 72(a4)             #; a4  = 0x80002ed8, 114 ~~> Byte[0x80002f20]
       0     5857        M 0x800014d4 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
       0     5878        M                                           #; (lsu) a4  <-- 5
       0     5879        M 0x800014d8 addi    a4, a4, -1020          #; a4  = 5, (wrb) a4  <-- -1015
       0     5880        M 0x800014dc snez    a4, a4                 #; a4  = -1015, (wrb) a4  <-- 1
       0     5881        M 0x800014e0 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     5882        M 0x800014e4 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     5883        M 0x800014e8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5884        M 0x800014ec bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000154c
       0     5887        M 0x8000154c ret                            #; ra  = 0x8000095c, goto 0x8000095c
       0     5892        M 0x8000095c addi    s0, s0, 1              #; s0  = 0x80002b96, (wrb) s0  <-- 0x80002b97
       0     5895        M 0x80000960 addi    s10, s10, 1            #; s10 = 0x80002b98, (wrb) s10 <-- 0x80002b99
       0     5896        M 0x80000964 mv      s9, s1                 #; s1  = 5, (wrb) s9  <-- 5
       0     5897        M 0x80000968 lbu     a0, 0(s0)              #; s0  = 0x80002b97, a0  <~~ Byte[0x80002b97]
       0     5908        M                                           #; (lsu) a0  <-- 32
       0     5909        M 0x8000096c bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000944
       0     5910        M 0x80000944 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     5911        M 0x80000948 addi    s1, s9, 1              #; s9  = 5, (wrb) s1  <-- 6
       0     5912        M 0x8000094c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5913        M 0x80000950 mv      a2, s9                 #; s9  = 5, (wrb) a2  <-- 5
       0     5914        M 0x80000954 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5915        M 0x80000958 jalr    s2                     #; s2  = 0x800014a4, (wrb) ra  <-- 0x8000095c, goto 0x800014a4
       0     5918        M 0x800014a4 beqz    a0, pc + 168           #; a0  = 32, not taken
       0     5919        M 0x800014a8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5920        M 0x800014ac li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5921        M 0x800014b0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5922        M 0x800014b4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800034b4
       0     5923        M 0x800014b8 addi    a3, a3, -1504          #; a3  = 0x800034b4, (wrb) a3  <-- 0x80002ed4
       0     5924        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5925        M 0x800014bc add     a1, a2, a3             #; a2  = 0, a3  = 0x80002ed4, (wrb) a1  <-- 0x80002ed4
       0     5926        M 0x800014c0 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
       0     5937        M                                           #; (lsu) a4  <-- 5
       0     5938        M 0x800014c4 addi    a5, a4, 1              #; a4  = 5, (wrb) a5  <-- 6
       0     5939        M 0x800014c8 sw      a5, 0(a1)              #; a1  = 0x80002ed4, 6 ~~> Word[0x80002ed4]
       0     5940        M 0x800014cc add     a4, a1, a4             #; a1  = 0x80002ed4, a4  = 5, (wrb) a4  <-- 0x80002ed9
       0     5941        M 0x800014d0 sb      a0, 72(a4)             #; a4  = 0x80002ed9, 32 ~~> Byte[0x80002f21]
       0     5942        M 0x800014d4 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
       0     5963        M                                           #; (lsu) a4  <-- 6
       0     5964        M 0x800014d8 addi    a4, a4, -1020          #; a4  = 6, (wrb) a4  <-- -1014
       0     5965        M 0x800014dc snez    a4, a4                 #; a4  = -1014, (wrb) a4  <-- 1
       0     5966        M 0x800014e0 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
       0     5967        M 0x800014e4 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
       0     5968        M 0x800014e8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5969        M 0x800014ec bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000154c
       0     5972        M 0x8000154c ret                            #; ra  = 0x8000095c, goto 0x8000095c
       0     5977        M 0x8000095c addi    s0, s0, 1              #; s0  = 0x80002b97, (wrb) s0  <-- 0x80002b98
       0     5980        M 0x80000960 addi    s10, s10, 1            #; s10 = 0x80002b99, (wrb) s10 <-- 0x80002b9a
       0     5981        M 0x80000964 mv      s9, s1                 #; s1  = 6, (wrb) s9  <-- 6
       0     5982        M 0x80000968 lbu     a0, 0(s0)              #; s0  = 0x80002b98, a0  <~~ Byte[0x80002b98]
       0     5993        M                                           #; (lsu) a0  <-- 61
       0     5994        M 0x8000096c bnez    a0, pc - 40            #; a0  = 61, taken, goto 0x80000944
       0     5995        M 0x80000944 beq     a0, s6, pc + 48        #; a0  = 61, s6  = 37, not taken
       0     5996        M 0x80000948 addi    s1, s9, 1              #; s9  = 6, (wrb) s1  <-- 7
       0     5997        M 0x8000094c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5998        M 0x80000950 mv      a2, s9                 #; s9  = 6, (wrb) a2  <-- 6
       0     5999        M 0x80000954 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     6000        M 0x80000958 jalr    s2                     #; s2  = 0x800014a4, (wrb) ra  <-- 0x8000095c, goto 0x800014a4
       0     6003        M 0x800014a4 beqz    a0, pc + 168           #; a0  = 61, not taken
       0     6004        M 0x800014a8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6005        M 0x800014ac li      a2, 1096               #; (wrb) a2  <-- 1096
       0     6006        M 0x800014b0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     6007        M 0x800014b4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800034b4
       0     6008        M 0x800014b8 addi    a3, a3, -1504          #; a3  = 0x800034b4, (wrb) a3  <-- 0x80002ed4
       0     6009        M                                           #; (acc) a1  <-- 0x00d605b3
       0     6010        M 0x800014bc add     a1, a2, a3             #; a2  = 0, a3  = 0x80002ed4, (wrb) a1  <-- 0x80002ed4
       0     6011        M 0x800014c0 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
       0     6022        M                                           #; (lsu) a4  <-- 6
       0     6023        M 0x800014c4 addi    a5, a4, 1              #; a4  = 6, (wrb) a5  <-- 7
       0     6024        M 0x800014c8 sw      a5, 0(a1)              #; a1  = 0x80002ed4, 7 ~~> Word[0x80002ed4]
       0     6025        M 0x800014cc add     a4, a1, a4             #; a1  = 0x80002ed4, a4  = 6, (wrb) a4  <-- 0x80002eda
       0     6026        M 0x800014d0 sb      a0, 72(a4)             #; a4  = 0x80002eda, 61 ~~> Byte[0x80002f22]
       0     6027        M 0x800014d4 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
       0     6048        M                                           #; (lsu) a4  <-- 7
       0     6049        M 0x800014d8 addi    a4, a4, -1020          #; a4  = 7, (wrb) a4  <-- -1013
       0     6050        M 0x800014dc snez    a4, a4                 #; a4  = -1013, (wrb) a4  <-- 1
       0     6051        M 0x800014e0 addi    a0, a0, -10            #; a0  = 61, (wrb) a0  <-- 51
       0     6052        M 0x800014e4 snez    a0, a0                 #; a0  = 51, (wrb) a0  <-- 1
       0     6053        M 0x800014e8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     6054        M 0x800014ec bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000154c
       0     6057        M 0x8000154c ret                            #; ra  = 0x8000095c, goto 0x8000095c
       0     6062        M 0x8000095c addi    s0, s0, 1              #; s0  = 0x80002b98, (wrb) s0  <-- 0x80002b99
       0     6065        M 0x80000960 addi    s10, s10, 1            #; s10 = 0x80002b9a, (wrb) s10 <-- 0x80002b9b
       0     6066        M 0x80000964 mv      s9, s1                 #; s1  = 7, (wrb) s9  <-- 7
       0     6067        M 0x80000968 lbu     a0, 0(s0)              #; s0  = 0x80002b99, a0  <~~ Byte[0x80002b99]
       0     6078        M                                           #; (lsu) a0  <-- 32
       0     6079        M 0x8000096c bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000944
       0     6080        M 0x80000944 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     6081        M 0x80000948 addi    s1, s9, 1              #; s9  = 7, (wrb) s1  <-- 8
       0     6082        M 0x8000094c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     6083        M 0x80000950 mv      a2, s9                 #; s9  = 7, (wrb) a2  <-- 7
       0     6084        M 0x80000954 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     6085        M 0x80000958 jalr    s2                     #; s2  = 0x800014a4, (wrb) ra  <-- 0x8000095c, goto 0x800014a4
       0     6088        M 0x800014a4 beqz    a0, pc + 168           #; a0  = 32, not taken
       0     6089        M 0x800014a8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6090        M 0x800014ac li      a2, 1096               #; (wrb) a2  <-- 1096
       0     6091        M 0x800014b0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     6092        M 0x800014b4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800034b4
       0     6093        M 0x800014b8 addi    a3, a3, -1504          #; a3  = 0x800034b4, (wrb) a3  <-- 0x80002ed4
       0     6094        M                                           #; (acc) a1  <-- 0x00d605b3
       0     6095        M 0x800014bc add     a1, a2, a3             #; a2  = 0, a3  = 0x80002ed4, (wrb) a1  <-- 0x80002ed4
       0     6096        M 0x800014c0 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
       0     6107        M                                           #; (lsu) a4  <-- 7
       0     6108        M 0x800014c4 addi    a5, a4, 1              #; a4  = 7, (wrb) a5  <-- 8
       0     6109        M 0x800014c8 sw      a5, 0(a1)              #; a1  = 0x80002ed4, 8 ~~> Word[0x80002ed4]
       0     6110        M 0x800014cc add     a4, a1, a4             #; a1  = 0x80002ed4, a4  = 7, (wrb) a4  <-- 0x80002edb
       0     6111        M 0x800014d0 sb      a0, 72(a4)             #; a4  = 0x80002edb, 32 ~~> Byte[0x80002f23]
       0     6112        M 0x800014d4 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
       0     6133        M                                           #; (lsu) a4  <-- 8
       0     6134        M 0x800014d8 addi    a4, a4, -1020          #; a4  = 8, (wrb) a4  <-- -1012
       0     6135        M 0x800014dc snez    a4, a4                 #; a4  = -1012, (wrb) a4  <-- 1
       0     6136        M 0x800014e0 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
       0     6137        M 0x800014e4 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
       0     6138        M 0x800014e8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     6139        M 0x800014ec bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000154c
       0     6142        M 0x8000154c ret                            #; ra  = 0x8000095c, goto 0x8000095c
       0     6147        M 0x8000095c addi    s0, s0, 1              #; s0  = 0x80002b99, (wrb) s0  <-- 0x80002b9a
       0     6150        M 0x80000960 addi    s10, s10, 1            #; s10 = 0x80002b9b, (wrb) s10 <-- 0x80002b9c
       0     6151        M 0x80000964 mv      s9, s1                 #; s1  = 8, (wrb) s9  <-- 8
       0     6152        M 0x80000968 lbu     a0, 0(s0)              #; s0  = 0x80002b9a, a0  <~~ Byte[0x80002b9a]
       0     6163        M                                           #; (lsu) a0  <-- 37
       0     6164        M 0x8000096c bnez    a0, pc - 40            #; a0  = 37, taken, goto 0x80000944
       0     6165        M 0x80000944 beq     a0, s6, pc + 48        #; a0  = 37, s6  = 37, taken, goto 0x80000974
       0     6168        M 0x80000974 li      s0, 0                  #; (wrb) s0  <-- 0
       0     6169        M 0x80000978 j       pc + 0x10              #; goto 0x80000988
       0     6180        M 0x80000988 lbu     a0, -1(s10)            #; s10 = 0x80002b9c, a0  <~~ Byte[0x80002b9b]
       0     6191        M                                           #; (lsu) a0  <-- 102
       0     6192        M 0x8000098c addi    a1, a0, -32            #; a0  = 102, (wrb) a1  <-- 70
       0     6193        M 0x80000990 bltu    s11, a1, pc + 56       #; s11 = 16, a1  = 70, taken, goto 0x800009c8
       0     6198        M 0x800009c8 addi    a1, a0, -48            #; a0  = 102, (wrb) a1  <-- 54
       0     6199        M 0x800009cc andi    a2, a1, 255            #; a1  = 54, (wrb) a2  <-- 54
       0     6201        M 0x800009d0 addi    a1, s10, -1            #; s10 = 0x80002b9c, (wrb) a1  <-- 0x80002b9b
       0     6202        M 0x800009d4 li      a3, 9                  #; (wrb) a3  <-- 9
       0     6203        M 0x800009d8 bltu    a3, a2, pc + 124       #; a3  = 9, a2  = 54, taken, goto 0x80000a54
       0     6206        M 0x80000a54 li      a2, 42                 #; (wrb) a2  <-- 42
       0     6207        M 0x80000a58 bne     a0, a2, pc + 80        #; a0  = 102, a2  = 42, taken, goto 0x80000aa8
       0     6211        M 0x80000aa8 li      s6, 0                  #; (wrb) s6  <-- 0
       0     6212        M 0x80000aac mv      s10, a1                #; a1  = 0x80002b9b, (wrb) s10 <-- 0x80002b9b
       0     6214        M 0x80000ab0 beq     a0, s7, pc - 164       #; a0  = 102, s7  = 46, not taken
       0     6215        M 0x80000ab4 li      s7, 0                  #; (wrb) s7  <-- 0
       0     6216        M 0x80000ab8 j       pc + 0xc               #; goto 0x80000ac4
       0     6237        M 0x80000ac4 addi    a1, a0, -104           #; a0  = 102, (wrb) a1  <-- -2
       0     6238        M 0x80000ac8 srli    a2, a1, 1              #; a1  = -2, (wrb) a2  <-- 0x7fffffff
       0     6239        M 0x80000acc slli    a1, a1, 31             #; a1  = -2, (wrb) a1  <-- 0
       0     6249        M 0x80000ad0 or      a1, a1, a2             #; a1  = 0, a2  = 0x7fffffff, (wrb) a1  <-- 0x7fffffff
       0     6250        M 0x80000ad4 li      a2, 9                  #; (wrb) a2  <-- 9
       0     6251        M 0x80000ad8 bltu    a2, a1, pc + 100       #; a2  = 9, a1  = 0x7fffffff, taken, goto 0x80000b3c
       0     6263        M 0x80000b3c addi    a1, a0, -37            #; a0  = 102, (wrb) a1  <-- 65
       0     6266        M 0x80000b40 li      a2, 83                 #; (wrb) a2  <-- 83
       0     6267        M 0x80000b44 bltu    a2, a1, pc + 264       #; a2  = 83, a1  = 65, not taken
       0     6268        M 0x80000b48 slli    a1, a1, 2              #; a1  = 65, (wrb) a1  <-- 260
       0     6269        M 0x80000b4c auipc   a2, 0x2                #; (wrb) a2  <-- 0x80002b4c
       0     6270        M 0x80000b50 addi    a2, a2, 196            #; a2  = 0x80002b4c, (wrb) a2  <-- 0x80002c10
       0     6271        M 0x80000b54 add     a1, a1, a2             #; a1  = 260, a2  = 0x80002c10, (wrb) a1  <-- 0x80002d14
       0     6272        M 0x80000b58 lw      a2, 0(a1)              #; a1  = 0x80002d14, a2  <~~ Word[0x80002d14]
       0     6273        M 0x80000b5c li      a1, 8                  #; (wrb) a1  <-- 8
       0     6282        M 0x80000b60 li      s8, 16                 #; (wrb) s8  <-- 16
       0     6283        M                                           #; (lsu) a2  <-- 0x80000b94
       0     6284        M 0x80000b64 jr      a2                     #; a2  = 0x80000b94, goto 0x80000b94
       0     6296        M 0x80000b94 li      a1, 70                 #; (wrb) a1  <-- 70
       0     6297        M 0x80000b98 bne     a0, a1, pc + 8         #; a0  = 102, a1  = 70, taken, goto 0x80000ba0
       0     6299        M 0x80000ba0 addi    a0, s3, 7              #; s3  = 0x0011ff24, (wrb) a0  <-- 0x0011ff2b
       0     6300        M 0x80000ba4 andi    a0, a0, -8             #; a0  = 0x0011ff2b, (wrb) a0  <-- 0x0011ff28
       0     6302        M 0x80000bac addi    s3, a0, 8              #; a0  = 0x0011ff28, (wrb) s3  <-- 0x0011ff30
       0     6303        M 0x80000bb0 mv      a0, s2                 #; s2  = 0x800014a4, (wrb) a0  <-- 0x800014a4
                         M 0x80000ba8 fld     fa0, 0(a0)             #; fa0  <~~ Doub[0x0011ff28]
       0     6304        M 0x80000bb4 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
                         M                                           #; (f:lsu) fa0  <-- 0.0
       0     6305        M 0x80000bb8 mv      a2, s9                 #; s9  = 8, (wrb) a2  <-- 8
       0     6306        M 0x80000bbc mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     6307        M 0x80000bc0 mv      a4, s7                 #; s7  = 0, (wrb) a4  <-- 0
       0     6308        M 0x80000bc4 mv      a5, s6                 #; s6  = 0, (wrb) a5  <-- 0
       0     6309        M 0x80000bc8 mv      a6, s0                 #; s0  = 0, (wrb) a6  <-- 0
       0     6310        M 0x80000bcc auipc   ra, 0x1                #; (wrb) ra  <-- 0x80001bcc
       0     6311        M 0x80000bd0 jalr    ra, ra, -1656          #; ra  = 0x80001bcc, (wrb) ra  <-- 0x80000bd4, goto 0x80001554
       0     6316        M 0x80001554 addi    sp, sp, -112           #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011fe30
       0     6317        M 0x80001558 sw      ra, 108(sp)            #; sp  = 0x0011fe30, 0x80000bd4 ~~> Word[0x0011fe9c]
       0     6318        M 0x8000155c sw      s0, 104(sp)            #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe98]
       0     6319        M 0x80001560 sw      s1, 100(sp)            #; sp  = 0x0011fe30, 8 ~~> Word[0x0011fe94]
       0     6320        M 0x80001564 sw      s2, 96(sp)             #; sp  = 0x0011fe30, 0x800014a4 ~~> Word[0x0011fe90]
       0     6321        M 0x80001568 sw      s3, 92(sp)             #; sp  = 0x0011fe30, 0x0011ff30 ~~> Word[0x0011fe8c]
       0     6322        M 0x8000156c sw      s4, 88(sp)             #; sp  = 0x0011fe30, 0x0011ff17 ~~> Word[0x0011fe88]
       0     6323        M 0x80001570 sw      s5, 84(sp)             #; sp  = 0x0011fe30, -1 ~~> Word[0x0011fe84]
       0     6324        M 0x80001574 sw      s6, 80(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe80]
       0     6325        M 0x80001578 sw      s7, 76(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe7c]
       0     6326        M 0x8000157c sw      s8, 72(sp)             #; sp  = 0x0011fe30, 16 ~~> Word[0x0011fe78]
       0     6327        M 0x80001580 sw      s9, 68(sp)             #; sp  = 0x0011fe30, 8 ~~> Word[0x0011fe74]
       0     6328        M 0x80001584 sw      s10, 64(sp)            #; sp  = 0x0011fe30, 0x80002b9b ~~> Word[0x0011fe70]
       0     6331        M 0x80001588 fsd     fs0, 56(sp)            #; 570.0 ~~> Doub[0x0011fe68]
       0     6332        M 0x8000158c fsd     fs1, 48(sp)            #; 0.0 ~~> Doub[0x0011fe60]
       0     6340        M 0x80001594 auipc   s1, 0x2                #; (wrb) s1  <-- 0x80003594
       0     6341        M 0x80001598 addi    s1, s1, -1900          #; s1  = 0x80003594, (wrb) s1  <-- 0x80002e28
                         M 0x80001590 fsd     fs2, 40(sp)            #; 0.0 ~~> Doub[0x0011fe58]
       0     6344        M 0x8000159c fld     ft0, 0(s1)             #; ft0  <~~ Doub[0x80002e28]
       0     6352        M 0x800015a4 mv      s5, a6                 #; a6  = 0, (wrb) s5  <-- 0
       0     6353        M 0x800015a8 mv      s2, a5                 #; a5  = 0, (wrb) s2  <-- 0
                         M                                           #; (f:lsu) ft0  <-- -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     6354        M 0x800015ac mv      s3, a3                 #; a3  = -1, (wrb) s3  <-- -1
                         M 0x800015a0 fle.d   s1, ft0, fa0           #; ft0  = -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000, fa0  = 0.0
       0     6363        M 0x800015b0 mv      s4, a2                 #; a2  = 8, (wrb) s4  <-- 8
       0     6364        M 0x800015b4 mv      s6, a1                 #; a1  = 0x0011ff17, (wrb) s6  <-- 0x0011ff17
       0     6365        M 0x800015b8 mv      s7, a0                 #; a0  = 0x800014a4, (wrb) s7  <-- 0x800014a4
       0     6366        M 0x800015bc bnez    s1, pc + 240           #; s1  = 1, taken, goto 0x800016ac
       0     6371        M 0x800016ac fsgnj.d fs0, fa0, fa0          #; fa0  = 0.0, fa0  = 0.0
       0     6372        M 0x800016b0 auipc   a0, 0x1                #; (wrb) a0  <-- 0x800026b0
                         M                                           #; (f:fpu) fs0  <-- 0.0
       0     6373        M 0x800016b4 addi    a0, a0, 1920           #; a0  = 0x800026b0, (wrb) a0  <-- 0x80002e30
       0     6376        M 0x800016b8 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002e30]
       0     6385        M                                           #; (f:lsu) ft0  <-- 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     6386        M 0x800016bc fle.d   a0, fa0, ft0           #; fa0  = 0.0, ft0  = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     6388        M                                           #; (acc) t3  <-- 0x00051e63
       0     6389        M 0x800016c0 bnez    a0, pc + 28            #; a0  = 1, taken, goto 0x800016dc
       0     6390        M 0x800016dc auipc   a0, 0x1                #; (wrb) a0  <-- 0x800026dc
       0     6393        M 0x800016e0 addi    a0, a0, 1884           #; a0  = 0x800026dc, (wrb) a0  <-- 0x80002e38
       0     6395        M 0x800016e8 auipc   a0, 0x1                #; (wrb) a0  <-- 0x800026e8
       0     6396        M 0x800016ec addi    a0, a0, 1880           #; a0  = 0x800026e8, (wrb) a0  <-- 0x80002e40
                         M 0x800016e4 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002e38]
       0     6399        M 0x800016f0 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80002e40]
       0     6405        M                                           #; (f:lsu) ft0  <-- 1000000000.0000000
       0     6406        M 0x800016f4 fle.d   a0, fs0, ft0           #; fs0  = 0.0, ft0  = 1000000000.0000000
       0     6408        M                                           #; (acc) a0  <-- 0x00b57533
                         M                                           #; (f:lsu) ft1  <-- -1000000000.0000000
       0     6409        M 0x800016f8 fle.d   a1, ft1, fs0           #; ft1  = -1000000000.0000000, fs0  = 0.0
       0     6411        M                                           #; (acc) a0  <-- 0x00b57533
       0     6412        M 0x800016fc and     a0, a0, a1             #; a0  = 1, a1  = 1, (wrb) a0  <-- 1
       0     6413        M 0x80001700 bnez    a0, pc + 252           #; a0  = 1, taken, goto 0x800017fc
       0     6418        M 0x800017fc andi    a0, s5, 1024           #; s5  = 0, (wrb) a0  <-- 0
       0     6430        M 0x80001800 li      s8, 6                  #; (wrb) s8  <-- 6
       0     6431        M 0x80001804 beqz    a0, pc + 8             #; a0  = 0, taken, goto 0x8000180c
       0     6432        M 0x8000180c li      a0, 10                 #; (wrb) a0  <-- 10
       0     6443        M 0x80001814 bltu    s8, a0, pc + 56        #; s8  = 6, a0  = 10, taken, goto 0x8000184c
       0     6444        M 0x80001810 fsgnjx.d fs2, fs0, fs0         #; fs0  = 0.0, fs0  = 0.0
       0     6445        M                                           #; (f:fpu) fs2  <-- 0.0
       0     6456        M 0x8000184c li      s0, 0                  #; (wrb) s0  <-- 0
       0     6459        M 0x80001850 slli    a0, s8, 3              #; s8  = 6, (wrb) a0  <-- 48
       0     6460        M 0x80001854 auipc   a1, 0x1                #; (wrb) a1  <-- 0x80002854
       0     6461        M 0x80001858 addi    a1, a1, 1292           #; a1  = 0x80002854, (wrb) a1  <-- 0x80002d60
       0     6462        M 0x8000185c add     a0, a0, a1             #; a0  = 48, a1  = 0x80002d60, (wrb) a0  <-- 0x80002d90
       0     6465        M 0x80001860 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80002d90]
       0     6466        M 0x80001864 fcvt.w.d s1, fs2               #; fs2  = 0.0
       0     6470        M 0x80001868 fcvt.d.w ft0, s1               #; ac1  = 0
       0     6471        M                                           #; (f:fpu) ft0  <-- 0.0
       0     6472        M 0x80001874 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002874
                         M 0x8000186c fsub.d  ft0, fs2, ft0          #; fs2  = 0.0, ft0  = 0.0
       0     6473        M 0x80001878 addi    a0, a0, 1492           #; a0  = 0x80002874, (wrb) a0  <-- 0x80002e48
       0     6474        M                                           #; (f:lsu) ft1  <-- 1000000.0000000
       0     6475        M                                           #; (f:fpu) ft0  <-- 0.0
       0     6476        M 0x80001870 fmul.d  ft2, ft1, ft0          #; ft1  = 1000000.0000000, ft0  = 0.0
       0     6477        M 0x8000187c fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002e48]
       0     6479        M                                           #; (f:fpu) ft2  <-- 0.0
       0     6480        M 0x80001880 fcvt.wu.d a0, ft2              #; ft2  = 0.0
       0     6482        M                                           #; (acc) gp  <-- 0xd21501d3
       0     6484        M 0x80001884 fcvt.d.wu ft3, a0              #; ac1  = 0
       0     6485        M                                           #; (f:fpu) ft3  <-- 0.0
       0     6486        M 0x80001888 fsub.d  ft2, ft2, ft3          #; ft2  = 0.0, ft3  = 0.0, (f:lsu) ft0  <-- 0.5
       0     6489        M                                           #; (f:fpu) ft2  <-- 0.0
       0     6490        M 0x8000188c fle.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
       0     6493        M 0x80001890 bnez    a1, pc + 32            #; a1  = 1, taken, goto 0x800018b0
       0     6497        M 0x800018b0 flt.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
       0     6499        M                                           #; (acc) s4  <-- 0x00059a63
       0     6500        M 0x800018b4 bnez    a1, pc + 20            #; a1  = 1, taken, goto 0x800018c8
       0     6502        M 0x800018cc beqz    s8, pc + 216           #; s8  = 6, not taken
                         M 0x800018c8 fcvt.d.w fs1, zero             #; ac1  = 0
       0     6503        M                                           #; (f:fpu) fs1  <-- 0.0
       0     6504        M 0x800018d0 li      a2, 0                  #; (wrb) a2  <-- 0
       0     6505        M 0x800018d4 addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
       0     6506        M 0x800018d8 add     t1, a1, s0             #; a1  = 0x0011fe38, s0  = 0, (wrb) t1  <-- 0x0011fe38
       0     6507        M 0x800018dc li      t0, 32                 #; (wrb) t0  <-- 32
       0     6508        M 0x800018e0 sub     a4, t0, s0             #; t0  = 32, s0  = 0, (wrb) a4  <-- 32
       0     6509        M 0x800018e4 lui     a1, 0xccccd            #; (wrb) a1  <-- 0xccccd000
       0     6510        M 0x800018e8 addi    t2, a1, -819           #; a1  = 0xccccd000, (wrb) t2  <-- 0xcccccccd
       0     6511        M 0x800018ec li      a6, 10                 #; (wrb) a6  <-- 10
       0     6512        M 0x800018f0 li      a7, 9                  #; (wrb) a7  <-- 9
       0     6513        M 0x800018f4 beq     a4, a2, pc + 200       #; a4  = 32, a2  = 0, not taken
       0     6514        M 0x800018f8 mv      a1, a0                 #; a0  = 0, (wrb) a1  <-- 0
       0     6515        M 0x800018fc mulhu   a0, a0, t2             #; a0  = 0, t2  = 0xcccccccd
       0     6518        M                                           #; (acc) a0  <-- 0x00355513
       0     6519        M 0x80001900 srli    a0, a0, 3              #; a0  = 0, (wrb) a0  <-- 0
       0     6520        M 0x80001904 mul     a3, a0, a6             #; a0  = 0, a6  = 10
       0     6523        M                                           #; (acc) a3  <-- 0x40d586b3
       0     6524        M 0x80001908 sub     a3, a1, a3             #; a1  = 0, a3  = 0, (wrb) a3  <-- 0
       0     6525        M 0x8000190c ori     a3, a3, 48             #; a3  = 0, (wrb) a3  <-- 48
       0     6526        M 0x80001910 add     a5, t1, a2             #; t1  = 0x0011fe38, a2  = 0, (wrb) a5  <-- 0x0011fe38
       0     6527        M 0x80001914 sb      a3, 0(a5)              #; a5  = 0x0011fe38, 48 ~~> Byte[0x0011fe38]
       0     6528        M 0x80001918 addi    a2, a2, 1              #; a2  = 0, (wrb) a2  <-- 1
       0     6529        M 0x8000191c bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 0, not taken
       0     6532        M 0x80001920 add     a0, s0, a2             #; s0  = 0, a2  = 1, (wrb) a0  <-- 1
       0     6533        M 0x80001924 addi    a1, a0, -1             #; a0  = 1, (wrb) a1  <-- 0
       0     6534        M 0x80001928 li      a3, 30                 #; (wrb) a3  <-- 30
       0     6535        M 0x8000192c sltu    a3, a3, a1             #; a3  = 30, a1  = 0, (wrb) a3  <-- 0
       0     6536        M 0x80001930 xor     a4, s8, a2             #; s8  = 6, a2  = 1, (wrb) a4  <-- 7
       0     6537        M 0x80001934 seqz    a4, a4                 #; a4  = 7, (wrb) a4  <-- 0
       0     6538        M 0x80001938 or      a3, a3, a4             #; a3  = 0, a4  = 0, (wrb) a3  <-- 0
       0     6539        M 0x8000193c bnez    a3, pc + 136           #; a3  = 0, not taken
       0     6540        M 0x80001940 addi    a0, sp, 8              #; sp  = 0x0011fe30, (wrb) a0  <-- 0x0011fe38
       0     6541        M 0x80001944 add     a0, a0, s0             #; a0  = 0x0011fe38, s0  = 0, (wrb) a0  <-- 0x0011fe38
       0     6542        M 0x80001948 not     a1, a2                 #; a2  = 1, (wrb) a1  <-- -2
       0     6543        M 0x8000194c add     s8, a1, s8             #; a1  = -2, s8  = 6, (wrb) s8  <-- 4
       0     6544        M 0x80001950 add     s0, s0, a2             #; s0  = 0, a2  = 1, (wrb) s0  <-- 1
       0     6545        M 0x80001954 li      a1, 31                 #; (wrb) a1  <-- 31
       0     6546        M 0x80001958 sub     a3, a1, s0             #; a1  = 31, s0  = 1, (wrb) a3  <-- 30
       0     6547        M 0x8000195c add     a0, a0, a2             #; a0  = 0x0011fe38, a2  = 1, (wrb) a0  <-- 0x0011fe39
       0     6548        M 0x80001960 mv      a1, s8                 #; s8  = 4, (wrb) a1  <-- 4
       0     6549        M 0x80001964 bltu    s8, a3, pc + 8         #; s8  = 4, a3  = 30, taken, goto 0x8000196c
       0     6550        M 0x8000196c addi    a2, a1, 1              #; a1  = 4, (wrb) a2  <-- 5
       0     6551        M 0x80001970 li      a1, 48                 #; (wrb) a1  <-- 48
       0     6552        M 0x80001974 auipc   ra, 0xfffff            #; (wrb) ra  <-- 0x80000974
       0     6553        M 0x80001978 jalr    ra, ra, -1052          #; ra  = 0x80000974, (wrb) ra  <-- 0x8000197c, goto 0x80000558
       0     6565        M 0x80000558 li      t1, 15                 #; (wrb) t1  <-- 15
       0     6566        M 0x8000055c mv      a4, a0                 #; a0  = 0x0011fe39, (wrb) a4  <-- 0x0011fe39
       0     6568        M 0x80000560 bgeu    t1, a2, pc + 60        #; t1  = 15, a2  = 5, taken, goto 0x8000059c
       0     6573        M 0x8000059c sub     a3, t1, a2             #; t1  = 15, a2  = 5, (wrb) a3  <-- 10
       0     6576        M 0x800005a0 slli    a3, a3, 2              #; a3  = 10, (wrb) a3  <-- 40
       0     6577        M 0x800005a4 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800005a4
       0     6578        M 0x800005a8 add     a3, a3, t0             #; a3  = 40, t0  = 0x800005a4, (wrb) a3  <-- 0x800005cc
       0     6579        M 0x800005ac jalr    zero, a3, 12           #; a3  = 0x800005cc, goto 0x800005d8
       0     6582        M 0x800005d8 sb      a1, 4(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3d]
       0     6583        M 0x800005dc sb      a1, 3(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3c]
       0     6585        M 0x800005e0 sb      a1, 2(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3b]
       0     6586        M 0x800005e4 sb      a1, 1(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3a]
       0     6587        M 0x800005e8 sb      a1, 0(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe39]
       0     6588        M 0x800005ec ret                            #; ra  = 0x8000197c, goto 0x8000197c
       0     6591        M 0x8000197c li      a0, 0                  #; (wrb) a0  <-- 0
       0     6594        M 0x80001980 add     a1, s0, a0             #; s0  = 1, a0  = 0, (wrb) a1  <-- 1
       0     6595        M 0x80001984 sltiu   a1, a1, 31             #; a1  = 1, (wrb) a1  <-- 1
       0     6596        M 0x80001988 xor     a2, s8, a0             #; s8  = 4, a0  = 0, (wrb) a2  <-- 4
       0     6597        M 0x8000198c snez    a2, a2                 #; a2  = 4, (wrb) a2  <-- 1
       0     6598        M 0x80001990 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     6599        M 0x80001994 addi    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0     6600        M 0x80001998 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001980
       0     6601        M 0x80001980 add     a1, s0, a0             #; s0  = 1, a0  = 1, (wrb) a1  <-- 2
       0     6602        M 0x80001984 sltiu   a1, a1, 31             #; a1  = 2, (wrb) a1  <-- 1
       0     6603        M 0x80001988 xor     a2, s8, a0             #; s8  = 4, a0  = 1, (wrb) a2  <-- 5
       0     6604        M 0x8000198c snez    a2, a2                 #; a2  = 5, (wrb) a2  <-- 1
       0     6605        M 0x80001990 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     6606        M 0x80001994 addi    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 2
       0     6607        M 0x80001998 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001980
       0     6608        M 0x80001980 add     a1, s0, a0             #; s0  = 1, a0  = 2, (wrb) a1  <-- 3
       0     6609        M 0x80001984 sltiu   a1, a1, 31             #; a1  = 3, (wrb) a1  <-- 1
       0     6610        M 0x80001988 xor     a2, s8, a0             #; s8  = 4, a0  = 2, (wrb) a2  <-- 6
       0     6611        M 0x8000198c snez    a2, a2                 #; a2  = 6, (wrb) a2  <-- 1
       0     6612        M 0x80001990 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     6613        M 0x80001994 addi    a0, a0, 1              #; a0  = 2, (wrb) a0  <-- 3
       0     6614        M 0x80001998 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001980
       0     6615        M 0x80001980 add     a1, s0, a0             #; s0  = 1, a0  = 3, (wrb) a1  <-- 4
       0     6616        M 0x80001984 sltiu   a1, a1, 31             #; a1  = 4, (wrb) a1  <-- 1
       0     6617        M 0x80001988 xor     a2, s8, a0             #; s8  = 4, a0  = 3, (wrb) a2  <-- 7
       0     6618        M 0x8000198c snez    a2, a2                 #; a2  = 7, (wrb) a2  <-- 1
       0     6619        M 0x80001990 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     6620        M 0x80001994 addi    a0, a0, 1              #; a0  = 3, (wrb) a0  <-- 4
       0     6621        M 0x80001998 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001980
       0     6622        M 0x80001980 add     a1, s0, a0             #; s0  = 1, a0  = 4, (wrb) a1  <-- 5
       0     6623        M 0x80001984 sltiu   a1, a1, 31             #; a1  = 5, (wrb) a1  <-- 1
       0     6624        M 0x80001988 xor     a2, s8, a0             #; s8  = 4, a0  = 4, (wrb) a2  <-- 0
       0     6625        M 0x8000198c snez    a2, a2                 #; a2  = 0, (wrb) a2  <-- 0
       0     6626        M 0x80001990 and     a2, a1, a2             #; a1  = 1, a2  = 0, (wrb) a2  <-- 0
       0     6627        M 0x80001994 addi    a0, a0, 1              #; a0  = 4, (wrb) a0  <-- 5
       0     6628        M 0x80001998 bnez    a2, pc - 24            #; a2  = 0, not taken
       0     6629        M 0x8000199c add     a0, s0, a0             #; s0  = 1, a0  = 5, (wrb) a0  <-- 6
       0     6632        M 0x800019a0 j       pc + 0x28              #; goto 0x800019c8
       0     6635        M 0x800019c8 beqz    a1, pc + 28            #; a1  = 1, not taken
       0     6636        M 0x800019cc addi    s0, a0, 1              #; a0  = 6, (wrb) s0  <-- 7
       0     6638        M 0x800019d0 addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
       0     6639        M 0x800019d4 add     a0, a1, a0             #; a1  = 0x0011fe38, a0  = 6, (wrb) a0  <-- 0x0011fe3e
       0     6640        M 0x800019d8 li      a1, 46                 #; (wrb) a1  <-- 46
       0     6641        M 0x800019dc sb      a1, 0(a0)              #; a0  = 0x0011fe3e, 46 ~~> Byte[0x0011fe3e]
       0     6642        M 0x800019e0 j       pc + 0x8               #; goto 0x800019e8
       0     6643        M 0x800019e8 li      a0, 32                 #; (wrb) a0  <-- 32
       0     6644        M 0x800019ec mv      t0, s0                 #; s0  = 7, (wrb) t0  <-- 7
       0     6646        M 0x800019f0 bltu    a0, s0, pc + 8         #; a0  = 32, s0  = 7, not taken
       0     6647        M 0x800019f4 li      t0, 32                 #; (wrb) t0  <-- 32
       0     6649        M 0x800019fc lui     a0, 0x66666            #; (wrb) a0  <-- 0x66666000
                         M 0x800019f8 flt.d   s9, fs0, fs1           #; fs0  = 0.0, fs1  = 0.0
       0     6650        M 0x80001a00 addi    a1, a0, 1639           #; a0  = 0x66666000, (wrb) a1  <-- 0x66666667
       0     6651        M 0x80001a04 li      a6, 10                 #; (wrb) a6  <-- 10
       0     6652        M 0x80001a08 addi    a3, sp, 8              #; sp  = 0x0011fe30, (wrb) a3  <-- 0x0011fe38
       0     6653        M 0x80001a0c li      a4, 18                 #; (wrb) a4  <-- 18
       0     6654        M 0x80001a10 beq     t0, s0, pc + 64        #; t0  = 32, s0  = 7, not taken
       0     6655        M 0x80001a14 mulh    a0, s1, a1             #; s1  = 0, a1  = 0x66666667
       0     6658        M                                           #; (acc) a5  <-- 0x01f55793
       0     6659        M 0x80001a18 srli    a5, a0, 31             #; a0  = 0, (wrb) a5  <-- 0
       0     6660        M 0x80001a1c srai    a0, a0, 2              #; a0  = 0, (wrb) a0  <-- 0
       0     6661        M 0x80001a20 add     a0, a0, a5             #; a0  = 0, a5  = 0, (wrb) a0  <-- 0
       0     6662        M 0x80001a24 mul     a5, a0, a6             #; a0  = 0, a6  = 10
       0     6665        M                                           #; (acc) a5  <-- 0x40f487b3
       0     6666        M 0x80001a28 sub     a5, s1, a5             #; s1  = 0, a5  = 0, (wrb) a5  <-- 0
       0     6667        M 0x80001a2c addi    a5, a5, 48             #; a5  = 0, (wrb) a5  <-- 48
       0     6668        M 0x80001a30 addi    s8, s0, 1              #; s0  = 7, (wrb) s8  <-- 8
       0     6669        M 0x80001a34 add     s0, a3, s0             #; a3  = 0x0011fe38, s0  = 7, (wrb) s0  <-- 0x0011fe3f
       0     6670        M 0x80001a38 addi    a2, s1, 9              #; s1  = 0, (wrb) a2  <-- 9
       0     6671        M 0x80001a3c sb      a5, 0(s0)              #; s0  = 0x0011fe3f, 48 ~~> Byte[0x0011fe3f]
       0     6672        M 0x80001a40 mv      s0, s8                 #; s8  = 8, (wrb) s0  <-- 8
       0     6673        M 0x80001a44 mv      s1, a0                 #; a0  = 0, (wrb) s1  <-- 0
       0     6674        M 0x80001a48 bltu    a4, a2, pc - 56        #; a4  = 18, a2  = 9, not taken
       0     6675        M 0x80001a4c j       pc + 0x8               #; goto 0x80001a54
       0     6678        M 0x80001a54 andi    s1, s5, 3              #; s5  = 0, (wrb) s1  <-- 0
       0     6679        M 0x80001a58 li      a0, 1                  #; (wrb) a0  <-- 1
       0     6680        M 0x80001a5c bne     s1, a0, pc + 108       #; s1  = 0, a0  = 1, taken, goto 0x80001ac8
       0     6683        M 0x80001ac8 li      a0, 31                 #; (wrb) a0  <-- 31
       0     6684        M 0x80001acc bltu    a0, s8, pc + 84        #; a0  = 31, s8  = 8, not taken
       0     6686        M 0x80001ad0 beqz    s9, pc + 24            #; s9  = 0, taken, goto 0x80001ae8
       0     6689        M 0x80001ae8 andi    a0, s5, 4              #; s5  = 0, (wrb) a0  <-- 0
       0     6690        M 0x80001aec bnez    a0, pc + 32            #; a0  = 0, not taken
       0     6692        M 0x80001af0 andi    a0, s5, 8              #; s5  = 0, (wrb) a0  <-- 0
       0     6693        M 0x80001af4 beqz    a0, pc + 44            #; a0  = 0, taken, goto 0x80001b20
       0     6697        M 0x80001b20 snez    a0, s1                 #; s1  = 0, (wrb) a0  <-- 0
       0     6698        M 0x80001b24 sltu    a1, s8, s2             #; s8  = 8, s2  = 0, (wrb) a1  <-- 0
       0     6699        M 0x80001b28 xori    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
       0     6700        M 0x80001b2c or      a0, a0, a1             #; a0  = 0, a1  = 1, (wrb) a0  <-- 1
       0     6701        M 0x80001b30 andi    s5, s5, 2              #; s5  = 0, (wrb) s5  <-- 0
       0     6702        M 0x80001b34 mv      s0, s4                 #; s4  = 8, (wrb) s0  <-- 8
       0     6703        M 0x80001b38 bnez    a0, pc + 44            #; a0  = 1, taken, goto 0x80001b64
       0     6715        M 0x80001b64 srli    s5, s5, 1              #; s5  = 0, (wrb) s5  <-- 0
       0     6716        M 0x80001b68 beqz    s8, pc + 56            #; s8  = 8, not taken
       0     6717        M 0x80001b6c addi    s9, sp, 7              #; sp  = 0x0011fe30, (wrb) s9  <-- 0x0011fe37
       0     6727        M 0x80001b70 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 8, (wrb) a0  <-- 0x0011fe3f
       0     6728        M 0x80001b74 lbu     a0, 0(a0)              #; a0  = 0x0011fe3f, a0  <~~ Byte[0x0011fe3f]
       0     6729        M 0x80001b78 addi    s10, s8, -1            #; s8  = 8, (wrb) s10 <-- 7
       0     6730        M 0x80001b7c addi    s1, s0, 1              #; s0  = 8, (wrb) s1  <-- 9
       0     6731        M 0x80001b80 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     6732        M 0x80001b84 mv      a2, s0                 #; s0  = 8, (wrb) a2  <-- 8
       0     6733        M 0x80001b88 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     6734        M 0x80001b8c jalr    s7                     #; s7  = 0x800014a4, (wrb) ra  <-- 0x80001b90, goto 0x800014a4
       0     6735        M                                           #; (lsu) a0  <-- 48
       0     6737        M 0x800014a4 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     6738        M 0x800014a8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6739        M 0x800014ac li      a2, 1096               #; (wrb) a2  <-- 1096
       0     6740        M 0x800014b0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     6741        M 0x800014b4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800034b4
       0     6742        M 0x800014b8 addi    a3, a3, -1504          #; a3  = 0x800034b4, (wrb) a3  <-- 0x80002ed4
       0     6743        M                                           #; (acc) a1  <-- 0x00d605b3
       0     6744        M 0x800014bc add     a1, a2, a3             #; a2  = 0, a3  = 0x80002ed4, (wrb) a1  <-- 0x80002ed4
       0     6745        M 0x800014c0 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
       0     6756        M                                           #; (lsu) a4  <-- 8
       0     6757        M 0x800014c4 addi    a5, a4, 1              #; a4  = 8, (wrb) a5  <-- 9
       0     6758        M 0x800014c8 sw      a5, 0(a1)              #; a1  = 0x80002ed4, 9 ~~> Word[0x80002ed4]
       0     6759        M 0x800014cc add     a4, a1, a4             #; a1  = 0x80002ed4, a4  = 8, (wrb) a4  <-- 0x80002edc
       0     6760        M 0x800014d0 sb      a0, 72(a4)             #; a4  = 0x80002edc, 48 ~~> Byte[0x80002f24]
       0     6761        M 0x800014d4 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
       0     6782        M                                           #; (lsu) a4  <-- 9
       0     6783        M 0x800014d8 addi    a4, a4, -1020          #; a4  = 9, (wrb) a4  <-- -1011
       0     6784        M 0x800014dc snez    a4, a4                 #; a4  = -1011, (wrb) a4  <-- 1
       0     6785        M 0x800014e0 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     6786        M 0x800014e4 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     6787        M 0x800014e8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     6788        M 0x800014ec bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000154c
       0     6791        M 0x8000154c ret                            #; ra  = 0x80001b90, goto 0x80001b90
       0     6796        M 0x80001b90 mv      s0, s1                 #; s1  = 9, (wrb) s0  <-- 9
       0     6797        M 0x80001b94 mv      s8, s10                #; s10 = 7, (wrb) s8  <-- 7
       0     6798        M 0x80001b98 bnez    s10, pc - 40           #; s10 = 7, taken, goto 0x80001b70
       0     6799        M 0x80001b70 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 7, (wrb) a0  <-- 0x0011fe3e
       0     6800        M 0x80001b74 lbu     a0, 0(a0)              #; a0  = 0x0011fe3e, a0  <~~ Byte[0x0011fe3e]
       0     6801        M 0x80001b78 addi    s10, s8, -1            #; s8  = 7, (wrb) s10 <-- 6
       0     6802        M 0x80001b7c addi    s1, s0, 1              #; s0  = 9, (wrb) s1  <-- 10
       0     6803        M 0x80001b80 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     6804        M 0x80001b84 mv      a2, s0                 #; s0  = 9, (wrb) a2  <-- 9
       0     6805        M 0x80001b88 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     6806        M 0x80001b8c jalr    s7                     #; s7  = 0x800014a4, (wrb) ra  <-- 0x80001b90, goto 0x800014a4
       0     6807        M                                           #; (lsu) a0  <-- 46
       0     6809        M 0x800014a4 beqz    a0, pc + 168           #; a0  = 46, not taken
       0     6810        M 0x800014a8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6811        M 0x800014ac li      a2, 1096               #; (wrb) a2  <-- 1096
       0     6812        M 0x800014b0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     6813        M 0x800014b4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800034b4
       0     6814        M 0x800014b8 addi    a3, a3, -1504          #; a3  = 0x800034b4, (wrb) a3  <-- 0x80002ed4
       0     6815        M                                           #; (acc) a1  <-- 0x00d605b3
       0     6816        M 0x800014bc add     a1, a2, a3             #; a2  = 0, a3  = 0x80002ed4, (wrb) a1  <-- 0x80002ed4
       0     6817        M 0x800014c0 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
       0     6828        M                                           #; (lsu) a4  <-- 9
       0     6829        M 0x800014c4 addi    a5, a4, 1              #; a4  = 9, (wrb) a5  <-- 10
       0     6830        M 0x800014c8 sw      a5, 0(a1)              #; a1  = 0x80002ed4, 10 ~~> Word[0x80002ed4]
       0     6831        M 0x800014cc add     a4, a1, a4             #; a1  = 0x80002ed4, a4  = 9, (wrb) a4  <-- 0x80002edd
       0     6832        M 0x800014d0 sb      a0, 72(a4)             #; a4  = 0x80002edd, 46 ~~> Byte[0x80002f25]
       0     6833        M 0x800014d4 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
       0     6854        M                                           #; (lsu) a4  <-- 10
       0     6855        M 0x800014d8 addi    a4, a4, -1020          #; a4  = 10, (wrb) a4  <-- -1010
       0     6856        M 0x800014dc snez    a4, a4                 #; a4  = -1010, (wrb) a4  <-- 1
       0     6857        M 0x800014e0 addi    a0, a0, -10            #; a0  = 46, (wrb) a0  <-- 36
       0     6858        M 0x800014e4 snez    a0, a0                 #; a0  = 36, (wrb) a0  <-- 1
       0     6859        M 0x800014e8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     6860        M 0x800014ec bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000154c
       0     6863        M 0x8000154c ret                            #; ra  = 0x80001b90, goto 0x80001b90
       0     6868        M 0x80001b90 mv      s0, s1                 #; s1  = 10, (wrb) s0  <-- 10
       0     6869        M 0x80001b94 mv      s8, s10                #; s10 = 6, (wrb) s8  <-- 6
       0     6870        M 0x80001b98 bnez    s10, pc - 40           #; s10 = 6, taken, goto 0x80001b70
       0     6871        M 0x80001b70 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 6, (wrb) a0  <-- 0x0011fe3d
       0     6872        M 0x80001b74 lbu     a0, 0(a0)              #; a0  = 0x0011fe3d, a0  <~~ Byte[0x0011fe3d]
       0     6873        M 0x80001b78 addi    s10, s8, -1            #; s8  = 6, (wrb) s10 <-- 5
       0     6874        M 0x80001b7c addi    s1, s0, 1              #; s0  = 10, (wrb) s1  <-- 11
       0     6875        M 0x80001b80 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     6876        M 0x80001b84 mv      a2, s0                 #; s0  = 10, (wrb) a2  <-- 10
       0     6877        M 0x80001b88 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     6878        M 0x80001b8c jalr    s7                     #; s7  = 0x800014a4, (wrb) ra  <-- 0x80001b90, goto 0x800014a4
       0     6879        M                                           #; (lsu) a0  <-- 48
       0     6881        M 0x800014a4 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     6882        M 0x800014a8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6883        M 0x800014ac li      a2, 1096               #; (wrb) a2  <-- 1096
       0     6884        M 0x800014b0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     6885        M 0x800014b4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800034b4
       0     6886        M 0x800014b8 addi    a3, a3, -1504          #; a3  = 0x800034b4, (wrb) a3  <-- 0x80002ed4
       0     6887        M                                           #; (acc) a1  <-- 0x00d605b3
       0     6888        M 0x800014bc add     a1, a2, a3             #; a2  = 0, a3  = 0x80002ed4, (wrb) a1  <-- 0x80002ed4
       0     6889        M 0x800014c0 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
       0     6900        M                                           #; (lsu) a4  <-- 10
       0     6901        M 0x800014c4 addi    a5, a4, 1              #; a4  = 10, (wrb) a5  <-- 11
       0     6902        M 0x800014c8 sw      a5, 0(a1)              #; a1  = 0x80002ed4, 11 ~~> Word[0x80002ed4]
       0     6903        M 0x800014cc add     a4, a1, a4             #; a1  = 0x80002ed4, a4  = 10, (wrb) a4  <-- 0x80002ede
       0     6904        M 0x800014d0 sb      a0, 72(a4)             #; a4  = 0x80002ede, 48 ~~> Byte[0x80002f26]
       0     6905        M 0x800014d4 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
       0     6926        M                                           #; (lsu) a4  <-- 11
       0     6927        M 0x800014d8 addi    a4, a4, -1020          #; a4  = 11, (wrb) a4  <-- -1009
       0     6928        M 0x800014dc snez    a4, a4                 #; a4  = -1009, (wrb) a4  <-- 1
       0     6929        M 0x800014e0 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     6930        M 0x800014e4 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     6931        M 0x800014e8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     6932        M 0x800014ec bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000154c
       0     6935        M 0x8000154c ret                            #; ra  = 0x80001b90, goto 0x80001b90
       0     6940        M 0x80001b90 mv      s0, s1                 #; s1  = 11, (wrb) s0  <-- 11
       0     6941        M 0x80001b94 mv      s8, s10                #; s10 = 5, (wrb) s8  <-- 5
       0     6942        M 0x80001b98 bnez    s10, pc - 40           #; s10 = 5, taken, goto 0x80001b70
       0     6943        M 0x80001b70 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 5, (wrb) a0  <-- 0x0011fe3c
       0     6944        M 0x80001b74 lbu     a0, 0(a0)              #; a0  = 0x0011fe3c, a0  <~~ Byte[0x0011fe3c]
       0     6945        M 0x80001b78 addi    s10, s8, -1            #; s8  = 5, (wrb) s10 <-- 4
       0     6946        M 0x80001b7c addi    s1, s0, 1              #; s0  = 11, (wrb) s1  <-- 12
       0     6947        M 0x80001b80 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     6948        M 0x80001b84 mv      a2, s0                 #; s0  = 11, (wrb) a2  <-- 11
       0     6949        M 0x80001b88 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     6950        M 0x80001b8c jalr    s7                     #; s7  = 0x800014a4, (wrb) ra  <-- 0x80001b90, goto 0x800014a4
       0     6951        M                                           #; (lsu) a0  <-- 48
       0     6953        M 0x800014a4 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     6954        M 0x800014a8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6955        M 0x800014ac li      a2, 1096               #; (wrb) a2  <-- 1096
       0     6956        M 0x800014b0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     6957        M 0x800014b4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800034b4
       0     6958        M 0x800014b8 addi    a3, a3, -1504          #; a3  = 0x800034b4, (wrb) a3  <-- 0x80002ed4
       0     6959        M                                           #; (acc) a1  <-- 0x00d605b3
       0     6960        M 0x800014bc add     a1, a2, a3             #; a2  = 0, a3  = 0x80002ed4, (wrb) a1  <-- 0x80002ed4
       0     6961        M 0x800014c0 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
       0     6972        M                                           #; (lsu) a4  <-- 11
       0     6973        M 0x800014c4 addi    a5, a4, 1              #; a4  = 11, (wrb) a5  <-- 12
       0     6974        M 0x800014c8 sw      a5, 0(a1)              #; a1  = 0x80002ed4, 12 ~~> Word[0x80002ed4]
       0     6975        M 0x800014cc add     a4, a1, a4             #; a1  = 0x80002ed4, a4  = 11, (wrb) a4  <-- 0x80002edf
       0     6976        M 0x800014d0 sb      a0, 72(a4)             #; a4  = 0x80002edf, 48 ~~> Byte[0x80002f27]
       0     6977        M 0x800014d4 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
       0     6998        M                                           #; (lsu) a4  <-- 12
       0     6999        M 0x800014d8 addi    a4, a4, -1020          #; a4  = 12, (wrb) a4  <-- -1008
       0     7000        M 0x800014dc snez    a4, a4                 #; a4  = -1008, (wrb) a4  <-- 1
       0     7001        M 0x800014e0 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     7002        M 0x800014e4 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     7003        M 0x800014e8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     7004        M 0x800014ec bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000154c
       0     7007        M 0x8000154c ret                            #; ra  = 0x80001b90, goto 0x80001b90
       0     7012        M 0x80001b90 mv      s0, s1                 #; s1  = 12, (wrb) s0  <-- 12
       0     7013        M 0x80001b94 mv      s8, s10                #; s10 = 4, (wrb) s8  <-- 4
       0     7014        M 0x80001b98 bnez    s10, pc - 40           #; s10 = 4, taken, goto 0x80001b70
       0     7015        M 0x80001b70 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 4, (wrb) a0  <-- 0x0011fe3b
       0     7016        M 0x80001b74 lbu     a0, 0(a0)              #; a0  = 0x0011fe3b, a0  <~~ Byte[0x0011fe3b]
       0     7017        M 0x80001b78 addi    s10, s8, -1            #; s8  = 4, (wrb) s10 <-- 3
       0     7018        M 0x80001b7c addi    s1, s0, 1              #; s0  = 12, (wrb) s1  <-- 13
       0     7019        M 0x80001b80 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     7020        M 0x80001b84 mv      a2, s0                 #; s0  = 12, (wrb) a2  <-- 12
       0     7021        M 0x80001b88 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     7022        M 0x80001b8c jalr    s7                     #; s7  = 0x800014a4, (wrb) ra  <-- 0x80001b90, goto 0x800014a4
       0     7023        M                                           #; (lsu) a0  <-- 48
       0     7025        M 0x800014a4 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     7026        M 0x800014a8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     7027        M 0x800014ac li      a2, 1096               #; (wrb) a2  <-- 1096
       0     7028        M 0x800014b0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     7029        M 0x800014b4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800034b4
       0     7030        M 0x800014b8 addi    a3, a3, -1504          #; a3  = 0x800034b4, (wrb) a3  <-- 0x80002ed4
       0     7031        M                                           #; (acc) a1  <-- 0x00d605b3
       0     7032        M 0x800014bc add     a1, a2, a3             #; a2  = 0, a3  = 0x80002ed4, (wrb) a1  <-- 0x80002ed4
       0     7033        M 0x800014c0 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
       0     7044        M                                           #; (lsu) a4  <-- 12
       0     7045        M 0x800014c4 addi    a5, a4, 1              #; a4  = 12, (wrb) a5  <-- 13
       0     7046        M 0x800014c8 sw      a5, 0(a1)              #; a1  = 0x80002ed4, 13 ~~> Word[0x80002ed4]
       0     7047        M 0x800014cc add     a4, a1, a4             #; a1  = 0x80002ed4, a4  = 12, (wrb) a4  <-- 0x80002ee0
       0     7048        M 0x800014d0 sb      a0, 72(a4)             #; a4  = 0x80002ee0, 48 ~~> Byte[0x80002f28]
       0     7049        M 0x800014d4 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
       0     7070        M                                           #; (lsu) a4  <-- 13
       0     7071        M 0x800014d8 addi    a4, a4, -1020          #; a4  = 13, (wrb) a4  <-- -1007
       0     7072        M 0x800014dc snez    a4, a4                 #; a4  = -1007, (wrb) a4  <-- 1
       0     7073        M 0x800014e0 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     7074        M 0x800014e4 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     7075        M 0x800014e8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     7076        M 0x800014ec bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000154c
       0     7079        M 0x8000154c ret                            #; ra  = 0x80001b90, goto 0x80001b90
       0     7084        M 0x80001b90 mv      s0, s1                 #; s1  = 13, (wrb) s0  <-- 13
       0     7085        M 0x80001b94 mv      s8, s10                #; s10 = 3, (wrb) s8  <-- 3
       0     7086        M 0x80001b98 bnez    s10, pc - 40           #; s10 = 3, taken, goto 0x80001b70
       0     7087        M 0x80001b70 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 3, (wrb) a0  <-- 0x0011fe3a
       0     7088        M 0x80001b74 lbu     a0, 0(a0)              #; a0  = 0x0011fe3a, a0  <~~ Byte[0x0011fe3a]
       0     7089        M 0x80001b78 addi    s10, s8, -1            #; s8  = 3, (wrb) s10 <-- 2
       0     7090        M 0x80001b7c addi    s1, s0, 1              #; s0  = 13, (wrb) s1  <-- 14
       0     7091        M 0x80001b80 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     7092        M 0x80001b84 mv      a2, s0                 #; s0  = 13, (wrb) a2  <-- 13
       0     7093        M 0x80001b88 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     7094        M 0x80001b8c jalr    s7                     #; s7  = 0x800014a4, (wrb) ra  <-- 0x80001b90, goto 0x800014a4
       0     7095        M                                           #; (lsu) a0  <-- 48
       0     7097        M 0x800014a4 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     7098        M 0x800014a8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     7099        M 0x800014ac li      a2, 1096               #; (wrb) a2  <-- 1096
       0     7100        M 0x800014b0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     7101        M 0x800014b4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800034b4
       0     7102        M 0x800014b8 addi    a3, a3, -1504          #; a3  = 0x800034b4, (wrb) a3  <-- 0x80002ed4
       0     7103        M                                           #; (acc) a1  <-- 0x00d605b3
       0     7104        M 0x800014bc add     a1, a2, a3             #; a2  = 0, a3  = 0x80002ed4, (wrb) a1  <-- 0x80002ed4
       0     7105        M 0x800014c0 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
       0     7116        M                                           #; (lsu) a4  <-- 13
       0     7117        M 0x800014c4 addi    a5, a4, 1              #; a4  = 13, (wrb) a5  <-- 14
       0     7118        M 0x800014c8 sw      a5, 0(a1)              #; a1  = 0x80002ed4, 14 ~~> Word[0x80002ed4]
       0     7119        M 0x800014cc add     a4, a1, a4             #; a1  = 0x80002ed4, a4  = 13, (wrb) a4  <-- 0x80002ee1
       0     7120        M 0x800014d0 sb      a0, 72(a4)             #; a4  = 0x80002ee1, 48 ~~> Byte[0x80002f29]
       0     7121        M 0x800014d4 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
       0     7142        M                                           #; (lsu) a4  <-- 14
       0     7143        M 0x800014d8 addi    a4, a4, -1020          #; a4  = 14, (wrb) a4  <-- -1006
       0     7144        M 0x800014dc snez    a4, a4                 #; a4  = -1006, (wrb) a4  <-- 1
       0     7145        M 0x800014e0 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     7146        M 0x800014e4 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     7147        M 0x800014e8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     7148        M 0x800014ec bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000154c
       0     7151        M 0x8000154c ret                            #; ra  = 0x80001b90, goto 0x80001b90
       0     7156        M 0x80001b90 mv      s0, s1                 #; s1  = 14, (wrb) s0  <-- 14
       0     7157        M 0x80001b94 mv      s8, s10                #; s10 = 2, (wrb) s8  <-- 2
       0     7158        M 0x80001b98 bnez    s10, pc - 40           #; s10 = 2, taken, goto 0x80001b70
       0     7159        M 0x80001b70 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 2, (wrb) a0  <-- 0x0011fe39
       0     7160        M 0x80001b74 lbu     a0, 0(a0)              #; a0  = 0x0011fe39, a0  <~~ Byte[0x0011fe39]
       0     7161        M 0x80001b78 addi    s10, s8, -1            #; s8  = 2, (wrb) s10 <-- 1
       0     7162        M 0x80001b7c addi    s1, s0, 1              #; s0  = 14, (wrb) s1  <-- 15
       0     7163        M 0x80001b80 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     7164        M 0x80001b84 mv      a2, s0                 #; s0  = 14, (wrb) a2  <-- 14
       0     7165        M 0x80001b88 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     7166        M 0x80001b8c jalr    s7                     #; s7  = 0x800014a4, (wrb) ra  <-- 0x80001b90, goto 0x800014a4
       0     7167        M                                           #; (lsu) a0  <-- 48
       0     7169        M 0x800014a4 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     7170        M 0x800014a8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     7171        M 0x800014ac li      a2, 1096               #; (wrb) a2  <-- 1096
       0     7172        M 0x800014b0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     7173        M 0x800014b4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800034b4
       0     7174        M 0x800014b8 addi    a3, a3, -1504          #; a3  = 0x800034b4, (wrb) a3  <-- 0x80002ed4
       0     7175        M                                           #; (acc) a1  <-- 0x00d605b3
       0     7176        M 0x800014bc add     a1, a2, a3             #; a2  = 0, a3  = 0x80002ed4, (wrb) a1  <-- 0x80002ed4
       0     7177        M 0x800014c0 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
       0     7188        M                                           #; (lsu) a4  <-- 14
       0     7189        M 0x800014c4 addi    a5, a4, 1              #; a4  = 14, (wrb) a5  <-- 15
       0     7190        M 0x800014c8 sw      a5, 0(a1)              #; a1  = 0x80002ed4, 15 ~~> Word[0x80002ed4]
       0     7191        M 0x800014cc add     a4, a1, a4             #; a1  = 0x80002ed4, a4  = 14, (wrb) a4  <-- 0x80002ee2
       0     7192        M 0x800014d0 sb      a0, 72(a4)             #; a4  = 0x80002ee2, 48 ~~> Byte[0x80002f2a]
       0     7193        M 0x800014d4 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
       0     7214        M                                           #; (lsu) a4  <-- 15
       0     7215        M 0x800014d8 addi    a4, a4, -1020          #; a4  = 15, (wrb) a4  <-- -1005
       0     7216        M 0x800014dc snez    a4, a4                 #; a4  = -1005, (wrb) a4  <-- 1
       0     7217        M 0x800014e0 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     7218        M 0x800014e4 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     7219        M 0x800014e8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     7220        M 0x800014ec bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000154c
       0     7223        M 0x8000154c ret                            #; ra  = 0x80001b90, goto 0x80001b90
       0     7228        M 0x80001b90 mv      s0, s1                 #; s1  = 15, (wrb) s0  <-- 15
       0     7229        M 0x80001b94 mv      s8, s10                #; s10 = 1, (wrb) s8  <-- 1
       0     7230        M 0x80001b98 bnez    s10, pc - 40           #; s10 = 1, taken, goto 0x80001b70
       0     7231        M 0x80001b70 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 1, (wrb) a0  <-- 0x0011fe38
       0     7232        M 0x80001b74 lbu     a0, 0(a0)              #; a0  = 0x0011fe38, a0  <~~ Byte[0x0011fe38]
       0     7233        M 0x80001b78 addi    s10, s8, -1            #; s8  = 1, (wrb) s10 <-- 0
       0     7234        M 0x80001b7c addi    s1, s0, 1              #; s0  = 15, (wrb) s1  <-- 16
       0     7235        M 0x80001b80 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     7236        M 0x80001b84 mv      a2, s0                 #; s0  = 15, (wrb) a2  <-- 15
       0     7237        M 0x80001b88 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     7238        M 0x80001b8c jalr    s7                     #; s7  = 0x800014a4, (wrb) ra  <-- 0x80001b90, goto 0x800014a4
       0     7239        M                                           #; (lsu) a0  <-- 48
       0     7241        M 0x800014a4 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     7242        M 0x800014a8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     7243        M 0x800014ac li      a2, 1096               #; (wrb) a2  <-- 1096
       0     7244        M 0x800014b0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     7245        M 0x800014b4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800034b4
       0     7246        M 0x800014b8 addi    a3, a3, -1504          #; a3  = 0x800034b4, (wrb) a3  <-- 0x80002ed4
       0     7247        M                                           #; (acc) a1  <-- 0x00d605b3
       0     7248        M 0x800014bc add     a1, a2, a3             #; a2  = 0, a3  = 0x80002ed4, (wrb) a1  <-- 0x80002ed4
       0     7249        M 0x800014c0 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
       0     7260        M                                           #; (lsu) a4  <-- 15
       0     7261        M 0x800014c4 addi    a5, a4, 1              #; a4  = 15, (wrb) a5  <-- 16
       0     7262        M 0x800014c8 sw      a5, 0(a1)              #; a1  = 0x80002ed4, 16 ~~> Word[0x80002ed4]
       0     7263        M 0x800014cc add     a4, a1, a4             #; a1  = 0x80002ed4, a4  = 15, (wrb) a4  <-- 0x80002ee3
       0     7264        M 0x800014d0 sb      a0, 72(a4)             #; a4  = 0x80002ee3, 48 ~~> Byte[0x80002f2b]
       0     7265        M 0x800014d4 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
       0     7286        M                                           #; (lsu) a4  <-- 16
       0     7287        M 0x800014d8 addi    a4, a4, -1020          #; a4  = 16, (wrb) a4  <-- -1004
       0     7288        M 0x800014dc snez    a4, a4                 #; a4  = -1004, (wrb) a4  <-- 1
       0     7289        M 0x800014e0 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     7290        M 0x800014e4 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     7291        M 0x800014e8 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     7292        M 0x800014ec bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x8000154c
       0     7295        M 0x8000154c ret                            #; ra  = 0x80001b90, goto 0x80001b90
       0     7300        M 0x80001b90 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
       0     7301        M 0x80001b94 mv      s8, s10                #; s10 = 0, (wrb) s8  <-- 0
       0     7302        M 0x80001b98 bnez    s10, pc - 40           #; s10 = 0, not taken
       0     7303        M 0x80001b9c j       pc + 0x8               #; goto 0x80001ba4
       0     7306        M 0x80001ba4 sub     a0, s1, s4             #; s1  = 16, s4  = 8, (wrb) a0  <-- 8
       0     7307        M 0x80001ba8 sltu    a0, a0, s2             #; a0  = 8, s2  = 0, (wrb) a0  <-- 0
       0     7308        M 0x80001bac xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0     7309        M 0x80001bb0 xori    a1, s5, 1              #; s5  = 0, (wrb) a1  <-- 1
       0     7310        M 0x80001bb4 or      a0, a1, a0             #; a1  = 1, a0  = 1, (wrb) a0  <-- 1
       0     7311        M 0x80001bb8 bnez    a0, pc + 48            #; a0  = 1, taken, goto 0x80001be8
       0     7314        M 0x80001be8 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
       0     7315        M 0x80001bec mv      a0, s0                 #; s0  = 16, (wrb) a0  <-- 16
       0     7319        M 0x80001bf0 fld     fs2, 40(sp)            #; fs2  <~~ Doub[0x0011fe58]
       0     7320        M 0x80001bfc lw      s10, 64(sp)            #; sp  = 0x0011fe30, s10 <~~ Word[0x0011fe70]
                         M 0x80001bf4 fld     fs1, 48(sp)            #; fs1  <~~ Doub[0x0011fe60], (f:lsu) fs2  <-- 0.0
       0     7321        M 0x80001bf8 fld     fs0, 56(sp)            #; fs0  <~~ Doub[0x0011fe68], (f:lsu) fs1  <-- 0.0
       0     7322        M                                           #; (f:lsu) fs0  <-- 570.0
       0     7324        M                                           #; (lsu) s10 <-- 0x80002b9b
       0     7325        M 0x80001c00 lw      s9, 68(sp)             #; sp  = 0x0011fe30, s9  <~~ Word[0x0011fe74]
       0     7328        M                                           #; (lsu) s9  <-- 8
       0     7329        M 0x80001c04 lw      s8, 72(sp)             #; sp  = 0x0011fe30, s8  <~~ Word[0x0011fe78]
       0     7332        M                                           #; (lsu) s8  <-- 16
       0     7333        M 0x80001c08 lw      s7, 76(sp)             #; sp  = 0x0011fe30, s7  <~~ Word[0x0011fe7c]
       0     7336        M                                           #; (lsu) s7  <-- 0
       0     7337        M 0x80001c0c lw      s6, 80(sp)             #; sp  = 0x0011fe30, s6  <~~ Word[0x0011fe80]
       0     7340        M                                           #; (lsu) s6  <-- 0
       0     7341        M 0x80001c10 lw      s5, 84(sp)             #; sp  = 0x0011fe30, s5  <~~ Word[0x0011fe84]
       0     7344        M                                           #; (lsu) s5  <-- -1
       0     7345        M 0x80001c14 lw      s4, 88(sp)             #; sp  = 0x0011fe30, s4  <~~ Word[0x0011fe88]
       0     7348        M                                           #; (lsu) s4  <-- 0x0011ff17
       0     7349        M 0x80001c18 lw      s3, 92(sp)             #; sp  = 0x0011fe30, s3  <~~ Word[0x0011fe8c]
       0     7352        M                                           #; (lsu) s3  <-- 0x0011ff30
       0     7353        M 0x80001c1c lw      s2, 96(sp)             #; sp  = 0x0011fe30, s2  <~~ Word[0x0011fe90]
       0     7356        M                                           #; (lsu) s2  <-- 0x800014a4
       0     7357        M 0x80001c20 lw      s1, 100(sp)            #; sp  = 0x0011fe30, s1  <~~ Word[0x0011fe94]
       0     7360        M                                           #; (lsu) s1  <-- 8
       0     7361        M 0x80001c24 lw      s0, 104(sp)            #; sp  = 0x0011fe30, s0  <~~ Word[0x0011fe98]
       0     7364        M                                           #; (lsu) s0  <-- 0
       0     7365        M 0x80001c28 lw      ra, 108(sp)            #; sp  = 0x0011fe30, ra  <~~ Word[0x0011fe9c]
       0     7366        M 0x80001c2c addi    sp, sp, 112            #; sp  = 0x0011fe30, (wrb) sp  <-- 0x0011fea0
       0     7368        M                                           #; (lsu) ra  <-- 0x80000bd4
       0     7369        M 0x80001c30 ret                            #; ra  = 0x80000bd4, goto 0x80000bd4
       0     7372        M 0x80000bd4 j       pc + 0x7c0             #; goto 0x80001394
       0     7375        M 0x80001394 mv      s8, a0                 #; a0  = 16, (wrb) s8  <-- 16
       0     7376        M 0x80001398 li      s6, 37                 #; (wrb) s6  <-- 37
       0     7377        M 0x8000139c li      s7, 46                 #; (wrb) s7  <-- 46
       0     7378        M 0x800013a0 addi    s0, s10, 1             #; s10 = 0x80002b9b, (wrb) s0  <-- 0x80002b9c
       0     7379        M 0x800013a4 j       pc - 0xa74             #; goto 0x80000930
       0     7381        M 0x80000930 addi    s10, s0, 2             #; s0  = 0x80002b9c, (wrb) s10 <-- 0x80002b9e
       0     7382        M 0x80000934 mv      s9, s8                 #; s8  = 16, (wrb) s9  <-- 16
       0     7383        M 0x80000938 li      s8, 10                 #; (wrb) s8  <-- 10
       0     7384        M 0x8000093c lbu     a0, 0(s0)              #; s0  = 0x80002b9c, a0  <~~ Byte[0x80002b9c]
       0     7395        M                                           #; (lsu) a0  <-- 10
       0     7396        M 0x80000940 beqz    a0, pc + 2824          #; a0  = 10, not taken
       0     7397        M 0x80000944 beq     a0, s6, pc + 48        #; a0  = 10, s6  = 37, not taken
       0     7398        M 0x80000948 addi    s1, s9, 1              #; s9  = 16, (wrb) s1  <-- 17
       0     7399        M 0x8000094c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     7400        M 0x80000950 mv      a2, s9                 #; s9  = 16, (wrb) a2  <-- 16
       0     7401        M 0x80000954 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     7402        M 0x80000958 jalr    s2                     #; s2  = 0x800014a4, (wrb) ra  <-- 0x8000095c, goto 0x800014a4
       0     7405        M 0x800014a4 beqz    a0, pc + 168           #; a0  = 10, not taken
       0     7406        M 0x800014a8 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     7407        M 0x800014ac li      a2, 1096               #; (wrb) a2  <-- 1096
       0     7408        M 0x800014b0 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     7409        M 0x800014b4 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800034b4
       0     7410        M 0x800014b8 addi    a3, a3, -1504          #; a3  = 0x800034b4, (wrb) a3  <-- 0x80002ed4
       0     7411        M                                           #; (acc) a1  <-- 0x00d605b3
       0     7412        M 0x800014bc add     a1, a2, a3             #; a2  = 0, a3  = 0x80002ed4, (wrb) a1  <-- 0x80002ed4
       0     7413        M 0x800014c0 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
       0     7424        M                                           #; (lsu) a4  <-- 16
       0     7425        M 0x800014c4 addi    a5, a4, 1              #; a4  = 16, (wrb) a5  <-- 17
       0     7426        M 0x800014c8 sw      a5, 0(a1)              #; a1  = 0x80002ed4, 17 ~~> Word[0x80002ed4]
       0     7427        M 0x800014cc add     a4, a1, a4             #; a1  = 0x80002ed4, a4  = 16, (wrb) a4  <-- 0x80002ee4
       0     7428        M 0x800014d0 sb      a0, 72(a4)             #; a4  = 0x80002ee4, 10 ~~> Byte[0x80002f2c]
       0     7429        M 0x800014d4 lw      a4, 0(a1)              #; a1  = 0x80002ed4, a4  <~~ Word[0x80002ed4]
       0     7450        M                                           #; (lsu) a4  <-- 17
       0     7451        M 0x800014d8 addi    a4, a4, -1020          #; a4  = 17, (wrb) a4  <-- -1003
       0     7452        M 0x800014dc snez    a4, a4                 #; a4  = -1003, (wrb) a4  <-- 1
       0     7453        M 0x800014e0 addi    a0, a0, -10            #; a0  = 10, (wrb) a0  <-- 0
       0     7454        M 0x800014e4 snez    a0, a0                 #; a0  = 0, (wrb) a0  <-- 0
       0     7455        M 0x800014e8 and     a0, a0, a4             #; a0  = 0, a4  = 1, (wrb) a0  <-- 0
       0     7456        M 0x800014ec bnez    a0, pc + 96            #; a0  = 0, not taken
       0     7457        M 0x800014f0 add     a0, a3, a2             #; a3  = 0x80002ed4, a2  = 0, (wrb) a0  <-- 0x80002ed4
       0     7458        M 0x800014f4 addi    a2, a0, 72             #; a0  = 0x80002ed4, (wrb) a2  <-- 0x80002f1c
       0     7459        M 0x800014f8 sw      zero, 12(a0)           #; a0  = 0x80002ed4, 0 ~~> Word[0x80002ee0]
       0     7460        M 0x800014fc li      a3, 64                 #; (wrb) a3  <-- 64
       0     7461        M 0x80001500 sw      a3, 8(a0)              #; a0  = 0x80002ed4, 64 ~~> Word[0x80002edc]
       0     7462        M 0x80001504 sw      zero, 20(a0)           #; a0  = 0x80002ed4, 0 ~~> Word[0x80002ee8]
       0     7463        M 0x80001508 li      a3, 1                  #; (wrb) a3  <-- 1
       0     7464        M 0x8000150c sw      a3, 16(a0)             #; a0  = 0x80002ed4, 1 ~~> Word[0x80002ee4]
       0     7473        M 0x80001510 sw      zero, 28(a0)           #; a0  = 0x80002ed4, 0 ~~> Word[0x80002ef0]
       0     7475        M 0x80001514 sw      a2, 24(a0)             #; a0  = 0x80002ed4, 0x80002f1c ~~> Word[0x80002eec]
       0     7485        M 0x80001518 lw      a2, 0(a1)              #; a1  = 0x80002ed4, a2  <~~ Word[0x80002ed4]
       0     7486        M 0x8000151c addi    a3, a0, 8              #; a0  = 0x80002ed4, (wrb) a3  <-- 0x80002edc
       0     7487        M 0x80001520 sw      zero, 36(a0)           #; a0  = 0x80002ed4, 0 ~~> Word[0x80002ef8]
       0     7507        M                                           #; (lsu) a2  <-- 17
       0     7508        M 0x80001524 sw      a2, 32(a0)             #; a0  = 0x80002ed4, 17 ~~> Word[0x80002ef4]
       0     7509        M 0x80001528 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003528
       0     7510        M 0x8000152c addi    a0, a0, -1896          #; a0  = 0x80003528, (wrb) a0  <-- 0x80002dc0
       0     7511        M 0x80001530 sw      a3, 0(a0)              #; a0  = 0x80002dc0, 0x80002edc ~~> Word[0x80002dc0]
       0     7512        M 0x80001534 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003534
       0     7513        M 0x80001538 addi    a0, a0, -1844          #; a0  = 0x80003534, (wrb) a0  <-- 0x80002e00
       0     7514        M 0x8000153c lw      a2, 0(a0)              #; a0  = 0x80002e00, a2  <~~ Word[0x80002e00]
       0     7537        M                                           #; (lsu) a2  <-- 0
       0     7538        M 0x80001540 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x8000153c
       0     7539        M 0x8000153c lw      a2, 0(a0)              #; a0  = 0x80002e00, a2  <~~ Word[0x80002e00]
       0     7550        M                                           #; (lsu) a2  <-- 0
       0     7551        M 0x80001540 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x8000153c
       0     7552        M 0x8000153c lw      a2, 0(a0)              #; a0  = 0x80002e00, a2  <~~ Word[0x80002e00]
       0     7563        M                                           #; (lsu) a2  <-- 0
       0     7564        M 0x80001540 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x8000153c
       0     7565        M 0x8000153c lw      a2, 0(a0)              #; a0  = 0x80002e00, a2  <~~ Word[0x80002e00]
       0     7576        M                                           #; (lsu) a2  <-- 0
       0     7577        M 0x80001540 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x8000153c
       0     7578        M 0x8000153c lw      a2, 0(a0)              #; a0  = 0x80002e00, a2  <~~ Word[0x80002e00]
       0     7589        M                                           #; (lsu) a2  <-- 0
       0     7590        M 0x80001540 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x8000153c
       0     7591        M 0x8000153c lw      a2, 0(a0)              #; a0  = 0x80002e00, a2  <~~ Word[0x80002e00]
       0     7602        M                                           #; (lsu) a2  <-- 0
       0     7603        M 0x80001540 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x8000153c
       0     7604        M 0x8000153c lw      a2, 0(a0)              #; a0  = 0x80002e00, a2  <~~ Word[0x80002e00]
       0     7615        M                                           #; (lsu) a2  <-- 1
       0     7616        M 0x80001540 beqz    a2, pc - 4             #; a2  = 1, not taken
       0     7617        M 0x80001544 sw      zero, 0(a0)            #; a0  = 0x80002e00, 0 ~~> Word[0x80002e00]
       0     7618        M 0x80001548 sw      zero, 0(a1)            #; a1  = 0x80002ed4, 0 ~~> Word[0x80002ed4]
       0     7619        M 0x8000154c ret                            #; ra  = 0x8000095c, goto 0x8000095c
       0     7622        M 0x8000095c addi    s0, s0, 1              #; s0  = 0x80002b9c, (wrb) s0  <-- 0x80002b9d
       0     7625        M 0x80000960 addi    s10, s10, 1            #; s10 = 0x80002b9e, (wrb) s10 <-- 0x80002b9f
       0     7626        M 0x80000964 mv      s9, s1                 #; s1  = 17, (wrb) s9  <-- 17
       0     7627        M 0x80000968 lbu     a0, 0(s0)              #; s0  = 0x80002b9d, a0  <~~ Byte[0x80002b9d]
       0     7640        M                                           #; (lsu) a0  <-- 0
       0     7641        M 0x8000096c bnez    a0, pc - 40            #; a0  = 0, not taken
       0     7644        M 0x80000970 j       pc + 0xad8             #; goto 0x80001448
       0     7647        M 0x80001448 mv      a2, s9                 #; s9  = 17, (wrb) a2  <-- 17
       0     7648        M 0x8000144c bltu    s9, s5, pc + 8         #; s9  = 17, s5  = -1, taken, goto 0x80001454
       0     7650        M 0x80001454 li      a0, 0                  #; (wrb) a0  <-- 0
       0     7651        M 0x80001458 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     7652        M 0x8000145c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     7653        M 0x80001460 jalr    s2                     #; s2  = 0x800014a4, (wrb) ra  <-- 0x80001464, goto 0x800014a4
       0     7658        M 0x800014a4 beqz    a0, pc + 168           #; a0  = 0, taken, goto 0x8000154c
       0     7663        M 0x8000154c ret                            #; ra  = 0x80001464, goto 0x80001464
       0     7664        M 0x80001464 mv      a0, s9                 #; s9  = 17, (wrb) a0  <-- 17
       0     7665        M 0x80001468 lw      s11, 60(sp)            #; sp  = 0x0011fea0, s11 <~~ Word[0x0011fedc]
       0     7668        M                                           #; (lsu) s11 <-- 0
       0     7669        M 0x8000146c lw      s10, 64(sp)            #; sp  = 0x0011fea0, s10 <~~ Word[0x0011fee0]
       0     7672        M                                           #; (lsu) s10 <-- 0
       0     7673        M 0x80001470 lw      s9, 68(sp)             #; sp  = 0x0011fea0, s9  <~~ Word[0x0011fee4]
       0     7676        M                                           #; (lsu) s9  <-- 0
       0     7677        M 0x80001474 lw      s8, 72(sp)             #; sp  = 0x0011fea0, s8  <~~ Word[0x0011fee8]
       0     7680        M                                           #; (lsu) s8  <-- 0
       0     7681        M 0x80001478 lw      s7, 76(sp)             #; sp  = 0x0011fea0, s7  <~~ Word[0x0011feec]
       0     7684        M                                           #; (lsu) s7  <-- 0
       0     7685        M 0x8000147c lw      s6, 80(sp)             #; sp  = 0x0011fea0, s6  <~~ Word[0x0011fef0]
       0     7688        M                                           #; (lsu) s6  <-- 0
       0     7689        M 0x80001480 lw      s5, 84(sp)             #; sp  = 0x0011fea0, s5  <~~ Word[0x0011fef4]
       0     7692        M                                           #; (lsu) s5  <-- 0
       0     7693        M 0x80001484 lw      s4, 88(sp)             #; sp  = 0x0011fea0, s4  <~~ Word[0x0011fef8]
       0     7696        M                                           #; (lsu) s4  <-- 0
       0     7697        M 0x80001488 lw      s3, 92(sp)             #; sp  = 0x0011fea0, s3  <~~ Word[0x0011fefc]
       0     7700        M                                           #; (lsu) s3  <-- 0
       0     7701        M 0x8000148c lw      s2, 96(sp)             #; sp  = 0x0011fea0, s2  <~~ Word[0x0011ff00]
       0     7704        M                                           #; (lsu) s2  <-- 0
       0     7705        M 0x80001490 lw      s1, 100(sp)            #; sp  = 0x0011fea0, s1  <~~ Word[0x0011ff04]
       0     7708        M                                           #; (lsu) s1  <-- 0
       0     7709        M 0x80001494 lw      s0, 104(sp)            #; sp  = 0x0011fea0, s0  <~~ Word[0x0011ff08]
       0     7712        M                                           #; (lsu) s0  <-- 0
       0     7713        M 0x80001498 lw      ra, 108(sp)            #; sp  = 0x0011fea0, ra  <~~ Word[0x0011ff0c]
       0     7714        M 0x8000149c addi    sp, sp, 112            #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011ff10
       0     7716        M                                           #; (lsu) ra  <-- 0x800008a0
       0     7717        M 0x800014a0 ret                            #; ra  = 0x800008a0, goto 0x800008a0
       0     7720        M 0x800008a0 lw      ra, 12(sp)             #; sp  = 0x0011ff10, ra  <~~ Word[0x0011ff1c]
       0     7721        M 0x800008a4 addi    sp, sp, 48             #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011ff40
       0     7723        M                                           #; (lsu) ra  <-- 0x80000830
       0     7724        M 0x800008a8 ret                            #; ra  = 0x80000830, goto 0x80000830
       0     7727        M 0x80000830 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002830
       0     7728        M 0x80000834 addi    a0, a0, 1520           #; a0  = 0x80002830, (wrb) a0  <-- 0x80002e20
       0     7731        M 0x80000838 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002e20]
       0     7740        M 0x80000844 lw      ra, 28(sp)             #; sp  = 0x0011ff40, ra  <~~ Word[0x0011ff5c]
                         M                                           #; (f:lsu) ft0  <-- 0.0001
       0     7741        M 0x80000848 addi    sp, sp, 32             #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff60
                         M 0x8000083c flt.d   a0, ft0, fs0           #; ft0  = 0.0001, fs0  = 570.0
       0     7743        M                                           #; (lsu) ra  <-- 0x80002900
                         M 0x80000840 fld     fs0, 16(sp)            #; fs0  <~~ Doub[0x0011ff50]
       0     7744        M 0x8000084c ret                            #; ra  = 0x80002900, goto 0x80002900
                         M                                           #; (f:lsu) fs0  <-- 0.0
       0     7756        M 0x80002900 mv      s0, a0                 #; a0  = 1, (wrb) s0  <-- 1
       0     7757        M 0x80002904 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002904
       0     7758        M 0x80002908 jalr    ra, ra, 524            #; ra  = 0x80002904, (wrb) ra  <-- 0x8000290c, goto 0x80002b10
       0     7770        M 0x80002b10 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
       0     7771        M 0x80002b14 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x8000290c ~~> Word[0x0011ff5c]
       0     7772        M 0x80002b18 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002b18
       0     7773        M 0x80002b1c jalr    ra, ra, -1260          #; ra  = 0x80002b18, (wrb) ra  <-- 0x80002b20, goto 0x8000262c
       0     7784        M 0x8000262c lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     7787        M 0x80002630 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     7788        M 0x80002634 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     7791        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     7792        M 0x80002638 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     7795        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     7796        M 0x8000263c lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
       0     7797        M 0x80002640 ret                            #; ra  = 0x80002b20, goto 0x80002b20
       0     7799        M                                           #; (lsu) a0  <-- 0x00120190
       0     7800        M 0x80002b20 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
       0     7810        M                                           #; (lsu) a0  <-- 0
       0     7811        M 0x80002b24 mv      zero, a0               #; a0  = 0
       0     7812        M 0x80002b28 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
       0     7813        M 0x80002b2c addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
       0     7815        M                                           #; (lsu) ra  <-- 0x8000290c
       0     7816        M 0x80002b30 ret                            #; ra  = 0x8000290c, goto 0x8000290c
       0     7830        M 0x8000290c mv      a0, s0                 #; s0  = 1, (wrb) a0  <-- 1
       0     7834        M 0x80002910 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002910
       0     7835        M 0x80002914 jalr    ra, ra, 556            #; ra  = 0x80002910, (wrb) ra  <-- 0x80002918, goto 0x80002b3c
       0     7836        M 0x80002b3c addi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff58
       0     7837        M 0x80002b40 sw      a0, 0(sp)              #; sp  = 0x0011ff58, 1 ~~> Word[0x0011ff58]
       0     7838        M 0x80002b44 sw      ra, 4(sp)              #; sp  = 0x0011ff58, 0x80002918 ~~> Word[0x0011ff5c]
       0     7839        M 0x80002b48 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002b48
       0     7840        M 0x80002b4c jalr    ra, ra, -1340          #; ra  = 0x80002b48, (wrb) ra  <-- 0x80002b50, goto 0x8000260c
       0     7851        M 0x8000260c lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     7855        M 0x80002610 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     7856        M 0x80002614 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     7859        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     7860        M 0x80002618 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     7863        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     7864        M 0x8000261c lw      a0, 8(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff78]
       0     7865        M 0x80002620 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     7867        M                                           #; (lsu) a0  <-- 0
       0     7868        M 0x80002624 sub     a0, a1, a0             #; a1  = 0, a0  = 0, (wrb) a0  <-- 0
       0     7869        M 0x80002628 ret                            #; ra  = 0x80002b50, goto 0x80002b50
       0     7870        M 0x80002b50 lw      t0, 0(sp)              #; sp  = 0x0011ff58, t0  <~~ Word[0x0011ff58]
       0     7873        M                                           #; (lsu) t0  <-- 1
       0     7874        M 0x80002b54 lw      ra, 4(sp)              #; sp  = 0x0011ff58, ra  <~~ Word[0x0011ff5c]
       0     7875        M 0x80002b58 addi    sp, sp, 8              #; sp  = 0x0011ff58, (wrb) sp  <-- 0x0011ff60
       0     7876        M 0x80002b5c bnez    a0, pc + 24            #; a0  = 0, not taken
       0     7877        M                                           #; (lsu) ra  <-- 0x80002918
       0     7881        M 0x80002b60 slli    t0, t0, 1              #; t0  = 1, (wrb) t0  <-- 2
       0     7882        M 0x80002b64 ori     t0, t0, 1              #; t0  = 2, (wrb) t0  <-- 3
       0     7883        M 0x80002b68 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002b68
       0     7884        M 0x80002b6c addi    t1, t1, 600            #; t1  = 0x80002b68, (wrb) t1  <-- 0x80002dc0
       0     7892        M 0x80002b70 sw      t0, 0(t1)              #; t1  = 0x80002dc0, 3 ~~> Word[0x80002dc0]
       0     7893        M 0x80002b74 ret                            #; ra  = 0x80002918, goto 0x80002918
       0     7907        M 0x80002918 wfi                            #; 

## Performance metrics

Performance metrics for section 0 @ (12, 1788):
snitch_loads                                    38
snitch_stores                                   90
fpss_stores                                      1
fpss_loads                                       0
snitch_avg_load_latency                    18.2105
snitch_occupancy                            0.1609
snitch_fseq_rel_offloads                    0.1034
fseq_yield                                     1.0
fseq_fpu_yield                                 1.0
fpss_section_latency                             0
fpss_avg_fpu_latency                           1.0
fpss_avg_load_latency                            0
fpss_occupancy                              0.0186
fpss_fpu_occupancy                          0.0180
fpss_fpu_rel_occupancy                      0.9697
cycles                                        1777
total_ipc                                   0.1795

Performance metrics for section 1 @ (1790, 1883):
fpss_loads                                      20
snitch_loads                                     0
snitch_avg_load_latency                          0
snitch_occupancy                            0.0101
snitch_fseq_rel_offloads                    0.9677
fseq_yield                                     1.0
fseq_fpu_yield                                 1.0
fpss_section_latency                             5
fpss_avg_fpu_latency                          3.75
fpss_avg_load_latency                          1.1
fpss_occupancy                              0.3030
fpss_fpu_occupancy                          0.0808
fpss_fpu_rel_occupancy                      0.2667
cycles                                          99
total_ipc                                   0.3131

Performance metrics for section 2 @ (1885, 7907):
snitch_stores                                  184
snitch_loads                                   192
fpss_loads                                      23
fpss_stores                                      7
snitch_avg_load_latency                    10.1042
snitch_occupancy                            0.3209
snitch_fseq_rel_offloads                    0.0335
fseq_yield                                     1.0
fseq_fpu_yield                                 1.0
fpss_section_latency                             0
fpss_avg_fpu_latency                        0.8205
fpss_avg_load_latency                       5.8696
fpss_occupancy                              0.0111
fpss_fpu_occupancy                          0.0065
fpss_fpu_rel_occupancy                      0.5821
cycles                                        6023
total_ipc                                   0.3321
