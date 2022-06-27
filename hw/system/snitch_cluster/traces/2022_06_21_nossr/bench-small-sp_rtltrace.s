       0       12        M 0x00001000 csrr    a0, mhartid            #; mhartid = 0, (wrb) a0  <-- 0
       0       32        M 0x00001004 auipc   a1, 0x0                #; (wrb) a1  <-- 4100
       0       56        M 0x00001008 addi    a1, a1, 32             #; a1  = 4100, (wrb) a1  <-- 4132
       0       84        M 0x0000100c auipc   t0, 0x0                #; (wrb) t0  <-- 4108
       0      104        M 0x00001010 lw      t0, 20(t0)             #; t0  = 4108, t0  <~~ Word[0x00001020]
       0      115        M                                           #; (lsu) t0  <-- 0x80002680
       0      128        M 0x00001014 jalr    t0                     #; t0  = 0x80002680, (wrb) ra  <-- 4120, goto 0x80002680
       0      269        M 0x80002680 auipc   gp, 0x1                #; (wrb) gp  <-- 0x80003680
       0      270        M 0x80002684 addi    gp, gp, -248           #; gp  = 0x80003680, (wrb) gp  <-- 0x80003588
       0      271        M 0x80002688 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002688
       0      272        M 0x8000268c jalr    ra, ra, 964            #; ra  = 0x80002688, (wrb) ra  <-- 0x80002690, goto 0x80002a4c
       0      292        M 0x80002a4c mv      a4, a1                 #; a1  = 4132, (wrb) a4  <-- 4132
       0      304        M 0x80002a50 lw      a1, 4(a4)              #; a4  = 4132, a1  <~~ Word[0x00001028]
       0      334        M                                           #; (lsu) a1  <-- 8
       0      335        M 0x80002a54 lw      t0, 8(a4)              #; a4  = 4132, t0  <~~ Word[0x0000102c]
       0      374        M                                           #; (lsu) t0  <-- 0
       0      375        M 0x80002a58 lw      a2, 12(a4)             #; a4  = 4132, a2  <~~ Word[0x00001030]
       0      414        M                                           #; (lsu) a2  <-- 0x00100000
       0      415        M 0x80002a5c lw      t1, 16(a4)             #; a4  = 4132, t1  <~~ Word[0x00001034]
       0      454        M                                           #; (lsu) t1  <-- 0x00020000
       0      455        M 0x80002a60 lw      t2, 20(a4)             #; a4  = 4132, t2  <~~ Word[0x00001038]
       0      456        M 0x80002a64 sub     a0, a0, t0             #; a0  = 0, t0  = 0, (wrb) a0  <-- 0
       0      457        M 0x80002a68 div     t3, a0, a1             #; a0  = 0, a1  = 8
       0      460        M                                           #; (acc) t4  <-- 0x027e0eb3
       0      494        M                                           #; (lsu) t2  <-- 0
       0      495        M 0x80002a6c mul     t4, t3, t2             #; t3  = 0, t2  = 0
       0      498        M                                           #; (acc) a2  <-- 0x01d60633
       0      499        M 0x80002a70 add     a2, a2, t4             #; a2  = 0x00100000, t4  = 0, (wrb) a2  <-- 0x00100000
       0      500        M 0x80002a74 add     a3, a2, t1             #; a2  = 0x00100000, t1  = 0x00020000, (wrb) a3  <-- 0x00120000
       0      501        M 0x80002a78 remu    a0, a0, a1             #; a0  = 0, a1  = 8
       0      502        M 0x80002a7c ret                            #; ra  = 0x80002690, goto 0x80002690
       0      504        M                                           #; (acc) s0  <-- 0x00050413
       0      505        M 0x80002690 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
       0      506        M 0x80002694 mv      a0, a4                 #; a4  = 4132, (wrb) a0  <-- 4132
       0      507        M 0x80002698 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002698
       0      508        M 0x8000269c jalr    ra, ra, 1036           #; ra  = 0x80002698, (wrb) ra  <-- 0x800026a0, goto 0x80002aa4
       0      523        M 0x80002aa4 lw      a0, 8(a0)              #; a0  = 4132, a0  <~~ Word[0x0000102c]
       0      524        M 0x80002aa8 ret                            #; ra  = 0x800026a0, goto 0x800026a0
       0      543        M                                           #; (lsu) a0  <-- 0
       0      544        M 0x800026a0 mv      t0, a0                 #; a0  = 0, (wrb) t0  <-- 0
       0      545        M 0x800026a4 mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
       0      546        M 0x800026a8 csrr    t1, mhartid            #; mhartid = 0, (wrb) t1  <-- 0
       0      547        M 0x800026ac sub     t0, t1, t0             #; t1  = 0, t0  = 0, (wrb) t0  <-- 0
       0      549        M 0x800026b0 bnez    t0, pc + 36            #; t0  = 0, not taken
       0      550        M 0x800026b4 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800026b4
       0      551        M 0x800026b8 addi    t0, t0, 1948           #; t0  = 0x800026b4, (wrb) t0  <-- 0x80002e50
       0      552        M 0x800026bc auipc   t1, 0x0                #; (wrb) t1  <-- 0x800026bc
       0      562        M 0x800026c0 addi    t1, t1, 1944           #; t1  = 0x800026bc, (wrb) t1  <-- 0x80002e54
       0      563        M 0x800026c4 bge     t0, t1, pc + 16        #; t0  = 0x80002e50, t1  = 0x80002e54, not taken
       0      564        M 0x800026c8 sw      zero, 0(t0)            #; t0  = 0x80002e50, 0 ~~> Word[0x80002e50]
       0      565        M 0x800026cc addi    t0, t0, 4              #; t0  = 0x80002e50, (wrb) t0  <-- 0x80002e54
       0      573        M 0x800026d0 blt     t0, t1, pc - 8         #; t0  = 0x80002e54, t1  = 0x80002e54, not taken
       0      574        M 0x800026d4 csrr    t0, misa               #; misa = 0x40801129, (wrb) t0  <-- 0x40801129
       0      575        M 0x800026d8 andi    t0, t0, 40             #; t0  = 0x40801129, (wrb) t0  <-- 40
       0      576        M 0x800026dc beqz    t0, pc + 132           #; t0  = 40, not taken
       0      586        M 0x800026e0 fcvt.d.w ft0, zero             #; ac1  = 0
       0      587        M 0x800026e4 fcvt.d.w ft1, zero             #; ac1  = 0, (f:fpu) ft0  <-- 0.0
       0      588        M 0x800026e8 fcvt.d.w ft2, zero             #; ac1  = 0, (f:fpu) ft1  <-- 0.0
       0      589        M 0x800026ec fcvt.d.w ft3, zero             #; ac1  = 0, (f:fpu) ft2  <-- 0.0
       0      590        M                                           #; (f:fpu) ft3  <-- 0.0
       0      598        M 0x800026f0 fcvt.d.w ft4, zero             #; ac1  = 0
       0      599        M 0x800026f4 fcvt.d.w ft5, zero             #; ac1  = 0, (f:fpu) ft4  <-- 0.0
       0      600        M 0x800026f8 fcvt.d.w ft6, zero             #; ac1  = 0, (f:fpu) ft5  <-- 0.0
       0      601        M 0x800026fc fcvt.d.w ft7, zero             #; ac1  = 0, (f:fpu) ft6  <-- 0.0
       0      602        M                                           #; (f:fpu) ft7  <-- 0.0
       0      610        M 0x80002700 fcvt.d.w fs0, zero             #; ac1  = 0
       0      611        M 0x80002704 fcvt.d.w fs1, zero             #; ac1  = 0, (f:fpu) fs0  <-- 0.0
       0      612        M 0x80002708 fcvt.d.w fa0, zero             #; ac1  = 0, (f:fpu) fs1  <-- 0.0
       0      613        M 0x8000270c fcvt.d.w fa1, zero             #; ac1  = 0, (f:fpu) fa0  <-- 0.0
       0      614        M                                           #; (f:fpu) fa1  <-- 0.0
       0      622        M 0x80002710 fcvt.d.w fa2, zero             #; ac1  = 0
       0      623        M 0x80002714 fcvt.d.w fa3, zero             #; ac1  = 0, (f:fpu) fa2  <-- 0.0
       0      624        M 0x80002718 fcvt.d.w fa4, zero             #; ac1  = 0, (f:fpu) fa3  <-- 0.0
       0      625        M 0x8000271c fcvt.d.w fa5, zero             #; ac1  = 0, (f:fpu) fa4  <-- 0.0
       0      626        M                                           #; (f:fpu) fa5  <-- 0.0
       0      634        M 0x80002720 fcvt.d.w fa6, zero             #; ac1  = 0
       0      635        M 0x80002724 fcvt.d.w fa7, zero             #; ac1  = 0, (f:fpu) fa6  <-- 0.0
       0      636        M 0x80002728 fcvt.d.w fs2, zero             #; ac1  = 0, (f:fpu) fa7  <-- 0.0
       0      637        M 0x8000272c fcvt.d.w fs3, zero             #; ac1  = 0, (f:fpu) fs2  <-- 0.0
       0      638        M                                           #; (f:fpu) fs3  <-- 0.0
       0      646        M 0x80002730 fcvt.d.w fs4, zero             #; ac1  = 0
       0      647        M 0x80002734 fcvt.d.w fs5, zero             #; ac1  = 0, (f:fpu) fs4  <-- 0.0
       0      648        M 0x80002738 fcvt.d.w fs6, zero             #; ac1  = 0, (f:fpu) fs5  <-- 0.0
       0      649        M 0x8000273c fcvt.d.w fs7, zero             #; ac1  = 0, (f:fpu) fs6  <-- 0.0
       0      650        M                                           #; (f:fpu) fs7  <-- 0.0
       0      658        M 0x80002740 fcvt.d.w fs8, zero             #; ac1  = 0
       0      659        M 0x80002744 fcvt.d.w fs9, zero             #; ac1  = 0, (f:fpu) fs8  <-- 0.0
       0      660        M 0x80002748 fcvt.d.w fs10, zero            #; ac1  = 0, (f:fpu) fs9  <-- 0.0
       0      661        M 0x8000274c fcvt.d.w fs11, zero            #; ac1  = 0, (f:fpu) fs10 <-- 0.0
       0      662        M                                           #; (f:fpu) fs11 <-- 0.0
       0      670        M 0x80002750 fcvt.d.w ft8, zero             #; ac1  = 0
       0      671        M 0x80002754 fcvt.d.w ft9, zero             #; ac1  = 0, (f:fpu) ft8  <-- 0.0
       0      672        M 0x80002758 fcvt.d.w ft10, zero            #; ac1  = 0, (f:fpu) ft9  <-- 0.0
       0      673        M 0x8000275c fcvt.d.w ft11, zero            #; ac1  = 0, (f:fpu) ft10 <-- 0.0
       0      674        M                                           #; (f:fpu) ft11 <-- 0.0
       0      681        M 0x80002760 addi    a3, a3, -8             #; a3  = 0x00120000, (wrb) a3  <-- 0x0011fff8
       0      682        M 0x80002764 sw      zero, 0(a3)            #; a3  = 0x0011fff8, 0 ~~> Word[0x0011fff8]
       0      683        M 0x80002768 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002768
       0      684        M 0x8000276c lw      t0, 900(t0)            #; t0  = 0x80002768, t0  <~~ Word[0x80002aec]
       0      704        M                                           #; (lsu) t0  <-- 136
       0      705        M 0x80002770 sub     a3, a3, t0             #; a3  = 0x0011fff8, t0  = 136, (wrb) a3  <-- 0x0011ff70
       0      706        M 0x80002774 mv      a5, a3                 #; a3  = 0x0011ff70, (wrb) a5  <-- 0x0011ff70
       0      707        M 0x80002778 auipc   t2, 0x0                #; (wrb) t2  <-- 0x80002778
       0      708        M 0x8000277c lw      t2, 880(t2)            #; t2  = 0x80002778, t2  <~~ Word[0x80002ae8]
       0      744        M                                           #; (lsu) t2  <-- 10
       0      745        M 0x80002780 sll     t0, a0, t2             #; a0  = 0, t2  = 10, (wrb) t0  <-- 0
       0      746        M 0x80002784 sll     t1, a1, t2             #; a1  = 8, t2  = 10, (wrb) t1  <-- 8192
       0      747        M 0x80002788 sub     sp, a3, t0             #; a3  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
       0      748        M 0x8000278c sub     a3, a3, t1             #; a3  = 0x0011ff70, t1  = 8192, (wrb) a3  <-- 0x0011df70
       0      749        M 0x80002790 slli    t0, a0, 3              #; a0  = 0, (wrb) t0  <-- 0
       0      750        M 0x80002794 slli    t1, a1, 3              #; a1  = 8, (wrb) t1  <-- 64
       0      751        M 0x80002798 sub     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
       0      752        M 0x8000279c sub     a3, a3, t1             #; a3  = 0x0011df70, t1  = 64, (wrb) a3  <-- 0x0011df30
       0      761        M 0x800027a0 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800027a0
       0      762        M 0x800027a4 addi    t0, t0, 1512           #; t0  = 0x800027a0, (wrb) t0  <-- 0x80002d88
       0      763        M 0x800027a8 auipc   t1, 0x0                #; (wrb) t1  <-- 0x800027a8
       0      764        M 0x800027ac addi    t1, t1, 1504           #; t1  = 0x800027a8, (wrb) t1  <-- 0x80002d88
       0      775        M 0x800027b0 auipc   t2, 0x0                #; (wrb) t2  <-- 0x800027b0
       0      776        M 0x800027b4 addi    t2, t2, 1496           #; t2  = 0x800027b0, (wrb) t2  <-- 0x80002d88
       0      777        M 0x800027b8 auipc   t3, 0x0                #; (wrb) t3  <-- 0x800027b8
       0      778        M 0x800027bc addi    t3, t3, 1504           #; t3  = 0x800027b8, (wrb) t3  <-- 0x80002d98
       0      787        M 0x800027c0 add     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0x80002d88, (wrb) sp  <-- 0x80122cf8
       0      788        M 0x800027c4 sub     sp, sp, t1             #; sp  = 0x80122cf8, t1  = 0x80002d88, (wrb) sp  <-- 0x0011ff70
       0      789        M 0x800027c8 add     sp, sp, t2             #; sp  = 0x0011ff70, t2  = 0x80002d88, (wrb) sp  <-- 0x80122cf8
       0      790        M 0x800027cc sub     sp, sp, t3             #; sp  = 0x80122cf8, t3  = 0x80002d98, (wrb) sp  <-- 0x0011ff60
       0      799        M 0x800027d0 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
       0      800        M 0x800027d4 mv      tp, sp                 #; sp  = 0x0011ff60, (wrb) tp  <-- 0x0011ff60
       0      801        M 0x800027d8 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
       0      802        M 0x800027dc mv      t4, tp                 #; tp  = 0x0011ff60, (wrb) t4  <-- 0x0011ff60
       0      811        M 0x800027e0 bge     t0, t1, pc + 24        #; t0  = 0x80002d88, t1  = 0x80002d88, taken, goto 0x800027f8
       0      823        M 0x800027f8 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800027f8
       0      824        M 0x800027fc addi    t0, t0, 1424           #; t0  = 0x800027f8, (wrb) t0  <-- 0x80002d88
       0      835        M 0x80002800 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002800
       0      836        M 0x80002804 addi    t1, t1, 1432           #; t1  = 0x80002800, (wrb) t1  <-- 0x80002d98
       0      837        M 0x80002808 bge     t0, t1, pc + 20        #; t0  = 0x80002d88, t1  = 0x80002d98, not taken
       0      838        M 0x8000280c sw      zero, 0(t4)            #; t4  = 0x0011ff60, 0 ~~> Word[0x0011ff60]
       0      847        M 0x80002810 addi    t0, t0, 4              #; t0  = 0x80002d88, (wrb) t0  <-- 0x80002d8c
       0      848        M 0x80002814 addi    t4, t4, 4              #; t4  = 0x0011ff60, (wrb) t4  <-- 0x0011ff64
       0      849        M 0x80002818 blt     t0, t2, pc - 12        #; t0  = 0x80002d8c, t2  = 0x80002d88, not taken
       0      850        M 0x8000281c addi    sp, sp, -20            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff4c
       0      862        M 0x80002820 sw      a0, 0(sp)              #; sp  = 0x0011ff4c, 0 ~~> Word[0x0011ff4c]
       0      863        M 0x80002824 sw      a1, 4(sp)              #; sp  = 0x0011ff4c, 8 ~~> Word[0x0011ff50]
       0      864        M 0x80002828 sw      a2, 8(sp)              #; sp  = 0x0011ff4c, 0x00100000 ~~> Word[0x0011ff54]
       0      865        M 0x8000282c sw      a3, 12(sp)             #; sp  = 0x0011ff4c, 0x0011df30 ~~> Word[0x0011ff58]
       0      875        M 0x80002830 sw      a4, 16(sp)             #; sp  = 0x0011ff4c, 4132 ~~> Word[0x0011ff5c]
       0      876        M 0x80002834 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002834
       0      877        M 0x80002838 jalr    ra, ra, -1060          #; ra  = 0x80002834, (wrb) ra  <-- 0x8000283c, goto 0x80002410
       0      898        M 0x80002410 sw      a5, 0(a5)              #; a5  = 0x0011ff70, 0x0011ff70 ~~> Word[0x0011ff70]
       0      899        M 0x80002414 sw      a4, 4(a5)              #; a5  = 0x0011ff70, 4132 ~~> Word[0x0011ff74]
       0      901        M 0x80002418 lw      t1, 8(a4)              #; a4  = 4132, t1  <~~ Word[0x0000102c]
       0      923        M                                           #; (lsu) t1  <-- 0
       0      924        M 0x8000241c sw      t1, 8(a5)              #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff78]
       0      925        M 0x80002420 lw      a6, 40(a4)             #; a4  = 4132, a6  <~~ Word[0x0000104c]
       0      963        M                                           #; (lsu) a6  <-- 1
       0      964        M 0x80002424 lw      a7, 44(a4)             #; a4  = 4132, a7  <~~ Word[0x00001050]
       0     1003        M                                           #; (lsu) a7  <-- 1
       0     1004        M 0x80002428 lw      t0, 4(a4)              #; a4  = 4132, t0  <~~ Word[0x00001028]
       0     1005        M 0x8000242c mul     a6, a7, a6             #; a7  = 1, a6  = 1
       0     1008        M                                           #; (acc) a0  <-- 0x02580533
       0     1043        M                                           #; (lsu) t0  <-- 8
       0     1044        M 0x80002430 mul     a0, a6, t0             #; a6  = 1, t0  = 8
       0     1047        M                                           #; (acc) a2  <-- 0x00a7a623
       0     1048        M 0x80002434 sw      a0, 12(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff7c]
       0     1049        M 0x80002438 csrr    a7, mhartid            #; mhartid = 0, (wrb) a7  <-- 0
       0     1050        M 0x8000243c sub     a0, a7, t1             #; a7  = 0, t1  = 0, (wrb) a0  <-- 0
       0     1051        M 0x80002440 divu    a0, a0, t0             #; a0  = 0, t0  = 8
       0     1054        M                                           #; (acc) a6  <-- 0x00a7a823
       0     1055        M 0x80002444 sw      a0, 16(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff80]
       0     1056        M 0x80002448 sw      a6, 20(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff84]
       0     1057        M 0x8000244c sw      t1, 24(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff88]
       0     1063        M 0x80002450 sw      a1, 28(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff8c]
       0     1064        M 0x80002454 lw      a0, 24(a4)             #; a4  = 4132, a0  <~~ Word[0x0000103c]
       0     1065        M 0x80002458 lui     a1, 0x10000            #; (wrb) a1  <-- 0x10000000
       0     1083        M                                           #; (lsu) a0  <-- 0x80000000
       0     1084        M 0x8000245c add     a0, a0, a1             #; a0  = 0x80000000, a1  = 0x10000000, (wrb) a0  <-- 0x90000000
       0     1085        M 0x80002460 sw      zero, 36(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff94]
       0     1086        M 0x80002464 sw      a0, 32(a5)             #; a5  = 0x0011ff70, 0x90000000 ~~> Word[0x0011ff90]
       0     1087        M 0x80002468 lw      a0, 32(a4)             #; a4  = 4132, a0  <~~ Word[0x00001044]
       0     1123        M                                           #; (lsu) a0  <-- 0
       0     1124        M 0x8000246c lw      a1, 36(a4)             #; a4  = 4132, a1  <~~ Word[0x00001048]
       0     1125        M 0x80002470 sw      a0, 40(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff98]
       0     1163        M                                           #; (lsu) a1  <-- 1
       0     1164        M 0x80002474 sw      a1, 44(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff9c]
       0     1165        M 0x80002478 sw      a2, 48(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffa0]
       0     1166        M 0x8000247c sw      zero, 52(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffa4]
       0     1167        M 0x80002480 sw      a3, 56(a5)             #; a5  = 0x0011ff70, 0x0011df30 ~~> Word[0x0011ffa8]
       0     1168        M 0x80002484 sw      zero, 60(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffac]
       0     1169        M 0x80002488 lw      a0, 16(a4)             #; a4  = 4132, a0  <~~ Word[0x00001034]
       0     1190        M                                           #; (lsu) a0  <-- 0x00020000
       0     1191        M 0x8000248c add     a6, a2, a0             #; a2  = 0x00100000, a0  = 0x00020000, (wrb) a6  <-- 0x00120000
       0     1192        M 0x80002490 addi    a1, a6, 400            #; a6  = 0x00120000, (wrb) a1  <-- 0x00120190
       0     1193        M 0x80002494 sw      a1, 112(a5)            #; a5  = 0x0011ff70, 0x00120190 ~~> Word[0x0011ffe0]
       0     1194        M 0x80002498 sltu    t0, a6, a0             #; a6  = 0x00120000, a0  = 0x00020000, (wrb) t0  <-- 0
       0     1195        M 0x8000249c srli    a1, a0, 1              #; a0  = 0x00020000, (wrb) a1  <-- 0x00010000
       0     1205        M 0x800024a0 add     t1, a6, a1             #; a6  = 0x00120000, a1  = 0x00010000, (wrb) t1  <-- 0x00130000
       0     1206        M 0x800024a4 sltu    a1, t1, a6             #; t1  = 0x00130000, a6  = 0x00120000, (wrb) a1  <-- 0
       0     1207        M 0x800024a8 add     a1, t0, a1             #; t0  = 0, a1  = 0, (wrb) a1  <-- 0
       0     1208        M 0x800024ac sw      t1, 64(a5)             #; a5  = 0x0011ff70, 0x00130000 ~~> Word[0x0011ffb0]
       0     1219        M 0x800024b0 sw      a1, 68(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffb4]
       0     1220        M 0x800024b4 slli    a0, a0, 1              #; a0  = 0x00020000, (wrb) a0  <-- 0x00040000
       0     1221        M 0x800024b8 add     a1, a0, a2             #; a0  = 0x00040000, a2  = 0x00100000, (wrb) a1  <-- 0x00140000
       0     1222        M 0x800024bc sltu    a0, a1, a0             #; a1  = 0x00140000, a0  = 0x00040000, (wrb) a0  <-- 0
       0     1231        M 0x800024c0 sw      a1, 72(a5)             #; a5  = 0x0011ff70, 0x00140000 ~~> Word[0x0011ffb8]
       0     1232        M 0x800024c4 sw      a0, 76(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffbc]
       0     1234        M 0x800024c8 sw      zero, 104(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd8]
       0     1238        M 0x800024cc sw      zero, 108(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffdc]
       0     1243        M 0x800024d0 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1244        M 0x800024d4 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1245        M 0x800024d8 sw      a5, 0(a0)              #; a0  = 0x0011ff60, 0x0011ff70 ~~> Word[0x0011ff60]
       0     1246        M 0x800024dc lw      a0, 0(a5)              #; a5  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1250        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1255        M 0x800024e0 lw      a1, 24(a0)             #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ff88]
       0     1259        M                                           #; (lsu) a1  <-- 0
       0     1260        M 0x800024e4 lw      a0, 28(a0)             #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff8c]
       0     1261        M 0x800024e8 sub     a1, a7, a1             #; a7  = 0, a1  = 0, (wrb) a1  <-- 0
       0     1263        M                                           #; (lsu) a0  <-- 8
       0     1264        M 0x800024ec remu    a0, a1, a0             #; a1  = 0, a0  = 8
       0     1267        M 0x800024f0 lui     a1, 0x0                #; (wrb) a1  <-- 0
       0     1268        M 0x800024f4 add     a1, a1, tp             #; a1  = 0, tp  = 0x0011ff60, (wrb) a1  <-- 0x0011ff60
       0     1269        M                                           #; (acc) tp  <-- 0x00a5a223
       0     1270        M 0x800024f8 sw      a0, 4(a1)              #; a1  = 0x0011ff60, 0 ~~> Word[0x0011ff64]
       0     1271        M 0x800024fc li      a0, 1096               #; (wrb) a0  <-- 1096
       0     1279        M 0x80002500 mul     a0, a7, a0             #; a7  = 0, a0  = 1096
       0     1280        M 0x80002504 auipc   a1, 0x1                #; (wrb) a1  <-- 0x80003504
       0     1281        M 0x80002508 addi    a1, a1, -1712          #; a1  = 0x80003504, (wrb) a1  <-- 0x80002e54
       0     1283        M                                           #; (acc) a0  <-- 0x00b50533
       0     1284        M 0x8000250c add     a0, a0, a1             #; a0  = 0, a1  = 0x80002e54, (wrb) a0  <-- 0x80002e54
       0     1291        M 0x80002510 sw      zero, 0(a0)            #; a0  = 0x80002e54, 0 ~~> Word[0x80002e54]
       0     1292        M 0x80002514 lw      a7, 48(a4)             #; a4  = 4132, a7  <~~ Word[0x00001054]
       0     1362        M                                           #; (lsu) a7  <-- 0xffff0000
       0     1363        M 0x80002518 sw      a7, 116(a5)            #; a5  = 0x0011ff70, 0xffff0000 ~~> Word[0x0011ffe4]
       0     1364        M 0x8000251c sw      a6, 124(a5)            #; a5  = 0x0011ff70, 0x00120000 ~~> Word[0x0011ffec]
       0     1365        M 0x80002520 sw      zero, 120(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffe8]
       0     1366        M 0x80002524 addi    a4, a6, 384            #; a6  = 0x00120000, (wrb) a4  <-- 0x00120180
       0     1367        M 0x80002528 sw      a4, 128(a5)            #; a5  = 0x0011ff70, 0x00120180 ~~> Word[0x0011fff0]
       0     1368        M 0x8000252c addi    a0, a2, 7              #; a2  = 0x00100000, (wrb) a0  <-- 0x00100007
       0     1369        M 0x80002530 andi    a0, a0, -8             #; a0  = 0x00100007, (wrb) a0  <-- 0x00100000
       0     1370        M 0x80002534 sw      a0, 80(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc0]
       0     1371        M 0x80002538 sub     a2, a3, a2             #; a3  = 0x0011df30, a2  = 0x00100000, (wrb) a2  <-- 0x0001df30
       0     1372        M 0x8000253c sw      a2, 84(a5)             #; a5  = 0x0011ff70, 0x0001df30 ~~> Word[0x0011ffc4]
       0     1373        M 0x80002540 sw      a0, 88(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc8]
       0     1374        M 0x80002544 lw      a0, 0(a1)              #; a1  = 0x80002e54, a0  <~~ Word[0x80002e54]
       0     1385        M                                           #; (lsu) a0  <-- 0
       0     1386        M 0x80002548 addi    a0, a0, 1103           #; a0  = 0, (wrb) a0  <-- 1103
       0     1387        M 0x8000254c andi    a0, a0, -8             #; a0  = 1103, (wrb) a0  <-- 1096
       0     1388        M 0x80002550 sw      a0, 92(a5)             #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffcc]
       0     1389        M 0x80002554 sw      zero, 96(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd0]
       0     1390        M 0x80002558 sw      a0, 100(a5)            #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffd4]
       0     1391        M 0x8000255c lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1392        M 0x80002560 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1393        M 0x80002564 sw      a7, 8(a0)              #; a0  = 0x0011ff60, 0xffff0000 ~~> Word[0x0011ff68]
       0     1394        M 0x80002568 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1395        M 0x8000256c add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1400        M 0x80002570 sw      a4, 12(a0)             #; a0  = 0x0011ff60, 0x00120180 ~~> Word[0x0011ff6c]
       0     1401        M 0x80002574 ret                            #; ra  = 0x8000283c, goto 0x8000283c
       0     1415        M 0x8000283c lw      a0, 0(sp)              #; sp  = 0x0011ff4c, a0  <~~ Word[0x0011ff4c]
       0     1418        M                                           #; (lsu) a0  <-- 0
       0     1419        M 0x80002840 lw      a1, 4(sp)              #; sp  = 0x0011ff4c, a1  <~~ Word[0x0011ff50]
       0     1422        M                                           #; (lsu) a1  <-- 8
       0     1423        M 0x80002844 lw      a2, 8(sp)              #; sp  = 0x0011ff4c, a2  <~~ Word[0x0011ff54]
       0     1426        M                                           #; (lsu) a2  <-- 0x00100000
       0     1427        M 0x80002848 lw      a3, 12(sp)             #; sp  = 0x0011ff4c, a3  <~~ Word[0x0011ff58]
       0     1430        M                                           #; (lsu) a3  <-- 0x0011df30
       0     1431        M 0x8000284c lw      a4, 16(sp)             #; sp  = 0x0011ff4c, a4  <~~ Word[0x0011ff5c]
       0     1432        M 0x80002850 addi    sp, sp, 20             #; sp  = 0x0011ff4c, (wrb) sp  <-- 0x0011ff60
       0     1433        M 0x80002854 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002854
       0     1434        M 0x80002858 addi    t0, t0, 60             #; t0  = 0x80002854, (wrb) t0  <-- 0x80002890
       0     1435        M 0x8000285c csrw    mtvec, t0              #; t0  = 0x80002890, (lsu) a4  <-- 4132
       0     1443        M 0x80002860 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002860
       0     1444        M 0x80002864 jalr    ra, ra, 544            #; ra  = 0x80002860, (wrb) ra  <-- 0x80002868, goto 0x80002a80
       0     1460        M 0x80002a80 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
       0     1461        M 0x80002a84 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x80002868 ~~> Word[0x0011ff5c]
       0     1462        M 0x80002a88 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002a88
       0     1463        M 0x80002a8c jalr    ra, ra, -1264          #; ra  = 0x80002a88, (wrb) ra  <-- 0x80002a90, goto 0x80002598
       0     1481        M 0x80002598 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1482        M 0x8000259c add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1493        M 0x800025a0 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     1496        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1497        M 0x800025a4 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1501        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1502        M 0x800025a8 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
       0     1503        M 0x800025ac ret                            #; ra  = 0x80002a90, goto 0x80002a90
       0     1505        M                                           #; (lsu) a0  <-- 0x00120190
       0     1506        M 0x80002a90 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
       0     1535        M                                           #; (lsu) a0  <-- 0
       0     1536        M 0x80002a94 mv      zero, a0               #; a0  = 0
       0     1537        M 0x80002a98 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
       0     1538        M 0x80002a9c addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
       0     1540        M                                           #; (lsu) ra  <-- 0x80002868
       0     1541        M 0x80002aa0 ret                            #; ra  = 0x80002868, goto 0x80002868
       0     1545        M 0x80002868 auipc   ra, 0xffffe            #; (wrb) ra  <-- 0x80000868
       0     1546        M 0x8000286c jalr    ra, ra, -564           #; ra  = 0x80000868, (wrb) ra  <-- 0x80002870, goto 0x80000634
       0     1551        M 0x80000634 addi    sp, sp, -32            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff40
       0     1552        M 0x80000638 sw      ra, 28(sp)             #; sp  = 0x0011ff40, 0x80002870 ~~> Word[0x0011ff5c]
       0     1554        M 0x80000640 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1555        M 0x80000644 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
                         M 0x8000063c fsd     fs0, 16(sp)            #; 0.0 ~~> Doub[0x0011ff50]
       0     1556        M 0x80000648 lw      a1, 4(a0)              #; a0  = 0x0011ff60, a1  <~~ Word[0x0011ff64]
       0     1557        M 0x8000064c li      a0, 0                  #; (wrb) a0  <-- 0
       0     1559        M                                           #; (lsu) a1  <-- 0
       0     1567        M 0x80000650 bnez    a1, pc + 348           #; a1  = 0, not taken
       0     1568        M 0x80000654 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1569        M 0x80000658 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1570        M 0x8000065c lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     1573        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1579        M 0x80000660 lw      a2, 0(a0)              #; a0  = 0x0011ff70, a2  <~~ Word[0x0011ff70]
       0     1582        M                                           #; (lsu) a2  <-- 0x0011ff70
       0     1583        M 0x80000664 lw      a0, 88(a2)             #; a2  = 0x0011ff70, a0  <~~ Word[0x0011ffc8]
       0     1586        M                                           #; (lsu) a0  <-- 0x00100000
       0     1587        M 0x80000668 lw      a1, 80(a2)             #; a2  = 0x0011ff70, a1  <~~ Word[0x0011ffc0]
       0     1590        M                                           #; (lsu) a1  <-- 0x00100000
       0     1591        M 0x8000066c lw      a3, 84(a2)             #; a2  = 0x0011ff70, a3  <~~ Word[0x0011ffc4]
       0     1594        M                                           #; (lsu) a3  <-- 0x0001df30
       0     1595        M 0x80000670 addi    a4, a0, 800            #; a0  = 0x00100000, (wrb) a4  <-- 0x00100320
       0     1596        M 0x80000674 add     a3, a3, a1             #; a3  = 0x0001df30, a1  = 0x00100000, (wrb) a3  <-- 0x0011df30
       0     1597        M 0x80000678 bgeu    a3, a4, pc + 24        #; a3  = 0x0011df30, a4  = 0x00100320, taken, goto 0x80000690
       0     1633        M 0x80000690 sw      a4, 88(a2)             #; a2  = 0x0011ff70, 0x00100320 ~~> Word[0x0011ffc8]
       0     1634        M 0x80000694 mv      a1, a0                 #; a0  = 0x00100000, (wrb) a1  <-- 0x00100000
       0     1635        M 0x80000698 addi    a5, a0, 1600           #; a0  = 0x00100000, (wrb) a5  <-- 0x00100640
       0     1636        M 0x8000069c mv      a0, a4                 #; a4  = 0x00100320, (wrb) a0  <-- 0x00100320
       0     1645        M 0x800006a0 bgeu    a3, a5, pc - 24        #; a3  = 0x0011df30, a5  = 0x00100640, taken, goto 0x80000688
       0     1646        M 0x80000688 sw      a5, 88(a2)             #; a2  = 0x0011ff70, 0x00100640 ~~> Word[0x0011ffc8]
       0     1647        M 0x8000068c j       pc + 0x1c              #; goto 0x800006a8
       0     1648        M 0x800006a8 li      a2, 0                  #; (wrb) a2  <-- 0
       0     1649        M 0x800006ac li      a3, 0                  #; (wrb) a3  <-- 0
       0     1660        M 0x800006b0 lui     a4, 0xccccd            #; (wrb) a4  <-- 0xccccd000
       0     1661        M 0x800006b4 addi    a4, a4, -819           #; a4  = 0xccccd000, (wrb) a4  <-- 0xcccccccd
       0     1662        M 0x800006b8 li      a6, 10                 #; (wrb) a6  <-- 10
       0     1663        M 0x800006bc li      a7, 800                #; (wrb) a7  <-- 800
       0     1672        M 0x800006c0 mulhu   a5, a3, a4             #; a3  = 0, a4  = 0xcccccccd
       0     1675        M                                           #; (acc) a5  <-- 0x0037d793
       0     1676        M 0x800006c4 srli    a5, a5, 3              #; a5  = 0, (wrb) a5  <-- 0
       0     1677        M 0x800006c8 mul     a5, a5, a6             #; a5  = 0, a6  = 10
       0     1680        M                                           #; (acc) a5  <-- 0x40f687b3
       0     1681        M 0x800006cc sub     a5, a3, a5             #; a3  = 0, a5  = 0, (wrb) a5  <-- 0
       0     1685        M 0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 0, (wrb) a5  <-- 0x00100000
                         M 0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 0
       0     1686        M                                           #; (f:fpu) ft0  <-- 0.0
       0     1687        M 0x800006dc addi    a2, a2, 8              #; a2  = 0, (wrb) a2  <-- 8
       0     1688        M 0x800006d8 fsd     ft0, 0(a5)             #; 0.0 ~~> Doub[0x00100000]
       0     1696        M 0x800006e0 addi    a3, a3, 1              #; a3  = 0, (wrb) a3  <-- 1
       0     1697        M 0x800006e4 bne     a2, a7, pc - 36        #; a2  = 8, a7  = 800, taken, goto 0x800006c0
       0     1698        M 0x800006c0 mulhu   a5, a3, a4             #; a3  = 1, a4  = 0xcccccccd
       0     1701        M                                           #; (acc) a5  <-- 0x0037d793
       0     1702        M 0x800006c4 srli    a5, a5, 3              #; a5  = 0, (wrb) a5  <-- 0
       0     1703        M 0x800006c8 mul     a5, a5, a6             #; a5  = 0, a6  = 10
       0     1706        M                                           #; (acc) a5  <-- 0x40f687b3
       0     1707        M 0x800006cc sub     a5, a3, a5             #; a3  = 1, a5  = 0, (wrb) a5  <-- 1
       0     1709        M 0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 8, (wrb) a5  <-- 0x00100008
                         M 0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 1
       0     1710        M                                           #; (f:fpu) ft0  <-- 1.0
       0     1711        M 0x800006dc addi    a2, a2, 8              #; a2  = 8, (wrb) a2  <-- 16
       0     1712        M 0x800006e0 addi    a3, a3, 1              #; a3  = 1, (wrb) a3  <-- 2
                         M 0x800006d8 fsd     ft0, 0(a5)             #; 1.0 ~~> Doub[0x00100008]
       0     1713        M 0x800006e4 bne     a2, a7, pc - 36        #; a2  = 16, a7  = 800, taken, goto 0x800006c0
       0     1714        M 0x800006c0 mulhu   a5, a3, a4             #; a3  = 2, a4  = 0xcccccccd
       0     1717        M                                           #; (acc) a5  <-- 0x0037d793
       0     1718        M 0x800006c4 srli    a5, a5, 3              #; a5  = 1, (wrb) a5  <-- 0
       0     1719        M 0x800006c8 mul     a5, a5, a6             #; a5  = 0, a6  = 10
       0     1722        M                                           #; (acc) a5  <-- 0x40f687b3
       0     1723        M 0x800006cc sub     a5, a3, a5             #; a3  = 2, a5  = 0, (wrb) a5  <-- 2
       0     1725        M 0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 16, (wrb) a5  <-- 0x00100010
                         M 0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 2
       0     1726        M                                           #; (f:fpu) ft0  <-- 2.0
       0     1727        M 0x800006dc addi    a2, a2, 8              #; a2  = 16, (wrb) a2  <-- 24
       0     1728        M 0x800006e0 addi    a3, a3, 1              #; a3  = 2, (wrb) a3  <-- 3
                         M 0x800006d8 fsd     ft0, 0(a5)             #; 2.0 ~~> Doub[0x00100010]
       0     1729        M 0x800006e4 bne     a2, a7, pc - 36        #; a2  = 24, a7  = 800, taken, goto 0x800006c0
       0     1730        M 0x800006c0 mulhu   a5, a3, a4             #; a3  = 3, a4  = 0xcccccccd
       0     1733        M                                           #; (acc) a5  <-- 0x0037d793
       0     1734        M 0x800006c4 srli    a5, a5, 3              #; a5  = 2, (wrb) a5  <-- 0
       0     1735        M 0x800006c8 mul     a5, a5, a6             #; a5  = 0, a6  = 10
       0     1738        M                                           #; (acc) a5  <-- 0x40f687b3
       0     1739        M 0x800006cc sub     a5, a3, a5             #; a3  = 3, a5  = 0, (wrb) a5  <-- 3
       0     1741        M 0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 24, (wrb) a5  <-- 0x00100018
                         M 0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 3
       0     1742        M                                           #; (f:fpu) ft0  <-- 3.0
       0     1743        M 0x800006dc addi    a2, a2, 8              #; a2  = 24, (wrb) a2  <-- 32
       0     1744        M 0x800006e0 addi    a3, a3, 1              #; a3  = 3, (wrb) a3  <-- 4
                         M 0x800006d8 fsd     ft0, 0(a5)             #; 3.0 ~~> Doub[0x00100018]
       0     1745        M 0x800006e4 bne     a2, a7, pc - 36        #; a2  = 32, a7  = 800, taken, goto 0x800006c0
       0     1746        M 0x800006c0 mulhu   a5, a3, a4             #; a3  = 4, a4  = 0xcccccccd
       0     1749        M                                           #; (acc) a5  <-- 0x0037d793
       0     1750        M 0x800006c4 srli    a5, a5, 3              #; a5  = 3, (wrb) a5  <-- 0
       0     1751        M 0x800006c8 mul     a5, a5, a6             #; a5  = 0, a6  = 10
       0     1754        M                                           #; (acc) a5  <-- 0x40f687b3
       0     1755        M 0x800006cc sub     a5, a3, a5             #; a3  = 4, a5  = 0, (wrb) a5  <-- 4
       0     1757        M 0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 32, (wrb) a5  <-- 0x00100020
                         M 0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 4
       0     1758        M                                           #; (f:fpu) ft0  <-- 4.0
       0     1759        M 0x800006dc addi    a2, a2, 8              #; a2  = 32, (wrb) a2  <-- 40
       0     1760        M 0x800006e0 addi    a3, a3, 1              #; a3  = 4, (wrb) a3  <-- 5
                         M 0x800006d8 fsd     ft0, 0(a5)             #; 4.0 ~~> Doub[0x00100020]
       0     1761        M 0x800006e4 bne     a2, a7, pc - 36        #; a2  = 40, a7  = 800, taken, goto 0x800006c0
       0     1762        M 0x800006c0 mulhu   a5, a3, a4             #; a3  = 5, a4  = 0xcccccccd
       0     1765        M                                           #; (acc) a5  <-- 0x0037d793
       0     1766        M 0x800006c4 srli    a5, a5, 3              #; a5  = 4, (wrb) a5  <-- 0
       0     1767        M 0x800006c8 mul     a5, a5, a6             #; a5  = 0, a6  = 10
       0     1770        M                                           #; (acc) a5  <-- 0x40f687b3
       0     1771        M 0x800006cc sub     a5, a3, a5             #; a3  = 5, a5  = 0, (wrb) a5  <-- 5
       0     1773        M 0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 40, (wrb) a5  <-- 0x00100028
                         M 0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 5
       0     1774        M                                           #; (f:fpu) ft0  <-- 5.0
       0     1775        M 0x800006dc addi    a2, a2, 8              #; a2  = 40, (wrb) a2  <-- 48
       0     1776        M 0x800006e0 addi    a3, a3, 1              #; a3  = 5, (wrb) a3  <-- 6
                         M 0x800006d8 fsd     ft0, 0(a5)             #; 5.0 ~~> Doub[0x00100028]
       0     1777        M 0x800006e4 bne     a2, a7, pc - 36        #; a2  = 48, a7  = 800, taken, goto 0x800006c0
       0     1778        M 0x800006c0 mulhu   a5, a3, a4             #; a3  = 6, a4  = 0xcccccccd
       0     1781        M                                           #; (acc) a5  <-- 0x0037d793
       0     1782        M 0x800006c4 srli    a5, a5, 3              #; a5  = 4, (wrb) a5  <-- 0
       0     1783        M 0x800006c8 mul     a5, a5, a6             #; a5  = 0, a6  = 10
       0     1786        M                                           #; (acc) a5  <-- 0x40f687b3
       0     1787        M 0x800006cc sub     a5, a3, a5             #; a3  = 6, a5  = 0, (wrb) a5  <-- 6
       0     1789        M 0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 48, (wrb) a5  <-- 0x00100030
                         M 0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 6
       0     1790        M                                           #; (f:fpu) ft0  <-- 6.0
       0     1791        M 0x800006dc addi    a2, a2, 8              #; a2  = 48, (wrb) a2  <-- 56
       0     1792        M 0x800006e0 addi    a3, a3, 1              #; a3  = 6, (wrb) a3  <-- 7
                         M 0x800006d8 fsd     ft0, 0(a5)             #; 6.0 ~~> Doub[0x00100030]
       0     1793        M 0x800006e4 bne     a2, a7, pc - 36        #; a2  = 56, a7  = 800, taken, goto 0x800006c0
       0     1794        M 0x800006c0 mulhu   a5, a3, a4             #; a3  = 7, a4  = 0xcccccccd
       0     1797        M                                           #; (acc) a5  <-- 0x0037d793
       0     1798        M 0x800006c4 srli    a5, a5, 3              #; a5  = 5, (wrb) a5  <-- 0
       0     1799        M 0x800006c8 mul     a5, a5, a6             #; a5  = 0, a6  = 10
       0     1802        M                                           #; (acc) a5  <-- 0x40f687b3
       0     1803        M 0x800006cc sub     a5, a3, a5             #; a3  = 7, a5  = 0, (wrb) a5  <-- 7
       0     1805        M 0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 56, (wrb) a5  <-- 0x00100038
                         M 0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 7
       0     1806        M                                           #; (f:fpu) ft0  <-- 7.0
       0     1807        M 0x800006dc addi    a2, a2, 8              #; a2  = 56, (wrb) a2  <-- 64
       0     1808        M 0x800006e0 addi    a3, a3, 1              #; a3  = 7, (wrb) a3  <-- 8
                         M 0x800006d8 fsd     ft0, 0(a5)             #; 7.0 ~~> Doub[0x00100038]
       0     1809        M 0x800006e4 bne     a2, a7, pc - 36        #; a2  = 64, a7  = 800, taken, goto 0x800006c0
       0     1810        M 0x800006c0 mulhu   a5, a3, a4             #; a3  = 8, a4  = 0xcccccccd
       0     1813        M                                           #; (acc) a5  <-- 0x0037d793
       0     1814        M 0x800006c4 srli    a5, a5, 3              #; a5  = 6, (wrb) a5  <-- 0
       0     1815        M 0x800006c8 mul     a5, a5, a6             #; a5  = 0, a6  = 10
       0     1818        M                                           #; (acc) a5  <-- 0x40f687b3
       0     1819        M 0x800006cc sub     a5, a3, a5             #; a3  = 8, a5  = 0, (wrb) a5  <-- 8
       0     1821        M 0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 64, (wrb) a5  <-- 0x00100040
                         M 0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 8
       0     1822        M                                           #; (f:fpu) ft0  <-- 8.0
       0     1823        M 0x800006dc addi    a2, a2, 8              #; a2  = 64, (wrb) a2  <-- 72
       0     1824        M 0x800006e0 addi    a3, a3, 1              #; a3  = 8, (wrb) a3  <-- 9
                         M 0x800006d8 fsd     ft0, 0(a5)             #; 8.0 ~~> Doub[0x00100040]
       0     1825        M 0x800006e4 bne     a2, a7, pc - 36        #; a2  = 72, a7  = 800, taken, goto 0x800006c0
       0     1826        M 0x800006c0 mulhu   a5, a3, a4             #; a3  = 9, a4  = 0xcccccccd
       0     1829        M                                           #; (acc) a5  <-- 0x0037d793
       0     1830        M 0x800006c4 srli    a5, a5, 3              #; a5  = 7, (wrb) a5  <-- 0
       0     1831        M 0x800006c8 mul     a5, a5, a6             #; a5  = 0, a6  = 10
       0     1834        M                                           #; (acc) a5  <-- 0x40f687b3
       0     1835        M 0x800006cc sub     a5, a3, a5             #; a3  = 9, a5  = 0, (wrb) a5  <-- 9
       0     1837        M 0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 72, (wrb) a5  <-- 0x00100048
                         M 0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 9
       0     1838        M                                           #; (f:fpu) ft0  <-- 9.0
       0     1839        M 0x800006dc addi    a2, a2, 8              #; a2  = 72, (wrb) a2  <-- 80
       0     1840        M 0x800006e0 addi    a3, a3, 1              #; a3  = 9, (wrb) a3  <-- 10
                         M 0x800006d8 fsd     ft0, 0(a5)             #; 9.0 ~~> Doub[0x00100048]
       0     1841        M 0x800006e4 bne     a2, a7, pc - 36        #; a2  = 80, a7  = 800, taken, goto 0x800006c0
       0     1842        M 0x800006c0 mulhu   a5, a3, a4             #; a3  = 10, a4  = 0xcccccccd
       0     1845        M                                           #; (acc) a5  <-- 0x0037d793
       0     1846        M 0x800006c4 srli    a5, a5, 3              #; a5  = 8, (wrb) a5  <-- 1
       0     1847        M 0x800006c8 mul     a5, a5, a6             #; a5  = 1, a6  = 10
       0     1850        M                                           #; (acc) a5  <-- 0x40f687b3
       0     1851        M 0x800006cc sub     a5, a3, a5             #; a3  = 10, a5  = 10, (wrb) a5  <-- 0
       0     1853        M 0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 80, (wrb) a5  <-- 0x00100050
                         M 0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 0
       0     1854        M                                           #; (f:fpu) ft0  <-- 0.0
       0     1855        M 0x800006dc addi    a2, a2, 8              #; a2  = 80, (wrb) a2  <-- 88
       0     1856        M 0x800006e0 addi    a3, a3, 1              #; a3  = 10, (wrb) a3  <-- 11
                         M 0x800006d8 fsd     ft0, 0(a5)             #; 0.0 ~~> Doub[0x00100050]
       0     1857        M 0x800006e4 bne     a2, a7, pc - 36        #; a2  = 88, a7  = 800, taken, goto 0x800006c0
       0     1858        M 0x800006c0 mulhu   a5, a3, a4             #; a3  = 11, a4  = 0xcccccccd
       0     1861        M                                           #; (acc) a5  <-- 0x0037d793
       0     1862        M 0x800006c4 srli    a5, a5, 3              #; a5  = 8, (wrb) a5  <-- 1
       0     1863        M 0x800006c8 mul     a5, a5, a6             #; a5  = 1, a6  = 10
       0     1866        M                                           #; (acc) a5  <-- 0x40f687b3
       0     1867        M 0x800006cc sub     a5, a3, a5             #; a3  = 11, a5  = 10, (wrb) a5  <-- 1
       0     1869        M 0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 88, (wrb) a5  <-- 0x00100058
                         M 0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 1
       0     1870        M                                           #; (f:fpu) ft0  <-- 1.0
       0     1871        M 0x800006dc addi    a2, a2, 8              #; a2  = 88, (wrb) a2  <-- 96
       0     1872        M 0x800006e0 addi    a3, a3, 1              #; a3  = 11, (wrb) a3  <-- 12
                         M 0x800006d8 fsd     ft0, 0(a5)             #; 1.0 ~~> Doub[0x00100058]
       0     1873        M 0x800006e4 bne     a2, a7, pc - 36        #; a2  = 96, a7  = 800, taken, goto 0x800006c0
       0     1874        M 0x800006c0 mulhu   a5, a3, a4             #; a3  = 12, a4  = 0xcccccccd
       0     1877        M                                           #; (acc) a5  <-- 0x0037d793
       0     1878        M 0x800006c4 srli    a5, a5, 3              #; a5  = 9, (wrb) a5  <-- 1
       0     1879        M 0x800006c8 mul     a5, a5, a6             #; a5  = 1, a6  = 10
       0     1882        M                                           #; (acc) a5  <-- 0x40f687b3
       0     1883        M 0x800006cc sub     a5, a3, a5             #; a3  = 12, a5  = 10, (wrb) a5  <-- 2
       0     1885        M 0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 96, (wrb) a5  <-- 0x00100060
                         M 0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 2
       0     1886        M                                           #; (f:fpu) ft0  <-- 2.0
       0     1887        M 0x800006dc addi    a2, a2, 8              #; a2  = 96, (wrb) a2  <-- 104
       0     1888        M 0x800006e0 addi    a3, a3, 1              #; a3  = 12, (wrb) a3  <-- 13
                         M 0x800006d8 fsd     ft0, 0(a5)             #; 2.0 ~~> Doub[0x00100060]
       0     1889        M 0x800006e4 bne     a2, a7, pc - 36        #; a2  = 104, a7  = 800, taken, goto 0x800006c0
       0     1890        M 0x800006c0 mulhu   a5, a3, a4             #; a3  = 13, a4  = 0xcccccccd
       0     1893        M                                           #; (acc) a5  <-- 0x0037d793
       0     1894        M 0x800006c4 srli    a5, a5, 3              #; a5  = 10, (wrb) a5  <-- 1
       0     1895        M 0x800006c8 mul     a5, a5, a6             #; a5  = 1, a6  = 10
       0     1898        M                                           #; (acc) a5  <-- 0x40f687b3
       0     1899        M 0x800006cc sub     a5, a3, a5             #; a3  = 13, a5  = 10, (wrb) a5  <-- 3
       0     1901        M 0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 104, (wrb) a5  <-- 0x00100068
                         M 0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 3
       0     1902        M                                           #; (f:fpu) ft0  <-- 3.0
       0     1903        M 0x800006dc addi    a2, a2, 8              #; a2  = 104, (wrb) a2  <-- 112
       0     1904        M 0x800006e0 addi    a3, a3, 1              #; a3  = 13, (wrb) a3  <-- 14
                         M 0x800006d8 fsd     ft0, 0(a5)             #; 3.0 ~~> Doub[0x00100068]
       0     1905        M 0x800006e4 bne     a2, a7, pc - 36        #; a2  = 112, a7  = 800, taken, goto 0x800006c0
       0     1906        M 0x800006c0 mulhu   a5, a3, a4             #; a3  = 14, a4  = 0xcccccccd
       0     1909        M                                           #; (acc) a5  <-- 0x0037d793
       0     1910        M 0x800006c4 srli    a5, a5, 3              #; a5  = 11, (wrb) a5  <-- 1
       0     1911        M 0x800006c8 mul     a5, a5, a6             #; a5  = 1, a6  = 10
       0     1914        M                                           #; (acc) a5  <-- 0x40f687b3
       0     1915        M 0x800006cc sub     a5, a3, a5             #; a3  = 14, a5  = 10, (wrb) a5  <-- 4
       0     1917        M 0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 112, (wrb) a5  <-- 0x00100070
                         M 0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 4
       0     1918        M                                           #; (f:fpu) ft0  <-- 4.0
       0     1919        M 0x800006dc addi    a2, a2, 8              #; a2  = 112, (wrb) a2  <-- 120
       0     1920        M 0x800006e0 addi    a3, a3, 1              #; a3  = 14, (wrb) a3  <-- 15
                         M 0x800006d8 fsd     ft0, 0(a5)             #; 4.0 ~~> Doub[0x00100070]
       0     1921        M 0x800006e4 bne     a2, a7, pc - 36        #; a2  = 120, a7  = 800, taken, goto 0x800006c0
       0     1922        M 0x800006c0 mulhu   a5, a3, a4             #; a3  = 15, a4  = 0xcccccccd
       0     1925        M                                           #; (acc) a5  <-- 0x0037d793
       0     1926        M 0x800006c4 srli    a5, a5, 3              #; a5  = 12, (wrb) a5  <-- 1
       0     1927        M 0x800006c8 mul     a5, a5, a6             #; a5  = 1, a6  = 10
       0     1930        M                                           #; (acc) a5  <-- 0x40f687b3
       0     1931        M 0x800006cc sub     a5, a3, a5             #; a3  = 15, a5  = 10, (wrb) a5  <-- 5
       0     1933        M 0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 120, (wrb) a5  <-- 0x00100078
                         M 0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 5
       0     1934        M                                           #; (f:fpu) ft0  <-- 5.0
       0     1935        M 0x800006dc addi    a2, a2, 8              #; a2  = 120, (wrb) a2  <-- 128
       0     1936        M 0x800006e0 addi    a3, a3, 1              #; a3  = 15, (wrb) a3  <-- 16
                         M 0x800006d8 fsd     ft0, 0(a5)             #; 5.0 ~~> Doub[0x00100078]
       0     1937        M 0x800006e4 bne     a2, a7, pc - 36        #; a2  = 128, a7  = 800, taken, goto 0x800006c0
       0     1938        M 0x800006c0 mulhu   a5, a3, a4             #; a3  = 16, a4  = 0xcccccccd
       0     1941        M                                           #; (acc) a5  <-- 0x0037d793
       0     1942        M 0x800006c4 srli    a5, a5, 3              #; a5  = 12, (wrb) a5  <-- 1
       0     1943        M 0x800006c8 mul     a5, a5, a6             #; a5  = 1, a6  = 10
       0     1946        M                                           #; (acc) a5  <-- 0x40f687b3
       0     1947        M 0x800006cc sub     a5, a3, a5             #; a3  = 16, a5  = 10, (wrb) a5  <-- 6
       0     1949        M 0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 128, (wrb) a5  <-- 0x00100080
                         M 0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 6
       0     1950        M                                           #; (f:fpu) ft0  <-- 6.0
       0     1951        M 0x800006dc addi    a2, a2, 8              #; a2  = 128, (wrb) a2  <-- 136
       0     1952        M 0x800006e0 addi    a3, a3, 1              #; a3  = 16, (wrb) a3  <-- 17
                         M 0x800006d8 fsd     ft0, 0(a5)             #; 6.0 ~~> Doub[0x00100080]
       0     1953        M 0x800006e4 bne     a2, a7, pc - 36        #; a2  = 136, a7  = 800, taken, goto 0x800006c0
       0     1954        M 0x800006c0 mulhu   a5, a3, a4             #; a3  = 17, a4  = 0xcccccccd
       0     1957        M                                           #; (acc) a5  <-- 0x0037d793
       0     1958        M 0x800006c4 srli    a5, a5, 3              #; a5  = 13, (wrb) a5  <-- 1
       0     1959        M 0x800006c8 mul     a5, a5, a6             #; a5  = 1, a6  = 10
       0     1962        M                                           #; (acc) a5  <-- 0x40f687b3
       0     1963        M 0x800006cc sub     a5, a3, a5             #; a3  = 17, a5  = 10, (wrb) a5  <-- 7
       0     1965        M 0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 136, (wrb) a5  <-- 0x00100088
                         M 0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 7
       0     1966        M                                           #; (f:fpu) ft0  <-- 7.0
       0     1967        M 0x800006dc addi    a2, a2, 8              #; a2  = 136, (wrb) a2  <-- 144
       0     1968        M 0x800006e0 addi    a3, a3, 1              #; a3  = 17, (wrb) a3  <-- 18
                         M 0x800006d8 fsd     ft0, 0(a5)             #; 7.0 ~~> Doub[0x00100088]
       0     1969        M 0x800006e4 bne     a2, a7, pc - 36        #; a2  = 144, a7  = 800, taken, goto 0x800006c0
       0     1970        M 0x800006c0 mulhu   a5, a3, a4             #; a3  = 18, a4  = 0xcccccccd
       0     1973        M                                           #; (acc) a5  <-- 0x0037d793
       0     1974        M 0x800006c4 srli    a5, a5, 3              #; a5  = 14, (wrb) a5  <-- 1
       0     1975        M 0x800006c8 mul     a5, a5, a6             #; a5  = 1, a6  = 10
       0     1978        M                                           #; (acc) a5  <-- 0x40f687b3
       0     1979        M 0x800006cc sub     a5, a3, a5             #; a3  = 18, a5  = 10, (wrb) a5  <-- 8
       0     1981        M 0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 144, (wrb) a5  <-- 0x00100090
                         M 0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 8
       0     1982        M                                           #; (f:fpu) ft0  <-- 8.0
       0     1983        M 0x800006dc addi    a2, a2, 8              #; a2  = 144, (wrb) a2  <-- 152
       0     1984        M 0x800006e0 addi    a3, a3, 1              #; a3  = 18, (wrb) a3  <-- 19
                         M 0x800006d8 fsd     ft0, 0(a5)             #; 8.0 ~~> Doub[0x00100090]
       0     1985        M 0x800006e4 bne     a2, a7, pc - 36        #; a2  = 152, a7  = 800, taken, goto 0x800006c0
       0     1986        M 0x800006c0 mulhu   a5, a3, a4             #; a3  = 19, a4  = 0xcccccccd
       0     1989        M                                           #; (acc) a5  <-- 0x0037d793
       0     1990        M 0x800006c4 srli    a5, a5, 3              #; a5  = 15, (wrb) a5  <-- 1
       0     1991        M 0x800006c8 mul     a5, a5, a6             #; a5  = 1, a6  = 10
       0     1994        M                                           #; (acc) a5  <-- 0x40f687b3
       0     1995        M 0x800006cc sub     a5, a3, a5             #; a3  = 19, a5  = 10, (wrb) a5  <-- 9
       0     1997        M 0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 152, (wrb) a5  <-- 0x00100098
                         M 0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 9
       0     1998        M                                           #; (f:fpu) ft0  <-- 9.0
       0     1999        M 0x800006dc addi    a2, a2, 8              #; a2  = 152, (wrb) a2  <-- 160
       0     2000        M 0x800006e0 addi    a3, a3, 1              #; a3  = 19, (wrb) a3  <-- 20
                         M 0x800006d8 fsd     ft0, 0(a5)             #; 9.0 ~~> Doub[0x00100098]
       0     2001        M 0x800006e4 bne     a2, a7, pc - 36        #; a2  = 160, a7  = 800, taken, goto 0x800006c0
       0     2002        M 0x800006c0 mulhu   a5, a3, a4             #; a3  = 20, a4  = 0xcccccccd
       0     2005        M                                           #; (acc) a5  <-- 0x0037d793
       0     2006        M 0x800006c4 srli    a5, a5, 3              #; a5  = 16, (wrb) a5  <-- 2
       0     2007        M 0x800006c8 mul     a5, a5, a6             #; a5  = 2, a6  = 10
       0     2010        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2011        M 0x800006cc sub     a5, a3, a5             #; a3  = 20, a5  = 20, (wrb) a5  <-- 0
       0     2013        M 0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 160, (wrb) a5  <-- 0x001000a0
                         M 0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 0
       0     2014        M                                           #; (f:fpu) ft0  <-- 0.0
       0     2015        M 0x800006dc addi    a2, a2, 8              #; a2  = 160, (wrb) a2  <-- 168
       0     2016        M 0x800006e0 addi    a3, a3, 1              #; a3  = 20, (wrb) a3  <-- 21
                         M 0x800006d8 fsd     ft0, 0(a5)             #; 0.0 ~~> Doub[0x001000a0]
       0     2017        M 0x800006e4 bne     a2, a7, pc - 36        #; a2  = 168, a7  = 800, taken, goto 0x800006c0
       0     2018        M 0x800006c0 mulhu   a5, a3, a4             #; a3  = 21, a4  = 0xcccccccd
       0     2021        M                                           #; (acc) a5  <-- 0x0037d793
       0     2022        M 0x800006c4 srli    a5, a5, 3              #; a5  = 16, (wrb) a5  <-- 2
       0     2023        M 0x800006c8 mul     a5, a5, a6             #; a5  = 2, a6  = 10
       0     2026        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2027        M 0x800006cc sub     a5, a3, a5             #; a3  = 21, a5  = 20, (wrb) a5  <-- 1
       0     2029        M 0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 168, (wrb) a5  <-- 0x001000a8
                         M 0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 1
       0     2030        M                                           #; (f:fpu) ft0  <-- 1.0
       0     2031        M 0x800006dc addi    a2, a2, 8              #; a2  = 168, (wrb) a2  <-- 176
       0     2032        M 0x800006e0 addi    a3, a3, 1              #; a3  = 21, (wrb) a3  <-- 22
                         M 0x800006d8 fsd     ft0, 0(a5)             #; 1.0 ~~> Doub[0x001000a8]
       0     2033        M 0x800006e4 bne     a2, a7, pc - 36        #; a2  = 176, a7  = 800, taken, goto 0x800006c0
       0     2034        M 0x800006c0 mulhu   a5, a3, a4             #; a3  = 22, a4  = 0xcccccccd
       0     2037        M                                           #; (acc) a5  <-- 0x0037d793
       0     2038        M 0x800006c4 srli    a5, a5, 3              #; a5  = 17, (wrb) a5  <-- 2
       0     2039        M 0x800006c8 mul     a5, a5, a6             #; a5  = 2, a6  = 10
       0     2042        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2043        M 0x800006cc sub     a5, a3, a5             #; a3  = 22, a5  = 20, (wrb) a5  <-- 2
       0     2045        M 0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 176, (wrb) a5  <-- 0x001000b0
                         M 0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 2
       0     2046        M                                           #; (f:fpu) ft0  <-- 2.0
       0     2047        M 0x800006dc addi    a2, a2, 8              #; a2  = 176, (wrb) a2  <-- 184
       0     2048        M 0x800006e0 addi    a3, a3, 1              #; a3  = 22, (wrb) a3  <-- 23
                         M 0x800006d8 fsd     ft0, 0(a5)             #; 2.0 ~~> Doub[0x001000b0]
       0     2049        M 0x800006e4 bne     a2, a7, pc - 36        #; a2  = 184, a7  = 800, taken, goto 0x800006c0
       0     2050        M 0x800006c0 mulhu   a5, a3, a4             #; a3  = 23, a4  = 0xcccccccd
       0     2053        M                                           #; (acc) a5  <-- 0x0037d793
       0     2054        M 0x800006c4 srli    a5, a5, 3              #; a5  = 18, (wrb) a5  <-- 2
       0     2055        M 0x800006c8 mul     a5, a5, a6             #; a5  = 2, a6  = 10
       0     2058        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2059        M 0x800006cc sub     a5, a3, a5             #; a3  = 23, a5  = 20, (wrb) a5  <-- 3
       0     2061        M 0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 184, (wrb) a5  <-- 0x001000b8
                         M 0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 3
       0     2062        M                                           #; (f:fpu) ft0  <-- 3.0
       0     2063        M 0x800006dc addi    a2, a2, 8              #; a2  = 184, (wrb) a2  <-- 192
       0     2064        M 0x800006e0 addi    a3, a3, 1              #; a3  = 23, (wrb) a3  <-- 24
                         M 0x800006d8 fsd     ft0, 0(a5)             #; 3.0 ~~> Doub[0x001000b8]
       0     2065        M 0x800006e4 bne     a2, a7, pc - 36        #; a2  = 192, a7  = 800, taken, goto 0x800006c0
       0     2066        M 0x800006c0 mulhu   a5, a3, a4             #; a3  = 24, a4  = 0xcccccccd
       0     2069        M                                           #; (acc) a5  <-- 0x0037d793
       0     2070        M 0x800006c4 srli    a5, a5, 3              #; a5  = 19, (wrb) a5  <-- 2
       0     2071        M 0x800006c8 mul     a5, a5, a6             #; a5  = 2, a6  = 10
       0     2074        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2075        M 0x800006cc sub     a5, a3, a5             #; a3  = 24, a5  = 20, (wrb) a5  <-- 4
       0     2077        M 0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 192, (wrb) a5  <-- 0x001000c0
                         M 0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 4
       0     2078        M                                           #; (f:fpu) ft0  <-- 4.0
       0     2079        M 0x800006dc addi    a2, a2, 8              #; a2  = 192, (wrb) a2  <-- 200
       0     2080        M 0x800006e0 addi    a3, a3, 1              #; a3  = 24, (wrb) a3  <-- 25
                         M 0x800006d8 fsd     ft0, 0(a5)             #; 4.0 ~~> Doub[0x001000c0]
       0     2081        M 0x800006e4 bne     a2, a7, pc - 36        #; a2  = 200, a7  = 800, taken, goto 0x800006c0
       0     2082        M 0x800006c0 mulhu   a5, a3, a4             #; a3  = 25, a4  = 0xcccccccd
       0     2085        M                                           #; (acc) a5  <-- 0x0037d793
       0     2086        M 0x800006c4 srli    a5, a5, 3              #; a5  = 20, (wrb) a5  <-- 2
       0     2087        M 0x800006c8 mul     a5, a5, a6             #; a5  = 2, a6  = 10
       0     2090        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2091        M 0x800006cc sub     a5, a3, a5             #; a3  = 25, a5  = 20, (wrb) a5  <-- 5
       0     2093        M 0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 200, (wrb) a5  <-- 0x001000c8
                         M 0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 5
       0     2094        M                                           #; (f:fpu) ft0  <-- 5.0
       0     2095        M 0x800006dc addi    a2, a2, 8              #; a2  = 200, (wrb) a2  <-- 208
       0     2096        M 0x800006e0 addi    a3, a3, 1              #; a3  = 25, (wrb) a3  <-- 26
                         M 0x800006d8 fsd     ft0, 0(a5)             #; 5.0 ~~> Doub[0x001000c8]
       0     2097        M 0x800006e4 bne     a2, a7, pc - 36        #; a2  = 208, a7  = 800, taken, goto 0x800006c0
       0     2098        M 0x800006c0 mulhu   a5, a3, a4             #; a3  = 26, a4  = 0xcccccccd
       0     2101        M                                           #; (acc) a5  <-- 0x0037d793
       0     2102        M 0x800006c4 srli    a5, a5, 3              #; a5  = 20, (wrb) a5  <-- 2
       0     2103        M 0x800006c8 mul     a5, a5, a6             #; a5  = 2, a6  = 10
       0     2106        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2107        M 0x800006cc sub     a5, a3, a5             #; a3  = 26, a5  = 20, (wrb) a5  <-- 6
       0     2109        M 0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 208, (wrb) a5  <-- 0x001000d0
                         M 0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 6
       0     2110        M                                           #; (f:fpu) ft0  <-- 6.0
       0     2111        M 0x800006dc addi    a2, a2, 8              #; a2  = 208, (wrb) a2  <-- 216
       0     2112        M 0x800006e0 addi    a3, a3, 1              #; a3  = 26, (wrb) a3  <-- 27
                         M 0x800006d8 fsd     ft0, 0(a5)             #; 6.0 ~~> Doub[0x001000d0]
       0     2113        M 0x800006e4 bne     a2, a7, pc - 36        #; a2  = 216, a7  = 800, taken, goto 0x800006c0
       0     2114        M 0x800006c0 mulhu   a5, a3, a4             #; a3  = 27, a4  = 0xcccccccd
       0     2117        M                                           #; (acc) a5  <-- 0x0037d793
       0     2118        M 0x800006c4 srli    a5, a5, 3              #; a5  = 21, (wrb) a5  <-- 2
       0     2119        M 0x800006c8 mul     a5, a5, a6             #; a5  = 2, a6  = 10
       0     2122        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2123        M 0x800006cc sub     a5, a3, a5             #; a3  = 27, a5  = 20, (wrb) a5  <-- 7
       0     2125        M 0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 216, (wrb) a5  <-- 0x001000d8
                         M 0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 7
       0     2126        M                                           #; (f:fpu) ft0  <-- 7.0
       0     2127        M 0x800006dc addi    a2, a2, 8              #; a2  = 216, (wrb) a2  <-- 224
       0     2128        M 0x800006e0 addi    a3, a3, 1              #; a3  = 27, (wrb) a3  <-- 28
                         M 0x800006d8 fsd     ft0, 0(a5)             #; 7.0 ~~> Doub[0x001000d8]
       0     2129        M 0x800006e4 bne     a2, a7, pc - 36        #; a2  = 224, a7  = 800, taken, goto 0x800006c0
       0     2130        M 0x800006c0 mulhu   a5, a3, a4             #; a3  = 28, a4  = 0xcccccccd
       0     2133        M                                           #; (acc) a5  <-- 0x0037d793
       0     2134        M 0x800006c4 srli    a5, a5, 3              #; a5  = 22, (wrb) a5  <-- 2
       0     2135        M 0x800006c8 mul     a5, a5, a6             #; a5  = 2, a6  = 10
       0     2138        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2139        M 0x800006cc sub     a5, a3, a5             #; a3  = 28, a5  = 20, (wrb) a5  <-- 8
       0     2141        M 0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 224, (wrb) a5  <-- 0x001000e0
                         M 0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 8
       0     2142        M                                           #; (f:fpu) ft0  <-- 8.0
       0     2143        M 0x800006dc addi    a2, a2, 8              #; a2  = 224, (wrb) a2  <-- 232
       0     2144        M 0x800006e0 addi    a3, a3, 1              #; a3  = 28, (wrb) a3  <-- 29
                         M 0x800006d8 fsd     ft0, 0(a5)             #; 8.0 ~~> Doub[0x001000e0]
       0     2145        M 0x800006e4 bne     a2, a7, pc - 36        #; a2  = 232, a7  = 800, taken, goto 0x800006c0
       0     2146        M 0x800006c0 mulhu   a5, a3, a4             #; a3  = 29, a4  = 0xcccccccd
       0     2149        M                                           #; (acc) a5  <-- 0x0037d793
       0     2150        M 0x800006c4 srli    a5, a5, 3              #; a5  = 23, (wrb) a5  <-- 2
       0     2151        M 0x800006c8 mul     a5, a5, a6             #; a5  = 2, a6  = 10
       0     2154        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2155        M 0x800006cc sub     a5, a3, a5             #; a3  = 29, a5  = 20, (wrb) a5  <-- 9
       0     2157        M 0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 232, (wrb) a5  <-- 0x001000e8
                         M 0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 9
       0     2158        M                                           #; (f:fpu) ft0  <-- 9.0
       0     2159        M 0x800006dc addi    a2, a2, 8              #; a2  = 232, (wrb) a2  <-- 240
       0     2160        M 0x800006e0 addi    a3, a3, 1              #; a3  = 29, (wrb) a3  <-- 30
                         M 0x800006d8 fsd     ft0, 0(a5)             #; 9.0 ~~> Doub[0x001000e8]
       0     2161        M 0x800006e4 bne     a2, a7, pc - 36        #; a2  = 240, a7  = 800, taken, goto 0x800006c0
       0     2162        M 0x800006c0 mulhu   a5, a3, a4             #; a3  = 30, a4  = 0xcccccccd
       0     2165        M                                           #; (acc) a5  <-- 0x0037d793
       0     2166        M 0x800006c4 srli    a5, a5, 3              #; a5  = 24, (wrb) a5  <-- 3
       0     2167        M 0x800006c8 mul     a5, a5, a6             #; a5  = 3, a6  = 10
       0     2170        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2171        M 0x800006cc sub     a5, a3, a5             #; a3  = 30, a5  = 30, (wrb) a5  <-- 0
       0     2173        M 0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 240, (wrb) a5  <-- 0x001000f0
                         M 0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 0
       0     2174        M                                           #; (f:fpu) ft0  <-- 0.0
       0     2175        M 0x800006dc addi    a2, a2, 8              #; a2  = 240, (wrb) a2  <-- 248
       0     2176        M 0x800006e0 addi    a3, a3, 1              #; a3  = 30, (wrb) a3  <-- 31
                         M 0x800006d8 fsd     ft0, 0(a5)             #; 0.0 ~~> Doub[0x001000f0]
       0     2177        M 0x800006e4 bne     a2, a7, pc - 36        #; a2  = 248, a7  = 800, taken, goto 0x800006c0
       0     2178        M 0x800006c0 mulhu   a5, a3, a4             #; a3  = 31, a4  = 0xcccccccd
       0     2181        M                                           #; (acc) a5  <-- 0x0037d793
       0     2182        M 0x800006c4 srli    a5, a5, 3              #; a5  = 24, (wrb) a5  <-- 3
       0     2183        M 0x800006c8 mul     a5, a5, a6             #; a5  = 3, a6  = 10
       0     2186        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2187        M 0x800006cc sub     a5, a3, a5             #; a3  = 31, a5  = 30, (wrb) a5  <-- 1
       0     2189        M 0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 248, (wrb) a5  <-- 0x001000f8
                         M 0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 1
       0     2190        M                                           #; (f:fpu) ft0  <-- 1.0
       0     2191        M 0x800006dc addi    a2, a2, 8              #; a2  = 248, (wrb) a2  <-- 256
       0     2192        M 0x800006e0 addi    a3, a3, 1              #; a3  = 31, (wrb) a3  <-- 32
                         M 0x800006d8 fsd     ft0, 0(a5)             #; 1.0 ~~> Doub[0x001000f8]
       0     2193        M 0x800006e4 bne     a2, a7, pc - 36        #; a2  = 256, a7  = 800, taken, goto 0x800006c0
       0     2194        M 0x800006c0 mulhu   a5, a3, a4             #; a3  = 32, a4  = 0xcccccccd
       0     2197        M                                           #; (acc) a5  <-- 0x0037d793
       0     2198        M 0x800006c4 srli    a5, a5, 3              #; a5  = 25, (wrb) a5  <-- 3
       0     2199        M 0x800006c8 mul     a5, a5, a6             #; a5  = 3, a6  = 10
       0     2202        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2203        M 0x800006cc sub     a5, a3, a5             #; a3  = 32, a5  = 30, (wrb) a5  <-- 2
       0     2205        M 0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 256, (wrb) a5  <-- 0x00100100
                         M 0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 2
       0     2206        M                                           #; (f:fpu) ft0  <-- 2.0
       0     2207        M 0x800006dc addi    a2, a2, 8              #; a2  = 256, (wrb) a2  <-- 264
       0     2208        M 0x800006e0 addi    a3, a3, 1              #; a3  = 32, (wrb) a3  <-- 33
                         M 0x800006d8 fsd     ft0, 0(a5)             #; 2.0 ~~> Doub[0x00100100]
       0     2209        M 0x800006e4 bne     a2, a7, pc - 36        #; a2  = 264, a7  = 800, taken, goto 0x800006c0
       0     2210        M 0x800006c0 mulhu   a5, a3, a4             #; a3  = 33, a4  = 0xcccccccd
       0     2213        M                                           #; (acc) a5  <-- 0x0037d793
       0     2214        M 0x800006c4 srli    a5, a5, 3              #; a5  = 26, (wrb) a5  <-- 3
       0     2215        M 0x800006c8 mul     a5, a5, a6             #; a5  = 3, a6  = 10
       0     2218        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2219        M 0x800006cc sub     a5, a3, a5             #; a3  = 33, a5  = 30, (wrb) a5  <-- 3
       0     2221        M 0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 264, (wrb) a5  <-- 0x00100108
                         M 0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 3
       0     2222        M                                           #; (f:fpu) ft0  <-- 3.0
       0     2223        M 0x800006dc addi    a2, a2, 8              #; a2  = 264, (wrb) a2  <-- 272
       0     2224        M 0x800006e0 addi    a3, a3, 1              #; a3  = 33, (wrb) a3  <-- 34
                         M 0x800006d8 fsd     ft0, 0(a5)             #; 3.0 ~~> Doub[0x00100108]
       0     2225        M 0x800006e4 bne     a2, a7, pc - 36        #; a2  = 272, a7  = 800, taken, goto 0x800006c0
       0     2226        M 0x800006c0 mulhu   a5, a3, a4             #; a3  = 34, a4  = 0xcccccccd
       0     2229        M                                           #; (acc) a5  <-- 0x0037d793
       0     2230        M 0x800006c4 srli    a5, a5, 3              #; a5  = 27, (wrb) a5  <-- 3
       0     2231        M 0x800006c8 mul     a5, a5, a6             #; a5  = 3, a6  = 10
       0     2234        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2235        M 0x800006cc sub     a5, a3, a5             #; a3  = 34, a5  = 30, (wrb) a5  <-- 4
       0     2237        M 0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 272, (wrb) a5  <-- 0x00100110
                         M 0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 4
       0     2238        M                                           #; (f:fpu) ft0  <-- 4.0
       0     2239        M 0x800006dc addi    a2, a2, 8              #; a2  = 272, (wrb) a2  <-- 280
       0     2240        M 0x800006e0 addi    a3, a3, 1              #; a3  = 34, (wrb) a3  <-- 35
                         M 0x800006d8 fsd     ft0, 0(a5)             #; 4.0 ~~> Doub[0x00100110]
       0     2241        M 0x800006e4 bne     a2, a7, pc - 36        #; a2  = 280, a7  = 800, taken, goto 0x800006c0
       0     2242        M 0x800006c0 mulhu   a5, a3, a4             #; a3  = 35, a4  = 0xcccccccd
       0     2245        M                                           #; (acc) a5  <-- 0x0037d793
       0     2246        M 0x800006c4 srli    a5, a5, 3              #; a5  = 28, (wrb) a5  <-- 3
       0     2247        M 0x800006c8 mul     a5, a5, a6             #; a5  = 3, a6  = 10
       0     2250        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2251        M 0x800006cc sub     a5, a3, a5             #; a3  = 35, a5  = 30, (wrb) a5  <-- 5
       0     2253        M 0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 280, (wrb) a5  <-- 0x00100118
                         M 0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 5
       0     2254        M                                           #; (f:fpu) ft0  <-- 5.0
       0     2255        M 0x800006dc addi    a2, a2, 8              #; a2  = 280, (wrb) a2  <-- 288
       0     2256        M 0x800006e0 addi    a3, a3, 1              #; a3  = 35, (wrb) a3  <-- 36
                         M 0x800006d8 fsd     ft0, 0(a5)             #; 5.0 ~~> Doub[0x00100118]
       0     2257        M 0x800006e4 bne     a2, a7, pc - 36        #; a2  = 288, a7  = 800, taken, goto 0x800006c0
       0     2258        M 0x800006c0 mulhu   a5, a3, a4             #; a3  = 36, a4  = 0xcccccccd
       0     2261        M                                           #; (acc) a5  <-- 0x0037d793
       0     2262        M 0x800006c4 srli    a5, a5, 3              #; a5  = 28, (wrb) a5  <-- 3
       0     2263        M 0x800006c8 mul     a5, a5, a6             #; a5  = 3, a6  = 10
       0     2266        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2267        M 0x800006cc sub     a5, a3, a5             #; a3  = 36, a5  = 30, (wrb) a5  <-- 6
       0     2269        M 0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 288, (wrb) a5  <-- 0x00100120
                         M 0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 6
       0     2270        M                                           #; (f:fpu) ft0  <-- 6.0
       0     2271        M 0x800006dc addi    a2, a2, 8              #; a2  = 288, (wrb) a2  <-- 296
       0     2272        M 0x800006e0 addi    a3, a3, 1              #; a3  = 36, (wrb) a3  <-- 37
                         M 0x800006d8 fsd     ft0, 0(a5)             #; 6.0 ~~> Doub[0x00100120]
       0     2273        M 0x800006e4 bne     a2, a7, pc - 36        #; a2  = 296, a7  = 800, taken, goto 0x800006c0
       0     2274        M 0x800006c0 mulhu   a5, a3, a4             #; a3  = 37, a4  = 0xcccccccd
       0     2277        M                                           #; (acc) a5  <-- 0x0037d793
       0     2278        M 0x800006c4 srli    a5, a5, 3              #; a5  = 29, (wrb) a5  <-- 3
       0     2279        M 0x800006c8 mul     a5, a5, a6             #; a5  = 3, a6  = 10
       0     2282        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2283        M 0x800006cc sub     a5, a3, a5             #; a3  = 37, a5  = 30, (wrb) a5  <-- 7
       0     2285        M 0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 296, (wrb) a5  <-- 0x00100128
                         M 0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 7
       0     2286        M                                           #; (f:fpu) ft0  <-- 7.0
       0     2287        M 0x800006dc addi    a2, a2, 8              #; a2  = 296, (wrb) a2  <-- 304
       0     2288        M 0x800006e0 addi    a3, a3, 1              #; a3  = 37, (wrb) a3  <-- 38
                         M 0x800006d8 fsd     ft0, 0(a5)             #; 7.0 ~~> Doub[0x00100128]
       0     2289        M 0x800006e4 bne     a2, a7, pc - 36        #; a2  = 304, a7  = 800, taken, goto 0x800006c0
       0     2290        M 0x800006c0 mulhu   a5, a3, a4             #; a3  = 38, a4  = 0xcccccccd
       0     2293        M                                           #; (acc) a5  <-- 0x0037d793
       0     2294        M 0x800006c4 srli    a5, a5, 3              #; a5  = 30, (wrb) a5  <-- 3
       0     2295        M 0x800006c8 mul     a5, a5, a6             #; a5  = 3, a6  = 10
       0     2298        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2299        M 0x800006cc sub     a5, a3, a5             #; a3  = 38, a5  = 30, (wrb) a5  <-- 8
       0     2301        M 0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 304, (wrb) a5  <-- 0x00100130
                         M 0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 8
       0     2302        M                                           #; (f:fpu) ft0  <-- 8.0
       0     2303        M 0x800006dc addi    a2, a2, 8              #; a2  = 304, (wrb) a2  <-- 312
       0     2304        M 0x800006e0 addi    a3, a3, 1              #; a3  = 38, (wrb) a3  <-- 39
                         M 0x800006d8 fsd     ft0, 0(a5)             #; 8.0 ~~> Doub[0x00100130]
       0     2305        M 0x800006e4 bne     a2, a7, pc - 36        #; a2  = 312, a7  = 800, taken, goto 0x800006c0
       0     2306        M 0x800006c0 mulhu   a5, a3, a4             #; a3  = 39, a4  = 0xcccccccd
       0     2309        M                                           #; (acc) a5  <-- 0x0037d793
       0     2310        M 0x800006c4 srli    a5, a5, 3              #; a5  = 31, (wrb) a5  <-- 3
       0     2311        M 0x800006c8 mul     a5, a5, a6             #; a5  = 3, a6  = 10
       0     2314        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2315        M 0x800006cc sub     a5, a3, a5             #; a3  = 39, a5  = 30, (wrb) a5  <-- 9
       0     2317        M 0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 312, (wrb) a5  <-- 0x00100138
                         M 0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 9
       0     2318        M                                           #; (f:fpu) ft0  <-- 9.0
       0     2319        M 0x800006dc addi    a2, a2, 8              #; a2  = 312, (wrb) a2  <-- 320
       0     2320        M 0x800006e0 addi    a3, a3, 1              #; a3  = 39, (wrb) a3  <-- 40
                         M 0x800006d8 fsd     ft0, 0(a5)             #; 9.0 ~~> Doub[0x00100138]
       0     2321        M 0x800006e4 bne     a2, a7, pc - 36        #; a2  = 320, a7  = 800, taken, goto 0x800006c0
       0     2322        M 0x800006c0 mulhu   a5, a3, a4             #; a3  = 40, a4  = 0xcccccccd
       0     2325        M                                           #; (acc) a5  <-- 0x0037d793
       0     2326        M 0x800006c4 srli    a5, a5, 3              #; a5  = 32, (wrb) a5  <-- 4
       0     2327        M 0x800006c8 mul     a5, a5, a6             #; a5  = 4, a6  = 10
       0     2330        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2331        M 0x800006cc sub     a5, a3, a5             #; a3  = 40, a5  = 40, (wrb) a5  <-- 0
       0     2333        M 0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 320, (wrb) a5  <-- 0x00100140
                         M 0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 0
       0     2334        M                                           #; (f:fpu) ft0  <-- 0.0
       0     2335        M 0x800006dc addi    a2, a2, 8              #; a2  = 320, (wrb) a2  <-- 328
       0     2336        M 0x800006e0 addi    a3, a3, 1              #; a3  = 40, (wrb) a3  <-- 41
                         M 0x800006d8 fsd     ft0, 0(a5)             #; 0.0 ~~> Doub[0x00100140]
       0     2337        M 0x800006e4 bne     a2, a7, pc - 36        #; a2  = 328, a7  = 800, taken, goto 0x800006c0
       0     2338        M 0x800006c0 mulhu   a5, a3, a4             #; a3  = 41, a4  = 0xcccccccd
       0     2341        M                                           #; (acc) a5  <-- 0x0037d793
       0     2342        M 0x800006c4 srli    a5, a5, 3              #; a5  = 32, (wrb) a5  <-- 4
       0     2343        M 0x800006c8 mul     a5, a5, a6             #; a5  = 4, a6  = 10
       0     2346        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2347        M 0x800006cc sub     a5, a3, a5             #; a3  = 41, a5  = 40, (wrb) a5  <-- 1
       0     2349        M 0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 328, (wrb) a5  <-- 0x00100148
                         M 0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 1
       0     2350        M                                           #; (f:fpu) ft0  <-- 1.0
       0     2351        M 0x800006dc addi    a2, a2, 8              #; a2  = 328, (wrb) a2  <-- 336
       0     2352        M 0x800006e0 addi    a3, a3, 1              #; a3  = 41, (wrb) a3  <-- 42
                         M 0x800006d8 fsd     ft0, 0(a5)             #; 1.0 ~~> Doub[0x00100148]
       0     2353        M 0x800006e4 bne     a2, a7, pc - 36        #; a2  = 336, a7  = 800, taken, goto 0x800006c0
       0     2354        M 0x800006c0 mulhu   a5, a3, a4             #; a3  = 42, a4  = 0xcccccccd
       0     2357        M                                           #; (acc) a5  <-- 0x0037d793
       0     2358        M 0x800006c4 srli    a5, a5, 3              #; a5  = 33, (wrb) a5  <-- 4
       0     2359        M 0x800006c8 mul     a5, a5, a6             #; a5  = 4, a6  = 10
       0     2362        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2363        M 0x800006cc sub     a5, a3, a5             #; a3  = 42, a5  = 40, (wrb) a5  <-- 2
       0     2365        M 0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 336, (wrb) a5  <-- 0x00100150
                         M 0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 2
       0     2366        M                                           #; (f:fpu) ft0  <-- 2.0
       0     2367        M 0x800006dc addi    a2, a2, 8              #; a2  = 336, (wrb) a2  <-- 344
       0     2368        M 0x800006e0 addi    a3, a3, 1              #; a3  = 42, (wrb) a3  <-- 43
                         M 0x800006d8 fsd     ft0, 0(a5)             #; 2.0 ~~> Doub[0x00100150]
       0     2369        M 0x800006e4 bne     a2, a7, pc - 36        #; a2  = 344, a7  = 800, taken, goto 0x800006c0
       0     2370        M 0x800006c0 mulhu   a5, a3, a4             #; a3  = 43, a4  = 0xcccccccd
       0     2373        M                                           #; (acc) a5  <-- 0x0037d793
       0     2374        M 0x800006c4 srli    a5, a5, 3              #; a5  = 34, (wrb) a5  <-- 4
       0     2375        M 0x800006c8 mul     a5, a5, a6             #; a5  = 4, a6  = 10
       0     2378        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2379        M 0x800006cc sub     a5, a3, a5             #; a3  = 43, a5  = 40, (wrb) a5  <-- 3
       0     2381        M 0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 344, (wrb) a5  <-- 0x00100158
                         M 0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 3
       0     2382        M                                           #; (f:fpu) ft0  <-- 3.0
       0     2383        M 0x800006dc addi    a2, a2, 8              #; a2  = 344, (wrb) a2  <-- 352
       0     2384        M 0x800006e0 addi    a3, a3, 1              #; a3  = 43, (wrb) a3  <-- 44
                         M 0x800006d8 fsd     ft0, 0(a5)             #; 3.0 ~~> Doub[0x00100158]
       0     2385        M 0x800006e4 bne     a2, a7, pc - 36        #; a2  = 352, a7  = 800, taken, goto 0x800006c0
       0     2386        M 0x800006c0 mulhu   a5, a3, a4             #; a3  = 44, a4  = 0xcccccccd
       0     2389        M                                           #; (acc) a5  <-- 0x0037d793
       0     2390        M 0x800006c4 srli    a5, a5, 3              #; a5  = 35, (wrb) a5  <-- 4
       0     2391        M 0x800006c8 mul     a5, a5, a6             #; a5  = 4, a6  = 10
       0     2394        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2395        M 0x800006cc sub     a5, a3, a5             #; a3  = 44, a5  = 40, (wrb) a5  <-- 4
       0     2397        M 0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 352, (wrb) a5  <-- 0x00100160
                         M 0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 4
       0     2398        M                                           #; (f:fpu) ft0  <-- 4.0
       0     2399        M 0x800006dc addi    a2, a2, 8              #; a2  = 352, (wrb) a2  <-- 360
       0     2400        M 0x800006e0 addi    a3, a3, 1              #; a3  = 44, (wrb) a3  <-- 45
                         M 0x800006d8 fsd     ft0, 0(a5)             #; 4.0 ~~> Doub[0x00100160]
       0     2401        M 0x800006e4 bne     a2, a7, pc - 36        #; a2  = 360, a7  = 800, taken, goto 0x800006c0
       0     2402        M 0x800006c0 mulhu   a5, a3, a4             #; a3  = 45, a4  = 0xcccccccd
       0     2405        M                                           #; (acc) a5  <-- 0x0037d793
       0     2406        M 0x800006c4 srli    a5, a5, 3              #; a5  = 36, (wrb) a5  <-- 4
       0     2407        M 0x800006c8 mul     a5, a5, a6             #; a5  = 4, a6  = 10
       0     2410        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2411        M 0x800006cc sub     a5, a3, a5             #; a3  = 45, a5  = 40, (wrb) a5  <-- 5
       0     2413        M 0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 360, (wrb) a5  <-- 0x00100168
                         M 0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 5
       0     2414        M                                           #; (f:fpu) ft0  <-- 5.0
       0     2415        M 0x800006dc addi    a2, a2, 8              #; a2  = 360, (wrb) a2  <-- 368
       0     2416        M 0x800006e0 addi    a3, a3, 1              #; a3  = 45, (wrb) a3  <-- 46
                         M 0x800006d8 fsd     ft0, 0(a5)             #; 5.0 ~~> Doub[0x00100168]
       0     2417        M 0x800006e4 bne     a2, a7, pc - 36        #; a2  = 368, a7  = 800, taken, goto 0x800006c0
       0     2418        M 0x800006c0 mulhu   a5, a3, a4             #; a3  = 46, a4  = 0xcccccccd
       0     2421        M                                           #; (acc) a5  <-- 0x0037d793
       0     2422        M 0x800006c4 srli    a5, a5, 3              #; a5  = 36, (wrb) a5  <-- 4
       0     2423        M 0x800006c8 mul     a5, a5, a6             #; a5  = 4, a6  = 10
       0     2426        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2427        M 0x800006cc sub     a5, a3, a5             #; a3  = 46, a5  = 40, (wrb) a5  <-- 6
       0     2429        M 0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 368, (wrb) a5  <-- 0x00100170
                         M 0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 6
       0     2430        M                                           #; (f:fpu) ft0  <-- 6.0
       0     2431        M 0x800006dc addi    a2, a2, 8              #; a2  = 368, (wrb) a2  <-- 376
       0     2432        M 0x800006e0 addi    a3, a3, 1              #; a3  = 46, (wrb) a3  <-- 47
                         M 0x800006d8 fsd     ft0, 0(a5)             #; 6.0 ~~> Doub[0x00100170]
       0     2433        M 0x800006e4 bne     a2, a7, pc - 36        #; a2  = 376, a7  = 800, taken, goto 0x800006c0
       0     2434        M 0x800006c0 mulhu   a5, a3, a4             #; a3  = 47, a4  = 0xcccccccd
       0     2437        M                                           #; (acc) a5  <-- 0x0037d793
       0     2438        M 0x800006c4 srli    a5, a5, 3              #; a5  = 37, (wrb) a5  <-- 4
       0     2439        M 0x800006c8 mul     a5, a5, a6             #; a5  = 4, a6  = 10
       0     2442        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2443        M 0x800006cc sub     a5, a3, a5             #; a3  = 47, a5  = 40, (wrb) a5  <-- 7
       0     2445        M 0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 376, (wrb) a5  <-- 0x00100178
                         M 0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 7
       0     2446        M                                           #; (f:fpu) ft0  <-- 7.0
       0     2447        M 0x800006dc addi    a2, a2, 8              #; a2  = 376, (wrb) a2  <-- 384
       0     2448        M 0x800006e0 addi    a3, a3, 1              #; a3  = 47, (wrb) a3  <-- 48
                         M 0x800006d8 fsd     ft0, 0(a5)             #; 7.0 ~~> Doub[0x00100178]
       0     2449        M 0x800006e4 bne     a2, a7, pc - 36        #; a2  = 384, a7  = 800, taken, goto 0x800006c0
       0     2450        M 0x800006c0 mulhu   a5, a3, a4             #; a3  = 48, a4  = 0xcccccccd
       0     2453        M                                           #; (acc) a5  <-- 0x0037d793
       0     2454        M 0x800006c4 srli    a5, a5, 3              #; a5  = 38, (wrb) a5  <-- 4
       0     2455        M 0x800006c8 mul     a5, a5, a6             #; a5  = 4, a6  = 10
       0     2458        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2459        M 0x800006cc sub     a5, a3, a5             #; a3  = 48, a5  = 40, (wrb) a5  <-- 8
       0     2461        M 0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 384, (wrb) a5  <-- 0x00100180
                         M 0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 8
       0     2462        M                                           #; (f:fpu) ft0  <-- 8.0
       0     2463        M 0x800006dc addi    a2, a2, 8              #; a2  = 384, (wrb) a2  <-- 392
       0     2464        M 0x800006e0 addi    a3, a3, 1              #; a3  = 48, (wrb) a3  <-- 49
                         M 0x800006d8 fsd     ft0, 0(a5)             #; 8.0 ~~> Doub[0x00100180]
       0     2465        M 0x800006e4 bne     a2, a7, pc - 36        #; a2  = 392, a7  = 800, taken, goto 0x800006c0
       0     2466        M 0x800006c0 mulhu   a5, a3, a4             #; a3  = 49, a4  = 0xcccccccd
       0     2469        M                                           #; (acc) a5  <-- 0x0037d793
       0     2470        M 0x800006c4 srli    a5, a5, 3              #; a5  = 39, (wrb) a5  <-- 4
       0     2471        M 0x800006c8 mul     a5, a5, a6             #; a5  = 4, a6  = 10
       0     2474        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2475        M 0x800006cc sub     a5, a3, a5             #; a3  = 49, a5  = 40, (wrb) a5  <-- 9
       0     2477        M 0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 392, (wrb) a5  <-- 0x00100188
                         M 0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 9
       0     2478        M                                           #; (f:fpu) ft0  <-- 9.0
       0     2479        M 0x800006dc addi    a2, a2, 8              #; a2  = 392, (wrb) a2  <-- 400
       0     2480        M 0x800006e0 addi    a3, a3, 1              #; a3  = 49, (wrb) a3  <-- 50
                         M 0x800006d8 fsd     ft0, 0(a5)             #; 9.0 ~~> Doub[0x00100188]
       0     2481        M 0x800006e4 bne     a2, a7, pc - 36        #; a2  = 400, a7  = 800, taken, goto 0x800006c0
       0     2482        M 0x800006c0 mulhu   a5, a3, a4             #; a3  = 50, a4  = 0xcccccccd
       0     2485        M                                           #; (acc) a5  <-- 0x0037d793
       0     2486        M 0x800006c4 srli    a5, a5, 3              #; a5  = 40, (wrb) a5  <-- 5
       0     2487        M 0x800006c8 mul     a5, a5, a6             #; a5  = 5, a6  = 10
       0     2490        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2491        M 0x800006cc sub     a5, a3, a5             #; a3  = 50, a5  = 50, (wrb) a5  <-- 0
       0     2493        M 0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 400, (wrb) a5  <-- 0x00100190
                         M 0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 0
       0     2494        M                                           #; (f:fpu) ft0  <-- 0.0
       0     2495        M 0x800006dc addi    a2, a2, 8              #; a2  = 400, (wrb) a2  <-- 408
       0     2496        M 0x800006e0 addi    a3, a3, 1              #; a3  = 50, (wrb) a3  <-- 51
                         M 0x800006d8 fsd     ft0, 0(a5)             #; 0.0 ~~> Doub[0x00100190]
       0     2497        M 0x800006e4 bne     a2, a7, pc - 36        #; a2  = 408, a7  = 800, taken, goto 0x800006c0
       0     2498        M 0x800006c0 mulhu   a5, a3, a4             #; a3  = 51, a4  = 0xcccccccd
       0     2501        M                                           #; (acc) a5  <-- 0x0037d793
       0     2502        M 0x800006c4 srli    a5, a5, 3              #; a5  = 40, (wrb) a5  <-- 5
       0     2503        M 0x800006c8 mul     a5, a5, a6             #; a5  = 5, a6  = 10
       0     2506        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2507        M 0x800006cc sub     a5, a3, a5             #; a3  = 51, a5  = 50, (wrb) a5  <-- 1
       0     2509        M 0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 408, (wrb) a5  <-- 0x00100198
                         M 0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 1
       0     2510        M                                           #; (f:fpu) ft0  <-- 1.0
       0     2511        M 0x800006dc addi    a2, a2, 8              #; a2  = 408, (wrb) a2  <-- 416
       0     2512        M 0x800006e0 addi    a3, a3, 1              #; a3  = 51, (wrb) a3  <-- 52
                         M 0x800006d8 fsd     ft0, 0(a5)             #; 1.0 ~~> Doub[0x00100198]
       0     2513        M 0x800006e4 bne     a2, a7, pc - 36        #; a2  = 416, a7  = 800, taken, goto 0x800006c0
       0     2514        M 0x800006c0 mulhu   a5, a3, a4             #; a3  = 52, a4  = 0xcccccccd
       0     2517        M                                           #; (acc) a5  <-- 0x0037d793
       0     2518        M 0x800006c4 srli    a5, a5, 3              #; a5  = 41, (wrb) a5  <-- 5
       0     2519        M 0x800006c8 mul     a5, a5, a6             #; a5  = 5, a6  = 10
       0     2522        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2523        M 0x800006cc sub     a5, a3, a5             #; a3  = 52, a5  = 50, (wrb) a5  <-- 2
       0     2525        M 0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 416, (wrb) a5  <-- 0x001001a0
                         M 0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 2
       0     2526        M                                           #; (f:fpu) ft0  <-- 2.0
       0     2527        M 0x800006dc addi    a2, a2, 8              #; a2  = 416, (wrb) a2  <-- 424
       0     2528        M 0x800006e0 addi    a3, a3, 1              #; a3  = 52, (wrb) a3  <-- 53
                         M 0x800006d8 fsd     ft0, 0(a5)             #; 2.0 ~~> Doub[0x001001a0]
       0     2529        M 0x800006e4 bne     a2, a7, pc - 36        #; a2  = 424, a7  = 800, taken, goto 0x800006c0
       0     2530        M 0x800006c0 mulhu   a5, a3, a4             #; a3  = 53, a4  = 0xcccccccd
       0     2533        M                                           #; (acc) a5  <-- 0x0037d793
       0     2534        M 0x800006c4 srli    a5, a5, 3              #; a5  = 42, (wrb) a5  <-- 5
       0     2535        M 0x800006c8 mul     a5, a5, a6             #; a5  = 5, a6  = 10
       0     2538        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2539        M 0x800006cc sub     a5, a3, a5             #; a3  = 53, a5  = 50, (wrb) a5  <-- 3
       0     2541        M 0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 424, (wrb) a5  <-- 0x001001a8
                         M 0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 3
       0     2542        M                                           #; (f:fpu) ft0  <-- 3.0
       0     2543        M 0x800006dc addi    a2, a2, 8              #; a2  = 424, (wrb) a2  <-- 432
       0     2544        M 0x800006e0 addi    a3, a3, 1              #; a3  = 53, (wrb) a3  <-- 54
                         M 0x800006d8 fsd     ft0, 0(a5)             #; 3.0 ~~> Doub[0x001001a8]
       0     2545        M 0x800006e4 bne     a2, a7, pc - 36        #; a2  = 432, a7  = 800, taken, goto 0x800006c0
       0     2546        M 0x800006c0 mulhu   a5, a3, a4             #; a3  = 54, a4  = 0xcccccccd
       0     2549        M                                           #; (acc) a5  <-- 0x0037d793
       0     2550        M 0x800006c4 srli    a5, a5, 3              #; a5  = 43, (wrb) a5  <-- 5
       0     2551        M 0x800006c8 mul     a5, a5, a6             #; a5  = 5, a6  = 10
       0     2554        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2555        M 0x800006cc sub     a5, a3, a5             #; a3  = 54, a5  = 50, (wrb) a5  <-- 4
       0     2557        M 0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 432, (wrb) a5  <-- 0x001001b0
                         M 0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 4
       0     2558        M                                           #; (f:fpu) ft0  <-- 4.0
       0     2559        M 0x800006dc addi    a2, a2, 8              #; a2  = 432, (wrb) a2  <-- 440
       0     2560        M 0x800006e0 addi    a3, a3, 1              #; a3  = 54, (wrb) a3  <-- 55
                         M 0x800006d8 fsd     ft0, 0(a5)             #; 4.0 ~~> Doub[0x001001b0]
       0     2561        M 0x800006e4 bne     a2, a7, pc - 36        #; a2  = 440, a7  = 800, taken, goto 0x800006c0
       0     2562        M 0x800006c0 mulhu   a5, a3, a4             #; a3  = 55, a4  = 0xcccccccd
       0     2565        M                                           #; (acc) a5  <-- 0x0037d793
       0     2566        M 0x800006c4 srli    a5, a5, 3              #; a5  = 44, (wrb) a5  <-- 5
       0     2567        M 0x800006c8 mul     a5, a5, a6             #; a5  = 5, a6  = 10
       0     2570        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2571        M 0x800006cc sub     a5, a3, a5             #; a3  = 55, a5  = 50, (wrb) a5  <-- 5
       0     2573        M 0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 440, (wrb) a5  <-- 0x001001b8
                         M 0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 5
       0     2574        M                                           #; (f:fpu) ft0  <-- 5.0
       0     2575        M 0x800006dc addi    a2, a2, 8              #; a2  = 440, (wrb) a2  <-- 448
       0     2576        M 0x800006e0 addi    a3, a3, 1              #; a3  = 55, (wrb) a3  <-- 56
                         M 0x800006d8 fsd     ft0, 0(a5)             #; 5.0 ~~> Doub[0x001001b8]
       0     2577        M 0x800006e4 bne     a2, a7, pc - 36        #; a2  = 448, a7  = 800, taken, goto 0x800006c0
       0     2578        M 0x800006c0 mulhu   a5, a3, a4             #; a3  = 56, a4  = 0xcccccccd
       0     2581        M                                           #; (acc) a5  <-- 0x0037d793
       0     2582        M 0x800006c4 srli    a5, a5, 3              #; a5  = 44, (wrb) a5  <-- 5
       0     2583        M 0x800006c8 mul     a5, a5, a6             #; a5  = 5, a6  = 10
       0     2586        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2587        M 0x800006cc sub     a5, a3, a5             #; a3  = 56, a5  = 50, (wrb) a5  <-- 6
       0     2589        M 0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 448, (wrb) a5  <-- 0x001001c0
                         M 0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 6
       0     2590        M                                           #; (f:fpu) ft0  <-- 6.0
       0     2591        M 0x800006dc addi    a2, a2, 8              #; a2  = 448, (wrb) a2  <-- 456
       0     2592        M 0x800006e0 addi    a3, a3, 1              #; a3  = 56, (wrb) a3  <-- 57
                         M 0x800006d8 fsd     ft0, 0(a5)             #; 6.0 ~~> Doub[0x001001c0]
       0     2593        M 0x800006e4 bne     a2, a7, pc - 36        #; a2  = 456, a7  = 800, taken, goto 0x800006c0
       0     2594        M 0x800006c0 mulhu   a5, a3, a4             #; a3  = 57, a4  = 0xcccccccd
       0     2597        M                                           #; (acc) a5  <-- 0x0037d793
       0     2598        M 0x800006c4 srli    a5, a5, 3              #; a5  = 45, (wrb) a5  <-- 5
       0     2599        M 0x800006c8 mul     a5, a5, a6             #; a5  = 5, a6  = 10
       0     2602        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2603        M 0x800006cc sub     a5, a3, a5             #; a3  = 57, a5  = 50, (wrb) a5  <-- 7
       0     2605        M 0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 456, (wrb) a5  <-- 0x001001c8
                         M 0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 7
       0     2606        M                                           #; (f:fpu) ft0  <-- 7.0
       0     2607        M 0x800006dc addi    a2, a2, 8              #; a2  = 456, (wrb) a2  <-- 464
       0     2608        M 0x800006e0 addi    a3, a3, 1              #; a3  = 57, (wrb) a3  <-- 58
                         M 0x800006d8 fsd     ft0, 0(a5)             #; 7.0 ~~> Doub[0x001001c8]
       0     2609        M 0x800006e4 bne     a2, a7, pc - 36        #; a2  = 464, a7  = 800, taken, goto 0x800006c0
       0     2610        M 0x800006c0 mulhu   a5, a3, a4             #; a3  = 58, a4  = 0xcccccccd
       0     2613        M                                           #; (acc) a5  <-- 0x0037d793
       0     2614        M 0x800006c4 srli    a5, a5, 3              #; a5  = 46, (wrb) a5  <-- 5
       0     2615        M 0x800006c8 mul     a5, a5, a6             #; a5  = 5, a6  = 10
       0     2618        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2619        M 0x800006cc sub     a5, a3, a5             #; a3  = 58, a5  = 50, (wrb) a5  <-- 8
       0     2621        M 0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 464, (wrb) a5  <-- 0x001001d0
                         M 0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 8
       0     2622        M                                           #; (f:fpu) ft0  <-- 8.0
       0     2623        M 0x800006dc addi    a2, a2, 8              #; a2  = 464, (wrb) a2  <-- 472
       0     2624        M 0x800006e0 addi    a3, a3, 1              #; a3  = 58, (wrb) a3  <-- 59
                         M 0x800006d8 fsd     ft0, 0(a5)             #; 8.0 ~~> Doub[0x001001d0]
       0     2625        M 0x800006e4 bne     a2, a7, pc - 36        #; a2  = 472, a7  = 800, taken, goto 0x800006c0
       0     2626        M 0x800006c0 mulhu   a5, a3, a4             #; a3  = 59, a4  = 0xcccccccd
       0     2629        M                                           #; (acc) a5  <-- 0x0037d793
       0     2630        M 0x800006c4 srli    a5, a5, 3              #; a5  = 47, (wrb) a5  <-- 5
       0     2631        M 0x800006c8 mul     a5, a5, a6             #; a5  = 5, a6  = 10
       0     2634        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2635        M 0x800006cc sub     a5, a3, a5             #; a3  = 59, a5  = 50, (wrb) a5  <-- 9
       0     2637        M 0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 472, (wrb) a5  <-- 0x001001d8
                         M 0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 9
       0     2638        M                                           #; (f:fpu) ft0  <-- 9.0
       0     2639        M 0x800006dc addi    a2, a2, 8              #; a2  = 472, (wrb) a2  <-- 480
       0     2640        M 0x800006e0 addi    a3, a3, 1              #; a3  = 59, (wrb) a3  <-- 60
                         M 0x800006d8 fsd     ft0, 0(a5)             #; 9.0 ~~> Doub[0x001001d8]
       0     2641        M 0x800006e4 bne     a2, a7, pc - 36        #; a2  = 480, a7  = 800, taken, goto 0x800006c0
       0     2642        M 0x800006c0 mulhu   a5, a3, a4             #; a3  = 60, a4  = 0xcccccccd
       0     2645        M                                           #; (acc) a5  <-- 0x0037d793
       0     2646        M 0x800006c4 srli    a5, a5, 3              #; a5  = 48, (wrb) a5  <-- 6
       0     2647        M 0x800006c8 mul     a5, a5, a6             #; a5  = 6, a6  = 10
       0     2650        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2651        M 0x800006cc sub     a5, a3, a5             #; a3  = 60, a5  = 60, (wrb) a5  <-- 0
       0     2653        M 0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 480, (wrb) a5  <-- 0x001001e0
                         M 0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 0
       0     2654        M                                           #; (f:fpu) ft0  <-- 0.0
       0     2655        M 0x800006dc addi    a2, a2, 8              #; a2  = 480, (wrb) a2  <-- 488
       0     2656        M 0x800006e0 addi    a3, a3, 1              #; a3  = 60, (wrb) a3  <-- 61
                         M 0x800006d8 fsd     ft0, 0(a5)             #; 0.0 ~~> Doub[0x001001e0]
       0     2657        M 0x800006e4 bne     a2, a7, pc - 36        #; a2  = 488, a7  = 800, taken, goto 0x800006c0
       0     2658        M 0x800006c0 mulhu   a5, a3, a4             #; a3  = 61, a4  = 0xcccccccd
       0     2661        M                                           #; (acc) a5  <-- 0x0037d793
       0     2662        M 0x800006c4 srli    a5, a5, 3              #; a5  = 48, (wrb) a5  <-- 6
       0     2663        M 0x800006c8 mul     a5, a5, a6             #; a5  = 6, a6  = 10
       0     2666        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2667        M 0x800006cc sub     a5, a3, a5             #; a3  = 61, a5  = 60, (wrb) a5  <-- 1
       0     2669        M 0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 488, (wrb) a5  <-- 0x001001e8
                         M 0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 1
       0     2670        M                                           #; (f:fpu) ft0  <-- 1.0
       0     2671        M 0x800006dc addi    a2, a2, 8              #; a2  = 488, (wrb) a2  <-- 496
       0     2672        M 0x800006e0 addi    a3, a3, 1              #; a3  = 61, (wrb) a3  <-- 62
                         M 0x800006d8 fsd     ft0, 0(a5)             #; 1.0 ~~> Doub[0x001001e8]
       0     2673        M 0x800006e4 bne     a2, a7, pc - 36        #; a2  = 496, a7  = 800, taken, goto 0x800006c0
       0     2674        M 0x800006c0 mulhu   a5, a3, a4             #; a3  = 62, a4  = 0xcccccccd
       0     2677        M                                           #; (acc) a5  <-- 0x0037d793
       0     2678        M 0x800006c4 srli    a5, a5, 3              #; a5  = 49, (wrb) a5  <-- 6
       0     2679        M 0x800006c8 mul     a5, a5, a6             #; a5  = 6, a6  = 10
       0     2682        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2683        M 0x800006cc sub     a5, a3, a5             #; a3  = 62, a5  = 60, (wrb) a5  <-- 2
       0     2685        M 0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 496, (wrb) a5  <-- 0x001001f0
                         M 0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 2
       0     2686        M                                           #; (f:fpu) ft0  <-- 2.0
       0     2687        M 0x800006dc addi    a2, a2, 8              #; a2  = 496, (wrb) a2  <-- 504
       0     2688        M 0x800006e0 addi    a3, a3, 1              #; a3  = 62, (wrb) a3  <-- 63
                         M 0x800006d8 fsd     ft0, 0(a5)             #; 2.0 ~~> Doub[0x001001f0]
       0     2689        M 0x800006e4 bne     a2, a7, pc - 36        #; a2  = 504, a7  = 800, taken, goto 0x800006c0
       0     2690        M 0x800006c0 mulhu   a5, a3, a4             #; a3  = 63, a4  = 0xcccccccd
       0     2693        M                                           #; (acc) a5  <-- 0x0037d793
       0     2694        M 0x800006c4 srli    a5, a5, 3              #; a5  = 50, (wrb) a5  <-- 6
       0     2695        M 0x800006c8 mul     a5, a5, a6             #; a5  = 6, a6  = 10
       0     2698        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2699        M 0x800006cc sub     a5, a3, a5             #; a3  = 63, a5  = 60, (wrb) a5  <-- 3
       0     2701        M 0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 504, (wrb) a5  <-- 0x001001f8
                         M 0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 3
       0     2702        M                                           #; (f:fpu) ft0  <-- 3.0
       0     2703        M 0x800006dc addi    a2, a2, 8              #; a2  = 504, (wrb) a2  <-- 512
       0     2704        M 0x800006e0 addi    a3, a3, 1              #; a3  = 63, (wrb) a3  <-- 64
                         M 0x800006d8 fsd     ft0, 0(a5)             #; 3.0 ~~> Doub[0x001001f8]
       0     2705        M 0x800006e4 bne     a2, a7, pc - 36        #; a2  = 512, a7  = 800, taken, goto 0x800006c0
       0     2706        M 0x800006c0 mulhu   a5, a3, a4             #; a3  = 64, a4  = 0xcccccccd
       0     2709        M                                           #; (acc) a5  <-- 0x0037d793
       0     2710        M 0x800006c4 srli    a5, a5, 3              #; a5  = 51, (wrb) a5  <-- 6
       0     2711        M 0x800006c8 mul     a5, a5, a6             #; a5  = 6, a6  = 10
       0     2714        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2715        M 0x800006cc sub     a5, a3, a5             #; a3  = 64, a5  = 60, (wrb) a5  <-- 4
       0     2717        M 0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 512, (wrb) a5  <-- 0x00100200
                         M 0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 4
       0     2718        M                                           #; (f:fpu) ft0  <-- 4.0
       0     2719        M 0x800006dc addi    a2, a2, 8              #; a2  = 512, (wrb) a2  <-- 520
       0     2720        M 0x800006e0 addi    a3, a3, 1              #; a3  = 64, (wrb) a3  <-- 65
                         M 0x800006d8 fsd     ft0, 0(a5)             #; 4.0 ~~> Doub[0x00100200]
       0     2721        M 0x800006e4 bne     a2, a7, pc - 36        #; a2  = 520, a7  = 800, taken, goto 0x800006c0
       0     2722        M 0x800006c0 mulhu   a5, a3, a4             #; a3  = 65, a4  = 0xcccccccd
       0     2725        M                                           #; (acc) a5  <-- 0x0037d793
       0     2726        M 0x800006c4 srli    a5, a5, 3              #; a5  = 52, (wrb) a5  <-- 6
       0     2727        M 0x800006c8 mul     a5, a5, a6             #; a5  = 6, a6  = 10
       0     2730        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2731        M 0x800006cc sub     a5, a3, a5             #; a3  = 65, a5  = 60, (wrb) a5  <-- 5
       0     2733        M 0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 520, (wrb) a5  <-- 0x00100208
                         M 0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 5
       0     2734        M                                           #; (f:fpu) ft0  <-- 5.0
       0     2735        M 0x800006dc addi    a2, a2, 8              #; a2  = 520, (wrb) a2  <-- 528
       0     2736        M 0x800006e0 addi    a3, a3, 1              #; a3  = 65, (wrb) a3  <-- 66
                         M 0x800006d8 fsd     ft0, 0(a5)             #; 5.0 ~~> Doub[0x00100208]
       0     2737        M 0x800006e4 bne     a2, a7, pc - 36        #; a2  = 528, a7  = 800, taken, goto 0x800006c0
       0     2738        M 0x800006c0 mulhu   a5, a3, a4             #; a3  = 66, a4  = 0xcccccccd
       0     2741        M                                           #; (acc) a5  <-- 0x0037d793
       0     2742        M 0x800006c4 srli    a5, a5, 3              #; a5  = 52, (wrb) a5  <-- 6
       0     2743        M 0x800006c8 mul     a5, a5, a6             #; a5  = 6, a6  = 10
       0     2746        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2747        M 0x800006cc sub     a5, a3, a5             #; a3  = 66, a5  = 60, (wrb) a5  <-- 6
       0     2749        M 0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 528, (wrb) a5  <-- 0x00100210
                         M 0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 6
       0     2750        M                                           #; (f:fpu) ft0  <-- 6.0
       0     2751        M 0x800006dc addi    a2, a2, 8              #; a2  = 528, (wrb) a2  <-- 536
       0     2752        M 0x800006e0 addi    a3, a3, 1              #; a3  = 66, (wrb) a3  <-- 67
                         M 0x800006d8 fsd     ft0, 0(a5)             #; 6.0 ~~> Doub[0x00100210]
       0     2753        M 0x800006e4 bne     a2, a7, pc - 36        #; a2  = 536, a7  = 800, taken, goto 0x800006c0
       0     2754        M 0x800006c0 mulhu   a5, a3, a4             #; a3  = 67, a4  = 0xcccccccd
       0     2757        M                                           #; (acc) a5  <-- 0x0037d793
       0     2758        M 0x800006c4 srli    a5, a5, 3              #; a5  = 53, (wrb) a5  <-- 6
       0     2759        M 0x800006c8 mul     a5, a5, a6             #; a5  = 6, a6  = 10
       0     2762        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2763        M 0x800006cc sub     a5, a3, a5             #; a3  = 67, a5  = 60, (wrb) a5  <-- 7
       0     2765        M 0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 536, (wrb) a5  <-- 0x00100218
                         M 0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 7
       0     2766        M                                           #; (f:fpu) ft0  <-- 7.0
       0     2767        M 0x800006dc addi    a2, a2, 8              #; a2  = 536, (wrb) a2  <-- 544
       0     2768        M 0x800006e0 addi    a3, a3, 1              #; a3  = 67, (wrb) a3  <-- 68
                         M 0x800006d8 fsd     ft0, 0(a5)             #; 7.0 ~~> Doub[0x00100218]
       0     2769        M 0x800006e4 bne     a2, a7, pc - 36        #; a2  = 544, a7  = 800, taken, goto 0x800006c0
       0     2770        M 0x800006c0 mulhu   a5, a3, a4             #; a3  = 68, a4  = 0xcccccccd
       0     2773        M                                           #; (acc) a5  <-- 0x0037d793
       0     2774        M 0x800006c4 srli    a5, a5, 3              #; a5  = 54, (wrb) a5  <-- 6
       0     2775        M 0x800006c8 mul     a5, a5, a6             #; a5  = 6, a6  = 10
       0     2778        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2779        M 0x800006cc sub     a5, a3, a5             #; a3  = 68, a5  = 60, (wrb) a5  <-- 8
       0     2781        M 0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 544, (wrb) a5  <-- 0x00100220
                         M 0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 8
       0     2782        M                                           #; (f:fpu) ft0  <-- 8.0
       0     2783        M 0x800006dc addi    a2, a2, 8              #; a2  = 544, (wrb) a2  <-- 552
       0     2784        M 0x800006e0 addi    a3, a3, 1              #; a3  = 68, (wrb) a3  <-- 69
                         M 0x800006d8 fsd     ft0, 0(a5)             #; 8.0 ~~> Doub[0x00100220]
       0     2785        M 0x800006e4 bne     a2, a7, pc - 36        #; a2  = 552, a7  = 800, taken, goto 0x800006c0
       0     2786        M 0x800006c0 mulhu   a5, a3, a4             #; a3  = 69, a4  = 0xcccccccd
       0     2789        M                                           #; (acc) a5  <-- 0x0037d793
       0     2790        M 0x800006c4 srli    a5, a5, 3              #; a5  = 55, (wrb) a5  <-- 6
       0     2791        M 0x800006c8 mul     a5, a5, a6             #; a5  = 6, a6  = 10
       0     2794        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2795        M 0x800006cc sub     a5, a3, a5             #; a3  = 69, a5  = 60, (wrb) a5  <-- 9
       0     2797        M 0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 552, (wrb) a5  <-- 0x00100228
                         M 0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 9
       0     2798        M                                           #; (f:fpu) ft0  <-- 9.0
       0     2799        M 0x800006dc addi    a2, a2, 8              #; a2  = 552, (wrb) a2  <-- 560
       0     2800        M 0x800006e0 addi    a3, a3, 1              #; a3  = 69, (wrb) a3  <-- 70
                         M 0x800006d8 fsd     ft0, 0(a5)             #; 9.0 ~~> Doub[0x00100228]
       0     2801        M 0x800006e4 bne     a2, a7, pc - 36        #; a2  = 560, a7  = 800, taken, goto 0x800006c0
       0     2802        M 0x800006c0 mulhu   a5, a3, a4             #; a3  = 70, a4  = 0xcccccccd
       0     2805        M                                           #; (acc) a5  <-- 0x0037d793
       0     2806        M 0x800006c4 srli    a5, a5, 3              #; a5  = 56, (wrb) a5  <-- 7
       0     2807        M 0x800006c8 mul     a5, a5, a6             #; a5  = 7, a6  = 10
       0     2810        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2811        M 0x800006cc sub     a5, a3, a5             #; a3  = 70, a5  = 70, (wrb) a5  <-- 0
       0     2813        M 0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 560, (wrb) a5  <-- 0x00100230
                         M 0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 0
       0     2814        M                                           #; (f:fpu) ft0  <-- 0.0
       0     2815        M 0x800006dc addi    a2, a2, 8              #; a2  = 560, (wrb) a2  <-- 568
       0     2816        M 0x800006e0 addi    a3, a3, 1              #; a3  = 70, (wrb) a3  <-- 71
                         M 0x800006d8 fsd     ft0, 0(a5)             #; 0.0 ~~> Doub[0x00100230]
       0     2817        M 0x800006e4 bne     a2, a7, pc - 36        #; a2  = 568, a7  = 800, taken, goto 0x800006c0
       0     2818        M 0x800006c0 mulhu   a5, a3, a4             #; a3  = 71, a4  = 0xcccccccd
       0     2821        M                                           #; (acc) a5  <-- 0x0037d793
       0     2822        M 0x800006c4 srli    a5, a5, 3              #; a5  = 56, (wrb) a5  <-- 7
       0     2823        M 0x800006c8 mul     a5, a5, a6             #; a5  = 7, a6  = 10
       0     2826        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2827        M 0x800006cc sub     a5, a3, a5             #; a3  = 71, a5  = 70, (wrb) a5  <-- 1
       0     2829        M 0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 568, (wrb) a5  <-- 0x00100238
                         M 0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 1
       0     2830        M                                           #; (f:fpu) ft0  <-- 1.0
       0     2831        M 0x800006dc addi    a2, a2, 8              #; a2  = 568, (wrb) a2  <-- 576
       0     2832        M 0x800006e0 addi    a3, a3, 1              #; a3  = 71, (wrb) a3  <-- 72
                         M 0x800006d8 fsd     ft0, 0(a5)             #; 1.0 ~~> Doub[0x00100238]
       0     2833        M 0x800006e4 bne     a2, a7, pc - 36        #; a2  = 576, a7  = 800, taken, goto 0x800006c0
       0     2834        M 0x800006c0 mulhu   a5, a3, a4             #; a3  = 72, a4  = 0xcccccccd
       0     2837        M                                           #; (acc) a5  <-- 0x0037d793
       0     2838        M 0x800006c4 srli    a5, a5, 3              #; a5  = 57, (wrb) a5  <-- 7
       0     2839        M 0x800006c8 mul     a5, a5, a6             #; a5  = 7, a6  = 10
       0     2842        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2843        M 0x800006cc sub     a5, a3, a5             #; a3  = 72, a5  = 70, (wrb) a5  <-- 2
       0     2845        M 0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 576, (wrb) a5  <-- 0x00100240
                         M 0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 2
       0     2846        M                                           #; (f:fpu) ft0  <-- 2.0
       0     2847        M 0x800006dc addi    a2, a2, 8              #; a2  = 576, (wrb) a2  <-- 584
       0     2848        M 0x800006e0 addi    a3, a3, 1              #; a3  = 72, (wrb) a3  <-- 73
                         M 0x800006d8 fsd     ft0, 0(a5)             #; 2.0 ~~> Doub[0x00100240]
       0     2849        M 0x800006e4 bne     a2, a7, pc - 36        #; a2  = 584, a7  = 800, taken, goto 0x800006c0
       0     2850        M 0x800006c0 mulhu   a5, a3, a4             #; a3  = 73, a4  = 0xcccccccd
       0     2853        M                                           #; (acc) a5  <-- 0x0037d793
       0     2854        M 0x800006c4 srli    a5, a5, 3              #; a5  = 58, (wrb) a5  <-- 7
       0     2855        M 0x800006c8 mul     a5, a5, a6             #; a5  = 7, a6  = 10
       0     2858        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2859        M 0x800006cc sub     a5, a3, a5             #; a3  = 73, a5  = 70, (wrb) a5  <-- 3
       0     2861        M 0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 584, (wrb) a5  <-- 0x00100248
                         M 0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 3
       0     2862        M                                           #; (f:fpu) ft0  <-- 3.0
       0     2863        M 0x800006dc addi    a2, a2, 8              #; a2  = 584, (wrb) a2  <-- 592
       0     2864        M 0x800006e0 addi    a3, a3, 1              #; a3  = 73, (wrb) a3  <-- 74
                         M 0x800006d8 fsd     ft0, 0(a5)             #; 3.0 ~~> Doub[0x00100248]
       0     2865        M 0x800006e4 bne     a2, a7, pc - 36        #; a2  = 592, a7  = 800, taken, goto 0x800006c0
       0     2866        M 0x800006c0 mulhu   a5, a3, a4             #; a3  = 74, a4  = 0xcccccccd
       0     2869        M                                           #; (acc) a5  <-- 0x0037d793
       0     2870        M 0x800006c4 srli    a5, a5, 3              #; a5  = 59, (wrb) a5  <-- 7
       0     2871        M 0x800006c8 mul     a5, a5, a6             #; a5  = 7, a6  = 10
       0     2874        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2875        M 0x800006cc sub     a5, a3, a5             #; a3  = 74, a5  = 70, (wrb) a5  <-- 4
       0     2877        M 0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 592, (wrb) a5  <-- 0x00100250
                         M 0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 4
       0     2878        M                                           #; (f:fpu) ft0  <-- 4.0
       0     2879        M 0x800006dc addi    a2, a2, 8              #; a2  = 592, (wrb) a2  <-- 600
       0     2880        M 0x800006e0 addi    a3, a3, 1              #; a3  = 74, (wrb) a3  <-- 75
                         M 0x800006d8 fsd     ft0, 0(a5)             #; 4.0 ~~> Doub[0x00100250]
       0     2881        M 0x800006e4 bne     a2, a7, pc - 36        #; a2  = 600, a7  = 800, taken, goto 0x800006c0
       0     2882        M 0x800006c0 mulhu   a5, a3, a4             #; a3  = 75, a4  = 0xcccccccd
       0     2885        M                                           #; (acc) a5  <-- 0x0037d793
       0     2886        M 0x800006c4 srli    a5, a5, 3              #; a5  = 60, (wrb) a5  <-- 7
       0     2887        M 0x800006c8 mul     a5, a5, a6             #; a5  = 7, a6  = 10
       0     2890        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2891        M 0x800006cc sub     a5, a3, a5             #; a3  = 75, a5  = 70, (wrb) a5  <-- 5
       0     2893        M 0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 600, (wrb) a5  <-- 0x00100258
                         M 0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 5
       0     2894        M                                           #; (f:fpu) ft0  <-- 5.0
       0     2895        M 0x800006dc addi    a2, a2, 8              #; a2  = 600, (wrb) a2  <-- 608
       0     2896        M 0x800006e0 addi    a3, a3, 1              #; a3  = 75, (wrb) a3  <-- 76
                         M 0x800006d8 fsd     ft0, 0(a5)             #; 5.0 ~~> Doub[0x00100258]
       0     2897        M 0x800006e4 bne     a2, a7, pc - 36        #; a2  = 608, a7  = 800, taken, goto 0x800006c0
       0     2898        M 0x800006c0 mulhu   a5, a3, a4             #; a3  = 76, a4  = 0xcccccccd
       0     2901        M                                           #; (acc) a5  <-- 0x0037d793
       0     2902        M 0x800006c4 srli    a5, a5, 3              #; a5  = 60, (wrb) a5  <-- 7
       0     2903        M 0x800006c8 mul     a5, a5, a6             #; a5  = 7, a6  = 10
       0     2906        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2907        M 0x800006cc sub     a5, a3, a5             #; a3  = 76, a5  = 70, (wrb) a5  <-- 6
       0     2909        M 0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 608, (wrb) a5  <-- 0x00100260
                         M 0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 6
       0     2910        M                                           #; (f:fpu) ft0  <-- 6.0
       0     2911        M 0x800006dc addi    a2, a2, 8              #; a2  = 608, (wrb) a2  <-- 616
       0     2912        M 0x800006e0 addi    a3, a3, 1              #; a3  = 76, (wrb) a3  <-- 77
                         M 0x800006d8 fsd     ft0, 0(a5)             #; 6.0 ~~> Doub[0x00100260]
       0     2913        M 0x800006e4 bne     a2, a7, pc - 36        #; a2  = 616, a7  = 800, taken, goto 0x800006c0
       0     2914        M 0x800006c0 mulhu   a5, a3, a4             #; a3  = 77, a4  = 0xcccccccd
       0     2917        M                                           #; (acc) a5  <-- 0x0037d793
       0     2918        M 0x800006c4 srli    a5, a5, 3              #; a5  = 61, (wrb) a5  <-- 7
       0     2919        M 0x800006c8 mul     a5, a5, a6             #; a5  = 7, a6  = 10
       0     2922        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2923        M 0x800006cc sub     a5, a3, a5             #; a3  = 77, a5  = 70, (wrb) a5  <-- 7
       0     2925        M 0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 616, (wrb) a5  <-- 0x00100268
                         M 0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 7
       0     2926        M                                           #; (f:fpu) ft0  <-- 7.0
       0     2927        M 0x800006dc addi    a2, a2, 8              #; a2  = 616, (wrb) a2  <-- 624
       0     2928        M 0x800006e0 addi    a3, a3, 1              #; a3  = 77, (wrb) a3  <-- 78
                         M 0x800006d8 fsd     ft0, 0(a5)             #; 7.0 ~~> Doub[0x00100268]
       0     2929        M 0x800006e4 bne     a2, a7, pc - 36        #; a2  = 624, a7  = 800, taken, goto 0x800006c0
       0     2930        M 0x800006c0 mulhu   a5, a3, a4             #; a3  = 78, a4  = 0xcccccccd
       0     2933        M                                           #; (acc) a5  <-- 0x0037d793
       0     2934        M 0x800006c4 srli    a5, a5, 3              #; a5  = 62, (wrb) a5  <-- 7
       0     2935        M 0x800006c8 mul     a5, a5, a6             #; a5  = 7, a6  = 10
       0     2938        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2939        M 0x800006cc sub     a5, a3, a5             #; a3  = 78, a5  = 70, (wrb) a5  <-- 8
       0     2941        M 0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 624, (wrb) a5  <-- 0x00100270
                         M 0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 8
       0     2942        M                                           #; (f:fpu) ft0  <-- 8.0
       0     2943        M 0x800006dc addi    a2, a2, 8              #; a2  = 624, (wrb) a2  <-- 632
       0     2944        M 0x800006e0 addi    a3, a3, 1              #; a3  = 78, (wrb) a3  <-- 79
                         M 0x800006d8 fsd     ft0, 0(a5)             #; 8.0 ~~> Doub[0x00100270]
       0     2945        M 0x800006e4 bne     a2, a7, pc - 36        #; a2  = 632, a7  = 800, taken, goto 0x800006c0
       0     2946        M 0x800006c0 mulhu   a5, a3, a4             #; a3  = 79, a4  = 0xcccccccd
       0     2949        M                                           #; (acc) a5  <-- 0x0037d793
       0     2950        M 0x800006c4 srli    a5, a5, 3              #; a5  = 63, (wrb) a5  <-- 7
       0     2951        M 0x800006c8 mul     a5, a5, a6             #; a5  = 7, a6  = 10
       0     2954        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2955        M 0x800006cc sub     a5, a3, a5             #; a3  = 79, a5  = 70, (wrb) a5  <-- 9
       0     2957        M 0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 632, (wrb) a5  <-- 0x00100278
                         M 0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 9
       0     2958        M                                           #; (f:fpu) ft0  <-- 9.0
       0     2959        M 0x800006dc addi    a2, a2, 8              #; a2  = 632, (wrb) a2  <-- 640
       0     2960        M 0x800006e0 addi    a3, a3, 1              #; a3  = 79, (wrb) a3  <-- 80
                         M 0x800006d8 fsd     ft0, 0(a5)             #; 9.0 ~~> Doub[0x00100278]
       0     2961        M 0x800006e4 bne     a2, a7, pc - 36        #; a2  = 640, a7  = 800, taken, goto 0x800006c0
       0     2962        M 0x800006c0 mulhu   a5, a3, a4             #; a3  = 80, a4  = 0xcccccccd
       0     2965        M                                           #; (acc) a5  <-- 0x0037d793
       0     2966        M 0x800006c4 srli    a5, a5, 3              #; a5  = 64, (wrb) a5  <-- 8
       0     2967        M 0x800006c8 mul     a5, a5, a6             #; a5  = 8, a6  = 10
       0     2970        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2971        M 0x800006cc sub     a5, a3, a5             #; a3  = 80, a5  = 80, (wrb) a5  <-- 0
       0     2973        M 0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 640, (wrb) a5  <-- 0x00100280
                         M 0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 0
       0     2974        M                                           #; (f:fpu) ft0  <-- 0.0
       0     2975        M 0x800006dc addi    a2, a2, 8              #; a2  = 640, (wrb) a2  <-- 648
       0     2976        M 0x800006e0 addi    a3, a3, 1              #; a3  = 80, (wrb) a3  <-- 81
                         M 0x800006d8 fsd     ft0, 0(a5)             #; 0.0 ~~> Doub[0x00100280]
       0     2977        M 0x800006e4 bne     a2, a7, pc - 36        #; a2  = 648, a7  = 800, taken, goto 0x800006c0
       0     2978        M 0x800006c0 mulhu   a5, a3, a4             #; a3  = 81, a4  = 0xcccccccd
       0     2981        M                                           #; (acc) a5  <-- 0x0037d793
       0     2982        M 0x800006c4 srli    a5, a5, 3              #; a5  = 64, (wrb) a5  <-- 8
       0     2983        M 0x800006c8 mul     a5, a5, a6             #; a5  = 8, a6  = 10
       0     2986        M                                           #; (acc) a5  <-- 0x40f687b3
       0     2987        M 0x800006cc sub     a5, a3, a5             #; a3  = 81, a5  = 80, (wrb) a5  <-- 1
       0     2989        M 0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 648, (wrb) a5  <-- 0x00100288
                         M 0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 1
       0     2990        M                                           #; (f:fpu) ft0  <-- 1.0
       0     2991        M 0x800006dc addi    a2, a2, 8              #; a2  = 648, (wrb) a2  <-- 656
       0     2992        M 0x800006e0 addi    a3, a3, 1              #; a3  = 81, (wrb) a3  <-- 82
                         M 0x800006d8 fsd     ft0, 0(a5)             #; 1.0 ~~> Doub[0x00100288]
       0     2993        M 0x800006e4 bne     a2, a7, pc - 36        #; a2  = 656, a7  = 800, taken, goto 0x800006c0
       0     2994        M 0x800006c0 mulhu   a5, a3, a4             #; a3  = 82, a4  = 0xcccccccd
       0     2997        M                                           #; (acc) a5  <-- 0x0037d793
       0     2998        M 0x800006c4 srli    a5, a5, 3              #; a5  = 65, (wrb) a5  <-- 8
       0     2999        M 0x800006c8 mul     a5, a5, a6             #; a5  = 8, a6  = 10
       0     3002        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3003        M 0x800006cc sub     a5, a3, a5             #; a3  = 82, a5  = 80, (wrb) a5  <-- 2
       0     3005        M 0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 656, (wrb) a5  <-- 0x00100290
                         M 0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 2
       0     3006        M                                           #; (f:fpu) ft0  <-- 2.0
       0     3007        M 0x800006dc addi    a2, a2, 8              #; a2  = 656, (wrb) a2  <-- 664
       0     3008        M 0x800006e0 addi    a3, a3, 1              #; a3  = 82, (wrb) a3  <-- 83
                         M 0x800006d8 fsd     ft0, 0(a5)             #; 2.0 ~~> Doub[0x00100290]
       0     3009        M 0x800006e4 bne     a2, a7, pc - 36        #; a2  = 664, a7  = 800, taken, goto 0x800006c0
       0     3010        M 0x800006c0 mulhu   a5, a3, a4             #; a3  = 83, a4  = 0xcccccccd
       0     3013        M                                           #; (acc) a5  <-- 0x0037d793
       0     3014        M 0x800006c4 srli    a5, a5, 3              #; a5  = 66, (wrb) a5  <-- 8
       0     3015        M 0x800006c8 mul     a5, a5, a6             #; a5  = 8, a6  = 10
       0     3018        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3019        M 0x800006cc sub     a5, a3, a5             #; a3  = 83, a5  = 80, (wrb) a5  <-- 3
       0     3021        M 0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 664, (wrb) a5  <-- 0x00100298
                         M 0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 3
       0     3022        M                                           #; (f:fpu) ft0  <-- 3.0
       0     3023        M 0x800006dc addi    a2, a2, 8              #; a2  = 664, (wrb) a2  <-- 672
       0     3024        M 0x800006e0 addi    a3, a3, 1              #; a3  = 83, (wrb) a3  <-- 84
                         M 0x800006d8 fsd     ft0, 0(a5)             #; 3.0 ~~> Doub[0x00100298]
       0     3025        M 0x800006e4 bne     a2, a7, pc - 36        #; a2  = 672, a7  = 800, taken, goto 0x800006c0
       0     3026        M 0x800006c0 mulhu   a5, a3, a4             #; a3  = 84, a4  = 0xcccccccd
       0     3029        M                                           #; (acc) a5  <-- 0x0037d793
       0     3030        M 0x800006c4 srli    a5, a5, 3              #; a5  = 67, (wrb) a5  <-- 8
       0     3031        M 0x800006c8 mul     a5, a5, a6             #; a5  = 8, a6  = 10
       0     3034        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3035        M 0x800006cc sub     a5, a3, a5             #; a3  = 84, a5  = 80, (wrb) a5  <-- 4
       0     3037        M 0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 672, (wrb) a5  <-- 0x001002a0
                         M 0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 4
       0     3038        M                                           #; (f:fpu) ft0  <-- 4.0
       0     3039        M 0x800006dc addi    a2, a2, 8              #; a2  = 672, (wrb) a2  <-- 680
       0     3040        M 0x800006e0 addi    a3, a3, 1              #; a3  = 84, (wrb) a3  <-- 85
                         M 0x800006d8 fsd     ft0, 0(a5)             #; 4.0 ~~> Doub[0x001002a0]
       0     3041        M 0x800006e4 bne     a2, a7, pc - 36        #; a2  = 680, a7  = 800, taken, goto 0x800006c0
       0     3042        M 0x800006c0 mulhu   a5, a3, a4             #; a3  = 85, a4  = 0xcccccccd
       0     3045        M                                           #; (acc) a5  <-- 0x0037d793
       0     3046        M 0x800006c4 srli    a5, a5, 3              #; a5  = 68, (wrb) a5  <-- 8
       0     3047        M 0x800006c8 mul     a5, a5, a6             #; a5  = 8, a6  = 10
       0     3050        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3051        M 0x800006cc sub     a5, a3, a5             #; a3  = 85, a5  = 80, (wrb) a5  <-- 5
       0     3053        M 0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 680, (wrb) a5  <-- 0x001002a8
                         M 0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 5
       0     3054        M                                           #; (f:fpu) ft0  <-- 5.0
       0     3055        M 0x800006dc addi    a2, a2, 8              #; a2  = 680, (wrb) a2  <-- 688
       0     3056        M 0x800006e0 addi    a3, a3, 1              #; a3  = 85, (wrb) a3  <-- 86
                         M 0x800006d8 fsd     ft0, 0(a5)             #; 5.0 ~~> Doub[0x001002a8]
       0     3057        M 0x800006e4 bne     a2, a7, pc - 36        #; a2  = 688, a7  = 800, taken, goto 0x800006c0
       0     3058        M 0x800006c0 mulhu   a5, a3, a4             #; a3  = 86, a4  = 0xcccccccd
       0     3061        M                                           #; (acc) a5  <-- 0x0037d793
       0     3062        M 0x800006c4 srli    a5, a5, 3              #; a5  = 68, (wrb) a5  <-- 8
       0     3063        M 0x800006c8 mul     a5, a5, a6             #; a5  = 8, a6  = 10
       0     3066        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3067        M 0x800006cc sub     a5, a3, a5             #; a3  = 86, a5  = 80, (wrb) a5  <-- 6
       0     3069        M 0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 688, (wrb) a5  <-- 0x001002b0
                         M 0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 6
       0     3070        M                                           #; (f:fpu) ft0  <-- 6.0
       0     3071        M 0x800006dc addi    a2, a2, 8              #; a2  = 688, (wrb) a2  <-- 696
       0     3072        M 0x800006e0 addi    a3, a3, 1              #; a3  = 86, (wrb) a3  <-- 87
                         M 0x800006d8 fsd     ft0, 0(a5)             #; 6.0 ~~> Doub[0x001002b0]
       0     3073        M 0x800006e4 bne     a2, a7, pc - 36        #; a2  = 696, a7  = 800, taken, goto 0x800006c0
       0     3074        M 0x800006c0 mulhu   a5, a3, a4             #; a3  = 87, a4  = 0xcccccccd
       0     3077        M                                           #; (acc) a5  <-- 0x0037d793
       0     3078        M 0x800006c4 srli    a5, a5, 3              #; a5  = 69, (wrb) a5  <-- 8
       0     3079        M 0x800006c8 mul     a5, a5, a6             #; a5  = 8, a6  = 10
       0     3082        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3083        M 0x800006cc sub     a5, a3, a5             #; a3  = 87, a5  = 80, (wrb) a5  <-- 7
       0     3085        M 0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 696, (wrb) a5  <-- 0x001002b8
                         M 0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 7
       0     3086        M                                           #; (f:fpu) ft0  <-- 7.0
       0     3087        M 0x800006dc addi    a2, a2, 8              #; a2  = 696, (wrb) a2  <-- 704
       0     3088        M 0x800006e0 addi    a3, a3, 1              #; a3  = 87, (wrb) a3  <-- 88
                         M 0x800006d8 fsd     ft0, 0(a5)             #; 7.0 ~~> Doub[0x001002b8]
       0     3089        M 0x800006e4 bne     a2, a7, pc - 36        #; a2  = 704, a7  = 800, taken, goto 0x800006c0
       0     3090        M 0x800006c0 mulhu   a5, a3, a4             #; a3  = 88, a4  = 0xcccccccd
       0     3093        M                                           #; (acc) a5  <-- 0x0037d793
       0     3094        M 0x800006c4 srli    a5, a5, 3              #; a5  = 70, (wrb) a5  <-- 8
       0     3095        M 0x800006c8 mul     a5, a5, a6             #; a5  = 8, a6  = 10
       0     3098        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3099        M 0x800006cc sub     a5, a3, a5             #; a3  = 88, a5  = 80, (wrb) a5  <-- 8
       0     3101        M 0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 704, (wrb) a5  <-- 0x001002c0
                         M 0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 8
       0     3102        M                                           #; (f:fpu) ft0  <-- 8.0
       0     3103        M 0x800006dc addi    a2, a2, 8              #; a2  = 704, (wrb) a2  <-- 712
       0     3104        M 0x800006e0 addi    a3, a3, 1              #; a3  = 88, (wrb) a3  <-- 89
                         M 0x800006d8 fsd     ft0, 0(a5)             #; 8.0 ~~> Doub[0x001002c0]
       0     3105        M 0x800006e4 bne     a2, a7, pc - 36        #; a2  = 712, a7  = 800, taken, goto 0x800006c0
       0     3106        M 0x800006c0 mulhu   a5, a3, a4             #; a3  = 89, a4  = 0xcccccccd
       0     3109        M                                           #; (acc) a5  <-- 0x0037d793
       0     3110        M 0x800006c4 srli    a5, a5, 3              #; a5  = 71, (wrb) a5  <-- 8
       0     3111        M 0x800006c8 mul     a5, a5, a6             #; a5  = 8, a6  = 10
       0     3114        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3115        M 0x800006cc sub     a5, a3, a5             #; a3  = 89, a5  = 80, (wrb) a5  <-- 9
       0     3117        M 0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 712, (wrb) a5  <-- 0x001002c8
                         M 0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 9
       0     3118        M                                           #; (f:fpu) ft0  <-- 9.0
       0     3119        M 0x800006dc addi    a2, a2, 8              #; a2  = 712, (wrb) a2  <-- 720
       0     3120        M 0x800006e0 addi    a3, a3, 1              #; a3  = 89, (wrb) a3  <-- 90
                         M 0x800006d8 fsd     ft0, 0(a5)             #; 9.0 ~~> Doub[0x001002c8]
       0     3121        M 0x800006e4 bne     a2, a7, pc - 36        #; a2  = 720, a7  = 800, taken, goto 0x800006c0
       0     3122        M 0x800006c0 mulhu   a5, a3, a4             #; a3  = 90, a4  = 0xcccccccd
       0     3125        M                                           #; (acc) a5  <-- 0x0037d793
       0     3126        M 0x800006c4 srli    a5, a5, 3              #; a5  = 72, (wrb) a5  <-- 9
       0     3127        M 0x800006c8 mul     a5, a5, a6             #; a5  = 9, a6  = 10
       0     3130        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3131        M 0x800006cc sub     a5, a3, a5             #; a3  = 90, a5  = 90, (wrb) a5  <-- 0
       0     3133        M 0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 720, (wrb) a5  <-- 0x001002d0
                         M 0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 0
       0     3134        M                                           #; (f:fpu) ft0  <-- 0.0
       0     3135        M 0x800006dc addi    a2, a2, 8              #; a2  = 720, (wrb) a2  <-- 728
       0     3136        M 0x800006e0 addi    a3, a3, 1              #; a3  = 90, (wrb) a3  <-- 91
                         M 0x800006d8 fsd     ft0, 0(a5)             #; 0.0 ~~> Doub[0x001002d0]
       0     3137        M 0x800006e4 bne     a2, a7, pc - 36        #; a2  = 728, a7  = 800, taken, goto 0x800006c0
       0     3138        M 0x800006c0 mulhu   a5, a3, a4             #; a3  = 91, a4  = 0xcccccccd
       0     3141        M                                           #; (acc) a5  <-- 0x0037d793
       0     3142        M 0x800006c4 srli    a5, a5, 3              #; a5  = 72, (wrb) a5  <-- 9
       0     3143        M 0x800006c8 mul     a5, a5, a6             #; a5  = 9, a6  = 10
       0     3146        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3147        M 0x800006cc sub     a5, a3, a5             #; a3  = 91, a5  = 90, (wrb) a5  <-- 1
       0     3149        M 0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 728, (wrb) a5  <-- 0x001002d8
                         M 0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 1
       0     3150        M                                           #; (f:fpu) ft0  <-- 1.0
       0     3151        M 0x800006dc addi    a2, a2, 8              #; a2  = 728, (wrb) a2  <-- 736
       0     3152        M 0x800006e0 addi    a3, a3, 1              #; a3  = 91, (wrb) a3  <-- 92
                         M 0x800006d8 fsd     ft0, 0(a5)             #; 1.0 ~~> Doub[0x001002d8]
       0     3153        M 0x800006e4 bne     a2, a7, pc - 36        #; a2  = 736, a7  = 800, taken, goto 0x800006c0
       0     3154        M 0x800006c0 mulhu   a5, a3, a4             #; a3  = 92, a4  = 0xcccccccd
       0     3157        M                                           #; (acc) a5  <-- 0x0037d793
       0     3158        M 0x800006c4 srli    a5, a5, 3              #; a5  = 73, (wrb) a5  <-- 9
       0     3159        M 0x800006c8 mul     a5, a5, a6             #; a5  = 9, a6  = 10
       0     3162        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3163        M 0x800006cc sub     a5, a3, a5             #; a3  = 92, a5  = 90, (wrb) a5  <-- 2
       0     3165        M 0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 736, (wrb) a5  <-- 0x001002e0
                         M 0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 2
       0     3166        M                                           #; (f:fpu) ft0  <-- 2.0
       0     3167        M 0x800006dc addi    a2, a2, 8              #; a2  = 736, (wrb) a2  <-- 744
       0     3168        M 0x800006e0 addi    a3, a3, 1              #; a3  = 92, (wrb) a3  <-- 93
                         M 0x800006d8 fsd     ft0, 0(a5)             #; 2.0 ~~> Doub[0x001002e0]
       0     3169        M 0x800006e4 bne     a2, a7, pc - 36        #; a2  = 744, a7  = 800, taken, goto 0x800006c0
       0     3170        M 0x800006c0 mulhu   a5, a3, a4             #; a3  = 93, a4  = 0xcccccccd
       0     3173        M                                           #; (acc) a5  <-- 0x0037d793
       0     3174        M 0x800006c4 srli    a5, a5, 3              #; a5  = 74, (wrb) a5  <-- 9
       0     3175        M 0x800006c8 mul     a5, a5, a6             #; a5  = 9, a6  = 10
       0     3178        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3179        M 0x800006cc sub     a5, a3, a5             #; a3  = 93, a5  = 90, (wrb) a5  <-- 3
       0     3181        M 0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 744, (wrb) a5  <-- 0x001002e8
                         M 0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 3
       0     3182        M                                           #; (f:fpu) ft0  <-- 3.0
       0     3183        M 0x800006dc addi    a2, a2, 8              #; a2  = 744, (wrb) a2  <-- 752
       0     3184        M 0x800006e0 addi    a3, a3, 1              #; a3  = 93, (wrb) a3  <-- 94
                         M 0x800006d8 fsd     ft0, 0(a5)             #; 3.0 ~~> Doub[0x001002e8]
       0     3185        M 0x800006e4 bne     a2, a7, pc - 36        #; a2  = 752, a7  = 800, taken, goto 0x800006c0
       0     3186        M 0x800006c0 mulhu   a5, a3, a4             #; a3  = 94, a4  = 0xcccccccd
       0     3189        M                                           #; (acc) a5  <-- 0x0037d793
       0     3190        M 0x800006c4 srli    a5, a5, 3              #; a5  = 75, (wrb) a5  <-- 9
       0     3191        M 0x800006c8 mul     a5, a5, a6             #; a5  = 9, a6  = 10
       0     3194        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3195        M 0x800006cc sub     a5, a3, a5             #; a3  = 94, a5  = 90, (wrb) a5  <-- 4
       0     3197        M 0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 752, (wrb) a5  <-- 0x001002f0
                         M 0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 4
       0     3198        M                                           #; (f:fpu) ft0  <-- 4.0
       0     3199        M 0x800006dc addi    a2, a2, 8              #; a2  = 752, (wrb) a2  <-- 760
       0     3200        M 0x800006e0 addi    a3, a3, 1              #; a3  = 94, (wrb) a3  <-- 95
                         M 0x800006d8 fsd     ft0, 0(a5)             #; 4.0 ~~> Doub[0x001002f0]
       0     3201        M 0x800006e4 bne     a2, a7, pc - 36        #; a2  = 760, a7  = 800, taken, goto 0x800006c0
       0     3202        M 0x800006c0 mulhu   a5, a3, a4             #; a3  = 95, a4  = 0xcccccccd
       0     3205        M                                           #; (acc) a5  <-- 0x0037d793
       0     3206        M 0x800006c4 srli    a5, a5, 3              #; a5  = 76, (wrb) a5  <-- 9
       0     3207        M 0x800006c8 mul     a5, a5, a6             #; a5  = 9, a6  = 10
       0     3210        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3211        M 0x800006cc sub     a5, a3, a5             #; a3  = 95, a5  = 90, (wrb) a5  <-- 5
       0     3213        M 0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 760, (wrb) a5  <-- 0x001002f8
                         M 0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 5
       0     3214        M                                           #; (f:fpu) ft0  <-- 5.0
       0     3215        M 0x800006dc addi    a2, a2, 8              #; a2  = 760, (wrb) a2  <-- 768
       0     3216        M 0x800006e0 addi    a3, a3, 1              #; a3  = 95, (wrb) a3  <-- 96
                         M 0x800006d8 fsd     ft0, 0(a5)             #; 5.0 ~~> Doub[0x001002f8]
       0     3217        M 0x800006e4 bne     a2, a7, pc - 36        #; a2  = 768, a7  = 800, taken, goto 0x800006c0
       0     3218        M 0x800006c0 mulhu   a5, a3, a4             #; a3  = 96, a4  = 0xcccccccd
       0     3221        M                                           #; (acc) a5  <-- 0x0037d793
       0     3222        M 0x800006c4 srli    a5, a5, 3              #; a5  = 76, (wrb) a5  <-- 9
       0     3223        M 0x800006c8 mul     a5, a5, a6             #; a5  = 9, a6  = 10
       0     3226        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3227        M 0x800006cc sub     a5, a3, a5             #; a3  = 96, a5  = 90, (wrb) a5  <-- 6
       0     3229        M 0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 768, (wrb) a5  <-- 0x00100300
                         M 0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 6
       0     3230        M                                           #; (f:fpu) ft0  <-- 6.0
       0     3231        M 0x800006dc addi    a2, a2, 8              #; a2  = 768, (wrb) a2  <-- 776
       0     3232        M 0x800006e0 addi    a3, a3, 1              #; a3  = 96, (wrb) a3  <-- 97
                         M 0x800006d8 fsd     ft0, 0(a5)             #; 6.0 ~~> Doub[0x00100300]
       0     3233        M 0x800006e4 bne     a2, a7, pc - 36        #; a2  = 776, a7  = 800, taken, goto 0x800006c0
       0     3234        M 0x800006c0 mulhu   a5, a3, a4             #; a3  = 97, a4  = 0xcccccccd
       0     3237        M                                           #; (acc) a5  <-- 0x0037d793
       0     3238        M 0x800006c4 srli    a5, a5, 3              #; a5  = 77, (wrb) a5  <-- 9
       0     3239        M 0x800006c8 mul     a5, a5, a6             #; a5  = 9, a6  = 10
       0     3242        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3243        M 0x800006cc sub     a5, a3, a5             #; a3  = 97, a5  = 90, (wrb) a5  <-- 7
       0     3245        M 0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 776, (wrb) a5  <-- 0x00100308
                         M 0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 7
       0     3246        M                                           #; (f:fpu) ft0  <-- 7.0
       0     3247        M 0x800006dc addi    a2, a2, 8              #; a2  = 776, (wrb) a2  <-- 784
       0     3248        M 0x800006e0 addi    a3, a3, 1              #; a3  = 97, (wrb) a3  <-- 98
                         M 0x800006d8 fsd     ft0, 0(a5)             #; 7.0 ~~> Doub[0x00100308]
       0     3249        M 0x800006e4 bne     a2, a7, pc - 36        #; a2  = 784, a7  = 800, taken, goto 0x800006c0
       0     3250        M 0x800006c0 mulhu   a5, a3, a4             #; a3  = 98, a4  = 0xcccccccd
       0     3253        M                                           #; (acc) a5  <-- 0x0037d793
       0     3254        M 0x800006c4 srli    a5, a5, 3              #; a5  = 78, (wrb) a5  <-- 9
       0     3255        M 0x800006c8 mul     a5, a5, a6             #; a5  = 9, a6  = 10
       0     3258        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3259        M 0x800006cc sub     a5, a3, a5             #; a3  = 98, a5  = 90, (wrb) a5  <-- 8
       0     3261        M 0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 784, (wrb) a5  <-- 0x00100310
                         M 0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 8
       0     3262        M                                           #; (f:fpu) ft0  <-- 8.0
       0     3263        M 0x800006dc addi    a2, a2, 8              #; a2  = 784, (wrb) a2  <-- 792
       0     3264        M 0x800006e0 addi    a3, a3, 1              #; a3  = 98, (wrb) a3  <-- 99
                         M 0x800006d8 fsd     ft0, 0(a5)             #; 8.0 ~~> Doub[0x00100310]
       0     3265        M 0x800006e4 bne     a2, a7, pc - 36        #; a2  = 792, a7  = 800, taken, goto 0x800006c0
       0     3266        M 0x800006c0 mulhu   a5, a3, a4             #; a3  = 99, a4  = 0xcccccccd
       0     3269        M                                           #; (acc) a5  <-- 0x0037d793
       0     3270        M 0x800006c4 srli    a5, a5, 3              #; a5  = 79, (wrb) a5  <-- 9
       0     3271        M 0x800006c8 mul     a5, a5, a6             #; a5  = 9, a6  = 10
       0     3274        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3275        M 0x800006cc sub     a5, a3, a5             #; a3  = 99, a5  = 90, (wrb) a5  <-- 9
       0     3277        M 0x800006d4 add     a5, a1, a2             #; a1  = 0x00100000, a2  = 792, (wrb) a5  <-- 0x00100318
                         M 0x800006d0 fcvt.d.wu ft0, a5              #; ac1  = 9
       0     3278        M                                           #; (f:fpu) ft0  <-- 9.0
       0     3279        M 0x800006dc addi    a2, a2, 8              #; a2  = 792, (wrb) a2  <-- 800
       0     3280        M 0x800006e0 addi    a3, a3, 1              #; a3  = 99, (wrb) a3  <-- 100
                         M 0x800006d8 fsd     ft0, 0(a5)             #; 9.0 ~~> Doub[0x00100318]
       0     3281        M 0x800006e4 bne     a2, a7, pc - 36        #; a2  = 800, a7  = 800, not taken
       0     3282        M 0x800006e8 li      a2, 0                  #; (wrb) a2  <-- 0
       0     3283        M 0x800006ec li      a3, 0                  #; (wrb) a3  <-- 0
       0     3294        M 0x800006f0 lui     a4, 0xccccd            #; (wrb) a4  <-- 0xccccd000
       0     3295        M 0x800006f4 addi    a4, a4, -819           #; a4  = 0xccccd000, (wrb) a4  <-- 0xcccccccd
       0     3296        M 0x800006f8 li      a6, 10                 #; (wrb) a6  <-- 10
       0     3297        M 0x800006fc li      a7, 800                #; (wrb) a7  <-- 800
       0     3306        M 0x80000700 mulhu   a5, a3, a4             #; a3  = 0, a4  = 0xcccccccd
       0     3309        M                                           #; (acc) a5  <-- 0x0037d793
       0     3310        M 0x80000704 srli    a5, a5, 3              #; a5  = 0, (wrb) a5  <-- 0
       0     3311        M 0x80000708 mul     a5, a5, a6             #; a5  = 0, a6  = 10
       0     3314        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3315        M 0x8000070c sub     a5, a3, a5             #; a3  = 0, a5  = 0, (wrb) a5  <-- 0
       0     3319        M 0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 0, (wrb) a5  <-- 0x00100320
                         M 0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 0
       0     3320        M                                           #; (f:fpu) ft0  <-- 0.0
       0     3321        M 0x8000071c addi    a2, a2, 8              #; a2  = 0, (wrb) a2  <-- 8
       0     3322        M 0x80000718 fsd     ft0, 0(a5)             #; 0.0 ~~> Doub[0x00100320]
       0     3330        M 0x80000720 addi    a3, a3, 1              #; a3  = 0, (wrb) a3  <-- 1
       0     3331        M 0x80000724 bne     a2, a7, pc - 36        #; a2  = 8, a7  = 800, taken, goto 0x80000700
       0     3332        M 0x80000700 mulhu   a5, a3, a4             #; a3  = 1, a4  = 0xcccccccd
       0     3335        M                                           #; (acc) a5  <-- 0x0037d793
       0     3336        M 0x80000704 srli    a5, a5, 3              #; a5  = 0, (wrb) a5  <-- 0
       0     3337        M 0x80000708 mul     a5, a5, a6             #; a5  = 0, a6  = 10
       0     3340        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3341        M 0x8000070c sub     a5, a3, a5             #; a3  = 1, a5  = 0, (wrb) a5  <-- 1
       0     3343        M 0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 8, (wrb) a5  <-- 0x00100328
                         M 0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 1
       0     3344        M                                           #; (f:fpu) ft0  <-- 1.0
       0     3345        M 0x8000071c addi    a2, a2, 8              #; a2  = 8, (wrb) a2  <-- 16
       0     3346        M 0x80000720 addi    a3, a3, 1              #; a3  = 1, (wrb) a3  <-- 2
                         M 0x80000718 fsd     ft0, 0(a5)             #; 1.0 ~~> Doub[0x00100328]
       0     3347        M 0x80000724 bne     a2, a7, pc - 36        #; a2  = 16, a7  = 800, taken, goto 0x80000700
       0     3348        M 0x80000700 mulhu   a5, a3, a4             #; a3  = 2, a4  = 0xcccccccd
       0     3351        M                                           #; (acc) a5  <-- 0x0037d793
       0     3352        M 0x80000704 srli    a5, a5, 3              #; a5  = 1, (wrb) a5  <-- 0
       0     3353        M 0x80000708 mul     a5, a5, a6             #; a5  = 0, a6  = 10
       0     3356        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3357        M 0x8000070c sub     a5, a3, a5             #; a3  = 2, a5  = 0, (wrb) a5  <-- 2
       0     3359        M 0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 16, (wrb) a5  <-- 0x00100330
                         M 0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 2
       0     3360        M                                           #; (f:fpu) ft0  <-- 2.0
       0     3361        M 0x8000071c addi    a2, a2, 8              #; a2  = 16, (wrb) a2  <-- 24
       0     3362        M 0x80000720 addi    a3, a3, 1              #; a3  = 2, (wrb) a3  <-- 3
                         M 0x80000718 fsd     ft0, 0(a5)             #; 2.0 ~~> Doub[0x00100330]
       0     3363        M 0x80000724 bne     a2, a7, pc - 36        #; a2  = 24, a7  = 800, taken, goto 0x80000700
       0     3364        M 0x80000700 mulhu   a5, a3, a4             #; a3  = 3, a4  = 0xcccccccd
       0     3367        M                                           #; (acc) a5  <-- 0x0037d793
       0     3368        M 0x80000704 srli    a5, a5, 3              #; a5  = 2, (wrb) a5  <-- 0
       0     3369        M 0x80000708 mul     a5, a5, a6             #; a5  = 0, a6  = 10
       0     3372        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3373        M 0x8000070c sub     a5, a3, a5             #; a3  = 3, a5  = 0, (wrb) a5  <-- 3
       0     3375        M 0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 24, (wrb) a5  <-- 0x00100338
                         M 0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 3
       0     3376        M                                           #; (f:fpu) ft0  <-- 3.0
       0     3377        M 0x8000071c addi    a2, a2, 8              #; a2  = 24, (wrb) a2  <-- 32
       0     3378        M 0x80000720 addi    a3, a3, 1              #; a3  = 3, (wrb) a3  <-- 4
                         M 0x80000718 fsd     ft0, 0(a5)             #; 3.0 ~~> Doub[0x00100338]
       0     3379        M 0x80000724 bne     a2, a7, pc - 36        #; a2  = 32, a7  = 800, taken, goto 0x80000700
       0     3380        M 0x80000700 mulhu   a5, a3, a4             #; a3  = 4, a4  = 0xcccccccd
       0     3383        M                                           #; (acc) a5  <-- 0x0037d793
       0     3384        M 0x80000704 srli    a5, a5, 3              #; a5  = 3, (wrb) a5  <-- 0
       0     3385        M 0x80000708 mul     a5, a5, a6             #; a5  = 0, a6  = 10
       0     3388        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3389        M 0x8000070c sub     a5, a3, a5             #; a3  = 4, a5  = 0, (wrb) a5  <-- 4
       0     3391        M 0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 32, (wrb) a5  <-- 0x00100340
                         M 0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 4
       0     3392        M                                           #; (f:fpu) ft0  <-- 4.0
       0     3393        M 0x8000071c addi    a2, a2, 8              #; a2  = 32, (wrb) a2  <-- 40
       0     3394        M 0x80000720 addi    a3, a3, 1              #; a3  = 4, (wrb) a3  <-- 5
                         M 0x80000718 fsd     ft0, 0(a5)             #; 4.0 ~~> Doub[0x00100340]
       0     3395        M 0x80000724 bne     a2, a7, pc - 36        #; a2  = 40, a7  = 800, taken, goto 0x80000700
       0     3396        M 0x80000700 mulhu   a5, a3, a4             #; a3  = 5, a4  = 0xcccccccd
       0     3399        M                                           #; (acc) a5  <-- 0x0037d793
       0     3400        M 0x80000704 srli    a5, a5, 3              #; a5  = 4, (wrb) a5  <-- 0
       0     3401        M 0x80000708 mul     a5, a5, a6             #; a5  = 0, a6  = 10
       0     3404        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3405        M 0x8000070c sub     a5, a3, a5             #; a3  = 5, a5  = 0, (wrb) a5  <-- 5
       0     3407        M 0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 40, (wrb) a5  <-- 0x00100348
                         M 0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 5
       0     3408        M                                           #; (f:fpu) ft0  <-- 5.0
       0     3409        M 0x8000071c addi    a2, a2, 8              #; a2  = 40, (wrb) a2  <-- 48
       0     3410        M 0x80000720 addi    a3, a3, 1              #; a3  = 5, (wrb) a3  <-- 6
                         M 0x80000718 fsd     ft0, 0(a5)             #; 5.0 ~~> Doub[0x00100348]
       0     3411        M 0x80000724 bne     a2, a7, pc - 36        #; a2  = 48, a7  = 800, taken, goto 0x80000700
       0     3412        M 0x80000700 mulhu   a5, a3, a4             #; a3  = 6, a4  = 0xcccccccd
       0     3415        M                                           #; (acc) a5  <-- 0x0037d793
       0     3416        M 0x80000704 srli    a5, a5, 3              #; a5  = 4, (wrb) a5  <-- 0
       0     3417        M 0x80000708 mul     a5, a5, a6             #; a5  = 0, a6  = 10
       0     3420        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3421        M 0x8000070c sub     a5, a3, a5             #; a3  = 6, a5  = 0, (wrb) a5  <-- 6
       0     3423        M 0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 48, (wrb) a5  <-- 0x00100350
                         M 0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 6
       0     3424        M                                           #; (f:fpu) ft0  <-- 6.0
       0     3425        M 0x8000071c addi    a2, a2, 8              #; a2  = 48, (wrb) a2  <-- 56
       0     3426        M 0x80000720 addi    a3, a3, 1              #; a3  = 6, (wrb) a3  <-- 7
                         M 0x80000718 fsd     ft0, 0(a5)             #; 6.0 ~~> Doub[0x00100350]
       0     3427        M 0x80000724 bne     a2, a7, pc - 36        #; a2  = 56, a7  = 800, taken, goto 0x80000700
       0     3428        M 0x80000700 mulhu   a5, a3, a4             #; a3  = 7, a4  = 0xcccccccd
       0     3431        M                                           #; (acc) a5  <-- 0x0037d793
       0     3432        M 0x80000704 srli    a5, a5, 3              #; a5  = 5, (wrb) a5  <-- 0
       0     3433        M 0x80000708 mul     a5, a5, a6             #; a5  = 0, a6  = 10
       0     3436        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3437        M 0x8000070c sub     a5, a3, a5             #; a3  = 7, a5  = 0, (wrb) a5  <-- 7
       0     3439        M 0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 56, (wrb) a5  <-- 0x00100358
                         M 0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 7
       0     3440        M                                           #; (f:fpu) ft0  <-- 7.0
       0     3441        M 0x8000071c addi    a2, a2, 8              #; a2  = 56, (wrb) a2  <-- 64
       0     3442        M 0x80000720 addi    a3, a3, 1              #; a3  = 7, (wrb) a3  <-- 8
                         M 0x80000718 fsd     ft0, 0(a5)             #; 7.0 ~~> Doub[0x00100358]
       0     3443        M 0x80000724 bne     a2, a7, pc - 36        #; a2  = 64, a7  = 800, taken, goto 0x80000700
       0     3444        M 0x80000700 mulhu   a5, a3, a4             #; a3  = 8, a4  = 0xcccccccd
       0     3447        M                                           #; (acc) a5  <-- 0x0037d793
       0     3448        M 0x80000704 srli    a5, a5, 3              #; a5  = 6, (wrb) a5  <-- 0
       0     3449        M 0x80000708 mul     a5, a5, a6             #; a5  = 0, a6  = 10
       0     3452        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3453        M 0x8000070c sub     a5, a3, a5             #; a3  = 8, a5  = 0, (wrb) a5  <-- 8
       0     3455        M 0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 64, (wrb) a5  <-- 0x00100360
                         M 0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 8
       0     3456        M                                           #; (f:fpu) ft0  <-- 8.0
       0     3457        M 0x8000071c addi    a2, a2, 8              #; a2  = 64, (wrb) a2  <-- 72
       0     3458        M 0x80000720 addi    a3, a3, 1              #; a3  = 8, (wrb) a3  <-- 9
                         M 0x80000718 fsd     ft0, 0(a5)             #; 8.0 ~~> Doub[0x00100360]
       0     3459        M 0x80000724 bne     a2, a7, pc - 36        #; a2  = 72, a7  = 800, taken, goto 0x80000700
       0     3460        M 0x80000700 mulhu   a5, a3, a4             #; a3  = 9, a4  = 0xcccccccd
       0     3463        M                                           #; (acc) a5  <-- 0x0037d793
       0     3464        M 0x80000704 srli    a5, a5, 3              #; a5  = 7, (wrb) a5  <-- 0
       0     3465        M 0x80000708 mul     a5, a5, a6             #; a5  = 0, a6  = 10
       0     3468        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3469        M 0x8000070c sub     a5, a3, a5             #; a3  = 9, a5  = 0, (wrb) a5  <-- 9
       0     3471        M 0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 72, (wrb) a5  <-- 0x00100368
                         M 0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 9
       0     3472        M                                           #; (f:fpu) ft0  <-- 9.0
       0     3473        M 0x8000071c addi    a2, a2, 8              #; a2  = 72, (wrb) a2  <-- 80
       0     3474        M 0x80000720 addi    a3, a3, 1              #; a3  = 9, (wrb) a3  <-- 10
                         M 0x80000718 fsd     ft0, 0(a5)             #; 9.0 ~~> Doub[0x00100368]
       0     3475        M 0x80000724 bne     a2, a7, pc - 36        #; a2  = 80, a7  = 800, taken, goto 0x80000700
       0     3476        M 0x80000700 mulhu   a5, a3, a4             #; a3  = 10, a4  = 0xcccccccd
       0     3479        M                                           #; (acc) a5  <-- 0x0037d793
       0     3480        M 0x80000704 srli    a5, a5, 3              #; a5  = 8, (wrb) a5  <-- 1
       0     3481        M 0x80000708 mul     a5, a5, a6             #; a5  = 1, a6  = 10
       0     3484        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3485        M 0x8000070c sub     a5, a3, a5             #; a3  = 10, a5  = 10, (wrb) a5  <-- 0
       0     3487        M 0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 80, (wrb) a5  <-- 0x00100370
                         M 0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 0
       0     3488        M                                           #; (f:fpu) ft0  <-- 0.0
       0     3489        M 0x8000071c addi    a2, a2, 8              #; a2  = 80, (wrb) a2  <-- 88
       0     3490        M 0x80000720 addi    a3, a3, 1              #; a3  = 10, (wrb) a3  <-- 11
                         M 0x80000718 fsd     ft0, 0(a5)             #; 0.0 ~~> Doub[0x00100370]
       0     3491        M 0x80000724 bne     a2, a7, pc - 36        #; a2  = 88, a7  = 800, taken, goto 0x80000700
       0     3492        M 0x80000700 mulhu   a5, a3, a4             #; a3  = 11, a4  = 0xcccccccd
       0     3495        M                                           #; (acc) a5  <-- 0x0037d793
       0     3496        M 0x80000704 srli    a5, a5, 3              #; a5  = 8, (wrb) a5  <-- 1
       0     3497        M 0x80000708 mul     a5, a5, a6             #; a5  = 1, a6  = 10
       0     3500        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3501        M 0x8000070c sub     a5, a3, a5             #; a3  = 11, a5  = 10, (wrb) a5  <-- 1
       0     3503        M 0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 88, (wrb) a5  <-- 0x00100378
                         M 0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 1
       0     3504        M                                           #; (f:fpu) ft0  <-- 1.0
       0     3505        M 0x8000071c addi    a2, a2, 8              #; a2  = 88, (wrb) a2  <-- 96
       0     3506        M 0x80000720 addi    a3, a3, 1              #; a3  = 11, (wrb) a3  <-- 12
                         M 0x80000718 fsd     ft0, 0(a5)             #; 1.0 ~~> Doub[0x00100378]
       0     3507        M 0x80000724 bne     a2, a7, pc - 36        #; a2  = 96, a7  = 800, taken, goto 0x80000700
       0     3508        M 0x80000700 mulhu   a5, a3, a4             #; a3  = 12, a4  = 0xcccccccd
       0     3511        M                                           #; (acc) a5  <-- 0x0037d793
       0     3512        M 0x80000704 srli    a5, a5, 3              #; a5  = 9, (wrb) a5  <-- 1
       0     3513        M 0x80000708 mul     a5, a5, a6             #; a5  = 1, a6  = 10
       0     3516        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3517        M 0x8000070c sub     a5, a3, a5             #; a3  = 12, a5  = 10, (wrb) a5  <-- 2
       0     3519        M 0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 96, (wrb) a5  <-- 0x00100380
                         M 0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 2
       0     3520        M                                           #; (f:fpu) ft0  <-- 2.0
       0     3521        M 0x8000071c addi    a2, a2, 8              #; a2  = 96, (wrb) a2  <-- 104
       0     3522        M 0x80000720 addi    a3, a3, 1              #; a3  = 12, (wrb) a3  <-- 13
                         M 0x80000718 fsd     ft0, 0(a5)             #; 2.0 ~~> Doub[0x00100380]
       0     3523        M 0x80000724 bne     a2, a7, pc - 36        #; a2  = 104, a7  = 800, taken, goto 0x80000700
       0     3524        M 0x80000700 mulhu   a5, a3, a4             #; a3  = 13, a4  = 0xcccccccd
       0     3527        M                                           #; (acc) a5  <-- 0x0037d793
       0     3528        M 0x80000704 srli    a5, a5, 3              #; a5  = 10, (wrb) a5  <-- 1
       0     3529        M 0x80000708 mul     a5, a5, a6             #; a5  = 1, a6  = 10
       0     3532        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3533        M 0x8000070c sub     a5, a3, a5             #; a3  = 13, a5  = 10, (wrb) a5  <-- 3
       0     3535        M 0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 104, (wrb) a5  <-- 0x00100388
                         M 0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 3
       0     3536        M                                           #; (f:fpu) ft0  <-- 3.0
       0     3537        M 0x8000071c addi    a2, a2, 8              #; a2  = 104, (wrb) a2  <-- 112
       0     3538        M 0x80000720 addi    a3, a3, 1              #; a3  = 13, (wrb) a3  <-- 14
                         M 0x80000718 fsd     ft0, 0(a5)             #; 3.0 ~~> Doub[0x00100388]
       0     3539        M 0x80000724 bne     a2, a7, pc - 36        #; a2  = 112, a7  = 800, taken, goto 0x80000700
       0     3540        M 0x80000700 mulhu   a5, a3, a4             #; a3  = 14, a4  = 0xcccccccd
       0     3543        M                                           #; (acc) a5  <-- 0x0037d793
       0     3544        M 0x80000704 srli    a5, a5, 3              #; a5  = 11, (wrb) a5  <-- 1
       0     3545        M 0x80000708 mul     a5, a5, a6             #; a5  = 1, a6  = 10
       0     3548        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3549        M 0x8000070c sub     a5, a3, a5             #; a3  = 14, a5  = 10, (wrb) a5  <-- 4
       0     3551        M 0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 112, (wrb) a5  <-- 0x00100390
                         M 0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 4
       0     3552        M                                           #; (f:fpu) ft0  <-- 4.0
       0     3553        M 0x8000071c addi    a2, a2, 8              #; a2  = 112, (wrb) a2  <-- 120
       0     3554        M 0x80000720 addi    a3, a3, 1              #; a3  = 14, (wrb) a3  <-- 15
                         M 0x80000718 fsd     ft0, 0(a5)             #; 4.0 ~~> Doub[0x00100390]
       0     3555        M 0x80000724 bne     a2, a7, pc - 36        #; a2  = 120, a7  = 800, taken, goto 0x80000700
       0     3556        M 0x80000700 mulhu   a5, a3, a4             #; a3  = 15, a4  = 0xcccccccd
       0     3559        M                                           #; (acc) a5  <-- 0x0037d793
       0     3560        M 0x80000704 srli    a5, a5, 3              #; a5  = 12, (wrb) a5  <-- 1
       0     3561        M 0x80000708 mul     a5, a5, a6             #; a5  = 1, a6  = 10
       0     3564        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3565        M 0x8000070c sub     a5, a3, a5             #; a3  = 15, a5  = 10, (wrb) a5  <-- 5
       0     3567        M 0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 120, (wrb) a5  <-- 0x00100398
                         M 0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 5
       0     3568        M                                           #; (f:fpu) ft0  <-- 5.0
       0     3569        M 0x8000071c addi    a2, a2, 8              #; a2  = 120, (wrb) a2  <-- 128
       0     3570        M 0x80000720 addi    a3, a3, 1              #; a3  = 15, (wrb) a3  <-- 16
                         M 0x80000718 fsd     ft0, 0(a5)             #; 5.0 ~~> Doub[0x00100398]
       0     3571        M 0x80000724 bne     a2, a7, pc - 36        #; a2  = 128, a7  = 800, taken, goto 0x80000700
       0     3572        M 0x80000700 mulhu   a5, a3, a4             #; a3  = 16, a4  = 0xcccccccd
       0     3575        M                                           #; (acc) a5  <-- 0x0037d793
       0     3576        M 0x80000704 srli    a5, a5, 3              #; a5  = 12, (wrb) a5  <-- 1
       0     3577        M 0x80000708 mul     a5, a5, a6             #; a5  = 1, a6  = 10
       0     3580        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3581        M 0x8000070c sub     a5, a3, a5             #; a3  = 16, a5  = 10, (wrb) a5  <-- 6
       0     3583        M 0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 128, (wrb) a5  <-- 0x001003a0
                         M 0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 6
       0     3584        M                                           #; (f:fpu) ft0  <-- 6.0
       0     3585        M 0x8000071c addi    a2, a2, 8              #; a2  = 128, (wrb) a2  <-- 136
       0     3586        M 0x80000720 addi    a3, a3, 1              #; a3  = 16, (wrb) a3  <-- 17
                         M 0x80000718 fsd     ft0, 0(a5)             #; 6.0 ~~> Doub[0x001003a0]
       0     3587        M 0x80000724 bne     a2, a7, pc - 36        #; a2  = 136, a7  = 800, taken, goto 0x80000700
       0     3588        M 0x80000700 mulhu   a5, a3, a4             #; a3  = 17, a4  = 0xcccccccd
       0     3591        M                                           #; (acc) a5  <-- 0x0037d793
       0     3592        M 0x80000704 srli    a5, a5, 3              #; a5  = 13, (wrb) a5  <-- 1
       0     3593        M 0x80000708 mul     a5, a5, a6             #; a5  = 1, a6  = 10
       0     3596        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3597        M 0x8000070c sub     a5, a3, a5             #; a3  = 17, a5  = 10, (wrb) a5  <-- 7
       0     3599        M 0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 136, (wrb) a5  <-- 0x001003a8
                         M 0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 7
       0     3600        M                                           #; (f:fpu) ft0  <-- 7.0
       0     3601        M 0x8000071c addi    a2, a2, 8              #; a2  = 136, (wrb) a2  <-- 144
       0     3602        M 0x80000720 addi    a3, a3, 1              #; a3  = 17, (wrb) a3  <-- 18
                         M 0x80000718 fsd     ft0, 0(a5)             #; 7.0 ~~> Doub[0x001003a8]
       0     3603        M 0x80000724 bne     a2, a7, pc - 36        #; a2  = 144, a7  = 800, taken, goto 0x80000700
       0     3604        M 0x80000700 mulhu   a5, a3, a4             #; a3  = 18, a4  = 0xcccccccd
       0     3607        M                                           #; (acc) a5  <-- 0x0037d793
       0     3608        M 0x80000704 srli    a5, a5, 3              #; a5  = 14, (wrb) a5  <-- 1
       0     3609        M 0x80000708 mul     a5, a5, a6             #; a5  = 1, a6  = 10
       0     3612        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3613        M 0x8000070c sub     a5, a3, a5             #; a3  = 18, a5  = 10, (wrb) a5  <-- 8
       0     3615        M 0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 144, (wrb) a5  <-- 0x001003b0
                         M 0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 8
       0     3616        M                                           #; (f:fpu) ft0  <-- 8.0
       0     3617        M 0x8000071c addi    a2, a2, 8              #; a2  = 144, (wrb) a2  <-- 152
       0     3618        M 0x80000720 addi    a3, a3, 1              #; a3  = 18, (wrb) a3  <-- 19
                         M 0x80000718 fsd     ft0, 0(a5)             #; 8.0 ~~> Doub[0x001003b0]
       0     3619        M 0x80000724 bne     a2, a7, pc - 36        #; a2  = 152, a7  = 800, taken, goto 0x80000700
       0     3620        M 0x80000700 mulhu   a5, a3, a4             #; a3  = 19, a4  = 0xcccccccd
       0     3623        M                                           #; (acc) a5  <-- 0x0037d793
       0     3624        M 0x80000704 srli    a5, a5, 3              #; a5  = 15, (wrb) a5  <-- 1
       0     3625        M 0x80000708 mul     a5, a5, a6             #; a5  = 1, a6  = 10
       0     3628        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3629        M 0x8000070c sub     a5, a3, a5             #; a3  = 19, a5  = 10, (wrb) a5  <-- 9
       0     3631        M 0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 152, (wrb) a5  <-- 0x001003b8
                         M 0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 9
       0     3632        M                                           #; (f:fpu) ft0  <-- 9.0
       0     3633        M 0x8000071c addi    a2, a2, 8              #; a2  = 152, (wrb) a2  <-- 160
       0     3634        M 0x80000720 addi    a3, a3, 1              #; a3  = 19, (wrb) a3  <-- 20
                         M 0x80000718 fsd     ft0, 0(a5)             #; 9.0 ~~> Doub[0x001003b8]
       0     3635        M 0x80000724 bne     a2, a7, pc - 36        #; a2  = 160, a7  = 800, taken, goto 0x80000700
       0     3636        M 0x80000700 mulhu   a5, a3, a4             #; a3  = 20, a4  = 0xcccccccd
       0     3639        M                                           #; (acc) a5  <-- 0x0037d793
       0     3640        M 0x80000704 srli    a5, a5, 3              #; a5  = 16, (wrb) a5  <-- 2
       0     3641        M 0x80000708 mul     a5, a5, a6             #; a5  = 2, a6  = 10
       0     3644        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3645        M 0x8000070c sub     a5, a3, a5             #; a3  = 20, a5  = 20, (wrb) a5  <-- 0
       0     3647        M 0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 160, (wrb) a5  <-- 0x001003c0
                         M 0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 0
       0     3648        M                                           #; (f:fpu) ft0  <-- 0.0
       0     3649        M 0x8000071c addi    a2, a2, 8              #; a2  = 160, (wrb) a2  <-- 168
       0     3650        M 0x80000720 addi    a3, a3, 1              #; a3  = 20, (wrb) a3  <-- 21
                         M 0x80000718 fsd     ft0, 0(a5)             #; 0.0 ~~> Doub[0x001003c0]
       0     3651        M 0x80000724 bne     a2, a7, pc - 36        #; a2  = 168, a7  = 800, taken, goto 0x80000700
       0     3652        M 0x80000700 mulhu   a5, a3, a4             #; a3  = 21, a4  = 0xcccccccd
       0     3655        M                                           #; (acc) a5  <-- 0x0037d793
       0     3656        M 0x80000704 srli    a5, a5, 3              #; a5  = 16, (wrb) a5  <-- 2
       0     3657        M 0x80000708 mul     a5, a5, a6             #; a5  = 2, a6  = 10
       0     3660        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3661        M 0x8000070c sub     a5, a3, a5             #; a3  = 21, a5  = 20, (wrb) a5  <-- 1
       0     3663        M 0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 168, (wrb) a5  <-- 0x001003c8
                         M 0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 1
       0     3664        M                                           #; (f:fpu) ft0  <-- 1.0
       0     3665        M 0x8000071c addi    a2, a2, 8              #; a2  = 168, (wrb) a2  <-- 176
       0     3666        M 0x80000720 addi    a3, a3, 1              #; a3  = 21, (wrb) a3  <-- 22
                         M 0x80000718 fsd     ft0, 0(a5)             #; 1.0 ~~> Doub[0x001003c8]
       0     3667        M 0x80000724 bne     a2, a7, pc - 36        #; a2  = 176, a7  = 800, taken, goto 0x80000700
       0     3668        M 0x80000700 mulhu   a5, a3, a4             #; a3  = 22, a4  = 0xcccccccd
       0     3671        M                                           #; (acc) a5  <-- 0x0037d793
       0     3672        M 0x80000704 srli    a5, a5, 3              #; a5  = 17, (wrb) a5  <-- 2
       0     3673        M 0x80000708 mul     a5, a5, a6             #; a5  = 2, a6  = 10
       0     3676        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3677        M 0x8000070c sub     a5, a3, a5             #; a3  = 22, a5  = 20, (wrb) a5  <-- 2
       0     3679        M 0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 176, (wrb) a5  <-- 0x001003d0
                         M 0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 2
       0     3680        M                                           #; (f:fpu) ft0  <-- 2.0
       0     3681        M 0x8000071c addi    a2, a2, 8              #; a2  = 176, (wrb) a2  <-- 184
       0     3682        M 0x80000720 addi    a3, a3, 1              #; a3  = 22, (wrb) a3  <-- 23
                         M 0x80000718 fsd     ft0, 0(a5)             #; 2.0 ~~> Doub[0x001003d0]
       0     3683        M 0x80000724 bne     a2, a7, pc - 36        #; a2  = 184, a7  = 800, taken, goto 0x80000700
       0     3684        M 0x80000700 mulhu   a5, a3, a4             #; a3  = 23, a4  = 0xcccccccd
       0     3687        M                                           #; (acc) a5  <-- 0x0037d793
       0     3688        M 0x80000704 srli    a5, a5, 3              #; a5  = 18, (wrb) a5  <-- 2
       0     3689        M 0x80000708 mul     a5, a5, a6             #; a5  = 2, a6  = 10
       0     3692        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3693        M 0x8000070c sub     a5, a3, a5             #; a3  = 23, a5  = 20, (wrb) a5  <-- 3
       0     3695        M 0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 184, (wrb) a5  <-- 0x001003d8
                         M 0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 3
       0     3696        M                                           #; (f:fpu) ft0  <-- 3.0
       0     3697        M 0x8000071c addi    a2, a2, 8              #; a2  = 184, (wrb) a2  <-- 192
       0     3698        M 0x80000720 addi    a3, a3, 1              #; a3  = 23, (wrb) a3  <-- 24
                         M 0x80000718 fsd     ft0, 0(a5)             #; 3.0 ~~> Doub[0x001003d8]
       0     3699        M 0x80000724 bne     a2, a7, pc - 36        #; a2  = 192, a7  = 800, taken, goto 0x80000700
       0     3700        M 0x80000700 mulhu   a5, a3, a4             #; a3  = 24, a4  = 0xcccccccd
       0     3703        M                                           #; (acc) a5  <-- 0x0037d793
       0     3704        M 0x80000704 srli    a5, a5, 3              #; a5  = 19, (wrb) a5  <-- 2
       0     3705        M 0x80000708 mul     a5, a5, a6             #; a5  = 2, a6  = 10
       0     3708        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3709        M 0x8000070c sub     a5, a3, a5             #; a3  = 24, a5  = 20, (wrb) a5  <-- 4
       0     3711        M 0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 192, (wrb) a5  <-- 0x001003e0
                         M 0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 4
       0     3712        M                                           #; (f:fpu) ft0  <-- 4.0
       0     3713        M 0x8000071c addi    a2, a2, 8              #; a2  = 192, (wrb) a2  <-- 200
       0     3714        M 0x80000720 addi    a3, a3, 1              #; a3  = 24, (wrb) a3  <-- 25
                         M 0x80000718 fsd     ft0, 0(a5)             #; 4.0 ~~> Doub[0x001003e0]
       0     3715        M 0x80000724 bne     a2, a7, pc - 36        #; a2  = 200, a7  = 800, taken, goto 0x80000700
       0     3716        M 0x80000700 mulhu   a5, a3, a4             #; a3  = 25, a4  = 0xcccccccd
       0     3719        M                                           #; (acc) a5  <-- 0x0037d793
       0     3720        M 0x80000704 srli    a5, a5, 3              #; a5  = 20, (wrb) a5  <-- 2
       0     3721        M 0x80000708 mul     a5, a5, a6             #; a5  = 2, a6  = 10
       0     3724        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3725        M 0x8000070c sub     a5, a3, a5             #; a3  = 25, a5  = 20, (wrb) a5  <-- 5
       0     3727        M 0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 200, (wrb) a5  <-- 0x001003e8
                         M 0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 5
       0     3728        M                                           #; (f:fpu) ft0  <-- 5.0
       0     3729        M 0x8000071c addi    a2, a2, 8              #; a2  = 200, (wrb) a2  <-- 208
       0     3730        M 0x80000720 addi    a3, a3, 1              #; a3  = 25, (wrb) a3  <-- 26
                         M 0x80000718 fsd     ft0, 0(a5)             #; 5.0 ~~> Doub[0x001003e8]
       0     3731        M 0x80000724 bne     a2, a7, pc - 36        #; a2  = 208, a7  = 800, taken, goto 0x80000700
       0     3732        M 0x80000700 mulhu   a5, a3, a4             #; a3  = 26, a4  = 0xcccccccd
       0     3735        M                                           #; (acc) a5  <-- 0x0037d793
       0     3736        M 0x80000704 srli    a5, a5, 3              #; a5  = 20, (wrb) a5  <-- 2
       0     3737        M 0x80000708 mul     a5, a5, a6             #; a5  = 2, a6  = 10
       0     3740        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3741        M 0x8000070c sub     a5, a3, a5             #; a3  = 26, a5  = 20, (wrb) a5  <-- 6
       0     3743        M 0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 208, (wrb) a5  <-- 0x001003f0
                         M 0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 6
       0     3744        M                                           #; (f:fpu) ft0  <-- 6.0
       0     3745        M 0x8000071c addi    a2, a2, 8              #; a2  = 208, (wrb) a2  <-- 216
       0     3746        M 0x80000720 addi    a3, a3, 1              #; a3  = 26, (wrb) a3  <-- 27
                         M 0x80000718 fsd     ft0, 0(a5)             #; 6.0 ~~> Doub[0x001003f0]
       0     3747        M 0x80000724 bne     a2, a7, pc - 36        #; a2  = 216, a7  = 800, taken, goto 0x80000700
       0     3748        M 0x80000700 mulhu   a5, a3, a4             #; a3  = 27, a4  = 0xcccccccd
       0     3751        M                                           #; (acc) a5  <-- 0x0037d793
       0     3752        M 0x80000704 srli    a5, a5, 3              #; a5  = 21, (wrb) a5  <-- 2
       0     3753        M 0x80000708 mul     a5, a5, a6             #; a5  = 2, a6  = 10
       0     3756        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3757        M 0x8000070c sub     a5, a3, a5             #; a3  = 27, a5  = 20, (wrb) a5  <-- 7
       0     3759        M 0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 216, (wrb) a5  <-- 0x001003f8
                         M 0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 7
       0     3760        M                                           #; (f:fpu) ft0  <-- 7.0
       0     3761        M 0x8000071c addi    a2, a2, 8              #; a2  = 216, (wrb) a2  <-- 224
       0     3762        M 0x80000720 addi    a3, a3, 1              #; a3  = 27, (wrb) a3  <-- 28
                         M 0x80000718 fsd     ft0, 0(a5)             #; 7.0 ~~> Doub[0x001003f8]
       0     3763        M 0x80000724 bne     a2, a7, pc - 36        #; a2  = 224, a7  = 800, taken, goto 0x80000700
       0     3764        M 0x80000700 mulhu   a5, a3, a4             #; a3  = 28, a4  = 0xcccccccd
       0     3767        M                                           #; (acc) a5  <-- 0x0037d793
       0     3768        M 0x80000704 srli    a5, a5, 3              #; a5  = 22, (wrb) a5  <-- 2
       0     3769        M 0x80000708 mul     a5, a5, a6             #; a5  = 2, a6  = 10
       0     3772        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3773        M 0x8000070c sub     a5, a3, a5             #; a3  = 28, a5  = 20, (wrb) a5  <-- 8
       0     3775        M 0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 224, (wrb) a5  <-- 0x00100400
                         M 0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 8
       0     3776        M                                           #; (f:fpu) ft0  <-- 8.0
       0     3777        M 0x8000071c addi    a2, a2, 8              #; a2  = 224, (wrb) a2  <-- 232
       0     3778        M 0x80000720 addi    a3, a3, 1              #; a3  = 28, (wrb) a3  <-- 29
                         M 0x80000718 fsd     ft0, 0(a5)             #; 8.0 ~~> Doub[0x00100400]
       0     3779        M 0x80000724 bne     a2, a7, pc - 36        #; a2  = 232, a7  = 800, taken, goto 0x80000700
       0     3780        M 0x80000700 mulhu   a5, a3, a4             #; a3  = 29, a4  = 0xcccccccd
       0     3783        M                                           #; (acc) a5  <-- 0x0037d793
       0     3784        M 0x80000704 srli    a5, a5, 3              #; a5  = 23, (wrb) a5  <-- 2
       0     3785        M 0x80000708 mul     a5, a5, a6             #; a5  = 2, a6  = 10
       0     3788        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3789        M 0x8000070c sub     a5, a3, a5             #; a3  = 29, a5  = 20, (wrb) a5  <-- 9
       0     3791        M 0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 232, (wrb) a5  <-- 0x00100408
                         M 0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 9
       0     3792        M                                           #; (f:fpu) ft0  <-- 9.0
       0     3793        M 0x8000071c addi    a2, a2, 8              #; a2  = 232, (wrb) a2  <-- 240
       0     3794        M 0x80000720 addi    a3, a3, 1              #; a3  = 29, (wrb) a3  <-- 30
                         M 0x80000718 fsd     ft0, 0(a5)             #; 9.0 ~~> Doub[0x00100408]
       0     3795        M 0x80000724 bne     a2, a7, pc - 36        #; a2  = 240, a7  = 800, taken, goto 0x80000700
       0     3796        M 0x80000700 mulhu   a5, a3, a4             #; a3  = 30, a4  = 0xcccccccd
       0     3799        M                                           #; (acc) a5  <-- 0x0037d793
       0     3800        M 0x80000704 srli    a5, a5, 3              #; a5  = 24, (wrb) a5  <-- 3
       0     3801        M 0x80000708 mul     a5, a5, a6             #; a5  = 3, a6  = 10
       0     3804        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3805        M 0x8000070c sub     a5, a3, a5             #; a3  = 30, a5  = 30, (wrb) a5  <-- 0
       0     3807        M 0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 240, (wrb) a5  <-- 0x00100410
                         M 0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 0
       0     3808        M                                           #; (f:fpu) ft0  <-- 0.0
       0     3809        M 0x8000071c addi    a2, a2, 8              #; a2  = 240, (wrb) a2  <-- 248
       0     3810        M 0x80000720 addi    a3, a3, 1              #; a3  = 30, (wrb) a3  <-- 31
                         M 0x80000718 fsd     ft0, 0(a5)             #; 0.0 ~~> Doub[0x00100410]
       0     3811        M 0x80000724 bne     a2, a7, pc - 36        #; a2  = 248, a7  = 800, taken, goto 0x80000700
       0     3812        M 0x80000700 mulhu   a5, a3, a4             #; a3  = 31, a4  = 0xcccccccd
       0     3815        M                                           #; (acc) a5  <-- 0x0037d793
       0     3816        M 0x80000704 srli    a5, a5, 3              #; a5  = 24, (wrb) a5  <-- 3
       0     3817        M 0x80000708 mul     a5, a5, a6             #; a5  = 3, a6  = 10
       0     3820        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3821        M 0x8000070c sub     a5, a3, a5             #; a3  = 31, a5  = 30, (wrb) a5  <-- 1
       0     3823        M 0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 248, (wrb) a5  <-- 0x00100418
                         M 0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 1
       0     3824        M                                           #; (f:fpu) ft0  <-- 1.0
       0     3825        M 0x8000071c addi    a2, a2, 8              #; a2  = 248, (wrb) a2  <-- 256
       0     3826        M 0x80000720 addi    a3, a3, 1              #; a3  = 31, (wrb) a3  <-- 32
                         M 0x80000718 fsd     ft0, 0(a5)             #; 1.0 ~~> Doub[0x00100418]
       0     3827        M 0x80000724 bne     a2, a7, pc - 36        #; a2  = 256, a7  = 800, taken, goto 0x80000700
       0     3828        M 0x80000700 mulhu   a5, a3, a4             #; a3  = 32, a4  = 0xcccccccd
       0     3831        M                                           #; (acc) a5  <-- 0x0037d793
       0     3832        M 0x80000704 srli    a5, a5, 3              #; a5  = 25, (wrb) a5  <-- 3
       0     3833        M 0x80000708 mul     a5, a5, a6             #; a5  = 3, a6  = 10
       0     3836        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3837        M 0x8000070c sub     a5, a3, a5             #; a3  = 32, a5  = 30, (wrb) a5  <-- 2
       0     3839        M 0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 256, (wrb) a5  <-- 0x00100420
                         M 0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 2
       0     3840        M                                           #; (f:fpu) ft0  <-- 2.0
       0     3841        M 0x8000071c addi    a2, a2, 8              #; a2  = 256, (wrb) a2  <-- 264
       0     3842        M 0x80000720 addi    a3, a3, 1              #; a3  = 32, (wrb) a3  <-- 33
                         M 0x80000718 fsd     ft0, 0(a5)             #; 2.0 ~~> Doub[0x00100420]
       0     3843        M 0x80000724 bne     a2, a7, pc - 36        #; a2  = 264, a7  = 800, taken, goto 0x80000700
       0     3844        M 0x80000700 mulhu   a5, a3, a4             #; a3  = 33, a4  = 0xcccccccd
       0     3847        M                                           #; (acc) a5  <-- 0x0037d793
       0     3848        M 0x80000704 srli    a5, a5, 3              #; a5  = 26, (wrb) a5  <-- 3
       0     3849        M 0x80000708 mul     a5, a5, a6             #; a5  = 3, a6  = 10
       0     3852        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3853        M 0x8000070c sub     a5, a3, a5             #; a3  = 33, a5  = 30, (wrb) a5  <-- 3
       0     3855        M 0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 264, (wrb) a5  <-- 0x00100428
                         M 0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 3
       0     3856        M                                           #; (f:fpu) ft0  <-- 3.0
       0     3857        M 0x8000071c addi    a2, a2, 8              #; a2  = 264, (wrb) a2  <-- 272
       0     3858        M 0x80000720 addi    a3, a3, 1              #; a3  = 33, (wrb) a3  <-- 34
                         M 0x80000718 fsd     ft0, 0(a5)             #; 3.0 ~~> Doub[0x00100428]
       0     3859        M 0x80000724 bne     a2, a7, pc - 36        #; a2  = 272, a7  = 800, taken, goto 0x80000700
       0     3860        M 0x80000700 mulhu   a5, a3, a4             #; a3  = 34, a4  = 0xcccccccd
       0     3863        M                                           #; (acc) a5  <-- 0x0037d793
       0     3864        M 0x80000704 srli    a5, a5, 3              #; a5  = 27, (wrb) a5  <-- 3
       0     3865        M 0x80000708 mul     a5, a5, a6             #; a5  = 3, a6  = 10
       0     3868        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3869        M 0x8000070c sub     a5, a3, a5             #; a3  = 34, a5  = 30, (wrb) a5  <-- 4
       0     3871        M 0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 272, (wrb) a5  <-- 0x00100430
                         M 0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 4
       0     3872        M                                           #; (f:fpu) ft0  <-- 4.0
       0     3873        M 0x8000071c addi    a2, a2, 8              #; a2  = 272, (wrb) a2  <-- 280
       0     3874        M 0x80000720 addi    a3, a3, 1              #; a3  = 34, (wrb) a3  <-- 35
                         M 0x80000718 fsd     ft0, 0(a5)             #; 4.0 ~~> Doub[0x00100430]
       0     3875        M 0x80000724 bne     a2, a7, pc - 36        #; a2  = 280, a7  = 800, taken, goto 0x80000700
       0     3876        M 0x80000700 mulhu   a5, a3, a4             #; a3  = 35, a4  = 0xcccccccd
       0     3879        M                                           #; (acc) a5  <-- 0x0037d793
       0     3880        M 0x80000704 srli    a5, a5, 3              #; a5  = 28, (wrb) a5  <-- 3
       0     3881        M 0x80000708 mul     a5, a5, a6             #; a5  = 3, a6  = 10
       0     3884        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3885        M 0x8000070c sub     a5, a3, a5             #; a3  = 35, a5  = 30, (wrb) a5  <-- 5
       0     3887        M 0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 280, (wrb) a5  <-- 0x00100438
                         M 0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 5
       0     3888        M                                           #; (f:fpu) ft0  <-- 5.0
       0     3889        M 0x8000071c addi    a2, a2, 8              #; a2  = 280, (wrb) a2  <-- 288
       0     3890        M 0x80000720 addi    a3, a3, 1              #; a3  = 35, (wrb) a3  <-- 36
                         M 0x80000718 fsd     ft0, 0(a5)             #; 5.0 ~~> Doub[0x00100438]
       0     3891        M 0x80000724 bne     a2, a7, pc - 36        #; a2  = 288, a7  = 800, taken, goto 0x80000700
       0     3892        M 0x80000700 mulhu   a5, a3, a4             #; a3  = 36, a4  = 0xcccccccd
       0     3895        M                                           #; (acc) a5  <-- 0x0037d793
       0     3896        M 0x80000704 srli    a5, a5, 3              #; a5  = 28, (wrb) a5  <-- 3
       0     3897        M 0x80000708 mul     a5, a5, a6             #; a5  = 3, a6  = 10
       0     3900        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3901        M 0x8000070c sub     a5, a3, a5             #; a3  = 36, a5  = 30, (wrb) a5  <-- 6
       0     3903        M 0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 288, (wrb) a5  <-- 0x00100440
                         M 0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 6
       0     3904        M                                           #; (f:fpu) ft0  <-- 6.0
       0     3905        M 0x8000071c addi    a2, a2, 8              #; a2  = 288, (wrb) a2  <-- 296
       0     3906        M 0x80000720 addi    a3, a3, 1              #; a3  = 36, (wrb) a3  <-- 37
                         M 0x80000718 fsd     ft0, 0(a5)             #; 6.0 ~~> Doub[0x00100440]
       0     3907        M 0x80000724 bne     a2, a7, pc - 36        #; a2  = 296, a7  = 800, taken, goto 0x80000700
       0     3908        M 0x80000700 mulhu   a5, a3, a4             #; a3  = 37, a4  = 0xcccccccd
       0     3911        M                                           #; (acc) a5  <-- 0x0037d793
       0     3912        M 0x80000704 srli    a5, a5, 3              #; a5  = 29, (wrb) a5  <-- 3
       0     3913        M 0x80000708 mul     a5, a5, a6             #; a5  = 3, a6  = 10
       0     3916        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3917        M 0x8000070c sub     a5, a3, a5             #; a3  = 37, a5  = 30, (wrb) a5  <-- 7
       0     3919        M 0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 296, (wrb) a5  <-- 0x00100448
                         M 0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 7
       0     3920        M                                           #; (f:fpu) ft0  <-- 7.0
       0     3921        M 0x8000071c addi    a2, a2, 8              #; a2  = 296, (wrb) a2  <-- 304
       0     3922        M 0x80000720 addi    a3, a3, 1              #; a3  = 37, (wrb) a3  <-- 38
                         M 0x80000718 fsd     ft0, 0(a5)             #; 7.0 ~~> Doub[0x00100448]
       0     3923        M 0x80000724 bne     a2, a7, pc - 36        #; a2  = 304, a7  = 800, taken, goto 0x80000700
       0     3924        M 0x80000700 mulhu   a5, a3, a4             #; a3  = 38, a4  = 0xcccccccd
       0     3927        M                                           #; (acc) a5  <-- 0x0037d793
       0     3928        M 0x80000704 srli    a5, a5, 3              #; a5  = 30, (wrb) a5  <-- 3
       0     3929        M 0x80000708 mul     a5, a5, a6             #; a5  = 3, a6  = 10
       0     3932        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3933        M 0x8000070c sub     a5, a3, a5             #; a3  = 38, a5  = 30, (wrb) a5  <-- 8
       0     3935        M 0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 304, (wrb) a5  <-- 0x00100450
                         M 0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 8
       0     3936        M                                           #; (f:fpu) ft0  <-- 8.0
       0     3937        M 0x8000071c addi    a2, a2, 8              #; a2  = 304, (wrb) a2  <-- 312
       0     3938        M 0x80000720 addi    a3, a3, 1              #; a3  = 38, (wrb) a3  <-- 39
                         M 0x80000718 fsd     ft0, 0(a5)             #; 8.0 ~~> Doub[0x00100450]
       0     3939        M 0x80000724 bne     a2, a7, pc - 36        #; a2  = 312, a7  = 800, taken, goto 0x80000700
       0     3940        M 0x80000700 mulhu   a5, a3, a4             #; a3  = 39, a4  = 0xcccccccd
       0     3943        M                                           #; (acc) a5  <-- 0x0037d793
       0     3944        M 0x80000704 srli    a5, a5, 3              #; a5  = 31, (wrb) a5  <-- 3
       0     3945        M 0x80000708 mul     a5, a5, a6             #; a5  = 3, a6  = 10
       0     3948        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3949        M 0x8000070c sub     a5, a3, a5             #; a3  = 39, a5  = 30, (wrb) a5  <-- 9
       0     3951        M 0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 312, (wrb) a5  <-- 0x00100458
                         M 0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 9
       0     3952        M                                           #; (f:fpu) ft0  <-- 9.0
       0     3953        M 0x8000071c addi    a2, a2, 8              #; a2  = 312, (wrb) a2  <-- 320
       0     3954        M 0x80000720 addi    a3, a3, 1              #; a3  = 39, (wrb) a3  <-- 40
                         M 0x80000718 fsd     ft0, 0(a5)             #; 9.0 ~~> Doub[0x00100458]
       0     3955        M 0x80000724 bne     a2, a7, pc - 36        #; a2  = 320, a7  = 800, taken, goto 0x80000700
       0     3956        M 0x80000700 mulhu   a5, a3, a4             #; a3  = 40, a4  = 0xcccccccd
       0     3959        M                                           #; (acc) a5  <-- 0x0037d793
       0     3960        M 0x80000704 srli    a5, a5, 3              #; a5  = 32, (wrb) a5  <-- 4
       0     3961        M 0x80000708 mul     a5, a5, a6             #; a5  = 4, a6  = 10
       0     3964        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3965        M 0x8000070c sub     a5, a3, a5             #; a3  = 40, a5  = 40, (wrb) a5  <-- 0
       0     3967        M 0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 320, (wrb) a5  <-- 0x00100460
                         M 0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 0
       0     3968        M                                           #; (f:fpu) ft0  <-- 0.0
       0     3969        M 0x8000071c addi    a2, a2, 8              #; a2  = 320, (wrb) a2  <-- 328
       0     3970        M 0x80000720 addi    a3, a3, 1              #; a3  = 40, (wrb) a3  <-- 41
                         M 0x80000718 fsd     ft0, 0(a5)             #; 0.0 ~~> Doub[0x00100460]
       0     3971        M 0x80000724 bne     a2, a7, pc - 36        #; a2  = 328, a7  = 800, taken, goto 0x80000700
       0     3972        M 0x80000700 mulhu   a5, a3, a4             #; a3  = 41, a4  = 0xcccccccd
       0     3975        M                                           #; (acc) a5  <-- 0x0037d793
       0     3976        M 0x80000704 srli    a5, a5, 3              #; a5  = 32, (wrb) a5  <-- 4
       0     3977        M 0x80000708 mul     a5, a5, a6             #; a5  = 4, a6  = 10
       0     3980        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3981        M 0x8000070c sub     a5, a3, a5             #; a3  = 41, a5  = 40, (wrb) a5  <-- 1
       0     3983        M 0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 328, (wrb) a5  <-- 0x00100468
                         M 0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 1
       0     3984        M                                           #; (f:fpu) ft0  <-- 1.0
       0     3985        M 0x8000071c addi    a2, a2, 8              #; a2  = 328, (wrb) a2  <-- 336
       0     3986        M 0x80000720 addi    a3, a3, 1              #; a3  = 41, (wrb) a3  <-- 42
                         M 0x80000718 fsd     ft0, 0(a5)             #; 1.0 ~~> Doub[0x00100468]
       0     3987        M 0x80000724 bne     a2, a7, pc - 36        #; a2  = 336, a7  = 800, taken, goto 0x80000700
       0     3988        M 0x80000700 mulhu   a5, a3, a4             #; a3  = 42, a4  = 0xcccccccd
       0     3991        M                                           #; (acc) a5  <-- 0x0037d793
       0     3992        M 0x80000704 srli    a5, a5, 3              #; a5  = 33, (wrb) a5  <-- 4
       0     3993        M 0x80000708 mul     a5, a5, a6             #; a5  = 4, a6  = 10
       0     3996        M                                           #; (acc) a5  <-- 0x40f687b3
       0     3997        M 0x8000070c sub     a5, a3, a5             #; a3  = 42, a5  = 40, (wrb) a5  <-- 2
       0     3999        M 0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 336, (wrb) a5  <-- 0x00100470
                         M 0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 2
       0     4000        M                                           #; (f:fpu) ft0  <-- 2.0
       0     4001        M 0x8000071c addi    a2, a2, 8              #; a2  = 336, (wrb) a2  <-- 344
       0     4002        M 0x80000720 addi    a3, a3, 1              #; a3  = 42, (wrb) a3  <-- 43
                         M 0x80000718 fsd     ft0, 0(a5)             #; 2.0 ~~> Doub[0x00100470]
       0     4003        M 0x80000724 bne     a2, a7, pc - 36        #; a2  = 344, a7  = 800, taken, goto 0x80000700
       0     4004        M 0x80000700 mulhu   a5, a3, a4             #; a3  = 43, a4  = 0xcccccccd
       0     4007        M                                           #; (acc) a5  <-- 0x0037d793
       0     4008        M 0x80000704 srli    a5, a5, 3              #; a5  = 34, (wrb) a5  <-- 4
       0     4009        M 0x80000708 mul     a5, a5, a6             #; a5  = 4, a6  = 10
       0     4012        M                                           #; (acc) a5  <-- 0x40f687b3
       0     4013        M 0x8000070c sub     a5, a3, a5             #; a3  = 43, a5  = 40, (wrb) a5  <-- 3
       0     4015        M 0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 344, (wrb) a5  <-- 0x00100478
                         M 0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 3
       0     4016        M                                           #; (f:fpu) ft0  <-- 3.0
       0     4017        M 0x8000071c addi    a2, a2, 8              #; a2  = 344, (wrb) a2  <-- 352
       0     4018        M 0x80000720 addi    a3, a3, 1              #; a3  = 43, (wrb) a3  <-- 44
                         M 0x80000718 fsd     ft0, 0(a5)             #; 3.0 ~~> Doub[0x00100478]
       0     4019        M 0x80000724 bne     a2, a7, pc - 36        #; a2  = 352, a7  = 800, taken, goto 0x80000700
       0     4020        M 0x80000700 mulhu   a5, a3, a4             #; a3  = 44, a4  = 0xcccccccd
       0     4023        M                                           #; (acc) a5  <-- 0x0037d793
       0     4024        M 0x80000704 srli    a5, a5, 3              #; a5  = 35, (wrb) a5  <-- 4
       0     4025        M 0x80000708 mul     a5, a5, a6             #; a5  = 4, a6  = 10
       0     4028        M                                           #; (acc) a5  <-- 0x40f687b3
       0     4029        M 0x8000070c sub     a5, a3, a5             #; a3  = 44, a5  = 40, (wrb) a5  <-- 4
       0     4031        M 0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 352, (wrb) a5  <-- 0x00100480
                         M 0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 4
       0     4032        M                                           #; (f:fpu) ft0  <-- 4.0
       0     4033        M 0x8000071c addi    a2, a2, 8              #; a2  = 352, (wrb) a2  <-- 360
       0     4034        M 0x80000720 addi    a3, a3, 1              #; a3  = 44, (wrb) a3  <-- 45
                         M 0x80000718 fsd     ft0, 0(a5)             #; 4.0 ~~> Doub[0x00100480]
       0     4035        M 0x80000724 bne     a2, a7, pc - 36        #; a2  = 360, a7  = 800, taken, goto 0x80000700
       0     4036        M 0x80000700 mulhu   a5, a3, a4             #; a3  = 45, a4  = 0xcccccccd
       0     4039        M                                           #; (acc) a5  <-- 0x0037d793
       0     4040        M 0x80000704 srli    a5, a5, 3              #; a5  = 36, (wrb) a5  <-- 4
       0     4041        M 0x80000708 mul     a5, a5, a6             #; a5  = 4, a6  = 10
       0     4044        M                                           #; (acc) a5  <-- 0x40f687b3
       0     4045        M 0x8000070c sub     a5, a3, a5             #; a3  = 45, a5  = 40, (wrb) a5  <-- 5
       0     4047        M 0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 360, (wrb) a5  <-- 0x00100488
                         M 0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 5
       0     4048        M                                           #; (f:fpu) ft0  <-- 5.0
       0     4049        M 0x8000071c addi    a2, a2, 8              #; a2  = 360, (wrb) a2  <-- 368
       0     4050        M 0x80000720 addi    a3, a3, 1              #; a3  = 45, (wrb) a3  <-- 46
                         M 0x80000718 fsd     ft0, 0(a5)             #; 5.0 ~~> Doub[0x00100488]
       0     4051        M 0x80000724 bne     a2, a7, pc - 36        #; a2  = 368, a7  = 800, taken, goto 0x80000700
       0     4052        M 0x80000700 mulhu   a5, a3, a4             #; a3  = 46, a4  = 0xcccccccd
       0     4055        M                                           #; (acc) a5  <-- 0x0037d793
       0     4056        M 0x80000704 srli    a5, a5, 3              #; a5  = 36, (wrb) a5  <-- 4
       0     4057        M 0x80000708 mul     a5, a5, a6             #; a5  = 4, a6  = 10
       0     4060        M                                           #; (acc) a5  <-- 0x40f687b3
       0     4061        M 0x8000070c sub     a5, a3, a5             #; a3  = 46, a5  = 40, (wrb) a5  <-- 6
       0     4063        M 0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 368, (wrb) a5  <-- 0x00100490
                         M 0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 6
       0     4064        M                                           #; (f:fpu) ft0  <-- 6.0
       0     4065        M 0x8000071c addi    a2, a2, 8              #; a2  = 368, (wrb) a2  <-- 376
       0     4066        M 0x80000720 addi    a3, a3, 1              #; a3  = 46, (wrb) a3  <-- 47
                         M 0x80000718 fsd     ft0, 0(a5)             #; 6.0 ~~> Doub[0x00100490]
       0     4067        M 0x80000724 bne     a2, a7, pc - 36        #; a2  = 376, a7  = 800, taken, goto 0x80000700
       0     4068        M 0x80000700 mulhu   a5, a3, a4             #; a3  = 47, a4  = 0xcccccccd
       0     4071        M                                           #; (acc) a5  <-- 0x0037d793
       0     4072        M 0x80000704 srli    a5, a5, 3              #; a5  = 37, (wrb) a5  <-- 4
       0     4073        M 0x80000708 mul     a5, a5, a6             #; a5  = 4, a6  = 10
       0     4076        M                                           #; (acc) a5  <-- 0x40f687b3
       0     4077        M 0x8000070c sub     a5, a3, a5             #; a3  = 47, a5  = 40, (wrb) a5  <-- 7
       0     4079        M 0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 376, (wrb) a5  <-- 0x00100498
                         M 0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 7
       0     4080        M                                           #; (f:fpu) ft0  <-- 7.0
       0     4081        M 0x8000071c addi    a2, a2, 8              #; a2  = 376, (wrb) a2  <-- 384
       0     4082        M 0x80000720 addi    a3, a3, 1              #; a3  = 47, (wrb) a3  <-- 48
                         M 0x80000718 fsd     ft0, 0(a5)             #; 7.0 ~~> Doub[0x00100498]
       0     4083        M 0x80000724 bne     a2, a7, pc - 36        #; a2  = 384, a7  = 800, taken, goto 0x80000700
       0     4084        M 0x80000700 mulhu   a5, a3, a4             #; a3  = 48, a4  = 0xcccccccd
       0     4087        M                                           #; (acc) a5  <-- 0x0037d793
       0     4088        M 0x80000704 srli    a5, a5, 3              #; a5  = 38, (wrb) a5  <-- 4
       0     4089        M 0x80000708 mul     a5, a5, a6             #; a5  = 4, a6  = 10
       0     4092        M                                           #; (acc) a5  <-- 0x40f687b3
       0     4093        M 0x8000070c sub     a5, a3, a5             #; a3  = 48, a5  = 40, (wrb) a5  <-- 8
       0     4095        M 0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 384, (wrb) a5  <-- 0x001004a0
                         M 0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 8
       0     4096        M                                           #; (f:fpu) ft0  <-- 8.0
       0     4097        M 0x8000071c addi    a2, a2, 8              #; a2  = 384, (wrb) a2  <-- 392
       0     4098        M 0x80000720 addi    a3, a3, 1              #; a3  = 48, (wrb) a3  <-- 49
                         M 0x80000718 fsd     ft0, 0(a5)             #; 8.0 ~~> Doub[0x001004a0]
       0     4099        M 0x80000724 bne     a2, a7, pc - 36        #; a2  = 392, a7  = 800, taken, goto 0x80000700
       0     4100        M 0x80000700 mulhu   a5, a3, a4             #; a3  = 49, a4  = 0xcccccccd
       0     4103        M                                           #; (acc) a5  <-- 0x0037d793
       0     4104        M 0x80000704 srli    a5, a5, 3              #; a5  = 39, (wrb) a5  <-- 4
       0     4105        M 0x80000708 mul     a5, a5, a6             #; a5  = 4, a6  = 10
       0     4108        M                                           #; (acc) a5  <-- 0x40f687b3
       0     4109        M 0x8000070c sub     a5, a3, a5             #; a3  = 49, a5  = 40, (wrb) a5  <-- 9
       0     4111        M 0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 392, (wrb) a5  <-- 0x001004a8
                         M 0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 9
       0     4112        M                                           #; (f:fpu) ft0  <-- 9.0
       0     4113        M 0x8000071c addi    a2, a2, 8              #; a2  = 392, (wrb) a2  <-- 400
       0     4114        M 0x80000720 addi    a3, a3, 1              #; a3  = 49, (wrb) a3  <-- 50
                         M 0x80000718 fsd     ft0, 0(a5)             #; 9.0 ~~> Doub[0x001004a8]
       0     4115        M 0x80000724 bne     a2, a7, pc - 36        #; a2  = 400, a7  = 800, taken, goto 0x80000700
       0     4116        M 0x80000700 mulhu   a5, a3, a4             #; a3  = 50, a4  = 0xcccccccd
       0     4119        M                                           #; (acc) a5  <-- 0x0037d793
       0     4120        M 0x80000704 srli    a5, a5, 3              #; a5  = 40, (wrb) a5  <-- 5
       0     4121        M 0x80000708 mul     a5, a5, a6             #; a5  = 5, a6  = 10
       0     4124        M                                           #; (acc) a5  <-- 0x40f687b3
       0     4125        M 0x8000070c sub     a5, a3, a5             #; a3  = 50, a5  = 50, (wrb) a5  <-- 0
       0     4127        M 0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 400, (wrb) a5  <-- 0x001004b0
                         M 0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 0
       0     4128        M                                           #; (f:fpu) ft0  <-- 0.0
       0     4129        M 0x8000071c addi    a2, a2, 8              #; a2  = 400, (wrb) a2  <-- 408
       0     4130        M 0x80000720 addi    a3, a3, 1              #; a3  = 50, (wrb) a3  <-- 51
                         M 0x80000718 fsd     ft0, 0(a5)             #; 0.0 ~~> Doub[0x001004b0]
       0     4131        M 0x80000724 bne     a2, a7, pc - 36        #; a2  = 408, a7  = 800, taken, goto 0x80000700
       0     4132        M 0x80000700 mulhu   a5, a3, a4             #; a3  = 51, a4  = 0xcccccccd
       0     4135        M                                           #; (acc) a5  <-- 0x0037d793
       0     4136        M 0x80000704 srli    a5, a5, 3              #; a5  = 40, (wrb) a5  <-- 5
       0     4137        M 0x80000708 mul     a5, a5, a6             #; a5  = 5, a6  = 10
       0     4140        M                                           #; (acc) a5  <-- 0x40f687b3
       0     4141        M 0x8000070c sub     a5, a3, a5             #; a3  = 51, a5  = 50, (wrb) a5  <-- 1
       0     4143        M 0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 408, (wrb) a5  <-- 0x001004b8
                         M 0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 1
       0     4144        M                                           #; (f:fpu) ft0  <-- 1.0
       0     4145        M 0x8000071c addi    a2, a2, 8              #; a2  = 408, (wrb) a2  <-- 416
       0     4146        M 0x80000720 addi    a3, a3, 1              #; a3  = 51, (wrb) a3  <-- 52
                         M 0x80000718 fsd     ft0, 0(a5)             #; 1.0 ~~> Doub[0x001004b8]
       0     4147        M 0x80000724 bne     a2, a7, pc - 36        #; a2  = 416, a7  = 800, taken, goto 0x80000700
       0     4148        M 0x80000700 mulhu   a5, a3, a4             #; a3  = 52, a4  = 0xcccccccd
       0     4151        M                                           #; (acc) a5  <-- 0x0037d793
       0     4152        M 0x80000704 srli    a5, a5, 3              #; a5  = 41, (wrb) a5  <-- 5
       0     4153        M 0x80000708 mul     a5, a5, a6             #; a5  = 5, a6  = 10
       0     4156        M                                           #; (acc) a5  <-- 0x40f687b3
       0     4157        M 0x8000070c sub     a5, a3, a5             #; a3  = 52, a5  = 50, (wrb) a5  <-- 2
       0     4159        M 0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 416, (wrb) a5  <-- 0x001004c0
                         M 0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 2
       0     4160        M                                           #; (f:fpu) ft0  <-- 2.0
       0     4161        M 0x8000071c addi    a2, a2, 8              #; a2  = 416, (wrb) a2  <-- 424
       0     4162        M 0x80000720 addi    a3, a3, 1              #; a3  = 52, (wrb) a3  <-- 53
                         M 0x80000718 fsd     ft0, 0(a5)             #; 2.0 ~~> Doub[0x001004c0]
       0     4163        M 0x80000724 bne     a2, a7, pc - 36        #; a2  = 424, a7  = 800, taken, goto 0x80000700
       0     4164        M 0x80000700 mulhu   a5, a3, a4             #; a3  = 53, a4  = 0xcccccccd
       0     4167        M                                           #; (acc) a5  <-- 0x0037d793
       0     4168        M 0x80000704 srli    a5, a5, 3              #; a5  = 42, (wrb) a5  <-- 5
       0     4169        M 0x80000708 mul     a5, a5, a6             #; a5  = 5, a6  = 10
       0     4172        M                                           #; (acc) a5  <-- 0x40f687b3
       0     4173        M 0x8000070c sub     a5, a3, a5             #; a3  = 53, a5  = 50, (wrb) a5  <-- 3
       0     4175        M 0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 424, (wrb) a5  <-- 0x001004c8
                         M 0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 3
       0     4176        M                                           #; (f:fpu) ft0  <-- 3.0
       0     4177        M 0x8000071c addi    a2, a2, 8              #; a2  = 424, (wrb) a2  <-- 432
       0     4178        M 0x80000720 addi    a3, a3, 1              #; a3  = 53, (wrb) a3  <-- 54
                         M 0x80000718 fsd     ft0, 0(a5)             #; 3.0 ~~> Doub[0x001004c8]
       0     4179        M 0x80000724 bne     a2, a7, pc - 36        #; a2  = 432, a7  = 800, taken, goto 0x80000700
       0     4180        M 0x80000700 mulhu   a5, a3, a4             #; a3  = 54, a4  = 0xcccccccd
       0     4183        M                                           #; (acc) a5  <-- 0x0037d793
       0     4184        M 0x80000704 srli    a5, a5, 3              #; a5  = 43, (wrb) a5  <-- 5
       0     4185        M 0x80000708 mul     a5, a5, a6             #; a5  = 5, a6  = 10
       0     4188        M                                           #; (acc) a5  <-- 0x40f687b3
       0     4189        M 0x8000070c sub     a5, a3, a5             #; a3  = 54, a5  = 50, (wrb) a5  <-- 4
       0     4191        M 0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 432, (wrb) a5  <-- 0x001004d0
                         M 0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 4
       0     4192        M                                           #; (f:fpu) ft0  <-- 4.0
       0     4193        M 0x8000071c addi    a2, a2, 8              #; a2  = 432, (wrb) a2  <-- 440
       0     4194        M 0x80000720 addi    a3, a3, 1              #; a3  = 54, (wrb) a3  <-- 55
                         M 0x80000718 fsd     ft0, 0(a5)             #; 4.0 ~~> Doub[0x001004d0]
       0     4195        M 0x80000724 bne     a2, a7, pc - 36        #; a2  = 440, a7  = 800, taken, goto 0x80000700
       0     4196        M 0x80000700 mulhu   a5, a3, a4             #; a3  = 55, a4  = 0xcccccccd
       0     4199        M                                           #; (acc) a5  <-- 0x0037d793
       0     4200        M 0x80000704 srli    a5, a5, 3              #; a5  = 44, (wrb) a5  <-- 5
       0     4201        M 0x80000708 mul     a5, a5, a6             #; a5  = 5, a6  = 10
       0     4204        M                                           #; (acc) a5  <-- 0x40f687b3
       0     4205        M 0x8000070c sub     a5, a3, a5             #; a3  = 55, a5  = 50, (wrb) a5  <-- 5
       0     4207        M 0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 440, (wrb) a5  <-- 0x001004d8
                         M 0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 5
       0     4208        M                                           #; (f:fpu) ft0  <-- 5.0
       0     4209        M 0x8000071c addi    a2, a2, 8              #; a2  = 440, (wrb) a2  <-- 448
       0     4210        M 0x80000720 addi    a3, a3, 1              #; a3  = 55, (wrb) a3  <-- 56
                         M 0x80000718 fsd     ft0, 0(a5)             #; 5.0 ~~> Doub[0x001004d8]
       0     4211        M 0x80000724 bne     a2, a7, pc - 36        #; a2  = 448, a7  = 800, taken, goto 0x80000700
       0     4212        M 0x80000700 mulhu   a5, a3, a4             #; a3  = 56, a4  = 0xcccccccd
       0     4215        M                                           #; (acc) a5  <-- 0x0037d793
       0     4216        M 0x80000704 srli    a5, a5, 3              #; a5  = 44, (wrb) a5  <-- 5
       0     4217        M 0x80000708 mul     a5, a5, a6             #; a5  = 5, a6  = 10
       0     4220        M                                           #; (acc) a5  <-- 0x40f687b3
       0     4221        M 0x8000070c sub     a5, a3, a5             #; a3  = 56, a5  = 50, (wrb) a5  <-- 6
       0     4223        M 0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 448, (wrb) a5  <-- 0x001004e0
                         M 0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 6
       0     4224        M                                           #; (f:fpu) ft0  <-- 6.0
       0     4225        M 0x8000071c addi    a2, a2, 8              #; a2  = 448, (wrb) a2  <-- 456
       0     4226        M 0x80000720 addi    a3, a3, 1              #; a3  = 56, (wrb) a3  <-- 57
                         M 0x80000718 fsd     ft0, 0(a5)             #; 6.0 ~~> Doub[0x001004e0]
       0     4227        M 0x80000724 bne     a2, a7, pc - 36        #; a2  = 456, a7  = 800, taken, goto 0x80000700
       0     4228        M 0x80000700 mulhu   a5, a3, a4             #; a3  = 57, a4  = 0xcccccccd
       0     4231        M                                           #; (acc) a5  <-- 0x0037d793
       0     4232        M 0x80000704 srli    a5, a5, 3              #; a5  = 45, (wrb) a5  <-- 5
       0     4233        M 0x80000708 mul     a5, a5, a6             #; a5  = 5, a6  = 10
       0     4236        M                                           #; (acc) a5  <-- 0x40f687b3
       0     4237        M 0x8000070c sub     a5, a3, a5             #; a3  = 57, a5  = 50, (wrb) a5  <-- 7
       0     4239        M 0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 456, (wrb) a5  <-- 0x001004e8
                         M 0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 7
       0     4240        M                                           #; (f:fpu) ft0  <-- 7.0
       0     4241        M 0x8000071c addi    a2, a2, 8              #; a2  = 456, (wrb) a2  <-- 464
       0     4242        M 0x80000720 addi    a3, a3, 1              #; a3  = 57, (wrb) a3  <-- 58
                         M 0x80000718 fsd     ft0, 0(a5)             #; 7.0 ~~> Doub[0x001004e8]
       0     4243        M 0x80000724 bne     a2, a7, pc - 36        #; a2  = 464, a7  = 800, taken, goto 0x80000700
       0     4244        M 0x80000700 mulhu   a5, a3, a4             #; a3  = 58, a4  = 0xcccccccd
       0     4247        M                                           #; (acc) a5  <-- 0x0037d793
       0     4248        M 0x80000704 srli    a5, a5, 3              #; a5  = 46, (wrb) a5  <-- 5
       0     4249        M 0x80000708 mul     a5, a5, a6             #; a5  = 5, a6  = 10
       0     4252        M                                           #; (acc) a5  <-- 0x40f687b3
       0     4253        M 0x8000070c sub     a5, a3, a5             #; a3  = 58, a5  = 50, (wrb) a5  <-- 8
       0     4255        M 0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 464, (wrb) a5  <-- 0x001004f0
                         M 0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 8
       0     4256        M                                           #; (f:fpu) ft0  <-- 8.0
       0     4257        M 0x8000071c addi    a2, a2, 8              #; a2  = 464, (wrb) a2  <-- 472
       0     4258        M 0x80000720 addi    a3, a3, 1              #; a3  = 58, (wrb) a3  <-- 59
                         M 0x80000718 fsd     ft0, 0(a5)             #; 8.0 ~~> Doub[0x001004f0]
       0     4259        M 0x80000724 bne     a2, a7, pc - 36        #; a2  = 472, a7  = 800, taken, goto 0x80000700
       0     4260        M 0x80000700 mulhu   a5, a3, a4             #; a3  = 59, a4  = 0xcccccccd
       0     4263        M                                           #; (acc) a5  <-- 0x0037d793
       0     4264        M 0x80000704 srli    a5, a5, 3              #; a5  = 47, (wrb) a5  <-- 5
       0     4265        M 0x80000708 mul     a5, a5, a6             #; a5  = 5, a6  = 10
       0     4268        M                                           #; (acc) a5  <-- 0x40f687b3
       0     4269        M 0x8000070c sub     a5, a3, a5             #; a3  = 59, a5  = 50, (wrb) a5  <-- 9
       0     4271        M 0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 472, (wrb) a5  <-- 0x001004f8
                         M 0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 9
       0     4272        M                                           #; (f:fpu) ft0  <-- 9.0
       0     4273        M 0x8000071c addi    a2, a2, 8              #; a2  = 472, (wrb) a2  <-- 480
       0     4274        M 0x80000720 addi    a3, a3, 1              #; a3  = 59, (wrb) a3  <-- 60
                         M 0x80000718 fsd     ft0, 0(a5)             #; 9.0 ~~> Doub[0x001004f8]
       0     4275        M 0x80000724 bne     a2, a7, pc - 36        #; a2  = 480, a7  = 800, taken, goto 0x80000700
       0     4276        M 0x80000700 mulhu   a5, a3, a4             #; a3  = 60, a4  = 0xcccccccd
       0     4279        M                                           #; (acc) a5  <-- 0x0037d793
       0     4280        M 0x80000704 srli    a5, a5, 3              #; a5  = 48, (wrb) a5  <-- 6
       0     4281        M 0x80000708 mul     a5, a5, a6             #; a5  = 6, a6  = 10
       0     4284        M                                           #; (acc) a5  <-- 0x40f687b3
       0     4285        M 0x8000070c sub     a5, a3, a5             #; a3  = 60, a5  = 60, (wrb) a5  <-- 0
       0     4287        M 0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 480, (wrb) a5  <-- 0x00100500
                         M 0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 0
       0     4288        M                                           #; (f:fpu) ft0  <-- 0.0
       0     4289        M 0x8000071c addi    a2, a2, 8              #; a2  = 480, (wrb) a2  <-- 488
       0     4290        M 0x80000720 addi    a3, a3, 1              #; a3  = 60, (wrb) a3  <-- 61
                         M 0x80000718 fsd     ft0, 0(a5)             #; 0.0 ~~> Doub[0x00100500]
       0     4291        M 0x80000724 bne     a2, a7, pc - 36        #; a2  = 488, a7  = 800, taken, goto 0x80000700
       0     4292        M 0x80000700 mulhu   a5, a3, a4             #; a3  = 61, a4  = 0xcccccccd
       0     4295        M                                           #; (acc) a5  <-- 0x0037d793
       0     4296        M 0x80000704 srli    a5, a5, 3              #; a5  = 48, (wrb) a5  <-- 6
       0     4297        M 0x80000708 mul     a5, a5, a6             #; a5  = 6, a6  = 10
       0     4300        M                                           #; (acc) a5  <-- 0x40f687b3
       0     4301        M 0x8000070c sub     a5, a3, a5             #; a3  = 61, a5  = 60, (wrb) a5  <-- 1
       0     4303        M 0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 488, (wrb) a5  <-- 0x00100508
                         M 0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 1
       0     4304        M                                           #; (f:fpu) ft0  <-- 1.0
       0     4305        M 0x8000071c addi    a2, a2, 8              #; a2  = 488, (wrb) a2  <-- 496
       0     4306        M 0x80000720 addi    a3, a3, 1              #; a3  = 61, (wrb) a3  <-- 62
                         M 0x80000718 fsd     ft0, 0(a5)             #; 1.0 ~~> Doub[0x00100508]
       0     4307        M 0x80000724 bne     a2, a7, pc - 36        #; a2  = 496, a7  = 800, taken, goto 0x80000700
       0     4308        M 0x80000700 mulhu   a5, a3, a4             #; a3  = 62, a4  = 0xcccccccd
       0     4311        M                                           #; (acc) a5  <-- 0x0037d793
       0     4312        M 0x80000704 srli    a5, a5, 3              #; a5  = 49, (wrb) a5  <-- 6
       0     4313        M 0x80000708 mul     a5, a5, a6             #; a5  = 6, a6  = 10
       0     4316        M                                           #; (acc) a5  <-- 0x40f687b3
       0     4317        M 0x8000070c sub     a5, a3, a5             #; a3  = 62, a5  = 60, (wrb) a5  <-- 2
       0     4319        M 0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 496, (wrb) a5  <-- 0x00100510
                         M 0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 2
       0     4320        M                                           #; (f:fpu) ft0  <-- 2.0
       0     4321        M 0x8000071c addi    a2, a2, 8              #; a2  = 496, (wrb) a2  <-- 504
       0     4322        M 0x80000720 addi    a3, a3, 1              #; a3  = 62, (wrb) a3  <-- 63
                         M 0x80000718 fsd     ft0, 0(a5)             #; 2.0 ~~> Doub[0x00100510]
       0     4323        M 0x80000724 bne     a2, a7, pc - 36        #; a2  = 504, a7  = 800, taken, goto 0x80000700
       0     4324        M 0x80000700 mulhu   a5, a3, a4             #; a3  = 63, a4  = 0xcccccccd
       0     4327        M                                           #; (acc) a5  <-- 0x0037d793
       0     4328        M 0x80000704 srli    a5, a5, 3              #; a5  = 50, (wrb) a5  <-- 6
       0     4329        M 0x80000708 mul     a5, a5, a6             #; a5  = 6, a6  = 10
       0     4332        M                                           #; (acc) a5  <-- 0x40f687b3
       0     4333        M 0x8000070c sub     a5, a3, a5             #; a3  = 63, a5  = 60, (wrb) a5  <-- 3
       0     4335        M 0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 504, (wrb) a5  <-- 0x00100518
                         M 0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 3
       0     4336        M                                           #; (f:fpu) ft0  <-- 3.0
       0     4337        M 0x8000071c addi    a2, a2, 8              #; a2  = 504, (wrb) a2  <-- 512
       0     4338        M 0x80000720 addi    a3, a3, 1              #; a3  = 63, (wrb) a3  <-- 64
                         M 0x80000718 fsd     ft0, 0(a5)             #; 3.0 ~~> Doub[0x00100518]
       0     4339        M 0x80000724 bne     a2, a7, pc - 36        #; a2  = 512, a7  = 800, taken, goto 0x80000700
       0     4340        M 0x80000700 mulhu   a5, a3, a4             #; a3  = 64, a4  = 0xcccccccd
       0     4343        M                                           #; (acc) a5  <-- 0x0037d793
       0     4344        M 0x80000704 srli    a5, a5, 3              #; a5  = 51, (wrb) a5  <-- 6
       0     4345        M 0x80000708 mul     a5, a5, a6             #; a5  = 6, a6  = 10
       0     4348        M                                           #; (acc) a5  <-- 0x40f687b3
       0     4349        M 0x8000070c sub     a5, a3, a5             #; a3  = 64, a5  = 60, (wrb) a5  <-- 4
       0     4351        M 0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 512, (wrb) a5  <-- 0x00100520
                         M 0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 4
       0     4352        M                                           #; (f:fpu) ft0  <-- 4.0
       0     4353        M 0x8000071c addi    a2, a2, 8              #; a2  = 512, (wrb) a2  <-- 520
       0     4354        M 0x80000720 addi    a3, a3, 1              #; a3  = 64, (wrb) a3  <-- 65
                         M 0x80000718 fsd     ft0, 0(a5)             #; 4.0 ~~> Doub[0x00100520]
       0     4355        M 0x80000724 bne     a2, a7, pc - 36        #; a2  = 520, a7  = 800, taken, goto 0x80000700
       0     4356        M 0x80000700 mulhu   a5, a3, a4             #; a3  = 65, a4  = 0xcccccccd
       0     4359        M                                           #; (acc) a5  <-- 0x0037d793
       0     4360        M 0x80000704 srli    a5, a5, 3              #; a5  = 52, (wrb) a5  <-- 6
       0     4361        M 0x80000708 mul     a5, a5, a6             #; a5  = 6, a6  = 10
       0     4364        M                                           #; (acc) a5  <-- 0x40f687b3
       0     4365        M 0x8000070c sub     a5, a3, a5             #; a3  = 65, a5  = 60, (wrb) a5  <-- 5
       0     4367        M 0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 520, (wrb) a5  <-- 0x00100528
                         M 0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 5
       0     4368        M                                           #; (f:fpu) ft0  <-- 5.0
       0     4369        M 0x8000071c addi    a2, a2, 8              #; a2  = 520, (wrb) a2  <-- 528
       0     4370        M 0x80000720 addi    a3, a3, 1              #; a3  = 65, (wrb) a3  <-- 66
                         M 0x80000718 fsd     ft0, 0(a5)             #; 5.0 ~~> Doub[0x00100528]
       0     4371        M 0x80000724 bne     a2, a7, pc - 36        #; a2  = 528, a7  = 800, taken, goto 0x80000700
       0     4372        M 0x80000700 mulhu   a5, a3, a4             #; a3  = 66, a4  = 0xcccccccd
       0     4375        M                                           #; (acc) a5  <-- 0x0037d793
       0     4376        M 0x80000704 srli    a5, a5, 3              #; a5  = 52, (wrb) a5  <-- 6
       0     4377        M 0x80000708 mul     a5, a5, a6             #; a5  = 6, a6  = 10
       0     4380        M                                           #; (acc) a5  <-- 0x40f687b3
       0     4381        M 0x8000070c sub     a5, a3, a5             #; a3  = 66, a5  = 60, (wrb) a5  <-- 6
       0     4383        M 0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 528, (wrb) a5  <-- 0x00100530
                         M 0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 6
       0     4384        M                                           #; (f:fpu) ft0  <-- 6.0
       0     4385        M 0x8000071c addi    a2, a2, 8              #; a2  = 528, (wrb) a2  <-- 536
       0     4386        M 0x80000720 addi    a3, a3, 1              #; a3  = 66, (wrb) a3  <-- 67
                         M 0x80000718 fsd     ft0, 0(a5)             #; 6.0 ~~> Doub[0x00100530]
       0     4387        M 0x80000724 bne     a2, a7, pc - 36        #; a2  = 536, a7  = 800, taken, goto 0x80000700
       0     4388        M 0x80000700 mulhu   a5, a3, a4             #; a3  = 67, a4  = 0xcccccccd
       0     4391        M                                           #; (acc) a5  <-- 0x0037d793
       0     4392        M 0x80000704 srli    a5, a5, 3              #; a5  = 53, (wrb) a5  <-- 6
       0     4393        M 0x80000708 mul     a5, a5, a6             #; a5  = 6, a6  = 10
       0     4396        M                                           #; (acc) a5  <-- 0x40f687b3
       0     4397        M 0x8000070c sub     a5, a3, a5             #; a3  = 67, a5  = 60, (wrb) a5  <-- 7
       0     4399        M 0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 536, (wrb) a5  <-- 0x00100538
                         M 0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 7
       0     4400        M                                           #; (f:fpu) ft0  <-- 7.0
       0     4401        M 0x8000071c addi    a2, a2, 8              #; a2  = 536, (wrb) a2  <-- 544
       0     4402        M 0x80000720 addi    a3, a3, 1              #; a3  = 67, (wrb) a3  <-- 68
                         M 0x80000718 fsd     ft0, 0(a5)             #; 7.0 ~~> Doub[0x00100538]
       0     4403        M 0x80000724 bne     a2, a7, pc - 36        #; a2  = 544, a7  = 800, taken, goto 0x80000700
       0     4404        M 0x80000700 mulhu   a5, a3, a4             #; a3  = 68, a4  = 0xcccccccd
       0     4407        M                                           #; (acc) a5  <-- 0x0037d793
       0     4408        M 0x80000704 srli    a5, a5, 3              #; a5  = 54, (wrb) a5  <-- 6
       0     4409        M 0x80000708 mul     a5, a5, a6             #; a5  = 6, a6  = 10
       0     4412        M                                           #; (acc) a5  <-- 0x40f687b3
       0     4413        M 0x8000070c sub     a5, a3, a5             #; a3  = 68, a5  = 60, (wrb) a5  <-- 8
       0     4415        M 0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 544, (wrb) a5  <-- 0x00100540
                         M 0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 8
       0     4416        M                                           #; (f:fpu) ft0  <-- 8.0
       0     4417        M 0x8000071c addi    a2, a2, 8              #; a2  = 544, (wrb) a2  <-- 552
       0     4418        M 0x80000720 addi    a3, a3, 1              #; a3  = 68, (wrb) a3  <-- 69
                         M 0x80000718 fsd     ft0, 0(a5)             #; 8.0 ~~> Doub[0x00100540]
       0     4419        M 0x80000724 bne     a2, a7, pc - 36        #; a2  = 552, a7  = 800, taken, goto 0x80000700
       0     4420        M 0x80000700 mulhu   a5, a3, a4             #; a3  = 69, a4  = 0xcccccccd
       0     4423        M                                           #; (acc) a5  <-- 0x0037d793
       0     4424        M 0x80000704 srli    a5, a5, 3              #; a5  = 55, (wrb) a5  <-- 6
       0     4425        M 0x80000708 mul     a5, a5, a6             #; a5  = 6, a6  = 10
       0     4428        M                                           #; (acc) a5  <-- 0x40f687b3
       0     4429        M 0x8000070c sub     a5, a3, a5             #; a3  = 69, a5  = 60, (wrb) a5  <-- 9
       0     4431        M 0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 552, (wrb) a5  <-- 0x00100548
                         M 0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 9
       0     4432        M                                           #; (f:fpu) ft0  <-- 9.0
       0     4433        M 0x8000071c addi    a2, a2, 8              #; a2  = 552, (wrb) a2  <-- 560
       0     4434        M 0x80000720 addi    a3, a3, 1              #; a3  = 69, (wrb) a3  <-- 70
                         M 0x80000718 fsd     ft0, 0(a5)             #; 9.0 ~~> Doub[0x00100548]
       0     4435        M 0x80000724 bne     a2, a7, pc - 36        #; a2  = 560, a7  = 800, taken, goto 0x80000700
       0     4436        M 0x80000700 mulhu   a5, a3, a4             #; a3  = 70, a4  = 0xcccccccd
       0     4439        M                                           #; (acc) a5  <-- 0x0037d793
       0     4440        M 0x80000704 srli    a5, a5, 3              #; a5  = 56, (wrb) a5  <-- 7
       0     4441        M 0x80000708 mul     a5, a5, a6             #; a5  = 7, a6  = 10
       0     4444        M                                           #; (acc) a5  <-- 0x40f687b3
       0     4445        M 0x8000070c sub     a5, a3, a5             #; a3  = 70, a5  = 70, (wrb) a5  <-- 0
       0     4447        M 0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 560, (wrb) a5  <-- 0x00100550
                         M 0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 0
       0     4448        M                                           #; (f:fpu) ft0  <-- 0.0
       0     4449        M 0x8000071c addi    a2, a2, 8              #; a2  = 560, (wrb) a2  <-- 568
       0     4450        M 0x80000720 addi    a3, a3, 1              #; a3  = 70, (wrb) a3  <-- 71
                         M 0x80000718 fsd     ft0, 0(a5)             #; 0.0 ~~> Doub[0x00100550]
       0     4451        M 0x80000724 bne     a2, a7, pc - 36        #; a2  = 568, a7  = 800, taken, goto 0x80000700
       0     4452        M 0x80000700 mulhu   a5, a3, a4             #; a3  = 71, a4  = 0xcccccccd
       0     4455        M                                           #; (acc) a5  <-- 0x0037d793
       0     4456        M 0x80000704 srli    a5, a5, 3              #; a5  = 56, (wrb) a5  <-- 7
       0     4457        M 0x80000708 mul     a5, a5, a6             #; a5  = 7, a6  = 10
       0     4460        M                                           #; (acc) a5  <-- 0x40f687b3
       0     4461        M 0x8000070c sub     a5, a3, a5             #; a3  = 71, a5  = 70, (wrb) a5  <-- 1
       0     4463        M 0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 568, (wrb) a5  <-- 0x00100558
                         M 0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 1
       0     4464        M                                           #; (f:fpu) ft0  <-- 1.0
       0     4465        M 0x8000071c addi    a2, a2, 8              #; a2  = 568, (wrb) a2  <-- 576
       0     4466        M 0x80000720 addi    a3, a3, 1              #; a3  = 71, (wrb) a3  <-- 72
                         M 0x80000718 fsd     ft0, 0(a5)             #; 1.0 ~~> Doub[0x00100558]
       0     4467        M 0x80000724 bne     a2, a7, pc - 36        #; a2  = 576, a7  = 800, taken, goto 0x80000700
       0     4468        M 0x80000700 mulhu   a5, a3, a4             #; a3  = 72, a4  = 0xcccccccd
       0     4471        M                                           #; (acc) a5  <-- 0x0037d793
       0     4472        M 0x80000704 srli    a5, a5, 3              #; a5  = 57, (wrb) a5  <-- 7
       0     4473        M 0x80000708 mul     a5, a5, a6             #; a5  = 7, a6  = 10
       0     4476        M                                           #; (acc) a5  <-- 0x40f687b3
       0     4477        M 0x8000070c sub     a5, a3, a5             #; a3  = 72, a5  = 70, (wrb) a5  <-- 2
       0     4479        M 0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 576, (wrb) a5  <-- 0x00100560
                         M 0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 2
       0     4480        M                                           #; (f:fpu) ft0  <-- 2.0
       0     4481        M 0x8000071c addi    a2, a2, 8              #; a2  = 576, (wrb) a2  <-- 584
       0     4482        M 0x80000720 addi    a3, a3, 1              #; a3  = 72, (wrb) a3  <-- 73
                         M 0x80000718 fsd     ft0, 0(a5)             #; 2.0 ~~> Doub[0x00100560]
       0     4483        M 0x80000724 bne     a2, a7, pc - 36        #; a2  = 584, a7  = 800, taken, goto 0x80000700
       0     4484        M 0x80000700 mulhu   a5, a3, a4             #; a3  = 73, a4  = 0xcccccccd
       0     4487        M                                           #; (acc) a5  <-- 0x0037d793
       0     4488        M 0x80000704 srli    a5, a5, 3              #; a5  = 58, (wrb) a5  <-- 7
       0     4489        M 0x80000708 mul     a5, a5, a6             #; a5  = 7, a6  = 10
       0     4492        M                                           #; (acc) a5  <-- 0x40f687b3
       0     4493        M 0x8000070c sub     a5, a3, a5             #; a3  = 73, a5  = 70, (wrb) a5  <-- 3
       0     4495        M 0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 584, (wrb) a5  <-- 0x00100568
                         M 0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 3
       0     4496        M                                           #; (f:fpu) ft0  <-- 3.0
       0     4497        M 0x8000071c addi    a2, a2, 8              #; a2  = 584, (wrb) a2  <-- 592
       0     4498        M 0x80000720 addi    a3, a3, 1              #; a3  = 73, (wrb) a3  <-- 74
                         M 0x80000718 fsd     ft0, 0(a5)             #; 3.0 ~~> Doub[0x00100568]
       0     4499        M 0x80000724 bne     a2, a7, pc - 36        #; a2  = 592, a7  = 800, taken, goto 0x80000700
       0     4500        M 0x80000700 mulhu   a5, a3, a4             #; a3  = 74, a4  = 0xcccccccd
       0     4503        M                                           #; (acc) a5  <-- 0x0037d793
       0     4504        M 0x80000704 srli    a5, a5, 3              #; a5  = 59, (wrb) a5  <-- 7
       0     4505        M 0x80000708 mul     a5, a5, a6             #; a5  = 7, a6  = 10
       0     4508        M                                           #; (acc) a5  <-- 0x40f687b3
       0     4509        M 0x8000070c sub     a5, a3, a5             #; a3  = 74, a5  = 70, (wrb) a5  <-- 4
       0     4511        M 0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 592, (wrb) a5  <-- 0x00100570
                         M 0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 4
       0     4512        M                                           #; (f:fpu) ft0  <-- 4.0
       0     4513        M 0x8000071c addi    a2, a2, 8              #; a2  = 592, (wrb) a2  <-- 600
       0     4514        M 0x80000720 addi    a3, a3, 1              #; a3  = 74, (wrb) a3  <-- 75
                         M 0x80000718 fsd     ft0, 0(a5)             #; 4.0 ~~> Doub[0x00100570]
       0     4515        M 0x80000724 bne     a2, a7, pc - 36        #; a2  = 600, a7  = 800, taken, goto 0x80000700
       0     4516        M 0x80000700 mulhu   a5, a3, a4             #; a3  = 75, a4  = 0xcccccccd
       0     4519        M                                           #; (acc) a5  <-- 0x0037d793
       0     4520        M 0x80000704 srli    a5, a5, 3              #; a5  = 60, (wrb) a5  <-- 7
       0     4521        M 0x80000708 mul     a5, a5, a6             #; a5  = 7, a6  = 10
       0     4524        M                                           #; (acc) a5  <-- 0x40f687b3
       0     4525        M 0x8000070c sub     a5, a3, a5             #; a3  = 75, a5  = 70, (wrb) a5  <-- 5
       0     4527        M 0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 600, (wrb) a5  <-- 0x00100578
                         M 0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 5
       0     4528        M                                           #; (f:fpu) ft0  <-- 5.0
       0     4529        M 0x8000071c addi    a2, a2, 8              #; a2  = 600, (wrb) a2  <-- 608
       0     4530        M 0x80000720 addi    a3, a3, 1              #; a3  = 75, (wrb) a3  <-- 76
                         M 0x80000718 fsd     ft0, 0(a5)             #; 5.0 ~~> Doub[0x00100578]
       0     4531        M 0x80000724 bne     a2, a7, pc - 36        #; a2  = 608, a7  = 800, taken, goto 0x80000700
       0     4532        M 0x80000700 mulhu   a5, a3, a4             #; a3  = 76, a4  = 0xcccccccd
       0     4535        M                                           #; (acc) a5  <-- 0x0037d793
       0     4536        M 0x80000704 srli    a5, a5, 3              #; a5  = 60, (wrb) a5  <-- 7
       0     4537        M 0x80000708 mul     a5, a5, a6             #; a5  = 7, a6  = 10
       0     4540        M                                           #; (acc) a5  <-- 0x40f687b3
       0     4541        M 0x8000070c sub     a5, a3, a5             #; a3  = 76, a5  = 70, (wrb) a5  <-- 6
       0     4543        M 0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 608, (wrb) a5  <-- 0x00100580
                         M 0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 6
       0     4544        M                                           #; (f:fpu) ft0  <-- 6.0
       0     4545        M 0x8000071c addi    a2, a2, 8              #; a2  = 608, (wrb) a2  <-- 616
       0     4546        M 0x80000720 addi    a3, a3, 1              #; a3  = 76, (wrb) a3  <-- 77
                         M 0x80000718 fsd     ft0, 0(a5)             #; 6.0 ~~> Doub[0x00100580]
       0     4547        M 0x80000724 bne     a2, a7, pc - 36        #; a2  = 616, a7  = 800, taken, goto 0x80000700
       0     4548        M 0x80000700 mulhu   a5, a3, a4             #; a3  = 77, a4  = 0xcccccccd
       0     4551        M                                           #; (acc) a5  <-- 0x0037d793
       0     4552        M 0x80000704 srli    a5, a5, 3              #; a5  = 61, (wrb) a5  <-- 7
       0     4553        M 0x80000708 mul     a5, a5, a6             #; a5  = 7, a6  = 10
       0     4556        M                                           #; (acc) a5  <-- 0x40f687b3
       0     4557        M 0x8000070c sub     a5, a3, a5             #; a3  = 77, a5  = 70, (wrb) a5  <-- 7
       0     4559        M 0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 616, (wrb) a5  <-- 0x00100588
                         M 0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 7
       0     4560        M                                           #; (f:fpu) ft0  <-- 7.0
       0     4561        M 0x8000071c addi    a2, a2, 8              #; a2  = 616, (wrb) a2  <-- 624
       0     4562        M 0x80000720 addi    a3, a3, 1              #; a3  = 77, (wrb) a3  <-- 78
                         M 0x80000718 fsd     ft0, 0(a5)             #; 7.0 ~~> Doub[0x00100588]
       0     4563        M 0x80000724 bne     a2, a7, pc - 36        #; a2  = 624, a7  = 800, taken, goto 0x80000700
       0     4564        M 0x80000700 mulhu   a5, a3, a4             #; a3  = 78, a4  = 0xcccccccd
       0     4567        M                                           #; (acc) a5  <-- 0x0037d793
       0     4568        M 0x80000704 srli    a5, a5, 3              #; a5  = 62, (wrb) a5  <-- 7
       0     4569        M 0x80000708 mul     a5, a5, a6             #; a5  = 7, a6  = 10
       0     4572        M                                           #; (acc) a5  <-- 0x40f687b3
       0     4573        M 0x8000070c sub     a5, a3, a5             #; a3  = 78, a5  = 70, (wrb) a5  <-- 8
       0     4575        M 0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 624, (wrb) a5  <-- 0x00100590
                         M 0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 8
       0     4576        M                                           #; (f:fpu) ft0  <-- 8.0
       0     4577        M 0x8000071c addi    a2, a2, 8              #; a2  = 624, (wrb) a2  <-- 632
       0     4578        M 0x80000720 addi    a3, a3, 1              #; a3  = 78, (wrb) a3  <-- 79
                         M 0x80000718 fsd     ft0, 0(a5)             #; 8.0 ~~> Doub[0x00100590]
       0     4579        M 0x80000724 bne     a2, a7, pc - 36        #; a2  = 632, a7  = 800, taken, goto 0x80000700
       0     4580        M 0x80000700 mulhu   a5, a3, a4             #; a3  = 79, a4  = 0xcccccccd
       0     4583        M                                           #; (acc) a5  <-- 0x0037d793
       0     4584        M 0x80000704 srli    a5, a5, 3              #; a5  = 63, (wrb) a5  <-- 7
       0     4585        M 0x80000708 mul     a5, a5, a6             #; a5  = 7, a6  = 10
       0     4588        M                                           #; (acc) a5  <-- 0x40f687b3
       0     4589        M 0x8000070c sub     a5, a3, a5             #; a3  = 79, a5  = 70, (wrb) a5  <-- 9
       0     4591        M 0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 632, (wrb) a5  <-- 0x00100598
                         M 0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 9
       0     4592        M                                           #; (f:fpu) ft0  <-- 9.0
       0     4593        M 0x8000071c addi    a2, a2, 8              #; a2  = 632, (wrb) a2  <-- 640
       0     4594        M 0x80000720 addi    a3, a3, 1              #; a3  = 79, (wrb) a3  <-- 80
                         M 0x80000718 fsd     ft0, 0(a5)             #; 9.0 ~~> Doub[0x00100598]
       0     4595        M 0x80000724 bne     a2, a7, pc - 36        #; a2  = 640, a7  = 800, taken, goto 0x80000700
       0     4596        M 0x80000700 mulhu   a5, a3, a4             #; a3  = 80, a4  = 0xcccccccd
       0     4599        M                                           #; (acc) a5  <-- 0x0037d793
       0     4600        M 0x80000704 srli    a5, a5, 3              #; a5  = 64, (wrb) a5  <-- 8
       0     4601        M 0x80000708 mul     a5, a5, a6             #; a5  = 8, a6  = 10
       0     4604        M                                           #; (acc) a5  <-- 0x40f687b3
       0     4605        M 0x8000070c sub     a5, a3, a5             #; a3  = 80, a5  = 80, (wrb) a5  <-- 0
       0     4607        M 0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 640, (wrb) a5  <-- 0x001005a0
                         M 0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 0
       0     4608        M                                           #; (f:fpu) ft0  <-- 0.0
       0     4609        M 0x8000071c addi    a2, a2, 8              #; a2  = 640, (wrb) a2  <-- 648
       0     4610        M 0x80000720 addi    a3, a3, 1              #; a3  = 80, (wrb) a3  <-- 81
                         M 0x80000718 fsd     ft0, 0(a5)             #; 0.0 ~~> Doub[0x001005a0]
       0     4611        M 0x80000724 bne     a2, a7, pc - 36        #; a2  = 648, a7  = 800, taken, goto 0x80000700
       0     4612        M 0x80000700 mulhu   a5, a3, a4             #; a3  = 81, a4  = 0xcccccccd
       0     4615        M                                           #; (acc) a5  <-- 0x0037d793
       0     4616        M 0x80000704 srli    a5, a5, 3              #; a5  = 64, (wrb) a5  <-- 8
       0     4617        M 0x80000708 mul     a5, a5, a6             #; a5  = 8, a6  = 10
       0     4620        M                                           #; (acc) a5  <-- 0x40f687b3
       0     4621        M 0x8000070c sub     a5, a3, a5             #; a3  = 81, a5  = 80, (wrb) a5  <-- 1
       0     4623        M 0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 648, (wrb) a5  <-- 0x001005a8
                         M 0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 1
       0     4624        M                                           #; (f:fpu) ft0  <-- 1.0
       0     4625        M 0x8000071c addi    a2, a2, 8              #; a2  = 648, (wrb) a2  <-- 656
       0     4626        M 0x80000720 addi    a3, a3, 1              #; a3  = 81, (wrb) a3  <-- 82
                         M 0x80000718 fsd     ft0, 0(a5)             #; 1.0 ~~> Doub[0x001005a8]
       0     4627        M 0x80000724 bne     a2, a7, pc - 36        #; a2  = 656, a7  = 800, taken, goto 0x80000700
       0     4628        M 0x80000700 mulhu   a5, a3, a4             #; a3  = 82, a4  = 0xcccccccd
       0     4631        M                                           #; (acc) a5  <-- 0x0037d793
       0     4632        M 0x80000704 srli    a5, a5, 3              #; a5  = 65, (wrb) a5  <-- 8
       0     4633        M 0x80000708 mul     a5, a5, a6             #; a5  = 8, a6  = 10
       0     4636        M                                           #; (acc) a5  <-- 0x40f687b3
       0     4637        M 0x8000070c sub     a5, a3, a5             #; a3  = 82, a5  = 80, (wrb) a5  <-- 2
       0     4639        M 0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 656, (wrb) a5  <-- 0x001005b0
                         M 0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 2
       0     4640        M                                           #; (f:fpu) ft0  <-- 2.0
       0     4641        M 0x8000071c addi    a2, a2, 8              #; a2  = 656, (wrb) a2  <-- 664
       0     4642        M 0x80000720 addi    a3, a3, 1              #; a3  = 82, (wrb) a3  <-- 83
                         M 0x80000718 fsd     ft0, 0(a5)             #; 2.0 ~~> Doub[0x001005b0]
       0     4643        M 0x80000724 bne     a2, a7, pc - 36        #; a2  = 664, a7  = 800, taken, goto 0x80000700
       0     4644        M 0x80000700 mulhu   a5, a3, a4             #; a3  = 83, a4  = 0xcccccccd
       0     4647        M                                           #; (acc) a5  <-- 0x0037d793
       0     4648        M 0x80000704 srli    a5, a5, 3              #; a5  = 66, (wrb) a5  <-- 8
       0     4649        M 0x80000708 mul     a5, a5, a6             #; a5  = 8, a6  = 10
       0     4652        M                                           #; (acc) a5  <-- 0x40f687b3
       0     4653        M 0x8000070c sub     a5, a3, a5             #; a3  = 83, a5  = 80, (wrb) a5  <-- 3
       0     4655        M 0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 664, (wrb) a5  <-- 0x001005b8
                         M 0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 3
       0     4656        M                                           #; (f:fpu) ft0  <-- 3.0
       0     4657        M 0x8000071c addi    a2, a2, 8              #; a2  = 664, (wrb) a2  <-- 672
       0     4658        M 0x80000720 addi    a3, a3, 1              #; a3  = 83, (wrb) a3  <-- 84
                         M 0x80000718 fsd     ft0, 0(a5)             #; 3.0 ~~> Doub[0x001005b8]
       0     4659        M 0x80000724 bne     a2, a7, pc - 36        #; a2  = 672, a7  = 800, taken, goto 0x80000700
       0     4660        M 0x80000700 mulhu   a5, a3, a4             #; a3  = 84, a4  = 0xcccccccd
       0     4663        M                                           #; (acc) a5  <-- 0x0037d793
       0     4664        M 0x80000704 srli    a5, a5, 3              #; a5  = 67, (wrb) a5  <-- 8
       0     4665        M 0x80000708 mul     a5, a5, a6             #; a5  = 8, a6  = 10
       0     4668        M                                           #; (acc) a5  <-- 0x40f687b3
       0     4669        M 0x8000070c sub     a5, a3, a5             #; a3  = 84, a5  = 80, (wrb) a5  <-- 4
       0     4671        M 0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 672, (wrb) a5  <-- 0x001005c0
                         M 0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 4
       0     4672        M                                           #; (f:fpu) ft0  <-- 4.0
       0     4673        M 0x8000071c addi    a2, a2, 8              #; a2  = 672, (wrb) a2  <-- 680
       0     4674        M 0x80000720 addi    a3, a3, 1              #; a3  = 84, (wrb) a3  <-- 85
                         M 0x80000718 fsd     ft0, 0(a5)             #; 4.0 ~~> Doub[0x001005c0]
       0     4675        M 0x80000724 bne     a2, a7, pc - 36        #; a2  = 680, a7  = 800, taken, goto 0x80000700
       0     4676        M 0x80000700 mulhu   a5, a3, a4             #; a3  = 85, a4  = 0xcccccccd
       0     4679        M                                           #; (acc) a5  <-- 0x0037d793
       0     4680        M 0x80000704 srli    a5, a5, 3              #; a5  = 68, (wrb) a5  <-- 8
       0     4681        M 0x80000708 mul     a5, a5, a6             #; a5  = 8, a6  = 10
       0     4684        M                                           #; (acc) a5  <-- 0x40f687b3
       0     4685        M 0x8000070c sub     a5, a3, a5             #; a3  = 85, a5  = 80, (wrb) a5  <-- 5
       0     4687        M 0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 680, (wrb) a5  <-- 0x001005c8
                         M 0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 5
       0     4688        M                                           #; (f:fpu) ft0  <-- 5.0
       0     4689        M 0x8000071c addi    a2, a2, 8              #; a2  = 680, (wrb) a2  <-- 688
       0     4690        M 0x80000720 addi    a3, a3, 1              #; a3  = 85, (wrb) a3  <-- 86
                         M 0x80000718 fsd     ft0, 0(a5)             #; 5.0 ~~> Doub[0x001005c8]
       0     4691        M 0x80000724 bne     a2, a7, pc - 36        #; a2  = 688, a7  = 800, taken, goto 0x80000700
       0     4692        M 0x80000700 mulhu   a5, a3, a4             #; a3  = 86, a4  = 0xcccccccd
       0     4695        M                                           #; (acc) a5  <-- 0x0037d793
       0     4696        M 0x80000704 srli    a5, a5, 3              #; a5  = 68, (wrb) a5  <-- 8
       0     4697        M 0x80000708 mul     a5, a5, a6             #; a5  = 8, a6  = 10
       0     4700        M                                           #; (acc) a5  <-- 0x40f687b3
       0     4701        M 0x8000070c sub     a5, a3, a5             #; a3  = 86, a5  = 80, (wrb) a5  <-- 6
       0     4703        M 0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 688, (wrb) a5  <-- 0x001005d0
                         M 0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 6
       0     4704        M                                           #; (f:fpu) ft0  <-- 6.0
       0     4705        M 0x8000071c addi    a2, a2, 8              #; a2  = 688, (wrb) a2  <-- 696
       0     4706        M 0x80000720 addi    a3, a3, 1              #; a3  = 86, (wrb) a3  <-- 87
                         M 0x80000718 fsd     ft0, 0(a5)             #; 6.0 ~~> Doub[0x001005d0]
       0     4707        M 0x80000724 bne     a2, a7, pc - 36        #; a2  = 696, a7  = 800, taken, goto 0x80000700
       0     4708        M 0x80000700 mulhu   a5, a3, a4             #; a3  = 87, a4  = 0xcccccccd
       0     4711        M                                           #; (acc) a5  <-- 0x0037d793
       0     4712        M 0x80000704 srli    a5, a5, 3              #; a5  = 69, (wrb) a5  <-- 8
       0     4713        M 0x80000708 mul     a5, a5, a6             #; a5  = 8, a6  = 10
       0     4716        M                                           #; (acc) a5  <-- 0x40f687b3
       0     4717        M 0x8000070c sub     a5, a3, a5             #; a3  = 87, a5  = 80, (wrb) a5  <-- 7
       0     4719        M 0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 696, (wrb) a5  <-- 0x001005d8
                         M 0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 7
       0     4720        M                                           #; (f:fpu) ft0  <-- 7.0
       0     4721        M 0x8000071c addi    a2, a2, 8              #; a2  = 696, (wrb) a2  <-- 704
       0     4722        M 0x80000720 addi    a3, a3, 1              #; a3  = 87, (wrb) a3  <-- 88
                         M 0x80000718 fsd     ft0, 0(a5)             #; 7.0 ~~> Doub[0x001005d8]
       0     4723        M 0x80000724 bne     a2, a7, pc - 36        #; a2  = 704, a7  = 800, taken, goto 0x80000700
       0     4724        M 0x80000700 mulhu   a5, a3, a4             #; a3  = 88, a4  = 0xcccccccd
       0     4727        M                                           #; (acc) a5  <-- 0x0037d793
       0     4728        M 0x80000704 srli    a5, a5, 3              #; a5  = 70, (wrb) a5  <-- 8
       0     4729        M 0x80000708 mul     a5, a5, a6             #; a5  = 8, a6  = 10
       0     4732        M                                           #; (acc) a5  <-- 0x40f687b3
       0     4733        M 0x8000070c sub     a5, a3, a5             #; a3  = 88, a5  = 80, (wrb) a5  <-- 8
       0     4735        M 0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 704, (wrb) a5  <-- 0x001005e0
                         M 0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 8
       0     4736        M                                           #; (f:fpu) ft0  <-- 8.0
       0     4737        M 0x8000071c addi    a2, a2, 8              #; a2  = 704, (wrb) a2  <-- 712
       0     4738        M 0x80000720 addi    a3, a3, 1              #; a3  = 88, (wrb) a3  <-- 89
                         M 0x80000718 fsd     ft0, 0(a5)             #; 8.0 ~~> Doub[0x001005e0]
       0     4739        M 0x80000724 bne     a2, a7, pc - 36        #; a2  = 712, a7  = 800, taken, goto 0x80000700
       0     4740        M 0x80000700 mulhu   a5, a3, a4             #; a3  = 89, a4  = 0xcccccccd
       0     4743        M                                           #; (acc) a5  <-- 0x0037d793
       0     4744        M 0x80000704 srli    a5, a5, 3              #; a5  = 71, (wrb) a5  <-- 8
       0     4745        M 0x80000708 mul     a5, a5, a6             #; a5  = 8, a6  = 10
       0     4748        M                                           #; (acc) a5  <-- 0x40f687b3
       0     4749        M 0x8000070c sub     a5, a3, a5             #; a3  = 89, a5  = 80, (wrb) a5  <-- 9
       0     4751        M 0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 712, (wrb) a5  <-- 0x001005e8
                         M 0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 9
       0     4752        M                                           #; (f:fpu) ft0  <-- 9.0
       0     4753        M 0x8000071c addi    a2, a2, 8              #; a2  = 712, (wrb) a2  <-- 720
       0     4754        M 0x80000720 addi    a3, a3, 1              #; a3  = 89, (wrb) a3  <-- 90
                         M 0x80000718 fsd     ft0, 0(a5)             #; 9.0 ~~> Doub[0x001005e8]
       0     4755        M 0x80000724 bne     a2, a7, pc - 36        #; a2  = 720, a7  = 800, taken, goto 0x80000700
       0     4756        M 0x80000700 mulhu   a5, a3, a4             #; a3  = 90, a4  = 0xcccccccd
       0     4759        M                                           #; (acc) a5  <-- 0x0037d793
       0     4760        M 0x80000704 srli    a5, a5, 3              #; a5  = 72, (wrb) a5  <-- 9
       0     4761        M 0x80000708 mul     a5, a5, a6             #; a5  = 9, a6  = 10
       0     4764        M                                           #; (acc) a5  <-- 0x40f687b3
       0     4765        M 0x8000070c sub     a5, a3, a5             #; a3  = 90, a5  = 90, (wrb) a5  <-- 0
       0     4767        M 0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 720, (wrb) a5  <-- 0x001005f0
                         M 0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 0
       0     4768        M                                           #; (f:fpu) ft0  <-- 0.0
       0     4769        M 0x8000071c addi    a2, a2, 8              #; a2  = 720, (wrb) a2  <-- 728
       0     4770        M 0x80000720 addi    a3, a3, 1              #; a3  = 90, (wrb) a3  <-- 91
                         M 0x80000718 fsd     ft0, 0(a5)             #; 0.0 ~~> Doub[0x001005f0]
       0     4771        M 0x80000724 bne     a2, a7, pc - 36        #; a2  = 728, a7  = 800, taken, goto 0x80000700
       0     4772        M 0x80000700 mulhu   a5, a3, a4             #; a3  = 91, a4  = 0xcccccccd
       0     4775        M                                           #; (acc) a5  <-- 0x0037d793
       0     4776        M 0x80000704 srli    a5, a5, 3              #; a5  = 72, (wrb) a5  <-- 9
       0     4777        M 0x80000708 mul     a5, a5, a6             #; a5  = 9, a6  = 10
       0     4780        M                                           #; (acc) a5  <-- 0x40f687b3
       0     4781        M 0x8000070c sub     a5, a3, a5             #; a3  = 91, a5  = 90, (wrb) a5  <-- 1
       0     4783        M 0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 728, (wrb) a5  <-- 0x001005f8
                         M 0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 1
       0     4784        M                                           #; (f:fpu) ft0  <-- 1.0
       0     4785        M 0x8000071c addi    a2, a2, 8              #; a2  = 728, (wrb) a2  <-- 736
       0     4786        M 0x80000720 addi    a3, a3, 1              #; a3  = 91, (wrb) a3  <-- 92
                         M 0x80000718 fsd     ft0, 0(a5)             #; 1.0 ~~> Doub[0x001005f8]
       0     4787        M 0x80000724 bne     a2, a7, pc - 36        #; a2  = 736, a7  = 800, taken, goto 0x80000700
       0     4788        M 0x80000700 mulhu   a5, a3, a4             #; a3  = 92, a4  = 0xcccccccd
       0     4791        M                                           #; (acc) a5  <-- 0x0037d793
       0     4792        M 0x80000704 srli    a5, a5, 3              #; a5  = 73, (wrb) a5  <-- 9
       0     4793        M 0x80000708 mul     a5, a5, a6             #; a5  = 9, a6  = 10
       0     4796        M                                           #; (acc) a5  <-- 0x40f687b3
       0     4797        M 0x8000070c sub     a5, a3, a5             #; a3  = 92, a5  = 90, (wrb) a5  <-- 2
       0     4799        M 0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 736, (wrb) a5  <-- 0x00100600
                         M 0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 2
       0     4800        M                                           #; (f:fpu) ft0  <-- 2.0
       0     4801        M 0x8000071c addi    a2, a2, 8              #; a2  = 736, (wrb) a2  <-- 744
       0     4802        M 0x80000720 addi    a3, a3, 1              #; a3  = 92, (wrb) a3  <-- 93
                         M 0x80000718 fsd     ft0, 0(a5)             #; 2.0 ~~> Doub[0x00100600]
       0     4803        M 0x80000724 bne     a2, a7, pc - 36        #; a2  = 744, a7  = 800, taken, goto 0x80000700
       0     4804        M 0x80000700 mulhu   a5, a3, a4             #; a3  = 93, a4  = 0xcccccccd
       0     4807        M                                           #; (acc) a5  <-- 0x0037d793
       0     4808        M 0x80000704 srli    a5, a5, 3              #; a5  = 74, (wrb) a5  <-- 9
       0     4809        M 0x80000708 mul     a5, a5, a6             #; a5  = 9, a6  = 10
       0     4812        M                                           #; (acc) a5  <-- 0x40f687b3
       0     4813        M 0x8000070c sub     a5, a3, a5             #; a3  = 93, a5  = 90, (wrb) a5  <-- 3
       0     4815        M 0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 744, (wrb) a5  <-- 0x00100608
                         M 0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 3
       0     4816        M                                           #; (f:fpu) ft0  <-- 3.0
       0     4817        M 0x8000071c addi    a2, a2, 8              #; a2  = 744, (wrb) a2  <-- 752
       0     4818        M 0x80000720 addi    a3, a3, 1              #; a3  = 93, (wrb) a3  <-- 94
                         M 0x80000718 fsd     ft0, 0(a5)             #; 3.0 ~~> Doub[0x00100608]
       0     4819        M 0x80000724 bne     a2, a7, pc - 36        #; a2  = 752, a7  = 800, taken, goto 0x80000700
       0     4820        M 0x80000700 mulhu   a5, a3, a4             #; a3  = 94, a4  = 0xcccccccd
       0     4823        M                                           #; (acc) a5  <-- 0x0037d793
       0     4824        M 0x80000704 srli    a5, a5, 3              #; a5  = 75, (wrb) a5  <-- 9
       0     4825        M 0x80000708 mul     a5, a5, a6             #; a5  = 9, a6  = 10
       0     4828        M                                           #; (acc) a5  <-- 0x40f687b3
       0     4829        M 0x8000070c sub     a5, a3, a5             #; a3  = 94, a5  = 90, (wrb) a5  <-- 4
       0     4831        M 0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 752, (wrb) a5  <-- 0x00100610
                         M 0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 4
       0     4832        M                                           #; (f:fpu) ft0  <-- 4.0
       0     4833        M 0x8000071c addi    a2, a2, 8              #; a2  = 752, (wrb) a2  <-- 760
       0     4834        M 0x80000720 addi    a3, a3, 1              #; a3  = 94, (wrb) a3  <-- 95
                         M 0x80000718 fsd     ft0, 0(a5)             #; 4.0 ~~> Doub[0x00100610]
       0     4835        M 0x80000724 bne     a2, a7, pc - 36        #; a2  = 760, a7  = 800, taken, goto 0x80000700
       0     4836        M 0x80000700 mulhu   a5, a3, a4             #; a3  = 95, a4  = 0xcccccccd
       0     4839        M                                           #; (acc) a5  <-- 0x0037d793
       0     4840        M 0x80000704 srli    a5, a5, 3              #; a5  = 76, (wrb) a5  <-- 9
       0     4841        M 0x80000708 mul     a5, a5, a6             #; a5  = 9, a6  = 10
       0     4844        M                                           #; (acc) a5  <-- 0x40f687b3
       0     4845        M 0x8000070c sub     a5, a3, a5             #; a3  = 95, a5  = 90, (wrb) a5  <-- 5
       0     4847        M 0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 760, (wrb) a5  <-- 0x00100618
                         M 0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 5
       0     4848        M                                           #; (f:fpu) ft0  <-- 5.0
       0     4849        M 0x8000071c addi    a2, a2, 8              #; a2  = 760, (wrb) a2  <-- 768
       0     4850        M 0x80000720 addi    a3, a3, 1              #; a3  = 95, (wrb) a3  <-- 96
                         M 0x80000718 fsd     ft0, 0(a5)             #; 5.0 ~~> Doub[0x00100618]
       0     4851        M 0x80000724 bne     a2, a7, pc - 36        #; a2  = 768, a7  = 800, taken, goto 0x80000700
       0     4852        M 0x80000700 mulhu   a5, a3, a4             #; a3  = 96, a4  = 0xcccccccd
       0     4855        M                                           #; (acc) a5  <-- 0x0037d793
       0     4856        M 0x80000704 srli    a5, a5, 3              #; a5  = 76, (wrb) a5  <-- 9
       0     4857        M 0x80000708 mul     a5, a5, a6             #; a5  = 9, a6  = 10
       0     4860        M                                           #; (acc) a5  <-- 0x40f687b3
       0     4861        M 0x8000070c sub     a5, a3, a5             #; a3  = 96, a5  = 90, (wrb) a5  <-- 6
       0     4863        M 0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 768, (wrb) a5  <-- 0x00100620
                         M 0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 6
       0     4864        M                                           #; (f:fpu) ft0  <-- 6.0
       0     4865        M 0x8000071c addi    a2, a2, 8              #; a2  = 768, (wrb) a2  <-- 776
       0     4866        M 0x80000720 addi    a3, a3, 1              #; a3  = 96, (wrb) a3  <-- 97
                         M 0x80000718 fsd     ft0, 0(a5)             #; 6.0 ~~> Doub[0x00100620]
       0     4867        M 0x80000724 bne     a2, a7, pc - 36        #; a2  = 776, a7  = 800, taken, goto 0x80000700
       0     4868        M 0x80000700 mulhu   a5, a3, a4             #; a3  = 97, a4  = 0xcccccccd
       0     4871        M                                           #; (acc) a5  <-- 0x0037d793
       0     4872        M 0x80000704 srli    a5, a5, 3              #; a5  = 77, (wrb) a5  <-- 9
       0     4873        M 0x80000708 mul     a5, a5, a6             #; a5  = 9, a6  = 10
       0     4876        M                                           #; (acc) a5  <-- 0x40f687b3
       0     4877        M 0x8000070c sub     a5, a3, a5             #; a3  = 97, a5  = 90, (wrb) a5  <-- 7
       0     4879        M 0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 776, (wrb) a5  <-- 0x00100628
                         M 0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 7
       0     4880        M                                           #; (f:fpu) ft0  <-- 7.0
       0     4881        M 0x8000071c addi    a2, a2, 8              #; a2  = 776, (wrb) a2  <-- 784
       0     4882        M 0x80000720 addi    a3, a3, 1              #; a3  = 97, (wrb) a3  <-- 98
                         M 0x80000718 fsd     ft0, 0(a5)             #; 7.0 ~~> Doub[0x00100628]
       0     4883        M 0x80000724 bne     a2, a7, pc - 36        #; a2  = 784, a7  = 800, taken, goto 0x80000700
       0     4884        M 0x80000700 mulhu   a5, a3, a4             #; a3  = 98, a4  = 0xcccccccd
       0     4887        M                                           #; (acc) a5  <-- 0x0037d793
       0     4888        M 0x80000704 srli    a5, a5, 3              #; a5  = 78, (wrb) a5  <-- 9
       0     4889        M 0x80000708 mul     a5, a5, a6             #; a5  = 9, a6  = 10
       0     4892        M                                           #; (acc) a5  <-- 0x40f687b3
       0     4893        M 0x8000070c sub     a5, a3, a5             #; a3  = 98, a5  = 90, (wrb) a5  <-- 8
       0     4895        M 0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 784, (wrb) a5  <-- 0x00100630
                         M 0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 8
       0     4896        M                                           #; (f:fpu) ft0  <-- 8.0
       0     4897        M 0x8000071c addi    a2, a2, 8              #; a2  = 784, (wrb) a2  <-- 792
       0     4898        M 0x80000720 addi    a3, a3, 1              #; a3  = 98, (wrb) a3  <-- 99
                         M 0x80000718 fsd     ft0, 0(a5)             #; 8.0 ~~> Doub[0x00100630]
       0     4899        M 0x80000724 bne     a2, a7, pc - 36        #; a2  = 792, a7  = 800, taken, goto 0x80000700
       0     4900        M 0x80000700 mulhu   a5, a3, a4             #; a3  = 99, a4  = 0xcccccccd
       0     4903        M                                           #; (acc) a5  <-- 0x0037d793
       0     4904        M 0x80000704 srli    a5, a5, 3              #; a5  = 79, (wrb) a5  <-- 9
       0     4905        M 0x80000708 mul     a5, a5, a6             #; a5  = 9, a6  = 10
       0     4908        M                                           #; (acc) a5  <-- 0x40f687b3
       0     4909        M 0x8000070c sub     a5, a3, a5             #; a3  = 99, a5  = 90, (wrb) a5  <-- 9
       0     4911        M 0x80000714 add     a5, a0, a2             #; a0  = 0x00100320, a2  = 792, (wrb) a5  <-- 0x00100638
                         M 0x80000710 fcvt.d.wu ft0, a5              #; ac1  = 9
       0     4912        M                                           #; (f:fpu) ft0  <-- 9.0
       0     4913        M 0x8000071c addi    a2, a2, 8              #; a2  = 792, (wrb) a2  <-- 800
       0     4914        M 0x80000720 addi    a3, a3, 1              #; a3  = 99, (wrb) a3  <-- 100
                         M 0x80000718 fsd     ft0, 0(a5)             #; 9.0 ~~> Doub[0x00100638]
       0     4915        M 0x80000724 bne     a2, a7, pc - 36        #; a2  = 800, a7  = 800, not taken
       0     4916        M 0x80000728 li      a3, 0                  #; (wrb) a3  <-- 0
       0     4918        M 0x8000072c fcvt.d.w fs0, zero             #; ac1  = 0
       0     4919        M                                           #; (f:fpu) fs0  <-- 0.0
       0     4928        M 0x80000730 csrr    a2, mcycle             #; mcycle = 4927, (wrb) a2  <-- 4927
       0     4929        M 0x80000734 li      a4, 800                #; (wrb) a4  <-- 800
       0     4930        M 0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 0, (wrb) a5  <-- 0x00100000
       0     4933        M 0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100000]
       0     4934        M                                           #; (f:lsu) ft0  <-- 0.0
       0     4940        M 0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 0, (wrb) a5  <-- 0x00100320
       0     4942        M 0x80000748 addi    a3, a3, 8              #; a3  = 0, (wrb) a3  <-- 8
       0     4943        M 0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100320]
       0     4944        M                                           #; (f:lsu) ft1  <-- 0.0
       0     4945        M 0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 0.0, ft0  = 0.0, fs0  = 0.0
       0     4948        M                                           #; (f:fpu) fs0  <-- 0.0
       0     4952        M 0x80000750 bne     a3, a4, pc - 24        #; a3  = 8, a4  = 800, taken, goto 0x80000738
       0     4953        M 0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 8, (wrb) a5  <-- 0x00100008
       0     4955        M 0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 8, (wrb) a5  <-- 0x00100328
       0     4956        M 0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100008]
       0     4957        M 0x80000748 addi    a3, a3, 8              #; a3  = 8, (wrb) a3  <-- 16
                         M                                           #; (f:lsu) ft0  <-- 1.0
       0     4958        M 0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100328]
       0     4959        M 0x80000750 bne     a3, a4, pc - 24        #; a3  = 16, a4  = 800, taken, goto 0x80000738
                         M                                           #; (f:lsu) ft1  <-- 1.0
       0     4960        M 0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 16, (wrb) a5  <-- 0x00100010
                         M 0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 1.0, ft0  = 1.0, fs0  = 0.0
       0     4962        M 0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 16, (wrb) a5  <-- 0x00100330
       0     4963        M 0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100010], (f:fpu) fs0  <-- 1.0
       0     4964        M 0x80000748 addi    a3, a3, 8              #; a3  = 16, (wrb) a3  <-- 24
                         M                                           #; (f:lsu) ft0  <-- 2.0
       0     4965        M 0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100330]
       0     4966        M 0x80000750 bne     a3, a4, pc - 24        #; a3  = 24, a4  = 800, taken, goto 0x80000738
                         M                                           #; (f:lsu) ft1  <-- 2.0
       0     4967        M 0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 24, (wrb) a5  <-- 0x00100018
                         M 0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 2.0, ft0  = 2.0, fs0  = 1.0
       0     4969        M 0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 24, (wrb) a5  <-- 0x00100338
       0     4970        M 0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100018], (f:fpu) fs0  <-- 5.0
       0     4971        M 0x80000748 addi    a3, a3, 8              #; a3  = 24, (wrb) a3  <-- 32
                         M                                           #; (f:lsu) ft0  <-- 3.0
       0     4972        M 0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100338]
       0     4973        M 0x80000750 bne     a3, a4, pc - 24        #; a3  = 32, a4  = 800, taken, goto 0x80000738
                         M                                           #; (f:lsu) ft1  <-- 3.0
       0     4974        M 0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 32, (wrb) a5  <-- 0x00100020
                         M 0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 3.0, ft0  = 3.0, fs0  = 5.0
       0     4976        M 0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 32, (wrb) a5  <-- 0x00100340
       0     4977        M 0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100020], (f:fpu) fs0  <-- 14.0
       0     4978        M 0x80000748 addi    a3, a3, 8              #; a3  = 32, (wrb) a3  <-- 40
                         M                                           #; (f:lsu) ft0  <-- 4.0
       0     4979        M 0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100340]
       0     4980        M 0x80000750 bne     a3, a4, pc - 24        #; a3  = 40, a4  = 800, taken, goto 0x80000738
                         M                                           #; (f:lsu) ft1  <-- 4.0
       0     4981        M 0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 40, (wrb) a5  <-- 0x00100028
                         M 0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 4.0, ft0  = 4.0, fs0  = 14.0
       0     4983        M 0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 40, (wrb) a5  <-- 0x00100348
       0     4984        M 0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100028], (f:fpu) fs0  <-- 30.0
       0     4985        M 0x80000748 addi    a3, a3, 8              #; a3  = 40, (wrb) a3  <-- 48
                         M                                           #; (f:lsu) ft0  <-- 5.0
       0     4986        M 0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100348]
       0     4987        M 0x80000750 bne     a3, a4, pc - 24        #; a3  = 48, a4  = 800, taken, goto 0x80000738
                         M                                           #; (f:lsu) ft1  <-- 5.0
       0     4988        M 0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 48, (wrb) a5  <-- 0x00100030
                         M 0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 5.0, ft0  = 5.0, fs0  = 30.0
       0     4990        M 0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 48, (wrb) a5  <-- 0x00100350
       0     4991        M 0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100030], (f:fpu) fs0  <-- 55.0
       0     4992        M 0x80000748 addi    a3, a3, 8              #; a3  = 48, (wrb) a3  <-- 56
                         M                                           #; (f:lsu) ft0  <-- 6.0
       0     4993        M 0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100350]
       0     4994        M 0x80000750 bne     a3, a4, pc - 24        #; a3  = 56, a4  = 800, taken, goto 0x80000738
                         M                                           #; (f:lsu) ft1  <-- 6.0
       0     4995        M 0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 56, (wrb) a5  <-- 0x00100038
                         M 0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 6.0, ft0  = 6.0, fs0  = 55.0
       0     4997        M 0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 56, (wrb) a5  <-- 0x00100358
       0     4998        M 0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100038], (f:fpu) fs0  <-- 91.0
       0     4999        M 0x80000748 addi    a3, a3, 8              #; a3  = 56, (wrb) a3  <-- 64
                         M                                           #; (f:lsu) ft0  <-- 7.0
       0     5000        M 0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100358]
       0     5001        M 0x80000750 bne     a3, a4, pc - 24        #; a3  = 64, a4  = 800, taken, goto 0x80000738
                         M                                           #; (f:lsu) ft1  <-- 7.0
       0     5002        M 0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 64, (wrb) a5  <-- 0x00100040
                         M 0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 7.0, ft0  = 7.0, fs0  = 91.0
       0     5004        M 0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 64, (wrb) a5  <-- 0x00100360
       0     5005        M 0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100040], (f:fpu) fs0  <-- 140.0
       0     5006        M 0x80000748 addi    a3, a3, 8              #; a3  = 64, (wrb) a3  <-- 72
                         M                                           #; (f:lsu) ft0  <-- 8.0
       0     5007        M 0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100360]
       0     5008        M 0x80000750 bne     a3, a4, pc - 24        #; a3  = 72, a4  = 800, taken, goto 0x80000738
                         M                                           #; (f:lsu) ft1  <-- 8.0
       0     5009        M 0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 72, (wrb) a5  <-- 0x00100048
                         M 0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 8.0, ft0  = 8.0, fs0  = 140.0
       0     5011        M 0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 72, (wrb) a5  <-- 0x00100368
       0     5012        M 0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100048], (f:fpu) fs0  <-- 204.0
       0     5013        M 0x80000748 addi    a3, a3, 8              #; a3  = 72, (wrb) a3  <-- 80
                         M                                           #; (f:lsu) ft0  <-- 9.0
       0     5014        M 0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100368]
       0     5015        M 0x80000750 bne     a3, a4, pc - 24        #; a3  = 80, a4  = 800, taken, goto 0x80000738
                         M                                           #; (f:lsu) ft1  <-- 9.0
       0     5016        M 0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 80, (wrb) a5  <-- 0x00100050
                         M 0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 9.0, ft0  = 9.0, fs0  = 204.0
       0     5018        M 0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 80, (wrb) a5  <-- 0x00100370
       0     5019        M 0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100050], (f:fpu) fs0  <-- 285.0
       0     5020        M 0x80000748 addi    a3, a3, 8              #; a3  = 80, (wrb) a3  <-- 88
                         M                                           #; (f:lsu) ft0  <-- 0.0
       0     5021        M 0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100370]
       0     5022        M 0x80000750 bne     a3, a4, pc - 24        #; a3  = 88, a4  = 800, taken, goto 0x80000738
                         M                                           #; (f:lsu) ft1  <-- 0.0
       0     5023        M 0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 88, (wrb) a5  <-- 0x00100058
                         M 0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 0.0, ft0  = 0.0, fs0  = 285.0
       0     5025        M 0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 88, (wrb) a5  <-- 0x00100378
       0     5026        M 0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100058], (f:fpu) fs0  <-- 285.0
       0     5027        M 0x80000748 addi    a3, a3, 8              #; a3  = 88, (wrb) a3  <-- 96
                         M                                           #; (f:lsu) ft0  <-- 1.0
       0     5028        M 0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100378]
       0     5029        M 0x80000750 bne     a3, a4, pc - 24        #; a3  = 96, a4  = 800, taken, goto 0x80000738
                         M                                           #; (f:lsu) ft1  <-- 1.0
       0     5030        M 0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 96, (wrb) a5  <-- 0x00100060
                         M 0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 1.0, ft0  = 1.0, fs0  = 285.0
       0     5032        M 0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 96, (wrb) a5  <-- 0x00100380
       0     5033        M 0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100060], (f:fpu) fs0  <-- 286.0
       0     5034        M 0x80000748 addi    a3, a3, 8              #; a3  = 96, (wrb) a3  <-- 104
                         M                                           #; (f:lsu) ft0  <-- 2.0
       0     5035        M 0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100380]
       0     5036        M 0x80000750 bne     a3, a4, pc - 24        #; a3  = 104, a4  = 800, taken, goto 0x80000738
                         M                                           #; (f:lsu) ft1  <-- 2.0
       0     5037        M 0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 104, (wrb) a5  <-- 0x00100068
                         M 0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 2.0, ft0  = 2.0, fs0  = 286.0
       0     5039        M 0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 104, (wrb) a5  <-- 0x00100388
       0     5040        M 0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100068], (f:fpu) fs0  <-- 290.0
       0     5041        M 0x80000748 addi    a3, a3, 8              #; a3  = 104, (wrb) a3  <-- 112
                         M                                           #; (f:lsu) ft0  <-- 3.0
       0     5042        M 0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100388]
       0     5043        M 0x80000750 bne     a3, a4, pc - 24        #; a3  = 112, a4  = 800, taken, goto 0x80000738
                         M                                           #; (f:lsu) ft1  <-- 3.0
       0     5044        M 0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 112, (wrb) a5  <-- 0x00100070
                         M 0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 3.0, ft0  = 3.0, fs0  = 290.0
       0     5046        M 0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 112, (wrb) a5  <-- 0x00100390
       0     5047        M 0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100070], (f:fpu) fs0  <-- 299.0
       0     5048        M 0x80000748 addi    a3, a3, 8              #; a3  = 112, (wrb) a3  <-- 120
                         M                                           #; (f:lsu) ft0  <-- 4.0
       0     5049        M 0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100390]
       0     5050        M 0x80000750 bne     a3, a4, pc - 24        #; a3  = 120, a4  = 800, taken, goto 0x80000738
                         M                                           #; (f:lsu) ft1  <-- 4.0
       0     5051        M 0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 120, (wrb) a5  <-- 0x00100078
                         M 0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 4.0, ft0  = 4.0, fs0  = 299.0
       0     5053        M 0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 120, (wrb) a5  <-- 0x00100398
       0     5054        M 0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100078], (f:fpu) fs0  <-- 315.0
       0     5055        M 0x80000748 addi    a3, a3, 8              #; a3  = 120, (wrb) a3  <-- 128
                         M                                           #; (f:lsu) ft0  <-- 5.0
       0     5056        M 0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100398]
       0     5057        M 0x80000750 bne     a3, a4, pc - 24        #; a3  = 128, a4  = 800, taken, goto 0x80000738
                         M                                           #; (f:lsu) ft1  <-- 5.0
       0     5058        M 0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 128, (wrb) a5  <-- 0x00100080
                         M 0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 5.0, ft0  = 5.0, fs0  = 315.0
       0     5060        M 0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 128, (wrb) a5  <-- 0x001003a0
       0     5061        M 0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100080], (f:fpu) fs0  <-- 340.0
       0     5062        M 0x80000748 addi    a3, a3, 8              #; a3  = 128, (wrb) a3  <-- 136
                         M                                           #; (f:lsu) ft0  <-- 6.0
       0     5063        M 0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x001003a0]
       0     5064        M 0x80000750 bne     a3, a4, pc - 24        #; a3  = 136, a4  = 800, taken, goto 0x80000738
                         M                                           #; (f:lsu) ft1  <-- 6.0
       0     5065        M 0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 136, (wrb) a5  <-- 0x00100088
                         M 0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 6.0, ft0  = 6.0, fs0  = 340.0
       0     5067        M 0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 136, (wrb) a5  <-- 0x001003a8
       0     5068        M 0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100088], (f:fpu) fs0  <-- 376.0
       0     5069        M 0x80000748 addi    a3, a3, 8              #; a3  = 136, (wrb) a3  <-- 144
                         M                                           #; (f:lsu) ft0  <-- 7.0
       0     5070        M 0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x001003a8]
       0     5071        M 0x80000750 bne     a3, a4, pc - 24        #; a3  = 144, a4  = 800, taken, goto 0x80000738
                         M                                           #; (f:lsu) ft1  <-- 7.0
       0     5072        M 0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 144, (wrb) a5  <-- 0x00100090
                         M 0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 7.0, ft0  = 7.0, fs0  = 376.0
       0     5074        M 0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 144, (wrb) a5  <-- 0x001003b0
       0     5075        M 0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100090], (f:fpu) fs0  <-- 425.0
       0     5076        M 0x80000748 addi    a3, a3, 8              #; a3  = 144, (wrb) a3  <-- 152
                         M                                           #; (f:lsu) ft0  <-- 8.0
       0     5077        M 0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x001003b0]
       0     5078        M 0x80000750 bne     a3, a4, pc - 24        #; a3  = 152, a4  = 800, taken, goto 0x80000738
                         M                                           #; (f:lsu) ft1  <-- 8.0
       0     5079        M 0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 152, (wrb) a5  <-- 0x00100098
                         M 0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 8.0, ft0  = 8.0, fs0  = 425.0
       0     5081        M 0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 152, (wrb) a5  <-- 0x001003b8
       0     5082        M 0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100098], (f:fpu) fs0  <-- 489.0
       0     5083        M 0x80000748 addi    a3, a3, 8              #; a3  = 152, (wrb) a3  <-- 160
                         M                                           #; (f:lsu) ft0  <-- 9.0
       0     5084        M 0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x001003b8]
       0     5085        M 0x80000750 bne     a3, a4, pc - 24        #; a3  = 160, a4  = 800, taken, goto 0x80000738
                         M                                           #; (f:lsu) ft1  <-- 9.0
       0     5086        M 0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 160, (wrb) a5  <-- 0x001000a0
                         M 0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 9.0, ft0  = 9.0, fs0  = 489.0
       0     5088        M 0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 160, (wrb) a5  <-- 0x001003c0
       0     5089        M 0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x001000a0], (f:fpu) fs0  <-- 570.0
       0     5090        M 0x80000748 addi    a3, a3, 8              #; a3  = 160, (wrb) a3  <-- 168
                         M                                           #; (f:lsu) ft0  <-- 0.0
       0     5091        M 0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x001003c0]
       0     5092        M 0x80000750 bne     a3, a4, pc - 24        #; a3  = 168, a4  = 800, taken, goto 0x80000738
                         M                                           #; (f:lsu) ft1  <-- 0.0
       0     5093        M 0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 168, (wrb) a5  <-- 0x001000a8
                         M 0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 0.0, ft0  = 0.0, fs0  = 570.0
       0     5095        M 0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 168, (wrb) a5  <-- 0x001003c8
       0     5096        M 0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x001000a8], (f:fpu) fs0  <-- 570.0
       0     5097        M 0x80000748 addi    a3, a3, 8              #; a3  = 168, (wrb) a3  <-- 176
                         M                                           #; (f:lsu) ft0  <-- 1.0
       0     5098        M 0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x001003c8]
       0     5099        M 0x80000750 bne     a3, a4, pc - 24        #; a3  = 176, a4  = 800, taken, goto 0x80000738
                         M                                           #; (f:lsu) ft1  <-- 1.0
       0     5100        M 0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 176, (wrb) a5  <-- 0x001000b0
                         M 0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 1.0, ft0  = 1.0, fs0  = 570.0
       0     5102        M 0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 176, (wrb) a5  <-- 0x001003d0
       0     5103        M 0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x001000b0], (f:fpu) fs0  <-- 571.0
       0     5104        M 0x80000748 addi    a3, a3, 8              #; a3  = 176, (wrb) a3  <-- 184
                         M                                           #; (f:lsu) ft0  <-- 2.0
       0     5105        M 0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x001003d0]
       0     5106        M 0x80000750 bne     a3, a4, pc - 24        #; a3  = 184, a4  = 800, taken, goto 0x80000738
                         M                                           #; (f:lsu) ft1  <-- 2.0
       0     5107        M 0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 184, (wrb) a5  <-- 0x001000b8
                         M 0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 2.0, ft0  = 2.0, fs0  = 571.0
       0     5109        M 0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 184, (wrb) a5  <-- 0x001003d8
       0     5110        M 0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x001000b8], (f:fpu) fs0  <-- 575.0
       0     5111        M 0x80000748 addi    a3, a3, 8              #; a3  = 184, (wrb) a3  <-- 192
                         M                                           #; (f:lsu) ft0  <-- 3.0
       0     5112        M 0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x001003d8]
       0     5113        M 0x80000750 bne     a3, a4, pc - 24        #; a3  = 192, a4  = 800, taken, goto 0x80000738
                         M                                           #; (f:lsu) ft1  <-- 3.0
       0     5114        M 0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 192, (wrb) a5  <-- 0x001000c0
                         M 0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 3.0, ft0  = 3.0, fs0  = 575.0
       0     5116        M 0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 192, (wrb) a5  <-- 0x001003e0
       0     5117        M 0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x001000c0], (f:fpu) fs0  <-- 584.0
       0     5118        M 0x80000748 addi    a3, a3, 8              #; a3  = 192, (wrb) a3  <-- 200
                         M                                           #; (f:lsu) ft0  <-- 4.0
       0     5119        M 0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x001003e0]
       0     5120        M 0x80000750 bne     a3, a4, pc - 24        #; a3  = 200, a4  = 800, taken, goto 0x80000738
                         M                                           #; (f:lsu) ft1  <-- 4.0
       0     5121        M 0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 200, (wrb) a5  <-- 0x001000c8
                         M 0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 4.0, ft0  = 4.0, fs0  = 584.0
       0     5123        M 0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 200, (wrb) a5  <-- 0x001003e8
       0     5124        M 0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x001000c8], (f:fpu) fs0  <-- 600.0
       0     5125        M 0x80000748 addi    a3, a3, 8              #; a3  = 200, (wrb) a3  <-- 208
                         M                                           #; (f:lsu) ft0  <-- 5.0
       0     5126        M 0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x001003e8]
       0     5127        M 0x80000750 bne     a3, a4, pc - 24        #; a3  = 208, a4  = 800, taken, goto 0x80000738
                         M                                           #; (f:lsu) ft1  <-- 5.0
       0     5128        M 0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 208, (wrb) a5  <-- 0x001000d0
                         M 0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 5.0, ft0  = 5.0, fs0  = 600.0
       0     5130        M 0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 208, (wrb) a5  <-- 0x001003f0
       0     5131        M 0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x001000d0], (f:fpu) fs0  <-- 625.0
       0     5132        M 0x80000748 addi    a3, a3, 8              #; a3  = 208, (wrb) a3  <-- 216
                         M                                           #; (f:lsu) ft0  <-- 6.0
       0     5133        M 0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x001003f0]
       0     5134        M 0x80000750 bne     a3, a4, pc - 24        #; a3  = 216, a4  = 800, taken, goto 0x80000738
                         M                                           #; (f:lsu) ft1  <-- 6.0
       0     5135        M 0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 216, (wrb) a5  <-- 0x001000d8
                         M 0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 6.0, ft0  = 6.0, fs0  = 625.0
       0     5137        M 0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 216, (wrb) a5  <-- 0x001003f8
       0     5138        M 0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x001000d8], (f:fpu) fs0  <-- 661.0
       0     5139        M 0x80000748 addi    a3, a3, 8              #; a3  = 216, (wrb) a3  <-- 224
                         M                                           #; (f:lsu) ft0  <-- 7.0
       0     5140        M 0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x001003f8]
       0     5141        M 0x80000750 bne     a3, a4, pc - 24        #; a3  = 224, a4  = 800, taken, goto 0x80000738
                         M                                           #; (f:lsu) ft1  <-- 7.0
       0     5142        M 0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 224, (wrb) a5  <-- 0x001000e0
                         M 0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 7.0, ft0  = 7.0, fs0  = 661.0
       0     5144        M 0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 224, (wrb) a5  <-- 0x00100400
       0     5145        M 0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x001000e0], (f:fpu) fs0  <-- 710.0
       0     5146        M 0x80000748 addi    a3, a3, 8              #; a3  = 224, (wrb) a3  <-- 232
                         M                                           #; (f:lsu) ft0  <-- 8.0
       0     5147        M 0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100400]
       0     5148        M 0x80000750 bne     a3, a4, pc - 24        #; a3  = 232, a4  = 800, taken, goto 0x80000738
                         M                                           #; (f:lsu) ft1  <-- 8.0
       0     5149        M 0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 232, (wrb) a5  <-- 0x001000e8
                         M 0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 8.0, ft0  = 8.0, fs0  = 710.0
       0     5151        M 0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 232, (wrb) a5  <-- 0x00100408
       0     5152        M 0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x001000e8], (f:fpu) fs0  <-- 774.0
       0     5153        M 0x80000748 addi    a3, a3, 8              #; a3  = 232, (wrb) a3  <-- 240
                         M                                           #; (f:lsu) ft0  <-- 9.0
       0     5154        M 0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100408]
       0     5155        M 0x80000750 bne     a3, a4, pc - 24        #; a3  = 240, a4  = 800, taken, goto 0x80000738
                         M                                           #; (f:lsu) ft1  <-- 9.0
       0     5156        M 0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 240, (wrb) a5  <-- 0x001000f0
                         M 0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 9.0, ft0  = 9.0, fs0  = 774.0
       0     5158        M 0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 240, (wrb) a5  <-- 0x00100410
       0     5159        M 0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x001000f0], (f:fpu) fs0  <-- 855.0
       0     5160        M 0x80000748 addi    a3, a3, 8              #; a3  = 240, (wrb) a3  <-- 248
                         M                                           #; (f:lsu) ft0  <-- 0.0
       0     5161        M 0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100410]
       0     5162        M 0x80000750 bne     a3, a4, pc - 24        #; a3  = 248, a4  = 800, taken, goto 0x80000738
                         M                                           #; (f:lsu) ft1  <-- 0.0
       0     5163        M 0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 248, (wrb) a5  <-- 0x001000f8
                         M 0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 0.0, ft0  = 0.0, fs0  = 855.0
       0     5165        M 0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 248, (wrb) a5  <-- 0x00100418
       0     5166        M 0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x001000f8], (f:fpu) fs0  <-- 855.0
       0     5167        M 0x80000748 addi    a3, a3, 8              #; a3  = 248, (wrb) a3  <-- 256
                         M                                           #; (f:lsu) ft0  <-- 1.0
       0     5168        M 0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100418]
       0     5169        M 0x80000750 bne     a3, a4, pc - 24        #; a3  = 256, a4  = 800, taken, goto 0x80000738
                         M                                           #; (f:lsu) ft1  <-- 1.0
       0     5170        M 0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 256, (wrb) a5  <-- 0x00100100
                         M 0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 1.0, ft0  = 1.0, fs0  = 855.0
       0     5172        M 0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 256, (wrb) a5  <-- 0x00100420
       0     5173        M 0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100100], (f:fpu) fs0  <-- 856.0
       0     5174        M 0x80000748 addi    a3, a3, 8              #; a3  = 256, (wrb) a3  <-- 264
                         M                                           #; (f:lsu) ft0  <-- 2.0
       0     5175        M 0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100420]
       0     5176        M 0x80000750 bne     a3, a4, pc - 24        #; a3  = 264, a4  = 800, taken, goto 0x80000738
                         M                                           #; (f:lsu) ft1  <-- 2.0
       0     5177        M 0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 264, (wrb) a5  <-- 0x00100108
                         M 0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 2.0, ft0  = 2.0, fs0  = 856.0
       0     5179        M 0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 264, (wrb) a5  <-- 0x00100428
       0     5180        M 0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100108], (f:fpu) fs0  <-- 860.0
       0     5181        M 0x80000748 addi    a3, a3, 8              #; a3  = 264, (wrb) a3  <-- 272
                         M                                           #; (f:lsu) ft0  <-- 3.0
       0     5182        M 0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100428]
       0     5183        M 0x80000750 bne     a3, a4, pc - 24        #; a3  = 272, a4  = 800, taken, goto 0x80000738
                         M                                           #; (f:lsu) ft1  <-- 3.0
       0     5184        M 0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 272, (wrb) a5  <-- 0x00100110
                         M 0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 3.0, ft0  = 3.0, fs0  = 860.0
       0     5186        M 0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 272, (wrb) a5  <-- 0x00100430
       0     5187        M 0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100110], (f:fpu) fs0  <-- 869.0
       0     5188        M 0x80000748 addi    a3, a3, 8              #; a3  = 272, (wrb) a3  <-- 280
                         M                                           #; (f:lsu) ft0  <-- 4.0
       0     5189        M 0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100430]
       0     5190        M 0x80000750 bne     a3, a4, pc - 24        #; a3  = 280, a4  = 800, taken, goto 0x80000738
                         M                                           #; (f:lsu) ft1  <-- 4.0
       0     5191        M 0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 280, (wrb) a5  <-- 0x00100118
                         M 0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 4.0, ft0  = 4.0, fs0  = 869.0
       0     5193        M 0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 280, (wrb) a5  <-- 0x00100438
       0     5194        M 0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100118], (f:fpu) fs0  <-- 885.0
       0     5195        M 0x80000748 addi    a3, a3, 8              #; a3  = 280, (wrb) a3  <-- 288
                         M                                           #; (f:lsu) ft0  <-- 5.0
       0     5196        M 0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100438]
       0     5197        M 0x80000750 bne     a3, a4, pc - 24        #; a3  = 288, a4  = 800, taken, goto 0x80000738
                         M                                           #; (f:lsu) ft1  <-- 5.0
       0     5198        M 0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 288, (wrb) a5  <-- 0x00100120
                         M 0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 5.0, ft0  = 5.0, fs0  = 885.0
       0     5200        M 0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 288, (wrb) a5  <-- 0x00100440
       0     5201        M 0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100120], (f:fpu) fs0  <-- 910.0
       0     5202        M 0x80000748 addi    a3, a3, 8              #; a3  = 288, (wrb) a3  <-- 296
                         M                                           #; (f:lsu) ft0  <-- 6.0
       0     5203        M 0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100440]
       0     5204        M 0x80000750 bne     a3, a4, pc - 24        #; a3  = 296, a4  = 800, taken, goto 0x80000738
                         M                                           #; (f:lsu) ft1  <-- 6.0
       0     5205        M 0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 296, (wrb) a5  <-- 0x00100128
                         M 0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 6.0, ft0  = 6.0, fs0  = 910.0
       0     5207        M 0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 296, (wrb) a5  <-- 0x00100448
       0     5208        M 0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100128], (f:fpu) fs0  <-- 946.0
       0     5209        M 0x80000748 addi    a3, a3, 8              #; a3  = 296, (wrb) a3  <-- 304
                         M                                           #; (f:lsu) ft0  <-- 7.0
       0     5210        M 0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100448]
       0     5211        M 0x80000750 bne     a3, a4, pc - 24        #; a3  = 304, a4  = 800, taken, goto 0x80000738
                         M                                           #; (f:lsu) ft1  <-- 7.0
       0     5212        M 0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 304, (wrb) a5  <-- 0x00100130
                         M 0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 7.0, ft0  = 7.0, fs0  = 946.0
       0     5214        M 0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 304, (wrb) a5  <-- 0x00100450
       0     5215        M 0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100130], (f:fpu) fs0  <-- 995.0
       0     5216        M 0x80000748 addi    a3, a3, 8              #; a3  = 304, (wrb) a3  <-- 312
                         M                                           #; (f:lsu) ft0  <-- 8.0
       0     5217        M 0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100450]
       0     5218        M 0x80000750 bne     a3, a4, pc - 24        #; a3  = 312, a4  = 800, taken, goto 0x80000738
                         M                                           #; (f:lsu) ft1  <-- 8.0
       0     5219        M 0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 312, (wrb) a5  <-- 0x00100138
                         M 0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 8.0, ft0  = 8.0, fs0  = 995.0
       0     5221        M 0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 312, (wrb) a5  <-- 0x00100458
       0     5222        M 0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100138], (f:fpu) fs0  <-- 1059.0
       0     5223        M 0x80000748 addi    a3, a3, 8              #; a3  = 312, (wrb) a3  <-- 320
                         M                                           #; (f:lsu) ft0  <-- 9.0
       0     5224        M 0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100458]
       0     5225        M 0x80000750 bne     a3, a4, pc - 24        #; a3  = 320, a4  = 800, taken, goto 0x80000738
                         M                                           #; (f:lsu) ft1  <-- 9.0
       0     5226        M 0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 320, (wrb) a5  <-- 0x00100140
                         M 0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 9.0, ft0  = 9.0, fs0  = 1059.0
       0     5228        M 0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 320, (wrb) a5  <-- 0x00100460
       0     5229        M 0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100140], (f:fpu) fs0  <-- 1140.0
       0     5230        M 0x80000748 addi    a3, a3, 8              #; a3  = 320, (wrb) a3  <-- 328
                         M                                           #; (f:lsu) ft0  <-- 0.0
       0     5231        M 0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100460]
       0     5232        M 0x80000750 bne     a3, a4, pc - 24        #; a3  = 328, a4  = 800, taken, goto 0x80000738
                         M                                           #; (f:lsu) ft1  <-- 0.0
       0     5233        M 0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 328, (wrb) a5  <-- 0x00100148
                         M 0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 0.0, ft0  = 0.0, fs0  = 1140.0
       0     5235        M 0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 328, (wrb) a5  <-- 0x00100468
       0     5236        M 0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100148], (f:fpu) fs0  <-- 1140.0
       0     5237        M 0x80000748 addi    a3, a3, 8              #; a3  = 328, (wrb) a3  <-- 336
                         M                                           #; (f:lsu) ft0  <-- 1.0
       0     5238        M 0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100468]
       0     5239        M 0x80000750 bne     a3, a4, pc - 24        #; a3  = 336, a4  = 800, taken, goto 0x80000738
                         M                                           #; (f:lsu) ft1  <-- 1.0
       0     5240        M 0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 336, (wrb) a5  <-- 0x00100150
                         M 0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 1.0, ft0  = 1.0, fs0  = 1140.0
       0     5242        M 0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 336, (wrb) a5  <-- 0x00100470
       0     5243        M 0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100150], (f:fpu) fs0  <-- 1141.0
       0     5244        M 0x80000748 addi    a3, a3, 8              #; a3  = 336, (wrb) a3  <-- 344
                         M                                           #; (f:lsu) ft0  <-- 2.0
       0     5245        M 0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100470]
       0     5246        M 0x80000750 bne     a3, a4, pc - 24        #; a3  = 344, a4  = 800, taken, goto 0x80000738
                         M                                           #; (f:lsu) ft1  <-- 2.0
       0     5247        M 0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 344, (wrb) a5  <-- 0x00100158
                         M 0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 2.0, ft0  = 2.0, fs0  = 1141.0
       0     5249        M 0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 344, (wrb) a5  <-- 0x00100478
       0     5250        M 0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100158], (f:fpu) fs0  <-- 1145.0
       0     5251        M 0x80000748 addi    a3, a3, 8              #; a3  = 344, (wrb) a3  <-- 352
                         M                                           #; (f:lsu) ft0  <-- 3.0
       0     5252        M 0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100478]
       0     5253        M 0x80000750 bne     a3, a4, pc - 24        #; a3  = 352, a4  = 800, taken, goto 0x80000738
                         M                                           #; (f:lsu) ft1  <-- 3.0
       0     5254        M 0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 352, (wrb) a5  <-- 0x00100160
                         M 0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 3.0, ft0  = 3.0, fs0  = 1145.0
       0     5256        M 0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 352, (wrb) a5  <-- 0x00100480
       0     5257        M 0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100160], (f:fpu) fs0  <-- 1154.0
       0     5258        M 0x80000748 addi    a3, a3, 8              #; a3  = 352, (wrb) a3  <-- 360
                         M                                           #; (f:lsu) ft0  <-- 4.0
       0     5259        M 0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100480]
       0     5260        M 0x80000750 bne     a3, a4, pc - 24        #; a3  = 360, a4  = 800, taken, goto 0x80000738
                         M                                           #; (f:lsu) ft1  <-- 4.0
       0     5261        M 0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 360, (wrb) a5  <-- 0x00100168
                         M 0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 4.0, ft0  = 4.0, fs0  = 1154.0
       0     5263        M 0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 360, (wrb) a5  <-- 0x00100488
       0     5264        M 0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100168], (f:fpu) fs0  <-- 1170.0
       0     5265        M 0x80000748 addi    a3, a3, 8              #; a3  = 360, (wrb) a3  <-- 368
                         M                                           #; (f:lsu) ft0  <-- 5.0
       0     5266        M 0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100488]
       0     5267        M 0x80000750 bne     a3, a4, pc - 24        #; a3  = 368, a4  = 800, taken, goto 0x80000738
                         M                                           #; (f:lsu) ft1  <-- 5.0
       0     5268        M 0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 368, (wrb) a5  <-- 0x00100170
                         M 0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 5.0, ft0  = 5.0, fs0  = 1170.0
       0     5270        M 0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 368, (wrb) a5  <-- 0x00100490
       0     5271        M 0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100170], (f:fpu) fs0  <-- 1195.0
       0     5272        M 0x80000748 addi    a3, a3, 8              #; a3  = 368, (wrb) a3  <-- 376
                         M                                           #; (f:lsu) ft0  <-- 6.0
       0     5273        M 0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100490]
       0     5274        M 0x80000750 bne     a3, a4, pc - 24        #; a3  = 376, a4  = 800, taken, goto 0x80000738
                         M                                           #; (f:lsu) ft1  <-- 6.0
       0     5275        M 0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 376, (wrb) a5  <-- 0x00100178
                         M 0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 6.0, ft0  = 6.0, fs0  = 1195.0
       0     5277        M 0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 376, (wrb) a5  <-- 0x00100498
       0     5278        M 0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100178], (f:fpu) fs0  <-- 1231.0
       0     5279        M 0x80000748 addi    a3, a3, 8              #; a3  = 376, (wrb) a3  <-- 384
                         M                                           #; (f:lsu) ft0  <-- 7.0
       0     5280        M 0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100498]
       0     5281        M 0x80000750 bne     a3, a4, pc - 24        #; a3  = 384, a4  = 800, taken, goto 0x80000738
                         M                                           #; (f:lsu) ft1  <-- 7.0
       0     5282        M 0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 384, (wrb) a5  <-- 0x00100180
                         M 0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 7.0, ft0  = 7.0, fs0  = 1231.0
       0     5284        M 0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 384, (wrb) a5  <-- 0x001004a0
       0     5285        M 0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100180], (f:fpu) fs0  <-- 1280.0
       0     5286        M 0x80000748 addi    a3, a3, 8              #; a3  = 384, (wrb) a3  <-- 392
                         M                                           #; (f:lsu) ft0  <-- 8.0
       0     5287        M 0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x001004a0]
       0     5288        M 0x80000750 bne     a3, a4, pc - 24        #; a3  = 392, a4  = 800, taken, goto 0x80000738
                         M                                           #; (f:lsu) ft1  <-- 8.0
       0     5289        M 0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 392, (wrb) a5  <-- 0x00100188
                         M 0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 8.0, ft0  = 8.0, fs0  = 1280.0
       0     5291        M 0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 392, (wrb) a5  <-- 0x001004a8
       0     5292        M 0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100188], (f:fpu) fs0  <-- 1344.0
       0     5293        M 0x80000748 addi    a3, a3, 8              #; a3  = 392, (wrb) a3  <-- 400
                         M                                           #; (f:lsu) ft0  <-- 9.0
       0     5294        M 0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x001004a8]
       0     5295        M 0x80000750 bne     a3, a4, pc - 24        #; a3  = 400, a4  = 800, taken, goto 0x80000738
                         M                                           #; (f:lsu) ft1  <-- 9.0
       0     5296        M 0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 400, (wrb) a5  <-- 0x00100190
                         M 0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 9.0, ft0  = 9.0, fs0  = 1344.0
       0     5298        M 0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 400, (wrb) a5  <-- 0x001004b0
       0     5299        M 0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100190], (f:fpu) fs0  <-- 1425.0
       0     5300        M 0x80000748 addi    a3, a3, 8              #; a3  = 400, (wrb) a3  <-- 408
                         M                                           #; (f:lsu) ft0  <-- 0.0
       0     5301        M 0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x001004b0]
       0     5302        M 0x80000750 bne     a3, a4, pc - 24        #; a3  = 408, a4  = 800, taken, goto 0x80000738
                         M                                           #; (f:lsu) ft1  <-- 0.0
       0     5303        M 0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 408, (wrb) a5  <-- 0x00100198
                         M 0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 0.0, ft0  = 0.0, fs0  = 1425.0
       0     5305        M 0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 408, (wrb) a5  <-- 0x001004b8
       0     5306        M 0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100198], (f:fpu) fs0  <-- 1425.0
       0     5307        M 0x80000748 addi    a3, a3, 8              #; a3  = 408, (wrb) a3  <-- 416
                         M                                           #; (f:lsu) ft0  <-- 1.0
       0     5308        M 0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x001004b8]
       0     5309        M 0x80000750 bne     a3, a4, pc - 24        #; a3  = 416, a4  = 800, taken, goto 0x80000738
                         M                                           #; (f:lsu) ft1  <-- 1.0
       0     5310        M 0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 416, (wrb) a5  <-- 0x001001a0
                         M 0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 1.0, ft0  = 1.0, fs0  = 1425.0
       0     5312        M 0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 416, (wrb) a5  <-- 0x001004c0
       0     5313        M 0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x001001a0], (f:fpu) fs0  <-- 1426.0
       0     5314        M 0x80000748 addi    a3, a3, 8              #; a3  = 416, (wrb) a3  <-- 424
                         M                                           #; (f:lsu) ft0  <-- 2.0
       0     5315        M 0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x001004c0]
       0     5316        M 0x80000750 bne     a3, a4, pc - 24        #; a3  = 424, a4  = 800, taken, goto 0x80000738
                         M                                           #; (f:lsu) ft1  <-- 2.0
       0     5317        M 0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 424, (wrb) a5  <-- 0x001001a8
                         M 0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 2.0, ft0  = 2.0, fs0  = 1426.0
       0     5319        M 0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 424, (wrb) a5  <-- 0x001004c8
       0     5320        M 0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x001001a8], (f:fpu) fs0  <-- 1430.0
       0     5321        M 0x80000748 addi    a3, a3, 8              #; a3  = 424, (wrb) a3  <-- 432
                         M                                           #; (f:lsu) ft0  <-- 3.0
       0     5322        M 0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x001004c8]
       0     5323        M 0x80000750 bne     a3, a4, pc - 24        #; a3  = 432, a4  = 800, taken, goto 0x80000738
                         M                                           #; (f:lsu) ft1  <-- 3.0
       0     5324        M 0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 432, (wrb) a5  <-- 0x001001b0
                         M 0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 3.0, ft0  = 3.0, fs0  = 1430.0
       0     5326        M 0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 432, (wrb) a5  <-- 0x001004d0
       0     5327        M 0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x001001b0], (f:fpu) fs0  <-- 1439.0
       0     5328        M 0x80000748 addi    a3, a3, 8              #; a3  = 432, (wrb) a3  <-- 440
                         M                                           #; (f:lsu) ft0  <-- 4.0
       0     5329        M 0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x001004d0]
       0     5330        M 0x80000750 bne     a3, a4, pc - 24        #; a3  = 440, a4  = 800, taken, goto 0x80000738
                         M                                           #; (f:lsu) ft1  <-- 4.0
       0     5331        M 0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 440, (wrb) a5  <-- 0x001001b8
                         M 0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 4.0, ft0  = 4.0, fs0  = 1439.0
       0     5333        M 0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 440, (wrb) a5  <-- 0x001004d8
       0     5334        M 0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x001001b8], (f:fpu) fs0  <-- 1455.0
       0     5335        M 0x80000748 addi    a3, a3, 8              #; a3  = 440, (wrb) a3  <-- 448
                         M                                           #; (f:lsu) ft0  <-- 5.0
       0     5336        M 0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x001004d8]
       0     5337        M 0x80000750 bne     a3, a4, pc - 24        #; a3  = 448, a4  = 800, taken, goto 0x80000738
                         M                                           #; (f:lsu) ft1  <-- 5.0
       0     5338        M 0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 448, (wrb) a5  <-- 0x001001c0
                         M 0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 5.0, ft0  = 5.0, fs0  = 1455.0
       0     5340        M 0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 448, (wrb) a5  <-- 0x001004e0
       0     5341        M 0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x001001c0], (f:fpu) fs0  <-- 1480.0
       0     5342        M 0x80000748 addi    a3, a3, 8              #; a3  = 448, (wrb) a3  <-- 456
                         M                                           #; (f:lsu) ft0  <-- 6.0
       0     5343        M 0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x001004e0]
       0     5344        M 0x80000750 bne     a3, a4, pc - 24        #; a3  = 456, a4  = 800, taken, goto 0x80000738
                         M                                           #; (f:lsu) ft1  <-- 6.0
       0     5345        M 0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 456, (wrb) a5  <-- 0x001001c8
                         M 0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 6.0, ft0  = 6.0, fs0  = 1480.0
       0     5347        M 0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 456, (wrb) a5  <-- 0x001004e8
       0     5348        M 0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x001001c8], (f:fpu) fs0  <-- 1516.0
       0     5349        M 0x80000748 addi    a3, a3, 8              #; a3  = 456, (wrb) a3  <-- 464
                         M                                           #; (f:lsu) ft0  <-- 7.0
       0     5350        M 0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x001004e8]
       0     5351        M 0x80000750 bne     a3, a4, pc - 24        #; a3  = 464, a4  = 800, taken, goto 0x80000738
                         M                                           #; (f:lsu) ft1  <-- 7.0
       0     5352        M 0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 464, (wrb) a5  <-- 0x001001d0
                         M 0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 7.0, ft0  = 7.0, fs0  = 1516.0
       0     5354        M 0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 464, (wrb) a5  <-- 0x001004f0
       0     5355        M 0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x001001d0], (f:fpu) fs0  <-- 1565.0
       0     5356        M 0x80000748 addi    a3, a3, 8              #; a3  = 464, (wrb) a3  <-- 472
                         M                                           #; (f:lsu) ft0  <-- 8.0
       0     5357        M 0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x001004f0]
       0     5358        M 0x80000750 bne     a3, a4, pc - 24        #; a3  = 472, a4  = 800, taken, goto 0x80000738
                         M                                           #; (f:lsu) ft1  <-- 8.0
       0     5359        M 0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 472, (wrb) a5  <-- 0x001001d8
                         M 0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 8.0, ft0  = 8.0, fs0  = 1565.0
       0     5361        M 0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 472, (wrb) a5  <-- 0x001004f8
       0     5362        M 0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x001001d8], (f:fpu) fs0  <-- 1629.0
       0     5363        M 0x80000748 addi    a3, a3, 8              #; a3  = 472, (wrb) a3  <-- 480
                         M                                           #; (f:lsu) ft0  <-- 9.0
       0     5364        M 0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x001004f8]
       0     5365        M 0x80000750 bne     a3, a4, pc - 24        #; a3  = 480, a4  = 800, taken, goto 0x80000738
                         M                                           #; (f:lsu) ft1  <-- 9.0
       0     5366        M 0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 480, (wrb) a5  <-- 0x001001e0
                         M 0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 9.0, ft0  = 9.0, fs0  = 1629.0
       0     5368        M 0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 480, (wrb) a5  <-- 0x00100500
       0     5369        M 0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x001001e0], (f:fpu) fs0  <-- 1710.0
       0     5370        M 0x80000748 addi    a3, a3, 8              #; a3  = 480, (wrb) a3  <-- 488
                         M                                           #; (f:lsu) ft0  <-- 0.0
       0     5371        M 0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100500]
       0     5372        M 0x80000750 bne     a3, a4, pc - 24        #; a3  = 488, a4  = 800, taken, goto 0x80000738
                         M                                           #; (f:lsu) ft1  <-- 0.0
       0     5373        M 0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 488, (wrb) a5  <-- 0x001001e8
                         M 0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 0.0, ft0  = 0.0, fs0  = 1710.0
       0     5375        M 0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 488, (wrb) a5  <-- 0x00100508
       0     5376        M 0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x001001e8], (f:fpu) fs0  <-- 1710.0
       0     5377        M 0x80000748 addi    a3, a3, 8              #; a3  = 488, (wrb) a3  <-- 496
                         M                                           #; (f:lsu) ft0  <-- 1.0
       0     5378        M 0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100508]
       0     5379        M 0x80000750 bne     a3, a4, pc - 24        #; a3  = 496, a4  = 800, taken, goto 0x80000738
                         M                                           #; (f:lsu) ft1  <-- 1.0
       0     5380        M 0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 496, (wrb) a5  <-- 0x001001f0
                         M 0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 1.0, ft0  = 1.0, fs0  = 1710.0
       0     5382        M 0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 496, (wrb) a5  <-- 0x00100510
       0     5383        M 0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x001001f0], (f:fpu) fs0  <-- 1711.0
       0     5384        M 0x80000748 addi    a3, a3, 8              #; a3  = 496, (wrb) a3  <-- 504
                         M                                           #; (f:lsu) ft0  <-- 2.0
       0     5385        M 0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100510]
       0     5386        M 0x80000750 bne     a3, a4, pc - 24        #; a3  = 504, a4  = 800, taken, goto 0x80000738
                         M                                           #; (f:lsu) ft1  <-- 2.0
       0     5387        M 0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 504, (wrb) a5  <-- 0x001001f8
                         M 0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 2.0, ft0  = 2.0, fs0  = 1711.0
       0     5389        M 0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 504, (wrb) a5  <-- 0x00100518
       0     5390        M 0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x001001f8], (f:fpu) fs0  <-- 1715.0
       0     5391        M 0x80000748 addi    a3, a3, 8              #; a3  = 504, (wrb) a3  <-- 512
                         M                                           #; (f:lsu) ft0  <-- 3.0
       0     5392        M 0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100518]
       0     5393        M 0x80000750 bne     a3, a4, pc - 24        #; a3  = 512, a4  = 800, taken, goto 0x80000738
                         M                                           #; (f:lsu) ft1  <-- 3.0
       0     5394        M 0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 512, (wrb) a5  <-- 0x00100200
                         M 0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 3.0, ft0  = 3.0, fs0  = 1715.0
       0     5396        M 0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 512, (wrb) a5  <-- 0x00100520
       0     5397        M 0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100200], (f:fpu) fs0  <-- 1724.0
       0     5398        M 0x80000748 addi    a3, a3, 8              #; a3  = 512, (wrb) a3  <-- 520
                         M                                           #; (f:lsu) ft0  <-- 4.0
       0     5399        M 0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100520]
       0     5400        M 0x80000750 bne     a3, a4, pc - 24        #; a3  = 520, a4  = 800, taken, goto 0x80000738
                         M                                           #; (f:lsu) ft1  <-- 4.0
       0     5401        M 0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 520, (wrb) a5  <-- 0x00100208
                         M 0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 4.0, ft0  = 4.0, fs0  = 1724.0
       0     5403        M 0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 520, (wrb) a5  <-- 0x00100528
       0     5404        M 0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100208], (f:fpu) fs0  <-- 1740.0
       0     5405        M 0x80000748 addi    a3, a3, 8              #; a3  = 520, (wrb) a3  <-- 528
                         M                                           #; (f:lsu) ft0  <-- 5.0
       0     5406        M 0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100528]
       0     5407        M 0x80000750 bne     a3, a4, pc - 24        #; a3  = 528, a4  = 800, taken, goto 0x80000738
                         M                                           #; (f:lsu) ft1  <-- 5.0
       0     5408        M 0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 528, (wrb) a5  <-- 0x00100210
                         M 0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 5.0, ft0  = 5.0, fs0  = 1740.0
       0     5410        M 0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 528, (wrb) a5  <-- 0x00100530
       0     5411        M 0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100210], (f:fpu) fs0  <-- 1765.0
       0     5412        M 0x80000748 addi    a3, a3, 8              #; a3  = 528, (wrb) a3  <-- 536
                         M                                           #; (f:lsu) ft0  <-- 6.0
       0     5413        M 0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100530]
       0     5414        M 0x80000750 bne     a3, a4, pc - 24        #; a3  = 536, a4  = 800, taken, goto 0x80000738
                         M                                           #; (f:lsu) ft1  <-- 6.0
       0     5415        M 0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 536, (wrb) a5  <-- 0x00100218
                         M 0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 6.0, ft0  = 6.0, fs0  = 1765.0
       0     5417        M 0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 536, (wrb) a5  <-- 0x00100538
       0     5418        M 0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100218], (f:fpu) fs0  <-- 1801.0
       0     5419        M 0x80000748 addi    a3, a3, 8              #; a3  = 536, (wrb) a3  <-- 544
                         M                                           #; (f:lsu) ft0  <-- 7.0
       0     5420        M 0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100538]
       0     5421        M 0x80000750 bne     a3, a4, pc - 24        #; a3  = 544, a4  = 800, taken, goto 0x80000738
                         M                                           #; (f:lsu) ft1  <-- 7.0
       0     5422        M 0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 544, (wrb) a5  <-- 0x00100220
                         M 0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 7.0, ft0  = 7.0, fs0  = 1801.0
       0     5424        M 0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 544, (wrb) a5  <-- 0x00100540
       0     5425        M 0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100220], (f:fpu) fs0  <-- 1850.0
       0     5426        M 0x80000748 addi    a3, a3, 8              #; a3  = 544, (wrb) a3  <-- 552
                         M                                           #; (f:lsu) ft0  <-- 8.0
       0     5427        M 0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100540]
       0     5428        M 0x80000750 bne     a3, a4, pc - 24        #; a3  = 552, a4  = 800, taken, goto 0x80000738
                         M                                           #; (f:lsu) ft1  <-- 8.0
       0     5429        M 0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 552, (wrb) a5  <-- 0x00100228
                         M 0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 8.0, ft0  = 8.0, fs0  = 1850.0
       0     5431        M 0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 552, (wrb) a5  <-- 0x00100548
       0     5432        M 0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100228], (f:fpu) fs0  <-- 1914.0
       0     5433        M 0x80000748 addi    a3, a3, 8              #; a3  = 552, (wrb) a3  <-- 560
                         M                                           #; (f:lsu) ft0  <-- 9.0
       0     5434        M 0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100548]
       0     5435        M 0x80000750 bne     a3, a4, pc - 24        #; a3  = 560, a4  = 800, taken, goto 0x80000738
                         M                                           #; (f:lsu) ft1  <-- 9.0
       0     5436        M 0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 560, (wrb) a5  <-- 0x00100230
                         M 0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 9.0, ft0  = 9.0, fs0  = 1914.0
       0     5438        M 0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 560, (wrb) a5  <-- 0x00100550
       0     5439        M 0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100230], (f:fpu) fs0  <-- 1995.0
       0     5440        M 0x80000748 addi    a3, a3, 8              #; a3  = 560, (wrb) a3  <-- 568
                         M                                           #; (f:lsu) ft0  <-- 0.0
       0     5441        M 0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100550]
       0     5442        M 0x80000750 bne     a3, a4, pc - 24        #; a3  = 568, a4  = 800, taken, goto 0x80000738
                         M                                           #; (f:lsu) ft1  <-- 0.0
       0     5443        M 0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 568, (wrb) a5  <-- 0x00100238
                         M 0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 0.0, ft0  = 0.0, fs0  = 1995.0
       0     5445        M 0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 568, (wrb) a5  <-- 0x00100558
       0     5446        M 0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100238], (f:fpu) fs0  <-- 1995.0
       0     5447        M 0x80000748 addi    a3, a3, 8              #; a3  = 568, (wrb) a3  <-- 576
                         M                                           #; (f:lsu) ft0  <-- 1.0
       0     5448        M 0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100558]
       0     5449        M 0x80000750 bne     a3, a4, pc - 24        #; a3  = 576, a4  = 800, taken, goto 0x80000738
                         M                                           #; (f:lsu) ft1  <-- 1.0
       0     5450        M 0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 576, (wrb) a5  <-- 0x00100240
                         M 0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 1.0, ft0  = 1.0, fs0  = 1995.0
       0     5452        M 0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 576, (wrb) a5  <-- 0x00100560
       0     5453        M 0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100240], (f:fpu) fs0  <-- 1996.0
       0     5454        M 0x80000748 addi    a3, a3, 8              #; a3  = 576, (wrb) a3  <-- 584
                         M                                           #; (f:lsu) ft0  <-- 2.0
       0     5455        M 0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100560]
       0     5456        M 0x80000750 bne     a3, a4, pc - 24        #; a3  = 584, a4  = 800, taken, goto 0x80000738
                         M                                           #; (f:lsu) ft1  <-- 2.0
       0     5457        M 0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 584, (wrb) a5  <-- 0x00100248
                         M 0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 2.0, ft0  = 2.0, fs0  = 1996.0
       0     5459        M 0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 584, (wrb) a5  <-- 0x00100568
       0     5460        M 0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100248], (f:fpu) fs0  <-- 2000.0
       0     5461        M 0x80000748 addi    a3, a3, 8              #; a3  = 584, (wrb) a3  <-- 592
                         M                                           #; (f:lsu) ft0  <-- 3.0
       0     5462        M 0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100568]
       0     5463        M 0x80000750 bne     a3, a4, pc - 24        #; a3  = 592, a4  = 800, taken, goto 0x80000738
                         M                                           #; (f:lsu) ft1  <-- 3.0
       0     5464        M 0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 592, (wrb) a5  <-- 0x00100250
                         M 0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 3.0, ft0  = 3.0, fs0  = 2000.0
       0     5466        M 0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 592, (wrb) a5  <-- 0x00100570
       0     5467        M 0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100250], (f:fpu) fs0  <-- 2009.0
       0     5468        M 0x80000748 addi    a3, a3, 8              #; a3  = 592, (wrb) a3  <-- 600
                         M                                           #; (f:lsu) ft0  <-- 4.0
       0     5469        M 0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100570]
       0     5470        M 0x80000750 bne     a3, a4, pc - 24        #; a3  = 600, a4  = 800, taken, goto 0x80000738
                         M                                           #; (f:lsu) ft1  <-- 4.0
       0     5471        M 0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 600, (wrb) a5  <-- 0x00100258
                         M 0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 4.0, ft0  = 4.0, fs0  = 2009.0
       0     5473        M 0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 600, (wrb) a5  <-- 0x00100578
       0     5474        M 0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100258], (f:fpu) fs0  <-- 2025.0
       0     5475        M 0x80000748 addi    a3, a3, 8              #; a3  = 600, (wrb) a3  <-- 608
                         M                                           #; (f:lsu) ft0  <-- 5.0
       0     5476        M 0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100578]
       0     5477        M 0x80000750 bne     a3, a4, pc - 24        #; a3  = 608, a4  = 800, taken, goto 0x80000738
                         M                                           #; (f:lsu) ft1  <-- 5.0
       0     5478        M 0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 608, (wrb) a5  <-- 0x00100260
                         M 0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 5.0, ft0  = 5.0, fs0  = 2025.0
       0     5480        M 0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 608, (wrb) a5  <-- 0x00100580
       0     5481        M 0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100260], (f:fpu) fs0  <-- 2050.0
       0     5482        M 0x80000748 addi    a3, a3, 8              #; a3  = 608, (wrb) a3  <-- 616
                         M                                           #; (f:lsu) ft0  <-- 6.0
       0     5483        M 0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100580]
       0     5484        M 0x80000750 bne     a3, a4, pc - 24        #; a3  = 616, a4  = 800, taken, goto 0x80000738
                         M                                           #; (f:lsu) ft1  <-- 6.0
       0     5485        M 0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 616, (wrb) a5  <-- 0x00100268
                         M 0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 6.0, ft0  = 6.0, fs0  = 2050.0
       0     5487        M 0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 616, (wrb) a5  <-- 0x00100588
       0     5488        M 0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100268], (f:fpu) fs0  <-- 2086.0
       0     5489        M 0x80000748 addi    a3, a3, 8              #; a3  = 616, (wrb) a3  <-- 624
                         M                                           #; (f:lsu) ft0  <-- 7.0
       0     5490        M 0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100588]
       0     5491        M 0x80000750 bne     a3, a4, pc - 24        #; a3  = 624, a4  = 800, taken, goto 0x80000738
                         M                                           #; (f:lsu) ft1  <-- 7.0
       0     5492        M 0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 624, (wrb) a5  <-- 0x00100270
                         M 0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 7.0, ft0  = 7.0, fs0  = 2086.0
       0     5494        M 0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 624, (wrb) a5  <-- 0x00100590
       0     5495        M 0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100270], (f:fpu) fs0  <-- 2135.0
       0     5496        M 0x80000748 addi    a3, a3, 8              #; a3  = 624, (wrb) a3  <-- 632
                         M                                           #; (f:lsu) ft0  <-- 8.0
       0     5497        M 0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100590]
       0     5498        M 0x80000750 bne     a3, a4, pc - 24        #; a3  = 632, a4  = 800, taken, goto 0x80000738
                         M                                           #; (f:lsu) ft1  <-- 8.0
       0     5499        M 0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 632, (wrb) a5  <-- 0x00100278
                         M 0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 8.0, ft0  = 8.0, fs0  = 2135.0
       0     5501        M 0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 632, (wrb) a5  <-- 0x00100598
       0     5502        M 0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100278], (f:fpu) fs0  <-- 2199.0
       0     5503        M 0x80000748 addi    a3, a3, 8              #; a3  = 632, (wrb) a3  <-- 640
                         M                                           #; (f:lsu) ft0  <-- 9.0
       0     5504        M 0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100598]
       0     5505        M 0x80000750 bne     a3, a4, pc - 24        #; a3  = 640, a4  = 800, taken, goto 0x80000738
                         M                                           #; (f:lsu) ft1  <-- 9.0
       0     5506        M 0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 640, (wrb) a5  <-- 0x00100280
                         M 0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 9.0, ft0  = 9.0, fs0  = 2199.0
       0     5508        M 0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 640, (wrb) a5  <-- 0x001005a0
       0     5509        M 0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100280], (f:fpu) fs0  <-- 2280.0
       0     5510        M 0x80000748 addi    a3, a3, 8              #; a3  = 640, (wrb) a3  <-- 648
                         M                                           #; (f:lsu) ft0  <-- 0.0
       0     5511        M 0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x001005a0]
       0     5512        M 0x80000750 bne     a3, a4, pc - 24        #; a3  = 648, a4  = 800, taken, goto 0x80000738
                         M                                           #; (f:lsu) ft1  <-- 0.0
       0     5513        M 0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 648, (wrb) a5  <-- 0x00100288
                         M 0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 0.0, ft0  = 0.0, fs0  = 2280.0
       0     5515        M 0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 648, (wrb) a5  <-- 0x001005a8
       0     5516        M 0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100288], (f:fpu) fs0  <-- 2280.0
       0     5517        M 0x80000748 addi    a3, a3, 8              #; a3  = 648, (wrb) a3  <-- 656
                         M                                           #; (f:lsu) ft0  <-- 1.0
       0     5518        M 0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x001005a8]
       0     5519        M 0x80000750 bne     a3, a4, pc - 24        #; a3  = 656, a4  = 800, taken, goto 0x80000738
                         M                                           #; (f:lsu) ft1  <-- 1.0
       0     5520        M 0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 656, (wrb) a5  <-- 0x00100290
                         M 0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 1.0, ft0  = 1.0, fs0  = 2280.0
       0     5522        M 0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 656, (wrb) a5  <-- 0x001005b0
       0     5523        M 0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100290], (f:fpu) fs0  <-- 2281.0
       0     5524        M 0x80000748 addi    a3, a3, 8              #; a3  = 656, (wrb) a3  <-- 664
                         M                                           #; (f:lsu) ft0  <-- 2.0
       0     5525        M 0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x001005b0]
       0     5526        M 0x80000750 bne     a3, a4, pc - 24        #; a3  = 664, a4  = 800, taken, goto 0x80000738
                         M                                           #; (f:lsu) ft1  <-- 2.0
       0     5527        M 0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 664, (wrb) a5  <-- 0x00100298
                         M 0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 2.0, ft0  = 2.0, fs0  = 2281.0
       0     5529        M 0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 664, (wrb) a5  <-- 0x001005b8
       0     5530        M 0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100298], (f:fpu) fs0  <-- 2285.0
       0     5531        M 0x80000748 addi    a3, a3, 8              #; a3  = 664, (wrb) a3  <-- 672
                         M                                           #; (f:lsu) ft0  <-- 3.0
       0     5532        M 0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x001005b8]
       0     5533        M 0x80000750 bne     a3, a4, pc - 24        #; a3  = 672, a4  = 800, taken, goto 0x80000738
                         M                                           #; (f:lsu) ft1  <-- 3.0
       0     5534        M 0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 672, (wrb) a5  <-- 0x001002a0
                         M 0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 3.0, ft0  = 3.0, fs0  = 2285.0
       0     5536        M 0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 672, (wrb) a5  <-- 0x001005c0
       0     5537        M 0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x001002a0], (f:fpu) fs0  <-- 2294.0
       0     5538        M 0x80000748 addi    a3, a3, 8              #; a3  = 672, (wrb) a3  <-- 680
                         M                                           #; (f:lsu) ft0  <-- 4.0
       0     5539        M 0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x001005c0]
       0     5540        M 0x80000750 bne     a3, a4, pc - 24        #; a3  = 680, a4  = 800, taken, goto 0x80000738
                         M                                           #; (f:lsu) ft1  <-- 4.0
       0     5541        M 0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 680, (wrb) a5  <-- 0x001002a8
                         M 0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 4.0, ft0  = 4.0, fs0  = 2294.0
       0     5543        M 0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 680, (wrb) a5  <-- 0x001005c8
       0     5544        M 0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x001002a8], (f:fpu) fs0  <-- 2310.0
       0     5545        M 0x80000748 addi    a3, a3, 8              #; a3  = 680, (wrb) a3  <-- 688
                         M                                           #; (f:lsu) ft0  <-- 5.0
       0     5546        M 0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x001005c8]
       0     5547        M 0x80000750 bne     a3, a4, pc - 24        #; a3  = 688, a4  = 800, taken, goto 0x80000738
                         M                                           #; (f:lsu) ft1  <-- 5.0
       0     5548        M 0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 688, (wrb) a5  <-- 0x001002b0
                         M 0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 5.0, ft0  = 5.0, fs0  = 2310.0
       0     5550        M 0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 688, (wrb) a5  <-- 0x001005d0
       0     5551        M 0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x001002b0], (f:fpu) fs0  <-- 2335.0
       0     5552        M 0x80000748 addi    a3, a3, 8              #; a3  = 688, (wrb) a3  <-- 696
                         M                                           #; (f:lsu) ft0  <-- 6.0
       0     5553        M 0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x001005d0]
       0     5554        M 0x80000750 bne     a3, a4, pc - 24        #; a3  = 696, a4  = 800, taken, goto 0x80000738
                         M                                           #; (f:lsu) ft1  <-- 6.0
       0     5555        M 0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 696, (wrb) a5  <-- 0x001002b8
                         M 0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 6.0, ft0  = 6.0, fs0  = 2335.0
       0     5557        M 0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 696, (wrb) a5  <-- 0x001005d8
       0     5558        M 0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x001002b8], (f:fpu) fs0  <-- 2371.0
       0     5559        M 0x80000748 addi    a3, a3, 8              #; a3  = 696, (wrb) a3  <-- 704
                         M                                           #; (f:lsu) ft0  <-- 7.0
       0     5560        M 0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x001005d8]
       0     5561        M 0x80000750 bne     a3, a4, pc - 24        #; a3  = 704, a4  = 800, taken, goto 0x80000738
                         M                                           #; (f:lsu) ft1  <-- 7.0
       0     5562        M 0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 704, (wrb) a5  <-- 0x001002c0
                         M 0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 7.0, ft0  = 7.0, fs0  = 2371.0
       0     5564        M 0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 704, (wrb) a5  <-- 0x001005e0
       0     5565        M 0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x001002c0], (f:fpu) fs0  <-- 2420.0
       0     5566        M 0x80000748 addi    a3, a3, 8              #; a3  = 704, (wrb) a3  <-- 712
                         M                                           #; (f:lsu) ft0  <-- 8.0
       0     5567        M 0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x001005e0]
       0     5568        M 0x80000750 bne     a3, a4, pc - 24        #; a3  = 712, a4  = 800, taken, goto 0x80000738
                         M                                           #; (f:lsu) ft1  <-- 8.0
       0     5569        M 0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 712, (wrb) a5  <-- 0x001002c8
                         M 0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 8.0, ft0  = 8.0, fs0  = 2420.0
       0     5571        M 0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 712, (wrb) a5  <-- 0x001005e8
       0     5572        M 0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x001002c8], (f:fpu) fs0  <-- 2484.0
       0     5573        M 0x80000748 addi    a3, a3, 8              #; a3  = 712, (wrb) a3  <-- 720
                         M                                           #; (f:lsu) ft0  <-- 9.0
       0     5574        M 0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x001005e8]
       0     5575        M 0x80000750 bne     a3, a4, pc - 24        #; a3  = 720, a4  = 800, taken, goto 0x80000738
                         M                                           #; (f:lsu) ft1  <-- 9.0
       0     5576        M 0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 720, (wrb) a5  <-- 0x001002d0
                         M 0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 9.0, ft0  = 9.0, fs0  = 2484.0
       0     5578        M 0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 720, (wrb) a5  <-- 0x001005f0
       0     5579        M 0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x001002d0], (f:fpu) fs0  <-- 2565.0
       0     5580        M 0x80000748 addi    a3, a3, 8              #; a3  = 720, (wrb) a3  <-- 728
                         M                                           #; (f:lsu) ft0  <-- 0.0
       0     5581        M 0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x001005f0]
       0     5582        M 0x80000750 bne     a3, a4, pc - 24        #; a3  = 728, a4  = 800, taken, goto 0x80000738
                         M                                           #; (f:lsu) ft1  <-- 0.0
       0     5583        M 0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 728, (wrb) a5  <-- 0x001002d8
                         M 0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 0.0, ft0  = 0.0, fs0  = 2565.0
       0     5585        M 0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 728, (wrb) a5  <-- 0x001005f8
       0     5586        M 0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x001002d8], (f:fpu) fs0  <-- 2565.0
       0     5587        M 0x80000748 addi    a3, a3, 8              #; a3  = 728, (wrb) a3  <-- 736
                         M                                           #; (f:lsu) ft0  <-- 1.0
       0     5588        M 0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x001005f8]
       0     5589        M 0x80000750 bne     a3, a4, pc - 24        #; a3  = 736, a4  = 800, taken, goto 0x80000738
                         M                                           #; (f:lsu) ft1  <-- 1.0
       0     5590        M 0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 736, (wrb) a5  <-- 0x001002e0
                         M 0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 1.0, ft0  = 1.0, fs0  = 2565.0
       0     5592        M 0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 736, (wrb) a5  <-- 0x00100600
       0     5593        M 0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x001002e0], (f:fpu) fs0  <-- 2566.0
       0     5594        M 0x80000748 addi    a3, a3, 8              #; a3  = 736, (wrb) a3  <-- 744
                         M                                           #; (f:lsu) ft0  <-- 2.0
       0     5595        M 0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100600]
       0     5596        M 0x80000750 bne     a3, a4, pc - 24        #; a3  = 744, a4  = 800, taken, goto 0x80000738
                         M                                           #; (f:lsu) ft1  <-- 2.0
       0     5597        M 0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 744, (wrb) a5  <-- 0x001002e8
                         M 0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 2.0, ft0  = 2.0, fs0  = 2566.0
       0     5599        M 0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 744, (wrb) a5  <-- 0x00100608
       0     5600        M 0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x001002e8], (f:fpu) fs0  <-- 2570.0
       0     5601        M 0x80000748 addi    a3, a3, 8              #; a3  = 744, (wrb) a3  <-- 752
                         M                                           #; (f:lsu) ft0  <-- 3.0
       0     5602        M 0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100608]
       0     5603        M 0x80000750 bne     a3, a4, pc - 24        #; a3  = 752, a4  = 800, taken, goto 0x80000738
                         M                                           #; (f:lsu) ft1  <-- 3.0
       0     5604        M 0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 752, (wrb) a5  <-- 0x001002f0
                         M 0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 3.0, ft0  = 3.0, fs0  = 2570.0
       0     5606        M 0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 752, (wrb) a5  <-- 0x00100610
       0     5607        M 0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x001002f0], (f:fpu) fs0  <-- 2579.0
       0     5608        M 0x80000748 addi    a3, a3, 8              #; a3  = 752, (wrb) a3  <-- 760
                         M                                           #; (f:lsu) ft0  <-- 4.0
       0     5609        M 0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100610]
       0     5610        M 0x80000750 bne     a3, a4, pc - 24        #; a3  = 760, a4  = 800, taken, goto 0x80000738
                         M                                           #; (f:lsu) ft1  <-- 4.0
       0     5611        M 0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 760, (wrb) a5  <-- 0x001002f8
                         M 0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 4.0, ft0  = 4.0, fs0  = 2579.0
       0     5613        M 0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 760, (wrb) a5  <-- 0x00100618
       0     5614        M 0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x001002f8], (f:fpu) fs0  <-- 2595.0
       0     5615        M 0x80000748 addi    a3, a3, 8              #; a3  = 760, (wrb) a3  <-- 768
                         M                                           #; (f:lsu) ft0  <-- 5.0
       0     5616        M 0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100618]
       0     5617        M 0x80000750 bne     a3, a4, pc - 24        #; a3  = 768, a4  = 800, taken, goto 0x80000738
                         M                                           #; (f:lsu) ft1  <-- 5.0
       0     5618        M 0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 768, (wrb) a5  <-- 0x00100300
                         M 0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 5.0, ft0  = 5.0, fs0  = 2595.0
       0     5620        M 0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 768, (wrb) a5  <-- 0x00100620
       0     5621        M 0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100300], (f:fpu) fs0  <-- 2620.0
       0     5622        M 0x80000748 addi    a3, a3, 8              #; a3  = 768, (wrb) a3  <-- 776
                         M                                           #; (f:lsu) ft0  <-- 6.0
       0     5623        M 0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100620]
       0     5624        M 0x80000750 bne     a3, a4, pc - 24        #; a3  = 776, a4  = 800, taken, goto 0x80000738
                         M                                           #; (f:lsu) ft1  <-- 6.0
       0     5625        M 0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 776, (wrb) a5  <-- 0x00100308
                         M 0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 6.0, ft0  = 6.0, fs0  = 2620.0
       0     5627        M 0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 776, (wrb) a5  <-- 0x00100628
       0     5628        M 0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100308], (f:fpu) fs0  <-- 2656.0
       0     5629        M 0x80000748 addi    a3, a3, 8              #; a3  = 776, (wrb) a3  <-- 784
                         M                                           #; (f:lsu) ft0  <-- 7.0
       0     5630        M 0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100628]
       0     5631        M 0x80000750 bne     a3, a4, pc - 24        #; a3  = 784, a4  = 800, taken, goto 0x80000738
                         M                                           #; (f:lsu) ft1  <-- 7.0
       0     5632        M 0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 784, (wrb) a5  <-- 0x00100310
                         M 0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 7.0, ft0  = 7.0, fs0  = 2656.0
       0     5634        M 0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 784, (wrb) a5  <-- 0x00100630
       0     5635        M 0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100310], (f:fpu) fs0  <-- 2705.0
       0     5636        M 0x80000748 addi    a3, a3, 8              #; a3  = 784, (wrb) a3  <-- 792
                         M                                           #; (f:lsu) ft0  <-- 8.0
       0     5637        M 0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100630]
       0     5638        M 0x80000750 bne     a3, a4, pc - 24        #; a3  = 792, a4  = 800, taken, goto 0x80000738
                         M                                           #; (f:lsu) ft1  <-- 8.0
       0     5639        M 0x80000738 add     a5, a1, a3             #; a1  = 0x00100000, a3  = 792, (wrb) a5  <-- 0x00100318
                         M 0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 8.0, ft0  = 8.0, fs0  = 2705.0
       0     5641        M 0x80000740 add     a5, a0, a3             #; a0  = 0x00100320, a3  = 792, (wrb) a5  <-- 0x00100638
       0     5642        M 0x8000073c fld     ft0, 0(a5)             #; ft0  <~~ Doub[0x00100318], (f:fpu) fs0  <-- 2769.0
       0     5643        M 0x80000748 addi    a3, a3, 8              #; a3  = 792, (wrb) a3  <-- 800
                         M                                           #; (f:lsu) ft0  <-- 9.0
       0     5644        M 0x80000744 fld     ft1, 0(a5)             #; ft1  <~~ Doub[0x00100638]
       0     5645        M 0x80000750 bne     a3, a4, pc - 24        #; a3  = 800, a4  = 800, not taken
                         M                                           #; (f:lsu) ft1  <-- 9.0
       0     5646        M 0x80000754 csrr    a0, mcycle             #; mcycle = 5645, (wrb) a0  <-- 5645
                         M 0x8000074c fmadd.d fs0, ft1, ft0, fs0     #; ft1  = 9.0, ft0  = 9.0, fs0  = 2769.0
       0     5647        M 0x80000758 sub     a1, a0, a2             #; a0  = 5645, a2  = 4927, (wrb) a1  <-- 718
       0     5648        M 0x8000075c auipc   a0, 0x2                #; (wrb) a0  <-- 0x8000275c
       0     5649        M                                           #; (f:fpu) fs0  <-- 2850.0
       0     5658        M 0x80000760 addi    a0, a0, 921            #; a0  = 0x8000275c, (wrb) a0  <-- 0x80002af5
       0     5659        M 0x80000764 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000764
       0     5660        M 0x80000768 jalr    ra, ra, 88             #; ra  = 0x80000764, (wrb) ra  <-- 0x8000076c, goto 0x800007bc
       0     5672        M 0x800007bc addi    sp, sp, -48            #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff10
       0     5675        M 0x800007c0 sw      ra, 12(sp)             #; sp  = 0x0011ff10, 0x8000076c ~~> Word[0x0011ff1c]
       0     5676        M 0x800007c4 mv      t0, a0                 #; a0  = 0x80002af5, (wrb) t0  <-- 0x80002af5
       0     5677        M 0x800007c8 sw      a7, 44(sp)             #; sp  = 0x0011ff10, 800 ~~> Word[0x0011ff3c]
       0     5678        M 0x800007cc sw      a6, 40(sp)             #; sp  = 0x0011ff10, 10 ~~> Word[0x0011ff38]
       0     5687        M 0x800007d0 sw      a5, 36(sp)             #; sp  = 0x0011ff10, 0x00100638 ~~> Word[0x0011ff34]
       0     5688        M 0x800007d4 sw      a4, 32(sp)             #; sp  = 0x0011ff10, 800 ~~> Word[0x0011ff30]
       0     5689        M 0x800007d8 sw      a3, 28(sp)             #; sp  = 0x0011ff10, 800 ~~> Word[0x0011ff2c]
       0     5690        M 0x800007dc sw      a2, 24(sp)             #; sp  = 0x0011ff10, 4927 ~~> Word[0x0011ff28]
       0     5699        M 0x800007e0 sw      a1, 20(sp)             #; sp  = 0x0011ff10, 718 ~~> Word[0x0011ff24]
       0     5700        M 0x800007e4 addi    a0, sp, 20             #; sp  = 0x0011ff10, (wrb) a0  <-- 0x0011ff24
       0     5701        M 0x800007e8 sw      a0, 8(sp)              #; sp  = 0x0011ff10, 0x0011ff24 ~~> Word[0x0011ff18]
       0     5702        M 0x800007ec auipc   a0, 0x1                #; (wrb) a0  <-- 0x800017ec
       0     5711        M 0x800007f0 addi    a0, a0, -988           #; a0  = 0x800017ec, (wrb) a0  <-- 0x80001410
       0     5712        M 0x800007f4 addi    a1, sp, 7              #; sp  = 0x0011ff10, (wrb) a1  <-- 0x0011ff17
       0     5713        M 0x800007f8 li      a2, -1                 #; (wrb) a2  <-- -1
       0     5714        M 0x800007fc addi    a4, sp, 20             #; sp  = 0x0011ff10, (wrb) a4  <-- 0x0011ff24
       0     5723        M 0x80000800 mv      a3, t0                 #; t0  = 0x80002af5, (wrb) a3  <-- 0x80002af5
       0     5724        M 0x80000804 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000804
       0     5725        M 0x80000808 jalr    ra, ra, 20             #; ra  = 0x80000804, (wrb) ra  <-- 0x8000080c, goto 0x80000818
       0     5735        M 0x80000818 addi    sp, sp, -112           #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011fea0
       0     5736        M 0x8000081c sw      ra, 108(sp)            #; sp  = 0x0011fea0, 0x8000080c ~~> Word[0x0011ff0c]
       0     5747        M 0x80000820 sw      s0, 104(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff08]
       0     5748        M 0x80000824 sw      s1, 100(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff04]
       0     5749        M 0x80000828 sw      s2, 96(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff00]
       0     5750        M 0x8000082c sw      s3, 92(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fefc]
       0     5759        M 0x80000830 sw      s4, 88(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef8]
       0     5760        M 0x80000834 sw      s5, 84(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef4]
       0     5761        M 0x80000838 sw      s6, 80(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef0]
       0     5762        M 0x8000083c sw      s7, 76(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011feec]
       0     5771        M 0x80000840 sw      s8, 72(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee8]
       0     5772        M 0x80000844 sw      s9, 68(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee4]
       0     5773        M 0x80000848 sw      s10, 64(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee0]
       0     5774        M 0x8000084c sw      s11, 60(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fedc]
       0     5783        M 0x80000850 mv      s3, a4                 #; a4  = 0x0011ff24, (wrb) s3  <-- 0x0011ff24
       0     5784        M 0x80000854 mv      s0, a3                 #; a3  = 0x80002af5, (wrb) s0  <-- 0x80002af5
       0     5785        M 0x80000858 mv      s5, a2                 #; a2  = -1, (wrb) s5  <-- -1
       0     5786        M 0x8000085c mv      s4, a1                 #; a1  = 0x0011ff17, (wrb) s4  <-- 0x0011ff17
       0     5795        M 0x80000860 beqz    a1, pc + 12            #; a1  = 0x0011ff17, not taken
       0     5796        M 0x80000864 mv      s2, a0                 #; a0  = 0x80001410, (wrb) s2  <-- 0x80001410
       0     5797        M 0x80000868 j       pc + 0xc               #; goto 0x80000874
       0     5807        M 0x80000874 li      s8, 0                  #; (wrb) s8  <-- 0
       0     5808        M 0x80000878 li      s6, 37                 #; (wrb) s6  <-- 37
       0     5809        M 0x8000087c li      s11, 16                #; (wrb) s11 <-- 16
       0     5819        M 0x80000880 li      s7, 46                 #; (wrb) s7  <-- 46
       0     5820        M 0x80000884 lui     a0, 0x1                #; (wrb) a0  <-- 4096
       0     5821        M 0x80000888 addi    a0, a0, -2048          #; a0  = 4096, (wrb) a0  <-- 2048
       0     5822        M 0x8000088c sw      a0, 24(sp)             #; sp  = 0x0011fea0, 2048 ~~> Word[0x0011feb8]
       0     5831        M 0x80000890 lui     a0, 0x10               #; (wrb) a0  <-- 0x00010000
       0     5832        M 0x80000894 addi    a0, a0, -1             #; a0  = 0x00010000, (wrb) a0  <-- 65535
       0     5833        M 0x80000898 sw      a0, 16(sp)             #; sp  = 0x0011fea0, 65535 ~~> Word[0x0011feb0]
       0     5834        M 0x8000089c addi    s10, s0, 2             #; s0  = 0x80002af5, (wrb) s10 <-- 0x80002af7
       0     5843        M 0x800008a0 mv      s9, s8                 #; s8  = 0, (wrb) s9  <-- 0
       0     5844        M 0x800008a4 li      s8, 10                 #; (wrb) s8  <-- 10
       0     5845        M 0x800008a8 lbu     a0, 0(s0)              #; s0  = 0x80002af5, a0  <~~ Byte[0x80002af5]
       0     5856        M                                           #; (lsu) a0  <-- 99
       0     5857        M 0x800008ac beqz    a0, pc + 2824          #; a0  = 99, not taken
       0     5858        M 0x800008b0 beq     a0, s6, pc + 48        #; a0  = 99, s6  = 37, not taken
       0     5859        M 0x800008b4 addi    s1, s9, 1              #; s9  = 0, (wrb) s1  <-- 1
       0     5860        M 0x800008b8 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5861        M 0x800008bc mv      a2, s9                 #; s9  = 0, (wrb) a2  <-- 0
       0     5870        M 0x800008c0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5871        M 0x800008c4 jalr    s2                     #; s2  = 0x80001410, (wrb) ra  <-- 0x800008c8, goto 0x80001410
       0     5893        M 0x80001410 beqz    a0, pc + 168           #; a0  = 99, not taken
       0     5894        M 0x80001414 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5895        M 0x80001418 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5896        M 0x8000141c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5905        M 0x80001420 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003420
       0     5906        M 0x80001424 addi    a3, a3, -1484          #; a3  = 0x80003420, (wrb) a3  <-- 0x80002e54
       0     5907        M 0x80001428 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002e54, (wrb) a1  <-- 0x80002e54
       0     5908        M 0x8000142c lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
       0     5919        M                                           #; (lsu) a4  <-- 0
       0     5920        M 0x80001430 addi    a5, a4, 1              #; a4  = 0, (wrb) a5  <-- 1
       0     5921        M 0x80001434 sw      a5, 0(a1)              #; a1  = 0x80002e54, 1 ~~> Word[0x80002e54]
       0     5922        M 0x80001438 add     a4, a1, a4             #; a1  = 0x80002e54, a4  = 0, (wrb) a4  <-- 0x80002e54
       0     5923        M 0x8000143c sb      a0, 72(a4)             #; a4  = 0x80002e54, 99 ~~> Byte[0x80002e9c]
       0     5929        M 0x80001440 lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
       0     5945        M                                           #; (lsu) a4  <-- 1
       0     5946        M 0x80001444 addi    a4, a4, -1020          #; a4  = 1, (wrb) a4  <-- -1019
       0     5947        M 0x80001448 snez    a4, a4                 #; a4  = -1019, (wrb) a4  <-- 1
       0     5948        M 0x8000144c addi    a0, a0, -10            #; a0  = 99, (wrb) a0  <-- 89
       0     5949        M 0x80001450 snez    a0, a0                 #; a0  = 89, (wrb) a0  <-- 1
       0     5950        M 0x80001454 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5951        M 0x80001458 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800014b8
       0     5972        M 0x800014b8 ret                            #; ra  = 0x800008c8, goto 0x800008c8
       0     5986        M 0x800008c8 addi    s0, s0, 1              #; s0  = 0x80002af5, (wrb) s0  <-- 0x80002af6
       0     5987        M 0x800008cc addi    s10, s10, 1            #; s10 = 0x80002af7, (wrb) s10 <-- 0x80002af8
       0     5989        M 0x800008d0 mv      s9, s1                 #; s1  = 1, (wrb) s9  <-- 1
       0     5990        M 0x800008d4 lbu     a0, 0(s0)              #; s0  = 0x80002af6, a0  <~~ Byte[0x80002af6]
       0     6001        M                                           #; (lsu) a0  <-- 121
       0     6002        M 0x800008d8 bnez    a0, pc - 40            #; a0  = 121, taken, goto 0x800008b0
       0     6003        M 0x800008b0 beq     a0, s6, pc + 48        #; a0  = 121, s6  = 37, not taken
       0     6004        M 0x800008b4 addi    s1, s9, 1              #; s9  = 1, (wrb) s1  <-- 2
       0     6005        M 0x800008b8 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     6006        M 0x800008bc mv      a2, s9                 #; s9  = 1, (wrb) a2  <-- 1
       0     6007        M 0x800008c0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     6008        M 0x800008c4 jalr    s2                     #; s2  = 0x80001410, (wrb) ra  <-- 0x800008c8, goto 0x80001410
       0     6011        M 0x80001410 beqz    a0, pc + 168           #; a0  = 121, not taken
       0     6012        M 0x80001414 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6013        M 0x80001418 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     6014        M 0x8000141c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     6015        M 0x80001420 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003420
       0     6016        M 0x80001424 addi    a3, a3, -1484          #; a3  = 0x80003420, (wrb) a3  <-- 0x80002e54
       0     6017        M                                           #; (acc) a1  <-- 0x00d605b3
       0     6018        M 0x80001428 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002e54, (wrb) a1  <-- 0x80002e54
       0     6019        M 0x8000142c lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
       0     6030        M                                           #; (lsu) a4  <-- 1
       0     6031        M 0x80001430 addi    a5, a4, 1              #; a4  = 1, (wrb) a5  <-- 2
       0     6032        M 0x80001434 sw      a5, 0(a1)              #; a1  = 0x80002e54, 2 ~~> Word[0x80002e54]
       0     6033        M 0x80001438 add     a4, a1, a4             #; a1  = 0x80002e54, a4  = 1, (wrb) a4  <-- 0x80002e55
       0     6034        M 0x8000143c sb      a0, 72(a4)             #; a4  = 0x80002e55, 121 ~~> Byte[0x80002e9d]
       0     6035        M 0x80001440 lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
       0     6056        M                                           #; (lsu) a4  <-- 2
       0     6057        M 0x80001444 addi    a4, a4, -1020          #; a4  = 2, (wrb) a4  <-- -1018
       0     6058        M 0x80001448 snez    a4, a4                 #; a4  = -1018, (wrb) a4  <-- 1
       0     6059        M 0x8000144c addi    a0, a0, -10            #; a0  = 121, (wrb) a0  <-- 111
       0     6060        M 0x80001450 snez    a0, a0                 #; a0  = 111, (wrb) a0  <-- 1
       0     6061        M 0x80001454 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     6062        M 0x80001458 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800014b8
       0     6065        M 0x800014b8 ret                            #; ra  = 0x800008c8, goto 0x800008c8
       0     6070        M 0x800008c8 addi    s0, s0, 1              #; s0  = 0x80002af6, (wrb) s0  <-- 0x80002af7
       0     6071        M 0x800008cc addi    s10, s10, 1            #; s10 = 0x80002af8, (wrb) s10 <-- 0x80002af9
       0     6073        M 0x800008d0 mv      s9, s1                 #; s1  = 2, (wrb) s9  <-- 2
       0     6074        M 0x800008d4 lbu     a0, 0(s0)              #; s0  = 0x80002af7, a0  <~~ Byte[0x80002af7]
       0     6085        M                                           #; (lsu) a0  <-- 99
       0     6086        M 0x800008d8 bnez    a0, pc - 40            #; a0  = 99, taken, goto 0x800008b0
       0     6087        M 0x800008b0 beq     a0, s6, pc + 48        #; a0  = 99, s6  = 37, not taken
       0     6088        M 0x800008b4 addi    s1, s9, 1              #; s9  = 2, (wrb) s1  <-- 3
       0     6089        M 0x800008b8 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     6090        M 0x800008bc mv      a2, s9                 #; s9  = 2, (wrb) a2  <-- 2
       0     6091        M 0x800008c0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     6092        M 0x800008c4 jalr    s2                     #; s2  = 0x80001410, (wrb) ra  <-- 0x800008c8, goto 0x80001410
       0     6095        M 0x80001410 beqz    a0, pc + 168           #; a0  = 99, not taken
       0     6096        M 0x80001414 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6097        M 0x80001418 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     6098        M 0x8000141c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     6099        M 0x80001420 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003420
       0     6100        M 0x80001424 addi    a3, a3, -1484          #; a3  = 0x80003420, (wrb) a3  <-- 0x80002e54
       0     6101        M                                           #; (acc) a1  <-- 0x00d605b3
       0     6102        M 0x80001428 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002e54, (wrb) a1  <-- 0x80002e54
       0     6103        M 0x8000142c lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
       0     6114        M                                           #; (lsu) a4  <-- 2
       0     6115        M 0x80001430 addi    a5, a4, 1              #; a4  = 2, (wrb) a5  <-- 3
       0     6116        M 0x80001434 sw      a5, 0(a1)              #; a1  = 0x80002e54, 3 ~~> Word[0x80002e54]
       0     6117        M 0x80001438 add     a4, a1, a4             #; a1  = 0x80002e54, a4  = 2, (wrb) a4  <-- 0x80002e56
       0     6118        M 0x8000143c sb      a0, 72(a4)             #; a4  = 0x80002e56, 99 ~~> Byte[0x80002e9e]
       0     6119        M 0x80001440 lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
       0     6140        M                                           #; (lsu) a4  <-- 3
       0     6141        M 0x80001444 addi    a4, a4, -1020          #; a4  = 3, (wrb) a4  <-- -1017
       0     6142        M 0x80001448 snez    a4, a4                 #; a4  = -1017, (wrb) a4  <-- 1
       0     6143        M 0x8000144c addi    a0, a0, -10            #; a0  = 99, (wrb) a0  <-- 89
       0     6144        M 0x80001450 snez    a0, a0                 #; a0  = 89, (wrb) a0  <-- 1
       0     6145        M 0x80001454 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     6146        M 0x80001458 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800014b8
       0     6149        M 0x800014b8 ret                            #; ra  = 0x800008c8, goto 0x800008c8
       0     6154        M 0x800008c8 addi    s0, s0, 1              #; s0  = 0x80002af7, (wrb) s0  <-- 0x80002af8
       0     6155        M 0x800008cc addi    s10, s10, 1            #; s10 = 0x80002af9, (wrb) s10 <-- 0x80002afa
       0     6157        M 0x800008d0 mv      s9, s1                 #; s1  = 3, (wrb) s9  <-- 3
       0     6158        M 0x800008d4 lbu     a0, 0(s0)              #; s0  = 0x80002af8, a0  <~~ Byte[0x80002af8]
       0     6169        M                                           #; (lsu) a0  <-- 108
       0     6170        M 0x800008d8 bnez    a0, pc - 40            #; a0  = 108, taken, goto 0x800008b0
       0     6171        M 0x800008b0 beq     a0, s6, pc + 48        #; a0  = 108, s6  = 37, not taken
       0     6172        M 0x800008b4 addi    s1, s9, 1              #; s9  = 3, (wrb) s1  <-- 4
       0     6173        M 0x800008b8 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     6174        M 0x800008bc mv      a2, s9                 #; s9  = 3, (wrb) a2  <-- 3
       0     6175        M 0x800008c0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     6176        M 0x800008c4 jalr    s2                     #; s2  = 0x80001410, (wrb) ra  <-- 0x800008c8, goto 0x80001410
       0     6179        M 0x80001410 beqz    a0, pc + 168           #; a0  = 108, not taken
       0     6180        M 0x80001414 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6181        M 0x80001418 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     6182        M 0x8000141c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     6183        M 0x80001420 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003420
       0     6184        M 0x80001424 addi    a3, a3, -1484          #; a3  = 0x80003420, (wrb) a3  <-- 0x80002e54
       0     6185        M                                           #; (acc) a1  <-- 0x00d605b3
       0     6186        M 0x80001428 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002e54, (wrb) a1  <-- 0x80002e54
       0     6187        M 0x8000142c lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
       0     6198        M                                           #; (lsu) a4  <-- 3
       0     6199        M 0x80001430 addi    a5, a4, 1              #; a4  = 3, (wrb) a5  <-- 4
       0     6200        M 0x80001434 sw      a5, 0(a1)              #; a1  = 0x80002e54, 4 ~~> Word[0x80002e54]
       0     6201        M 0x80001438 add     a4, a1, a4             #; a1  = 0x80002e54, a4  = 3, (wrb) a4  <-- 0x80002e57
       0     6202        M 0x8000143c sb      a0, 72(a4)             #; a4  = 0x80002e57, 108 ~~> Byte[0x80002e9f]
       0     6203        M 0x80001440 lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
       0     6224        M                                           #; (lsu) a4  <-- 4
       0     6225        M 0x80001444 addi    a4, a4, -1020          #; a4  = 4, (wrb) a4  <-- -1016
       0     6226        M 0x80001448 snez    a4, a4                 #; a4  = -1016, (wrb) a4  <-- 1
       0     6227        M 0x8000144c addi    a0, a0, -10            #; a0  = 108, (wrb) a0  <-- 98
       0     6228        M 0x80001450 snez    a0, a0                 #; a0  = 98, (wrb) a0  <-- 1
       0     6229        M 0x80001454 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     6230        M 0x80001458 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800014b8
       0     6233        M 0x800014b8 ret                            #; ra  = 0x800008c8, goto 0x800008c8
       0     6238        M 0x800008c8 addi    s0, s0, 1              #; s0  = 0x80002af8, (wrb) s0  <-- 0x80002af9
       0     6239        M 0x800008cc addi    s10, s10, 1            #; s10 = 0x80002afa, (wrb) s10 <-- 0x80002afb
       0     6241        M 0x800008d0 mv      s9, s1                 #; s1  = 4, (wrb) s9  <-- 4
       0     6242        M 0x800008d4 lbu     a0, 0(s0)              #; s0  = 0x80002af9, a0  <~~ Byte[0x80002af9]
       0     6253        M                                           #; (lsu) a0  <-- 101
       0     6254        M 0x800008d8 bnez    a0, pc - 40            #; a0  = 101, taken, goto 0x800008b0
       0     6255        M 0x800008b0 beq     a0, s6, pc + 48        #; a0  = 101, s6  = 37, not taken
       0     6256        M 0x800008b4 addi    s1, s9, 1              #; s9  = 4, (wrb) s1  <-- 5
       0     6257        M 0x800008b8 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     6258        M 0x800008bc mv      a2, s9                 #; s9  = 4, (wrb) a2  <-- 4
       0     6259        M 0x800008c0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     6260        M 0x800008c4 jalr    s2                     #; s2  = 0x80001410, (wrb) ra  <-- 0x800008c8, goto 0x80001410
       0     6263        M 0x80001410 beqz    a0, pc + 168           #; a0  = 101, not taken
       0     6264        M 0x80001414 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6265        M 0x80001418 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     6266        M 0x8000141c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     6267        M 0x80001420 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003420
       0     6268        M 0x80001424 addi    a3, a3, -1484          #; a3  = 0x80003420, (wrb) a3  <-- 0x80002e54
       0     6269        M                                           #; (acc) a1  <-- 0x00d605b3
       0     6270        M 0x80001428 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002e54, (wrb) a1  <-- 0x80002e54
       0     6271        M 0x8000142c lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
       0     6282        M                                           #; (lsu) a4  <-- 4
       0     6283        M 0x80001430 addi    a5, a4, 1              #; a4  = 4, (wrb) a5  <-- 5
       0     6284        M 0x80001434 sw      a5, 0(a1)              #; a1  = 0x80002e54, 5 ~~> Word[0x80002e54]
       0     6285        M 0x80001438 add     a4, a1, a4             #; a1  = 0x80002e54, a4  = 4, (wrb) a4  <-- 0x80002e58
       0     6286        M 0x8000143c sb      a0, 72(a4)             #; a4  = 0x80002e58, 101 ~~> Byte[0x80002ea0]
       0     6287        M 0x80001440 lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
       0     6308        M                                           #; (lsu) a4  <-- 5
       0     6309        M 0x80001444 addi    a4, a4, -1020          #; a4  = 5, (wrb) a4  <-- -1015
       0     6310        M 0x80001448 snez    a4, a4                 #; a4  = -1015, (wrb) a4  <-- 1
       0     6311        M 0x8000144c addi    a0, a0, -10            #; a0  = 101, (wrb) a0  <-- 91
       0     6312        M 0x80001450 snez    a0, a0                 #; a0  = 91, (wrb) a0  <-- 1
       0     6313        M 0x80001454 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     6314        M 0x80001458 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800014b8
       0     6317        M 0x800014b8 ret                            #; ra  = 0x800008c8, goto 0x800008c8
       0     6322        M 0x800008c8 addi    s0, s0, 1              #; s0  = 0x80002af9, (wrb) s0  <-- 0x80002afa
       0     6323        M 0x800008cc addi    s10, s10, 1            #; s10 = 0x80002afb, (wrb) s10 <-- 0x80002afc
       0     6325        M 0x800008d0 mv      s9, s1                 #; s1  = 5, (wrb) s9  <-- 5
       0     6326        M 0x800008d4 lbu     a0, 0(s0)              #; s0  = 0x80002afa, a0  <~~ Byte[0x80002afa]
       0     6337        M                                           #; (lsu) a0  <-- 115
       0     6338        M 0x800008d8 bnez    a0, pc - 40            #; a0  = 115, taken, goto 0x800008b0
       0     6339        M 0x800008b0 beq     a0, s6, pc + 48        #; a0  = 115, s6  = 37, not taken
       0     6340        M 0x800008b4 addi    s1, s9, 1              #; s9  = 5, (wrb) s1  <-- 6
       0     6341        M 0x800008b8 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     6342        M 0x800008bc mv      a2, s9                 #; s9  = 5, (wrb) a2  <-- 5
       0     6343        M 0x800008c0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     6344        M 0x800008c4 jalr    s2                     #; s2  = 0x80001410, (wrb) ra  <-- 0x800008c8, goto 0x80001410
       0     6347        M 0x80001410 beqz    a0, pc + 168           #; a0  = 115, not taken
       0     6348        M 0x80001414 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6349        M 0x80001418 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     6350        M 0x8000141c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     6351        M 0x80001420 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003420
       0     6352        M 0x80001424 addi    a3, a3, -1484          #; a3  = 0x80003420, (wrb) a3  <-- 0x80002e54
       0     6353        M                                           #; (acc) a1  <-- 0x00d605b3
       0     6354        M 0x80001428 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002e54, (wrb) a1  <-- 0x80002e54
       0     6355        M 0x8000142c lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
       0     6366        M                                           #; (lsu) a4  <-- 5
       0     6367        M 0x80001430 addi    a5, a4, 1              #; a4  = 5, (wrb) a5  <-- 6
       0     6368        M 0x80001434 sw      a5, 0(a1)              #; a1  = 0x80002e54, 6 ~~> Word[0x80002e54]
       0     6369        M 0x80001438 add     a4, a1, a4             #; a1  = 0x80002e54, a4  = 5, (wrb) a4  <-- 0x80002e59
       0     6370        M 0x8000143c sb      a0, 72(a4)             #; a4  = 0x80002e59, 115 ~~> Byte[0x80002ea1]
       0     6371        M 0x80001440 lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
       0     6392        M                                           #; (lsu) a4  <-- 6
       0     6393        M 0x80001444 addi    a4, a4, -1020          #; a4  = 6, (wrb) a4  <-- -1014
       0     6394        M 0x80001448 snez    a4, a4                 #; a4  = -1014, (wrb) a4  <-- 1
       0     6395        M 0x8000144c addi    a0, a0, -10            #; a0  = 115, (wrb) a0  <-- 105
       0     6396        M 0x80001450 snez    a0, a0                 #; a0  = 105, (wrb) a0  <-- 1
       0     6397        M 0x80001454 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     6398        M 0x80001458 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800014b8
       0     6401        M 0x800014b8 ret                            #; ra  = 0x800008c8, goto 0x800008c8
       0     6406        M 0x800008c8 addi    s0, s0, 1              #; s0  = 0x80002afa, (wrb) s0  <-- 0x80002afb
       0     6407        M 0x800008cc addi    s10, s10, 1            #; s10 = 0x80002afc, (wrb) s10 <-- 0x80002afd
       0     6409        M 0x800008d0 mv      s9, s1                 #; s1  = 6, (wrb) s9  <-- 6
       0     6410        M 0x800008d4 lbu     a0, 0(s0)              #; s0  = 0x80002afb, a0  <~~ Byte[0x80002afb]
       0     6421        M                                           #; (lsu) a0  <-- 32
       0     6422        M 0x800008d8 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x800008b0
       0     6423        M 0x800008b0 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     6424        M 0x800008b4 addi    s1, s9, 1              #; s9  = 6, (wrb) s1  <-- 7
       0     6425        M 0x800008b8 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     6426        M 0x800008bc mv      a2, s9                 #; s9  = 6, (wrb) a2  <-- 6
       0     6427        M 0x800008c0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     6428        M 0x800008c4 jalr    s2                     #; s2  = 0x80001410, (wrb) ra  <-- 0x800008c8, goto 0x80001410
       0     6431        M 0x80001410 beqz    a0, pc + 168           #; a0  = 32, not taken
       0     6432        M 0x80001414 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6433        M 0x80001418 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     6434        M 0x8000141c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     6435        M 0x80001420 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003420
       0     6436        M 0x80001424 addi    a3, a3, -1484          #; a3  = 0x80003420, (wrb) a3  <-- 0x80002e54
       0     6437        M                                           #; (acc) a1  <-- 0x00d605b3
       0     6438        M 0x80001428 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002e54, (wrb) a1  <-- 0x80002e54
       0     6439        M 0x8000142c lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
       0     6450        M                                           #; (lsu) a4  <-- 6
       0     6451        M 0x80001430 addi    a5, a4, 1              #; a4  = 6, (wrb) a5  <-- 7
       0     6452        M 0x80001434 sw      a5, 0(a1)              #; a1  = 0x80002e54, 7 ~~> Word[0x80002e54]
       0     6453        M 0x80001438 add     a4, a1, a4             #; a1  = 0x80002e54, a4  = 6, (wrb) a4  <-- 0x80002e5a
       0     6454        M 0x8000143c sb      a0, 72(a4)             #; a4  = 0x80002e5a, 32 ~~> Byte[0x80002ea2]
       0     6455        M 0x80001440 lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
       0     6476        M                                           #; (lsu) a4  <-- 7
       0     6477        M 0x80001444 addi    a4, a4, -1020          #; a4  = 7, (wrb) a4  <-- -1013
       0     6478        M 0x80001448 snez    a4, a4                 #; a4  = -1013, (wrb) a4  <-- 1
       0     6479        M 0x8000144c addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
       0     6480        M 0x80001450 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
       0     6481        M 0x80001454 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     6482        M 0x80001458 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800014b8
       0     6485        M 0x800014b8 ret                            #; ra  = 0x800008c8, goto 0x800008c8
       0     6490        M 0x800008c8 addi    s0, s0, 1              #; s0  = 0x80002afb, (wrb) s0  <-- 0x80002afc
       0     6491        M 0x800008cc addi    s10, s10, 1            #; s10 = 0x80002afd, (wrb) s10 <-- 0x80002afe
       0     6493        M 0x800008d0 mv      s9, s1                 #; s1  = 7, (wrb) s9  <-- 7
       0     6494        M 0x800008d4 lbu     a0, 0(s0)              #; s0  = 0x80002afc, a0  <~~ Byte[0x80002afc]
       0     6505        M                                           #; (lsu) a0  <-- 61
       0     6506        M 0x800008d8 bnez    a0, pc - 40            #; a0  = 61, taken, goto 0x800008b0
       0     6507        M 0x800008b0 beq     a0, s6, pc + 48        #; a0  = 61, s6  = 37, not taken
       0     6508        M 0x800008b4 addi    s1, s9, 1              #; s9  = 7, (wrb) s1  <-- 8
       0     6509        M 0x800008b8 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     6510        M 0x800008bc mv      a2, s9                 #; s9  = 7, (wrb) a2  <-- 7
       0     6511        M 0x800008c0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     6512        M 0x800008c4 jalr    s2                     #; s2  = 0x80001410, (wrb) ra  <-- 0x800008c8, goto 0x80001410
       0     6515        M 0x80001410 beqz    a0, pc + 168           #; a0  = 61, not taken
       0     6516        M 0x80001414 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6517        M 0x80001418 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     6518        M 0x8000141c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     6519        M 0x80001420 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003420
       0     6520        M 0x80001424 addi    a3, a3, -1484          #; a3  = 0x80003420, (wrb) a3  <-- 0x80002e54
       0     6521        M                                           #; (acc) a1  <-- 0x00d605b3
       0     6522        M 0x80001428 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002e54, (wrb) a1  <-- 0x80002e54
       0     6523        M 0x8000142c lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
       0     6534        M                                           #; (lsu) a4  <-- 7
       0     6535        M 0x80001430 addi    a5, a4, 1              #; a4  = 7, (wrb) a5  <-- 8
       0     6536        M 0x80001434 sw      a5, 0(a1)              #; a1  = 0x80002e54, 8 ~~> Word[0x80002e54]
       0     6537        M 0x80001438 add     a4, a1, a4             #; a1  = 0x80002e54, a4  = 7, (wrb) a4  <-- 0x80002e5b
       0     6538        M 0x8000143c sb      a0, 72(a4)             #; a4  = 0x80002e5b, 61 ~~> Byte[0x80002ea3]
       0     6539        M 0x80001440 lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
       0     6560        M                                           #; (lsu) a4  <-- 8
       0     6561        M 0x80001444 addi    a4, a4, -1020          #; a4  = 8, (wrb) a4  <-- -1012
       0     6562        M 0x80001448 snez    a4, a4                 #; a4  = -1012, (wrb) a4  <-- 1
       0     6563        M 0x8000144c addi    a0, a0, -10            #; a0  = 61, (wrb) a0  <-- 51
       0     6564        M 0x80001450 snez    a0, a0                 #; a0  = 51, (wrb) a0  <-- 1
       0     6565        M 0x80001454 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     6566        M 0x80001458 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800014b8
       0     6569        M 0x800014b8 ret                            #; ra  = 0x800008c8, goto 0x800008c8
       0     6574        M 0x800008c8 addi    s0, s0, 1              #; s0  = 0x80002afc, (wrb) s0  <-- 0x80002afd
       0     6575        M 0x800008cc addi    s10, s10, 1            #; s10 = 0x80002afe, (wrb) s10 <-- 0x80002aff
       0     6577        M 0x800008d0 mv      s9, s1                 #; s1  = 8, (wrb) s9  <-- 8
       0     6578        M 0x800008d4 lbu     a0, 0(s0)              #; s0  = 0x80002afd, a0  <~~ Byte[0x80002afd]
       0     6589        M                                           #; (lsu) a0  <-- 32
       0     6590        M 0x800008d8 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x800008b0
       0     6591        M 0x800008b0 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     6592        M 0x800008b4 addi    s1, s9, 1              #; s9  = 8, (wrb) s1  <-- 9
       0     6593        M 0x800008b8 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     6594        M 0x800008bc mv      a2, s9                 #; s9  = 8, (wrb) a2  <-- 8
       0     6595        M 0x800008c0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     6596        M 0x800008c4 jalr    s2                     #; s2  = 0x80001410, (wrb) ra  <-- 0x800008c8, goto 0x80001410
       0     6599        M 0x80001410 beqz    a0, pc + 168           #; a0  = 32, not taken
       0     6600        M 0x80001414 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6601        M 0x80001418 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     6602        M 0x8000141c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     6603        M 0x80001420 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003420
       0     6604        M 0x80001424 addi    a3, a3, -1484          #; a3  = 0x80003420, (wrb) a3  <-- 0x80002e54
       0     6605        M                                           #; (acc) a1  <-- 0x00d605b3
       0     6606        M 0x80001428 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002e54, (wrb) a1  <-- 0x80002e54
       0     6607        M 0x8000142c lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
       0     6618        M                                           #; (lsu) a4  <-- 8
       0     6619        M 0x80001430 addi    a5, a4, 1              #; a4  = 8, (wrb) a5  <-- 9
       0     6620        M 0x80001434 sw      a5, 0(a1)              #; a1  = 0x80002e54, 9 ~~> Word[0x80002e54]
       0     6621        M 0x80001438 add     a4, a1, a4             #; a1  = 0x80002e54, a4  = 8, (wrb) a4  <-- 0x80002e5c
       0     6622        M 0x8000143c sb      a0, 72(a4)             #; a4  = 0x80002e5c, 32 ~~> Byte[0x80002ea4]
       0     6623        M 0x80001440 lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
       0     6644        M                                           #; (lsu) a4  <-- 9
       0     6645        M 0x80001444 addi    a4, a4, -1020          #; a4  = 9, (wrb) a4  <-- -1011
       0     6646        M 0x80001448 snez    a4, a4                 #; a4  = -1011, (wrb) a4  <-- 1
       0     6647        M 0x8000144c addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
       0     6648        M 0x80001450 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
       0     6649        M 0x80001454 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     6650        M 0x80001458 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800014b8
       0     6653        M 0x800014b8 ret                            #; ra  = 0x800008c8, goto 0x800008c8
       0     6658        M 0x800008c8 addi    s0, s0, 1              #; s0  = 0x80002afd, (wrb) s0  <-- 0x80002afe
       0     6659        M 0x800008cc addi    s10, s10, 1            #; s10 = 0x80002aff, (wrb) s10 <-- 0x80002b00
       0     6661        M 0x800008d0 mv      s9, s1                 #; s1  = 9, (wrb) s9  <-- 9
       0     6662        M 0x800008d4 lbu     a0, 0(s0)              #; s0  = 0x80002afe, a0  <~~ Byte[0x80002afe]
       0     6673        M                                           #; (lsu) a0  <-- 37
       0     6674        M 0x800008d8 bnez    a0, pc - 40            #; a0  = 37, taken, goto 0x800008b0
       0     6675        M 0x800008b0 beq     a0, s6, pc + 48        #; a0  = 37, s6  = 37, taken, goto 0x800008e0
       0     6687        M 0x800008e0 li      s0, 0                  #; (wrb) s0  <-- 0
       0     6688        M 0x800008e4 j       pc + 0x10              #; goto 0x800008f4
       0     6699        M 0x800008f4 lbu     a0, -1(s10)            #; s10 = 0x80002b00, a0  <~~ Byte[0x80002aff]
       0     6710        M                                           #; (lsu) a0  <-- 102
       0     6711        M 0x800008f8 addi    a1, a0, -32            #; a0  = 102, (wrb) a1  <-- 70
       0     6712        M 0x800008fc bltu    s11, a1, pc + 56       #; s11 = 16, a1  = 70, taken, goto 0x80000934
       0     6724        M 0x80000934 addi    a1, a0, -48            #; a0  = 102, (wrb) a1  <-- 54
       0     6725        M 0x80000938 andi    a2, a1, 255            #; a1  = 54, (wrb) a2  <-- 54
       0     6726        M 0x8000093c addi    a1, s10, -1            #; s10 = 0x80002b00, (wrb) a1  <-- 0x80002aff
       0     6736        M 0x80000940 li      a3, 9                  #; (wrb) a3  <-- 9
       0     6737        M 0x80000944 bltu    a3, a2, pc + 124       #; a3  = 9, a2  = 54, taken, goto 0x800009c0
       0     6759        M 0x800009c0 li      a2, 42                 #; (wrb) a2  <-- 42
       0     6760        M 0x800009c4 bne     a0, a2, pc + 80        #; a0  = 102, a2  = 42, taken, goto 0x80000a14
       0     6782        M 0x80000a14 li      s6, 0                  #; (wrb) s6  <-- 0
       0     6783        M 0x80000a18 mv      s10, a1                #; a1  = 0x80002aff, (wrb) s10 <-- 0x80002aff
       0     6784        M 0x80000a1c beq     a0, s7, pc - 164       #; a0  = 102, s7  = 46, not taken
       0     6805        M 0x80000a20 li      s7, 0                  #; (wrb) s7  <-- 0
       0     6806        M 0x80000a24 j       pc + 0xc               #; goto 0x80000a30
       0     6817        M 0x80000a30 addi    a1, a0, -104           #; a0  = 102, (wrb) a1  <-- -2
       0     6818        M 0x80000a34 srli    a2, a1, 1              #; a1  = -2, (wrb) a2  <-- 0x7fffffff
       0     6819        M 0x80000a38 slli    a1, a1, 31             #; a1  = -2, (wrb) a1  <-- 0
       0     6820        M 0x80000a3c or      a1, a1, a2             #; a1  = 0, a2  = 0x7fffffff, (wrb) a1  <-- 0x7fffffff
       0     6829        M 0x80000a40 li      a2, 9                  #; (wrb) a2  <-- 9
       0     6830        M 0x80000a44 bltu    a2, a1, pc + 100       #; a2  = 9, a1  = 0x7fffffff, taken, goto 0x80000aa8
       0     6852        M 0x80000aa8 addi    a1, a0, -37            #; a0  = 102, (wrb) a1  <-- 65
       0     6853        M 0x80000aac li      a2, 83                 #; (wrb) a2  <-- 83
       0     6864        M 0x80000ab0 bltu    a2, a1, pc + 264       #; a2  = 83, a1  = 65, not taken
       0     6865        M 0x80000ab4 slli    a1, a1, 2              #; a1  = 65, (wrb) a1  <-- 260
       0     6866        M 0x80000ab8 auipc   a2, 0x2                #; (wrb) a2  <-- 0x80002ab8
       0     6867        M 0x80000abc addi    a2, a2, 200            #; a2  = 0x80002ab8, (wrb) a2  <-- 0x80002b80
       0     6876        M 0x80000ac0 add     a1, a1, a2             #; a1  = 260, a2  = 0x80002b80, (wrb) a1  <-- 0x80002c84
       0     6877        M 0x80000ac4 lw      a2, 0(a1)              #; a1  = 0x80002c84, a2  <~~ Word[0x80002c84]
       0     6878        M 0x80000ac8 li      a1, 8                  #; (wrb) a1  <-- 8
       0     6879        M 0x80000acc li      s8, 16                 #; (wrb) s8  <-- 16
       0     6888        M                                           #; (lsu) a2  <-- 0x80000b00
       0     6889        M 0x80000ad0 jr      a2                     #; a2  = 0x80000b00, goto 0x80000b00
       0     6911        M 0x80000b00 li      a1, 70                 #; (wrb) a1  <-- 70
       0     6912        M 0x80000b04 bne     a0, a1, pc + 8         #; a0  = 102, a1  = 70, taken, goto 0x80000b0c
       0     6913        M 0x80000b0c addi    a0, s3, 7              #; s3  = 0x0011ff24, (wrb) a0  <-- 0x0011ff2b
       0     6923        M 0x80000b10 andi    a0, a0, -8             #; a0  = 0x0011ff2b, (wrb) a0  <-- 0x0011ff28
       0     6925        M 0x80000b18 addi    s3, a0, 8              #; a0  = 0x0011ff28, (wrb) s3  <-- 0x0011ff30
       0     6926        M 0x80000b1c mv      a0, s2                 #; s2  = 0x80001410, (wrb) a0  <-- 0x80001410
                         M 0x80000b14 fld     fa0, 0(a0)             #; fa0  <~~ Doub[0x0011ff28]
       0     6927        M                                           #; (f:lsu) fa0  <-- 0.0000000
       0     6935        M 0x80000b20 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     6936        M 0x80000b24 mv      a2, s9                 #; s9  = 9, (wrb) a2  <-- 9
       0     6937        M 0x80000b28 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     6938        M 0x80000b2c mv      a4, s7                 #; s7  = 0, (wrb) a4  <-- 0
       0     6947        M 0x80000b30 mv      a5, s6                 #; s6  = 0, (wrb) a5  <-- 0
       0     6948        M 0x80000b34 mv      a6, s0                 #; s0  = 0, (wrb) a6  <-- 0
       0     6949        M 0x80000b38 auipc   ra, 0x1                #; (wrb) ra  <-- 0x80001b38
       0     6950        M 0x80000b3c jalr    ra, ra, -1656          #; ra  = 0x80001b38, (wrb) ra  <-- 0x80000b40, goto 0x800014c0
       0     6961        M 0x800014c0 addi    sp, sp, -112           #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011fe30
       0     6962        M 0x800014c4 sw      ra, 108(sp)            #; sp  = 0x0011fe30, 0x80000b40 ~~> Word[0x0011fe9c]
       0     6963        M 0x800014c8 sw      s0, 104(sp)            #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe98]
       0     6964        M 0x800014cc sw      s1, 100(sp)            #; sp  = 0x0011fe30, 9 ~~> Word[0x0011fe94]
       0     6973        M 0x800014d0 sw      s2, 96(sp)             #; sp  = 0x0011fe30, 0x80001410 ~~> Word[0x0011fe90]
       0     6974        M 0x800014d4 sw      s3, 92(sp)             #; sp  = 0x0011fe30, 0x0011ff30 ~~> Word[0x0011fe8c]
       0     6975        M 0x800014d8 sw      s4, 88(sp)             #; sp  = 0x0011fe30, 0x0011ff17 ~~> Word[0x0011fe88]
       0     6976        M 0x800014dc sw      s5, 84(sp)             #; sp  = 0x0011fe30, -1 ~~> Word[0x0011fe84]
       0     6985        M 0x800014e0 sw      s6, 80(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe80]
       0     6986        M 0x800014e4 sw      s7, 76(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe7c]
       0     6987        M 0x800014e8 sw      s8, 72(sp)             #; sp  = 0x0011fe30, 16 ~~> Word[0x0011fe78]
       0     6988        M 0x800014ec sw      s9, 68(sp)             #; sp  = 0x0011fe30, 9 ~~> Word[0x0011fe74]
       0     6997        M 0x800014f0 sw      s10, 64(sp)            #; sp  = 0x0011fe30, 0x80002aff ~~> Word[0x0011fe70]
       0     7000        M 0x800014f4 fsd     fs0, 56(sp)            #; 2850.0 ~~> Doub[0x0011fe68]
       0     7001        M 0x800014f8 fsd     fs1, 48(sp)            #; 0.0 ~~> Doub[0x0011fe60]
       0     7002        M 0x800014fc fsd     fs2, 40(sp)            #; 0.0 ~~> Doub[0x0011fe58]
       0     7009        M 0x80001500 auipc   s1, 0x2                #; (wrb) s1  <-- 0x80003500
       0     7010        M 0x80001504 addi    s1, s1, -1880          #; s1  = 0x80003500, (wrb) s1  <-- 0x80002da8
       0     7013        M 0x80001508 fld     ft0, 0(s1)             #; ft0  <~~ Doub[0x80002da8]
       0     7021        M 0x80001510 mv      s5, a6                 #; a6  = 0, (wrb) s5  <-- 0
       0     7022        M 0x80001514 mv      s2, a5                 #; a5  = 0, (wrb) s2  <-- 0
                         M                                           #; (f:lsu) ft0  <-- -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     7023        M 0x80001518 mv      s3, a3                 #; a3  = -1, (wrb) s3  <-- -1
                         M 0x8000150c fle.d   s1, ft0, fa0           #; ft0  = -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000, fa0  = 0.0000000
       0     7024        M 0x8000151c mv      s4, a2                 #; a2  = 9, (wrb) s4  <-- 9
       0     7033        M 0x80001520 mv      s6, a1                 #; a1  = 0x0011ff17, (wrb) s6  <-- 0x0011ff17
       0     7034        M 0x80001524 mv      s7, a0                 #; a0  = 0x80001410, (wrb) s7  <-- 0x80001410
       0     7035        M 0x80001528 bnez    s1, pc + 240           #; s1  = 1, taken, goto 0x80001618
       0     7057        M 0x8000161c auipc   a0, 0x1                #; (wrb) a0  <-- 0x8000261c
       0     7058        M 0x80001618 fsgnj.d fs0, fa0, fa0          #; fa0  = 0.0000000, fa0  = 0.0000000
       0     7059        M                                           #; (f:fpu) fs0  <-- 0.0000000
       0     7068        M 0x80001620 addi    a0, a0, 1940           #; a0  = 0x8000261c, (wrb) a0  <-- 0x80002db0
       0     7071        M 0x80001624 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002db0]
       0     7080        M                                           #; (f:lsu) ft0  <-- 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     7081        M 0x80001628 fle.d   a0, fa0, ft0           #; fa0  = 0.0000000, ft0  = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     7083        M                                           #; (acc) t3  <-- 0x00051e63
       0     7084        M 0x8000162c bnez    a0, pc + 28            #; a0  = 1, taken, goto 0x80001648
       0     7096        M 0x80001648 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002648
       0     7097        M 0x8000164c addi    a0, a0, 1904           #; a0  = 0x80002648, (wrb) a0  <-- 0x80002db8
       0     7109        M 0x80001654 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002654
       0     7110        M 0x80001658 addi    a0, a0, 1900           #; a0  = 0x80002654, (wrb) a0  <-- 0x80002dc0
                         M 0x80001650 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002db8]
       0     7113        M 0x8000165c fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80002dc0]
       0     7119        M                                           #; (f:lsu) ft0  <-- 1000000000.0000000
       0     7121        M 0x80001660 fle.d   a0, fs0, ft0           #; fs0  = 0.0000000, ft0  = 1000000000.0000000
       0     7122        M                                           #; (f:lsu) ft1  <-- -1000000000.0000000
       0     7123        M                                           #; (acc) a0  <-- 0x00b57533
                         M 0x80001664 fle.d   a1, ft1, fs0           #; ft1  = -1000000000.0000000, fs0  = 0.0000000
       0     7125        M                                           #; (acc) a0  <-- 0x00b57533
       0     7126        M 0x80001668 and     a0, a0, a1             #; a0  = 1, a1  = 1, (wrb) a0  <-- 1
       0     7127        M 0x8000166c bnez    a0, pc + 252           #; a0  = 1, taken, goto 0x80001768
       0     7143        M 0x80001768 andi    a0, s5, 1024           #; s5  = 0, (wrb) a0  <-- 0
       0     7144        M 0x8000176c li      s8, 6                  #; (wrb) s8  <-- 6
       0     7155        M 0x80001770 beqz    a0, pc + 8             #; a0  = 0, taken, goto 0x80001778
       0     7156        M 0x80001778 li      a0, 10                 #; (wrb) a0  <-- 10
       0     7159        M 0x8000177c fsgnjx.d fs2, fs0, fs0         #; fs0  = 0.0000000, fs0  = 0.0000000
       0     7160        M                                           #; (f:fpu) fs2  <-- 0.0000000
       0     7167        M 0x80001780 bltu    s8, a0, pc + 56        #; s8  = 6, a0  = 10, taken, goto 0x800017b8
       0     7190        M 0x800017b8 li      s0, 0                  #; (wrb) s0  <-- 0
       0     7191        M 0x800017bc slli    a0, s8, 3              #; s8  = 6, (wrb) a0  <-- 48
       0     7202        M 0x800017c0 auipc   a1, 0x1                #; (wrb) a1  <-- 0x800027c0
       0     7203        M 0x800017c4 addi    a1, a1, 1296           #; a1  = 0x800027c0, (wrb) a1  <-- 0x80002cd0
       0     7204        M 0x800017c8 add     a0, a0, a1             #; a0  = 48, a1  = 0x80002cd0, (wrb) a0  <-- 0x80002d00
       0     7207        M 0x800017cc fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80002d00]
       0     7215        M 0x800017d0 fcvt.w.d s1, fs2               #; fs2  = 0.0000000
       0     7216        M                                           #; (f:lsu) ft1  <-- 1000000.0000000
       0     7219        M 0x800017d4 fcvt.d.w ft0, s1               #; ac1  = 0
       0     7220        M                                           #; (f:fpu) ft0  <-- 0.0
       0     7221        M 0x800017d8 fsub.d  ft0, fs2, ft0          #; fs2  = 0.0000000, ft0  = 0.0
       0     7224        M                                           #; (f:fpu) ft0  <-- 0.0000000
       0     7225        M 0x800017dc fmul.d  ft2, ft1, ft0          #; ft1  = 1000000.0000000, ft0  = 0.0000000
       0     7226        M 0x800017e0 auipc   a0, 0x1                #; (wrb) a0  <-- 0x800027e0
       0     7227        M 0x800017e4 addi    a0, a0, 1512           #; a0  = 0x800027e0, (wrb) a0  <-- 0x80002dc8
       0     7228        M                                           #; (f:fpu) ft2  <-- 0.0000000
       0     7230        M 0x800017e8 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002dc8]
       0     7231        M 0x800017ec fcvt.wu.d a0, ft2              #; ft2  = 0.0000000
       0     7239        M 0x800017f0 fcvt.d.wu ft3, a0              #; ac1  = 0, (f:lsu) ft0  <-- 0.5
       0     7240        M                                           #; (f:fpu) ft3  <-- 0.0
       0     7241        M 0x800017f4 fsub.d  ft2, ft2, ft3          #; ft2  = 0.0000000, ft3  = 0.0
       0     7244        M                                           #; (f:fpu) ft2  <-- 0.0000000
       0     7245        M 0x800017f8 fle.d   a1, ft2, ft0           #; ft2  = 0.0000000, ft0  = 0.5
       0     7248        M 0x800017fc bnez    a1, pc + 32            #; a1  = 1, taken, goto 0x8000181c
       0     7262        M 0x8000181c flt.d   a1, ft2, ft0           #; ft2  = 0.0000000, ft0  = 0.5
       0     7273        M 0x80001820 bnez    a1, pc + 20            #; a1  = 1, taken, goto 0x80001834
       0     7286        M 0x80001838 beqz    s8, pc + 216           #; s8  = 6, not taken
                         M 0x80001834 fcvt.d.w fs1, zero             #; ac1  = 0
       0     7287        M 0x8000183c li      a2, 0                  #; (wrb) a2  <-- 0
                         M                                           #; (f:fpu) fs1  <-- 0.0
       0     7297        M 0x80001840 addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
       0     7298        M 0x80001844 add     t1, a1, s0             #; a1  = 0x0011fe38, s0  = 0, (wrb) t1  <-- 0x0011fe38
       0     7299        M 0x80001848 li      t0, 32                 #; (wrb) t0  <-- 32
       0     7300        M 0x8000184c sub     a4, t0, s0             #; t0  = 32, s0  = 0, (wrb) a4  <-- 32
       0     7309        M 0x80001850 lui     a1, 0xccccd            #; (wrb) a1  <-- 0xccccd000
       0     7310        M 0x80001854 addi    t2, a1, -819           #; a1  = 0xccccd000, (wrb) t2  <-- 0xcccccccd
       0     7311        M 0x80001858 li      a6, 10                 #; (wrb) a6  <-- 10
       0     7312        M 0x8000185c li      a7, 9                  #; (wrb) a7  <-- 9
       0     7321        M 0x80001860 beq     a4, a2, pc + 200       #; a4  = 32, a2  = 0, not taken
       0     7322        M 0x80001864 mv      a1, a0                 #; a0  = 0, (wrb) a1  <-- 0
       0     7323        M 0x80001868 mulhu   a0, a0, t2             #; a0  = 0, t2  = 0xcccccccd
       0     7326        M                                           #; (acc) a0  <-- 0x00355513
       0     7327        M 0x8000186c srli    a0, a0, 3              #; a0  = 0, (wrb) a0  <-- 0
       0     7333        M 0x80001870 mul     a3, a0, a6             #; a0  = 0, a6  = 10
       0     7336        M                                           #; (acc) a3  <-- 0x40d586b3
       0     7337        M 0x80001874 sub     a3, a1, a3             #; a1  = 0, a3  = 0, (wrb) a3  <-- 0
       0     7338        M 0x80001878 ori     a3, a3, 48             #; a3  = 0, (wrb) a3  <-- 48
       0     7339        M 0x8000187c add     a5, t1, a2             #; t1  = 0x0011fe38, a2  = 0, (wrb) a5  <-- 0x0011fe38
       0     7345        M 0x80001880 sb      a3, 0(a5)              #; a5  = 0x0011fe38, 48 ~~> Byte[0x0011fe38]
       0     7346        M 0x80001884 addi    a2, a2, 1              #; a2  = 0, (wrb) a2  <-- 1
       0     7347        M 0x80001888 bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 0, not taken
       0     7348        M 0x8000188c add     a0, s0, a2             #; s0  = 0, a2  = 1, (wrb) a0  <-- 1
       0     7360        M 0x80001890 addi    a1, a0, -1             #; a0  = 1, (wrb) a1  <-- 0
       0     7361        M 0x80001894 li      a3, 30                 #; (wrb) a3  <-- 30
       0     7362        M 0x80001898 sltu    a3, a3, a1             #; a3  = 30, a1  = 0, (wrb) a3  <-- 0
       0     7363        M 0x8000189c xor     a4, s8, a2             #; s8  = 6, a2  = 1, (wrb) a4  <-- 7
       0     7372        M 0x800018a0 seqz    a4, a4                 #; a4  = 7, (wrb) a4  <-- 0
       0     7373        M 0x800018a4 or      a3, a3, a4             #; a3  = 0, a4  = 0, (wrb) a3  <-- 0
       0     7374        M 0x800018a8 bnez    a3, pc + 136           #; a3  = 0, not taken
       0     7375        M 0x800018ac addi    a0, sp, 8              #; sp  = 0x0011fe30, (wrb) a0  <-- 0x0011fe38
       0     7384        M 0x800018b0 add     a0, a0, s0             #; a0  = 0x0011fe38, s0  = 0, (wrb) a0  <-- 0x0011fe38
       0     7385        M 0x800018b4 not     a1, a2                 #; a2  = 1, (wrb) a1  <-- -2
       0     7386        M 0x800018b8 add     s8, a1, s8             #; a1  = -2, s8  = 6, (wrb) s8  <-- 4
       0     7387        M 0x800018bc add     s0, s0, a2             #; s0  = 0, a2  = 1, (wrb) s0  <-- 1
       0     7396        M 0x800018c0 li      a1, 31                 #; (wrb) a1  <-- 31
       0     7397        M 0x800018c4 sub     a3, a1, s0             #; a1  = 31, s0  = 1, (wrb) a3  <-- 30
       0     7398        M 0x800018c8 add     a0, a0, a2             #; a0  = 0x0011fe38, a2  = 1, (wrb) a0  <-- 0x0011fe39
       0     7399        M 0x800018cc mv      a1, s8                 #; s8  = 4, (wrb) a1  <-- 4
       0     7408        M 0x800018d0 bltu    s8, a3, pc + 8         #; s8  = 4, a3  = 30, taken, goto 0x800018d8
       0     7409        M 0x800018d8 addi    a2, a1, 1              #; a1  = 4, (wrb) a2  <-- 5
       0     7410        M 0x800018dc li      a1, 48                 #; (wrb) a1  <-- 48
       0     7420        M 0x800018e0 auipc   ra, 0xfffff            #; (wrb) ra  <-- 0x800008e0
       0     7421        M 0x800018e4 jalr    ra, ra, -904           #; ra  = 0x800008e0, (wrb) ra  <-- 0x800018e8, goto 0x80000558
       0     7443        M 0x80000558 li      t1, 15                 #; (wrb) t1  <-- 15
       0     7444        M 0x8000055c mv      a4, a0                 #; a0  = 0x0011fe39, (wrb) a4  <-- 0x0011fe39
       0     7455        M 0x80000560 bgeu    t1, a2, pc + 60        #; t1  = 15, a2  = 5, taken, goto 0x8000059c
       0     7478        M 0x8000059c sub     a3, t1, a2             #; t1  = 15, a2  = 5, (wrb) a3  <-- 10
       0     7490        M 0x800005a0 slli    a3, a3, 2              #; a3  = 10, (wrb) a3  <-- 40
       0     7491        M 0x800005a4 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800005a4
       0     7492        M 0x800005a8 add     a3, a3, t0             #; a3  = 40, t0  = 0x800005a4, (wrb) a3  <-- 0x800005cc
       0     7493        M 0x800005ac jalr    zero, a3, 12           #; a3  = 0x800005cc, goto 0x800005d8
       0     7513        M 0x800005d8 sb      a1, 4(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3d]
       0     7514        M 0x800005dc sb      a1, 3(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3c]
       0     7525        M 0x800005e0 sb      a1, 2(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3b]
       0     7526        M 0x800005e4 sb      a1, 1(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3a]
       0     7527        M 0x800005e8 sb      a1, 0(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe39]
       0     7528        M 0x800005ec ret                            #; ra  = 0x800018e8, goto 0x800018e8
       0     7539        M 0x800018e8 li      a0, 0                  #; (wrb) a0  <-- 0
       0     7540        M 0x800018ec add     a1, s0, a0             #; s0  = 1, a0  = 0, (wrb) a1  <-- 1
       0     7542        M 0x800018f0 sltiu   a1, a1, 31             #; a1  = 1, (wrb) a1  <-- 1
       0     7543        M 0x800018f4 xor     a2, s8, a0             #; s8  = 4, a0  = 0, (wrb) a2  <-- 4
       0     7544        M 0x800018f8 snez    a2, a2                 #; a2  = 4, (wrb) a2  <-- 1
       0     7545        M 0x800018fc and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     7554        M 0x80001900 addi    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0     7555        M 0x80001904 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x800018ec
       0     7556        M 0x800018ec add     a1, s0, a0             #; s0  = 1, a0  = 1, (wrb) a1  <-- 2
       0     7557        M 0x800018f0 sltiu   a1, a1, 31             #; a1  = 2, (wrb) a1  <-- 1
       0     7558        M 0x800018f4 xor     a2, s8, a0             #; s8  = 4, a0  = 1, (wrb) a2  <-- 5
       0     7559        M 0x800018f8 snez    a2, a2                 #; a2  = 5, (wrb) a2  <-- 1
       0     7560        M 0x800018fc and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     7561        M 0x80001900 addi    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 2
       0     7562        M 0x80001904 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x800018ec
       0     7563        M 0x800018ec add     a1, s0, a0             #; s0  = 1, a0  = 2, (wrb) a1  <-- 3
       0     7564        M 0x800018f0 sltiu   a1, a1, 31             #; a1  = 3, (wrb) a1  <-- 1
       0     7565        M 0x800018f4 xor     a2, s8, a0             #; s8  = 4, a0  = 2, (wrb) a2  <-- 6
       0     7566        M 0x800018f8 snez    a2, a2                 #; a2  = 6, (wrb) a2  <-- 1
       0     7567        M 0x800018fc and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     7568        M 0x80001900 addi    a0, a0, 1              #; a0  = 2, (wrb) a0  <-- 3
       0     7569        M 0x80001904 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x800018ec
       0     7570        M 0x800018ec add     a1, s0, a0             #; s0  = 1, a0  = 3, (wrb) a1  <-- 4
       0     7571        M 0x800018f0 sltiu   a1, a1, 31             #; a1  = 4, (wrb) a1  <-- 1
       0     7572        M 0x800018f4 xor     a2, s8, a0             #; s8  = 4, a0  = 3, (wrb) a2  <-- 7
       0     7573        M 0x800018f8 snez    a2, a2                 #; a2  = 7, (wrb) a2  <-- 1
       0     7574        M 0x800018fc and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     7575        M 0x80001900 addi    a0, a0, 1              #; a0  = 3, (wrb) a0  <-- 4
       0     7576        M 0x80001904 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x800018ec
       0     7577        M 0x800018ec add     a1, s0, a0             #; s0  = 1, a0  = 4, (wrb) a1  <-- 5
       0     7578        M 0x800018f0 sltiu   a1, a1, 31             #; a1  = 5, (wrb) a1  <-- 1
       0     7579        M 0x800018f4 xor     a2, s8, a0             #; s8  = 4, a0  = 4, (wrb) a2  <-- 0
       0     7580        M 0x800018f8 snez    a2, a2                 #; a2  = 0, (wrb) a2  <-- 0
       0     7581        M 0x800018fc and     a2, a1, a2             #; a1  = 1, a2  = 0, (wrb) a2  <-- 0
       0     7582        M 0x80001900 addi    a0, a0, 1              #; a0  = 4, (wrb) a0  <-- 5
       0     7583        M 0x80001904 bnez    a2, pc - 24            #; a2  = 0, not taken
       0     7584        M 0x80001908 add     a0, s0, a0             #; s0  = 1, a0  = 5, (wrb) a0  <-- 6
       0     7585        M 0x8000190c j       pc + 0x28              #; goto 0x80001934
       0     7596        M 0x80001934 beqz    a1, pc + 28            #; a1  = 1, not taken
       0     7597        M 0x80001938 addi    s0, a0, 1              #; a0  = 6, (wrb) s0  <-- 7
       0     7598        M 0x8000193c addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
       0     7608        M 0x80001940 add     a0, a1, a0             #; a1  = 0x0011fe38, a0  = 6, (wrb) a0  <-- 0x0011fe3e
       0     7609        M 0x80001944 li      a1, 46                 #; (wrb) a1  <-- 46
       0     7610        M 0x80001948 sb      a1, 0(a0)              #; a0  = 0x0011fe3e, 46 ~~> Byte[0x0011fe3e]
       0     7611        M 0x8000194c j       pc + 0x8               #; goto 0x80001954
       0     7620        M 0x80001954 li      a0, 32                 #; (wrb) a0  <-- 32
       0     7621        M 0x80001958 mv      t0, s0                 #; s0  = 7, (wrb) t0  <-- 7
       0     7622        M 0x8000195c bltu    a0, s0, pc + 8         #; a0  = 32, s0  = 7, not taken
       0     7632        M 0x80001960 li      t0, 32                 #; (wrb) t0  <-- 32
       0     7634        M 0x80001968 lui     a0, 0x66666            #; (wrb) a0  <-- 0x66666000
                         M 0x80001964 flt.d   s9, fs0, fs1           #; fs0  = 0.0000000, fs1  = 0.0
       0     7635        M 0x8000196c addi    a1, a0, 1639           #; a0  = 0x66666000, (wrb) a1  <-- 0x66666667
       0     7644        M 0x80001970 li      a6, 10                 #; (wrb) a6  <-- 10
       0     7645        M 0x80001974 addi    a3, sp, 8              #; sp  = 0x0011fe30, (wrb) a3  <-- 0x0011fe38
       0     7646        M 0x80001978 li      a4, 18                 #; (wrb) a4  <-- 18
       0     7647        M 0x8000197c beq     t0, s0, pc + 64        #; t0  = 32, s0  = 7, not taken
       0     7656        M 0x80001980 mulh    a0, s1, a1             #; s1  = 0, a1  = 0x66666667
       0     7659        M                                           #; (acc) a5  <-- 0x01f55793
       0     7660        M 0x80001984 srli    a5, a0, 31             #; a0  = 0, (wrb) a5  <-- 0
       0     7661        M 0x80001988 srai    a0, a0, 2              #; a0  = 0, (wrb) a0  <-- 0
       0     7662        M 0x8000198c add     a0, a0, a5             #; a0  = 0, a5  = 0, (wrb) a0  <-- 0
       0     7668        M 0x80001990 mul     a5, a0, a6             #; a0  = 0, a6  = 10
       0     7671        M                                           #; (acc) a5  <-- 0x40f487b3
       0     7672        M 0x80001994 sub     a5, s1, a5             #; s1  = 0, a5  = 0, (wrb) a5  <-- 0
       0     7673        M 0x80001998 addi    a5, a5, 48             #; a5  = 0, (wrb) a5  <-- 48
       0     7674        M 0x8000199c addi    s8, s0, 1              #; s0  = 7, (wrb) s8  <-- 8
       0     7680        M 0x800019a0 add     s0, a3, s0             #; a3  = 0x0011fe38, s0  = 7, (wrb) s0  <-- 0x0011fe3f
       0     7681        M 0x800019a4 addi    a2, s1, 9              #; s1  = 0, (wrb) a2  <-- 9
       0     7682        M 0x800019a8 sb      a5, 0(s0)              #; s0  = 0x0011fe3f, 48 ~~> Byte[0x0011fe3f]
       0     7683        M 0x800019ac mv      s0, s8                 #; s8  = 8, (wrb) s0  <-- 8
       0     7692        M 0x800019b0 mv      s1, a0                 #; a0  = 0, (wrb) s1  <-- 0
       0     7693        M 0x800019b4 bltu    a4, a2, pc - 56        #; a4  = 18, a2  = 9, not taken
       0     7694        M 0x800019b8 j       pc + 0x8               #; goto 0x800019c0
       0     7706        M 0x800019c0 andi    s1, s5, 3              #; s5  = 0, (wrb) s1  <-- 0
       0     7707        M 0x800019c4 li      a0, 1                  #; (wrb) a0  <-- 1
       0     7708        M 0x800019c8 bne     s1, a0, pc + 108       #; s1  = 0, a0  = 1, taken, goto 0x80001a34
       0     7729        M 0x80001a34 li      a0, 31                 #; (wrb) a0  <-- 31
       0     7730        M 0x80001a38 bltu    a0, s8, pc + 84        #; a0  = 31, s8  = 8, not taken
       0     7731        M 0x80001a3c beqz    s9, pc + 24            #; s9  = 0, taken, goto 0x80001a54
       0     7752        M 0x80001a54 andi    a0, s5, 4              #; s5  = 0, (wrb) a0  <-- 0
       0     7753        M 0x80001a58 bnez    a0, pc + 32            #; a0  = 0, not taken
       0     7754        M 0x80001a5c andi    a0, s5, 8              #; s5  = 0, (wrb) a0  <-- 0
       0     7764        M 0x80001a60 beqz    a0, pc + 44            #; a0  = 0, taken, goto 0x80001a8c
       0     7787        M 0x80001a8c snez    a0, s1                 #; s1  = 0, (wrb) a0  <-- 0
       0     7799        M 0x80001a90 sltu    a1, s8, s2             #; s8  = 8, s2  = 0, (wrb) a1  <-- 0
       0     7800        M 0x80001a94 xori    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
       0     7801        M 0x80001a98 or      a0, a0, a1             #; a0  = 0, a1  = 1, (wrb) a0  <-- 1
       0     7802        M 0x80001a9c andi    s5, s5, 2              #; s5  = 0, (wrb) s5  <-- 0
       0     7811        M 0x80001aa0 mv      s0, s4                 #; s4  = 9, (wrb) s0  <-- 9
       0     7812        M 0x80001aa4 bnez    a0, pc + 44            #; a0  = 1, taken, goto 0x80001ad0
       0     7834        M 0x80001ad0 srli    s5, s5, 1              #; s5  = 0, (wrb) s5  <-- 0
       0     7835        M 0x80001ad4 beqz    s8, pc + 56            #; s8  = 8, not taken
       0     7836        M 0x80001ad8 addi    s9, sp, 7              #; sp  = 0x0011fe30, (wrb) s9  <-- 0x0011fe37
       0     7837        M 0x80001adc add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 8, (wrb) a0  <-- 0x0011fe3f
       0     7846        M 0x80001ae0 lbu     a0, 0(a0)              #; a0  = 0x0011fe3f, a0  <~~ Byte[0x0011fe3f]
       0     7847        M 0x80001ae4 addi    s10, s8, -1            #; s8  = 8, (wrb) s10 <-- 7
       0     7848        M 0x80001ae8 addi    s1, s0, 1              #; s0  = 9, (wrb) s1  <-- 10
       0     7849        M 0x80001aec mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     7850        M                                           #; (lsu) a0  <-- 48
       0     7858        M 0x80001af0 mv      a2, s0                 #; s0  = 9, (wrb) a2  <-- 9
       0     7859        M 0x80001af4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     7860        M 0x80001af8 jalr    s7                     #; s7  = 0x80001410, (wrb) ra  <-- 0x80001afc, goto 0x80001410
       0     7872        M 0x80001410 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     7873        M 0x80001414 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     7874        M 0x80001418 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     7875        M 0x8000141c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     7876        M 0x80001420 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003420
       0     7877        M 0x80001424 addi    a3, a3, -1484          #; a3  = 0x80003420, (wrb) a3  <-- 0x80002e54
       0     7878        M                                           #; (acc) a1  <-- 0x00d605b3
       0     7879        M 0x80001428 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002e54, (wrb) a1  <-- 0x80002e54
       0     7880        M 0x8000142c lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
       0     7891        M                                           #; (lsu) a4  <-- 9
       0     7892        M 0x80001430 addi    a5, a4, 1              #; a4  = 9, (wrb) a5  <-- 10
       0     7893        M 0x80001434 sw      a5, 0(a1)              #; a1  = 0x80002e54, 10 ~~> Word[0x80002e54]
       0     7894        M 0x80001438 add     a4, a1, a4             #; a1  = 0x80002e54, a4  = 9, (wrb) a4  <-- 0x80002e5d
       0     7895        M 0x8000143c sb      a0, 72(a4)             #; a4  = 0x80002e5d, 48 ~~> Byte[0x80002ea5]
       0     7896        M 0x80001440 lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
       0     7917        M                                           #; (lsu) a4  <-- 10
       0     7918        M 0x80001444 addi    a4, a4, -1020          #; a4  = 10, (wrb) a4  <-- -1010
       0     7919        M 0x80001448 snez    a4, a4                 #; a4  = -1010, (wrb) a4  <-- 1
       0     7920        M 0x8000144c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     7921        M 0x80001450 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     7922        M 0x80001454 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     7923        M 0x80001458 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800014b8
       0     7926        M 0x800014b8 ret                            #; ra  = 0x80001afc, goto 0x80001afc
       0     7931        M 0x80001afc mv      s0, s1                 #; s1  = 10, (wrb) s0  <-- 10
       0     7934        M 0x80001b00 mv      s8, s10                #; s10 = 7, (wrb) s8  <-- 7
       0     7935        M 0x80001b04 bnez    s10, pc - 40           #; s10 = 7, taken, goto 0x80001adc
       0     7937        M 0x80001adc add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 7, (wrb) a0  <-- 0x0011fe3e
       0     7940        M 0x80001ae0 lbu     a0, 0(a0)              #; a0  = 0x0011fe3e, a0  <~~ Byte[0x0011fe3e]
       0     7941        M 0x80001ae4 addi    s10, s8, -1            #; s8  = 7, (wrb) s10 <-- 6
       0     7942        M 0x80001ae8 addi    s1, s0, 1              #; s0  = 10, (wrb) s1  <-- 11
       0     7943        M 0x80001aec mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     7944        M 0x80001af0 mv      a2, s0                 #; s0  = 10, (wrb) a2  <-- 10
       0     7945        M 0x80001af4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     7946        M 0x80001af8 jalr    s7                     #; s7  = 0x80001410, (wrb) ra  <-- 0x80001afc, goto 0x80001410
       0     7947        M                                           #; (lsu) a0  <-- 46
       0     7949        M 0x80001410 beqz    a0, pc + 168           #; a0  = 46, not taken
       0     7950        M 0x80001414 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     7951        M 0x80001418 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     7952        M 0x8000141c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     7953        M 0x80001420 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003420
       0     7954        M 0x80001424 addi    a3, a3, -1484          #; a3  = 0x80003420, (wrb) a3  <-- 0x80002e54
       0     7955        M                                           #; (acc) a1  <-- 0x00d605b3
       0     7956        M 0x80001428 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002e54, (wrb) a1  <-- 0x80002e54
       0     7957        M 0x8000142c lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
       0     7968        M                                           #; (lsu) a4  <-- 10
       0     7969        M 0x80001430 addi    a5, a4, 1              #; a4  = 10, (wrb) a5  <-- 11
       0     7970        M 0x80001434 sw      a5, 0(a1)              #; a1  = 0x80002e54, 11 ~~> Word[0x80002e54]
       0     7971        M 0x80001438 add     a4, a1, a4             #; a1  = 0x80002e54, a4  = 10, (wrb) a4  <-- 0x80002e5e
       0     7972        M 0x8000143c sb      a0, 72(a4)             #; a4  = 0x80002e5e, 46 ~~> Byte[0x80002ea6]
       0     7973        M 0x80001440 lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
       0     7994        M                                           #; (lsu) a4  <-- 11
       0     7995        M 0x80001444 addi    a4, a4, -1020          #; a4  = 11, (wrb) a4  <-- -1009
       0     7996        M 0x80001448 snez    a4, a4                 #; a4  = -1009, (wrb) a4  <-- 1
       0     7997        M 0x8000144c addi    a0, a0, -10            #; a0  = 46, (wrb) a0  <-- 36
       0     7998        M 0x80001450 snez    a0, a0                 #; a0  = 36, (wrb) a0  <-- 1
       0     7999        M 0x80001454 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     8000        M 0x80001458 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800014b8
       0     8003        M 0x800014b8 ret                            #; ra  = 0x80001afc, goto 0x80001afc
       0     8008        M 0x80001afc mv      s0, s1                 #; s1  = 11, (wrb) s0  <-- 11
       0     8011        M 0x80001b00 mv      s8, s10                #; s10 = 6, (wrb) s8  <-- 6
       0     8012        M 0x80001b04 bnez    s10, pc - 40           #; s10 = 6, taken, goto 0x80001adc
       0     8014        M 0x80001adc add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 6, (wrb) a0  <-- 0x0011fe3d
       0     8017        M 0x80001ae0 lbu     a0, 0(a0)              #; a0  = 0x0011fe3d, a0  <~~ Byte[0x0011fe3d]
       0     8018        M 0x80001ae4 addi    s10, s8, -1            #; s8  = 6, (wrb) s10 <-- 5
       0     8019        M 0x80001ae8 addi    s1, s0, 1              #; s0  = 11, (wrb) s1  <-- 12
       0     8020        M 0x80001aec mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     8021        M 0x80001af0 mv      a2, s0                 #; s0  = 11, (wrb) a2  <-- 11
       0     8022        M 0x80001af4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     8023        M 0x80001af8 jalr    s7                     #; s7  = 0x80001410, (wrb) ra  <-- 0x80001afc, goto 0x80001410
       0     8024        M                                           #; (lsu) a0  <-- 48
       0     8026        M 0x80001410 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     8027        M 0x80001414 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     8028        M 0x80001418 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     8029        M 0x8000141c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     8030        M 0x80001420 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003420
       0     8031        M 0x80001424 addi    a3, a3, -1484          #; a3  = 0x80003420, (wrb) a3  <-- 0x80002e54
       0     8032        M                                           #; (acc) a1  <-- 0x00d605b3
       0     8033        M 0x80001428 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002e54, (wrb) a1  <-- 0x80002e54
       0     8034        M 0x8000142c lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
       0     8045        M                                           #; (lsu) a4  <-- 11
       0     8046        M 0x80001430 addi    a5, a4, 1              #; a4  = 11, (wrb) a5  <-- 12
       0     8047        M 0x80001434 sw      a5, 0(a1)              #; a1  = 0x80002e54, 12 ~~> Word[0x80002e54]
       0     8048        M 0x80001438 add     a4, a1, a4             #; a1  = 0x80002e54, a4  = 11, (wrb) a4  <-- 0x80002e5f
       0     8049        M 0x8000143c sb      a0, 72(a4)             #; a4  = 0x80002e5f, 48 ~~> Byte[0x80002ea7]
       0     8050        M 0x80001440 lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
       0     8071        M                                           #; (lsu) a4  <-- 12
       0     8072        M 0x80001444 addi    a4, a4, -1020          #; a4  = 12, (wrb) a4  <-- -1008
       0     8073        M 0x80001448 snez    a4, a4                 #; a4  = -1008, (wrb) a4  <-- 1
       0     8074        M 0x8000144c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     8075        M 0x80001450 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     8076        M 0x80001454 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     8077        M 0x80001458 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800014b8
       0     8080        M 0x800014b8 ret                            #; ra  = 0x80001afc, goto 0x80001afc
       0     8085        M 0x80001afc mv      s0, s1                 #; s1  = 12, (wrb) s0  <-- 12
       0     8088        M 0x80001b00 mv      s8, s10                #; s10 = 5, (wrb) s8  <-- 5
       0     8089        M 0x80001b04 bnez    s10, pc - 40           #; s10 = 5, taken, goto 0x80001adc
       0     8091        M 0x80001adc add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 5, (wrb) a0  <-- 0x0011fe3c
       0     8094        M 0x80001ae0 lbu     a0, 0(a0)              #; a0  = 0x0011fe3c, a0  <~~ Byte[0x0011fe3c]
       0     8095        M 0x80001ae4 addi    s10, s8, -1            #; s8  = 5, (wrb) s10 <-- 4
       0     8096        M 0x80001ae8 addi    s1, s0, 1              #; s0  = 12, (wrb) s1  <-- 13
       0     8097        M 0x80001aec mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     8098        M 0x80001af0 mv      a2, s0                 #; s0  = 12, (wrb) a2  <-- 12
       0     8099        M 0x80001af4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     8100        M 0x80001af8 jalr    s7                     #; s7  = 0x80001410, (wrb) ra  <-- 0x80001afc, goto 0x80001410
       0     8101        M                                           #; (lsu) a0  <-- 48
       0     8103        M 0x80001410 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     8104        M 0x80001414 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     8105        M 0x80001418 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     8106        M 0x8000141c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     8107        M 0x80001420 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003420
       0     8108        M 0x80001424 addi    a3, a3, -1484          #; a3  = 0x80003420, (wrb) a3  <-- 0x80002e54
       0     8109        M                                           #; (acc) a1  <-- 0x00d605b3
       0     8110        M 0x80001428 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002e54, (wrb) a1  <-- 0x80002e54
       0     8111        M 0x8000142c lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
       0     8122        M                                           #; (lsu) a4  <-- 12
       0     8123        M 0x80001430 addi    a5, a4, 1              #; a4  = 12, (wrb) a5  <-- 13
       0     8124        M 0x80001434 sw      a5, 0(a1)              #; a1  = 0x80002e54, 13 ~~> Word[0x80002e54]
       0     8125        M 0x80001438 add     a4, a1, a4             #; a1  = 0x80002e54, a4  = 12, (wrb) a4  <-- 0x80002e60
       0     8126        M 0x8000143c sb      a0, 72(a4)             #; a4  = 0x80002e60, 48 ~~> Byte[0x80002ea8]
       0     8127        M 0x80001440 lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
       0     8148        M                                           #; (lsu) a4  <-- 13
       0     8149        M 0x80001444 addi    a4, a4, -1020          #; a4  = 13, (wrb) a4  <-- -1007
       0     8150        M 0x80001448 snez    a4, a4                 #; a4  = -1007, (wrb) a4  <-- 1
       0     8151        M 0x8000144c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     8152        M 0x80001450 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     8153        M 0x80001454 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     8154        M 0x80001458 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800014b8
       0     8157        M 0x800014b8 ret                            #; ra  = 0x80001afc, goto 0x80001afc
       0     8162        M 0x80001afc mv      s0, s1                 #; s1  = 13, (wrb) s0  <-- 13
       0     8165        M 0x80001b00 mv      s8, s10                #; s10 = 4, (wrb) s8  <-- 4
       0     8166        M 0x80001b04 bnez    s10, pc - 40           #; s10 = 4, taken, goto 0x80001adc
       0     8168        M 0x80001adc add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 4, (wrb) a0  <-- 0x0011fe3b
       0     8171        M 0x80001ae0 lbu     a0, 0(a0)              #; a0  = 0x0011fe3b, a0  <~~ Byte[0x0011fe3b]
       0     8172        M 0x80001ae4 addi    s10, s8, -1            #; s8  = 4, (wrb) s10 <-- 3
       0     8173        M 0x80001ae8 addi    s1, s0, 1              #; s0  = 13, (wrb) s1  <-- 14
       0     8174        M 0x80001aec mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     8175        M 0x80001af0 mv      a2, s0                 #; s0  = 13, (wrb) a2  <-- 13
       0     8176        M 0x80001af4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     8177        M 0x80001af8 jalr    s7                     #; s7  = 0x80001410, (wrb) ra  <-- 0x80001afc, goto 0x80001410
       0     8178        M                                           #; (lsu) a0  <-- 48
       0     8180        M 0x80001410 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     8181        M 0x80001414 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     8182        M 0x80001418 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     8183        M 0x8000141c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     8184        M 0x80001420 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003420
       0     8185        M 0x80001424 addi    a3, a3, -1484          #; a3  = 0x80003420, (wrb) a3  <-- 0x80002e54
       0     8186        M                                           #; (acc) a1  <-- 0x00d605b3
       0     8187        M 0x80001428 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002e54, (wrb) a1  <-- 0x80002e54
       0     8188        M 0x8000142c lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
       0     8199        M                                           #; (lsu) a4  <-- 13
       0     8200        M 0x80001430 addi    a5, a4, 1              #; a4  = 13, (wrb) a5  <-- 14
       0     8201        M 0x80001434 sw      a5, 0(a1)              #; a1  = 0x80002e54, 14 ~~> Word[0x80002e54]
       0     8202        M 0x80001438 add     a4, a1, a4             #; a1  = 0x80002e54, a4  = 13, (wrb) a4  <-- 0x80002e61
       0     8203        M 0x8000143c sb      a0, 72(a4)             #; a4  = 0x80002e61, 48 ~~> Byte[0x80002ea9]
       0     8204        M 0x80001440 lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
       0     8225        M                                           #; (lsu) a4  <-- 14
       0     8226        M 0x80001444 addi    a4, a4, -1020          #; a4  = 14, (wrb) a4  <-- -1006
       0     8227        M 0x80001448 snez    a4, a4                 #; a4  = -1006, (wrb) a4  <-- 1
       0     8228        M 0x8000144c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     8229        M 0x80001450 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     8230        M 0x80001454 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     8231        M 0x80001458 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800014b8
       0     8234        M 0x800014b8 ret                            #; ra  = 0x80001afc, goto 0x80001afc
       0     8239        M 0x80001afc mv      s0, s1                 #; s1  = 14, (wrb) s0  <-- 14
       0     8242        M 0x80001b00 mv      s8, s10                #; s10 = 3, (wrb) s8  <-- 3
       0     8243        M 0x80001b04 bnez    s10, pc - 40           #; s10 = 3, taken, goto 0x80001adc
       0     8245        M 0x80001adc add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 3, (wrb) a0  <-- 0x0011fe3a
       0     8248        M 0x80001ae0 lbu     a0, 0(a0)              #; a0  = 0x0011fe3a, a0  <~~ Byte[0x0011fe3a]
       0     8249        M 0x80001ae4 addi    s10, s8, -1            #; s8  = 3, (wrb) s10 <-- 2
       0     8250        M 0x80001ae8 addi    s1, s0, 1              #; s0  = 14, (wrb) s1  <-- 15
       0     8251        M 0x80001aec mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     8252        M 0x80001af0 mv      a2, s0                 #; s0  = 14, (wrb) a2  <-- 14
       0     8253        M 0x80001af4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     8254        M 0x80001af8 jalr    s7                     #; s7  = 0x80001410, (wrb) ra  <-- 0x80001afc, goto 0x80001410
       0     8255        M                                           #; (lsu) a0  <-- 48
       0     8257        M 0x80001410 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     8258        M 0x80001414 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     8259        M 0x80001418 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     8260        M 0x8000141c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     8261        M 0x80001420 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003420
       0     8262        M 0x80001424 addi    a3, a3, -1484          #; a3  = 0x80003420, (wrb) a3  <-- 0x80002e54
       0     8263        M                                           #; (acc) a1  <-- 0x00d605b3
       0     8264        M 0x80001428 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002e54, (wrb) a1  <-- 0x80002e54
       0     8265        M 0x8000142c lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
       0     8276        M                                           #; (lsu) a4  <-- 14
       0     8277        M 0x80001430 addi    a5, a4, 1              #; a4  = 14, (wrb) a5  <-- 15
       0     8278        M 0x80001434 sw      a5, 0(a1)              #; a1  = 0x80002e54, 15 ~~> Word[0x80002e54]
       0     8279        M 0x80001438 add     a4, a1, a4             #; a1  = 0x80002e54, a4  = 14, (wrb) a4  <-- 0x80002e62
       0     8280        M 0x8000143c sb      a0, 72(a4)             #; a4  = 0x80002e62, 48 ~~> Byte[0x80002eaa]
       0     8281        M 0x80001440 lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
       0     8302        M                                           #; (lsu) a4  <-- 15
       0     8303        M 0x80001444 addi    a4, a4, -1020          #; a4  = 15, (wrb) a4  <-- -1005
       0     8304        M 0x80001448 snez    a4, a4                 #; a4  = -1005, (wrb) a4  <-- 1
       0     8305        M 0x8000144c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     8306        M 0x80001450 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     8307        M 0x80001454 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     8308        M 0x80001458 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800014b8
       0     8311        M 0x800014b8 ret                            #; ra  = 0x80001afc, goto 0x80001afc
       0     8316        M 0x80001afc mv      s0, s1                 #; s1  = 15, (wrb) s0  <-- 15
       0     8319        M 0x80001b00 mv      s8, s10                #; s10 = 2, (wrb) s8  <-- 2
       0     8320        M 0x80001b04 bnez    s10, pc - 40           #; s10 = 2, taken, goto 0x80001adc
       0     8322        M 0x80001adc add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 2, (wrb) a0  <-- 0x0011fe39
       0     8325        M 0x80001ae0 lbu     a0, 0(a0)              #; a0  = 0x0011fe39, a0  <~~ Byte[0x0011fe39]
       0     8326        M 0x80001ae4 addi    s10, s8, -1            #; s8  = 2, (wrb) s10 <-- 1
       0     8327        M 0x80001ae8 addi    s1, s0, 1              #; s0  = 15, (wrb) s1  <-- 16
       0     8328        M 0x80001aec mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     8329        M 0x80001af0 mv      a2, s0                 #; s0  = 15, (wrb) a2  <-- 15
       0     8330        M 0x80001af4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     8331        M 0x80001af8 jalr    s7                     #; s7  = 0x80001410, (wrb) ra  <-- 0x80001afc, goto 0x80001410
       0     8332        M                                           #; (lsu) a0  <-- 48
       0     8334        M 0x80001410 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     8335        M 0x80001414 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     8336        M 0x80001418 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     8337        M 0x8000141c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     8338        M 0x80001420 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003420
       0     8339        M 0x80001424 addi    a3, a3, -1484          #; a3  = 0x80003420, (wrb) a3  <-- 0x80002e54
       0     8340        M                                           #; (acc) a1  <-- 0x00d605b3
       0     8341        M 0x80001428 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002e54, (wrb) a1  <-- 0x80002e54
       0     8342        M 0x8000142c lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
       0     8353        M                                           #; (lsu) a4  <-- 15
       0     8354        M 0x80001430 addi    a5, a4, 1              #; a4  = 15, (wrb) a5  <-- 16
       0     8355        M 0x80001434 sw      a5, 0(a1)              #; a1  = 0x80002e54, 16 ~~> Word[0x80002e54]
       0     8356        M 0x80001438 add     a4, a1, a4             #; a1  = 0x80002e54, a4  = 15, (wrb) a4  <-- 0x80002e63
       0     8357        M 0x8000143c sb      a0, 72(a4)             #; a4  = 0x80002e63, 48 ~~> Byte[0x80002eab]
       0     8358        M 0x80001440 lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
       0     8379        M                                           #; (lsu) a4  <-- 16
       0     8380        M 0x80001444 addi    a4, a4, -1020          #; a4  = 16, (wrb) a4  <-- -1004
       0     8381        M 0x80001448 snez    a4, a4                 #; a4  = -1004, (wrb) a4  <-- 1
       0     8382        M 0x8000144c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     8383        M 0x80001450 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     8384        M 0x80001454 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     8385        M 0x80001458 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800014b8
       0     8388        M 0x800014b8 ret                            #; ra  = 0x80001afc, goto 0x80001afc
       0     8393        M 0x80001afc mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
       0     8396        M 0x80001b00 mv      s8, s10                #; s10 = 1, (wrb) s8  <-- 1
       0     8397        M 0x80001b04 bnez    s10, pc - 40           #; s10 = 1, taken, goto 0x80001adc
       0     8399        M 0x80001adc add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 1, (wrb) a0  <-- 0x0011fe38
       0     8402        M 0x80001ae0 lbu     a0, 0(a0)              #; a0  = 0x0011fe38, a0  <~~ Byte[0x0011fe38]
       0     8403        M 0x80001ae4 addi    s10, s8, -1            #; s8  = 1, (wrb) s10 <-- 0
       0     8404        M 0x80001ae8 addi    s1, s0, 1              #; s0  = 16, (wrb) s1  <-- 17
       0     8405        M 0x80001aec mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     8406        M 0x80001af0 mv      a2, s0                 #; s0  = 16, (wrb) a2  <-- 16
       0     8407        M 0x80001af4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     8408        M 0x80001af8 jalr    s7                     #; s7  = 0x80001410, (wrb) ra  <-- 0x80001afc, goto 0x80001410
       0     8409        M                                           #; (lsu) a0  <-- 48
       0     8411        M 0x80001410 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     8412        M 0x80001414 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     8413        M 0x80001418 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     8414        M 0x8000141c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     8415        M 0x80001420 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003420
       0     8416        M 0x80001424 addi    a3, a3, -1484          #; a3  = 0x80003420, (wrb) a3  <-- 0x80002e54
       0     8417        M                                           #; (acc) a1  <-- 0x00d605b3
       0     8418        M 0x80001428 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002e54, (wrb) a1  <-- 0x80002e54
       0     8419        M 0x8000142c lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
       0     8430        M                                           #; (lsu) a4  <-- 16
       0     8431        M 0x80001430 addi    a5, a4, 1              #; a4  = 16, (wrb) a5  <-- 17
       0     8432        M 0x80001434 sw      a5, 0(a1)              #; a1  = 0x80002e54, 17 ~~> Word[0x80002e54]
       0     8433        M 0x80001438 add     a4, a1, a4             #; a1  = 0x80002e54, a4  = 16, (wrb) a4  <-- 0x80002e64
       0     8434        M 0x8000143c sb      a0, 72(a4)             #; a4  = 0x80002e64, 48 ~~> Byte[0x80002eac]
       0     8435        M 0x80001440 lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
       0     8456        M                                           #; (lsu) a4  <-- 17
       0     8457        M 0x80001444 addi    a4, a4, -1020          #; a4  = 17, (wrb) a4  <-- -1003
       0     8458        M 0x80001448 snez    a4, a4                 #; a4  = -1003, (wrb) a4  <-- 1
       0     8459        M 0x8000144c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     8460        M 0x80001450 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     8461        M 0x80001454 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     8462        M 0x80001458 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800014b8
       0     8465        M 0x800014b8 ret                            #; ra  = 0x80001afc, goto 0x80001afc
       0     8470        M 0x80001afc mv      s0, s1                 #; s1  = 17, (wrb) s0  <-- 17
       0     8473        M 0x80001b00 mv      s8, s10                #; s10 = 0, (wrb) s8  <-- 0
       0     8474        M 0x80001b04 bnez    s10, pc - 40           #; s10 = 0, not taken
       0     8475        M 0x80001b08 j       pc + 0x8               #; goto 0x80001b10
       0     8487        M 0x80001b10 sub     a0, s1, s4             #; s1  = 17, s4  = 9, (wrb) a0  <-- 8
       0     8488        M 0x80001b14 sltu    a0, a0, s2             #; a0  = 8, s2  = 0, (wrb) a0  <-- 0
       0     8489        M 0x80001b18 xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0     8490        M 0x80001b1c xori    a1, s5, 1              #; s5  = 0, (wrb) a1  <-- 1
       0     8499        M 0x80001b20 or      a0, a1, a0             #; a1  = 1, a0  = 1, (wrb) a0  <-- 1
       0     8500        M 0x80001b24 bnez    a0, pc + 48            #; a0  = 1, taken, goto 0x80001b54
       0     8522        M 0x80001b54 mv      s0, s1                 #; s1  = 17, (wrb) s0  <-- 17
       0     8523        M 0x80001b58 mv      a0, s0                 #; s0  = 17, (wrb) a0  <-- 17
       0     8526        M 0x80001b5c fld     fs2, 40(sp)            #; fs2  <~~ Doub[0x0011fe58]
       0     8527        M                                           #; (f:lsu) fs2  <-- 0.0
       0     8536        M 0x80001b68 lw      s10, 64(sp)            #; sp  = 0x0011fe30, s10 <~~ Word[0x0011fe70]
                         M 0x80001b60 fld     fs1, 48(sp)            #; fs1  <~~ Doub[0x0011fe60]
       0     8537        M 0x80001b64 fld     fs0, 56(sp)            #; fs0  <~~ Doub[0x0011fe68], (f:lsu) fs1  <-- 0.0
       0     8538        M                                           #; (f:lsu) fs0  <-- 2850.0
       0     8540        M                                           #; (lsu) s10 <-- 0x80002aff
       0     8541        M 0x80001b6c lw      s9, 68(sp)             #; sp  = 0x0011fe30, s9  <~~ Word[0x0011fe74]
       0     8544        M                                           #; (lsu) s9  <-- 9
       0     8546        M 0x80001b70 lw      s8, 72(sp)             #; sp  = 0x0011fe30, s8  <~~ Word[0x0011fe78]
       0     8549        M                                           #; (lsu) s8  <-- 16
       0     8550        M 0x80001b74 lw      s7, 76(sp)             #; sp  = 0x0011fe30, s7  <~~ Word[0x0011fe7c]
       0     8553        M                                           #; (lsu) s7  <-- 0
       0     8554        M 0x80001b78 lw      s6, 80(sp)             #; sp  = 0x0011fe30, s6  <~~ Word[0x0011fe80]
       0     8557        M                                           #; (lsu) s6  <-- 0
       0     8558        M 0x80001b7c lw      s5, 84(sp)             #; sp  = 0x0011fe30, s5  <~~ Word[0x0011fe84]
       0     8561        M                                           #; (lsu) s5  <-- -1
       0     8562        M 0x80001b80 lw      s4, 88(sp)             #; sp  = 0x0011fe30, s4  <~~ Word[0x0011fe88]
       0     8565        M                                           #; (lsu) s4  <-- 0x0011ff17
       0     8566        M 0x80001b84 lw      s3, 92(sp)             #; sp  = 0x0011fe30, s3  <~~ Word[0x0011fe8c]
       0     8569        M                                           #; (lsu) s3  <-- 0x0011ff30
       0     8570        M 0x80001b88 lw      s2, 96(sp)             #; sp  = 0x0011fe30, s2  <~~ Word[0x0011fe90]
       0     8573        M                                           #; (lsu) s2  <-- 0x80001410
       0     8574        M 0x80001b8c lw      s1, 100(sp)            #; sp  = 0x0011fe30, s1  <~~ Word[0x0011fe94]
       0     8577        M                                           #; (lsu) s1  <-- 9
       0     8578        M 0x80001b90 lw      s0, 104(sp)            #; sp  = 0x0011fe30, s0  <~~ Word[0x0011fe98]
       0     8581        M                                           #; (lsu) s0  <-- 0
       0     8582        M 0x80001b94 lw      ra, 108(sp)            #; sp  = 0x0011fe30, ra  <~~ Word[0x0011fe9c]
       0     8583        M 0x80001b98 addi    sp, sp, 112            #; sp  = 0x0011fe30, (wrb) sp  <-- 0x0011fea0
       0     8585        M                                           #; (lsu) ra  <-- 0x80000b40
       0     8586        M 0x80001b9c ret                            #; ra  = 0x80000b40, goto 0x80000b40
       0     8589        M 0x80000b40 j       pc + 0x7c0             #; goto 0x80001300
       0     8601        M 0x80001300 mv      s8, a0                 #; a0  = 17, (wrb) s8  <-- 17
       0     8602        M 0x80001304 li      s6, 37                 #; (wrb) s6  <-- 37
       0     8603        M 0x80001308 li      s7, 46                 #; (wrb) s7  <-- 46
       0     8604        M 0x8000130c addi    s0, s10, 1             #; s10 = 0x80002aff, (wrb) s0  <-- 0x80002b00
       0     8613        M 0x80001310 j       pc - 0xa74             #; goto 0x8000089c
       0     8616        M 0x8000089c addi    s10, s0, 2             #; s0  = 0x80002b00, (wrb) s10 <-- 0x80002b02
       0     8619        M 0x800008a0 mv      s9, s8                 #; s8  = 17, (wrb) s9  <-- 17
       0     8620        M 0x800008a4 li      s8, 10                 #; (wrb) s8  <-- 10
       0     8621        M 0x800008a8 lbu     a0, 0(s0)              #; s0  = 0x80002b00, a0  <~~ Byte[0x80002b00]
       0     8632        M                                           #; (lsu) a0  <-- 10
       0     8633        M 0x800008ac beqz    a0, pc + 2824          #; a0  = 10, not taken
       0     8634        M 0x800008b0 beq     a0, s6, pc + 48        #; a0  = 10, s6  = 37, not taken
       0     8635        M 0x800008b4 addi    s1, s9, 1              #; s9  = 17, (wrb) s1  <-- 18
       0     8636        M 0x800008b8 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     8637        M 0x800008bc mv      a2, s9                 #; s9  = 17, (wrb) a2  <-- 17
       0     8638        M 0x800008c0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     8639        M 0x800008c4 jalr    s2                     #; s2  = 0x80001410, (wrb) ra  <-- 0x800008c8, goto 0x80001410
       0     8643        M 0x80001410 beqz    a0, pc + 168           #; a0  = 10, not taken
       0     8644        M 0x80001414 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     8645        M 0x80001418 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     8646        M 0x8000141c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     8647        M 0x80001420 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003420
       0     8648        M 0x80001424 addi    a3, a3, -1484          #; a3  = 0x80003420, (wrb) a3  <-- 0x80002e54
       0     8649        M                                           #; (acc) a1  <-- 0x00d605b3
       0     8650        M 0x80001428 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002e54, (wrb) a1  <-- 0x80002e54
       0     8651        M 0x8000142c lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
       0     8662        M                                           #; (lsu) a4  <-- 17
       0     8663        M 0x80001430 addi    a5, a4, 1              #; a4  = 17, (wrb) a5  <-- 18
       0     8664        M 0x80001434 sw      a5, 0(a1)              #; a1  = 0x80002e54, 18 ~~> Word[0x80002e54]
       0     8665        M 0x80001438 add     a4, a1, a4             #; a1  = 0x80002e54, a4  = 17, (wrb) a4  <-- 0x80002e65
       0     8666        M 0x8000143c sb      a0, 72(a4)             #; a4  = 0x80002e65, 10 ~~> Byte[0x80002ead]
       0     8667        M 0x80001440 lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
       0     8688        M                                           #; (lsu) a4  <-- 18
       0     8689        M 0x80001444 addi    a4, a4, -1020          #; a4  = 18, (wrb) a4  <-- -1002
       0     8690        M 0x80001448 snez    a4, a4                 #; a4  = -1002, (wrb) a4  <-- 1
       0     8691        M 0x8000144c addi    a0, a0, -10            #; a0  = 10, (wrb) a0  <-- 0
       0     8692        M 0x80001450 snez    a0, a0                 #; a0  = 0, (wrb) a0  <-- 0
       0     8693        M 0x80001454 and     a0, a0, a4             #; a0  = 0, a4  = 1, (wrb) a0  <-- 0
       0     8694        M 0x80001458 bnez    a0, pc + 96            #; a0  = 0, not taken
       0     8695        M 0x8000145c add     a0, a3, a2             #; a3  = 0x80002e54, a2  = 0, (wrb) a0  <-- 0x80002e54
       0     8696        M 0x80001460 addi    a2, a0, 72             #; a0  = 0x80002e54, (wrb) a2  <-- 0x80002e9c
       0     8697        M 0x80001464 sw      zero, 12(a0)           #; a0  = 0x80002e54, 0 ~~> Word[0x80002e60]
       0     8698        M 0x80001468 li      a3, 64                 #; (wrb) a3  <-- 64
       0     8699        M 0x8000146c sw      a3, 8(a0)              #; a0  = 0x80002e54, 64 ~~> Word[0x80002e5c]
       0     8708        M 0x80001470 sw      zero, 20(a0)           #; a0  = 0x80002e54, 0 ~~> Word[0x80002e68]
       0     8709        M 0x80001474 li      a3, 1                  #; (wrb) a3  <-- 1
       0     8710        M 0x80001478 sw      a3, 16(a0)             #; a0  = 0x80002e54, 1 ~~> Word[0x80002e64]
       0     8711        M 0x8000147c sw      zero, 28(a0)           #; a0  = 0x80002e54, 0 ~~> Word[0x80002e70]
       0     8720        M 0x80001480 sw      a2, 24(a0)             #; a0  = 0x80002e54, 0x80002e9c ~~> Word[0x80002e6c]
       0     8723        M 0x80001484 lw      a2, 0(a1)              #; a1  = 0x80002e54, a2  <~~ Word[0x80002e54]
       0     8724        M 0x80001488 addi    a3, a0, 8              #; a0  = 0x80002e54, (wrb) a3  <-- 0x80002e5c
       0     8725        M 0x8000148c sw      zero, 36(a0)           #; a0  = 0x80002e54, 0 ~~> Word[0x80002e78]
       0     8745        M                                           #; (lsu) a2  <-- 18
       0     8746        M 0x80001490 sw      a2, 32(a0)             #; a0  = 0x80002e54, 18 ~~> Word[0x80002e74]
       0     8747        M 0x80001494 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003494
       0     8748        M 0x80001498 addi    a0, a0, -1876          #; a0  = 0x80003494, (wrb) a0  <-- 0x80002d40
       0     8749        M 0x8000149c sw      a3, 0(a0)              #; a0  = 0x80002d40, 0x80002e5c ~~> Word[0x80002d40]
       0     8750        M 0x800014a0 auipc   a0, 0x2                #; (wrb) a0  <-- 0x800034a0
       0     8751        M 0x800014a4 addi    a0, a0, -1824          #; a0  = 0x800034a0, (wrb) a0  <-- 0x80002d80
       0     8752        M 0x800014a8 lw      a2, 0(a0)              #; a0  = 0x80002d80, a2  <~~ Word[0x80002d80]
       0     8775        M                                           #; (lsu) a2  <-- 0
       0     8776        M 0x800014ac beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x800014a8
       0     8777        M 0x800014a8 lw      a2, 0(a0)              #; a0  = 0x80002d80, a2  <~~ Word[0x80002d80]
       0     8788        M                                           #; (lsu) a2  <-- 0
       0     8789        M 0x800014ac beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x800014a8
       0     8790        M 0x800014a8 lw      a2, 0(a0)              #; a0  = 0x80002d80, a2  <~~ Word[0x80002d80]
       0     8801        M                                           #; (lsu) a2  <-- 0
       0     8802        M 0x800014ac beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x800014a8
       0     8803        M 0x800014a8 lw      a2, 0(a0)              #; a0  = 0x80002d80, a2  <~~ Word[0x80002d80]
       0     8814        M                                           #; (lsu) a2  <-- 1
       0     8815        M 0x800014ac beqz    a2, pc - 4             #; a2  = 1, not taken
       0     8818        M 0x800014b0 sw      zero, 0(a0)            #; a0  = 0x80002d80, 0 ~~> Word[0x80002d80]
       0     8819        M 0x800014b4 sw      zero, 0(a1)            #; a1  = 0x80002e54, 0 ~~> Word[0x80002e54]
       0     8820        M 0x800014b8 ret                            #; ra  = 0x800008c8, goto 0x800008c8
       0     8823        M 0x800008c8 addi    s0, s0, 1              #; s0  = 0x80002b00, (wrb) s0  <-- 0x80002b01
       0     8824        M 0x800008cc addi    s10, s10, 1            #; s10 = 0x80002b02, (wrb) s10 <-- 0x80002b03
       0     8826        M 0x800008d0 mv      s9, s1                 #; s1  = 18, (wrb) s9  <-- 18
       0     8827        M 0x800008d4 lbu     a0, 0(s0)              #; s0  = 0x80002b01, a0  <~~ Byte[0x80002b01]
       0     8841        M                                           #; (lsu) a0  <-- 0
       0     8842        M 0x800008d8 bnez    a0, pc - 40            #; a0  = 0, not taken
       0     8843        M 0x800008dc j       pc + 0xad8             #; goto 0x800013b4
       0     8855        M 0x800013b4 mv      a2, s9                 #; s9  = 18, (wrb) a2  <-- 18
       0     8856        M 0x800013b8 bltu    s9, s5, pc + 8         #; s9  = 18, s5  = -1, taken, goto 0x800013c0
       0     8867        M 0x800013c0 li      a0, 0                  #; (wrb) a0  <-- 0
       0     8868        M 0x800013c4 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     8869        M 0x800013c8 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     8870        M 0x800013cc jalr    s2                     #; s2  = 0x80001410, (wrb) ra  <-- 0x800013d0, goto 0x80001410
       0     8881        M 0x80001410 beqz    a0, pc + 168           #; a0  = 0, taken, goto 0x800014b8
       0     8886        M 0x800014b8 ret                            #; ra  = 0x800013d0, goto 0x800013d0
       0     8887        M 0x800013d0 mv      a0, s9                 #; s9  = 18, (wrb) a0  <-- 18
       0     8888        M 0x800013d4 lw      s11, 60(sp)            #; sp  = 0x0011fea0, s11 <~~ Word[0x0011fedc]
       0     8891        M                                           #; (lsu) s11 <-- 0
       0     8892        M 0x800013d8 lw      s10, 64(sp)            #; sp  = 0x0011fea0, s10 <~~ Word[0x0011fee0]
       0     8895        M                                           #; (lsu) s10 <-- 0
       0     8896        M 0x800013dc lw      s9, 68(sp)             #; sp  = 0x0011fea0, s9  <~~ Word[0x0011fee4]
       0     8899        M                                           #; (lsu) s9  <-- 0
       0     8901        M 0x800013e0 lw      s8, 72(sp)             #; sp  = 0x0011fea0, s8  <~~ Word[0x0011fee8]
       0     8904        M                                           #; (lsu) s8  <-- 0
       0     8905        M 0x800013e4 lw      s7, 76(sp)             #; sp  = 0x0011fea0, s7  <~~ Word[0x0011feec]
       0     8908        M                                           #; (lsu) s7  <-- 0
       0     8909        M 0x800013e8 lw      s6, 80(sp)             #; sp  = 0x0011fea0, s6  <~~ Word[0x0011fef0]
       0     8912        M                                           #; (lsu) s6  <-- 0
       0     8913        M 0x800013ec lw      s5, 84(sp)             #; sp  = 0x0011fea0, s5  <~~ Word[0x0011fef4]
       0     8916        M                                           #; (lsu) s5  <-- 0
       0     8917        M 0x800013f0 lw      s4, 88(sp)             #; sp  = 0x0011fea0, s4  <~~ Word[0x0011fef8]
       0     8920        M                                           #; (lsu) s4  <-- 0
       0     8921        M 0x800013f4 lw      s3, 92(sp)             #; sp  = 0x0011fea0, s3  <~~ Word[0x0011fefc]
       0     8924        M                                           #; (lsu) s3  <-- 0
       0     8925        M 0x800013f8 lw      s2, 96(sp)             #; sp  = 0x0011fea0, s2  <~~ Word[0x0011ff00]
       0     8928        M                                           #; (lsu) s2  <-- 0
       0     8929        M 0x800013fc lw      s1, 100(sp)            #; sp  = 0x0011fea0, s1  <~~ Word[0x0011ff04]
       0     8932        M                                           #; (lsu) s1  <-- 0
       0     8933        M 0x80001400 lw      s0, 104(sp)            #; sp  = 0x0011fea0, s0  <~~ Word[0x0011ff08]
       0     8936        M                                           #; (lsu) s0  <-- 0
       0     8937        M 0x80001404 lw      ra, 108(sp)            #; sp  = 0x0011fea0, ra  <~~ Word[0x0011ff0c]
       0     8938        M 0x80001408 addi    sp, sp, 112            #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011ff10
       0     8940        M                                           #; (lsu) ra  <-- 0x8000080c
       0     8941        M 0x8000140c ret                            #; ra  = 0x8000080c, goto 0x8000080c
       0     8944        M 0x8000080c lw      ra, 12(sp)             #; sp  = 0x0011ff10, ra  <~~ Word[0x0011ff1c]
       0     8947        M 0x80000810 addi    sp, sp, 48             #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011ff40
       0     8948        M                                           #; (lsu) ra  <-- 0x8000076c
       0     8949        M 0x80000814 ret                            #; ra  = 0x8000076c, goto 0x8000076c
       0     8952        M 0x8000076c auipc   a0, 0x2                #; (wrb) a0  <-- 0x8000276c
       0     8955        M 0x80000770 addi    a0, a0, 1580           #; a0  = 0x8000276c, (wrb) a0  <-- 0x80002d98
       0     8958        M 0x80000774 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002d98]
       0     8967        M                                           #; (f:lsu) ft0  <-- 2850.0
       0     8968        M 0x80000784 lw      a2, 8(sp)              #; sp  = 0x0011ff40, a2  <~~ Word[0x0011ff48]
                         M 0x80000778 fadd.d  ft0, fs0, ft0          #; fs0  = 2850.0, ft0  = 2850.0
       0     8971        M                                           #; (lsu) a2  <-- 0
                         M                                           #; (f:fpu) ft0  <-- 5700.0
       0     8972        M 0x80000788 lw      a3, 12(sp)             #; sp  = 0x0011ff40, a3  <~~ Word[0x0011ff4c]
                         M 0x8000077c fsgnjx.d fs0, ft0, ft0         #; ft0  = 5700.0, ft0  = 5700.0
       0     8973        M 0x8000078c auipc   a0, 0x2                #; (wrb) a0  <-- 0x8000278c
                         M                                           #; (f:fpu) fs0  <-- 5700.0
       0     8974        M 0x80000780 fsd     fs0, 8(sp)             #; 5700.0 ~~> Doub[0x0011ff48]
       0     8975        M                                           #; (lsu) a3  <-- 0
       0     8979        M 0x80000790 addi    a0, a0, 886            #; a0  = 0x8000278c, (wrb) a0  <-- 0x80002b02
       0     8980        M 0x80000794 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000794
       0     8981        M 0x80000798 jalr    ra, ra, 40             #; ra  = 0x80000794, (wrb) ra  <-- 0x8000079c, goto 0x800007bc
       0     8984        M 0x800007bc addi    sp, sp, -48            #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff10
       0     8996        M 0x800007c0 sw      ra, 12(sp)             #; sp  = 0x0011ff10, 0x8000079c ~~> Word[0x0011ff1c]
       0     8997        M 0x800007c4 mv      t0, a0                 #; a0  = 0x80002b02, (wrb) t0  <-- 0x80002b02
       0     8998        M 0x800007c8 sw      a7, 44(sp)             #; sp  = 0x0011ff10, 9 ~~> Word[0x0011ff3c]
       0     8999        M 0x800007cc sw      a6, 40(sp)             #; sp  = 0x0011ff10, 10 ~~> Word[0x0011ff38]
       0     9000        M 0x800007d0 sw      a5, 36(sp)             #; sp  = 0x0011ff10, 18 ~~> Word[0x0011ff34]
       0     9001        M 0x800007d4 sw      a4, 32(sp)             #; sp  = 0x0011ff10, 1 ~~> Word[0x0011ff30]
       0     9002        M 0x800007d8 sw      a3, 28(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff2c]
       0     9003        M 0x800007dc sw      a2, 24(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff28]
       0     9004        M 0x800007e0 sw      a1, 20(sp)             #; sp  = 0x0011ff10, 0x0011ff17 ~~> Word[0x0011ff24]
       0     9005        M 0x800007e4 addi    a0, sp, 20             #; sp  = 0x0011ff10, (wrb) a0  <-- 0x0011ff24
       0     9006        M 0x800007e8 sw      a0, 8(sp)              #; sp  = 0x0011ff10, 0x0011ff24 ~~> Word[0x0011ff18]
       0     9007        M 0x800007ec auipc   a0, 0x1                #; (wrb) a0  <-- 0x800017ec
       0     9008        M 0x800007f0 addi    a0, a0, -988           #; a0  = 0x800017ec, (wrb) a0  <-- 0x80001410
       0     9009        M 0x800007f4 addi    a1, sp, 7              #; sp  = 0x0011ff10, (wrb) a1  <-- 0x0011ff17
       0     9010        M 0x800007f8 li      a2, -1                 #; (wrb) a2  <-- -1
       0     9011        M 0x800007fc addi    a4, sp, 20             #; sp  = 0x0011ff10, (wrb) a4  <-- 0x0011ff24
       0     9012        M 0x80000800 mv      a3, t0                 #; t0  = 0x80002b02, (wrb) a3  <-- 0x80002b02
       0     9013        M 0x80000804 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000804
       0     9014        M 0x80000808 jalr    ra, ra, 20             #; ra  = 0x80000804, (wrb) ra  <-- 0x8000080c, goto 0x80000818
       0     9015        M 0x80000818 addi    sp, sp, -112           #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011fea0
       0     9016        M 0x8000081c sw      ra, 108(sp)            #; sp  = 0x0011fea0, 0x8000080c ~~> Word[0x0011ff0c]
       0     9018        M 0x80000820 sw      s0, 104(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff08]
       0     9019        M 0x80000824 sw      s1, 100(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff04]
       0     9020        M 0x80000828 sw      s2, 96(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff00]
       0     9021        M 0x8000082c sw      s3, 92(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fefc]
       0     9022        M 0x80000830 sw      s4, 88(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef8]
       0     9023        M 0x80000834 sw      s5, 84(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef4]
       0     9024        M 0x80000838 sw      s6, 80(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef0]
       0     9025        M 0x8000083c sw      s7, 76(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011feec]
       0     9026        M 0x80000840 sw      s8, 72(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee8]
       0     9027        M 0x80000844 sw      s9, 68(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee4]
       0     9028        M 0x80000848 sw      s10, 64(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee0]
       0     9029        M 0x8000084c sw      s11, 60(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fedc]
       0     9030        M 0x80000850 mv      s3, a4                 #; a4  = 0x0011ff24, (wrb) s3  <-- 0x0011ff24
       0     9031        M 0x80000854 mv      s0, a3                 #; a3  = 0x80002b02, (wrb) s0  <-- 0x80002b02
       0     9032        M 0x80000858 mv      s5, a2                 #; a2  = -1, (wrb) s5  <-- -1
       0     9033        M 0x8000085c mv      s4, a1                 #; a1  = 0x0011ff17, (wrb) s4  <-- 0x0011ff17
       0     9034        M 0x80000860 beqz    a1, pc + 12            #; a1  = 0x0011ff17, not taken
       0     9035        M 0x80000864 mv      s2, a0                 #; a0  = 0x80001410, (wrb) s2  <-- 0x80001410
       0     9036        M 0x80000868 j       pc + 0xc               #; goto 0x80000874
       0     9037        M 0x80000874 li      s8, 0                  #; (wrb) s8  <-- 0
       0     9038        M 0x80000878 li      s6, 37                 #; (wrb) s6  <-- 37
       0     9039        M 0x8000087c li      s11, 16                #; (wrb) s11 <-- 16
       0     9040        M 0x80000880 li      s7, 46                 #; (wrb) s7  <-- 46
       0     9041        M 0x80000884 lui     a0, 0x1                #; (wrb) a0  <-- 4096
       0     9042        M 0x80000888 addi    a0, a0, -2048          #; a0  = 4096, (wrb) a0  <-- 2048
       0     9043        M 0x8000088c sw      a0, 24(sp)             #; sp  = 0x0011fea0, 2048 ~~> Word[0x0011feb8]
       0     9044        M 0x80000890 lui     a0, 0x10               #; (wrb) a0  <-- 0x00010000
       0     9045        M 0x80000894 addi    a0, a0, -1             #; a0  = 0x00010000, (wrb) a0  <-- 65535
       0     9046        M 0x80000898 sw      a0, 16(sp)             #; sp  = 0x0011fea0, 65535 ~~> Word[0x0011feb0]
       0     9047        M 0x8000089c addi    s10, s0, 2             #; s0  = 0x80002b02, (wrb) s10 <-- 0x80002b04
       0     9048        M 0x800008a0 mv      s9, s8                 #; s8  = 0, (wrb) s9  <-- 0
       0     9049        M 0x800008a4 li      s8, 10                 #; (wrb) s8  <-- 10
       0     9050        M 0x800008a8 lbu     a0, 0(s0)              #; s0  = 0x80002b02, a0  <~~ Byte[0x80002b02]
       0     9061        M                                           #; (lsu) a0  <-- 101
       0     9062        M 0x800008ac beqz    a0, pc + 2824          #; a0  = 101, not taken
       0     9063        M 0x800008b0 beq     a0, s6, pc + 48        #; a0  = 101, s6  = 37, not taken
       0     9064        M 0x800008b4 addi    s1, s9, 1              #; s9  = 0, (wrb) s1  <-- 1
       0     9065        M 0x800008b8 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     9066        M 0x800008bc mv      a2, s9                 #; s9  = 0, (wrb) a2  <-- 0
       0     9067        M 0x800008c0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     9068        M 0x800008c4 jalr    s2                     #; s2  = 0x80001410, (wrb) ra  <-- 0x800008c8, goto 0x80001410
       0     9072        M 0x80001410 beqz    a0, pc + 168           #; a0  = 101, not taken
       0     9073        M 0x80001414 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     9074        M 0x80001418 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     9075        M 0x8000141c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     9076        M 0x80001420 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003420
       0     9077        M 0x80001424 addi    a3, a3, -1484          #; a3  = 0x80003420, (wrb) a3  <-- 0x80002e54
       0     9078        M                                           #; (acc) a1  <-- 0x00d605b3
       0     9079        M 0x80001428 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002e54, (wrb) a1  <-- 0x80002e54
       0     9080        M 0x8000142c lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
       0     9091        M                                           #; (lsu) a4  <-- 0
       0     9092        M 0x80001430 addi    a5, a4, 1              #; a4  = 0, (wrb) a5  <-- 1
       0     9093        M 0x80001434 sw      a5, 0(a1)              #; a1  = 0x80002e54, 1 ~~> Word[0x80002e54]
       0     9094        M 0x80001438 add     a4, a1, a4             #; a1  = 0x80002e54, a4  = 0, (wrb) a4  <-- 0x80002e54
       0     9095        M 0x8000143c sb      a0, 72(a4)             #; a4  = 0x80002e54, 101 ~~> Byte[0x80002e9c]
       0     9096        M 0x80001440 lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
       0     9117        M                                           #; (lsu) a4  <-- 1
       0     9118        M 0x80001444 addi    a4, a4, -1020          #; a4  = 1, (wrb) a4  <-- -1019
       0     9119        M 0x80001448 snez    a4, a4                 #; a4  = -1019, (wrb) a4  <-- 1
       0     9120        M 0x8000144c addi    a0, a0, -10            #; a0  = 101, (wrb) a0  <-- 91
       0     9121        M 0x80001450 snez    a0, a0                 #; a0  = 91, (wrb) a0  <-- 1
       0     9122        M 0x80001454 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     9123        M 0x80001458 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800014b8
       0     9126        M 0x800014b8 ret                            #; ra  = 0x800008c8, goto 0x800008c8
       0     9131        M 0x800008c8 addi    s0, s0, 1              #; s0  = 0x80002b02, (wrb) s0  <-- 0x80002b03
       0     9132        M 0x800008cc addi    s10, s10, 1            #; s10 = 0x80002b04, (wrb) s10 <-- 0x80002b05
       0     9134        M 0x800008d0 mv      s9, s1                 #; s1  = 1, (wrb) s9  <-- 1
       0     9135        M 0x800008d4 lbu     a0, 0(s0)              #; s0  = 0x80002b03, a0  <~~ Byte[0x80002b03]
       0     9146        M                                           #; (lsu) a0  <-- 114
       0     9147        M 0x800008d8 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x800008b0
       0     9148        M 0x800008b0 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     9149        M 0x800008b4 addi    s1, s9, 1              #; s9  = 1, (wrb) s1  <-- 2
       0     9150        M 0x800008b8 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     9151        M 0x800008bc mv      a2, s9                 #; s9  = 1, (wrb) a2  <-- 1
       0     9152        M 0x800008c0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     9153        M 0x800008c4 jalr    s2                     #; s2  = 0x80001410, (wrb) ra  <-- 0x800008c8, goto 0x80001410
       0     9156        M 0x80001410 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     9157        M 0x80001414 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     9158        M 0x80001418 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     9159        M 0x8000141c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     9160        M 0x80001420 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003420
       0     9161        M 0x80001424 addi    a3, a3, -1484          #; a3  = 0x80003420, (wrb) a3  <-- 0x80002e54
       0     9162        M                                           #; (acc) a1  <-- 0x00d605b3
       0     9163        M 0x80001428 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002e54, (wrb) a1  <-- 0x80002e54
       0     9164        M 0x8000142c lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
       0     9175        M                                           #; (lsu) a4  <-- 1
       0     9176        M 0x80001430 addi    a5, a4, 1              #; a4  = 1, (wrb) a5  <-- 2
       0     9177        M 0x80001434 sw      a5, 0(a1)              #; a1  = 0x80002e54, 2 ~~> Word[0x80002e54]
       0     9178        M 0x80001438 add     a4, a1, a4             #; a1  = 0x80002e54, a4  = 1, (wrb) a4  <-- 0x80002e55
       0     9179        M 0x8000143c sb      a0, 72(a4)             #; a4  = 0x80002e55, 114 ~~> Byte[0x80002e9d]
       0     9180        M 0x80001440 lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
       0     9201        M                                           #; (lsu) a4  <-- 2
       0     9202        M 0x80001444 addi    a4, a4, -1020          #; a4  = 2, (wrb) a4  <-- -1018
       0     9203        M 0x80001448 snez    a4, a4                 #; a4  = -1018, (wrb) a4  <-- 1
       0     9204        M 0x8000144c addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     9205        M 0x80001450 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     9206        M 0x80001454 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     9207        M 0x80001458 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800014b8
       0     9210        M 0x800014b8 ret                            #; ra  = 0x800008c8, goto 0x800008c8
       0     9215        M 0x800008c8 addi    s0, s0, 1              #; s0  = 0x80002b03, (wrb) s0  <-- 0x80002b04
       0     9216        M 0x800008cc addi    s10, s10, 1            #; s10 = 0x80002b05, (wrb) s10 <-- 0x80002b06
       0     9218        M 0x800008d0 mv      s9, s1                 #; s1  = 2, (wrb) s9  <-- 2
       0     9219        M 0x800008d4 lbu     a0, 0(s0)              #; s0  = 0x80002b04, a0  <~~ Byte[0x80002b04]
       0     9230        M                                           #; (lsu) a0  <-- 114
       0     9231        M 0x800008d8 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x800008b0
       0     9232        M 0x800008b0 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     9233        M 0x800008b4 addi    s1, s9, 1              #; s9  = 2, (wrb) s1  <-- 3
       0     9234        M 0x800008b8 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     9235        M 0x800008bc mv      a2, s9                 #; s9  = 2, (wrb) a2  <-- 2
       0     9236        M 0x800008c0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     9237        M 0x800008c4 jalr    s2                     #; s2  = 0x80001410, (wrb) ra  <-- 0x800008c8, goto 0x80001410
       0     9240        M 0x80001410 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     9241        M 0x80001414 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     9242        M 0x80001418 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     9243        M 0x8000141c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     9244        M 0x80001420 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003420
       0     9245        M 0x80001424 addi    a3, a3, -1484          #; a3  = 0x80003420, (wrb) a3  <-- 0x80002e54
       0     9246        M                                           #; (acc) a1  <-- 0x00d605b3
       0     9247        M 0x80001428 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002e54, (wrb) a1  <-- 0x80002e54
       0     9248        M 0x8000142c lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
       0     9259        M                                           #; (lsu) a4  <-- 2
       0     9260        M 0x80001430 addi    a5, a4, 1              #; a4  = 2, (wrb) a5  <-- 3
       0     9261        M 0x80001434 sw      a5, 0(a1)              #; a1  = 0x80002e54, 3 ~~> Word[0x80002e54]
       0     9262        M 0x80001438 add     a4, a1, a4             #; a1  = 0x80002e54, a4  = 2, (wrb) a4  <-- 0x80002e56
       0     9263        M 0x8000143c sb      a0, 72(a4)             #; a4  = 0x80002e56, 114 ~~> Byte[0x80002e9e]
       0     9264        M 0x80001440 lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
       0     9285        M                                           #; (lsu) a4  <-- 3
       0     9286        M 0x80001444 addi    a4, a4, -1020          #; a4  = 3, (wrb) a4  <-- -1017
       0     9287        M 0x80001448 snez    a4, a4                 #; a4  = -1017, (wrb) a4  <-- 1
       0     9288        M 0x8000144c addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     9289        M 0x80001450 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     9290        M 0x80001454 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     9291        M 0x80001458 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800014b8
       0     9294        M 0x800014b8 ret                            #; ra  = 0x800008c8, goto 0x800008c8
       0     9299        M 0x800008c8 addi    s0, s0, 1              #; s0  = 0x80002b04, (wrb) s0  <-- 0x80002b05
       0     9300        M 0x800008cc addi    s10, s10, 1            #; s10 = 0x80002b06, (wrb) s10 <-- 0x80002b07
       0     9302        M 0x800008d0 mv      s9, s1                 #; s1  = 3, (wrb) s9  <-- 3
       0     9303        M 0x800008d4 lbu     a0, 0(s0)              #; s0  = 0x80002b05, a0  <~~ Byte[0x80002b05]
       0     9314        M                                           #; (lsu) a0  <-- 111
       0     9315        M 0x800008d8 bnez    a0, pc - 40            #; a0  = 111, taken, goto 0x800008b0
       0     9316        M 0x800008b0 beq     a0, s6, pc + 48        #; a0  = 111, s6  = 37, not taken
       0     9317        M 0x800008b4 addi    s1, s9, 1              #; s9  = 3, (wrb) s1  <-- 4
       0     9318        M 0x800008b8 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     9319        M 0x800008bc mv      a2, s9                 #; s9  = 3, (wrb) a2  <-- 3
       0     9320        M 0x800008c0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     9321        M 0x800008c4 jalr    s2                     #; s2  = 0x80001410, (wrb) ra  <-- 0x800008c8, goto 0x80001410
       0     9324        M 0x80001410 beqz    a0, pc + 168           #; a0  = 111, not taken
       0     9325        M 0x80001414 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     9326        M 0x80001418 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     9327        M 0x8000141c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     9328        M 0x80001420 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003420
       0     9329        M 0x80001424 addi    a3, a3, -1484          #; a3  = 0x80003420, (wrb) a3  <-- 0x80002e54
       0     9330        M                                           #; (acc) a1  <-- 0x00d605b3
       0     9331        M 0x80001428 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002e54, (wrb) a1  <-- 0x80002e54
       0     9332        M 0x8000142c lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
       0     9343        M                                           #; (lsu) a4  <-- 3
       0     9344        M 0x80001430 addi    a5, a4, 1              #; a4  = 3, (wrb) a5  <-- 4
       0     9345        M 0x80001434 sw      a5, 0(a1)              #; a1  = 0x80002e54, 4 ~~> Word[0x80002e54]
       0     9346        M 0x80001438 add     a4, a1, a4             #; a1  = 0x80002e54, a4  = 3, (wrb) a4  <-- 0x80002e57
       0     9347        M 0x8000143c sb      a0, 72(a4)             #; a4  = 0x80002e57, 111 ~~> Byte[0x80002e9f]
       0     9348        M 0x80001440 lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
       0     9369        M                                           #; (lsu) a4  <-- 4
       0     9370        M 0x80001444 addi    a4, a4, -1020          #; a4  = 4, (wrb) a4  <-- -1016
       0     9371        M 0x80001448 snez    a4, a4                 #; a4  = -1016, (wrb) a4  <-- 1
       0     9372        M 0x8000144c addi    a0, a0, -10            #; a0  = 111, (wrb) a0  <-- 101
       0     9373        M 0x80001450 snez    a0, a0                 #; a0  = 101, (wrb) a0  <-- 1
       0     9374        M 0x80001454 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     9375        M 0x80001458 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800014b8
       0     9378        M 0x800014b8 ret                            #; ra  = 0x800008c8, goto 0x800008c8
       0     9383        M 0x800008c8 addi    s0, s0, 1              #; s0  = 0x80002b05, (wrb) s0  <-- 0x80002b06
       0     9384        M 0x800008cc addi    s10, s10, 1            #; s10 = 0x80002b07, (wrb) s10 <-- 0x80002b08
       0     9386        M 0x800008d0 mv      s9, s1                 #; s1  = 4, (wrb) s9  <-- 4
       0     9387        M 0x800008d4 lbu     a0, 0(s0)              #; s0  = 0x80002b06, a0  <~~ Byte[0x80002b06]
       0     9398        M                                           #; (lsu) a0  <-- 114
       0     9399        M 0x800008d8 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x800008b0
       0     9400        M 0x800008b0 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     9401        M 0x800008b4 addi    s1, s9, 1              #; s9  = 4, (wrb) s1  <-- 5
       0     9402        M 0x800008b8 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     9403        M 0x800008bc mv      a2, s9                 #; s9  = 4, (wrb) a2  <-- 4
       0     9404        M 0x800008c0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     9405        M 0x800008c4 jalr    s2                     #; s2  = 0x80001410, (wrb) ra  <-- 0x800008c8, goto 0x80001410
       0     9408        M 0x80001410 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     9409        M 0x80001414 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     9410        M 0x80001418 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     9411        M 0x8000141c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     9412        M 0x80001420 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003420
       0     9413        M 0x80001424 addi    a3, a3, -1484          #; a3  = 0x80003420, (wrb) a3  <-- 0x80002e54
       0     9414        M                                           #; (acc) a1  <-- 0x00d605b3
       0     9415        M 0x80001428 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002e54, (wrb) a1  <-- 0x80002e54
       0     9416        M 0x8000142c lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
       0     9427        M                                           #; (lsu) a4  <-- 4
       0     9428        M 0x80001430 addi    a5, a4, 1              #; a4  = 4, (wrb) a5  <-- 5
       0     9429        M 0x80001434 sw      a5, 0(a1)              #; a1  = 0x80002e54, 5 ~~> Word[0x80002e54]
       0     9430        M 0x80001438 add     a4, a1, a4             #; a1  = 0x80002e54, a4  = 4, (wrb) a4  <-- 0x80002e58
       0     9431        M 0x8000143c sb      a0, 72(a4)             #; a4  = 0x80002e58, 114 ~~> Byte[0x80002ea0]
       0     9432        M 0x80001440 lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
       0     9453        M                                           #; (lsu) a4  <-- 5
       0     9454        M 0x80001444 addi    a4, a4, -1020          #; a4  = 5, (wrb) a4  <-- -1015
       0     9455        M 0x80001448 snez    a4, a4                 #; a4  = -1015, (wrb) a4  <-- 1
       0     9456        M 0x8000144c addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     9457        M 0x80001450 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     9458        M 0x80001454 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     9459        M 0x80001458 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800014b8
       0     9462        M 0x800014b8 ret                            #; ra  = 0x800008c8, goto 0x800008c8
       0     9467        M 0x800008c8 addi    s0, s0, 1              #; s0  = 0x80002b06, (wrb) s0  <-- 0x80002b07
       0     9468        M 0x800008cc addi    s10, s10, 1            #; s10 = 0x80002b08, (wrb) s10 <-- 0x80002b09
       0     9470        M 0x800008d0 mv      s9, s1                 #; s1  = 5, (wrb) s9  <-- 5
       0     9471        M 0x800008d4 lbu     a0, 0(s0)              #; s0  = 0x80002b07, a0  <~~ Byte[0x80002b07]
       0     9482        M                                           #; (lsu) a0  <-- 32
       0     9483        M 0x800008d8 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x800008b0
       0     9484        M 0x800008b0 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     9485        M 0x800008b4 addi    s1, s9, 1              #; s9  = 5, (wrb) s1  <-- 6
       0     9486        M 0x800008b8 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     9487        M 0x800008bc mv      a2, s9                 #; s9  = 5, (wrb) a2  <-- 5
       0     9488        M 0x800008c0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     9489        M 0x800008c4 jalr    s2                     #; s2  = 0x80001410, (wrb) ra  <-- 0x800008c8, goto 0x80001410
       0     9492        M 0x80001410 beqz    a0, pc + 168           #; a0  = 32, not taken
       0     9493        M 0x80001414 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     9494        M 0x80001418 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     9495        M 0x8000141c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     9496        M 0x80001420 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003420
       0     9497        M 0x80001424 addi    a3, a3, -1484          #; a3  = 0x80003420, (wrb) a3  <-- 0x80002e54
       0     9498        M                                           #; (acc) a1  <-- 0x00d605b3
       0     9499        M 0x80001428 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002e54, (wrb) a1  <-- 0x80002e54
       0     9500        M 0x8000142c lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
       0     9511        M                                           #; (lsu) a4  <-- 5
       0     9512        M 0x80001430 addi    a5, a4, 1              #; a4  = 5, (wrb) a5  <-- 6
       0     9513        M 0x80001434 sw      a5, 0(a1)              #; a1  = 0x80002e54, 6 ~~> Word[0x80002e54]
       0     9514        M 0x80001438 add     a4, a1, a4             #; a1  = 0x80002e54, a4  = 5, (wrb) a4  <-- 0x80002e59
       0     9515        M 0x8000143c sb      a0, 72(a4)             #; a4  = 0x80002e59, 32 ~~> Byte[0x80002ea1]
       0     9516        M 0x80001440 lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
       0     9537        M                                           #; (lsu) a4  <-- 6
       0     9538        M 0x80001444 addi    a4, a4, -1020          #; a4  = 6, (wrb) a4  <-- -1014
       0     9539        M 0x80001448 snez    a4, a4                 #; a4  = -1014, (wrb) a4  <-- 1
       0     9540        M 0x8000144c addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
       0     9541        M 0x80001450 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
       0     9542        M 0x80001454 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     9543        M 0x80001458 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800014b8
       0     9546        M 0x800014b8 ret                            #; ra  = 0x800008c8, goto 0x800008c8
       0     9551        M 0x800008c8 addi    s0, s0, 1              #; s0  = 0x80002b07, (wrb) s0  <-- 0x80002b08
       0     9552        M 0x800008cc addi    s10, s10, 1            #; s10 = 0x80002b09, (wrb) s10 <-- 0x80002b0a
       0     9554        M 0x800008d0 mv      s9, s1                 #; s1  = 6, (wrb) s9  <-- 6
       0     9555        M 0x800008d4 lbu     a0, 0(s0)              #; s0  = 0x80002b08, a0  <~~ Byte[0x80002b08]
       0     9566        M                                           #; (lsu) a0  <-- 61
       0     9567        M 0x800008d8 bnez    a0, pc - 40            #; a0  = 61, taken, goto 0x800008b0
       0     9568        M 0x800008b0 beq     a0, s6, pc + 48        #; a0  = 61, s6  = 37, not taken
       0     9569        M 0x800008b4 addi    s1, s9, 1              #; s9  = 6, (wrb) s1  <-- 7
       0     9570        M 0x800008b8 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     9571        M 0x800008bc mv      a2, s9                 #; s9  = 6, (wrb) a2  <-- 6
       0     9572        M 0x800008c0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     9573        M 0x800008c4 jalr    s2                     #; s2  = 0x80001410, (wrb) ra  <-- 0x800008c8, goto 0x80001410
       0     9576        M 0x80001410 beqz    a0, pc + 168           #; a0  = 61, not taken
       0     9577        M 0x80001414 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     9578        M 0x80001418 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     9579        M 0x8000141c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     9580        M 0x80001420 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003420
       0     9581        M 0x80001424 addi    a3, a3, -1484          #; a3  = 0x80003420, (wrb) a3  <-- 0x80002e54
       0     9582        M                                           #; (acc) a1  <-- 0x00d605b3
       0     9583        M 0x80001428 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002e54, (wrb) a1  <-- 0x80002e54
       0     9584        M 0x8000142c lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
       0     9595        M                                           #; (lsu) a4  <-- 6
       0     9596        M 0x80001430 addi    a5, a4, 1              #; a4  = 6, (wrb) a5  <-- 7
       0     9597        M 0x80001434 sw      a5, 0(a1)              #; a1  = 0x80002e54, 7 ~~> Word[0x80002e54]
       0     9598        M 0x80001438 add     a4, a1, a4             #; a1  = 0x80002e54, a4  = 6, (wrb) a4  <-- 0x80002e5a
       0     9599        M 0x8000143c sb      a0, 72(a4)             #; a4  = 0x80002e5a, 61 ~~> Byte[0x80002ea2]
       0     9600        M 0x80001440 lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
       0     9621        M                                           #; (lsu) a4  <-- 7
       0     9622        M 0x80001444 addi    a4, a4, -1020          #; a4  = 7, (wrb) a4  <-- -1013
       0     9623        M 0x80001448 snez    a4, a4                 #; a4  = -1013, (wrb) a4  <-- 1
       0     9624        M 0x8000144c addi    a0, a0, -10            #; a0  = 61, (wrb) a0  <-- 51
       0     9625        M 0x80001450 snez    a0, a0                 #; a0  = 51, (wrb) a0  <-- 1
       0     9626        M 0x80001454 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     9627        M 0x80001458 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800014b8
       0     9630        M 0x800014b8 ret                            #; ra  = 0x800008c8, goto 0x800008c8
       0     9635        M 0x800008c8 addi    s0, s0, 1              #; s0  = 0x80002b08, (wrb) s0  <-- 0x80002b09
       0     9636        M 0x800008cc addi    s10, s10, 1            #; s10 = 0x80002b0a, (wrb) s10 <-- 0x80002b0b
       0     9638        M 0x800008d0 mv      s9, s1                 #; s1  = 7, (wrb) s9  <-- 7
       0     9639        M 0x800008d4 lbu     a0, 0(s0)              #; s0  = 0x80002b09, a0  <~~ Byte[0x80002b09]
       0     9650        M                                           #; (lsu) a0  <-- 32
       0     9651        M 0x800008d8 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x800008b0
       0     9652        M 0x800008b0 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     9653        M 0x800008b4 addi    s1, s9, 1              #; s9  = 7, (wrb) s1  <-- 8
       0     9654        M 0x800008b8 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     9655        M 0x800008bc mv      a2, s9                 #; s9  = 7, (wrb) a2  <-- 7
       0     9656        M 0x800008c0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     9657        M 0x800008c4 jalr    s2                     #; s2  = 0x80001410, (wrb) ra  <-- 0x800008c8, goto 0x80001410
       0     9660        M 0x80001410 beqz    a0, pc + 168           #; a0  = 32, not taken
       0     9661        M 0x80001414 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     9662        M 0x80001418 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     9663        M 0x8000141c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     9664        M 0x80001420 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003420
       0     9665        M 0x80001424 addi    a3, a3, -1484          #; a3  = 0x80003420, (wrb) a3  <-- 0x80002e54
       0     9666        M                                           #; (acc) a1  <-- 0x00d605b3
       0     9667        M 0x80001428 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002e54, (wrb) a1  <-- 0x80002e54
       0     9668        M 0x8000142c lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
       0     9679        M                                           #; (lsu) a4  <-- 7
       0     9680        M 0x80001430 addi    a5, a4, 1              #; a4  = 7, (wrb) a5  <-- 8
       0     9681        M 0x80001434 sw      a5, 0(a1)              #; a1  = 0x80002e54, 8 ~~> Word[0x80002e54]
       0     9682        M 0x80001438 add     a4, a1, a4             #; a1  = 0x80002e54, a4  = 7, (wrb) a4  <-- 0x80002e5b
       0     9683        M 0x8000143c sb      a0, 72(a4)             #; a4  = 0x80002e5b, 32 ~~> Byte[0x80002ea3]
       0     9684        M 0x80001440 lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
       0     9705        M                                           #; (lsu) a4  <-- 8
       0     9706        M 0x80001444 addi    a4, a4, -1020          #; a4  = 8, (wrb) a4  <-- -1012
       0     9707        M 0x80001448 snez    a4, a4                 #; a4  = -1012, (wrb) a4  <-- 1
       0     9708        M 0x8000144c addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
       0     9709        M 0x80001450 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
       0     9710        M 0x80001454 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     9711        M 0x80001458 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800014b8
       0     9714        M 0x800014b8 ret                            #; ra  = 0x800008c8, goto 0x800008c8
       0     9719        M 0x800008c8 addi    s0, s0, 1              #; s0  = 0x80002b09, (wrb) s0  <-- 0x80002b0a
       0     9720        M 0x800008cc addi    s10, s10, 1            #; s10 = 0x80002b0b, (wrb) s10 <-- 0x80002b0c
       0     9722        M 0x800008d0 mv      s9, s1                 #; s1  = 8, (wrb) s9  <-- 8
       0     9723        M 0x800008d4 lbu     a0, 0(s0)              #; s0  = 0x80002b0a, a0  <~~ Byte[0x80002b0a]
       0     9734        M                                           #; (lsu) a0  <-- 37
       0     9735        M 0x800008d8 bnez    a0, pc - 40            #; a0  = 37, taken, goto 0x800008b0
       0     9736        M 0x800008b0 beq     a0, s6, pc + 48        #; a0  = 37, s6  = 37, taken, goto 0x800008e0
       0     9739        M 0x800008e0 li      s0, 0                  #; (wrb) s0  <-- 0
       0     9740        M 0x800008e4 j       pc + 0x10              #; goto 0x800008f4
       0     9742        M 0x800008f4 lbu     a0, -1(s10)            #; s10 = 0x80002b0c, a0  <~~ Byte[0x80002b0b]
       0     9753        M                                           #; (lsu) a0  <-- 102
       0     9754        M 0x800008f8 addi    a1, a0, -32            #; a0  = 102, (wrb) a1  <-- 70
       0     9755        M 0x800008fc bltu    s11, a1, pc + 56       #; s11 = 16, a1  = 70, taken, goto 0x80000934
       0     9767        M 0x80000934 addi    a1, a0, -48            #; a0  = 102, (wrb) a1  <-- 54
       0     9768        M 0x80000938 andi    a2, a1, 255            #; a1  = 54, (wrb) a2  <-- 54
       0     9769        M 0x8000093c addi    a1, s10, -1            #; s10 = 0x80002b0c, (wrb) a1  <-- 0x80002b0b
       0     9779        M 0x80000940 li      a3, 9                  #; (wrb) a3  <-- 9
       0     9780        M 0x80000944 bltu    a3, a2, pc + 124       #; a3  = 9, a2  = 54, taken, goto 0x800009c0
       0     9802        M 0x800009c0 li      a2, 42                 #; (wrb) a2  <-- 42
       0     9803        M 0x800009c4 bne     a0, a2, pc + 80        #; a0  = 102, a2  = 42, taken, goto 0x80000a14
       0     9816        M 0x80000a14 li      s6, 0                  #; (wrb) s6  <-- 0
       0     9817        M 0x80000a18 mv      s10, a1                #; a1  = 0x80002b0b, (wrb) s10 <-- 0x80002b0b
       0     9818        M 0x80000a1c beq     a0, s7, pc - 164       #; a0  = 102, s7  = 46, not taken
       0     9830        M 0x80000a20 li      s7, 0                  #; (wrb) s7  <-- 0
       0     9831        M 0x80000a24 j       pc + 0xc               #; goto 0x80000a30
       0     9833        M 0x80000a30 addi    a1, a0, -104           #; a0  = 102, (wrb) a1  <-- -2
       0     9834        M 0x80000a34 srli    a2, a1, 1              #; a1  = -2, (wrb) a2  <-- 0x7fffffff
       0     9835        M 0x80000a38 slli    a1, a1, 31             #; a1  = -2, (wrb) a1  <-- 0
       0     9836        M 0x80000a3c or      a1, a1, a2             #; a1  = 0, a2  = 0x7fffffff, (wrb) a1  <-- 0x7fffffff
       0     9837        M 0x80000a40 li      a2, 9                  #; (wrb) a2  <-- 9
       0     9838        M 0x80000a44 bltu    a2, a1, pc + 100       #; a2  = 9, a1  = 0x7fffffff, taken, goto 0x80000aa8
       0     9842        M 0x80000aa8 addi    a1, a0, -37            #; a0  = 102, (wrb) a1  <-- 65
       0     9843        M 0x80000aac li      a2, 83                 #; (wrb) a2  <-- 83
       0     9845        M 0x80000ab0 bltu    a2, a1, pc + 264       #; a2  = 83, a1  = 65, not taken
       0     9846        M 0x80000ab4 slli    a1, a1, 2              #; a1  = 65, (wrb) a1  <-- 260
       0     9847        M 0x80000ab8 auipc   a2, 0x2                #; (wrb) a2  <-- 0x80002ab8
       0     9848        M 0x80000abc addi    a2, a2, 200            #; a2  = 0x80002ab8, (wrb) a2  <-- 0x80002b80
       0     9849        M 0x80000ac0 add     a1, a1, a2             #; a1  = 260, a2  = 0x80002b80, (wrb) a1  <-- 0x80002c84
       0     9850        M 0x80000ac4 lw      a2, 0(a1)              #; a1  = 0x80002c84, a2  <~~ Word[0x80002c84]
       0     9851        M 0x80000ac8 li      a1, 8                  #; (wrb) a1  <-- 8
       0     9852        M 0x80000acc li      s8, 16                 #; (wrb) s8  <-- 16
       0     9861        M                                           #; (lsu) a2  <-- 0x80000b00
       0     9862        M 0x80000ad0 jr      a2                     #; a2  = 0x80000b00, goto 0x80000b00
       0     9875        M 0x80000b00 li      a1, 70                 #; (wrb) a1  <-- 70
       0     9876        M 0x80000b04 bne     a0, a1, pc + 8         #; a0  = 102, a1  = 70, taken, goto 0x80000b0c
       0     9877        M 0x80000b0c addi    a0, s3, 7              #; s3  = 0x0011ff24, (wrb) a0  <-- 0x0011ff2b
       0     9878        M 0x80000b10 andi    a0, a0, -8             #; a0  = 0x0011ff2b, (wrb) a0  <-- 0x0011ff28
       0     9880        M 0x80000b18 addi    s3, a0, 8              #; a0  = 0x0011ff28, (wrb) s3  <-- 0x0011ff30
       0     9881        M 0x80000b1c mv      a0, s2                 #; s2  = 0x80001410, (wrb) a0  <-- 0x80001410
                         M 0x80000b14 fld     fa0, 0(a0)             #; fa0  <~~ Doub[0x0011ff28]
       0     9882        M 0x80000b20 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
                         M                                           #; (f:lsu) fa0  <-- 0.0
       0     9883        M 0x80000b24 mv      a2, s9                 #; s9  = 8, (wrb) a2  <-- 8
       0     9884        M 0x80000b28 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     9885        M 0x80000b2c mv      a4, s7                 #; s7  = 0, (wrb) a4  <-- 0
       0     9886        M 0x80000b30 mv      a5, s6                 #; s6  = 0, (wrb) a5  <-- 0
       0     9887        M 0x80000b34 mv      a6, s0                 #; s0  = 0, (wrb) a6  <-- 0
       0     9888        M 0x80000b38 auipc   ra, 0x1                #; (wrb) ra  <-- 0x80001b38
       0     9889        M 0x80000b3c jalr    ra, ra, -1656          #; ra  = 0x80001b38, (wrb) ra  <-- 0x80000b40, goto 0x800014c0
       0     9892        M 0x800014c0 addi    sp, sp, -112           #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011fe30
       0     9893        M 0x800014c4 sw      ra, 108(sp)            #; sp  = 0x0011fe30, 0x80000b40 ~~> Word[0x0011fe9c]
       0     9894        M 0x800014c8 sw      s0, 104(sp)            #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe98]
       0     9895        M 0x800014cc sw      s1, 100(sp)            #; sp  = 0x0011fe30, 8 ~~> Word[0x0011fe94]
       0     9896        M 0x800014d0 sw      s2, 96(sp)             #; sp  = 0x0011fe30, 0x80001410 ~~> Word[0x0011fe90]
       0     9897        M 0x800014d4 sw      s3, 92(sp)             #; sp  = 0x0011fe30, 0x0011ff30 ~~> Word[0x0011fe8c]
       0     9898        M 0x800014d8 sw      s4, 88(sp)             #; sp  = 0x0011fe30, 0x0011ff17 ~~> Word[0x0011fe88]
       0     9899        M 0x800014dc sw      s5, 84(sp)             #; sp  = 0x0011fe30, -1 ~~> Word[0x0011fe84]
       0     9900        M 0x800014e0 sw      s6, 80(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe80]
       0     9901        M 0x800014e4 sw      s7, 76(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe7c]
       0     9902        M 0x800014e8 sw      s8, 72(sp)             #; sp  = 0x0011fe30, 16 ~~> Word[0x0011fe78]
       0     9903        M 0x800014ec sw      s9, 68(sp)             #; sp  = 0x0011fe30, 8 ~~> Word[0x0011fe74]
       0     9904        M 0x800014f0 sw      s10, 64(sp)            #; sp  = 0x0011fe30, 0x80002b0b ~~> Word[0x0011fe70]
       0     9907        M 0x800014f4 fsd     fs0, 56(sp)            #; 5700.0 ~~> Doub[0x0011fe68]
       0     9908        M 0x80001500 auipc   s1, 0x2                #; (wrb) s1  <-- 0x80003500
                         M 0x800014f8 fsd     fs1, 48(sp)            #; 0.0 ~~> Doub[0x0011fe60]
       0     9909        M 0x80001504 addi    s1, s1, -1880          #; s1  = 0x80003500, (wrb) s1  <-- 0x80002da8
                         M 0x800014fc fsd     fs2, 40(sp)            #; 0.0 ~~> Doub[0x0011fe58]
       0     9912        M 0x80001510 mv      s5, a6                 #; a6  = 0, (wrb) s5  <-- 0
                         M 0x80001508 fld     ft0, 0(s1)             #; ft0  <~~ Doub[0x80002da8]
       0     9913        M 0x80001514 mv      s2, a5                 #; a5  = 0, (wrb) s2  <-- 0
       0     9914        M 0x80001518 mv      s3, a3                 #; a3  = -1, (wrb) s3  <-- -1
       0     9915        M 0x8000151c mv      s4, a2                 #; a2  = 8, (wrb) s4  <-- 8
       0     9916        M 0x80001520 mv      s6, a1                 #; a1  = 0x0011ff17, (wrb) s6  <-- 0x0011ff17
       0     9917        M 0x80001524 mv      s7, a0                 #; a0  = 0x80001410, (wrb) s7  <-- 0x80001410
       0     9921        M                                           #; (f:lsu) ft0  <-- -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     9922        M 0x8000150c fle.d   s1, ft0, fa0           #; ft0  = -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000, fa0  = 0.0
       0     9924        M                                           #; (acc) a6  <-- 0x0e049863
       0     9925        M 0x80001528 bnez    s1, pc + 240           #; s1  = 1, taken, goto 0x80001618
       0     9929        M 0x8000161c auipc   a0, 0x1                #; (wrb) a0  <-- 0x8000261c
       0     9930        M 0x80001618 fsgnj.d fs0, fa0, fa0          #; fa0  = 0.0, fa0  = 0.0
       0     9931        M 0x80001620 addi    a0, a0, 1940           #; a0  = 0x8000261c, (wrb) a0  <-- 0x80002db0
                         M                                           #; (f:fpu) fs0  <-- 0.0
       0     9934        M 0x80001624 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002db0]
       0     9943        M                                           #; (f:lsu) ft0  <-- 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     9944        M 0x80001628 fle.d   a0, fa0, ft0           #; fa0  = 0.0, ft0  = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     9946        M                                           #; (acc) t3  <-- 0x00051e63
       0     9947        M 0x8000162c bnez    a0, pc + 28            #; a0  = 1, taken, goto 0x80001648
       0     9950        M 0x80001648 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002648
       0     9951        M 0x8000164c addi    a0, a0, 1904           #; a0  = 0x80002648, (wrb) a0  <-- 0x80002db8
       0     9954        M 0x80001654 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002654
       0     9955        M 0x80001658 addi    a0, a0, 1900           #; a0  = 0x80002654, (wrb) a0  <-- 0x80002dc0
                         M 0x80001650 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002db8]
       0     9958        M 0x8000165c fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80002dc0]
       0     9964        M                                           #; (f:lsu) ft0  <-- 1000000000.0000000
       0     9965        M 0x80001660 fle.d   a0, fs0, ft0           #; fs0  = 0.0, ft0  = 1000000000.0000000
       0     9967        M                                           #; (acc) a0  <-- 0x00b57533
                         M                                           #; (f:lsu) ft1  <-- -1000000000.0000000
       0     9968        M 0x80001664 fle.d   a1, ft1, fs0           #; ft1  = -1000000000.0000000, fs0  = 0.0
       0     9970        M                                           #; (acc) a0  <-- 0x00b57533
       0     9971        M 0x80001668 and     a0, a0, a1             #; a0  = 1, a1  = 1, (wrb) a0  <-- 1
       0     9972        M 0x8000166c bnez    a0, pc + 252           #; a0  = 1, taken, goto 0x80001768
       0     9975        M 0x80001768 andi    a0, s5, 1024           #; s5  = 0, (wrb) a0  <-- 0
       0     9976        M 0x8000176c li      s8, 6                  #; (wrb) s8  <-- 6
       0     9978        M 0x80001770 beqz    a0, pc + 8             #; a0  = 0, taken, goto 0x80001778
       0     9979        M 0x80001778 li      a0, 10                 #; (wrb) a0  <-- 10
       0     9982        M 0x8000177c fsgnjx.d fs2, fs0, fs0         #; fs0  = 0.0, fs0  = 0.0
       0     9983        M                                           #; (f:fpu) fs2  <-- 0.0
       0     9990        M 0x80001780 bltu    s8, a0, pc + 56        #; s8  = 6, a0  = 10, taken, goto 0x800017b8
       0    10004        M 0x800017b8 li      s0, 0                  #; (wrb) s0  <-- 0
       0    10005        M 0x800017bc slli    a0, s8, 3              #; s8  = 6, (wrb) a0  <-- 48
       0    10007        M 0x800017c0 auipc   a1, 0x1                #; (wrb) a1  <-- 0x800027c0
       0    10008        M 0x800017c4 addi    a1, a1, 1296           #; a1  = 0x800027c0, (wrb) a1  <-- 0x80002cd0
       0    10009        M 0x800017c8 add     a0, a0, a1             #; a0  = 48, a1  = 0x80002cd0, (wrb) a0  <-- 0x80002d00
       0    10012        M 0x800017cc fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80002d00]
       0    10013        M 0x800017d0 fcvt.w.d s1, fs2               #; fs2  = 0.0
       0    10017        M 0x800017d4 fcvt.d.w ft0, s1               #; ac1  = 0
       0    10018        M                                           #; (f:fpu) ft0  <-- 0.0
       0    10019        M 0x800017e0 auipc   a0, 0x1                #; (wrb) a0  <-- 0x800027e0
                         M 0x800017d8 fsub.d  ft0, fs2, ft0          #; fs2  = 0.0, ft0  = 0.0
       0    10020        M 0x800017e4 addi    a0, a0, 1512           #; a0  = 0x800027e0, (wrb) a0  <-- 0x80002dc8
       0    10021        M                                           #; (f:lsu) ft1  <-- 1000000.0000000
       0    10022        M                                           #; (f:fpu) ft0  <-- 0.0
       0    10023        M 0x800017dc fmul.d  ft2, ft1, ft0          #; ft1  = 1000000.0000000, ft0  = 0.0
       0    10024        M 0x800017e8 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002dc8]
       0    10026        M                                           #; (f:fpu) ft2  <-- 0.0
       0    10027        M 0x800017ec fcvt.wu.d a0, ft2              #; ft2  = 0.0
       0    10029        M                                           #; (acc) gp  <-- 0xd21501d3
       0    10031        M 0x800017f0 fcvt.d.wu ft3, a0              #; ac1  = 0
       0    10032        M                                           #; (f:fpu) ft3  <-- 0.0
       0    10033        M 0x800017f4 fsub.d  ft2, ft2, ft3          #; ft2  = 0.0, ft3  = 0.0, (f:lsu) ft0  <-- 0.5
       0    10036        M                                           #; (f:fpu) ft2  <-- 0.0
       0    10037        M 0x800017f8 fle.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
       0    10040        M 0x800017fc bnez    a1, pc + 32            #; a1  = 1, taken, goto 0x8000181c
       0    10044        M 0x8000181c flt.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
       0    10046        M                                           #; (acc) s4  <-- 0x00059a63
       0    10047        M 0x80001820 bnez    a1, pc + 20            #; a1  = 1, taken, goto 0x80001834
       0    10050        M 0x80001838 beqz    s8, pc + 216           #; s8  = 6, not taken
                         M 0x80001834 fcvt.d.w fs1, zero             #; ac1  = 0
       0    10051        M 0x8000183c li      a2, 0                  #; (wrb) a2  <-- 0
                         M                                           #; (f:fpu) fs1  <-- 0.0
       0    10052        M 0x80001840 addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
       0    10053        M 0x80001844 add     t1, a1, s0             #; a1  = 0x0011fe38, s0  = 0, (wrb) t1  <-- 0x0011fe38
       0    10054        M 0x80001848 li      t0, 32                 #; (wrb) t0  <-- 32
       0    10055        M 0x8000184c sub     a4, t0, s0             #; t0  = 32, s0  = 0, (wrb) a4  <-- 32
       0    10056        M 0x80001850 lui     a1, 0xccccd            #; (wrb) a1  <-- 0xccccd000
       0    10057        M 0x80001854 addi    t2, a1, -819           #; a1  = 0xccccd000, (wrb) t2  <-- 0xcccccccd
       0    10058        M 0x80001858 li      a6, 10                 #; (wrb) a6  <-- 10
       0    10059        M 0x8000185c li      a7, 9                  #; (wrb) a7  <-- 9
       0    10060        M 0x80001860 beq     a4, a2, pc + 200       #; a4  = 32, a2  = 0, not taken
       0    10061        M 0x80001864 mv      a1, a0                 #; a0  = 0, (wrb) a1  <-- 0
       0    10062        M 0x80001868 mulhu   a0, a0, t2             #; a0  = 0, t2  = 0xcccccccd
       0    10065        M                                           #; (acc) a0  <-- 0x00355513
       0    10066        M 0x8000186c srli    a0, a0, 3              #; a0  = 0, (wrb) a0  <-- 0
       0    10067        M 0x80001870 mul     a3, a0, a6             #; a0  = 0, a6  = 10
       0    10070        M                                           #; (acc) a3  <-- 0x40d586b3
       0    10071        M 0x80001874 sub     a3, a1, a3             #; a1  = 0, a3  = 0, (wrb) a3  <-- 0
       0    10072        M 0x80001878 ori     a3, a3, 48             #; a3  = 0, (wrb) a3  <-- 48
       0    10073        M 0x8000187c add     a5, t1, a2             #; t1  = 0x0011fe38, a2  = 0, (wrb) a5  <-- 0x0011fe38
       0    10074        M 0x80001880 sb      a3, 0(a5)              #; a5  = 0x0011fe38, 48 ~~> Byte[0x0011fe38]
       0    10075        M 0x80001884 addi    a2, a2, 1              #; a2  = 0, (wrb) a2  <-- 1
       0    10076        M 0x80001888 bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 0, not taken
       0    10077        M 0x8000188c add     a0, s0, a2             #; s0  = 0, a2  = 1, (wrb) a0  <-- 1
       0    10080        M 0x80001890 addi    a1, a0, -1             #; a0  = 1, (wrb) a1  <-- 0
       0    10081        M 0x80001894 li      a3, 30                 #; (wrb) a3  <-- 30
       0    10082        M 0x80001898 sltu    a3, a3, a1             #; a3  = 30, a1  = 0, (wrb) a3  <-- 0
       0    10083        M 0x8000189c xor     a4, s8, a2             #; s8  = 6, a2  = 1, (wrb) a4  <-- 7
       0    10084        M 0x800018a0 seqz    a4, a4                 #; a4  = 7, (wrb) a4  <-- 0
       0    10085        M 0x800018a4 or      a3, a3, a4             #; a3  = 0, a4  = 0, (wrb) a3  <-- 0
       0    10086        M 0x800018a8 bnez    a3, pc + 136           #; a3  = 0, not taken
       0    10087        M 0x800018ac addi    a0, sp, 8              #; sp  = 0x0011fe30, (wrb) a0  <-- 0x0011fe38
       0    10088        M 0x800018b0 add     a0, a0, s0             #; a0  = 0x0011fe38, s0  = 0, (wrb) a0  <-- 0x0011fe38
       0    10089        M 0x800018b4 not     a1, a2                 #; a2  = 1, (wrb) a1  <-- -2
       0    10090        M 0x800018b8 add     s8, a1, s8             #; a1  = -2, s8  = 6, (wrb) s8  <-- 4
       0    10091        M 0x800018bc add     s0, s0, a2             #; s0  = 0, a2  = 1, (wrb) s0  <-- 1
       0    10092        M 0x800018c0 li      a1, 31                 #; (wrb) a1  <-- 31
       0    10093        M 0x800018c4 sub     a3, a1, s0             #; a1  = 31, s0  = 1, (wrb) a3  <-- 30
       0    10094        M 0x800018c8 add     a0, a0, a2             #; a0  = 0x0011fe38, a2  = 1, (wrb) a0  <-- 0x0011fe39
       0    10095        M 0x800018cc mv      a1, s8                 #; s8  = 4, (wrb) a1  <-- 4
       0    10096        M 0x800018d0 bltu    s8, a3, pc + 8         #; s8  = 4, a3  = 30, taken, goto 0x800018d8
       0    10097        M 0x800018d8 addi    a2, a1, 1              #; a1  = 4, (wrb) a2  <-- 5
       0    10098        M 0x800018dc li      a1, 48                 #; (wrb) a1  <-- 48
       0    10099        M 0x800018e0 auipc   ra, 0xfffff            #; (wrb) ra  <-- 0x800008e0
       0    10100        M 0x800018e4 jalr    ra, ra, -904           #; ra  = 0x800008e0, (wrb) ra  <-- 0x800018e8, goto 0x80000558
       0    10104        M 0x80000558 li      t1, 15                 #; (wrb) t1  <-- 15
       0    10105        M 0x8000055c mv      a4, a0                 #; a0  = 0x0011fe39, (wrb) a4  <-- 0x0011fe39
       0    10107        M 0x80000560 bgeu    t1, a2, pc + 60        #; t1  = 15, a2  = 5, taken, goto 0x8000059c
       0    10112        M 0x8000059c sub     a3, t1, a2             #; t1  = 15, a2  = 5, (wrb) a3  <-- 10
       0    10115        M 0x800005a0 slli    a3, a3, 2              #; a3  = 10, (wrb) a3  <-- 40
       0    10116        M 0x800005a4 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800005a4
       0    10117        M 0x800005a8 add     a3, a3, t0             #; a3  = 40, t0  = 0x800005a4, (wrb) a3  <-- 0x800005cc
       0    10118        M 0x800005ac jalr    zero, a3, 12           #; a3  = 0x800005cc, goto 0x800005d8
       0    10121        M 0x800005d8 sb      a1, 4(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3d]
       0    10122        M 0x800005dc sb      a1, 3(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3c]
       0    10124        M 0x800005e0 sb      a1, 2(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3b]
       0    10125        M 0x800005e4 sb      a1, 1(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3a]
       0    10126        M 0x800005e8 sb      a1, 0(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe39]
       0    10127        M 0x800005ec ret                            #; ra  = 0x800018e8, goto 0x800018e8
       0    10130        M 0x800018e8 li      a0, 0                  #; (wrb) a0  <-- 0
       0    10131        M 0x800018ec add     a1, s0, a0             #; s0  = 1, a0  = 0, (wrb) a1  <-- 1
       0    10133        M 0x800018f0 sltiu   a1, a1, 31             #; a1  = 1, (wrb) a1  <-- 1
       0    10134        M 0x800018f4 xor     a2, s8, a0             #; s8  = 4, a0  = 0, (wrb) a2  <-- 4
       0    10135        M 0x800018f8 snez    a2, a2                 #; a2  = 4, (wrb) a2  <-- 1
       0    10136        M 0x800018fc and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0    10137        M 0x80001900 addi    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0    10138        M 0x80001904 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x800018ec
       0    10139        M 0x800018ec add     a1, s0, a0             #; s0  = 1, a0  = 1, (wrb) a1  <-- 2
       0    10140        M 0x800018f0 sltiu   a1, a1, 31             #; a1  = 2, (wrb) a1  <-- 1
       0    10141        M 0x800018f4 xor     a2, s8, a0             #; s8  = 4, a0  = 1, (wrb) a2  <-- 5
       0    10142        M 0x800018f8 snez    a2, a2                 #; a2  = 5, (wrb) a2  <-- 1
       0    10143        M 0x800018fc and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0    10144        M 0x80001900 addi    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 2
       0    10145        M 0x80001904 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x800018ec
       0    10146        M 0x800018ec add     a1, s0, a0             #; s0  = 1, a0  = 2, (wrb) a1  <-- 3
       0    10147        M 0x800018f0 sltiu   a1, a1, 31             #; a1  = 3, (wrb) a1  <-- 1
       0    10148        M 0x800018f4 xor     a2, s8, a0             #; s8  = 4, a0  = 2, (wrb) a2  <-- 6
       0    10149        M 0x800018f8 snez    a2, a2                 #; a2  = 6, (wrb) a2  <-- 1
       0    10150        M 0x800018fc and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0    10151        M 0x80001900 addi    a0, a0, 1              #; a0  = 2, (wrb) a0  <-- 3
       0    10152        M 0x80001904 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x800018ec
       0    10153        M 0x800018ec add     a1, s0, a0             #; s0  = 1, a0  = 3, (wrb) a1  <-- 4
       0    10154        M 0x800018f0 sltiu   a1, a1, 31             #; a1  = 4, (wrb) a1  <-- 1
       0    10155        M 0x800018f4 xor     a2, s8, a0             #; s8  = 4, a0  = 3, (wrb) a2  <-- 7
       0    10156        M 0x800018f8 snez    a2, a2                 #; a2  = 7, (wrb) a2  <-- 1
       0    10157        M 0x800018fc and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0    10158        M 0x80001900 addi    a0, a0, 1              #; a0  = 3, (wrb) a0  <-- 4
       0    10159        M 0x80001904 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x800018ec
       0    10160        M 0x800018ec add     a1, s0, a0             #; s0  = 1, a0  = 4, (wrb) a1  <-- 5
       0    10161        M 0x800018f0 sltiu   a1, a1, 31             #; a1  = 5, (wrb) a1  <-- 1
       0    10162        M 0x800018f4 xor     a2, s8, a0             #; s8  = 4, a0  = 4, (wrb) a2  <-- 0
       0    10163        M 0x800018f8 snez    a2, a2                 #; a2  = 0, (wrb) a2  <-- 0
       0    10164        M 0x800018fc and     a2, a1, a2             #; a1  = 1, a2  = 0, (wrb) a2  <-- 0
       0    10165        M 0x80001900 addi    a0, a0, 1              #; a0  = 4, (wrb) a0  <-- 5
       0    10166        M 0x80001904 bnez    a2, pc - 24            #; a2  = 0, not taken
       0    10167        M 0x80001908 add     a0, s0, a0             #; s0  = 1, a0  = 5, (wrb) a0  <-- 6
       0    10168        M 0x8000190c j       pc + 0x28              #; goto 0x80001934
       0    10170        M 0x80001934 beqz    a1, pc + 28            #; a1  = 1, not taken
       0    10171        M 0x80001938 addi    s0, a0, 1              #; a0  = 6, (wrb) s0  <-- 7
       0    10172        M 0x8000193c addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
       0    10173        M 0x80001940 add     a0, a1, a0             #; a1  = 0x0011fe38, a0  = 6, (wrb) a0  <-- 0x0011fe3e
       0    10174        M 0x80001944 li      a1, 46                 #; (wrb) a1  <-- 46
       0    10175        M 0x80001948 sb      a1, 0(a0)              #; a0  = 0x0011fe3e, 46 ~~> Byte[0x0011fe3e]
       0    10176        M 0x8000194c j       pc + 0x8               #; goto 0x80001954
       0    10177        M 0x80001954 li      a0, 32                 #; (wrb) a0  <-- 32
       0    10178        M 0x80001958 mv      t0, s0                 #; s0  = 7, (wrb) t0  <-- 7
       0    10179        M 0x8000195c bltu    a0, s0, pc + 8         #; a0  = 32, s0  = 7, not taken
       0    10180        M 0x80001960 li      t0, 32                 #; (wrb) t0  <-- 32
       0    10182        M 0x80001968 lui     a0, 0x66666            #; (wrb) a0  <-- 0x66666000
                         M 0x80001964 flt.d   s9, fs0, fs1           #; fs0  = 0.0, fs1  = 0.0
       0    10183        M 0x8000196c addi    a1, a0, 1639           #; a0  = 0x66666000, (wrb) a1  <-- 0x66666667
       0    10192        M 0x80001970 li      a6, 10                 #; (wrb) a6  <-- 10
       0    10193        M 0x80001974 addi    a3, sp, 8              #; sp  = 0x0011fe30, (wrb) a3  <-- 0x0011fe38
       0    10194        M 0x80001978 li      a4, 18                 #; (wrb) a4  <-- 18
       0    10195        M 0x8000197c beq     t0, s0, pc + 64        #; t0  = 32, s0  = 7, not taken
       0    10196        M 0x80001980 mulh    a0, s1, a1             #; s1  = 0, a1  = 0x66666667
       0    10199        M                                           #; (acc) a5  <-- 0x01f55793
       0    10200        M 0x80001984 srli    a5, a0, 31             #; a0  = 0, (wrb) a5  <-- 0
       0    10201        M 0x80001988 srai    a0, a0, 2              #; a0  = 0, (wrb) a0  <-- 0
       0    10202        M 0x8000198c add     a0, a0, a5             #; a0  = 0, a5  = 0, (wrb) a0  <-- 0
       0    10203        M 0x80001990 mul     a5, a0, a6             #; a0  = 0, a6  = 10
       0    10206        M                                           #; (acc) a5  <-- 0x40f487b3
       0    10207        M 0x80001994 sub     a5, s1, a5             #; s1  = 0, a5  = 0, (wrb) a5  <-- 0
       0    10208        M 0x80001998 addi    a5, a5, 48             #; a5  = 0, (wrb) a5  <-- 48
       0    10209        M 0x8000199c addi    s8, s0, 1              #; s0  = 7, (wrb) s8  <-- 8
       0    10210        M 0x800019a0 add     s0, a3, s0             #; a3  = 0x0011fe38, s0  = 7, (wrb) s0  <-- 0x0011fe3f
       0    10211        M 0x800019a4 addi    a2, s1, 9              #; s1  = 0, (wrb) a2  <-- 9
       0    10212        M 0x800019a8 sb      a5, 0(s0)              #; s0  = 0x0011fe3f, 48 ~~> Byte[0x0011fe3f]
       0    10213        M 0x800019ac mv      s0, s8                 #; s8  = 8, (wrb) s0  <-- 8
       0    10214        M 0x800019b0 mv      s1, a0                 #; a0  = 0, (wrb) s1  <-- 0
       0    10215        M 0x800019b4 bltu    a4, a2, pc - 56        #; a4  = 18, a2  = 9, not taken
       0    10216        M 0x800019b8 j       pc + 0x8               #; goto 0x800019c0
       0    10219        M 0x800019c0 andi    s1, s5, 3              #; s5  = 0, (wrb) s1  <-- 0
       0    10220        M 0x800019c4 li      a0, 1                  #; (wrb) a0  <-- 1
       0    10221        M 0x800019c8 bne     s1, a0, pc + 108       #; s1  = 0, a0  = 1, taken, goto 0x80001a34
       0    10224        M 0x80001a34 li      a0, 31                 #; (wrb) a0  <-- 31
       0    10225        M 0x80001a38 bltu    a0, s8, pc + 84        #; a0  = 31, s8  = 8, not taken
       0    10226        M 0x80001a3c beqz    s9, pc + 24            #; s9  = 0, taken, goto 0x80001a54
       0    10229        M 0x80001a54 andi    a0, s5, 4              #; s5  = 0, (wrb) a0  <-- 0
       0    10230        M 0x80001a58 bnez    a0, pc + 32            #; a0  = 0, not taken
       0    10231        M 0x80001a5c andi    a0, s5, 8              #; s5  = 0, (wrb) a0  <-- 0
       0    10232        M 0x80001a60 beqz    a0, pc + 44            #; a0  = 0, taken, goto 0x80001a8c
       0    10237        M 0x80001a8c snez    a0, s1                 #; s1  = 0, (wrb) a0  <-- 0
       0    10240        M 0x80001a90 sltu    a1, s8, s2             #; s8  = 8, s2  = 0, (wrb) a1  <-- 0
       0    10241        M 0x80001a94 xori    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
       0    10242        M 0x80001a98 or      a0, a0, a1             #; a0  = 0, a1  = 1, (wrb) a0  <-- 1
       0    10243        M 0x80001a9c andi    s5, s5, 2              #; s5  = 0, (wrb) s5  <-- 0
       0    10244        M 0x80001aa0 mv      s0, s4                 #; s4  = 8, (wrb) s0  <-- 8
       0    10245        M 0x80001aa4 bnez    a0, pc + 44            #; a0  = 1, taken, goto 0x80001ad0
       0    10249        M 0x80001ad0 srli    s5, s5, 1              #; s5  = 0, (wrb) s5  <-- 0
       0    10250        M 0x80001ad4 beqz    s8, pc + 56            #; s8  = 8, not taken
       0    10251        M 0x80001ad8 addi    s9, sp, 7              #; sp  = 0x0011fe30, (wrb) s9  <-- 0x0011fe37
       0    10252        M 0x80001adc add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 8, (wrb) a0  <-- 0x0011fe3f
       0    10253        M 0x80001ae0 lbu     a0, 0(a0)              #; a0  = 0x0011fe3f, a0  <~~ Byte[0x0011fe3f]
       0    10254        M 0x80001ae4 addi    s10, s8, -1            #; s8  = 8, (wrb) s10 <-- 7
       0    10255        M 0x80001ae8 addi    s1, s0, 1              #; s0  = 8, (wrb) s1  <-- 9
       0    10256        M 0x80001aec mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0    10257        M 0x80001af0 mv      a2, s0                 #; s0  = 8, (wrb) a2  <-- 8
       0    10258        M 0x80001af4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0    10259        M 0x80001af8 jalr    s7                     #; s7  = 0x80001410, (wrb) ra  <-- 0x80001afc, goto 0x80001410
       0    10260        M                                           #; (lsu) a0  <-- 48
       0    10262        M 0x80001410 beqz    a0, pc + 168           #; a0  = 48, not taken
       0    10263        M 0x80001414 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0    10264        M 0x80001418 li      a2, 1096               #; (wrb) a2  <-- 1096
       0    10265        M 0x8000141c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0    10266        M 0x80001420 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003420
       0    10267        M 0x80001424 addi    a3, a3, -1484          #; a3  = 0x80003420, (wrb) a3  <-- 0x80002e54
       0    10268        M                                           #; (acc) a1  <-- 0x00d605b3
       0    10269        M 0x80001428 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002e54, (wrb) a1  <-- 0x80002e54
       0    10270        M 0x8000142c lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
       0    10281        M                                           #; (lsu) a4  <-- 8
       0    10282        M 0x80001430 addi    a5, a4, 1              #; a4  = 8, (wrb) a5  <-- 9
       0    10283        M 0x80001434 sw      a5, 0(a1)              #; a1  = 0x80002e54, 9 ~~> Word[0x80002e54]
       0    10284        M 0x80001438 add     a4, a1, a4             #; a1  = 0x80002e54, a4  = 8, (wrb) a4  <-- 0x80002e5c
       0    10285        M 0x8000143c sb      a0, 72(a4)             #; a4  = 0x80002e5c, 48 ~~> Byte[0x80002ea4]
       0    10286        M 0x80001440 lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
       0    10307        M                                           #; (lsu) a4  <-- 9
       0    10308        M 0x80001444 addi    a4, a4, -1020          #; a4  = 9, (wrb) a4  <-- -1011
       0    10309        M 0x80001448 snez    a4, a4                 #; a4  = -1011, (wrb) a4  <-- 1
       0    10310        M 0x8000144c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0    10311        M 0x80001450 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0    10312        M 0x80001454 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0    10313        M 0x80001458 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800014b8
       0    10316        M 0x800014b8 ret                            #; ra  = 0x80001afc, goto 0x80001afc
       0    10321        M 0x80001afc mv      s0, s1                 #; s1  = 9, (wrb) s0  <-- 9
       0    10324        M 0x80001b00 mv      s8, s10                #; s10 = 7, (wrb) s8  <-- 7
       0    10325        M 0x80001b04 bnez    s10, pc - 40           #; s10 = 7, taken, goto 0x80001adc
       0    10327        M 0x80001adc add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 7, (wrb) a0  <-- 0x0011fe3e
       0    10330        M 0x80001ae0 lbu     a0, 0(a0)              #; a0  = 0x0011fe3e, a0  <~~ Byte[0x0011fe3e]
       0    10331        M 0x80001ae4 addi    s10, s8, -1            #; s8  = 7, (wrb) s10 <-- 6
       0    10332        M 0x80001ae8 addi    s1, s0, 1              #; s0  = 9, (wrb) s1  <-- 10
       0    10333        M 0x80001aec mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0    10334        M 0x80001af0 mv      a2, s0                 #; s0  = 9, (wrb) a2  <-- 9
       0    10335        M 0x80001af4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0    10336        M 0x80001af8 jalr    s7                     #; s7  = 0x80001410, (wrb) ra  <-- 0x80001afc, goto 0x80001410
       0    10337        M                                           #; (lsu) a0  <-- 46
       0    10339        M 0x80001410 beqz    a0, pc + 168           #; a0  = 46, not taken
       0    10340        M 0x80001414 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0    10341        M 0x80001418 li      a2, 1096               #; (wrb) a2  <-- 1096
       0    10342        M 0x8000141c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0    10343        M 0x80001420 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003420
       0    10344        M 0x80001424 addi    a3, a3, -1484          #; a3  = 0x80003420, (wrb) a3  <-- 0x80002e54
       0    10345        M                                           #; (acc) a1  <-- 0x00d605b3
       0    10346        M 0x80001428 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002e54, (wrb) a1  <-- 0x80002e54
       0    10347        M 0x8000142c lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
       0    10358        M                                           #; (lsu) a4  <-- 9
       0    10359        M 0x80001430 addi    a5, a4, 1              #; a4  = 9, (wrb) a5  <-- 10
       0    10360        M 0x80001434 sw      a5, 0(a1)              #; a1  = 0x80002e54, 10 ~~> Word[0x80002e54]
       0    10361        M 0x80001438 add     a4, a1, a4             #; a1  = 0x80002e54, a4  = 9, (wrb) a4  <-- 0x80002e5d
       0    10362        M 0x8000143c sb      a0, 72(a4)             #; a4  = 0x80002e5d, 46 ~~> Byte[0x80002ea5]
       0    10363        M 0x80001440 lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
       0    10384        M                                           #; (lsu) a4  <-- 10
       0    10385        M 0x80001444 addi    a4, a4, -1020          #; a4  = 10, (wrb) a4  <-- -1010
       0    10386        M 0x80001448 snez    a4, a4                 #; a4  = -1010, (wrb) a4  <-- 1
       0    10387        M 0x8000144c addi    a0, a0, -10            #; a0  = 46, (wrb) a0  <-- 36
       0    10388        M 0x80001450 snez    a0, a0                 #; a0  = 36, (wrb) a0  <-- 1
       0    10389        M 0x80001454 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0    10390        M 0x80001458 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800014b8
       0    10393        M 0x800014b8 ret                            #; ra  = 0x80001afc, goto 0x80001afc
       0    10398        M 0x80001afc mv      s0, s1                 #; s1  = 10, (wrb) s0  <-- 10
       0    10401        M 0x80001b00 mv      s8, s10                #; s10 = 6, (wrb) s8  <-- 6
       0    10402        M 0x80001b04 bnez    s10, pc - 40           #; s10 = 6, taken, goto 0x80001adc
       0    10404        M 0x80001adc add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 6, (wrb) a0  <-- 0x0011fe3d
       0    10407        M 0x80001ae0 lbu     a0, 0(a0)              #; a0  = 0x0011fe3d, a0  <~~ Byte[0x0011fe3d]
       0    10408        M 0x80001ae4 addi    s10, s8, -1            #; s8  = 6, (wrb) s10 <-- 5
       0    10409        M 0x80001ae8 addi    s1, s0, 1              #; s0  = 10, (wrb) s1  <-- 11
       0    10410        M 0x80001aec mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0    10411        M 0x80001af0 mv      a2, s0                 #; s0  = 10, (wrb) a2  <-- 10
       0    10412        M 0x80001af4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0    10413        M 0x80001af8 jalr    s7                     #; s7  = 0x80001410, (wrb) ra  <-- 0x80001afc, goto 0x80001410
       0    10414        M                                           #; (lsu) a0  <-- 48
       0    10416        M 0x80001410 beqz    a0, pc + 168           #; a0  = 48, not taken
       0    10417        M 0x80001414 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0    10418        M 0x80001418 li      a2, 1096               #; (wrb) a2  <-- 1096
       0    10419        M 0x8000141c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0    10420        M 0x80001420 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003420
       0    10421        M 0x80001424 addi    a3, a3, -1484          #; a3  = 0x80003420, (wrb) a3  <-- 0x80002e54
       0    10422        M                                           #; (acc) a1  <-- 0x00d605b3
       0    10423        M 0x80001428 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002e54, (wrb) a1  <-- 0x80002e54
       0    10424        M 0x8000142c lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
       0    10435        M                                           #; (lsu) a4  <-- 10
       0    10436        M 0x80001430 addi    a5, a4, 1              #; a4  = 10, (wrb) a5  <-- 11
       0    10437        M 0x80001434 sw      a5, 0(a1)              #; a1  = 0x80002e54, 11 ~~> Word[0x80002e54]
       0    10438        M 0x80001438 add     a4, a1, a4             #; a1  = 0x80002e54, a4  = 10, (wrb) a4  <-- 0x80002e5e
       0    10439        M 0x8000143c sb      a0, 72(a4)             #; a4  = 0x80002e5e, 48 ~~> Byte[0x80002ea6]
       0    10440        M 0x80001440 lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
       0    10461        M                                           #; (lsu) a4  <-- 11
       0    10462        M 0x80001444 addi    a4, a4, -1020          #; a4  = 11, (wrb) a4  <-- -1009
       0    10463        M 0x80001448 snez    a4, a4                 #; a4  = -1009, (wrb) a4  <-- 1
       0    10464        M 0x8000144c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0    10465        M 0x80001450 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0    10466        M 0x80001454 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0    10467        M 0x80001458 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800014b8
       0    10470        M 0x800014b8 ret                            #; ra  = 0x80001afc, goto 0x80001afc
       0    10475        M 0x80001afc mv      s0, s1                 #; s1  = 11, (wrb) s0  <-- 11
       0    10478        M 0x80001b00 mv      s8, s10                #; s10 = 5, (wrb) s8  <-- 5
       0    10479        M 0x80001b04 bnez    s10, pc - 40           #; s10 = 5, taken, goto 0x80001adc
       0    10481        M 0x80001adc add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 5, (wrb) a0  <-- 0x0011fe3c
       0    10484        M 0x80001ae0 lbu     a0, 0(a0)              #; a0  = 0x0011fe3c, a0  <~~ Byte[0x0011fe3c]
       0    10485        M 0x80001ae4 addi    s10, s8, -1            #; s8  = 5, (wrb) s10 <-- 4
       0    10486        M 0x80001ae8 addi    s1, s0, 1              #; s0  = 11, (wrb) s1  <-- 12
       0    10487        M 0x80001aec mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0    10488        M 0x80001af0 mv      a2, s0                 #; s0  = 11, (wrb) a2  <-- 11
       0    10489        M 0x80001af4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0    10490        M 0x80001af8 jalr    s7                     #; s7  = 0x80001410, (wrb) ra  <-- 0x80001afc, goto 0x80001410
       0    10491        M                                           #; (lsu) a0  <-- 48
       0    10493        M 0x80001410 beqz    a0, pc + 168           #; a0  = 48, not taken
       0    10494        M 0x80001414 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0    10495        M 0x80001418 li      a2, 1096               #; (wrb) a2  <-- 1096
       0    10496        M 0x8000141c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0    10497        M 0x80001420 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003420
       0    10498        M 0x80001424 addi    a3, a3, -1484          #; a3  = 0x80003420, (wrb) a3  <-- 0x80002e54
       0    10499        M                                           #; (acc) a1  <-- 0x00d605b3
       0    10500        M 0x80001428 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002e54, (wrb) a1  <-- 0x80002e54
       0    10501        M 0x8000142c lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
       0    10512        M                                           #; (lsu) a4  <-- 11
       0    10513        M 0x80001430 addi    a5, a4, 1              #; a4  = 11, (wrb) a5  <-- 12
       0    10514        M 0x80001434 sw      a5, 0(a1)              #; a1  = 0x80002e54, 12 ~~> Word[0x80002e54]
       0    10515        M 0x80001438 add     a4, a1, a4             #; a1  = 0x80002e54, a4  = 11, (wrb) a4  <-- 0x80002e5f
       0    10516        M 0x8000143c sb      a0, 72(a4)             #; a4  = 0x80002e5f, 48 ~~> Byte[0x80002ea7]
       0    10517        M 0x80001440 lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
       0    10538        M                                           #; (lsu) a4  <-- 12
       0    10539        M 0x80001444 addi    a4, a4, -1020          #; a4  = 12, (wrb) a4  <-- -1008
       0    10540        M 0x80001448 snez    a4, a4                 #; a4  = -1008, (wrb) a4  <-- 1
       0    10541        M 0x8000144c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0    10542        M 0x80001450 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0    10543        M 0x80001454 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0    10544        M 0x80001458 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800014b8
       0    10547        M 0x800014b8 ret                            #; ra  = 0x80001afc, goto 0x80001afc
       0    10552        M 0x80001afc mv      s0, s1                 #; s1  = 12, (wrb) s0  <-- 12
       0    10555        M 0x80001b00 mv      s8, s10                #; s10 = 4, (wrb) s8  <-- 4
       0    10556        M 0x80001b04 bnez    s10, pc - 40           #; s10 = 4, taken, goto 0x80001adc
       0    10558        M 0x80001adc add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 4, (wrb) a0  <-- 0x0011fe3b
       0    10561        M 0x80001ae0 lbu     a0, 0(a0)              #; a0  = 0x0011fe3b, a0  <~~ Byte[0x0011fe3b]
       0    10562        M 0x80001ae4 addi    s10, s8, -1            #; s8  = 4, (wrb) s10 <-- 3
       0    10563        M 0x80001ae8 addi    s1, s0, 1              #; s0  = 12, (wrb) s1  <-- 13
       0    10564        M 0x80001aec mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0    10565        M 0x80001af0 mv      a2, s0                 #; s0  = 12, (wrb) a2  <-- 12
       0    10566        M 0x80001af4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0    10567        M 0x80001af8 jalr    s7                     #; s7  = 0x80001410, (wrb) ra  <-- 0x80001afc, goto 0x80001410
       0    10568        M                                           #; (lsu) a0  <-- 48
       0    10570        M 0x80001410 beqz    a0, pc + 168           #; a0  = 48, not taken
       0    10571        M 0x80001414 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0    10572        M 0x80001418 li      a2, 1096               #; (wrb) a2  <-- 1096
       0    10573        M 0x8000141c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0    10574        M 0x80001420 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003420
       0    10575        M 0x80001424 addi    a3, a3, -1484          #; a3  = 0x80003420, (wrb) a3  <-- 0x80002e54
       0    10576        M                                           #; (acc) a1  <-- 0x00d605b3
       0    10577        M 0x80001428 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002e54, (wrb) a1  <-- 0x80002e54
       0    10578        M 0x8000142c lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
       0    10589        M                                           #; (lsu) a4  <-- 12
       0    10590        M 0x80001430 addi    a5, a4, 1              #; a4  = 12, (wrb) a5  <-- 13
       0    10591        M 0x80001434 sw      a5, 0(a1)              #; a1  = 0x80002e54, 13 ~~> Word[0x80002e54]
       0    10592        M 0x80001438 add     a4, a1, a4             #; a1  = 0x80002e54, a4  = 12, (wrb) a4  <-- 0x80002e60
       0    10593        M 0x8000143c sb      a0, 72(a4)             #; a4  = 0x80002e60, 48 ~~> Byte[0x80002ea8]
       0    10594        M 0x80001440 lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
       0    10615        M                                           #; (lsu) a4  <-- 13
       0    10616        M 0x80001444 addi    a4, a4, -1020          #; a4  = 13, (wrb) a4  <-- -1007
       0    10617        M 0x80001448 snez    a4, a4                 #; a4  = -1007, (wrb) a4  <-- 1
       0    10618        M 0x8000144c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0    10619        M 0x80001450 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0    10620        M 0x80001454 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0    10621        M 0x80001458 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800014b8
       0    10624        M 0x800014b8 ret                            #; ra  = 0x80001afc, goto 0x80001afc
       0    10629        M 0x80001afc mv      s0, s1                 #; s1  = 13, (wrb) s0  <-- 13
       0    10632        M 0x80001b00 mv      s8, s10                #; s10 = 3, (wrb) s8  <-- 3
       0    10633        M 0x80001b04 bnez    s10, pc - 40           #; s10 = 3, taken, goto 0x80001adc
       0    10635        M 0x80001adc add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 3, (wrb) a0  <-- 0x0011fe3a
       0    10638        M 0x80001ae0 lbu     a0, 0(a0)              #; a0  = 0x0011fe3a, a0  <~~ Byte[0x0011fe3a]
       0    10639        M 0x80001ae4 addi    s10, s8, -1            #; s8  = 3, (wrb) s10 <-- 2
       0    10640        M 0x80001ae8 addi    s1, s0, 1              #; s0  = 13, (wrb) s1  <-- 14
       0    10641        M 0x80001aec mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0    10642        M 0x80001af0 mv      a2, s0                 #; s0  = 13, (wrb) a2  <-- 13
       0    10643        M 0x80001af4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0    10644        M 0x80001af8 jalr    s7                     #; s7  = 0x80001410, (wrb) ra  <-- 0x80001afc, goto 0x80001410
       0    10645        M                                           #; (lsu) a0  <-- 48
       0    10647        M 0x80001410 beqz    a0, pc + 168           #; a0  = 48, not taken
       0    10648        M 0x80001414 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0    10649        M 0x80001418 li      a2, 1096               #; (wrb) a2  <-- 1096
       0    10650        M 0x8000141c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0    10651        M 0x80001420 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003420
       0    10652        M 0x80001424 addi    a3, a3, -1484          #; a3  = 0x80003420, (wrb) a3  <-- 0x80002e54
       0    10653        M                                           #; (acc) a1  <-- 0x00d605b3
       0    10654        M 0x80001428 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002e54, (wrb) a1  <-- 0x80002e54
       0    10655        M 0x8000142c lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
       0    10666        M                                           #; (lsu) a4  <-- 13
       0    10667        M 0x80001430 addi    a5, a4, 1              #; a4  = 13, (wrb) a5  <-- 14
       0    10668        M 0x80001434 sw      a5, 0(a1)              #; a1  = 0x80002e54, 14 ~~> Word[0x80002e54]
       0    10669        M 0x80001438 add     a4, a1, a4             #; a1  = 0x80002e54, a4  = 13, (wrb) a4  <-- 0x80002e61
       0    10670        M 0x8000143c sb      a0, 72(a4)             #; a4  = 0x80002e61, 48 ~~> Byte[0x80002ea9]
       0    10671        M 0x80001440 lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
       0    10692        M                                           #; (lsu) a4  <-- 14
       0    10693        M 0x80001444 addi    a4, a4, -1020          #; a4  = 14, (wrb) a4  <-- -1006
       0    10694        M 0x80001448 snez    a4, a4                 #; a4  = -1006, (wrb) a4  <-- 1
       0    10695        M 0x8000144c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0    10696        M 0x80001450 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0    10697        M 0x80001454 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0    10698        M 0x80001458 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800014b8
       0    10701        M 0x800014b8 ret                            #; ra  = 0x80001afc, goto 0x80001afc
       0    10706        M 0x80001afc mv      s0, s1                 #; s1  = 14, (wrb) s0  <-- 14
       0    10709        M 0x80001b00 mv      s8, s10                #; s10 = 2, (wrb) s8  <-- 2
       0    10710        M 0x80001b04 bnez    s10, pc - 40           #; s10 = 2, taken, goto 0x80001adc
       0    10712        M 0x80001adc add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 2, (wrb) a0  <-- 0x0011fe39
       0    10715        M 0x80001ae0 lbu     a0, 0(a0)              #; a0  = 0x0011fe39, a0  <~~ Byte[0x0011fe39]
       0    10716        M 0x80001ae4 addi    s10, s8, -1            #; s8  = 2, (wrb) s10 <-- 1
       0    10717        M 0x80001ae8 addi    s1, s0, 1              #; s0  = 14, (wrb) s1  <-- 15
       0    10718        M 0x80001aec mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0    10719        M 0x80001af0 mv      a2, s0                 #; s0  = 14, (wrb) a2  <-- 14
       0    10720        M 0x80001af4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0    10721        M 0x80001af8 jalr    s7                     #; s7  = 0x80001410, (wrb) ra  <-- 0x80001afc, goto 0x80001410
       0    10722        M                                           #; (lsu) a0  <-- 48
       0    10724        M 0x80001410 beqz    a0, pc + 168           #; a0  = 48, not taken
       0    10725        M 0x80001414 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0    10726        M 0x80001418 li      a2, 1096               #; (wrb) a2  <-- 1096
       0    10727        M 0x8000141c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0    10728        M 0x80001420 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003420
       0    10729        M 0x80001424 addi    a3, a3, -1484          #; a3  = 0x80003420, (wrb) a3  <-- 0x80002e54
       0    10730        M                                           #; (acc) a1  <-- 0x00d605b3
       0    10731        M 0x80001428 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002e54, (wrb) a1  <-- 0x80002e54
       0    10732        M 0x8000142c lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
       0    10743        M                                           #; (lsu) a4  <-- 14
       0    10744        M 0x80001430 addi    a5, a4, 1              #; a4  = 14, (wrb) a5  <-- 15
       0    10745        M 0x80001434 sw      a5, 0(a1)              #; a1  = 0x80002e54, 15 ~~> Word[0x80002e54]
       0    10746        M 0x80001438 add     a4, a1, a4             #; a1  = 0x80002e54, a4  = 14, (wrb) a4  <-- 0x80002e62
       0    10747        M 0x8000143c sb      a0, 72(a4)             #; a4  = 0x80002e62, 48 ~~> Byte[0x80002eaa]
       0    10748        M 0x80001440 lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
       0    10769        M                                           #; (lsu) a4  <-- 15
       0    10770        M 0x80001444 addi    a4, a4, -1020          #; a4  = 15, (wrb) a4  <-- -1005
       0    10771        M 0x80001448 snez    a4, a4                 #; a4  = -1005, (wrb) a4  <-- 1
       0    10772        M 0x8000144c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0    10773        M 0x80001450 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0    10774        M 0x80001454 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0    10775        M 0x80001458 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800014b8
       0    10778        M 0x800014b8 ret                            #; ra  = 0x80001afc, goto 0x80001afc
       0    10783        M 0x80001afc mv      s0, s1                 #; s1  = 15, (wrb) s0  <-- 15
       0    10786        M 0x80001b00 mv      s8, s10                #; s10 = 1, (wrb) s8  <-- 1
       0    10787        M 0x80001b04 bnez    s10, pc - 40           #; s10 = 1, taken, goto 0x80001adc
       0    10789        M 0x80001adc add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 1, (wrb) a0  <-- 0x0011fe38
       0    10792        M 0x80001ae0 lbu     a0, 0(a0)              #; a0  = 0x0011fe38, a0  <~~ Byte[0x0011fe38]
       0    10793        M 0x80001ae4 addi    s10, s8, -1            #; s8  = 1, (wrb) s10 <-- 0
       0    10794        M 0x80001ae8 addi    s1, s0, 1              #; s0  = 15, (wrb) s1  <-- 16
       0    10795        M 0x80001aec mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0    10796        M 0x80001af0 mv      a2, s0                 #; s0  = 15, (wrb) a2  <-- 15
       0    10797        M 0x80001af4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0    10798        M 0x80001af8 jalr    s7                     #; s7  = 0x80001410, (wrb) ra  <-- 0x80001afc, goto 0x80001410
       0    10799        M                                           #; (lsu) a0  <-- 48
       0    10801        M 0x80001410 beqz    a0, pc + 168           #; a0  = 48, not taken
       0    10802        M 0x80001414 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0    10803        M 0x80001418 li      a2, 1096               #; (wrb) a2  <-- 1096
       0    10804        M 0x8000141c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0    10805        M 0x80001420 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003420
       0    10806        M 0x80001424 addi    a3, a3, -1484          #; a3  = 0x80003420, (wrb) a3  <-- 0x80002e54
       0    10807        M                                           #; (acc) a1  <-- 0x00d605b3
       0    10808        M 0x80001428 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002e54, (wrb) a1  <-- 0x80002e54
       0    10809        M 0x8000142c lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
       0    10820        M                                           #; (lsu) a4  <-- 15
       0    10821        M 0x80001430 addi    a5, a4, 1              #; a4  = 15, (wrb) a5  <-- 16
       0    10822        M 0x80001434 sw      a5, 0(a1)              #; a1  = 0x80002e54, 16 ~~> Word[0x80002e54]
       0    10823        M 0x80001438 add     a4, a1, a4             #; a1  = 0x80002e54, a4  = 15, (wrb) a4  <-- 0x80002e63
       0    10824        M 0x8000143c sb      a0, 72(a4)             #; a4  = 0x80002e63, 48 ~~> Byte[0x80002eab]
       0    10825        M 0x80001440 lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
       0    10846        M                                           #; (lsu) a4  <-- 16
       0    10847        M 0x80001444 addi    a4, a4, -1020          #; a4  = 16, (wrb) a4  <-- -1004
       0    10848        M 0x80001448 snez    a4, a4                 #; a4  = -1004, (wrb) a4  <-- 1
       0    10849        M 0x8000144c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0    10850        M 0x80001450 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0    10851        M 0x80001454 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0    10852        M 0x80001458 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800014b8
       0    10855        M 0x800014b8 ret                            #; ra  = 0x80001afc, goto 0x80001afc
       0    10860        M 0x80001afc mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
       0    10863        M 0x80001b00 mv      s8, s10                #; s10 = 0, (wrb) s8  <-- 0
       0    10864        M 0x80001b04 bnez    s10, pc - 40           #; s10 = 0, not taken
       0    10865        M 0x80001b08 j       pc + 0x8               #; goto 0x80001b10
       0    10868        M 0x80001b10 sub     a0, s1, s4             #; s1  = 16, s4  = 8, (wrb) a0  <-- 8
       0    10869        M 0x80001b14 sltu    a0, a0, s2             #; a0  = 8, s2  = 0, (wrb) a0  <-- 0
       0    10870        M 0x80001b18 xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0    10871        M 0x80001b1c xori    a1, s5, 1              #; s5  = 0, (wrb) a1  <-- 1
       0    10872        M 0x80001b20 or      a0, a1, a0             #; a1  = 1, a0  = 1, (wrb) a0  <-- 1
       0    10873        M 0x80001b24 bnez    a0, pc + 48            #; a0  = 1, taken, goto 0x80001b54
       0    10877        M 0x80001b54 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
       0    10878        M 0x80001b58 mv      a0, s0                 #; s0  = 16, (wrb) a0  <-- 16
       0    10881        M 0x80001b5c fld     fs2, 40(sp)            #; fs2  <~~ Doub[0x0011fe58]
       0    10882        M 0x80001b68 lw      s10, 64(sp)            #; sp  = 0x0011fe30, s10 <~~ Word[0x0011fe70]
                         M 0x80001b60 fld     fs1, 48(sp)            #; fs1  <~~ Doub[0x0011fe60], (f:lsu) fs2  <-- 0.0
       0    10883        M 0x80001b64 fld     fs0, 56(sp)            #; fs0  <~~ Doub[0x0011fe68], (f:lsu) fs1  <-- 0.0
       0    10884        M                                           #; (f:lsu) fs0  <-- 5700.0
       0    10886        M                                           #; (lsu) s10 <-- 0x80002b0b
       0    10887        M 0x80001b6c lw      s9, 68(sp)             #; sp  = 0x0011fe30, s9  <~~ Word[0x0011fe74]
       0    10890        M                                           #; (lsu) s9  <-- 8
       0    10891        M 0x80001b70 lw      s8, 72(sp)             #; sp  = 0x0011fe30, s8  <~~ Word[0x0011fe78]
       0    10894        M                                           #; (lsu) s8  <-- 16
       0    10895        M 0x80001b74 lw      s7, 76(sp)             #; sp  = 0x0011fe30, s7  <~~ Word[0x0011fe7c]
       0    10898        M                                           #; (lsu) s7  <-- 0
       0    10899        M 0x80001b78 lw      s6, 80(sp)             #; sp  = 0x0011fe30, s6  <~~ Word[0x0011fe80]
       0    10902        M                                           #; (lsu) s6  <-- 0
       0    10903        M 0x80001b7c lw      s5, 84(sp)             #; sp  = 0x0011fe30, s5  <~~ Word[0x0011fe84]
       0    10906        M                                           #; (lsu) s5  <-- -1
       0    10907        M 0x80001b80 lw      s4, 88(sp)             #; sp  = 0x0011fe30, s4  <~~ Word[0x0011fe88]
       0    10910        M                                           #; (lsu) s4  <-- 0x0011ff17
       0    10911        M 0x80001b84 lw      s3, 92(sp)             #; sp  = 0x0011fe30, s3  <~~ Word[0x0011fe8c]
       0    10914        M                                           #; (lsu) s3  <-- 0x0011ff30
       0    10915        M 0x80001b88 lw      s2, 96(sp)             #; sp  = 0x0011fe30, s2  <~~ Word[0x0011fe90]
       0    10918        M                                           #; (lsu) s2  <-- 0x80001410
       0    10919        M 0x80001b8c lw      s1, 100(sp)            #; sp  = 0x0011fe30, s1  <~~ Word[0x0011fe94]
       0    10922        M                                           #; (lsu) s1  <-- 8
       0    10923        M 0x80001b90 lw      s0, 104(sp)            #; sp  = 0x0011fe30, s0  <~~ Word[0x0011fe98]
       0    10926        M                                           #; (lsu) s0  <-- 0
       0    10927        M 0x80001b94 lw      ra, 108(sp)            #; sp  = 0x0011fe30, ra  <~~ Word[0x0011fe9c]
       0    10928        M 0x80001b98 addi    sp, sp, 112            #; sp  = 0x0011fe30, (wrb) sp  <-- 0x0011fea0
       0    10930        M                                           #; (lsu) ra  <-- 0x80000b40
       0    10931        M 0x80001b9c ret                            #; ra  = 0x80000b40, goto 0x80000b40
       0    10934        M 0x80000b40 j       pc + 0x7c0             #; goto 0x80001300
       0    10937        M 0x80001300 mv      s8, a0                 #; a0  = 16, (wrb) s8  <-- 16
       0    10938        M 0x80001304 li      s6, 37                 #; (wrb) s6  <-- 37
       0    10939        M 0x80001308 li      s7, 46                 #; (wrb) s7  <-- 46
       0    10940        M 0x8000130c addi    s0, s10, 1             #; s10 = 0x80002b0b, (wrb) s0  <-- 0x80002b0c
       0    10941        M 0x80001310 j       pc - 0xa74             #; goto 0x8000089c
       0    10944        M 0x8000089c addi    s10, s0, 2             #; s0  = 0x80002b0c, (wrb) s10 <-- 0x80002b0e
       0    10947        M 0x800008a0 mv      s9, s8                 #; s8  = 16, (wrb) s9  <-- 16
       0    10948        M 0x800008a4 li      s8, 10                 #; (wrb) s8  <-- 10
       0    10949        M 0x800008a8 lbu     a0, 0(s0)              #; s0  = 0x80002b0c, a0  <~~ Byte[0x80002b0c]
       0    10960        M                                           #; (lsu) a0  <-- 10
       0    10961        M 0x800008ac beqz    a0, pc + 2824          #; a0  = 10, not taken
       0    10962        M 0x800008b0 beq     a0, s6, pc + 48        #; a0  = 10, s6  = 37, not taken
       0    10963        M 0x800008b4 addi    s1, s9, 1              #; s9  = 16, (wrb) s1  <-- 17
       0    10964        M 0x800008b8 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0    10965        M 0x800008bc mv      a2, s9                 #; s9  = 16, (wrb) a2  <-- 16
       0    10966        M 0x800008c0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0    10967        M 0x800008c4 jalr    s2                     #; s2  = 0x80001410, (wrb) ra  <-- 0x800008c8, goto 0x80001410
       0    10971        M 0x80001410 beqz    a0, pc + 168           #; a0  = 10, not taken
       0    10972        M 0x80001414 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0    10973        M 0x80001418 li      a2, 1096               #; (wrb) a2  <-- 1096
       0    10974        M 0x8000141c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0    10975        M 0x80001420 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003420
       0    10976        M 0x80001424 addi    a3, a3, -1484          #; a3  = 0x80003420, (wrb) a3  <-- 0x80002e54
       0    10977        M                                           #; (acc) a1  <-- 0x00d605b3
       0    10978        M 0x80001428 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002e54, (wrb) a1  <-- 0x80002e54
       0    10979        M 0x8000142c lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
       0    10990        M                                           #; (lsu) a4  <-- 16
       0    10991        M 0x80001430 addi    a5, a4, 1              #; a4  = 16, (wrb) a5  <-- 17
       0    10992        M 0x80001434 sw      a5, 0(a1)              #; a1  = 0x80002e54, 17 ~~> Word[0x80002e54]
       0    10993        M 0x80001438 add     a4, a1, a4             #; a1  = 0x80002e54, a4  = 16, (wrb) a4  <-- 0x80002e64
       0    10994        M 0x8000143c sb      a0, 72(a4)             #; a4  = 0x80002e64, 10 ~~> Byte[0x80002eac]
       0    10995        M 0x80001440 lw      a4, 0(a1)              #; a1  = 0x80002e54, a4  <~~ Word[0x80002e54]
       0    11016        M                                           #; (lsu) a4  <-- 17
       0    11017        M 0x80001444 addi    a4, a4, -1020          #; a4  = 17, (wrb) a4  <-- -1003
       0    11018        M 0x80001448 snez    a4, a4                 #; a4  = -1003, (wrb) a4  <-- 1
       0    11019        M 0x8000144c addi    a0, a0, -10            #; a0  = 10, (wrb) a0  <-- 0
       0    11020        M 0x80001450 snez    a0, a0                 #; a0  = 0, (wrb) a0  <-- 0
       0    11021        M 0x80001454 and     a0, a0, a4             #; a0  = 0, a4  = 1, (wrb) a0  <-- 0
       0    11022        M 0x80001458 bnez    a0, pc + 96            #; a0  = 0, not taken
       0    11023        M 0x8000145c add     a0, a3, a2             #; a3  = 0x80002e54, a2  = 0, (wrb) a0  <-- 0x80002e54
       0    11024        M 0x80001460 addi    a2, a0, 72             #; a0  = 0x80002e54, (wrb) a2  <-- 0x80002e9c
       0    11025        M 0x80001464 sw      zero, 12(a0)           #; a0  = 0x80002e54, 0 ~~> Word[0x80002e60]
       0    11026        M 0x80001468 li      a3, 64                 #; (wrb) a3  <-- 64
       0    11027        M 0x8000146c sw      a3, 8(a0)              #; a0  = 0x80002e54, 64 ~~> Word[0x80002e5c]
       0    11028        M 0x80001470 sw      zero, 20(a0)           #; a0  = 0x80002e54, 0 ~~> Word[0x80002e68]
       0    11029        M 0x80001474 li      a3, 1                  #; (wrb) a3  <-- 1
       0    11030        M 0x80001478 sw      a3, 16(a0)             #; a0  = 0x80002e54, 1 ~~> Word[0x80002e64]
       0    11039        M 0x8000147c sw      zero, 28(a0)           #; a0  = 0x80002e54, 0 ~~> Word[0x80002e70]
       0    11041        M 0x80001480 sw      a2, 24(a0)             #; a0  = 0x80002e54, 0x80002e9c ~~> Word[0x80002e6c]
       0    11051        M 0x80001484 lw      a2, 0(a1)              #; a1  = 0x80002e54, a2  <~~ Word[0x80002e54]
       0    11052        M 0x80001488 addi    a3, a0, 8              #; a0  = 0x80002e54, (wrb) a3  <-- 0x80002e5c
       0    11053        M 0x8000148c sw      zero, 36(a0)           #; a0  = 0x80002e54, 0 ~~> Word[0x80002e78]
       0    11073        M                                           #; (lsu) a2  <-- 17
       0    11074        M 0x80001490 sw      a2, 32(a0)             #; a0  = 0x80002e54, 17 ~~> Word[0x80002e74]
       0    11075        M 0x80001494 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003494
       0    11076        M 0x80001498 addi    a0, a0, -1876          #; a0  = 0x80003494, (wrb) a0  <-- 0x80002d40
       0    11077        M 0x8000149c sw      a3, 0(a0)              #; a0  = 0x80002d40, 0x80002e5c ~~> Word[0x80002d40]
       0    11078        M 0x800014a0 auipc   a0, 0x2                #; (wrb) a0  <-- 0x800034a0
       0    11079        M 0x800014a4 addi    a0, a0, -1824          #; a0  = 0x800034a0, (wrb) a0  <-- 0x80002d80
       0    11080        M 0x800014a8 lw      a2, 0(a0)              #; a0  = 0x80002d80, a2  <~~ Word[0x80002d80]
       0    11103        M                                           #; (lsu) a2  <-- 0
       0    11104        M 0x800014ac beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x800014a8
       0    11105        M 0x800014a8 lw      a2, 0(a0)              #; a0  = 0x80002d80, a2  <~~ Word[0x80002d80]
       0    11116        M                                           #; (lsu) a2  <-- 1
       0    11117        M 0x800014ac beqz    a2, pc - 4             #; a2  = 1, not taken
       0    11120        M 0x800014b0 sw      zero, 0(a0)            #; a0  = 0x80002d80, 0 ~~> Word[0x80002d80]
       0    11121        M 0x800014b4 sw      zero, 0(a1)            #; a1  = 0x80002e54, 0 ~~> Word[0x80002e54]
       0    11122        M 0x800014b8 ret                            #; ra  = 0x800008c8, goto 0x800008c8
       0    11125        M 0x800008c8 addi    s0, s0, 1              #; s0  = 0x80002b0c, (wrb) s0  <-- 0x80002b0d
       0    11126        M 0x800008cc addi    s10, s10, 1            #; s10 = 0x80002b0e, (wrb) s10 <-- 0x80002b0f
       0    11128        M 0x800008d0 mv      s9, s1                 #; s1  = 17, (wrb) s9  <-- 17
       0    11129        M 0x800008d4 lbu     a0, 0(s0)              #; s0  = 0x80002b0d, a0  <~~ Byte[0x80002b0d]
       0    11143        M                                           #; (lsu) a0  <-- 0
       0    11144        M 0x800008d8 bnez    a0, pc - 40            #; a0  = 0, not taken
       0    11145        M 0x800008dc j       pc + 0xad8             #; goto 0x800013b4
       0    11148        M 0x800013b4 mv      a2, s9                 #; s9  = 17, (wrb) a2  <-- 17
       0    11149        M 0x800013b8 bltu    s9, s5, pc + 8         #; s9  = 17, s5  = -1, taken, goto 0x800013c0
       0    11151        M 0x800013c0 li      a0, 0                  #; (wrb) a0  <-- 0
       0    11152        M 0x800013c4 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0    11153        M 0x800013c8 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0    11154        M 0x800013cc jalr    s2                     #; s2  = 0x80001410, (wrb) ra  <-- 0x800013d0, goto 0x80001410
       0    11157        M 0x80001410 beqz    a0, pc + 168           #; a0  = 0, taken, goto 0x800014b8
       0    11162        M 0x800014b8 ret                            #; ra  = 0x800013d0, goto 0x800013d0
       0    11163        M 0x800013d0 mv      a0, s9                 #; s9  = 17, (wrb) a0  <-- 17
       0    11164        M 0x800013d4 lw      s11, 60(sp)            #; sp  = 0x0011fea0, s11 <~~ Word[0x0011fedc]
       0    11167        M                                           #; (lsu) s11 <-- 0
       0    11168        M 0x800013d8 lw      s10, 64(sp)            #; sp  = 0x0011fea0, s10 <~~ Word[0x0011fee0]
       0    11171        M                                           #; (lsu) s10 <-- 0
       0    11172        M 0x800013dc lw      s9, 68(sp)             #; sp  = 0x0011fea0, s9  <~~ Word[0x0011fee4]
       0    11175        M                                           #; (lsu) s9  <-- 0
       0    11176        M 0x800013e0 lw      s8, 72(sp)             #; sp  = 0x0011fea0, s8  <~~ Word[0x0011fee8]
       0    11179        M                                           #; (lsu) s8  <-- 0
       0    11180        M 0x800013e4 lw      s7, 76(sp)             #; sp  = 0x0011fea0, s7  <~~ Word[0x0011feec]
       0    11183        M                                           #; (lsu) s7  <-- 0
       0    11184        M 0x800013e8 lw      s6, 80(sp)             #; sp  = 0x0011fea0, s6  <~~ Word[0x0011fef0]
       0    11187        M                                           #; (lsu) s6  <-- 0
       0    11188        M 0x800013ec lw      s5, 84(sp)             #; sp  = 0x0011fea0, s5  <~~ Word[0x0011fef4]
       0    11191        M                                           #; (lsu) s5  <-- 0
       0    11192        M 0x800013f0 lw      s4, 88(sp)             #; sp  = 0x0011fea0, s4  <~~ Word[0x0011fef8]
       0    11195        M                                           #; (lsu) s4  <-- 0
       0    11196        M 0x800013f4 lw      s3, 92(sp)             #; sp  = 0x0011fea0, s3  <~~ Word[0x0011fefc]
       0    11199        M                                           #; (lsu) s3  <-- 0
       0    11200        M 0x800013f8 lw      s2, 96(sp)             #; sp  = 0x0011fea0, s2  <~~ Word[0x0011ff00]
       0    11203        M                                           #; (lsu) s2  <-- 0
       0    11204        M 0x800013fc lw      s1, 100(sp)            #; sp  = 0x0011fea0, s1  <~~ Word[0x0011ff04]
       0    11207        M                                           #; (lsu) s1  <-- 0
       0    11208        M 0x80001400 lw      s0, 104(sp)            #; sp  = 0x0011fea0, s0  <~~ Word[0x0011ff08]
       0    11211        M                                           #; (lsu) s0  <-- 0
       0    11212        M 0x80001404 lw      ra, 108(sp)            #; sp  = 0x0011fea0, ra  <~~ Word[0x0011ff0c]
       0    11213        M 0x80001408 addi    sp, sp, 112            #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011ff10
       0    11215        M                                           #; (lsu) ra  <-- 0x8000080c
       0    11216        M 0x8000140c ret                            #; ra  = 0x8000080c, goto 0x8000080c
       0    11219        M 0x8000080c lw      ra, 12(sp)             #; sp  = 0x0011ff10, ra  <~~ Word[0x0011ff1c]
       0    11222        M 0x80000810 addi    sp, sp, 48             #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011ff40
       0    11223        M                                           #; (lsu) ra  <-- 0x8000079c
       0    11224        M 0x80000814 ret                            #; ra  = 0x8000079c, goto 0x8000079c
       0    11236        M 0x8000079c auipc   a0, 0x2                #; (wrb) a0  <-- 0x8000279c
       0    11239        M 0x800007a0 addi    a0, a0, 1540           #; a0  = 0x8000279c, (wrb) a0  <-- 0x80002da0
       0    11242        M 0x800007a4 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002da0]
       0    11243        M 0x800007b0 lw      ra, 28(sp)             #; sp  = 0x0011ff40, ra  <~~ Word[0x0011ff5c]
       0    11244        M 0x800007b4 addi    sp, sp, 32             #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff60
       0    11251        M                                           #; (f:lsu) ft0  <-- 0.0001
       0    11252        M 0x800007a8 flt.d   a0, ft0, fs0           #; ft0  = 0.0001, fs0  = 5700.0
       0    11253        M                                           #; (lsu) ra  <-- 0x80002870
       0    11254        M 0x800007b8 ret                            #; ra  = 0x80002870, goto 0x80002870
                         M 0x800007ac fld     fs0, 16(sp)            #; fs0  <~~ Doub[0x0011ff50]
       0    11255        M                                           #; (f:lsu) fs0  <-- 0.0
       0    11266        M 0x80002870 mv      s0, a0                 #; a0  = 1, (wrb) s0  <-- 1
       0    11267        M 0x80002874 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002874
       0    11268        M 0x80002878 jalr    ra, ra, 524            #; ra  = 0x80002874, (wrb) ra  <-- 0x8000287c, goto 0x80002a80
       0    11280        M 0x80002a80 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
       0    11281        M 0x80002a84 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x8000287c ~~> Word[0x0011ff5c]
       0    11282        M 0x80002a88 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002a88
       0    11283        M 0x80002a8c jalr    ra, ra, -1264          #; ra  = 0x80002a88, (wrb) ra  <-- 0x80002a90, goto 0x80002598
       0    11295        M 0x80002598 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0    11296        M 0x8000259c add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0    11307        M 0x800025a0 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0    11310        M                                           #; (lsu) a0  <-- 0x0011ff70
       0    11311        M 0x800025a4 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0    11314        M                                           #; (lsu) a0  <-- 0x0011ff70
       0    11315        M 0x800025a8 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
       0    11316        M 0x800025ac ret                            #; ra  = 0x80002a90, goto 0x80002a90
       0    11318        M                                           #; (lsu) a0  <-- 0x00120190
       0    11319        M 0x80002a90 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
       0    11329        M                                           #; (lsu) a0  <-- 0
       0    11330        M 0x80002a94 mv      zero, a0               #; a0  = 0
       0    11331        M 0x80002a98 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
       0    11332        M 0x80002a9c addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
       0    11334        M                                           #; (lsu) ra  <-- 0x8000287c
       0    11335        M 0x80002aa0 ret                            #; ra  = 0x8000287c, goto 0x8000287c
       0    11349        M 0x8000287c mv      a0, s0                 #; s0  = 1, (wrb) a0  <-- 1
       0    11353        M 0x80002880 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002880
       0    11354        M 0x80002884 jalr    ra, ra, 556            #; ra  = 0x80002880, (wrb) ra  <-- 0x80002888, goto 0x80002aac
       0    11355        M 0x80002aac addi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff58
       0    11356        M 0x80002ab0 sw      a0, 0(sp)              #; sp  = 0x0011ff58, 1 ~~> Word[0x0011ff58]
       0    11357        M 0x80002ab4 sw      ra, 4(sp)              #; sp  = 0x0011ff58, 0x80002888 ~~> Word[0x0011ff5c]
       0    11358        M 0x80002ab8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002ab8
       0    11359        M 0x80002abc jalr    ra, ra, -1344          #; ra  = 0x80002ab8, (wrb) ra  <-- 0x80002ac0, goto 0x80002578
       0    11370        M 0x80002578 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0    11371        M 0x8000257c add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0    11374        M 0x80002580 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0    11377        M                                           #; (lsu) a0  <-- 0x0011ff70
       0    11378        M 0x80002584 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0    11381        M                                           #; (lsu) a0  <-- 0x0011ff70
       0    11382        M 0x80002588 lw      a0, 8(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff78]
       0    11383        M 0x8000258c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0    11385        M                                           #; (lsu) a0  <-- 0
       0    11386        M 0x80002590 sub     a0, a1, a0             #; a1  = 0, a0  = 0, (wrb) a0  <-- 0
       0    11387        M 0x80002594 ret                            #; ra  = 0x80002ac0, goto 0x80002ac0
       0    11388        M 0x80002ac0 lw      t0, 0(sp)              #; sp  = 0x0011ff58, t0  <~~ Word[0x0011ff58]
       0    11391        M                                           #; (lsu) t0  <-- 1
       0    11392        M 0x80002ac4 lw      ra, 4(sp)              #; sp  = 0x0011ff58, ra  <~~ Word[0x0011ff5c]
       0    11393        M 0x80002ac8 addi    sp, sp, 8              #; sp  = 0x0011ff58, (wrb) sp  <-- 0x0011ff60
       0    11394        M 0x80002acc bnez    a0, pc + 24            #; a0  = 0, not taken
       0    11395        M                                           #; (lsu) ra  <-- 0x80002888
       0    11399        M 0x80002ad0 slli    t0, t0, 1              #; t0  = 1, (wrb) t0  <-- 2
       0    11400        M 0x80002ad4 ori     t0, t0, 1              #; t0  = 2, (wrb) t0  <-- 3
       0    11401        M 0x80002ad8 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002ad8
       0    11402        M 0x80002adc addi    t1, t1, 616            #; t1  = 0x80002ad8, (wrb) t1  <-- 0x80002d40
       0    11410        M 0x80002ae0 sw      t0, 0(t1)              #; t1  = 0x80002d40, 3 ~~> Word[0x80002d40]
       0    11411        M 0x80002ae4 ret                            #; ra  = 0x80002888, goto 0x80002888
       0    11425        M 0x80002888 wfi                            #; 

## Performance metrics

Performance metrics for section 0 @ (12, 4927):
snitch_loads                                    38
snitch_stores                                   50
fpss_stores                                    201
fpss_loads                                       0
snitch_avg_load_latency                    18.2632
snitch_occupancy                            0.3763
snitch_fseq_rel_offloads                    0.1900
fseq_yield                                     1.0
fseq_fpu_yield                                 1.0
fpss_section_latency                             0
fpss_avg_fpu_latency                           1.0
fpss_avg_load_latency                            0
fpss_occupancy                              0.0883
fpss_fpu_occupancy                          0.0474
fpss_fpu_rel_occupancy                      0.5369
cycles                                        4916
total_ipc                                   0.4646

Performance metrics for section 1 @ (4929, 5645):
fpss_loads                                     200
snitch_loads                                     0
snitch_avg_load_latency                          0
snitch_occupancy                            0.5599
snitch_fseq_rel_offloads                    0.4274
fseq_yield                                     1.0
fseq_fpu_yield                                 1.0
fpss_section_latency                             1
fpss_avg_fpu_latency                        3.0303
fpss_avg_load_latency                          1.0
fpss_occupancy                              0.4178
fpss_fpu_occupancy                          0.1379
fpss_fpu_rel_occupancy                        0.33
cycles                                         718
total_ipc                                   0.9777

Performance metrics for section 2 @ (5647, 11425):
snitch_stores                                  184
snitch_loads                                   186
fpss_loads                                      23
fpss_stores                                      7
snitch_avg_load_latency                    10.0753
snitch_occupancy                            0.3324
snitch_fseq_rel_offloads                    0.0337
fseq_yield                                     1.0
fseq_fpu_yield                                 1.0
fpss_section_latency                             0
fpss_avg_fpu_latency                        0.8421
fpss_avg_load_latency                       5.8696
fpss_occupancy                              0.0116
fpss_fpu_occupancy                          0.0066
fpss_fpu_rel_occupancy                      0.5672
cycles                                        5779
total_ipc                                   0.3440
