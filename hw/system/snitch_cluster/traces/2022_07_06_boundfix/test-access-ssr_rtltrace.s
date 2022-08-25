       0       12        M 0x00001000 csrr    a0, mhartid            #; mhartid = 0, (wrb) a0  <-- 0
       0       32        M 0x00001004 auipc   a1, 0x0                #; (wrb) a1  <-- 4100
       0       56        M 0x00001008 addi    a1, a1, 32             #; a1  = 4100, (wrb) a1  <-- 4132
       0       84        M 0x0000100c auipc   t0, 0x0                #; (wrb) t0  <-- 4108
       0      104        M 0x00001010 lw      t0, 20(t0)             #; t0  = 4108, t0  <~~ Word[0x00001020]
       0      115        M                                           #; (lsu) t0  <-- 0x80003630
       0      128        M 0x00001014 jalr    t0                     #; t0  = 0x80003630, (wrb) ra  <-- 4120, goto 0x80003630
       0      269        M 0x80003630 auipc   gp, 0x1                #; (wrb) gp  <-- 0x80004630
       0      270        M 0x80003634 addi    gp, gp, -232           #; gp  = 0x80004630, (wrb) gp  <-- 0x80004548
       0      271        M 0x80003638 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80003638
       0      272        M 0x8000363c jalr    ra, ra, 964            #; ra  = 0x80003638, (wrb) ra  <-- 0x80003640, goto 0x800039fc
       0      292        M 0x800039fc mv      a4, a1                 #; a1  = 4132, (wrb) a4  <-- 4132
       0      304        M 0x80003a00 lw      a1, 4(a4)              #; a4  = 4132, a1  <~~ Word[0x00001028]
       0      334        M                                           #; (lsu) a1  <-- 8
       0      335        M 0x80003a04 lw      t0, 8(a4)              #; a4  = 4132, t0  <~~ Word[0x0000102c]
       0      374        M                                           #; (lsu) t0  <-- 0
       0      375        M 0x80003a08 lw      a2, 12(a4)             #; a4  = 4132, a2  <~~ Word[0x00001030]
       0      414        M                                           #; (lsu) a2  <-- 0x00100000
       0      415        M 0x80003a0c lw      t1, 16(a4)             #; a4  = 4132, t1  <~~ Word[0x00001034]
       0      454        M                                           #; (lsu) t1  <-- 0x00020000
       0      455        M 0x80003a10 lw      t2, 20(a4)             #; a4  = 4132, t2  <~~ Word[0x00001038]
       0      456        M 0x80003a14 sub     a0, a0, t0             #; a0  = 0, t0  = 0, (wrb) a0  <-- 0
       0      457        M 0x80003a18 div     t3, a0, a1             #; a0  = 0, a1  = 8
       0      460        M                                           #; (acc) t4  <-- 0x027e0eb3
       0      494        M                                           #; (lsu) t2  <-- 0
       0      495        M 0x80003a1c mul     t4, t3, t2             #; t3  = 0, t2  = 0
       0      498        M                                           #; (acc) a2  <-- 0x01d60633
       0      499        M 0x80003a20 add     a2, a2, t4             #; a2  = 0x00100000, t4  = 0, (wrb) a2  <-- 0x00100000
       0      500        M 0x80003a24 add     a3, a2, t1             #; a2  = 0x00100000, t1  = 0x00020000, (wrb) a3  <-- 0x00120000
       0      501        M 0x80003a28 remu    a0, a0, a1             #; a0  = 0, a1  = 8
       0      502        M 0x80003a2c ret                            #; ra  = 0x80003640, goto 0x80003640
       0      504        M                                           #; (acc) s0  <-- 0x00050413
       0      505        M 0x80003640 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
       0      506        M 0x80003644 mv      a0, a4                 #; a4  = 4132, (wrb) a0  <-- 4132
       0      507        M 0x80003648 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80003648
       0      508        M 0x8000364c jalr    ra, ra, 1036           #; ra  = 0x80003648, (wrb) ra  <-- 0x80003650, goto 0x80003a54
       0      523        M 0x80003a54 lw      a0, 8(a0)              #; a0  = 4132, a0  <~~ Word[0x0000102c]
       0      524        M 0x80003a58 ret                            #; ra  = 0x80003650, goto 0x80003650
       0      543        M                                           #; (lsu) a0  <-- 0
       0      544        M 0x80003650 mv      t0, a0                 #; a0  = 0, (wrb) t0  <-- 0
       0      545        M 0x80003654 mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
       0      546        M 0x80003658 csrr    t1, mhartid            #; mhartid = 0, (wrb) t1  <-- 0
       0      547        M 0x8000365c sub     t0, t1, t0             #; t1  = 0, t0  = 0, (wrb) t0  <-- 0
       0      549        M 0x80003660 bnez    t0, pc + 36            #; t0  = 0, not taken
       0      550        M 0x80003664 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80003664
       0      551        M 0x80003668 addi    t0, t0, 1964           #; t0  = 0x80003664, (wrb) t0  <-- 0x80003e10
       0      552        M 0x8000366c auipc   t1, 0x0                #; (wrb) t1  <-- 0x8000366c
       0      562        M 0x80003670 addi    t1, t1, 1960           #; t1  = 0x8000366c, (wrb) t1  <-- 0x80003e14
       0      563        M 0x80003674 bge     t0, t1, pc + 16        #; t0  = 0x80003e10, t1  = 0x80003e14, not taken
       0      564        M 0x80003678 sw      zero, 0(t0)            #; t0  = 0x80003e10, 0 ~~> Word[0x80003e10]
       0      565        M 0x8000367c addi    t0, t0, 4              #; t0  = 0x80003e10, (wrb) t0  <-- 0x80003e14
       0      573        M 0x80003680 blt     t0, t1, pc - 8         #; t0  = 0x80003e14, t1  = 0x80003e14, not taken
       0      574        M 0x80003684 csrr    t0, misa               #; misa = 0x40801129, (wrb) t0  <-- 0x40801129
       0      575        M 0x80003688 andi    t0, t0, 40             #; t0  = 0x40801129, (wrb) t0  <-- 40
       0      576        M 0x8000368c beqz    t0, pc + 132           #; t0  = 40, not taken
       0      586        M 0x80003690 fcvt.d.w ft0, zero             #; ac1  = 0
       0      587        M 0x80003694 fcvt.d.w ft1, zero             #; ac1  = 0, (f:fpu) ft0  <-- 0.0
       0      588        M 0x80003698 fcvt.d.w ft2, zero             #; ac1  = 0, (f:fpu) ft1  <-- 0.0
       0      589        M 0x8000369c fcvt.d.w ft3, zero             #; ac1  = 0, (f:fpu) ft2  <-- 0.0
       0      590        M                                           #; (f:fpu) ft3  <-- 0.0
       0      598        M 0x800036a0 fcvt.d.w ft4, zero             #; ac1  = 0
       0      599        M 0x800036a4 fcvt.d.w ft5, zero             #; ac1  = 0, (f:fpu) ft4  <-- 0.0
       0      600        M 0x800036a8 fcvt.d.w ft6, zero             #; ac1  = 0, (f:fpu) ft5  <-- 0.0
       0      601        M 0x800036ac fcvt.d.w ft7, zero             #; ac1  = 0, (f:fpu) ft6  <-- 0.0
       0      602        M                                           #; (f:fpu) ft7  <-- 0.0
       0      610        M 0x800036b0 fcvt.d.w fs0, zero             #; ac1  = 0
       0      611        M 0x800036b4 fcvt.d.w fs1, zero             #; ac1  = 0, (f:fpu) fs0  <-- 0.0
       0      612        M 0x800036b8 fcvt.d.w fa0, zero             #; ac1  = 0, (f:fpu) fs1  <-- 0.0
       0      613        M 0x800036bc fcvt.d.w fa1, zero             #; ac1  = 0, (f:fpu) fa0  <-- 0.0
       0      614        M                                           #; (f:fpu) fa1  <-- 0.0
       0      622        M 0x800036c0 fcvt.d.w fa2, zero             #; ac1  = 0
       0      623        M 0x800036c4 fcvt.d.w fa3, zero             #; ac1  = 0, (f:fpu) fa2  <-- 0.0
       0      624        M 0x800036c8 fcvt.d.w fa4, zero             #; ac1  = 0, (f:fpu) fa3  <-- 0.0
       0      625        M 0x800036cc fcvt.d.w fa5, zero             #; ac1  = 0, (f:fpu) fa4  <-- 0.0
       0      626        M                                           #; (f:fpu) fa5  <-- 0.0
       0      634        M 0x800036d0 fcvt.d.w fa6, zero             #; ac1  = 0
       0      635        M 0x800036d4 fcvt.d.w fa7, zero             #; ac1  = 0, (f:fpu) fa6  <-- 0.0
       0      636        M 0x800036d8 fcvt.d.w fs2, zero             #; ac1  = 0, (f:fpu) fa7  <-- 0.0
       0      637        M 0x800036dc fcvt.d.w fs3, zero             #; ac1  = 0, (f:fpu) fs2  <-- 0.0
       0      638        M                                           #; (f:fpu) fs3  <-- 0.0
       0      646        M 0x800036e0 fcvt.d.w fs4, zero             #; ac1  = 0
       0      647        M 0x800036e4 fcvt.d.w fs5, zero             #; ac1  = 0, (f:fpu) fs4  <-- 0.0
       0      648        M 0x800036e8 fcvt.d.w fs6, zero             #; ac1  = 0, (f:fpu) fs5  <-- 0.0
       0      649        M 0x800036ec fcvt.d.w fs7, zero             #; ac1  = 0, (f:fpu) fs6  <-- 0.0
       0      650        M                                           #; (f:fpu) fs7  <-- 0.0
       0      658        M 0x800036f0 fcvt.d.w fs8, zero             #; ac1  = 0
       0      659        M 0x800036f4 fcvt.d.w fs9, zero             #; ac1  = 0, (f:fpu) fs8  <-- 0.0
       0      660        M 0x800036f8 fcvt.d.w fs10, zero            #; ac1  = 0, (f:fpu) fs9  <-- 0.0
       0      661        M 0x800036fc fcvt.d.w fs11, zero            #; ac1  = 0, (f:fpu) fs10 <-- 0.0
       0      662        M                                           #; (f:fpu) fs11 <-- 0.0
       0      670        M 0x80003700 fcvt.d.w ft8, zero             #; ac1  = 0
       0      671        M 0x80003704 fcvt.d.w ft9, zero             #; ac1  = 0, (f:fpu) ft8  <-- 0.0
       0      672        M 0x80003708 fcvt.d.w ft10, zero            #; ac1  = 0, (f:fpu) ft9  <-- 0.0
       0      673        M 0x8000370c fcvt.d.w ft11, zero            #; ac1  = 0, (f:fpu) ft10 <-- 0.0
       0      674        M                                           #; (f:fpu) ft11 <-- 0.0
       0      681        M 0x80003710 addi    a3, a3, -8             #; a3  = 0x00120000, (wrb) a3  <-- 0x0011fff8
       0      682        M 0x80003714 sw      zero, 0(a3)            #; a3  = 0x0011fff8, 0 ~~> Word[0x0011fff8]
       0      683        M 0x80003718 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80003718
       0      684        M 0x8000371c lw      t0, 900(t0)            #; t0  = 0x80003718, t0  <~~ Word[0x80003a9c]
       0      704        M                                           #; (lsu) t0  <-- 136
       0      705        M 0x80003720 sub     a3, a3, t0             #; a3  = 0x0011fff8, t0  = 136, (wrb) a3  <-- 0x0011ff70
       0      706        M 0x80003724 mv      a5, a3                 #; a3  = 0x0011ff70, (wrb) a5  <-- 0x0011ff70
       0      707        M 0x80003728 auipc   t2, 0x0                #; (wrb) t2  <-- 0x80003728
       0      708        M 0x8000372c lw      t2, 880(t2)            #; t2  = 0x80003728, t2  <~~ Word[0x80003a98]
       0      744        M                                           #; (lsu) t2  <-- 10
       0      745        M 0x80003730 sll     t0, a0, t2             #; a0  = 0, t2  = 10, (wrb) t0  <-- 0
       0      746        M 0x80003734 sll     t1, a1, t2             #; a1  = 8, t2  = 10, (wrb) t1  <-- 8192
       0      747        M 0x80003738 sub     sp, a3, t0             #; a3  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
       0      748        M 0x8000373c sub     a3, a3, t1             #; a3  = 0x0011ff70, t1  = 8192, (wrb) a3  <-- 0x0011df70
       0      749        M 0x80003740 slli    t0, a0, 3              #; a0  = 0, (wrb) t0  <-- 0
       0      750        M 0x80003744 slli    t1, a1, 3              #; a1  = 8, (wrb) t1  <-- 64
       0      751        M 0x80003748 sub     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
       0      752        M 0x8000374c sub     a3, a3, t1             #; a3  = 0x0011df70, t1  = 64, (wrb) a3  <-- 0x0011df30
       0      761        M 0x80003750 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80003750
       0      762        M 0x80003754 addi    t0, t0, 1528           #; t0  = 0x80003750, (wrb) t0  <-- 0x80003d48
       0      763        M 0x80003758 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80003758
       0      764        M 0x8000375c addi    t1, t1, 1520           #; t1  = 0x80003758, (wrb) t1  <-- 0x80003d48
       0      775        M 0x80003760 auipc   t2, 0x0                #; (wrb) t2  <-- 0x80003760
       0      776        M 0x80003764 addi    t2, t2, 1512           #; t2  = 0x80003760, (wrb) t2  <-- 0x80003d48
       0      777        M 0x80003768 auipc   t3, 0x0                #; (wrb) t3  <-- 0x80003768
       0      778        M 0x8000376c addi    t3, t3, 1520           #; t3  = 0x80003768, (wrb) t3  <-- 0x80003d58
       0      787        M 0x80003770 add     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0x80003d48, (wrb) sp  <-- 0x80123cb8
       0      788        M 0x80003774 sub     sp, sp, t1             #; sp  = 0x80123cb8, t1  = 0x80003d48, (wrb) sp  <-- 0x0011ff70
       0      789        M 0x80003778 add     sp, sp, t2             #; sp  = 0x0011ff70, t2  = 0x80003d48, (wrb) sp  <-- 0x80123cb8
       0      790        M 0x8000377c sub     sp, sp, t3             #; sp  = 0x80123cb8, t3  = 0x80003d58, (wrb) sp  <-- 0x0011ff60
       0      799        M 0x80003780 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
       0      800        M 0x80003784 mv      tp, sp                 #; sp  = 0x0011ff60, (wrb) tp  <-- 0x0011ff60
       0      801        M 0x80003788 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
       0      802        M 0x8000378c mv      t4, tp                 #; tp  = 0x0011ff60, (wrb) t4  <-- 0x0011ff60
       0      811        M 0x80003790 bge     t0, t1, pc + 24        #; t0  = 0x80003d48, t1  = 0x80003d48, taken, goto 0x800037a8
       0      823        M 0x800037a8 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800037a8
       0      824        M 0x800037ac addi    t0, t0, 1440           #; t0  = 0x800037a8, (wrb) t0  <-- 0x80003d48
       0      835        M 0x800037b0 auipc   t1, 0x0                #; (wrb) t1  <-- 0x800037b0
       0      836        M 0x800037b4 addi    t1, t1, 1448           #; t1  = 0x800037b0, (wrb) t1  <-- 0x80003d58
       0      837        M 0x800037b8 bge     t0, t1, pc + 20        #; t0  = 0x80003d48, t1  = 0x80003d58, not taken
       0      838        M 0x800037bc sw      zero, 0(t4)            #; t4  = 0x0011ff60, 0 ~~> Word[0x0011ff60]
       0      847        M 0x800037c0 addi    t0, t0, 4              #; t0  = 0x80003d48, (wrb) t0  <-- 0x80003d4c
       0      848        M 0x800037c4 addi    t4, t4, 4              #; t4  = 0x0011ff60, (wrb) t4  <-- 0x0011ff64
       0      849        M 0x800037c8 blt     t0, t2, pc - 12        #; t0  = 0x80003d4c, t2  = 0x80003d48, not taken
       0      850        M 0x800037cc addi    sp, sp, -20            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff4c
       0      862        M 0x800037d0 sw      a0, 0(sp)              #; sp  = 0x0011ff4c, 0 ~~> Word[0x0011ff4c]
       0      863        M 0x800037d4 sw      a1, 4(sp)              #; sp  = 0x0011ff4c, 8 ~~> Word[0x0011ff50]
       0      864        M 0x800037d8 sw      a2, 8(sp)              #; sp  = 0x0011ff4c, 0x00100000 ~~> Word[0x0011ff54]
       0      865        M 0x800037dc sw      a3, 12(sp)             #; sp  = 0x0011ff4c, 0x0011df30 ~~> Word[0x0011ff58]
       0      875        M 0x800037e0 sw      a4, 16(sp)             #; sp  = 0x0011ff4c, 4132 ~~> Word[0x0011ff5c]
       0      876        M 0x800037e4 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800037e4
       0      877        M 0x800037e8 jalr    ra, ra, -1064          #; ra  = 0x800037e4, (wrb) ra  <-- 0x800037ec, goto 0x800033bc
       0      899        M 0x800033bc sw      a5, 0(a5)              #; a5  = 0x0011ff70, 0x0011ff70 ~~> Word[0x0011ff70]
       0      912        M 0x800033c0 sw      a4, 4(a5)              #; a5  = 0x0011ff70, 4132 ~~> Word[0x0011ff74]
       0      913        M 0x800033c4 lw      t1, 8(a4)              #; a4  = 4132, t1  <~~ Word[0x0000102c]
       0      931        M                                           #; (lsu) t1  <-- 0
       0      932        M 0x800033c8 sw      t1, 8(a5)              #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff78]
       0      933        M 0x800033cc lw      a6, 40(a4)             #; a4  = 4132, a6  <~~ Word[0x0000104c]
       0      971        M                                           #; (lsu) a6  <-- 1
       0      972        M 0x800033d0 lw      a7, 44(a4)             #; a4  = 4132, a7  <~~ Word[0x00001050]
       0     1011        M                                           #; (lsu) a7  <-- 1
       0     1012        M 0x800033d4 lw      t0, 4(a4)              #; a4  = 4132, t0  <~~ Word[0x00001028]
       0     1013        M 0x800033d8 mul     a6, a7, a6             #; a7  = 1, a6  = 1
       0     1016        M                                           #; (acc) a0  <-- 0x02580533
       0     1040        M                                           #; (lsu) t0  <-- 8
       0     1041        M 0x800033dc mul     a0, a6, t0             #; a6  = 1, t0  = 8
       0     1044        M                                           #; (acc) a2  <-- 0x00a7a623
       0     1045        M 0x800033e0 sw      a0, 12(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff7c]
       0     1046        M 0x800033e4 csrr    a7, mhartid            #; mhartid = 0, (wrb) a7  <-- 0
       0     1047        M 0x800033e8 sub     a0, a7, t1             #; a7  = 0, t1  = 0, (wrb) a0  <-- 0
       0     1048        M 0x800033ec divu    a0, a0, t0             #; a0  = 0, t0  = 8
       0     1054        M 0x800033f0 sw      a0, 16(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff80]
       0     1055        M 0x800033f4 sw      a6, 20(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff84]
       0     1056        M 0x800033f8 sw      t1, 24(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff88]
       0     1057        M 0x800033fc sw      a1, 28(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff8c]
       0     1067        M 0x80003400 lw      a0, 24(a4)             #; a4  = 4132, a0  <~~ Word[0x0000103c]
       0     1068        M 0x80003404 lui     a1, 0x10000            #; (wrb) a1  <-- 0x10000000
       0     1100        M                                           #; (lsu) a0  <-- 0x80000000
       0     1101        M 0x80003408 add     a0, a0, a1             #; a0  = 0x80000000, a1  = 0x10000000, (wrb) a0  <-- 0x90000000
       0     1102        M 0x8000340c sw      zero, 36(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff94]
       0     1103        M 0x80003410 sw      a0, 32(a5)             #; a5  = 0x0011ff70, 0x90000000 ~~> Word[0x0011ff90]
       0     1104        M 0x80003414 lw      a0, 32(a4)             #; a4  = 4132, a0  <~~ Word[0x00001044]
       0     1140        M                                           #; (lsu) a0  <-- 0
       0     1141        M 0x80003418 lw      a1, 36(a4)             #; a4  = 4132, a1  <~~ Word[0x00001048]
       0     1142        M 0x8000341c sw      a0, 40(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff98]
       0     1180        M                                           #; (lsu) a1  <-- 1
       0     1181        M 0x80003420 sw      a1, 44(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff9c]
       0     1182        M 0x80003424 sw      a2, 48(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffa0]
       0     1183        M 0x80003428 sw      zero, 52(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffa4]
       0     1184        M 0x8000342c sw      a3, 56(a5)             #; a5  = 0x0011ff70, 0x0011df30 ~~> Word[0x0011ffa8]
       0     1185        M 0x80003430 sw      zero, 60(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffac]
       0     1186        M 0x80003434 lw      a0, 16(a4)             #; a4  = 4132, a0  <~~ Word[0x00001034]
       0     1201        M                                           #; (lsu) a0  <-- 0x00020000
       0     1202        M 0x80003438 add     a6, a2, a0             #; a2  = 0x00100000, a0  = 0x00020000, (wrb) a6  <-- 0x00120000
       0     1203        M 0x8000343c addi    a1, a6, 400            #; a6  = 0x00120000, (wrb) a1  <-- 0x00120190
       0     1204        M 0x80003440 sw      a1, 112(a5)            #; a5  = 0x0011ff70, 0x00120190 ~~> Word[0x0011ffe0]
       0     1205        M 0x80003444 sltu    t0, a6, a0             #; a6  = 0x00120000, a0  = 0x00020000, (wrb) t0  <-- 0
       0     1206        M 0x80003448 srli    a1, a0, 1              #; a0  = 0x00020000, (wrb) a1  <-- 0x00010000
       0     1207        M 0x8000344c add     t1, a6, a1             #; a6  = 0x00120000, a1  = 0x00010000, (wrb) t1  <-- 0x00130000
       0     1215        M 0x80003450 sltu    a1, t1, a6             #; t1  = 0x00130000, a6  = 0x00120000, (wrb) a1  <-- 0
       0     1216        M 0x80003454 add     a1, t0, a1             #; t0  = 0, a1  = 0, (wrb) a1  <-- 0
       0     1217        M 0x80003458 sw      t1, 64(a5)             #; a5  = 0x0011ff70, 0x00130000 ~~> Word[0x0011ffb0]
       0     1218        M 0x8000345c sw      a1, 68(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffb4]
       0     1228        M 0x80003460 slli    a0, a0, 1              #; a0  = 0x00020000, (wrb) a0  <-- 0x00040000
       0     1229        M 0x80003464 add     a1, a0, a2             #; a0  = 0x00040000, a2  = 0x00100000, (wrb) a1  <-- 0x00140000
       0     1230        M 0x80003468 sltu    a0, a1, a0             #; a1  = 0x00140000, a0  = 0x00040000, (wrb) a0  <-- 0
       0     1231        M 0x8000346c sw      a1, 72(a5)             #; a5  = 0x0011ff70, 0x00140000 ~~> Word[0x0011ffb8]
       0     1240        M 0x80003470 sw      a0, 76(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffbc]
       0     1241        M 0x80003474 sw      zero, 104(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd8]
       0     1244        M 0x80003478 sw      zero, 108(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffdc]
       0     1245        M 0x8000347c lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1252        M 0x80003480 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1253        M 0x80003484 sw      a5, 0(a0)              #; a0  = 0x0011ff60, 0x0011ff70 ~~> Word[0x0011ff60]
       0     1254        M 0x80003488 lw      a0, 0(a5)              #; a5  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1258        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1259        M 0x8000348c lw      a1, 24(a0)             #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ff88]
       0     1262        M                                           #; (lsu) a1  <-- 0
       0     1264        M 0x80003490 lw      a0, 28(a0)             #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff8c]
       0     1265        M 0x80003494 sub     a1, a7, a1             #; a7  = 0, a1  = 0, (wrb) a1  <-- 0
       0     1267        M                                           #; (lsu) a0  <-- 8
       0     1268        M 0x80003498 remu    a0, a1, a0             #; a1  = 0, a0  = 8
       0     1269        M 0x8000349c lui     a1, 0x0                #; (wrb) a1  <-- 0
       0     1276        M 0x800034a0 add     a1, a1, tp             #; a1  = 0, tp  = 0x0011ff60, (wrb) a1  <-- 0x0011ff60
       0     1277        M 0x800034a4 sw      a0, 4(a1)              #; a1  = 0x0011ff60, 0 ~~> Word[0x0011ff64]
       0     1278        M 0x800034a8 li      a0, 1096               #; (wrb) a0  <-- 1096
       0     1279        M 0x800034ac mul     a0, a7, a0             #; a7  = 0, a0  = 1096
       0     1288        M 0x800034b0 auipc   a1, 0x1                #; (wrb) a1  <-- 0x800044b0
       0     1289        M 0x800034b4 addi    a1, a1, -1692          #; a1  = 0x800044b0, (wrb) a1  <-- 0x80003e14
       0     1290        M 0x800034b8 add     a0, a0, a1             #; a0  = 0, a1  = 0x80003e14, (wrb) a0  <-- 0x80003e14
       0     1291        M 0x800034bc sw      zero, 0(a0)            #; a0  = 0x80003e14, 0 ~~> Word[0x80003e14]
       0     1300        M 0x800034c0 lw      a7, 48(a4)             #; a4  = 4132, a7  <~~ Word[0x00001054]
       0     1367        M                                           #; (lsu) a7  <-- 0xffff0000
       0     1368        M 0x800034c4 sw      a7, 116(a5)            #; a5  = 0x0011ff70, 0xffff0000 ~~> Word[0x0011ffe4]
       0     1369        M 0x800034c8 sw      a6, 124(a5)            #; a5  = 0x0011ff70, 0x00120000 ~~> Word[0x0011ffec]
       0     1370        M 0x800034cc sw      zero, 120(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffe8]
       0     1371        M 0x800034d0 addi    a4, a6, 384            #; a6  = 0x00120000, (wrb) a4  <-- 0x00120180
       0     1372        M 0x800034d4 sw      a4, 128(a5)            #; a5  = 0x0011ff70, 0x00120180 ~~> Word[0x0011fff0]
       0     1373        M 0x800034d8 addi    a0, a2, 7              #; a2  = 0x00100000, (wrb) a0  <-- 0x00100007
       0     1374        M 0x800034dc andi    a0, a0, -8             #; a0  = 0x00100007, (wrb) a0  <-- 0x00100000
       0     1375        M 0x800034e0 sw      a0, 80(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc0]
       0     1376        M 0x800034e4 sub     a2, a3, a2             #; a3  = 0x0011df30, a2  = 0x00100000, (wrb) a2  <-- 0x0001df30
       0     1377        M 0x800034e8 sw      a2, 84(a5)             #; a5  = 0x0011ff70, 0x0001df30 ~~> Word[0x0011ffc4]
       0     1378        M 0x800034ec sw      a0, 88(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc8]
       0     1379        M 0x800034f0 lw      a0, 0(a1)              #; a1  = 0x80003e14, a0  <~~ Word[0x80003e14]
       0     1390        M                                           #; (lsu) a0  <-- 0
       0     1391        M 0x800034f4 addi    a0, a0, 1103           #; a0  = 0, (wrb) a0  <-- 1103
       0     1392        M 0x800034f8 andi    a0, a0, -8             #; a0  = 1103, (wrb) a0  <-- 1096
       0     1393        M 0x800034fc sw      a0, 92(a5)             #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffcc]
       0     1394        M 0x80003500 sw      zero, 96(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd0]
       0     1395        M 0x80003504 sw      a0, 100(a5)            #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffd4]
       0     1396        M 0x80003508 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1397        M 0x8000350c add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1398        M 0x80003510 sw      a7, 8(a0)              #; a0  = 0x0011ff60, 0xffff0000 ~~> Word[0x0011ff68]
       0     1399        M 0x80003514 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1400        M 0x80003518 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1401        M 0x8000351c sw      a4, 12(a0)             #; a0  = 0x0011ff60, 0x00120180 ~~> Word[0x0011ff6c]
       0     1406        M 0x80003520 ret                            #; ra  = 0x800037ec, goto 0x800037ec
       0     1421        M 0x800037ec lw      a0, 0(sp)              #; sp  = 0x0011ff4c, a0  <~~ Word[0x0011ff4c]
       0     1424        M                                           #; (lsu) a0  <-- 0
       0     1425        M 0x800037f0 lw      a1, 4(sp)              #; sp  = 0x0011ff4c, a1  <~~ Word[0x0011ff50]
       0     1428        M                                           #; (lsu) a1  <-- 8
       0     1429        M 0x800037f4 lw      a2, 8(sp)              #; sp  = 0x0011ff4c, a2  <~~ Word[0x0011ff54]
       0     1432        M                                           #; (lsu) a2  <-- 0x00100000
       0     1433        M 0x800037f8 lw      a3, 12(sp)             #; sp  = 0x0011ff4c, a3  <~~ Word[0x0011ff58]
       0     1436        M                                           #; (lsu) a3  <-- 0x0011df30
       0     1437        M 0x800037fc lw      a4, 16(sp)             #; sp  = 0x0011ff4c, a4  <~~ Word[0x0011ff5c]
       0     1438        M 0x80003800 addi    sp, sp, 20             #; sp  = 0x0011ff4c, (wrb) sp  <-- 0x0011ff60
       0     1439        M 0x80003804 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80003804
       0     1440        M 0x80003808 addi    t0, t0, 60             #; t0  = 0x80003804, (wrb) t0  <-- 0x80003840
       0     1441        M 0x8000380c csrw    mtvec, t0              #; t0  = 0x80003840, (lsu) a4  <-- 4132
       0     1449        M 0x80003810 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80003810
       0     1450        M 0x80003814 jalr    ra, ra, 544            #; ra  = 0x80003810, (wrb) ra  <-- 0x80003818, goto 0x80003a30
       0     1466        M 0x80003a30 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
       0     1467        M 0x80003a34 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x80003818 ~~> Word[0x0011ff5c]
       0     1468        M 0x80003a38 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80003a38
       0     1469        M 0x80003a3c jalr    ra, ra, -1268          #; ra  = 0x80003a38, (wrb) ra  <-- 0x80003a40, goto 0x80003544
       0     1487        M 0x80003544 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1488        M 0x80003548 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1489        M 0x8000354c lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     1492        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1499        M 0x80003550 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1503        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1504        M 0x80003554 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
       0     1505        M 0x80003558 ret                            #; ra  = 0x80003a40, goto 0x80003a40
       0     1507        M                                           #; (lsu) a0  <-- 0x00120190
       0     1508        M 0x80003a40 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
       0     1537        M                                           #; (lsu) a0  <-- 0
       0     1538        M 0x80003a44 mv      zero, a0               #; a0  = 0
       0     1539        M 0x80003a48 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
       0     1540        M 0x80003a4c addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
       0     1542        M                                           #; (lsu) ra  <-- 0x80003818
       0     1543        M 0x80003a50 ret                            #; ra  = 0x80003818, goto 0x80003818
       0     1547        M 0x80003818 auipc   ra, 0xffffd            #; (wrb) ra  <-- 0x80000818
       0     1548        M 0x8000381c jalr    ra, ra, -484           #; ra  = 0x80000818, (wrb) ra  <-- 0x80003820, goto 0x80000634
       0     1553        M 0x80000634 addi    sp, sp, -784           #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011fc50
       0     1554        M 0x80000638 sw      ra, 780(sp)            #; sp  = 0x0011fc50, 0x80003820 ~~> Word[0x0011ff5c]
       0     1557        M 0x8000063c fsd     fs0, 768(sp)           #; 0.0 ~~> Doub[0x0011ff50]
       0     1558        M 0x80000640 fsd     fs1, 760(sp)           #; 0.0 ~~> Doub[0x0011ff48]
       0     1559        M 0x80000644 fsd     fs2, 752(sp)           #; 0.0 ~~> Doub[0x0011ff40]
       0     1560        M 0x80000648 fsd     fs3, 744(sp)           #; 0.0 ~~> Doub[0x0011ff38]
       0     1561        M 0x8000064c fsd     fs4, 736(sp)           #; 0.0 ~~> Doub[0x0011ff30]
       0     1571        M 0x80000650 fsd     fs5, 728(sp)           #; 0.0 ~~> Doub[0x0011ff28]
       0     1573        M 0x80000654 fsd     fs6, 720(sp)           #; 0.0 ~~> Doub[0x0011ff20]
       0     1574        M 0x80000658 fsd     fs7, 712(sp)           #; 0.0 ~~> Doub[0x0011ff18]
       0     1575        M 0x8000065c fsd     fs8, 704(sp)           #; 0.0 ~~> Doub[0x0011ff10]
       0     1583        M 0x80000660 fsd     fs9, 696(sp)           #; 0.0 ~~> Doub[0x0011ff08]
       0     1584        M 0x8000066c lui     a0, 0x0                #; (wrb) a0  <-- 0
                         M 0x80000664 fsd     fs10, 688(sp)          #; 0.0 ~~> Doub[0x0011ff00]
       0     1585        M 0x80000668 fsd     fs11, 680(sp)          #; 0.0 ~~> Doub[0x0011fef8]
       0     1593        M 0x80000670 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1594        M 0x80000674 lw      a1, 4(a0)              #; a0  = 0x0011ff60, a1  <~~ Word[0x0011ff64]
       0     1595        M 0x80000678 li      a0, 0                  #; (wrb) a0  <-- 0
       0     1597        M                                           #; (lsu) a1  <-- 0
       0     1598        M 0x8000067c beqz    a1, pc + 8             #; a1  = 0, taken, goto 0x80000684
       0     1605        M 0x80000684 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1606        M 0x80000688 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1607        M 0x8000068c lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     1610        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1619        M 0x80000690 lw      a2, 0(a0)              #; a0  = 0x0011ff70, a2  <~~ Word[0x0011ff70]
       0     1622        M                                           #; (lsu) a2  <-- 0x0011ff70
       0     1623        M 0x80000694 lw      a0, 88(a2)             #; a2  = 0x0011ff70, a0  <~~ Word[0x0011ffc8]
       0     1627        M                                           #; (lsu) a0  <-- 0x00100000
       0     1628        M 0x80000698 lw      a1, 80(a2)             #; a2  = 0x0011ff70, a1  <~~ Word[0x0011ffc0]
       0     1631        M                                           #; (lsu) a1  <-- 0x00100000
       0     1632        M 0x8000069c lw      a4, 84(a2)             #; a2  = 0x0011ff70, a4  <~~ Word[0x0011ffc4]
       0     1633        M 0x800006a0 addi    a3, a0, 864            #; a0  = 0x00100000, (wrb) a3  <-- 0x00100360
       0     1635        M                                           #; (lsu) a4  <-- 0x0001df30
       0     1636        M 0x800006a4 add     a1, a4, a1             #; a4  = 0x0001df30, a1  = 0x00100000, (wrb) a1  <-- 0x0011df30
       0     1637        M 0x800006a8 bgeu    a1, a3, pc + 12        #; a1  = 0x0011df30, a3  = 0x00100360, taken, goto 0x800006b4
       0     1648        M 0x800006b4 addi    a1, a0, 856            #; a0  = 0x00100000, (wrb) a1  <-- 0x00100358
       0     1649        M 0x800006b8 srli    a4, a0, 20             #; a0  = 0x00100000, (wrb) a4  <-- 1
       0     1650        M 0x800006bc snez    a4, a4                 #; a4  = 1, (wrb) a4  <-- 1
       0     1661        M 0x800006c0 lui     a5, 0x120              #; (wrb) a5  <-- 0x00120000
       0     1662        M 0x800006c4 addi    a5, a5, 1              #; a5  = 0x00120000, (wrb) a5  <-- 0x00120001
       0     1663        M 0x800006c8 sltu    a1, a1, a5             #; a1  = 0x00100358, a5  = 0x00120001, (wrb) a1  <-- 1
       0     1664        M 0x800006cc and     a1, a4, a1             #; a4  = 1, a1  = 1, (wrb) a1  <-- 1
       0     1674        M 0x800006d0 sw      a3, 88(a2)             #; a2  = 0x0011ff70, 0x00100360 ~~> Word[0x0011ffc8]
       0     1675        M 0x800006d4 beqz    a1, pc + 1068          #; a1  = 1, not taken
       0     1676        M 0x800006d8 li      a2, 8                  #; (wrb) a2  <-- 8
       0     1677        M 0x800006dc li      a3, 107                #; (wrb) a3  <-- 107
       0     1688        M 0x800006e0 li      a4, 64                 #; (wrb) a4  <-- 64
       0     1689        M 0x800006e4 li      a5, 192                #; (wrb) a5  <-- 192
       0     1690        M 0x800006e8 scfgw   a3, a4                 #; a3  = 107, a4  = 64
       0     1691        M 0x800006ec scfgw   a2, a5                 #; a2  = 8, a5  = 192
       0     1715        M 0x800006f0 li      a2, 32                 #; (wrb) a2  <-- 32
       0     1716        M 0x800006f4 scfgw   zero, a2               #; a2  = 32
       0     1717        M 0x800006f8 scfgwi  a0, 896                #; a0  = 0x00100000
       0     1719        M 0x800006fc csrrsi  a2, ssr, 1             #; 
       0     1727        M 0x80000700 li      a2, 1                  #; (wrb) a2  <-- 1
       0     1728        M 0x80000704 li      a3, 109                #; (wrb) a3  <-- 109
       0     1730        M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 1
       0     1731        M                                           #; (f:fpu) ft3  <-- 1.0
       0     1732        M 0x8000070c fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
       0     1733        M                                           #; (f:fpu) ft0  <-- 1.0
       0     1739        M 0x80000710 addi    a2, a2, 1              #; a2  = 1, (wrb) a2  <-- 2
       0     1740        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 2, a3  = 109, taken, goto 0x80000708
       0     1742        M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 2
       0     1743        M 0x80000710 addi    a2, a2, 1              #; a2  = 2, (wrb) a2  <-- 3
                         M                                           #; (f:fpu) ft3  <-- 2.0
       0     1744        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 3, a3  = 109, taken, goto 0x80000708
                         M 0x8000070c fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
       0     1745        M                                           #; (f:fpu) ft0  <-- 2.0
       0     1746        M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 3
       0     1747        M 0x80000710 addi    a2, a2, 1              #; a2  = 3, (wrb) a2  <-- 4
                         M                                           #; (f:fpu) ft3  <-- 3.0
       0     1748        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 4, a3  = 109, taken, goto 0x80000708
                         M 0x8000070c fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
       0     1749        M                                           #; (f:fpu) ft0  <-- 3.0
       0     1750        M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 4
       0     1751        M 0x80000710 addi    a2, a2, 1              #; a2  = 4, (wrb) a2  <-- 5
                         M                                           #; (f:fpu) ft3  <-- 4.0
       0     1752        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 5, a3  = 109, taken, goto 0x80000708
                         M 0x8000070c fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
       0     1753        M                                           #; (f:fpu) ft0  <-- 4.0
       0     1754        M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 5
       0     1755        M 0x80000710 addi    a2, a2, 1              #; a2  = 5, (wrb) a2  <-- 6
                         M                                           #; (f:fpu) ft3  <-- 5.0
       0     1756        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 6, a3  = 109, taken, goto 0x80000708
                         M 0x8000070c fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
       0     1757        M                                           #; (f:fpu) ft0  <-- 5.0
       0     1758        M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 6
       0     1759        M 0x80000710 addi    a2, a2, 1              #; a2  = 6, (wrb) a2  <-- 7
                         M                                           #; (f:fpu) ft3  <-- 6.0
       0     1760        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 7, a3  = 109, taken, goto 0x80000708
                         M 0x8000070c fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
       0     1761        M                                           #; (f:fpu) ft0  <-- 6.0
       0     1762        M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 7
       0     1763        M 0x80000710 addi    a2, a2, 1              #; a2  = 7, (wrb) a2  <-- 8
                         M                                           #; (f:fpu) ft3  <-- 7.0
       0     1764        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 8, a3  = 109, taken, goto 0x80000708
                         M 0x8000070c fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
       0     1765        M                                           #; (f:fpu) ft0  <-- 7.0
       0     1766        M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 8
       0     1767        M 0x80000710 addi    a2, a2, 1              #; a2  = 8, (wrb) a2  <-- 9
                         M                                           #; (f:fpu) ft3  <-- 8.0
       0     1768        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 9, a3  = 109, taken, goto 0x80000708
                         M 0x8000070c fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
       0     1769        M                                           #; (f:fpu) ft0  <-- 8.0
       0     1770        M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 9
       0     1771        M 0x80000710 addi    a2, a2, 1              #; a2  = 9, (wrb) a2  <-- 10
                         M                                           #; (f:fpu) ft3  <-- 9.0
       0     1772        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 10, a3  = 109, taken, goto 0x80000708
                         M 0x8000070c fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
       0     1773        M                                           #; (f:fpu) ft0  <-- 9.0
       0     1774        M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 10
       0     1775        M 0x80000710 addi    a2, a2, 1              #; a2  = 10, (wrb) a2  <-- 11
                         M                                           #; (f:fpu) ft3  <-- 10.0
       0     1776        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 11, a3  = 109, taken, goto 0x80000708
                         M 0x8000070c fsgnj.d ft0, ft3, ft3          #; ft3  = 10.0, ft3  = 10.0
       0     1777        M                                           #; (f:fpu) ft0  <-- 10.0
       0     1778        M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 11
       0     1779        M 0x80000710 addi    a2, a2, 1              #; a2  = 11, (wrb) a2  <-- 12
                         M                                           #; (f:fpu) ft3  <-- 11.0
       0     1780        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 12, a3  = 109, taken, goto 0x80000708
                         M 0x8000070c fsgnj.d ft0, ft3, ft3          #; ft3  = 11.0, ft3  = 11.0
       0     1781        M                                           #; (f:fpu) ft0  <-- 11.0
       0     1782        M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 12
       0     1783        M 0x80000710 addi    a2, a2, 1              #; a2  = 12, (wrb) a2  <-- 13
                         M                                           #; (f:fpu) ft3  <-- 12.0
       0     1784        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 13, a3  = 109, taken, goto 0x80000708
                         M 0x8000070c fsgnj.d ft0, ft3, ft3          #; ft3  = 12.0, ft3  = 12.0
       0     1785        M                                           #; (f:fpu) ft0  <-- 12.0
       0     1786        M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 13
       0     1787        M 0x80000710 addi    a2, a2, 1              #; a2  = 13, (wrb) a2  <-- 14
                         M                                           #; (f:fpu) ft3  <-- 13.0
       0     1788        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 14, a3  = 109, taken, goto 0x80000708
                         M 0x8000070c fsgnj.d ft0, ft3, ft3          #; ft3  = 13.0, ft3  = 13.0
       0     1789        M                                           #; (f:fpu) ft0  <-- 13.0
       0     1790        M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 14
       0     1791        M 0x80000710 addi    a2, a2, 1              #; a2  = 14, (wrb) a2  <-- 15
                         M                                           #; (f:fpu) ft3  <-- 14.0
       0     1792        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 15, a3  = 109, taken, goto 0x80000708
                         M 0x8000070c fsgnj.d ft0, ft3, ft3          #; ft3  = 14.0, ft3  = 14.0
       0     1793        M                                           #; (f:fpu) ft0  <-- 14.0
       0     1794        M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 15
       0     1795        M 0x80000710 addi    a2, a2, 1              #; a2  = 15, (wrb) a2  <-- 16
                         M                                           #; (f:fpu) ft3  <-- 15.0
       0     1796        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 16, a3  = 109, taken, goto 0x80000708
                         M 0x8000070c fsgnj.d ft0, ft3, ft3          #; ft3  = 15.0, ft3  = 15.0
       0     1797        M                                           #; (f:fpu) ft0  <-- 15.0
       0     1798        M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 16
       0     1799        M 0x80000710 addi    a2, a2, 1              #; a2  = 16, (wrb) a2  <-- 17
                         M                                           #; (f:fpu) ft3  <-- 16.0
       0     1800        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 17, a3  = 109, taken, goto 0x80000708
                         M 0x8000070c fsgnj.d ft0, ft3, ft3          #; ft3  = 16.0, ft3  = 16.0
       0     1801        M                                           #; (f:fpu) ft0  <-- 16.0
       0     1802        M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 17
       0     1803        M 0x80000710 addi    a2, a2, 1              #; a2  = 17, (wrb) a2  <-- 18
                         M                                           #; (f:fpu) ft3  <-- 17.0
       0     1804        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 18, a3  = 109, taken, goto 0x80000708
                         M 0x8000070c fsgnj.d ft0, ft3, ft3          #; ft3  = 17.0, ft3  = 17.0
       0     1805        M                                           #; (f:fpu) ft0  <-- 17.0
       0     1806        M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 18
       0     1807        M 0x80000710 addi    a2, a2, 1              #; a2  = 18, (wrb) a2  <-- 19
                         M                                           #; (f:fpu) ft3  <-- 18.0
       0     1808        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 19, a3  = 109, taken, goto 0x80000708
                         M 0x8000070c fsgnj.d ft0, ft3, ft3          #; ft3  = 18.0, ft3  = 18.0
       0     1809        M                                           #; (f:fpu) ft0  <-- 18.0
       0     1810        M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 19
       0     1811        M 0x80000710 addi    a2, a2, 1              #; a2  = 19, (wrb) a2  <-- 20
                         M                                           #; (f:fpu) ft3  <-- 19.0
       0     1812        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 20, a3  = 109, taken, goto 0x80000708
                         M 0x8000070c fsgnj.d ft0, ft3, ft3          #; ft3  = 19.0, ft3  = 19.0
       0     1813        M                                           #; (f:fpu) ft0  <-- 19.0
       0     1814        M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 20
       0     1815        M 0x80000710 addi    a2, a2, 1              #; a2  = 20, (wrb) a2  <-- 21
                         M                                           #; (f:fpu) ft3  <-- 20.0
       0     1816        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 21, a3  = 109, taken, goto 0x80000708
                         M 0x8000070c fsgnj.d ft0, ft3, ft3          #; ft3  = 20.0, ft3  = 20.0
       0     1817        M                                           #; (f:fpu) ft0  <-- 20.0
       0     1818        M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 21
       0     1819        M 0x80000710 addi    a2, a2, 1              #; a2  = 21, (wrb) a2  <-- 22
                         M                                           #; (f:fpu) ft3  <-- 21.0
       0     1820        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 22, a3  = 109, taken, goto 0x80000708
                         M 0x8000070c fsgnj.d ft0, ft3, ft3          #; ft3  = 21.0, ft3  = 21.0
       0     1821        M                                           #; (f:fpu) ft0  <-- 21.0
       0     1822        M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 22
       0     1823        M 0x80000710 addi    a2, a2, 1              #; a2  = 22, (wrb) a2  <-- 23
                         M                                           #; (f:fpu) ft3  <-- 22.0
       0     1824        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 23, a3  = 109, taken, goto 0x80000708
                         M 0x8000070c fsgnj.d ft0, ft3, ft3          #; ft3  = 22.0, ft3  = 22.0
       0     1825        M                                           #; (f:fpu) ft0  <-- 22.0
       0     1826        M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 23
       0     1827        M 0x80000710 addi    a2, a2, 1              #; a2  = 23, (wrb) a2  <-- 24
                         M                                           #; (f:fpu) ft3  <-- 23.0
       0     1828        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 24, a3  = 109, taken, goto 0x80000708
                         M 0x8000070c fsgnj.d ft0, ft3, ft3          #; ft3  = 23.0, ft3  = 23.0
       0     1829        M                                           #; (f:fpu) ft0  <-- 23.0
       0     1830        M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 24
       0     1831        M 0x80000710 addi    a2, a2, 1              #; a2  = 24, (wrb) a2  <-- 25
                         M                                           #; (f:fpu) ft3  <-- 24.0
       0     1832        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 25, a3  = 109, taken, goto 0x80000708
                         M 0x8000070c fsgnj.d ft0, ft3, ft3          #; ft3  = 24.0, ft3  = 24.0
       0     1833        M                                           #; (f:fpu) ft0  <-- 24.0
       0     1834        M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 25
       0     1835        M 0x80000710 addi    a2, a2, 1              #; a2  = 25, (wrb) a2  <-- 26
                         M                                           #; (f:fpu) ft3  <-- 25.0
       0     1836        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 26, a3  = 109, taken, goto 0x80000708
                         M 0x8000070c fsgnj.d ft0, ft3, ft3          #; ft3  = 25.0, ft3  = 25.0
       0     1837        M                                           #; (f:fpu) ft0  <-- 25.0
       0     1838        M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 26
       0     1839        M 0x80000710 addi    a2, a2, 1              #; a2  = 26, (wrb) a2  <-- 27
                         M                                           #; (f:fpu) ft3  <-- 26.0
       0     1840        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 27, a3  = 109, taken, goto 0x80000708
                         M 0x8000070c fsgnj.d ft0, ft3, ft3          #; ft3  = 26.0, ft3  = 26.0
       0     1841        M                                           #; (f:fpu) ft0  <-- 26.0
       0     1842        M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 27
       0     1843        M 0x80000710 addi    a2, a2, 1              #; a2  = 27, (wrb) a2  <-- 28
                         M                                           #; (f:fpu) ft3  <-- 27.0
       0     1844        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 28, a3  = 109, taken, goto 0x80000708
                         M 0x8000070c fsgnj.d ft0, ft3, ft3          #; ft3  = 27.0, ft3  = 27.0
       0     1845        M                                           #; (f:fpu) ft0  <-- 27.0
       0     1846        M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 28
       0     1847        M 0x80000710 addi    a2, a2, 1              #; a2  = 28, (wrb) a2  <-- 29
                         M                                           #; (f:fpu) ft3  <-- 28.0
       0     1848        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 29, a3  = 109, taken, goto 0x80000708
                         M 0x8000070c fsgnj.d ft0, ft3, ft3          #; ft3  = 28.0, ft3  = 28.0
       0     1849        M                                           #; (f:fpu) ft0  <-- 28.0
       0     1850        M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 29
       0     1851        M 0x80000710 addi    a2, a2, 1              #; a2  = 29, (wrb) a2  <-- 30
                         M                                           #; (f:fpu) ft3  <-- 29.0
       0     1852        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 30, a3  = 109, taken, goto 0x80000708
                         M 0x8000070c fsgnj.d ft0, ft3, ft3          #; ft3  = 29.0, ft3  = 29.0
       0     1853        M                                           #; (f:fpu) ft0  <-- 29.0
       0     1854        M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 30
       0     1855        M 0x80000710 addi    a2, a2, 1              #; a2  = 30, (wrb) a2  <-- 31
                         M                                           #; (f:fpu) ft3  <-- 30.0
       0     1856        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 31, a3  = 109, taken, goto 0x80000708
                         M 0x8000070c fsgnj.d ft0, ft3, ft3          #; ft3  = 30.0, ft3  = 30.0
       0     1857        M                                           #; (f:fpu) ft0  <-- 30.0
       0     1858        M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 31
       0     1859        M 0x80000710 addi    a2, a2, 1              #; a2  = 31, (wrb) a2  <-- 32
                         M                                           #; (f:fpu) ft3  <-- 31.0
       0     1860        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 32, a3  = 109, taken, goto 0x80000708
                         M 0x8000070c fsgnj.d ft0, ft3, ft3          #; ft3  = 31.0, ft3  = 31.0
       0     1861        M                                           #; (f:fpu) ft0  <-- 31.0
       0     1862        M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 32
       0     1863        M 0x80000710 addi    a2, a2, 1              #; a2  = 32, (wrb) a2  <-- 33
                         M                                           #; (f:fpu) ft3  <-- 32.0
       0     1864        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 33, a3  = 109, taken, goto 0x80000708
                         M 0x8000070c fsgnj.d ft0, ft3, ft3          #; ft3  = 32.0, ft3  = 32.0
       0     1865        M                                           #; (f:fpu) ft0  <-- 32.0
       0     1866        M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 33
       0     1867        M 0x80000710 addi    a2, a2, 1              #; a2  = 33, (wrb) a2  <-- 34
                         M                                           #; (f:fpu) ft3  <-- 33.0
       0     1868        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 34, a3  = 109, taken, goto 0x80000708
                         M 0x8000070c fsgnj.d ft0, ft3, ft3          #; ft3  = 33.0, ft3  = 33.0
       0     1869        M                                           #; (f:fpu) ft0  <-- 33.0
       0     1870        M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 34
       0     1871        M 0x80000710 addi    a2, a2, 1              #; a2  = 34, (wrb) a2  <-- 35
                         M                                           #; (f:fpu) ft3  <-- 34.0
       0     1872        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 35, a3  = 109, taken, goto 0x80000708
                         M 0x8000070c fsgnj.d ft0, ft3, ft3          #; ft3  = 34.0, ft3  = 34.0
       0     1873        M                                           #; (f:fpu) ft0  <-- 34.0
       0     1874        M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 35
       0     1875        M 0x80000710 addi    a2, a2, 1              #; a2  = 35, (wrb) a2  <-- 36
                         M                                           #; (f:fpu) ft3  <-- 35.0
       0     1876        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 36, a3  = 109, taken, goto 0x80000708
                         M 0x8000070c fsgnj.d ft0, ft3, ft3          #; ft3  = 35.0, ft3  = 35.0
       0     1877        M                                           #; (f:fpu) ft0  <-- 35.0
       0     1878        M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 36
       0     1879        M 0x80000710 addi    a2, a2, 1              #; a2  = 36, (wrb) a2  <-- 37
                         M                                           #; (f:fpu) ft3  <-- 36.0
       0     1880        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 37, a3  = 109, taken, goto 0x80000708
                         M 0x8000070c fsgnj.d ft0, ft3, ft3          #; ft3  = 36.0, ft3  = 36.0
       0     1881        M                                           #; (f:fpu) ft0  <-- 36.0
       0     1882        M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 37
       0     1883        M 0x80000710 addi    a2, a2, 1              #; a2  = 37, (wrb) a2  <-- 38
                         M                                           #; (f:fpu) ft3  <-- 37.0
       0     1884        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 38, a3  = 109, taken, goto 0x80000708
                         M 0x8000070c fsgnj.d ft0, ft3, ft3          #; ft3  = 37.0, ft3  = 37.0
       0     1885        M                                           #; (f:fpu) ft0  <-- 37.0
       0     1886        M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 38
       0     1887        M 0x80000710 addi    a2, a2, 1              #; a2  = 38, (wrb) a2  <-- 39
                         M                                           #; (f:fpu) ft3  <-- 38.0
       0     1888        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 39, a3  = 109, taken, goto 0x80000708
                         M 0x8000070c fsgnj.d ft0, ft3, ft3          #; ft3  = 38.0, ft3  = 38.0
       0     1889        M                                           #; (f:fpu) ft0  <-- 38.0
       0     1890        M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 39
       0     1891        M 0x80000710 addi    a2, a2, 1              #; a2  = 39, (wrb) a2  <-- 40
                         M                                           #; (f:fpu) ft3  <-- 39.0
       0     1892        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 40, a3  = 109, taken, goto 0x80000708
                         M 0x8000070c fsgnj.d ft0, ft3, ft3          #; ft3  = 39.0, ft3  = 39.0
       0     1893        M                                           #; (f:fpu) ft0  <-- 39.0
       0     1894        M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 40
       0     1895        M 0x80000710 addi    a2, a2, 1              #; a2  = 40, (wrb) a2  <-- 41
                         M                                           #; (f:fpu) ft3  <-- 40.0
       0     1896        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 41, a3  = 109, taken, goto 0x80000708
                         M 0x8000070c fsgnj.d ft0, ft3, ft3          #; ft3  = 40.0, ft3  = 40.0
       0     1897        M                                           #; (f:fpu) ft0  <-- 40.0
       0     1898        M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 41
       0     1899        M 0x80000710 addi    a2, a2, 1              #; a2  = 41, (wrb) a2  <-- 42
                         M                                           #; (f:fpu) ft3  <-- 41.0
       0     1900        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 42, a3  = 109, taken, goto 0x80000708
                         M 0x8000070c fsgnj.d ft0, ft3, ft3          #; ft3  = 41.0, ft3  = 41.0
       0     1901        M                                           #; (f:fpu) ft0  <-- 41.0
       0     1902        M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 42
       0     1903        M 0x80000710 addi    a2, a2, 1              #; a2  = 42, (wrb) a2  <-- 43
                         M                                           #; (f:fpu) ft3  <-- 42.0
       0     1904        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 43, a3  = 109, taken, goto 0x80000708
                         M 0x8000070c fsgnj.d ft0, ft3, ft3          #; ft3  = 42.0, ft3  = 42.0
       0     1905        M                                           #; (f:fpu) ft0  <-- 42.0
       0     1906        M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 43
       0     1907        M 0x80000710 addi    a2, a2, 1              #; a2  = 43, (wrb) a2  <-- 44
                         M                                           #; (f:fpu) ft3  <-- 43.0
       0     1908        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 44, a3  = 109, taken, goto 0x80000708
                         M 0x8000070c fsgnj.d ft0, ft3, ft3          #; ft3  = 43.0, ft3  = 43.0
       0     1909        M                                           #; (f:fpu) ft0  <-- 43.0
       0     1910        M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 44
       0     1911        M 0x80000710 addi    a2, a2, 1              #; a2  = 44, (wrb) a2  <-- 45
                         M                                           #; (f:fpu) ft3  <-- 44.0
       0     1912        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 45, a3  = 109, taken, goto 0x80000708
                         M 0x8000070c fsgnj.d ft0, ft3, ft3          #; ft3  = 44.0, ft3  = 44.0
       0     1913        M                                           #; (f:fpu) ft0  <-- 44.0
       0     1914        M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 45
       0     1915        M 0x80000710 addi    a2, a2, 1              #; a2  = 45, (wrb) a2  <-- 46
                         M                                           #; (f:fpu) ft3  <-- 45.0
       0     1916        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 46, a3  = 109, taken, goto 0x80000708
                         M 0x8000070c fsgnj.d ft0, ft3, ft3          #; ft3  = 45.0, ft3  = 45.0
       0     1917        M                                           #; (f:fpu) ft0  <-- 45.0
       0     1918        M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 46
       0     1919        M 0x80000710 addi    a2, a2, 1              #; a2  = 46, (wrb) a2  <-- 47
                         M                                           #; (f:fpu) ft3  <-- 46.0
       0     1920        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 47, a3  = 109, taken, goto 0x80000708
                         M 0x8000070c fsgnj.d ft0, ft3, ft3          #; ft3  = 46.0, ft3  = 46.0
       0     1921        M                                           #; (f:fpu) ft0  <-- 46.0
       0     1922        M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 47
       0     1923        M 0x80000710 addi    a2, a2, 1              #; a2  = 47, (wrb) a2  <-- 48
                         M                                           #; (f:fpu) ft3  <-- 47.0
       0     1924        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 48, a3  = 109, taken, goto 0x80000708
                         M 0x8000070c fsgnj.d ft0, ft3, ft3          #; ft3  = 47.0, ft3  = 47.0
       0     1925        M                                           #; (f:fpu) ft0  <-- 47.0
       0     1926        M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 48
       0     1927        M 0x80000710 addi    a2, a2, 1              #; a2  = 48, (wrb) a2  <-- 49
                         M                                           #; (f:fpu) ft3  <-- 48.0
       0     1928        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 49, a3  = 109, taken, goto 0x80000708
                         M 0x8000070c fsgnj.d ft0, ft3, ft3          #; ft3  = 48.0, ft3  = 48.0
       0     1929        M                                           #; (f:fpu) ft0  <-- 48.0
       0     1930        M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 49
       0     1931        M 0x80000710 addi    a2, a2, 1              #; a2  = 49, (wrb) a2  <-- 50
                         M                                           #; (f:fpu) ft3  <-- 49.0
       0     1932        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 50, a3  = 109, taken, goto 0x80000708
                         M 0x8000070c fsgnj.d ft0, ft3, ft3          #; ft3  = 49.0, ft3  = 49.0
       0     1933        M                                           #; (f:fpu) ft0  <-- 49.0
       0     1934        M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 50
       0     1935        M 0x80000710 addi    a2, a2, 1              #; a2  = 50, (wrb) a2  <-- 51
                         M                                           #; (f:fpu) ft3  <-- 50.0
       0     1936        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 51, a3  = 109, taken, goto 0x80000708
                         M 0x8000070c fsgnj.d ft0, ft3, ft3          #; ft3  = 50.0, ft3  = 50.0
       0     1937        M                                           #; (f:fpu) ft0  <-- 50.0
       0     1938        M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 51
       0     1939        M 0x80000710 addi    a2, a2, 1              #; a2  = 51, (wrb) a2  <-- 52
                         M                                           #; (f:fpu) ft3  <-- 51.0
       0     1940        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 52, a3  = 109, taken, goto 0x80000708
                         M 0x8000070c fsgnj.d ft0, ft3, ft3          #; ft3  = 51.0, ft3  = 51.0
       0     1941        M                                           #; (f:fpu) ft0  <-- 51.0
       0     1942        M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 52
       0     1943        M 0x80000710 addi    a2, a2, 1              #; a2  = 52, (wrb) a2  <-- 53
                         M                                           #; (f:fpu) ft3  <-- 52.0
       0     1944        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 53, a3  = 109, taken, goto 0x80000708
                         M 0x8000070c fsgnj.d ft0, ft3, ft3          #; ft3  = 52.0, ft3  = 52.0
       0     1945        M                                           #; (f:fpu) ft0  <-- 52.0
       0     1946        M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 53
       0     1947        M 0x80000710 addi    a2, a2, 1              #; a2  = 53, (wrb) a2  <-- 54
                         M                                           #; (f:fpu) ft3  <-- 53.0
       0     1948        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 54, a3  = 109, taken, goto 0x80000708
                         M 0x8000070c fsgnj.d ft0, ft3, ft3          #; ft3  = 53.0, ft3  = 53.0
       0     1949        M                                           #; (f:fpu) ft0  <-- 53.0
       0     1950        M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 54
       0     1951        M 0x80000710 addi    a2, a2, 1              #; a2  = 54, (wrb) a2  <-- 55
                         M                                           #; (f:fpu) ft3  <-- 54.0
       0     1952        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 55, a3  = 109, taken, goto 0x80000708
                         M 0x8000070c fsgnj.d ft0, ft3, ft3          #; ft3  = 54.0, ft3  = 54.0
       0     1953        M                                           #; (f:fpu) ft0  <-- 54.0
       0     1954        M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 55
       0     1955        M 0x80000710 addi    a2, a2, 1              #; a2  = 55, (wrb) a2  <-- 56
                         M                                           #; (f:fpu) ft3  <-- 55.0
       0     1956        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 56, a3  = 109, taken, goto 0x80000708
                         M 0x8000070c fsgnj.d ft0, ft3, ft3          #; ft3  = 55.0, ft3  = 55.0
       0     1957        M                                           #; (f:fpu) ft0  <-- 55.0
       0     1958        M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 56
       0     1959        M 0x80000710 addi    a2, a2, 1              #; a2  = 56, (wrb) a2  <-- 57
                         M                                           #; (f:fpu) ft3  <-- 56.0
       0     1960        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 57, a3  = 109, taken, goto 0x80000708
                         M 0x8000070c fsgnj.d ft0, ft3, ft3          #; ft3  = 56.0, ft3  = 56.0
       0     1961        M                                           #; (f:fpu) ft0  <-- 56.0
       0     1962        M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 57
       0     1963        M 0x80000710 addi    a2, a2, 1              #; a2  = 57, (wrb) a2  <-- 58
                         M                                           #; (f:fpu) ft3  <-- 57.0
       0     1964        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 58, a3  = 109, taken, goto 0x80000708
                         M 0x8000070c fsgnj.d ft0, ft3, ft3          #; ft3  = 57.0, ft3  = 57.0
       0     1965        M                                           #; (f:fpu) ft0  <-- 57.0
       0     1966        M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 58
       0     1967        M 0x80000710 addi    a2, a2, 1              #; a2  = 58, (wrb) a2  <-- 59
                         M                                           #; (f:fpu) ft3  <-- 58.0
       0     1968        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 59, a3  = 109, taken, goto 0x80000708
                         M 0x8000070c fsgnj.d ft0, ft3, ft3          #; ft3  = 58.0, ft3  = 58.0
       0     1969        M                                           #; (f:fpu) ft0  <-- 58.0
       0     1970        M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 59
       0     1971        M 0x80000710 addi    a2, a2, 1              #; a2  = 59, (wrb) a2  <-- 60
                         M                                           #; (f:fpu) ft3  <-- 59.0
       0     1972        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 60, a3  = 109, taken, goto 0x80000708
                         M 0x8000070c fsgnj.d ft0, ft3, ft3          #; ft3  = 59.0, ft3  = 59.0
       0     1973        M                                           #; (f:fpu) ft0  <-- 59.0
       0     1974        M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 60
       0     1975        M 0x80000710 addi    a2, a2, 1              #; a2  = 60, (wrb) a2  <-- 61
                         M                                           #; (f:fpu) ft3  <-- 60.0
       0     1976        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 61, a3  = 109, taken, goto 0x80000708
                         M 0x8000070c fsgnj.d ft0, ft3, ft3          #; ft3  = 60.0, ft3  = 60.0
       0     1977        M                                           #; (f:fpu) ft0  <-- 60.0
       0     1978        M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 61
       0     1979        M 0x80000710 addi    a2, a2, 1              #; a2  = 61, (wrb) a2  <-- 62
                         M                                           #; (f:fpu) ft3  <-- 61.0
       0     1980        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 62, a3  = 109, taken, goto 0x80000708
                         M 0x8000070c fsgnj.d ft0, ft3, ft3          #; ft3  = 61.0, ft3  = 61.0
       0     1981        M                                           #; (f:fpu) ft0  <-- 61.0
       0     1982        M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 62
       0     1983        M 0x80000710 addi    a2, a2, 1              #; a2  = 62, (wrb) a2  <-- 63
                         M                                           #; (f:fpu) ft3  <-- 62.0
       0     1984        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 63, a3  = 109, taken, goto 0x80000708
                         M 0x8000070c fsgnj.d ft0, ft3, ft3          #; ft3  = 62.0, ft3  = 62.0
       0     1985        M                                           #; (f:fpu) ft0  <-- 62.0
       0     1986        M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 63
       0     1987        M 0x80000710 addi    a2, a2, 1              #; a2  = 63, (wrb) a2  <-- 64
                         M                                           #; (f:fpu) ft3  <-- 63.0
       0     1988        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 64, a3  = 109, taken, goto 0x80000708
                         M 0x8000070c fsgnj.d ft0, ft3, ft3          #; ft3  = 63.0, ft3  = 63.0
       0     1989        M                                           #; (f:fpu) ft0  <-- 63.0
       0     1990        M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 64
       0     1991        M 0x80000710 addi    a2, a2, 1              #; a2  = 64, (wrb) a2  <-- 65
                         M                                           #; (f:fpu) ft3  <-- 64.0
       0     1992        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 65, a3  = 109, taken, goto 0x80000708
                         M 0x8000070c fsgnj.d ft0, ft3, ft3          #; ft3  = 64.0, ft3  = 64.0
       0     1993        M                                           #; (f:fpu) ft0  <-- 64.0
       0     1994        M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 65
       0     1995        M 0x80000710 addi    a2, a2, 1              #; a2  = 65, (wrb) a2  <-- 66
                         M                                           #; (f:fpu) ft3  <-- 65.0
       0     1996        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 66, a3  = 109, taken, goto 0x80000708
                         M 0x8000070c fsgnj.d ft0, ft3, ft3          #; ft3  = 65.0, ft3  = 65.0
       0     1997        M                                           #; (f:fpu) ft0  <-- 65.0
       0     1998        M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 66
       0     1999        M 0x80000710 addi    a2, a2, 1              #; a2  = 66, (wrb) a2  <-- 67
                         M                                           #; (f:fpu) ft3  <-- 66.0
       0     2000        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 67, a3  = 109, taken, goto 0x80000708
                         M 0x8000070c fsgnj.d ft0, ft3, ft3          #; ft3  = 66.0, ft3  = 66.0
       0     2001        M                                           #; (f:fpu) ft0  <-- 66.0
       0     2002        M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 67
       0     2003        M 0x80000710 addi    a2, a2, 1              #; a2  = 67, (wrb) a2  <-- 68
                         M                                           #; (f:fpu) ft3  <-- 67.0
       0     2004        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 68, a3  = 109, taken, goto 0x80000708
                         M 0x8000070c fsgnj.d ft0, ft3, ft3          #; ft3  = 67.0, ft3  = 67.0
       0     2005        M                                           #; (f:fpu) ft0  <-- 67.0
       0     2006        M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 68
       0     2007        M 0x80000710 addi    a2, a2, 1              #; a2  = 68, (wrb) a2  <-- 69
                         M                                           #; (f:fpu) ft3  <-- 68.0
       0     2008        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 69, a3  = 109, taken, goto 0x80000708
                         M 0x8000070c fsgnj.d ft0, ft3, ft3          #; ft3  = 68.0, ft3  = 68.0
       0     2009        M                                           #; (f:fpu) ft0  <-- 68.0
       0     2010        M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 69
       0     2011        M 0x80000710 addi    a2, a2, 1              #; a2  = 69, (wrb) a2  <-- 70
                         M                                           #; (f:fpu) ft3  <-- 69.0
       0     2012        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 70, a3  = 109, taken, goto 0x80000708
                         M 0x8000070c fsgnj.d ft0, ft3, ft3          #; ft3  = 69.0, ft3  = 69.0
       0     2013        M                                           #; (f:fpu) ft0  <-- 69.0
       0     2014        M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 70
       0     2015        M 0x80000710 addi    a2, a2, 1              #; a2  = 70, (wrb) a2  <-- 71
                         M                                           #; (f:fpu) ft3  <-- 70.0
       0     2016        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 71, a3  = 109, taken, goto 0x80000708
                         M 0x8000070c fsgnj.d ft0, ft3, ft3          #; ft3  = 70.0, ft3  = 70.0
       0     2017        M                                           #; (f:fpu) ft0  <-- 70.0
       0     2018        M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 71
       0     2019        M 0x80000710 addi    a2, a2, 1              #; a2  = 71, (wrb) a2  <-- 72
                         M                                           #; (f:fpu) ft3  <-- 71.0
       0     2020        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 72, a3  = 109, taken, goto 0x80000708
                         M 0x8000070c fsgnj.d ft0, ft3, ft3          #; ft3  = 71.0, ft3  = 71.0
       0     2021        M                                           #; (f:fpu) ft0  <-- 71.0
       0     2022        M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 72
       0     2023        M 0x80000710 addi    a2, a2, 1              #; a2  = 72, (wrb) a2  <-- 73
                         M                                           #; (f:fpu) ft3  <-- 72.0
       0     2024        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 73, a3  = 109, taken, goto 0x80000708
                         M 0x8000070c fsgnj.d ft0, ft3, ft3          #; ft3  = 72.0, ft3  = 72.0
       0     2025        M                                           #; (f:fpu) ft0  <-- 72.0
       0     2026        M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 73
       0     2027        M 0x80000710 addi    a2, a2, 1              #; a2  = 73, (wrb) a2  <-- 74
                         M                                           #; (f:fpu) ft3  <-- 73.0
       0     2028        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 74, a3  = 109, taken, goto 0x80000708
                         M 0x8000070c fsgnj.d ft0, ft3, ft3          #; ft3  = 73.0, ft3  = 73.0
       0     2029        M                                           #; (f:fpu) ft0  <-- 73.0
       0     2030        M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 74
       0     2031        M 0x80000710 addi    a2, a2, 1              #; a2  = 74, (wrb) a2  <-- 75
                         M                                           #; (f:fpu) ft3  <-- 74.0
       0     2032        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 75, a3  = 109, taken, goto 0x80000708
                         M 0x8000070c fsgnj.d ft0, ft3, ft3          #; ft3  = 74.0, ft3  = 74.0
       0     2033        M                                           #; (f:fpu) ft0  <-- 74.0
       0     2034        M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 75
       0     2035        M 0x80000710 addi    a2, a2, 1              #; a2  = 75, (wrb) a2  <-- 76
                         M                                           #; (f:fpu) ft3  <-- 75.0
       0     2036        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 76, a3  = 109, taken, goto 0x80000708
                         M 0x8000070c fsgnj.d ft0, ft3, ft3          #; ft3  = 75.0, ft3  = 75.0
       0     2037        M                                           #; (f:fpu) ft0  <-- 75.0
       0     2038        M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 76
       0     2039        M 0x80000710 addi    a2, a2, 1              #; a2  = 76, (wrb) a2  <-- 77
                         M                                           #; (f:fpu) ft3  <-- 76.0
       0     2040        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 77, a3  = 109, taken, goto 0x80000708
                         M 0x8000070c fsgnj.d ft0, ft3, ft3          #; ft3  = 76.0, ft3  = 76.0
       0     2041        M                                           #; (f:fpu) ft0  <-- 76.0
       0     2042        M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 77
       0     2043        M 0x80000710 addi    a2, a2, 1              #; a2  = 77, (wrb) a2  <-- 78
                         M                                           #; (f:fpu) ft3  <-- 77.0
       0     2044        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 78, a3  = 109, taken, goto 0x80000708
                         M 0x8000070c fsgnj.d ft0, ft3, ft3          #; ft3  = 77.0, ft3  = 77.0
       0     2045        M                                           #; (f:fpu) ft0  <-- 77.0
       0     2046        M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 78
       0     2047        M 0x80000710 addi    a2, a2, 1              #; a2  = 78, (wrb) a2  <-- 79
                         M                                           #; (f:fpu) ft3  <-- 78.0
       0     2048        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 79, a3  = 109, taken, goto 0x80000708
                         M 0x8000070c fsgnj.d ft0, ft3, ft3          #; ft3  = 78.0, ft3  = 78.0
       0     2049        M                                           #; (f:fpu) ft0  <-- 78.0
       0     2050        M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 79
       0     2051        M 0x80000710 addi    a2, a2, 1              #; a2  = 79, (wrb) a2  <-- 80
                         M                                           #; (f:fpu) ft3  <-- 79.0
       0     2052        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 80, a3  = 109, taken, goto 0x80000708
                         M 0x8000070c fsgnj.d ft0, ft3, ft3          #; ft3  = 79.0, ft3  = 79.0
       0     2053        M                                           #; (f:fpu) ft0  <-- 79.0
       0     2054        M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 80
       0     2055        M 0x80000710 addi    a2, a2, 1              #; a2  = 80, (wrb) a2  <-- 81
                         M                                           #; (f:fpu) ft3  <-- 80.0
       0     2056        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 81, a3  = 109, taken, goto 0x80000708
                         M 0x8000070c fsgnj.d ft0, ft3, ft3          #; ft3  = 80.0, ft3  = 80.0
       0     2057        M                                           #; (f:fpu) ft0  <-- 80.0
       0     2058        M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 81
       0     2059        M 0x80000710 addi    a2, a2, 1              #; a2  = 81, (wrb) a2  <-- 82
                         M                                           #; (f:fpu) ft3  <-- 81.0
       0     2060        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 82, a3  = 109, taken, goto 0x80000708
                         M 0x8000070c fsgnj.d ft0, ft3, ft3          #; ft3  = 81.0, ft3  = 81.0
       0     2061        M                                           #; (f:fpu) ft0  <-- 81.0
       0     2062        M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 82
       0     2063        M 0x80000710 addi    a2, a2, 1              #; a2  = 82, (wrb) a2  <-- 83
                         M                                           #; (f:fpu) ft3  <-- 82.0
       0     2064        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 83, a3  = 109, taken, goto 0x80000708
                         M 0x8000070c fsgnj.d ft0, ft3, ft3          #; ft3  = 82.0, ft3  = 82.0
       0     2065        M                                           #; (f:fpu) ft0  <-- 82.0
       0     2066        M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 83
       0     2067        M 0x80000710 addi    a2, a2, 1              #; a2  = 83, (wrb) a2  <-- 84
                         M                                           #; (f:fpu) ft3  <-- 83.0
       0     2068        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 84, a3  = 109, taken, goto 0x80000708
                         M 0x8000070c fsgnj.d ft0, ft3, ft3          #; ft3  = 83.0, ft3  = 83.0
       0     2069        M                                           #; (f:fpu) ft0  <-- 83.0
       0     2070        M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 84
       0     2071        M 0x80000710 addi    a2, a2, 1              #; a2  = 84, (wrb) a2  <-- 85
                         M                                           #; (f:fpu) ft3  <-- 84.0
       0     2072        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 85, a3  = 109, taken, goto 0x80000708
                         M 0x8000070c fsgnj.d ft0, ft3, ft3          #; ft3  = 84.0, ft3  = 84.0
       0     2073        M                                           #; (f:fpu) ft0  <-- 84.0
       0     2074        M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 85
       0     2075        M 0x80000710 addi    a2, a2, 1              #; a2  = 85, (wrb) a2  <-- 86
                         M                                           #; (f:fpu) ft3  <-- 85.0
       0     2076        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 86, a3  = 109, taken, goto 0x80000708
                         M 0x8000070c fsgnj.d ft0, ft3, ft3          #; ft3  = 85.0, ft3  = 85.0
       0     2077        M                                           #; (f:fpu) ft0  <-- 85.0
       0     2078        M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 86
       0     2079        M 0x80000710 addi    a2, a2, 1              #; a2  = 86, (wrb) a2  <-- 87
                         M                                           #; (f:fpu) ft3  <-- 86.0
       0     2080        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 87, a3  = 109, taken, goto 0x80000708
                         M 0x8000070c fsgnj.d ft0, ft3, ft3          #; ft3  = 86.0, ft3  = 86.0
       0     2081        M                                           #; (f:fpu) ft0  <-- 86.0
       0     2082        M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 87
       0     2083        M 0x80000710 addi    a2, a2, 1              #; a2  = 87, (wrb) a2  <-- 88
                         M                                           #; (f:fpu) ft3  <-- 87.0
       0     2084        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 88, a3  = 109, taken, goto 0x80000708
                         M 0x8000070c fsgnj.d ft0, ft3, ft3          #; ft3  = 87.0, ft3  = 87.0
       0     2085        M                                           #; (f:fpu) ft0  <-- 87.0
       0     2086        M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 88
       0     2087        M 0x80000710 addi    a2, a2, 1              #; a2  = 88, (wrb) a2  <-- 89
                         M                                           #; (f:fpu) ft3  <-- 88.0
       0     2088        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 89, a3  = 109, taken, goto 0x80000708
                         M 0x8000070c fsgnj.d ft0, ft3, ft3          #; ft3  = 88.0, ft3  = 88.0
       0     2089        M                                           #; (f:fpu) ft0  <-- 88.0
       0     2090        M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 89
       0     2091        M 0x80000710 addi    a2, a2, 1              #; a2  = 89, (wrb) a2  <-- 90
                         M                                           #; (f:fpu) ft3  <-- 89.0
       0     2092        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 90, a3  = 109, taken, goto 0x80000708
                         M 0x8000070c fsgnj.d ft0, ft3, ft3          #; ft3  = 89.0, ft3  = 89.0
       0     2093        M                                           #; (f:fpu) ft0  <-- 89.0
       0     2094        M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 90
       0     2095        M 0x80000710 addi    a2, a2, 1              #; a2  = 90, (wrb) a2  <-- 91
                         M                                           #; (f:fpu) ft3  <-- 90.0
       0     2096        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 91, a3  = 109, taken, goto 0x80000708
                         M 0x8000070c fsgnj.d ft0, ft3, ft3          #; ft3  = 90.0, ft3  = 90.0
       0     2097        M                                           #; (f:fpu) ft0  <-- 90.0
       0     2098        M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 91
       0     2099        M 0x80000710 addi    a2, a2, 1              #; a2  = 91, (wrb) a2  <-- 92
                         M                                           #; (f:fpu) ft3  <-- 91.0
       0     2100        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 92, a3  = 109, taken, goto 0x80000708
                         M 0x8000070c fsgnj.d ft0, ft3, ft3          #; ft3  = 91.0, ft3  = 91.0
       0     2101        M                                           #; (f:fpu) ft0  <-- 91.0
       0     2102        M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 92
       0     2103        M 0x80000710 addi    a2, a2, 1              #; a2  = 92, (wrb) a2  <-- 93
                         M                                           #; (f:fpu) ft3  <-- 92.0
       0     2104        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 93, a3  = 109, taken, goto 0x80000708
                         M 0x8000070c fsgnj.d ft0, ft3, ft3          #; ft3  = 92.0, ft3  = 92.0
       0     2105        M                                           #; (f:fpu) ft0  <-- 92.0
       0     2106        M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 93
       0     2107        M 0x80000710 addi    a2, a2, 1              #; a2  = 93, (wrb) a2  <-- 94
                         M                                           #; (f:fpu) ft3  <-- 93.0
       0     2108        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 94, a3  = 109, taken, goto 0x80000708
                         M 0x8000070c fsgnj.d ft0, ft3, ft3          #; ft3  = 93.0, ft3  = 93.0
       0     2109        M                                           #; (f:fpu) ft0  <-- 93.0
       0     2110        M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 94
       0     2111        M 0x80000710 addi    a2, a2, 1              #; a2  = 94, (wrb) a2  <-- 95
                         M                                           #; (f:fpu) ft3  <-- 94.0
       0     2112        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 95, a3  = 109, taken, goto 0x80000708
                         M 0x8000070c fsgnj.d ft0, ft3, ft3          #; ft3  = 94.0, ft3  = 94.0
       0     2113        M                                           #; (f:fpu) ft0  <-- 94.0
       0     2114        M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 95
       0     2115        M 0x80000710 addi    a2, a2, 1              #; a2  = 95, (wrb) a2  <-- 96
                         M                                           #; (f:fpu) ft3  <-- 95.0
       0     2116        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 96, a3  = 109, taken, goto 0x80000708
                         M 0x8000070c fsgnj.d ft0, ft3, ft3          #; ft3  = 95.0, ft3  = 95.0
       0     2117        M                                           #; (f:fpu) ft0  <-- 95.0
       0     2118        M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 96
       0     2119        M 0x80000710 addi    a2, a2, 1              #; a2  = 96, (wrb) a2  <-- 97
                         M                                           #; (f:fpu) ft3  <-- 96.0
       0     2120        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 97, a3  = 109, taken, goto 0x80000708
                         M 0x8000070c fsgnj.d ft0, ft3, ft3          #; ft3  = 96.0, ft3  = 96.0
       0     2121        M                                           #; (f:fpu) ft0  <-- 96.0
       0     2122        M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 97
       0     2123        M 0x80000710 addi    a2, a2, 1              #; a2  = 97, (wrb) a2  <-- 98
                         M                                           #; (f:fpu) ft3  <-- 97.0
       0     2124        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 98, a3  = 109, taken, goto 0x80000708
                         M 0x8000070c fsgnj.d ft0, ft3, ft3          #; ft3  = 97.0, ft3  = 97.0
       0     2125        M                                           #; (f:fpu) ft0  <-- 97.0
       0     2126        M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 98
       0     2127        M 0x80000710 addi    a2, a2, 1              #; a2  = 98, (wrb) a2  <-- 99
                         M                                           #; (f:fpu) ft3  <-- 98.0
       0     2128        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 99, a3  = 109, taken, goto 0x80000708
                         M 0x8000070c fsgnj.d ft0, ft3, ft3          #; ft3  = 98.0, ft3  = 98.0
       0     2129        M                                           #; (f:fpu) ft0  <-- 98.0
       0     2130        M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 99
       0     2131        M 0x80000710 addi    a2, a2, 1              #; a2  = 99, (wrb) a2  <-- 100
                         M                                           #; (f:fpu) ft3  <-- 99.0
       0     2132        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 100, a3  = 109, taken, goto 0x80000708
                         M 0x8000070c fsgnj.d ft0, ft3, ft3          #; ft3  = 99.0, ft3  = 99.0
       0     2133        M                                           #; (f:fpu) ft0  <-- 99.0
       0     2134        M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 100
       0     2135        M 0x80000710 addi    a2, a2, 1              #; a2  = 100, (wrb) a2  <-- 101
                         M                                           #; (f:fpu) ft3  <-- 100.0
       0     2136        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 101, a3  = 109, taken, goto 0x80000708
                         M 0x8000070c fsgnj.d ft0, ft3, ft3          #; ft3  = 100.0, ft3  = 100.0
       0     2137        M                                           #; (f:fpu) ft0  <-- 100.0
       0     2138        M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 101
       0     2139        M 0x80000710 addi    a2, a2, 1              #; a2  = 101, (wrb) a2  <-- 102
                         M                                           #; (f:fpu) ft3  <-- 101.0
       0     2140        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 102, a3  = 109, taken, goto 0x80000708
                         M 0x8000070c fsgnj.d ft0, ft3, ft3          #; ft3  = 101.0, ft3  = 101.0
       0     2141        M                                           #; (f:fpu) ft0  <-- 101.0
       0     2142        M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 102
       0     2143        M 0x80000710 addi    a2, a2, 1              #; a2  = 102, (wrb) a2  <-- 103
                         M                                           #; (f:fpu) ft3  <-- 102.0
       0     2144        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 103, a3  = 109, taken, goto 0x80000708
                         M 0x8000070c fsgnj.d ft0, ft3, ft3          #; ft3  = 102.0, ft3  = 102.0
       0     2145        M                                           #; (f:fpu) ft0  <-- 102.0
       0     2146        M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 103
       0     2147        M 0x80000710 addi    a2, a2, 1              #; a2  = 103, (wrb) a2  <-- 104
                         M                                           #; (f:fpu) ft3  <-- 103.0
       0     2148        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 104, a3  = 109, taken, goto 0x80000708
                         M 0x8000070c fsgnj.d ft0, ft3, ft3          #; ft3  = 103.0, ft3  = 103.0
       0     2149        M                                           #; (f:fpu) ft0  <-- 103.0
       0     2150        M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 104
       0     2151        M 0x80000710 addi    a2, a2, 1              #; a2  = 104, (wrb) a2  <-- 105
                         M                                           #; (f:fpu) ft3  <-- 104.0
       0     2152        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 105, a3  = 109, taken, goto 0x80000708
                         M 0x8000070c fsgnj.d ft0, ft3, ft3          #; ft3  = 104.0, ft3  = 104.0
       0     2153        M                                           #; (f:fpu) ft0  <-- 104.0
       0     2154        M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 105
       0     2155        M 0x80000710 addi    a2, a2, 1              #; a2  = 105, (wrb) a2  <-- 106
                         M                                           #; (f:fpu) ft3  <-- 105.0
       0     2156        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 106, a3  = 109, taken, goto 0x80000708
                         M 0x8000070c fsgnj.d ft0, ft3, ft3          #; ft3  = 105.0, ft3  = 105.0
       0     2157        M                                           #; (f:fpu) ft0  <-- 105.0
       0     2158        M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 106
       0     2159        M 0x80000710 addi    a2, a2, 1              #; a2  = 106, (wrb) a2  <-- 107
                         M                                           #; (f:fpu) ft3  <-- 106.0
       0     2160        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 107, a3  = 109, taken, goto 0x80000708
                         M 0x8000070c fsgnj.d ft0, ft3, ft3          #; ft3  = 106.0, ft3  = 106.0
       0     2161        M                                           #; (f:fpu) ft0  <-- 106.0
       0     2162        M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 107
       0     2163        M 0x80000710 addi    a2, a2, 1              #; a2  = 107, (wrb) a2  <-- 108
                         M                                           #; (f:fpu) ft3  <-- 107.0
       0     2164        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 108, a3  = 109, taken, goto 0x80000708
                         M 0x8000070c fsgnj.d ft0, ft3, ft3          #; ft3  = 107.0, ft3  = 107.0
       0     2165        M                                           #; (f:fpu) ft0  <-- 107.0
       0     2166        M 0x80000708 fcvt.d.wu ft3, a2              #; ac1  = 108
       0     2167        M 0x80000710 addi    a2, a2, 1              #; a2  = 108, (wrb) a2  <-- 109
                         M                                           #; (f:fpu) ft3  <-- 108.0
       0     2168        M 0x80000714 bne     a2, a3, pc - 12        #; a2  = 109, a3  = 109, not taken
                         M 0x8000070c fsgnj.d ft0, ft3, ft3          #; ft3  = 108.0, ft3  = 108.0
       0     2169        M                                           #; (f:fpu) ft0  <-- 108.0
       0     2170        M 0x8000071c beqz    a1, pc + 1028          #; a1  = 1, not taken
                         M 0x80000718 csrrci  a2, ssr, 1             #; 
       0     2181        M 0x80000720 li      a2, 8                  #; (wrb) a2  <-- 8
       0     2182        M 0x80000724 li      a1, 11                 #; (wrb) a1  <-- 11
       0     2183        M 0x80000728 li      a3, 64                 #; (wrb) a3  <-- 64
       0     2184        M 0x8000072c li      a4, 192                #; (wrb) a4  <-- 192
       0     2193        M 0x80000730 scfgw   a1, a3                 #; a1  = 11, a3  = 64
       0     2194        M 0x80000734 scfgw   a2, a4                 #; a2  = 8, a4  = 192
       0     2195        M 0x80000738 li      a3, 96                 #; (wrb) a3  <-- 96
       0     2196        M 0x8000073c li      a4, 224                #; (wrb) a4  <-- 224
       0     2205        M 0x80000740 scfgw   a2, a3                 #; a2  = 8, a3  = 96
       0     2206        M 0x80000744 scfgw   a2, a4                 #; a2  = 8, a4  = 224
       0     2207        M 0x80000748 li      a3, 32                 #; (wrb) a3  <-- 32
       0     2208        M 0x8000074c scfgw   zero, a3               #; a3  = 32, (acc) ra  <-- 0x00d020ab
       0     2217        M 0x80000750 scfgwi  a0, 800                #; a0  = 0x00100000
       0     2219        M 0x80000754 csrrsi  a3, ssr, 1             #; 
       0     2220        M                                           #; (acc) gp  <-- 0x023071d3
       0     2221        M 0x80000758 fsgnj.d ft3, ft0, ft0          #; ft0  = 1.0, ft0  = 1.0
       0     2222        M                                           #; (f:fpu) ft3  <-- 1.0
       0     2223        M 0x8000075c fadd.d  ft3, ft0, ft3          #; ft0  = 2.0, ft3  = 1.0
       0     2226        M                                           #; (f:fpu) ft3  <-- 3.0
       0     2231        M 0x80000760 fadd.d  ft3, ft3, ft0          #; ft3  = 3.0, ft0  = 3.0
       0     2234        M                                           #; (f:fpu) ft3  <-- 6.0
       0     2235        M 0x80000764 fadd.d  ft3, ft3, ft0          #; ft3  = 6.0, ft0  = 4.0
       0     2238        M                                           #; (f:fpu) ft3  <-- 10.0
       0     2239        M 0x80000768 fadd.d  ft3, ft3, ft0          #; ft3  = 10.0, ft0  = 5.0
       0     2242        M                                           #; (f:fpu) ft3  <-- 15.0
       0     2243        M 0x8000076c fadd.d  ft3, ft3, ft0          #; ft3  = 15.0, ft0  = 6.0
       0     2246        M                                           #; (f:fpu) ft3  <-- 21.0
       0     2247        M 0x80000770 fadd.d  ft3, ft3, ft0          #; ft3  = 21.0, ft0  = 7.0
       0     2250        M                                           #; (f:fpu) ft3  <-- 28.0
       0     2251        M 0x80000774 fadd.d  ft3, ft3, ft0          #; ft3  = 28.0, ft0  = 8.0
       0     2254        M                                           #; (f:fpu) ft3  <-- 36.0
       0     2255        M 0x80000778 fadd.d  ft3, ft3, ft0          #; ft3  = 36.0, ft0  = 9.0
       0     2258        M                                           #; (f:fpu) ft3  <-- 45.0
       0     2259        M 0x8000077c fadd.d  ft3, ft3, ft0          #; ft3  = 45.0, ft0  = 10.0
       0     2262        M                                           #; (f:fpu) ft3  <-- 55.0
       0     2263        M 0x80000780 fadd.d  ft3, ft3, ft0          #; ft3  = 55.0, ft0  = 11.0
       0     2266        M                                           #; (f:fpu) ft3  <-- 66.0
       0     2267        M 0x80000784 fadd.d  ft3, ft3, ft0          #; ft3  = 66.0, ft0  = 12.0
       0     2270        M                                           #; (f:fpu) ft3  <-- 78.0
       0     2271        M 0x80000788 fadd.d  ft3, ft3, ft0          #; ft3  = 78.0, ft0  = 13.0
       0     2274        M                                           #; (f:fpu) ft3  <-- 91.0
       0     2275        M 0x8000078c fadd.d  ft3, ft3, ft0          #; ft3  = 91.0, ft0  = 14.0
       0     2278        M                                           #; (f:fpu) ft3  <-- 105.0
       0     2279        M 0x80000790 fadd.d  ft3, ft3, ft0          #; ft3  = 105.0, ft0  = 15.0
       0     2282        M                                           #; (f:fpu) ft3  <-- 120.0
       0     2283        M 0x80000794 fadd.d  ft3, ft3, ft0          #; ft3  = 120.0, ft0  = 16.0
       0     2286        M                                           #; (f:fpu) ft3  <-- 136.0
       0     2287        M 0x80000798 fadd.d  ft3, ft3, ft0          #; ft3  = 136.0, ft0  = 17.0
       0     2290        M                                           #; (f:fpu) ft3  <-- 153.0
       0     2291        M 0x8000079c fadd.d  ft3, ft3, ft0          #; ft3  = 153.0, ft0  = 18.0
       0     2294        M                                           #; (f:fpu) ft3  <-- 171.0
       0     2295        M 0x800007a0 fadd.d  ft3, ft3, ft0          #; ft3  = 171.0, ft0  = 19.0
       0     2298        M                                           #; (f:fpu) ft3  <-- 190.0
       0     2299        M 0x800007a4 fadd.d  ft3, ft3, ft0          #; ft3  = 190.0, ft0  = 20.0
       0     2302        M                                           #; (f:fpu) ft3  <-- 210.0
       0     2303        M 0x800007a8 fadd.d  ft3, ft3, ft0          #; ft3  = 210.0, ft0  = 21.0
       0     2306        M                                           #; (f:fpu) ft3  <-- 231.0
       0     2307        M 0x800007ac fadd.d  ft3, ft3, ft0          #; ft3  = 231.0, ft0  = 22.0
       0     2310        M                                           #; (f:fpu) ft3  <-- 253.0
       0     2311        M 0x800007b0 fadd.d  ft3, ft3, ft0          #; ft3  = 253.0, ft0  = 23.0
       0     2314        M                                           #; (f:fpu) ft3  <-- 276.0
       0     2315        M 0x800007b4 fadd.d  ft3, ft3, ft0          #; ft3  = 276.0, ft0  = 24.0
       0     2318        M                                           #; (f:fpu) ft3  <-- 300.0
       0     2319        M 0x800007b8 fadd.d  ft3, ft3, ft0          #; ft3  = 300.0, ft0  = 25.0
       0     2322        M                                           #; (f:fpu) ft3  <-- 325.0
       0     2323        M 0x800007bc fadd.d  ft3, ft3, ft0          #; ft3  = 325.0, ft0  = 26.0
       0     2326        M                                           #; (f:fpu) ft3  <-- 351.0
       0     2327        M 0x800007c0 fadd.d  ft3, ft3, ft0          #; ft3  = 351.0, ft0  = 27.0
       0     2330        M                                           #; (f:fpu) ft3  <-- 378.0
       0     2331        M 0x800007c4 fadd.d  ft3, ft3, ft0          #; ft3  = 378.0, ft0  = 28.0
       0     2334        M                                           #; (f:fpu) ft3  <-- 406.0
       0     2335        M 0x800007c8 fadd.d  ft3, ft3, ft0          #; ft3  = 406.0, ft0  = 29.0
       0     2338        M                                           #; (f:fpu) ft3  <-- 435.0
       0     2339        M 0x800007cc fadd.d  ft3, ft3, ft0          #; ft3  = 435.0, ft0  = 30.0
       0     2342        M                                           #; (f:fpu) ft3  <-- 465.0
       0     2343        M 0x800007d0 fadd.d  ft3, ft3, ft0          #; ft3  = 465.0, ft0  = 31.0
       0     2346        M                                           #; (f:fpu) ft3  <-- 496.0
       0     2347        M 0x800007d4 fadd.d  ft3, ft3, ft0          #; ft3  = 496.0, ft0  = 32.0
       0     2350        M                                           #; (f:fpu) ft3  <-- 528.0
       0     2351        M 0x800007d8 fadd.d  ft3, ft3, ft0          #; ft3  = 528.0, ft0  = 33.0
       0     2354        M                                           #; (f:fpu) ft3  <-- 561.0
       0     2355        M 0x800007dc fadd.d  ft3, ft3, ft0          #; ft3  = 561.0, ft0  = 34.0
       0     2358        M                                           #; (f:fpu) ft3  <-- 595.0
       0     2359        M 0x800007e0 fadd.d  ft3, ft3, ft0          #; ft3  = 595.0, ft0  = 35.0
       0     2362        M                                           #; (f:fpu) ft3  <-- 630.0
       0     2363        M 0x800007e4 fadd.d  ft3, ft3, ft0          #; ft3  = 630.0, ft0  = 36.0
       0     2366        M                                           #; (f:fpu) ft3  <-- 666.0
       0     2367        M 0x800007e8 fadd.d  ft3, ft3, ft0          #; ft3  = 666.0, ft0  = 37.0
       0     2370        M                                           #; (f:fpu) ft3  <-- 703.0
       0     2371        M 0x800007ec fadd.d  ft3, ft3, ft0          #; ft3  = 703.0, ft0  = 38.0
       0     2374        M                                           #; (f:fpu) ft3  <-- 741.0
       0     2375        M 0x800007f0 fadd.d  ft3, ft3, ft0          #; ft3  = 741.0, ft0  = 39.0
       0     2378        M                                           #; (f:fpu) ft3  <-- 780.0
       0     2379        M 0x800007f4 fadd.d  ft3, ft3, ft0          #; ft3  = 780.0, ft0  = 40.0
       0     2382        M                                           #; (f:fpu) ft3  <-- 820.0
       0     2383        M 0x800007f8 fadd.d  ft3, ft3, ft0          #; ft3  = 820.0, ft0  = 41.0
       0     2386        M                                           #; (f:fpu) ft3  <-- 861.0
       0     2387        M 0x800007fc fadd.d  ft3, ft3, ft0          #; ft3  = 861.0, ft0  = 42.0
       0     2390        M                                           #; (f:fpu) ft3  <-- 903.0
       0     2391        M 0x80000800 fadd.d  ft3, ft3, ft0          #; ft3  = 903.0, ft0  = 43.0
       0     2394        M                                           #; (f:fpu) ft3  <-- 946.0
       0     2395        M 0x80000804 fadd.d  ft3, ft3, ft0          #; ft3  = 946.0, ft0  = 44.0
       0     2398        M                                           #; (f:fpu) ft3  <-- 990.0
       0     2399        M 0x80000808 fadd.d  ft3, ft3, ft0          #; ft3  = 990.0, ft0  = 45.0
       0     2402        M                                           #; (f:fpu) ft3  <-- 1035.0
       0     2403        M 0x8000080c fadd.d  ft3, ft3, ft0          #; ft3  = 1035.0, ft0  = 46.0
       0     2406        M                                           #; (f:fpu) ft3  <-- 1081.0
       0     2407        M 0x80000810 fadd.d  ft3, ft3, ft0          #; ft3  = 1081.0, ft0  = 47.0
       0     2410        M                                           #; (f:fpu) ft3  <-- 1128.0
       0     2411        M 0x80000814 fadd.d  ft3, ft3, ft0          #; ft3  = 1128.0, ft0  = 48.0
       0     2414        M                                           #; (f:fpu) ft3  <-- 1176.0
       0     2415        M 0x80000818 fadd.d  ft3, ft3, ft0          #; ft3  = 1176.0, ft0  = 49.0
       0     2418        M                                           #; (f:fpu) ft3  <-- 1225.0
       0     2419        M 0x8000081c fadd.d  ft3, ft3, ft0          #; ft3  = 1225.0, ft0  = 50.0
       0     2422        M                                           #; (f:fpu) ft3  <-- 1275.0
       0     2423        M 0x80000820 fadd.d  ft3, ft3, ft0          #; ft3  = 1275.0, ft0  = 51.0
       0     2426        M                                           #; (f:fpu) ft3  <-- 1326.0
       0     2427        M 0x80000824 fadd.d  ft3, ft3, ft0          #; ft3  = 1326.0, ft0  = 52.0
       0     2430        M                                           #; (f:fpu) ft3  <-- 1378.0
       0     2431        M 0x80000828 fadd.d  ft3, ft3, ft0          #; ft3  = 1378.0, ft0  = 53.0
       0     2434        M                                           #; (f:fpu) ft3  <-- 1431.0
       0     2435        M 0x8000082c fadd.d  ft3, ft3, ft0          #; ft3  = 1431.0, ft0  = 54.0
       0     2438        M                                           #; (f:fpu) ft3  <-- 1485.0
       0     2439        M 0x80000830 fadd.d  ft3, ft3, ft0          #; ft3  = 1485.0, ft0  = 55.0
       0     2442        M                                           #; (f:fpu) ft3  <-- 1540.0
       0     2443        M 0x80000834 fadd.d  ft3, ft3, ft0          #; ft3  = 1540.0, ft0  = 56.0
       0     2446        M                                           #; (f:fpu) ft3  <-- 1596.0
       0     2447        M 0x80000838 fadd.d  ft3, ft3, ft0          #; ft3  = 1596.0, ft0  = 57.0
       0     2450        M                                           #; (f:fpu) ft3  <-- 1653.0
       0     2451        M 0x8000083c fadd.d  ft3, ft3, ft0          #; ft3  = 1653.0, ft0  = 58.0
       0     2454        M                                           #; (f:fpu) ft3  <-- 1711.0
       0     2455        M 0x80000840 fadd.d  ft3, ft3, ft0          #; ft3  = 1711.0, ft0  = 59.0
       0     2458        M                                           #; (f:fpu) ft3  <-- 1770.0
       0     2459        M 0x80000844 fadd.d  ft3, ft3, ft0          #; ft3  = 1770.0, ft0  = 60.0
       0     2462        M                                           #; (f:fpu) ft3  <-- 1830.0
       0     2463        M 0x80000848 fadd.d  ft3, ft3, ft0          #; ft3  = 1830.0, ft0  = 61.0
       0     2466        M                                           #; (f:fpu) ft3  <-- 1891.0
       0     2467        M 0x8000084c fadd.d  ft3, ft3, ft0          #; ft3  = 1891.0, ft0  = 62.0
       0     2470        M                                           #; (f:fpu) ft3  <-- 1953.0
       0     2471        M 0x80000850 fadd.d  ft3, ft3, ft0          #; ft3  = 1953.0, ft0  = 63.0
       0     2474        M                                           #; (f:fpu) ft3  <-- 2016.0
       0     2475        M 0x80000854 fadd.d  ft3, ft3, ft0          #; ft3  = 2016.0, ft0  = 64.0
       0     2478        M                                           #; (f:fpu) ft3  <-- 2080.0
       0     2479        M 0x80000858 fadd.d  ft3, ft3, ft0          #; ft3  = 2080.0, ft0  = 65.0
       0     2482        M                                           #; (f:fpu) ft3  <-- 2145.0
       0     2483        M 0x8000085c fadd.d  ft3, ft3, ft0          #; ft3  = 2145.0, ft0  = 66.0
       0     2486        M                                           #; (f:fpu) ft3  <-- 2211.0
       0     2487        M 0x80000860 fadd.d  ft3, ft3, ft0          #; ft3  = 2211.0, ft0  = 67.0
       0     2490        M                                           #; (f:fpu) ft3  <-- 2278.0
       0     2491        M 0x80000864 fadd.d  ft3, ft3, ft0          #; ft3  = 2278.0, ft0  = 68.0
       0     2494        M                                           #; (f:fpu) ft3  <-- 2346.0
       0     2495        M 0x80000868 fadd.d  ft3, ft3, ft0          #; ft3  = 2346.0, ft0  = 69.0
       0     2498        M                                           #; (f:fpu) ft3  <-- 2415.0
       0     2499        M 0x8000086c fadd.d  ft3, ft3, ft0          #; ft3  = 2415.0, ft0  = 70.0
       0     2502        M                                           #; (f:fpu) ft3  <-- 2485.0
       0     2503        M 0x80000870 fadd.d  ft3, ft3, ft0          #; ft3  = 2485.0, ft0  = 71.0
       0     2506        M                                           #; (f:fpu) ft3  <-- 2556.0
       0     2507        M 0x80000874 fadd.d  ft3, ft3, ft0          #; ft3  = 2556.0, ft0  = 72.0
       0     2510        M                                           #; (f:fpu) ft3  <-- 2628.0
       0     2511        M 0x80000878 fadd.d  ft3, ft3, ft0          #; ft3  = 2628.0, ft0  = 73.0
       0     2514        M                                           #; (f:fpu) ft3  <-- 2701.0
       0     2515        M 0x8000087c fadd.d  ft3, ft3, ft0          #; ft3  = 2701.0, ft0  = 74.0
       0     2518        M                                           #; (f:fpu) ft3  <-- 2775.0
       0     2519        M 0x80000880 fadd.d  ft3, ft3, ft0          #; ft3  = 2775.0, ft0  = 75.0
       0     2522        M                                           #; (f:fpu) ft3  <-- 2850.0
       0     2523        M 0x80000884 fadd.d  ft3, ft3, ft0          #; ft3  = 2850.0, ft0  = 76.0
       0     2526        M                                           #; (f:fpu) ft3  <-- 2926.0
       0     2527        M 0x80000888 fadd.d  ft3, ft3, ft0          #; ft3  = 2926.0, ft0  = 77.0
       0     2530        M                                           #; (f:fpu) ft3  <-- 3003.0
       0     2531        M 0x8000088c fadd.d  ft3, ft3, ft0          #; ft3  = 3003.0, ft0  = 78.0
       0     2534        M                                           #; (f:fpu) ft3  <-- 3081.0
       0     2535        M 0x80000890 fadd.d  ft3, ft3, ft0          #; ft3  = 3081.0, ft0  = 79.0
       0     2538        M                                           #; (f:fpu) ft3  <-- 3160.0
       0     2539        M 0x80000894 fadd.d  ft3, ft3, ft0          #; ft3  = 3160.0, ft0  = 80.0
       0     2542        M                                           #; (f:fpu) ft3  <-- 3240.0
       0     2543        M 0x80000898 fadd.d  ft3, ft3, ft0          #; ft3  = 3240.0, ft0  = 81.0
       0     2546        M                                           #; (f:fpu) ft3  <-- 3321.0
       0     2547        M 0x8000089c fadd.d  ft3, ft3, ft0          #; ft3  = 3321.0, ft0  = 82.0
       0     2550        M                                           #; (f:fpu) ft3  <-- 3403.0
       0     2551        M 0x800008a0 fadd.d  ft3, ft3, ft0          #; ft3  = 3403.0, ft0  = 83.0
       0     2554        M                                           #; (f:fpu) ft3  <-- 3486.0
       0     2555        M 0x800008a4 fadd.d  ft3, ft3, ft0          #; ft3  = 3486.0, ft0  = 84.0
       0     2558        M                                           #; (f:fpu) ft3  <-- 3570.0
       0     2559        M 0x800008a8 fadd.d  ft3, ft3, ft0          #; ft3  = 3570.0, ft0  = 85.0
       0     2562        M                                           #; (f:fpu) ft3  <-- 3655.0
       0     2563        M 0x800008ac fadd.d  ft3, ft3, ft0          #; ft3  = 3655.0, ft0  = 86.0
       0     2566        M                                           #; (f:fpu) ft3  <-- 3741.0
       0     2567        M 0x800008b0 fadd.d  ft3, ft3, ft0          #; ft3  = 3741.0, ft0  = 87.0
       0     2570        M                                           #; (f:fpu) ft3  <-- 3828.0
       0     2571        M 0x800008b4 fadd.d  ft3, ft3, ft0          #; ft3  = 3828.0, ft0  = 88.0
       0     2574        M                                           #; (f:fpu) ft3  <-- 3916.0
       0     2575        M 0x800008b8 fadd.d  ft3, ft3, ft0          #; ft3  = 3916.0, ft0  = 89.0
       0     2578        M                                           #; (f:fpu) ft3  <-- 4005.0
       0     2579        M 0x800008bc fadd.d  ft3, ft3, ft0          #; ft3  = 4005.0, ft0  = 90.0
       0     2582        M                                           #; (f:fpu) ft3  <-- 4095.0
       0     2583        M 0x800008c0 fadd.d  ft3, ft3, ft0          #; ft3  = 4095.0, ft0  = 91.0
       0     2586        M 0x8000090c li      a3, 96                 #; (wrb) a3  <-- 96
                         M                                           #; (f:fpu) ft3  <-- 4186.0
       0     2587        M 0x80000910 li      a4, 64                 #; (wrb) a4  <-- 64
                         M 0x800008c4 fadd.d  ft3, ft3, ft0          #; ft3  = 4186.0, ft0  = 92.0
       0     2588        M 0x80000914 li      a5, 192                #; (wrb) a5  <-- 192
       0     2589        M 0x80000918 scfgw   a2, a4                 #; a2  = 8, a4  = 64
       0     2590        M                                           #; (f:fpu) ft3  <-- 4278.0
       0     2591        M 0x800008c8 fadd.d  ft3, ft3, ft0          #; ft3  = 4278.0, ft0  = 93.0
       0     2594        M                                           #; (f:fpu) ft3  <-- 4371.0
       0     2595        M 0x800008cc fadd.d  ft3, ft3, ft0          #; ft3  = 4371.0, ft0  = 94.0
       0     2598        M                                           #; (f:fpu) ft3  <-- 4465.0
       0     2599        M 0x800008d0 fadd.d  ft3, ft3, ft0          #; ft3  = 4465.0, ft0  = 95.0
       0     2602        M                                           #; (f:fpu) ft3  <-- 4560.0
       0     2603        M 0x800008d4 fadd.d  ft3, ft3, ft0          #; ft3  = 4560.0, ft0  = 96.0
       0     2606        M                                           #; (f:fpu) ft3  <-- 4656.0
       0     2607        M 0x800008d8 fadd.d  ft3, ft3, ft0          #; ft3  = 4656.0, ft0  = 97.0
       0     2610        M                                           #; (f:fpu) ft3  <-- 4753.0
       0     2611        M 0x800008dc fadd.d  ft3, ft3, ft0          #; ft3  = 4753.0, ft0  = 98.0
       0     2614        M                                           #; (f:fpu) ft3  <-- 4851.0
       0     2615        M 0x800008e0 fadd.d  ft3, ft3, ft0          #; ft3  = 4851.0, ft0  = 99.0
       0     2618        M                                           #; (f:fpu) ft3  <-- 4950.0
       0     2619        M 0x800008e4 fadd.d  ft3, ft3, ft0          #; ft3  = 4950.0, ft0  = 100.0
       0     2622        M                                           #; (f:fpu) ft3  <-- 5050.0
       0     2623        M 0x800008e8 fadd.d  ft3, ft3, ft0          #; ft3  = 5050.0, ft0  = 101.0
       0     2626        M                                           #; (f:fpu) ft3  <-- 5151.0
       0     2627        M 0x800008ec fadd.d  ft3, ft3, ft0          #; ft3  = 5151.0, ft0  = 102.0
       0     2630        M                                           #; (f:fpu) ft3  <-- 5253.0
       0     2631        M 0x800008f0 fadd.d  ft3, ft3, ft0          #; ft3  = 5253.0, ft0  = 103.0
       0     2634        M                                           #; (f:fpu) ft3  <-- 5356.0
       0     2635        M 0x800008f4 fadd.d  ft3, ft3, ft0          #; ft3  = 5356.0, ft0  = 104.0
       0     2638        M                                           #; (f:fpu) ft3  <-- 5460.0
       0     2639        M 0x800008f8 fadd.d  ft3, ft3, ft0          #; ft3  = 5460.0, ft0  = 105.0
       0     2642        M                                           #; (f:fpu) ft3  <-- 5565.0
       0     2643        M 0x800008fc fadd.d  ft3, ft3, ft0          #; ft3  = 5565.0, ft0  = 106.0
       0     2646        M                                           #; (f:fpu) ft3  <-- 5671.0
       0     2647        M 0x80000900 fadd.d  ft3, ft3, ft0          #; ft3  = 5671.0, ft0  = 107.0
       0     2648        M 0x80000904 fsgnj.d ft4, ft0, ft0          #; ft0  = 108.0, ft0  = 108.0
       0     2649        M 0x80000908 csrrci  a3, ssr, 1             #; (f:fpu) ft4  <-- 108.0
       0     2650        M 0x8000091c scfgw   a3, a5                 #; a3  = 96, a5  = 192
                         M                                           #; (f:fpu) ft3  <-- 5778.0
       0     2651        M 0x80000920 li      a2, -760               #; (wrb) a2  <-- -760
       0     2652        M 0x80000924 li      a3, 96                 #; (wrb) a3  <-- 96
       0     2653        M 0x80000928 li      a4, 224                #; (wrb) a4  <-- 224
       0     2654        M 0x8000092c scfgw   a1, a3                 #; a1  = 11, a3  = 96, (acc) ra  <-- 0x00d5a0ab
       0     2663        M 0x80000930 scfgw   a2, a4                 #; a2  = -760, a4  = 224
       0     2664        M 0x80000934 li      a1, 32                 #; (wrb) a1  <-- 32
       0     2665        M 0x80000938 scfgw   zero, a1               #; a1  = 32
       0     2666        M 0x8000093c scfgwi  a0, 800                #; a0  = 0x00100000
       0     2676        M 0x80000940 csrrsi  a1, ssr, 1             #; 
       0     2678        M 0x80000944 fsgnj.d ft5, ft0, ft0          #; ft0  = 1.0, ft0  = 1.0
       0     2679        M 0x80000948 fadd.d  ft3, ft3, ft4          #; ft3  = 5778.0, ft4  = 108.0, (f:fpu) ft5  <-- 1.0
       0     2680        M 0x8000094c fadd.d  ft4, ft0, ft5          #; ft0  = 13.0, ft5  = 1.0
       0     2682        M                                           #; (f:fpu) ft3  <-- 5886.0
       0     2683        M                                           #; (f:fpu) ft4  <-- 14.0
       0     2689        M 0x80000950 fadd.d  ft4, ft4, ft0          #; ft4  = 14.0, ft0  = 25.0
       0     2692        M                                           #; (f:fpu) ft4  <-- 39.0
       0     2693        M 0x80000954 fadd.d  ft4, ft4, ft0          #; ft4  = 39.0, ft0  = 37.0
       0     2696        M                                           #; (f:fpu) ft4  <-- 76.0
       0     2697        M 0x80000958 fadd.d  ft4, ft4, ft0          #; ft4  = 76.0, ft0  = 49.0
       0     2700        M                                           #; (f:fpu) ft4  <-- 125.0
       0     2701        M 0x8000095c fadd.d  ft4, ft4, ft0          #; ft4  = 125.0, ft0  = 61.0
       0     2704        M                                           #; (f:fpu) ft4  <-- 186.0
       0     2705        M 0x80000960 fadd.d  ft4, ft4, ft0          #; ft4  = 186.0, ft0  = 73.0
       0     2708        M                                           #; (f:fpu) ft4  <-- 259.0
       0     2709        M 0x80000964 fadd.d  ft4, ft4, ft0          #; ft4  = 259.0, ft0  = 85.0
       0     2712        M                                           #; (f:fpu) ft4  <-- 344.0
       0     2713        M 0x80000968 fadd.d  ft4, ft4, ft0          #; ft4  = 344.0, ft0  = 97.0
       0     2716        M                                           #; (f:fpu) ft4  <-- 441.0
       0     2717        M 0x8000096c fadd.d  ft4, ft4, ft0          #; ft4  = 441.0, ft0  = 2.0
       0     2720        M                                           #; (f:fpu) ft4  <-- 443.0
       0     2721        M 0x80000970 fadd.d  ft4, ft4, ft0          #; ft4  = 443.0, ft0  = 14.0
       0     2724        M                                           #; (f:fpu) ft4  <-- 457.0
       0     2725        M 0x80000974 fadd.d  ft4, ft4, ft0          #; ft4  = 457.0, ft0  = 26.0
       0     2728        M                                           #; (f:fpu) ft4  <-- 483.0
       0     2729        M 0x80000978 fadd.d  ft4, ft4, ft0          #; ft4  = 483.0, ft0  = 38.0
       0     2732        M                                           #; (f:fpu) ft4  <-- 521.0
       0     2733        M 0x8000097c fadd.d  ft4, ft4, ft0          #; ft4  = 521.0, ft0  = 50.0
       0     2736        M                                           #; (f:fpu) ft4  <-- 571.0
       0     2737        M 0x80000980 fadd.d  ft4, ft4, ft0          #; ft4  = 571.0, ft0  = 62.0
       0     2740        M                                           #; (f:fpu) ft4  <-- 633.0
       0     2741        M 0x80000984 fadd.d  ft4, ft4, ft0          #; ft4  = 633.0, ft0  = 74.0
       0     2744        M                                           #; (f:fpu) ft4  <-- 707.0
       0     2745        M 0x80000988 fadd.d  ft4, ft4, ft0          #; ft4  = 707.0, ft0  = 86.0
       0     2748        M                                           #; (f:fpu) ft4  <-- 793.0
       0     2749        M 0x8000098c fadd.d  ft4, ft4, ft0          #; ft4  = 793.0, ft0  = 98.0
       0     2752        M                                           #; (f:fpu) ft4  <-- 891.0
       0     2753        M 0x80000990 fadd.d  ft4, ft4, ft0          #; ft4  = 891.0, ft0  = 3.0
       0     2756        M                                           #; (f:fpu) ft4  <-- 894.0
       0     2757        M 0x80000994 fadd.d  ft4, ft4, ft0          #; ft4  = 894.0, ft0  = 15.0
       0     2760        M                                           #; (f:fpu) ft4  <-- 909.0
       0     2761        M 0x80000998 fadd.d  ft4, ft4, ft0          #; ft4  = 909.0, ft0  = 27.0
       0     2764        M                                           #; (f:fpu) ft4  <-- 936.0
       0     2765        M 0x8000099c fadd.d  ft4, ft4, ft0          #; ft4  = 936.0, ft0  = 39.0
       0     2768        M                                           #; (f:fpu) ft4  <-- 975.0
       0     2769        M 0x800009a0 fadd.d  ft4, ft4, ft0          #; ft4  = 975.0, ft0  = 51.0
       0     2772        M                                           #; (f:fpu) ft4  <-- 1026.0
       0     2773        M 0x800009a4 fadd.d  ft4, ft4, ft0          #; ft4  = 1026.0, ft0  = 63.0
       0     2776        M                                           #; (f:fpu) ft4  <-- 1089.0
       0     2777        M 0x800009a8 fadd.d  ft4, ft4, ft0          #; ft4  = 1089.0, ft0  = 75.0
       0     2780        M                                           #; (f:fpu) ft4  <-- 1164.0
       0     2781        M 0x800009ac fadd.d  ft4, ft4, ft0          #; ft4  = 1164.0, ft0  = 87.0
       0     2784        M                                           #; (f:fpu) ft4  <-- 1251.0
       0     2785        M 0x800009b0 fadd.d  ft4, ft4, ft0          #; ft4  = 1251.0, ft0  = 99.0
       0     2788        M                                           #; (f:fpu) ft4  <-- 1350.0
       0     2789        M 0x800009b4 fadd.d  ft4, ft4, ft0          #; ft4  = 1350.0, ft0  = 4.0
       0     2792        M                                           #; (f:fpu) ft4  <-- 1354.0
       0     2793        M 0x800009b8 fadd.d  ft4, ft4, ft0          #; ft4  = 1354.0, ft0  = 16.0
       0     2796        M                                           #; (f:fpu) ft4  <-- 1370.0
       0     2797        M 0x800009bc fadd.d  ft4, ft4, ft0          #; ft4  = 1370.0, ft0  = 28.0
       0     2800        M                                           #; (f:fpu) ft4  <-- 1398.0
       0     2801        M 0x800009c0 fadd.d  ft4, ft4, ft0          #; ft4  = 1398.0, ft0  = 40.0
       0     2804        M                                           #; (f:fpu) ft4  <-- 1438.0
       0     2805        M 0x800009c4 fadd.d  ft4, ft4, ft0          #; ft4  = 1438.0, ft0  = 52.0
       0     2808        M                                           #; (f:fpu) ft4  <-- 1490.0
       0     2809        M 0x800009c8 fadd.d  ft4, ft4, ft0          #; ft4  = 1490.0, ft0  = 64.0
       0     2812        M                                           #; (f:fpu) ft4  <-- 1554.0
       0     2813        M 0x800009cc fadd.d  ft4, ft4, ft0          #; ft4  = 1554.0, ft0  = 76.0
       0     2816        M                                           #; (f:fpu) ft4  <-- 1630.0
       0     2817        M 0x800009d0 fadd.d  ft4, ft4, ft0          #; ft4  = 1630.0, ft0  = 88.0
       0     2820        M                                           #; (f:fpu) ft4  <-- 1718.0
       0     2821        M 0x800009d4 fadd.d  ft4, ft4, ft0          #; ft4  = 1718.0, ft0  = 100.0
       0     2824        M                                           #; (f:fpu) ft4  <-- 1818.0
       0     2825        M 0x800009d8 fadd.d  ft4, ft4, ft0          #; ft4  = 1818.0, ft0  = 5.0
       0     2828        M                                           #; (f:fpu) ft4  <-- 1823.0
       0     2829        M 0x800009dc fadd.d  ft4, ft4, ft0          #; ft4  = 1823.0, ft0  = 17.0
       0     2832        M                                           #; (f:fpu) ft4  <-- 1840.0
       0     2833        M 0x800009e0 fadd.d  ft4, ft4, ft0          #; ft4  = 1840.0, ft0  = 29.0
       0     2836        M                                           #; (f:fpu) ft4  <-- 1869.0
       0     2837        M 0x800009e4 fadd.d  ft4, ft4, ft0          #; ft4  = 1869.0, ft0  = 41.0
       0     2840        M                                           #; (f:fpu) ft4  <-- 1910.0
       0     2841        M 0x800009e8 fadd.d  ft4, ft4, ft0          #; ft4  = 1910.0, ft0  = 53.0
       0     2844        M                                           #; (f:fpu) ft4  <-- 1963.0
       0     2845        M 0x800009ec fadd.d  ft4, ft4, ft0          #; ft4  = 1963.0, ft0  = 65.0
       0     2848        M                                           #; (f:fpu) ft4  <-- 2028.0
       0     2849        M 0x800009f0 fadd.d  ft4, ft4, ft0          #; ft4  = 2028.0, ft0  = 77.0
       0     2852        M                                           #; (f:fpu) ft4  <-- 2105.0
       0     2853        M 0x800009f4 fadd.d  ft4, ft4, ft0          #; ft4  = 2105.0, ft0  = 89.0
       0     2856        M                                           #; (f:fpu) ft4  <-- 2194.0
       0     2857        M 0x800009f8 fadd.d  ft4, ft4, ft0          #; ft4  = 2194.0, ft0  = 101.0
       0     2860        M                                           #; (f:fpu) ft4  <-- 2295.0
       0     2861        M 0x800009fc fadd.d  ft4, ft4, ft0          #; ft4  = 2295.0, ft0  = 6.0
       0     2864        M                                           #; (f:fpu) ft4  <-- 2301.0
       0     2865        M 0x80000a00 fadd.d  ft4, ft4, ft0          #; ft4  = 2301.0, ft0  = 18.0
       0     2868        M                                           #; (f:fpu) ft4  <-- 2319.0
       0     2869        M 0x80000a04 fadd.d  ft4, ft4, ft0          #; ft4  = 2319.0, ft0  = 30.0
       0     2872        M                                           #; (f:fpu) ft4  <-- 2349.0
       0     2873        M 0x80000a08 fadd.d  ft4, ft4, ft0          #; ft4  = 2349.0, ft0  = 42.0
       0     2876        M                                           #; (f:fpu) ft4  <-- 2391.0
       0     2877        M 0x80000a0c fadd.d  ft4, ft4, ft0          #; ft4  = 2391.0, ft0  = 54.0
       0     2880        M                                           #; (f:fpu) ft4  <-- 2445.0
       0     2881        M 0x80000a10 fadd.d  ft4, ft4, ft0          #; ft4  = 2445.0, ft0  = 66.0
       0     2884        M                                           #; (f:fpu) ft4  <-- 2511.0
       0     2885        M 0x80000a14 fadd.d  ft4, ft4, ft0          #; ft4  = 2511.0, ft0  = 78.0
       0     2888        M                                           #; (f:fpu) ft4  <-- 2589.0
       0     2889        M 0x80000a18 fadd.d  ft4, ft4, ft0          #; ft4  = 2589.0, ft0  = 90.0
       0     2892        M                                           #; (f:fpu) ft4  <-- 2679.0
       0     2893        M 0x80000a1c fadd.d  ft4, ft4, ft0          #; ft4  = 2679.0, ft0  = 102.0
       0     2896        M                                           #; (f:fpu) ft4  <-- 2781.0
       0     2897        M 0x80000a20 fadd.d  ft4, ft4, ft0          #; ft4  = 2781.0, ft0  = 7.0
       0     2900        M                                           #; (f:fpu) ft4  <-- 2788.0
       0     2901        M 0x80000a24 fadd.d  ft4, ft4, ft0          #; ft4  = 2788.0, ft0  = 19.0
       0     2904        M                                           #; (f:fpu) ft4  <-- 2807.0
       0     2905        M 0x80000a28 fadd.d  ft4, ft4, ft0          #; ft4  = 2807.0, ft0  = 31.0
       0     2908        M                                           #; (f:fpu) ft4  <-- 2838.0
       0     2909        M 0x80000a2c fadd.d  ft4, ft4, ft0          #; ft4  = 2838.0, ft0  = 43.0
       0     2912        M                                           #; (f:fpu) ft4  <-- 2881.0
       0     2913        M 0x80000a30 fadd.d  ft4, ft4, ft0          #; ft4  = 2881.0, ft0  = 55.0
       0     2916        M                                           #; (f:fpu) ft4  <-- 2936.0
       0     2917        M 0x80000a34 fadd.d  ft4, ft4, ft0          #; ft4  = 2936.0, ft0  = 67.0
       0     2920        M                                           #; (f:fpu) ft4  <-- 3003.0
       0     2921        M 0x80000a38 fadd.d  ft4, ft4, ft0          #; ft4  = 3003.0, ft0  = 79.0
       0     2924        M                                           #; (f:fpu) ft4  <-- 3082.0
       0     2925        M 0x80000a3c fadd.d  ft4, ft4, ft0          #; ft4  = 3082.0, ft0  = 91.0
       0     2928        M                                           #; (f:fpu) ft4  <-- 3173.0
       0     2929        M 0x80000a40 fadd.d  ft4, ft4, ft0          #; ft4  = 3173.0, ft0  = 103.0
       0     2932        M                                           #; (f:fpu) ft4  <-- 3276.0
       0     2933        M 0x80000a44 fadd.d  ft4, ft4, ft0          #; ft4  = 3276.0, ft0  = 8.0
       0     2936        M                                           #; (f:fpu) ft4  <-- 3284.0
       0     2937        M 0x80000a48 fadd.d  ft4, ft4, ft0          #; ft4  = 3284.0, ft0  = 20.0
       0     2940        M                                           #; (f:fpu) ft4  <-- 3304.0
       0     2941        M 0x80000a4c fadd.d  ft4, ft4, ft0          #; ft4  = 3304.0, ft0  = 32.0
       0     2944        M                                           #; (f:fpu) ft4  <-- 3336.0
       0     2945        M 0x80000a50 fadd.d  ft4, ft4, ft0          #; ft4  = 3336.0, ft0  = 44.0
       0     2948        M                                           #; (f:fpu) ft4  <-- 3380.0
       0     2949        M 0x80000a54 fadd.d  ft4, ft4, ft0          #; ft4  = 3380.0, ft0  = 56.0
       0     2952        M                                           #; (f:fpu) ft4  <-- 3436.0
       0     2953        M 0x80000a58 fadd.d  ft4, ft4, ft0          #; ft4  = 3436.0, ft0  = 68.0
       0     2956        M                                           #; (f:fpu) ft4  <-- 3504.0
       0     2957        M 0x80000a5c fadd.d  ft4, ft4, ft0          #; ft4  = 3504.0, ft0  = 80.0
       0     2960        M                                           #; (f:fpu) ft4  <-- 3584.0
       0     2961        M 0x80000a60 fadd.d  ft4, ft4, ft0          #; ft4  = 3584.0, ft0  = 92.0
       0     2964        M                                           #; (f:fpu) ft4  <-- 3676.0
       0     2965        M 0x80000a64 fadd.d  ft4, ft4, ft0          #; ft4  = 3676.0, ft0  = 104.0
       0     2968        M                                           #; (f:fpu) ft4  <-- 3780.0
       0     2969        M 0x80000a68 fadd.d  ft4, ft4, ft0          #; ft4  = 3780.0, ft0  = 9.0
       0     2972        M                                           #; (f:fpu) ft4  <-- 3789.0
       0     2973        M 0x80000a6c fadd.d  ft4, ft4, ft0          #; ft4  = 3789.0, ft0  = 21.0
       0     2976        M                                           #; (f:fpu) ft4  <-- 3810.0
       0     2977        M 0x80000a70 fadd.d  ft4, ft4, ft0          #; ft4  = 3810.0, ft0  = 33.0
       0     2980        M                                           #; (f:fpu) ft4  <-- 3843.0
       0     2981        M 0x80000a74 fadd.d  ft4, ft4, ft0          #; ft4  = 3843.0, ft0  = 45.0
       0     2984        M                                           #; (f:fpu) ft4  <-- 3888.0
       0     2985        M 0x80000a78 fadd.d  ft4, ft4, ft0          #; ft4  = 3888.0, ft0  = 57.0
       0     2988        M                                           #; (f:fpu) ft4  <-- 3945.0
       0     2989        M 0x80000a7c fadd.d  ft4, ft4, ft0          #; ft4  = 3945.0, ft0  = 69.0
       0     2992        M                                           #; (f:fpu) ft4  <-- 4014.0
       0     2993        M 0x80000a80 fadd.d  ft4, ft4, ft0          #; ft4  = 4014.0, ft0  = 81.0
       0     2996        M                                           #; (f:fpu) ft4  <-- 4095.0
       0     2997        M 0x80000a84 fadd.d  ft4, ft4, ft0          #; ft4  = 4095.0, ft0  = 93.0
       0     3000        M                                           #; (f:fpu) ft4  <-- 4188.0
       0     3001        M 0x80000a88 fadd.d  ft4, ft4, ft0          #; ft4  = 4188.0, ft0  = 105.0
       0     3004        M                                           #; (f:fpu) ft4  <-- 4293.0
       0     3005        M 0x80000a8c fadd.d  ft4, ft4, ft0          #; ft4  = 4293.0, ft0  = 10.0
       0     3008        M                                           #; (f:fpu) ft4  <-- 4303.0
       0     3009        M 0x80000a90 fadd.d  ft4, ft4, ft0          #; ft4  = 4303.0, ft0  = 22.0
       0     3012        M                                           #; (f:fpu) ft4  <-- 4325.0
       0     3013        M 0x80000a94 fadd.d  ft4, ft4, ft0          #; ft4  = 4325.0, ft0  = 34.0
       0     3016        M                                           #; (f:fpu) ft4  <-- 4359.0
       0     3017        M 0x80000a98 fadd.d  ft4, ft4, ft0          #; ft4  = 4359.0, ft0  = 46.0
       0     3020        M                                           #; (f:fpu) ft4  <-- 4405.0
       0     3021        M 0x80000a9c fadd.d  ft4, ft4, ft0          #; ft4  = 4405.0, ft0  = 58.0
       0     3024        M                                           #; (f:fpu) ft4  <-- 4463.0
       0     3025        M 0x80000aa0 fadd.d  ft4, ft4, ft0          #; ft4  = 4463.0, ft0  = 70.0
       0     3028        M                                           #; (f:fpu) ft4  <-- 4533.0
       0     3029        M 0x80000aa4 fadd.d  ft4, ft4, ft0          #; ft4  = 4533.0, ft0  = 82.0
       0     3032        M                                           #; (f:fpu) ft4  <-- 4615.0
       0     3033        M 0x80000aa8 fadd.d  ft4, ft4, ft0          #; ft4  = 4615.0, ft0  = 94.0
       0     3036        M                                           #; (f:fpu) ft4  <-- 4709.0
       0     3037        M 0x80000aac fadd.d  ft4, ft4, ft0          #; ft4  = 4709.0, ft0  = 106.0
       0     3040        M                                           #; (f:fpu) ft4  <-- 4815.0
       0     3041        M 0x80000ab0 fadd.d  ft4, ft4, ft0          #; ft4  = 4815.0, ft0  = 11.0
       0     3044        M 0x80000afc j       pc + 0x678             #; goto 0x80001174
                         M                                           #; (f:fpu) ft4  <-- 4826.0
       0     3045        M 0x80001174 addi    a1, a0, 856            #; a0  = 0x00100000, (wrb) a1  <-- 0x00100358
                         M 0x80000ab4 fadd.d  ft4, ft4, ft0          #; ft4  = 4826.0, ft0  = 23.0
       0     3046        M 0x80001178 srli    a2, a0, 20             #; a0  = 0x00100000, (wrb) a2  <-- 1
       0     3047        M 0x8000117c snez    a2, a2                 #; a2  = 1, (wrb) a2  <-- 1
       0     3048        M                                           #; (f:fpu) ft4  <-- 4849.0
       0     3049        M 0x80000ab8 fadd.d  ft4, ft4, ft0          #; ft4  = 4849.0, ft0  = 35.0
       0     3052        M                                           #; (f:fpu) ft4  <-- 4884.0
       0     3053        M 0x80000abc fadd.d  ft4, ft4, ft0          #; ft4  = 4884.0, ft0  = 47.0
       0     3056        M                                           #; (f:fpu) ft4  <-- 4931.0
       0     3057        M 0x80001180 lui     a3, 0x120              #; (wrb) a3  <-- 0x00120000
                         M 0x80000ac0 fadd.d  ft4, ft4, ft0          #; ft4  = 4931.0, ft0  = 59.0
       0     3058        M 0x80001184 addi    a3, a3, 1              #; a3  = 0x00120000, (wrb) a3  <-- 0x00120001
       0     3059        M 0x80001188 sltu    a1, a1, a3             #; a1  = 0x00100358, a3  = 0x00120001, (wrb) a1  <-- 1
       0     3060        M 0x8000118c and     a1, a2, a1             #; a2  = 1, a1  = 1, (wrb) a1  <-- 1
                         M                                           #; (f:fpu) ft4  <-- 4990.0
       0     3061        M 0x80000ac4 fadd.d  ft4, ft4, ft0          #; ft4  = 4990.0, ft0  = 71.0
       0     3064        M                                           #; (f:fpu) ft4  <-- 5061.0
       0     3065        M 0x80000ac8 fadd.d  ft4, ft4, ft0          #; ft4  = 5061.0, ft0  = 83.0
       0     3068        M                                           #; (f:fpu) ft4  <-- 5144.0
       0     3069        M 0x80001190 beqz    a1, pc + 508           #; a1  = 1, not taken
                         M 0x80000acc fadd.d  ft4, ft4, ft0          #; ft4  = 5144.0, ft0  = 95.0
       0     3070        M 0x80001194 addi    a0, a0, 768            #; a0  = 0x00100000, (wrb) a0  <-- 0x00100300
       0     3071        M 0x80001198 li      a1, 8                  #; (wrb) a1  <-- 8
       0     3072        M 0x8000119c li      a2, 11                 #; (wrb) a2  <-- 11
                         M                                           #; (f:fpu) ft4  <-- 5239.0
       0     3073        M 0x80000ad0 fadd.d  ft4, ft4, ft0          #; ft4  = 5239.0, ft0  = 107.0
       0     3076        M                                           #; (f:fpu) ft4  <-- 5346.0
       0     3077        M 0x80000ad4 fadd.d  ft4, ft4, ft0          #; ft4  = 5346.0, ft0  = 12.0
       0     3080        M                                           #; (f:fpu) ft4  <-- 5358.0
       0     3081        M 0x800011a0 li      a3, 64                 #; (wrb) a3  <-- 64
                         M 0x80000ad8 fadd.d  ft4, ft4, ft0          #; ft4  = 5358.0, ft0  = 24.0
       0     3082        M 0x800011a4 li      a4, 192                #; (wrb) a4  <-- 192
       0     3083        M 0x800011a8 scfgw   a2, a3                 #; a2  = 11, a3  = 64
       0     3084        M                                           #; (f:fpu) ft4  <-- 5382.0
       0     3085        M 0x80000adc fadd.d  ft4, ft4, ft0          #; ft4  = 5382.0, ft0  = 36.0
       0     3088        M                                           #; (f:fpu) ft4  <-- 5418.0
       0     3089        M 0x80000ae0 fadd.d  ft4, ft4, ft0          #; ft4  = 5418.0, ft0  = 48.0
       0     3092        M                                           #; (f:fpu) ft4  <-- 5466.0
       0     3093        M 0x80000ae4 fadd.d  ft4, ft4, ft0          #; ft4  = 5466.0, ft0  = 60.0
       0     3096        M                                           #; (f:fpu) ft4  <-- 5526.0
       0     3097        M 0x80000ae8 fadd.d  ft4, ft4, ft0          #; ft4  = 5526.0, ft0  = 72.0
       0     3100        M                                           #; (f:fpu) ft4  <-- 5598.0
       0     3101        M 0x80000aec fadd.d  ft4, ft4, ft0          #; ft4  = 5598.0, ft0  = 84.0
       0     3104        M                                           #; (f:fpu) ft4  <-- 5682.0
       0     3105        M 0x80000af0 fadd.d  ft4, ft4, ft0          #; ft4  = 5682.0, ft0  = 96.0
       0     3108        M                                           #; (f:fpu) ft4  <-- 5778.0
       0     3109        M 0x80000af4 fadd.d  ft4, ft4, ft0          #; ft4  = 5778.0, ft0  = 108.0
       0     3110        M 0x80000af8 csrrci  a1, ssr, 1             #; 
       0     3111        M 0x800011ac scfgw   a1, a4                 #; a1  = 8, a4  = 192
       0     3112        M 0x800011b0 li      a2, -184               #; (wrb) a2  <-- -184
                         M                                           #; (f:fpu) ft4  <-- 5886.0
       0     3113        M 0x800011b4 li      a3, 96                 #; (wrb) a3  <-- 96
       0     3114        M 0x800011b8 li      a4, 224                #; (wrb) a4  <-- 224
       0     3115        M 0x800011bc scfgw   a1, a3                 #; a1  = 8, a3  = 96, (acc) ra  <-- 0x00d5a0ab
       0     3124        M 0x800011c0 scfgw   a2, a4                 #; a2  = -184, a4  = 224
       0     3125        M 0x800011c4 li      a1, 32                 #; (wrb) a1  <-- 32
       0     3126        M 0x800011c8 scfgw   zero, a1               #; a1  = 32
       0     3127        M 0x800011cc scfgwi  a0, 800                #; a0  = 0x00100300
       0     3137        M 0x800011d0 csrrsi  a0, ssr, 1             #; 
       0     3139        M 0x800011d4 fsgnj.d ft5, ft0, ft0          #; ft0  = 97.0, ft0  = 97.0
       0     3140        M                                           #; (f:fpu) ft5  <-- 97.0
       0     3141        M 0x800011d8 fadd.d  ft5, ft0, ft5          #; ft0  = 98.0, ft5  = 97.0
       0     3144        M                                           #; (f:fpu) ft5  <-- 195.0
       0     3145        M 0x800011dc fadd.d  ft5, ft5, ft0          #; ft5  = 195.0, ft0  = 99.0
       0     3148        M                                           #; (f:fpu) ft5  <-- 294.0
       0     3150        M 0x800011e0 fadd.d  ft5, ft5, ft0          #; ft5  = 294.0, ft0  = 100.0
       0     3153        M                                           #; (f:fpu) ft5  <-- 394.0
       0     3154        M 0x800011e4 fadd.d  ft5, ft5, ft0          #; ft5  = 394.0, ft0  = 101.0
       0     3157        M                                           #; (f:fpu) ft5  <-- 495.0
       0     3158        M 0x800011e8 fadd.d  ft5, ft5, ft0          #; ft5  = 495.0, ft0  = 102.0
       0     3161        M                                           #; (f:fpu) ft5  <-- 597.0
       0     3162        M 0x800011ec fadd.d  ft5, ft5, ft0          #; ft5  = 597.0, ft0  = 103.0
       0     3165        M                                           #; (f:fpu) ft5  <-- 700.0
       0     3166        M 0x800011f0 fadd.d  ft5, ft5, ft0          #; ft5  = 700.0, ft0  = 104.0
       0     3169        M                                           #; (f:fpu) ft5  <-- 804.0
       0     3170        M 0x800011f4 fadd.d  ft5, ft5, ft0          #; ft5  = 804.0, ft0  = 105.0
       0     3173        M                                           #; (f:fpu) ft5  <-- 909.0
       0     3174        M 0x800011f8 fadd.d  ft5, ft5, ft0          #; ft5  = 909.0, ft0  = 106.0
       0     3177        M                                           #; (f:fpu) ft5  <-- 1015.0
       0     3178        M 0x800011fc fadd.d  ft5, ft5, ft0          #; ft5  = 1015.0, ft0  = 107.0
       0     3181        M                                           #; (f:fpu) ft5  <-- 1122.0
       0     3182        M 0x80001200 fadd.d  ft5, ft5, ft0          #; ft5  = 1122.0, ft0  = 108.0
       0     3185        M                                           #; (f:fpu) ft5  <-- 1230.0
       0     3186        M 0x80001204 fadd.d  ft5, ft5, ft0          #; ft5  = 1230.0, ft0  = 85.0
       0     3189        M                                           #; (f:fpu) ft5  <-- 1315.0
       0     3190        M 0x80001208 fadd.d  ft5, ft5, ft0          #; ft5  = 1315.0, ft0  = 86.0
       0     3193        M                                           #; (f:fpu) ft5  <-- 1401.0
       0     3194        M 0x8000120c fadd.d  ft5, ft5, ft0          #; ft5  = 1401.0, ft0  = 87.0
       0     3197        M                                           #; (f:fpu) ft5  <-- 1488.0
       0     3198        M 0x80001210 fadd.d  ft5, ft5, ft0          #; ft5  = 1488.0, ft0  = 88.0
       0     3201        M                                           #; (f:fpu) ft5  <-- 1576.0
       0     3202        M 0x80001214 fadd.d  ft5, ft5, ft0          #; ft5  = 1576.0, ft0  = 89.0
       0     3205        M                                           #; (f:fpu) ft5  <-- 1665.0
       0     3206        M 0x80001218 fadd.d  ft5, ft5, ft0          #; ft5  = 1665.0, ft0  = 90.0
       0     3209        M                                           #; (f:fpu) ft5  <-- 1755.0
       0     3210        M 0x8000121c fadd.d  ft5, ft5, ft0          #; ft5  = 1755.0, ft0  = 91.0
       0     3213        M                                           #; (f:fpu) ft5  <-- 1846.0
       0     3214        M 0x80001220 fadd.d  ft5, ft5, ft0          #; ft5  = 1846.0, ft0  = 92.0
       0     3217        M                                           #; (f:fpu) ft5  <-- 1938.0
       0     3218        M 0x80001224 fadd.d  ft5, ft5, ft0          #; ft5  = 1938.0, ft0  = 93.0
       0     3221        M                                           #; (f:fpu) ft5  <-- 2031.0
       0     3222        M 0x80001228 fadd.d  ft5, ft5, ft0          #; ft5  = 2031.0, ft0  = 94.0
       0     3225        M                                           #; (f:fpu) ft5  <-- 2125.0
       0     3226        M 0x8000122c fadd.d  ft5, ft5, ft0          #; ft5  = 2125.0, ft0  = 95.0
       0     3229        M                                           #; (f:fpu) ft5  <-- 2220.0
       0     3230        M 0x80001230 fadd.d  ft5, ft5, ft0          #; ft5  = 2220.0, ft0  = 96.0
       0     3233        M                                           #; (f:fpu) ft5  <-- 2316.0
       0     3234        M 0x80001234 fadd.d  ft5, ft5, ft0          #; ft5  = 2316.0, ft0  = 73.0
       0     3237        M                                           #; (f:fpu) ft5  <-- 2389.0
       0     3238        M 0x80001238 fadd.d  ft5, ft5, ft0          #; ft5  = 2389.0, ft0  = 74.0
       0     3241        M                                           #; (f:fpu) ft5  <-- 2463.0
       0     3242        M 0x8000123c fadd.d  ft5, ft5, ft0          #; ft5  = 2463.0, ft0  = 75.0
       0     3245        M                                           #; (f:fpu) ft5  <-- 2538.0
       0     3246        M 0x80001240 fadd.d  ft5, ft5, ft0          #; ft5  = 2538.0, ft0  = 76.0
       0     3249        M                                           #; (f:fpu) ft5  <-- 2614.0
       0     3250        M 0x80001244 fadd.d  ft5, ft5, ft0          #; ft5  = 2614.0, ft0  = 77.0
       0     3253        M                                           #; (f:fpu) ft5  <-- 2691.0
       0     3254        M 0x80001248 fadd.d  ft5, ft5, ft0          #; ft5  = 2691.0, ft0  = 78.0
       0     3257        M                                           #; (f:fpu) ft5  <-- 2769.0
       0     3258        M 0x8000124c fadd.d  ft5, ft5, ft0          #; ft5  = 2769.0, ft0  = 79.0
       0     3261        M                                           #; (f:fpu) ft5  <-- 2848.0
       0     3262        M 0x80001250 fadd.d  ft5, ft5, ft0          #; ft5  = 2848.0, ft0  = 80.0
       0     3265        M                                           #; (f:fpu) ft5  <-- 2928.0
       0     3266        M 0x80001254 fadd.d  ft5, ft5, ft0          #; ft5  = 2928.0, ft0  = 81.0
       0     3269        M                                           #; (f:fpu) ft5  <-- 3009.0
       0     3270        M 0x80001258 fadd.d  ft5, ft5, ft0          #; ft5  = 3009.0, ft0  = 82.0
       0     3273        M                                           #; (f:fpu) ft5  <-- 3091.0
       0     3274        M 0x8000125c fadd.d  ft5, ft5, ft0          #; ft5  = 3091.0, ft0  = 83.0
       0     3277        M                                           #; (f:fpu) ft5  <-- 3174.0
       0     3278        M 0x80001260 fadd.d  ft5, ft5, ft0          #; ft5  = 3174.0, ft0  = 84.0
       0     3281        M                                           #; (f:fpu) ft5  <-- 3258.0
       0     3282        M 0x80001264 fadd.d  ft5, ft5, ft0          #; ft5  = 3258.0, ft0  = 61.0
       0     3285        M                                           #; (f:fpu) ft5  <-- 3319.0
       0     3286        M 0x80001268 fadd.d  ft5, ft5, ft0          #; ft5  = 3319.0, ft0  = 62.0
       0     3289        M                                           #; (f:fpu) ft5  <-- 3381.0
       0     3290        M 0x8000126c fadd.d  ft5, ft5, ft0          #; ft5  = 3381.0, ft0  = 63.0
       0     3293        M                                           #; (f:fpu) ft5  <-- 3444.0
       0     3294        M 0x80001270 fadd.d  ft5, ft5, ft0          #; ft5  = 3444.0, ft0  = 64.0
       0     3297        M                                           #; (f:fpu) ft5  <-- 3508.0
       0     3298        M 0x80001274 fadd.d  ft5, ft5, ft0          #; ft5  = 3508.0, ft0  = 65.0
       0     3301        M                                           #; (f:fpu) ft5  <-- 3573.0
       0     3302        M 0x80001278 fadd.d  ft5, ft5, ft0          #; ft5  = 3573.0, ft0  = 66.0
       0     3305        M                                           #; (f:fpu) ft5  <-- 3639.0
       0     3306        M 0x8000127c fadd.d  ft5, ft5, ft0          #; ft5  = 3639.0, ft0  = 67.0
       0     3309        M                                           #; (f:fpu) ft5  <-- 3706.0
       0     3310        M 0x80001280 fadd.d  ft5, ft5, ft0          #; ft5  = 3706.0, ft0  = 68.0
       0     3313        M                                           #; (f:fpu) ft5  <-- 3774.0
       0     3314        M 0x80001284 fadd.d  ft5, ft5, ft0          #; ft5  = 3774.0, ft0  = 69.0
       0     3317        M                                           #; (f:fpu) ft5  <-- 3843.0
       0     3318        M 0x80001288 fadd.d  ft5, ft5, ft0          #; ft5  = 3843.0, ft0  = 70.0
       0     3321        M                                           #; (f:fpu) ft5  <-- 3913.0
       0     3322        M 0x8000128c fadd.d  ft5, ft5, ft0          #; ft5  = 3913.0, ft0  = 71.0
       0     3325        M                                           #; (f:fpu) ft5  <-- 3984.0
       0     3326        M 0x80001290 fadd.d  ft5, ft5, ft0          #; ft5  = 3984.0, ft0  = 72.0
       0     3329        M                                           #; (f:fpu) ft5  <-- 4056.0
       0     3330        M 0x80001294 fadd.d  ft5, ft5, ft0          #; ft5  = 4056.0, ft0  = 49.0
       0     3333        M                                           #; (f:fpu) ft5  <-- 4105.0
       0     3334        M 0x80001298 fadd.d  ft5, ft5, ft0          #; ft5  = 4105.0, ft0  = 50.0
       0     3337        M                                           #; (f:fpu) ft5  <-- 4155.0
       0     3338        M 0x8000129c fadd.d  ft5, ft5, ft0          #; ft5  = 4155.0, ft0  = 51.0
       0     3341        M                                           #; (f:fpu) ft5  <-- 4206.0
       0     3342        M 0x800012a0 fadd.d  ft5, ft5, ft0          #; ft5  = 4206.0, ft0  = 52.0
       0     3345        M                                           #; (f:fpu) ft5  <-- 4258.0
       0     3346        M 0x800012a4 fadd.d  ft5, ft5, ft0          #; ft5  = 4258.0, ft0  = 53.0
       0     3349        M                                           #; (f:fpu) ft5  <-- 4311.0
       0     3350        M 0x800012a8 fadd.d  ft5, ft5, ft0          #; ft5  = 4311.0, ft0  = 54.0
       0     3353        M                                           #; (f:fpu) ft5  <-- 4365.0
       0     3354        M 0x800012ac fadd.d  ft5, ft5, ft0          #; ft5  = 4365.0, ft0  = 55.0
       0     3357        M                                           #; (f:fpu) ft5  <-- 4420.0
       0     3358        M 0x800012b0 fadd.d  ft5, ft5, ft0          #; ft5  = 4420.0, ft0  = 56.0
       0     3361        M                                           #; (f:fpu) ft5  <-- 4476.0
       0     3362        M 0x800012b4 fadd.d  ft5, ft5, ft0          #; ft5  = 4476.0, ft0  = 57.0
       0     3365        M                                           #; (f:fpu) ft5  <-- 4533.0
       0     3366        M 0x800012b8 fadd.d  ft5, ft5, ft0          #; ft5  = 4533.0, ft0  = 58.0
       0     3369        M                                           #; (f:fpu) ft5  <-- 4591.0
       0     3370        M 0x800012bc fadd.d  ft5, ft5, ft0          #; ft5  = 4591.0, ft0  = 59.0
       0     3373        M                                           #; (f:fpu) ft5  <-- 4650.0
       0     3374        M 0x800012c0 fadd.d  ft5, ft5, ft0          #; ft5  = 4650.0, ft0  = 60.0
       0     3377        M                                           #; (f:fpu) ft5  <-- 4710.0
       0     3378        M 0x800012c4 fadd.d  ft5, ft5, ft0          #; ft5  = 4710.0, ft0  = 37.0
       0     3381        M                                           #; (f:fpu) ft5  <-- 4747.0
       0     3382        M 0x800012c8 fadd.d  ft5, ft5, ft0          #; ft5  = 4747.0, ft0  = 38.0
       0     3385        M                                           #; (f:fpu) ft5  <-- 4785.0
       0     3386        M 0x800012cc fadd.d  ft5, ft5, ft0          #; ft5  = 4785.0, ft0  = 39.0
       0     3389        M                                           #; (f:fpu) ft5  <-- 4824.0
       0     3390        M 0x800012d0 fadd.d  ft5, ft5, ft0          #; ft5  = 4824.0, ft0  = 40.0
       0     3393        M                                           #; (f:fpu) ft5  <-- 4864.0
       0     3394        M 0x800012d4 fadd.d  ft5, ft5, ft0          #; ft5  = 4864.0, ft0  = 41.0
       0     3397        M                                           #; (f:fpu) ft5  <-- 4905.0
       0     3398        M 0x800012d8 fadd.d  ft5, ft5, ft0          #; ft5  = 4905.0, ft0  = 42.0
       0     3401        M                                           #; (f:fpu) ft5  <-- 4947.0
       0     3402        M 0x800012dc fadd.d  ft5, ft5, ft0          #; ft5  = 4947.0, ft0  = 43.0
       0     3405        M                                           #; (f:fpu) ft5  <-- 4990.0
       0     3406        M 0x800012e0 fadd.d  ft5, ft5, ft0          #; ft5  = 4990.0, ft0  = 44.0
       0     3409        M                                           #; (f:fpu) ft5  <-- 5034.0
       0     3410        M 0x800012e4 fadd.d  ft5, ft5, ft0          #; ft5  = 5034.0, ft0  = 45.0
       0     3413        M                                           #; (f:fpu) ft5  <-- 5079.0
       0     3414        M 0x800012e8 fadd.d  ft5, ft5, ft0          #; ft5  = 5079.0, ft0  = 46.0
       0     3417        M                                           #; (f:fpu) ft5  <-- 5125.0
       0     3418        M 0x800012ec fadd.d  ft5, ft5, ft0          #; ft5  = 5125.0, ft0  = 47.0
       0     3421        M                                           #; (f:fpu) ft5  <-- 5172.0
       0     3422        M 0x800012f0 fadd.d  ft5, ft5, ft0          #; ft5  = 5172.0, ft0  = 48.0
       0     3425        M                                           #; (f:fpu) ft5  <-- 5220.0
       0     3426        M 0x800012f4 fadd.d  ft5, ft5, ft0          #; ft5  = 5220.0, ft0  = 25.0
       0     3429        M                                           #; (f:fpu) ft5  <-- 5245.0
       0     3430        M 0x800012f8 fadd.d  ft5, ft5, ft0          #; ft5  = 5245.0, ft0  = 26.0
       0     3433        M                                           #; (f:fpu) ft5  <-- 5271.0
       0     3434        M 0x800012fc fadd.d  ft5, ft5, ft0          #; ft5  = 5271.0, ft0  = 27.0
       0     3437        M                                           #; (f:fpu) ft5  <-- 5298.0
       0     3438        M 0x80001300 fadd.d  ft5, ft5, ft0          #; ft5  = 5298.0, ft0  = 28.0
       0     3441        M                                           #; (f:fpu) ft5  <-- 5326.0
       0     3442        M 0x80001304 fadd.d  ft5, ft5, ft0          #; ft5  = 5326.0, ft0  = 29.0
       0     3445        M                                           #; (f:fpu) ft5  <-- 5355.0
       0     3446        M 0x80001308 fadd.d  ft5, ft5, ft0          #; ft5  = 5355.0, ft0  = 30.0
       0     3449        M                                           #; (f:fpu) ft5  <-- 5385.0
       0     3450        M 0x8000130c fadd.d  ft5, ft5, ft0          #; ft5  = 5385.0, ft0  = 31.0
       0     3453        M                                           #; (f:fpu) ft5  <-- 5416.0
       0     3454        M 0x80001310 fadd.d  ft5, ft5, ft0          #; ft5  = 5416.0, ft0  = 32.0
       0     3457        M                                           #; (f:fpu) ft5  <-- 5448.0
       0     3458        M 0x80001314 fadd.d  ft5, ft5, ft0          #; ft5  = 5448.0, ft0  = 33.0
       0     3461        M                                           #; (f:fpu) ft5  <-- 5481.0
       0     3462        M 0x80001318 fadd.d  ft5, ft5, ft0          #; ft5  = 5481.0, ft0  = 34.0
       0     3465        M                                           #; (f:fpu) ft5  <-- 5515.0
       0     3466        M 0x8000131c fadd.d  ft5, ft5, ft0          #; ft5  = 5515.0, ft0  = 35.0
       0     3469        M                                           #; (f:fpu) ft5  <-- 5550.0
       0     3470        M 0x80001320 fadd.d  ft5, ft5, ft0          #; ft5  = 5550.0, ft0  = 36.0
       0     3473        M                                           #; (f:fpu) ft5  <-- 5586.0
       0     3474        M 0x80001324 fadd.d  ft5, ft5, ft0          #; ft5  = 5586.0, ft0  = 13.0
       0     3477        M                                           #; (f:fpu) ft5  <-- 5599.0
       0     3478        M 0x80001328 fadd.d  ft5, ft5, ft0          #; ft5  = 5599.0, ft0  = 14.0
       0     3481        M                                           #; (f:fpu) ft5  <-- 5613.0
       0     3482        M 0x8000132c fadd.d  ft5, ft5, ft0          #; ft5  = 5613.0, ft0  = 15.0
       0     3485        M                                           #; (f:fpu) ft5  <-- 5628.0
       0     3486        M 0x80001330 fadd.d  ft5, ft5, ft0          #; ft5  = 5628.0, ft0  = 16.0
       0     3489        M                                           #; (f:fpu) ft5  <-- 5644.0
       0     3490        M 0x80001334 fadd.d  ft5, ft5, ft0          #; ft5  = 5644.0, ft0  = 17.0
       0     3493        M                                           #; (f:fpu) ft5  <-- 5661.0
       0     3494        M 0x80001338 fadd.d  ft5, ft5, ft0          #; ft5  = 5661.0, ft0  = 18.0
       0     3497        M                                           #; (f:fpu) ft5  <-- 5679.0
       0     3498        M 0x8000133c fadd.d  ft5, ft5, ft0          #; ft5  = 5679.0, ft0  = 19.0
       0     3501        M 0x80001388 j       pc + 0x360             #; goto 0x800016e8
                         M                                           #; (f:fpu) ft5  <-- 5698.0
       0     3502        M 0x80001340 fadd.d  ft5, ft5, ft0          #; ft5  = 5698.0, ft0  = 20.0
       0     3505        M 0x800016e8 auipc   a0, 0x2                #; (wrb) a0  <-- 0x800036e8
                         M                                           #; (f:fpu) ft5  <-- 5718.0
       0     3506        M 0x800016ec addi    a0, a0, 1648           #; a0  = 0x800036e8, (wrb) a0  <-- 0x80003d58
                         M 0x80001344 fadd.d  ft5, ft5, ft0          #; ft5  = 5718.0, ft0  = 21.0
       0     3509        M                                           #; (f:fpu) ft5  <-- 5739.0
       0     3510        M 0x80001348 fadd.d  ft5, ft5, ft0          #; ft5  = 5739.0, ft0  = 22.0
       0     3513        M                                           #; (f:fpu) ft5  <-- 5761.0
       0     3514        M 0x8000134c fadd.d  ft5, ft5, ft0          #; ft5  = 5761.0, ft0  = 23.0
       0     3517        M                                           #; (f:fpu) ft5  <-- 5784.0
       0     3518        M 0x80001350 fadd.d  ft5, ft5, ft0          #; ft5  = 5784.0, ft0  = 24.0
       0     3521        M                                           #; (f:fpu) ft5  <-- 5808.0
       0     3522        M 0x80001354 fadd.d  ft5, ft5, ft0          #; ft5  = 5808.0, ft0  = 1.0
       0     3525        M                                           #; (f:fpu) ft5  <-- 5809.0
       0     3526        M 0x80001358 fadd.d  ft5, ft5, ft0          #; ft5  = 5809.0, ft0  = 2.0
       0     3529        M                                           #; (f:fpu) ft5  <-- 5811.0
       0     3530        M 0x8000135c fadd.d  ft5, ft5, ft0          #; ft5  = 5811.0, ft0  = 3.0
       0     3533        M                                           #; (f:fpu) ft5  <-- 5814.0
       0     3534        M 0x80001360 fadd.d  ft5, ft5, ft0          #; ft5  = 5814.0, ft0  = 4.0
       0     3537        M                                           #; (f:fpu) ft5  <-- 5818.0
       0     3538        M 0x80001364 fadd.d  ft5, ft5, ft0          #; ft5  = 5818.0, ft0  = 5.0
       0     3541        M                                           #; (f:fpu) ft5  <-- 5823.0
       0     3542        M 0x80001368 fadd.d  ft5, ft5, ft0          #; ft5  = 5823.0, ft0  = 6.0
       0     3545        M                                           #; (f:fpu) ft5  <-- 5829.0
       0     3546        M 0x8000136c fadd.d  ft5, ft5, ft0          #; ft5  = 5829.0, ft0  = 7.0
       0     3549        M                                           #; (f:fpu) ft5  <-- 5836.0
       0     3550        M 0x80001370 fadd.d  ft5, ft5, ft0          #; ft5  = 5836.0, ft0  = 8.0
       0     3553        M                                           #; (f:fpu) ft5  <-- 5844.0
       0     3554        M 0x80001374 fadd.d  ft5, ft5, ft0          #; ft5  = 5844.0, ft0  = 9.0
       0     3557        M                                           #; (f:fpu) ft5  <-- 5853.0
       0     3558        M 0x80001378 fadd.d  ft5, ft5, ft0          #; ft5  = 5853.0, ft0  = 10.0
       0     3561        M                                           #; (f:fpu) ft5  <-- 5863.0
       0     3562        M 0x8000137c fadd.d  ft5, ft5, ft0          #; ft5  = 5863.0, ft0  = 11.0
       0     3565        M                                           #; (f:fpu) ft5  <-- 5874.0
       0     3566        M 0x80001380 fadd.d  ft5, ft5, ft0          #; ft5  = 5874.0, ft0  = 12.0
       0     3567        M 0x80001384 csrrci  a0, ssr, 1             #; 
       0     3569        M 0x800016f0 fld     ft6, 0(a0)             #; ft6  <~~ Doub[0x80003d58], (f:fpu) ft5  <-- 5886.0
       0     3570        M 0x800016f4 fadd.d  ft4, ft4, ft5          #; ft4  = 5886.0, ft5  = 5886.0
       0     3572        M 0x80001704 lw      a2, 672(sp)            #; sp  = 0x0011fc50, a2  <~~ Word[0x0011fef0]
       0     3573        M                                           #; (f:fpu) ft4  <-- 11772.0
       0     3578        M                                           #; (f:lsu) ft6  <-- -2.0
       0     3579        M 0x800016f8 fmadd.d ft3, ft3, ft6, ft4     #; ft3  = 5886.0, ft6  = -2.0, ft4  = 11772.0
       0     3580        M                                           #; (lsu) a2  <-- 0
       0     3581        M 0x80001708 lw      a3, 676(sp)            #; sp  = 0x0011fc50, a3  <~~ Word[0x0011fef4]
       0     3582        M 0x8000170c auipc   a0, 0x2                #; (wrb) a0  <-- 0x8000370c
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     3583        M 0x80001710 addi    a0, a0, 921            #; a0  = 0x8000370c, (wrb) a0  <-- 0x80003aa5
                         M 0x800016fc fsgnjx.d fs0, ft3, ft3         #; ft3  = 0.0, ft3  = 0.0
       0     3584        M 0x80001714 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80001714
                         M                                           #; (f:fpu) fs0  <-- 0.0
       0     3585        M 0x80001718 jalr    ra, ra, 84             #; ra  = 0x80001714, (wrb) ra  <-- 0x8000171c, goto 0x80001768
                         M 0x80001700 fsd     fs0, 672(sp)           #; 0.0 ~~> Doub[0x0011fef0]
       0     3586        M                                           #; (lsu) a3  <-- 0
       0     3606        M 0x80001768 addi    sp, sp, -48            #; sp  = 0x0011fc50, (wrb) sp  <-- 0x0011fc20
       0     3607        M 0x8000176c sw      ra, 12(sp)             #; sp  = 0x0011fc20, 0x8000171c ~~> Word[0x0011fc2c]
       0     3609        M 0x80001770 mv      t0, a0                 #; a0  = 0x80003aa5, (wrb) t0  <-- 0x80003aa5
       0     3610        M 0x80001774 sw      a7, 44(sp)             #; sp  = 0x0011fc20, 0xffff0000 ~~> Word[0x0011fc4c]
       0     3611        M 0x80001778 sw      a6, 40(sp)             #; sp  = 0x0011fc20, 0x00120000 ~~> Word[0x0011fc48]
       0     3612        M 0x8000177c sw      a5, 36(sp)             #; sp  = 0x0011fc20, 192 ~~> Word[0x0011fc44]
       0     3621        M 0x80001780 sw      a4, 32(sp)             #; sp  = 0x0011fc20, 224 ~~> Word[0x0011fc40]
       0     3622        M 0x80001784 sw      a3, 28(sp)             #; sp  = 0x0011fc20, 0 ~~> Word[0x0011fc3c]
       0     3623        M 0x80001788 sw      a2, 24(sp)             #; sp  = 0x0011fc20, 0 ~~> Word[0x0011fc38]
       0     3624        M 0x8000178c sw      a1, 20(sp)             #; sp  = 0x0011fc20, 32 ~~> Word[0x0011fc34]
       0     3633        M 0x80001790 addi    a0, sp, 20             #; sp  = 0x0011fc20, (wrb) a0  <-- 0x0011fc34
       0     3634        M 0x80001794 sw      a0, 8(sp)              #; sp  = 0x0011fc20, 0x0011fc34 ~~> Word[0x0011fc28]
       0     3635        M 0x80001798 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002798
       0     3636        M 0x8000179c addi    a0, a0, -988           #; a0  = 0x80002798, (wrb) a0  <-- 0x800023bc
       0     3645        M 0x800017a0 addi    a1, sp, 7              #; sp  = 0x0011fc20, (wrb) a1  <-- 0x0011fc27
       0     3646        M 0x800017a4 li      a2, -1                 #; (wrb) a2  <-- -1
       0     3647        M 0x800017a8 addi    a4, sp, 20             #; sp  = 0x0011fc20, (wrb) a4  <-- 0x0011fc34
       0     3648        M 0x800017ac mv      a3, t0                 #; t0  = 0x80003aa5, (wrb) a3  <-- 0x80003aa5
       0     3657        M 0x800017b0 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800017b0
       0     3658        M 0x800017b4 jalr    ra, ra, 20             #; ra  = 0x800017b0, (wrb) ra  <-- 0x800017b8, goto 0x800017c4
       0     3669        M 0x800017c4 addi    sp, sp, -112           #; sp  = 0x0011fc20, (wrb) sp  <-- 0x0011fbb0
       0     3670        M 0x800017c8 sw      ra, 108(sp)            #; sp  = 0x0011fbb0, 0x800017b8 ~~> Word[0x0011fc1c]
       0     3671        M 0x800017cc sw      s0, 104(sp)            #; sp  = 0x0011fbb0, 0 ~~> Word[0x0011fc18]
       0     3681        M 0x800017d0 sw      s1, 100(sp)            #; sp  = 0x0011fbb0, 0 ~~> Word[0x0011fc14]
       0     3682        M 0x800017d4 sw      s2, 96(sp)             #; sp  = 0x0011fbb0, 0 ~~> Word[0x0011fc10]
       0     3683        M 0x800017d8 sw      s3, 92(sp)             #; sp  = 0x0011fbb0, 0 ~~> Word[0x0011fc0c]
       0     3684        M 0x800017dc sw      s4, 88(sp)             #; sp  = 0x0011fbb0, 0 ~~> Word[0x0011fc08]
       0     3693        M 0x800017e0 sw      s5, 84(sp)             #; sp  = 0x0011fbb0, 0 ~~> Word[0x0011fc04]
       0     3694        M 0x800017e4 sw      s6, 80(sp)             #; sp  = 0x0011fbb0, 0 ~~> Word[0x0011fc00]
       0     3695        M 0x800017e8 sw      s7, 76(sp)             #; sp  = 0x0011fbb0, 0 ~~> Word[0x0011fbfc]
       0     3696        M 0x800017ec sw      s8, 72(sp)             #; sp  = 0x0011fbb0, 0 ~~> Word[0x0011fbf8]
       0     3705        M 0x800017f0 sw      s9, 68(sp)             #; sp  = 0x0011fbb0, 0 ~~> Word[0x0011fbf4]
       0     3706        M 0x800017f4 sw      s10, 64(sp)            #; sp  = 0x0011fbb0, 0 ~~> Word[0x0011fbf0]
       0     3707        M 0x800017f8 sw      s11, 60(sp)            #; sp  = 0x0011fbb0, 0 ~~> Word[0x0011fbec]
       0     3708        M 0x800017fc mv      s3, a4                 #; a4  = 0x0011fc34, (wrb) s3  <-- 0x0011fc34
       0     3717        M 0x80001800 mv      s0, a3                 #; a3  = 0x80003aa5, (wrb) s0  <-- 0x80003aa5
       0     3718        M 0x80001804 mv      s5, a2                 #; a2  = -1, (wrb) s5  <-- -1
       0     3719        M 0x80001808 mv      s4, a1                 #; a1  = 0x0011fc27, (wrb) s4  <-- 0x0011fc27
       0     3720        M 0x8000180c beqz    a1, pc + 12            #; a1  = 0x0011fc27, not taken
       0     3729        M 0x80001810 mv      s2, a0                 #; a0  = 0x800023bc, (wrb) s2  <-- 0x800023bc
       0     3730        M 0x80001814 j       pc + 0xc               #; goto 0x80001820
       0     3741        M 0x80001820 li      s8, 0                  #; (wrb) s8  <-- 0
       0     3742        M 0x80001824 li      s6, 37                 #; (wrb) s6  <-- 37
       0     3743        M 0x80001828 li      s11, 16                #; (wrb) s11 <-- 16
       0     3744        M 0x8000182c li      s7, 46                 #; (wrb) s7  <-- 46
       0     3753        M 0x80001830 lui     a0, 0x1                #; (wrb) a0  <-- 4096
       0     3754        M 0x80001834 addi    a0, a0, -2048          #; a0  = 4096, (wrb) a0  <-- 2048
       0     3755        M 0x80001838 sw      a0, 24(sp)             #; sp  = 0x0011fbb0, 2048 ~~> Word[0x0011fbc8]
       0     3756        M 0x8000183c lui     a0, 0x10               #; (wrb) a0  <-- 0x00010000
       0     3765        M 0x80001840 addi    a0, a0, -1             #; a0  = 0x00010000, (wrb) a0  <-- 65535
       0     3766        M 0x80001844 sw      a0, 16(sp)             #; sp  = 0x0011fbb0, 65535 ~~> Word[0x0011fbc0]
       0     3767        M 0x80001848 addi    s10, s0, 2             #; s0  = 0x80003aa5, (wrb) s10 <-- 0x80003aa7
       0     3768        M 0x8000184c mv      s9, s8                 #; s8  = 0, (wrb) s9  <-- 0
       0     3777        M 0x80001850 li      s8, 10                 #; (wrb) s8  <-- 10
       0     3778        M 0x80001854 lbu     a0, 0(s0)              #; s0  = 0x80003aa5, a0  <~~ Byte[0x80003aa5]
       0     3789        M                                           #; (lsu) a0  <-- 101
       0     3790        M 0x80001858 beqz    a0, pc + 2824          #; a0  = 101, not taken
       0     3791        M 0x8000185c beq     a0, s6, pc + 48        #; a0  = 101, s6  = 37, not taken
       0     3792        M 0x80001860 addi    s1, s9, 1              #; s9  = 0, (wrb) s1  <-- 1
       0     3793        M 0x80001864 mv      a1, s4                 #; s4  = 0x0011fc27, (wrb) a1  <-- 0x0011fc27
       0     3794        M 0x80001868 mv      a2, s9                 #; s9  = 0, (wrb) a2  <-- 0
       0     3795        M 0x8000186c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3804        M 0x80001870 jalr    s2                     #; s2  = 0x800023bc, (wrb) ra  <-- 0x80001874, goto 0x800023bc
       0     3827        M 0x800023bc beqz    a0, pc + 168           #; a0  = 101, not taken
       0     3839        M 0x800023c0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     3840        M 0x800023c4 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     3841        M 0x800023c8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     3842        M 0x800023cc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800043cc
       0     3851        M 0x800023d0 addi    a3, a3, -1464          #; a3  = 0x800043cc, (wrb) a3  <-- 0x80003e14
       0     3852        M 0x800023d4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003e14, (wrb) a1  <-- 0x80003e14
       0     3853        M 0x800023d8 lw      a4, 0(a1)              #; a1  = 0x80003e14, a4  <~~ Word[0x80003e14]
       0     3864        M                                           #; (lsu) a4  <-- 0
       0     3865        M 0x800023dc addi    a5, a4, 1              #; a4  = 0, (wrb) a5  <-- 1
       0     3866        M 0x800023e0 sw      a5, 0(a1)              #; a1  = 0x80003e14, 1 ~~> Word[0x80003e14]
       0     3867        M 0x800023e4 add     a4, a1, a4             #; a1  = 0x80003e14, a4  = 0, (wrb) a4  <-- 0x80003e14
       0     3868        M 0x800023e8 sb      a0, 72(a4)             #; a4  = 0x80003e14, 101 ~~> Byte[0x80003e5c]
       0     3869        M 0x800023ec lw      a4, 0(a1)              #; a1  = 0x80003e14, a4  <~~ Word[0x80003e14]
       0     3890        M                                           #; (lsu) a4  <-- 1
       0     3891        M 0x800023f0 addi    a4, a4, -1020          #; a4  = 1, (wrb) a4  <-- -1019
       0     3892        M 0x800023f4 snez    a4, a4                 #; a4  = -1019, (wrb) a4  <-- 1
       0     3893        M 0x800023f8 addi    a0, a0, -10            #; a0  = 101, (wrb) a0  <-- 91
       0     3894        M 0x800023fc snez    a0, a0                 #; a0  = 91, (wrb) a0  <-- 1
       0     3895        M 0x80002400 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     3896        M 0x80002404 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80002464
       0     3918        M 0x80002464 ret                            #; ra  = 0x80001874, goto 0x80001874
       0     3932        M 0x80001874 addi    s0, s0, 1              #; s0  = 0x80003aa5, (wrb) s0  <-- 0x80003aa6
       0     3933        M 0x80001878 addi    s10, s10, 1            #; s10 = 0x80003aa7, (wrb) s10 <-- 0x80003aa8
       0     3934        M 0x8000187c mv      s9, s1                 #; s1  = 1, (wrb) s9  <-- 1
       0     3935        M 0x80001880 lbu     a0, 0(s0)              #; s0  = 0x80003aa6, a0  <~~ Byte[0x80003aa6]
       0     3946        M                                           #; (lsu) a0  <-- 114
       0     3947        M 0x80001884 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x8000185c
       0     3948        M 0x8000185c beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     3951        M 0x80001860 addi    s1, s9, 1              #; s9  = 1, (wrb) s1  <-- 2
       0     3952        M 0x80001864 mv      a1, s4                 #; s4  = 0x0011fc27, (wrb) a1  <-- 0x0011fc27
       0     3953        M 0x80001868 mv      a2, s9                 #; s9  = 1, (wrb) a2  <-- 1
       0     3954        M 0x8000186c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3955        M 0x80001870 jalr    s2                     #; s2  = 0x800023bc, (wrb) ra  <-- 0x80001874, goto 0x800023bc
       0     3958        M 0x800023bc beqz    a0, pc + 168           #; a0  = 114, not taken
       0     3961        M 0x800023c0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     3962        M 0x800023c4 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     3963        M 0x800023c8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     3964        M 0x800023cc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800043cc
       0     3965        M 0x800023d0 addi    a3, a3, -1464          #; a3  = 0x800043cc, (wrb) a3  <-- 0x80003e14
       0     3966        M                                           #; (acc) a1  <-- 0x00d605b3
       0     3967        M 0x800023d4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003e14, (wrb) a1  <-- 0x80003e14
       0     3968        M 0x800023d8 lw      a4, 0(a1)              #; a1  = 0x80003e14, a4  <~~ Word[0x80003e14]
       0     3979        M                                           #; (lsu) a4  <-- 1
       0     3980        M 0x800023dc addi    a5, a4, 1              #; a4  = 1, (wrb) a5  <-- 2
       0     3981        M 0x800023e0 sw      a5, 0(a1)              #; a1  = 0x80003e14, 2 ~~> Word[0x80003e14]
       0     3982        M 0x800023e4 add     a4, a1, a4             #; a1  = 0x80003e14, a4  = 1, (wrb) a4  <-- 0x80003e15
       0     3983        M 0x800023e8 sb      a0, 72(a4)             #; a4  = 0x80003e15, 114 ~~> Byte[0x80003e5d]
       0     3984        M 0x800023ec lw      a4, 0(a1)              #; a1  = 0x80003e14, a4  <~~ Word[0x80003e14]
       0     4005        M                                           #; (lsu) a4  <-- 2
       0     4006        M 0x800023f0 addi    a4, a4, -1020          #; a4  = 2, (wrb) a4  <-- -1018
       0     4007        M 0x800023f4 snez    a4, a4                 #; a4  = -1018, (wrb) a4  <-- 1
       0     4008        M 0x800023f8 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     4009        M 0x800023fc snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     4010        M 0x80002400 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4011        M 0x80002404 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80002464
       0     4015        M 0x80002464 ret                            #; ra  = 0x80001874, goto 0x80001874
       0     4020        M 0x80001874 addi    s0, s0, 1              #; s0  = 0x80003aa6, (wrb) s0  <-- 0x80003aa7
       0     4021        M 0x80001878 addi    s10, s10, 1            #; s10 = 0x80003aa8, (wrb) s10 <-- 0x80003aa9
       0     4022        M 0x8000187c mv      s9, s1                 #; s1  = 2, (wrb) s9  <-- 2
       0     4023        M 0x80001880 lbu     a0, 0(s0)              #; s0  = 0x80003aa7, a0  <~~ Byte[0x80003aa7]
       0     4034        M                                           #; (lsu) a0  <-- 114
       0     4035        M 0x80001884 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x8000185c
       0     4036        M 0x8000185c beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     4039        M 0x80001860 addi    s1, s9, 1              #; s9  = 2, (wrb) s1  <-- 3
       0     4040        M 0x80001864 mv      a1, s4                 #; s4  = 0x0011fc27, (wrb) a1  <-- 0x0011fc27
       0     4041        M 0x80001868 mv      a2, s9                 #; s9  = 2, (wrb) a2  <-- 2
       0     4042        M 0x8000186c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     4043        M 0x80001870 jalr    s2                     #; s2  = 0x800023bc, (wrb) ra  <-- 0x80001874, goto 0x800023bc
       0     4046        M 0x800023bc beqz    a0, pc + 168           #; a0  = 114, not taken
       0     4049        M 0x800023c0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4050        M 0x800023c4 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4051        M 0x800023c8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4052        M 0x800023cc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800043cc
       0     4053        M 0x800023d0 addi    a3, a3, -1464          #; a3  = 0x800043cc, (wrb) a3  <-- 0x80003e14
       0     4054        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4055        M 0x800023d4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003e14, (wrb) a1  <-- 0x80003e14
       0     4056        M 0x800023d8 lw      a4, 0(a1)              #; a1  = 0x80003e14, a4  <~~ Word[0x80003e14]
       0     4067        M                                           #; (lsu) a4  <-- 2
       0     4068        M 0x800023dc addi    a5, a4, 1              #; a4  = 2, (wrb) a5  <-- 3
       0     4069        M 0x800023e0 sw      a5, 0(a1)              #; a1  = 0x80003e14, 3 ~~> Word[0x80003e14]
       0     4070        M 0x800023e4 add     a4, a1, a4             #; a1  = 0x80003e14, a4  = 2, (wrb) a4  <-- 0x80003e16
       0     4071        M 0x800023e8 sb      a0, 72(a4)             #; a4  = 0x80003e16, 114 ~~> Byte[0x80003e5e]
       0     4072        M 0x800023ec lw      a4, 0(a1)              #; a1  = 0x80003e14, a4  <~~ Word[0x80003e14]
       0     4093        M                                           #; (lsu) a4  <-- 3
       0     4094        M 0x800023f0 addi    a4, a4, -1020          #; a4  = 3, (wrb) a4  <-- -1017
       0     4095        M 0x800023f4 snez    a4, a4                 #; a4  = -1017, (wrb) a4  <-- 1
       0     4096        M 0x800023f8 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     4097        M 0x800023fc snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     4098        M 0x80002400 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4099        M 0x80002404 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80002464
       0     4103        M 0x80002464 ret                            #; ra  = 0x80001874, goto 0x80001874
       0     4108        M 0x80001874 addi    s0, s0, 1              #; s0  = 0x80003aa7, (wrb) s0  <-- 0x80003aa8
       0     4109        M 0x80001878 addi    s10, s10, 1            #; s10 = 0x80003aa9, (wrb) s10 <-- 0x80003aaa
       0     4110        M 0x8000187c mv      s9, s1                 #; s1  = 3, (wrb) s9  <-- 3
       0     4111        M 0x80001880 lbu     a0, 0(s0)              #; s0  = 0x80003aa8, a0  <~~ Byte[0x80003aa8]
       0     4122        M                                           #; (lsu) a0  <-- 111
       0     4123        M 0x80001884 bnez    a0, pc - 40            #; a0  = 111, taken, goto 0x8000185c
       0     4124        M 0x8000185c beq     a0, s6, pc + 48        #; a0  = 111, s6  = 37, not taken
       0     4127        M 0x80001860 addi    s1, s9, 1              #; s9  = 3, (wrb) s1  <-- 4
       0     4128        M 0x80001864 mv      a1, s4                 #; s4  = 0x0011fc27, (wrb) a1  <-- 0x0011fc27
       0     4129        M 0x80001868 mv      a2, s9                 #; s9  = 3, (wrb) a2  <-- 3
       0     4130        M 0x8000186c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     4131        M 0x80001870 jalr    s2                     #; s2  = 0x800023bc, (wrb) ra  <-- 0x80001874, goto 0x800023bc
       0     4134        M 0x800023bc beqz    a0, pc + 168           #; a0  = 111, not taken
       0     4137        M 0x800023c0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4138        M 0x800023c4 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4139        M 0x800023c8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4140        M 0x800023cc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800043cc
       0     4141        M 0x800023d0 addi    a3, a3, -1464          #; a3  = 0x800043cc, (wrb) a3  <-- 0x80003e14
       0     4142        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4143        M 0x800023d4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003e14, (wrb) a1  <-- 0x80003e14
       0     4144        M 0x800023d8 lw      a4, 0(a1)              #; a1  = 0x80003e14, a4  <~~ Word[0x80003e14]
       0     4155        M                                           #; (lsu) a4  <-- 3
       0     4156        M 0x800023dc addi    a5, a4, 1              #; a4  = 3, (wrb) a5  <-- 4
       0     4157        M 0x800023e0 sw      a5, 0(a1)              #; a1  = 0x80003e14, 4 ~~> Word[0x80003e14]
       0     4158        M 0x800023e4 add     a4, a1, a4             #; a1  = 0x80003e14, a4  = 3, (wrb) a4  <-- 0x80003e17
       0     4159        M 0x800023e8 sb      a0, 72(a4)             #; a4  = 0x80003e17, 111 ~~> Byte[0x80003e5f]
       0     4160        M 0x800023ec lw      a4, 0(a1)              #; a1  = 0x80003e14, a4  <~~ Word[0x80003e14]
       0     4181        M                                           #; (lsu) a4  <-- 4
       0     4182        M 0x800023f0 addi    a4, a4, -1020          #; a4  = 4, (wrb) a4  <-- -1016
       0     4183        M 0x800023f4 snez    a4, a4                 #; a4  = -1016, (wrb) a4  <-- 1
       0     4184        M 0x800023f8 addi    a0, a0, -10            #; a0  = 111, (wrb) a0  <-- 101
       0     4185        M 0x800023fc snez    a0, a0                 #; a0  = 101, (wrb) a0  <-- 1
       0     4186        M 0x80002400 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4187        M 0x80002404 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80002464
       0     4191        M 0x80002464 ret                            #; ra  = 0x80001874, goto 0x80001874
       0     4196        M 0x80001874 addi    s0, s0, 1              #; s0  = 0x80003aa8, (wrb) s0  <-- 0x80003aa9
       0     4197        M 0x80001878 addi    s10, s10, 1            #; s10 = 0x80003aaa, (wrb) s10 <-- 0x80003aab
       0     4198        M 0x8000187c mv      s9, s1                 #; s1  = 4, (wrb) s9  <-- 4
       0     4199        M 0x80001880 lbu     a0, 0(s0)              #; s0  = 0x80003aa9, a0  <~~ Byte[0x80003aa9]
       0     4210        M                                           #; (lsu) a0  <-- 114
       0     4211        M 0x80001884 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x8000185c
       0     4212        M 0x8000185c beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     4215        M 0x80001860 addi    s1, s9, 1              #; s9  = 4, (wrb) s1  <-- 5
       0     4216        M 0x80001864 mv      a1, s4                 #; s4  = 0x0011fc27, (wrb) a1  <-- 0x0011fc27
       0     4217        M 0x80001868 mv      a2, s9                 #; s9  = 4, (wrb) a2  <-- 4
       0     4218        M 0x8000186c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     4219        M 0x80001870 jalr    s2                     #; s2  = 0x800023bc, (wrb) ra  <-- 0x80001874, goto 0x800023bc
       0     4222        M 0x800023bc beqz    a0, pc + 168           #; a0  = 114, not taken
       0     4225        M 0x800023c0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4226        M 0x800023c4 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4227        M 0x800023c8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4228        M 0x800023cc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800043cc
       0     4229        M 0x800023d0 addi    a3, a3, -1464          #; a3  = 0x800043cc, (wrb) a3  <-- 0x80003e14
       0     4230        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4231        M 0x800023d4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003e14, (wrb) a1  <-- 0x80003e14
       0     4232        M 0x800023d8 lw      a4, 0(a1)              #; a1  = 0x80003e14, a4  <~~ Word[0x80003e14]
       0     4243        M                                           #; (lsu) a4  <-- 4
       0     4244        M 0x800023dc addi    a5, a4, 1              #; a4  = 4, (wrb) a5  <-- 5
       0     4245        M 0x800023e0 sw      a5, 0(a1)              #; a1  = 0x80003e14, 5 ~~> Word[0x80003e14]
       0     4246        M 0x800023e4 add     a4, a1, a4             #; a1  = 0x80003e14, a4  = 4, (wrb) a4  <-- 0x80003e18
       0     4247        M 0x800023e8 sb      a0, 72(a4)             #; a4  = 0x80003e18, 114 ~~> Byte[0x80003e60]
       0     4248        M 0x800023ec lw      a4, 0(a1)              #; a1  = 0x80003e14, a4  <~~ Word[0x80003e14]
       0     4269        M                                           #; (lsu) a4  <-- 5
       0     4270        M 0x800023f0 addi    a4, a4, -1020          #; a4  = 5, (wrb) a4  <-- -1015
       0     4271        M 0x800023f4 snez    a4, a4                 #; a4  = -1015, (wrb) a4  <-- 1
       0     4272        M 0x800023f8 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     4273        M 0x800023fc snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     4274        M 0x80002400 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4275        M 0x80002404 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80002464
       0     4279        M 0x80002464 ret                            #; ra  = 0x80001874, goto 0x80001874
       0     4284        M 0x80001874 addi    s0, s0, 1              #; s0  = 0x80003aa9, (wrb) s0  <-- 0x80003aaa
       0     4285        M 0x80001878 addi    s10, s10, 1            #; s10 = 0x80003aab, (wrb) s10 <-- 0x80003aac
       0     4286        M 0x8000187c mv      s9, s1                 #; s1  = 5, (wrb) s9  <-- 5
       0     4287        M 0x80001880 lbu     a0, 0(s0)              #; s0  = 0x80003aaa, a0  <~~ Byte[0x80003aaa]
       0     4298        M                                           #; (lsu) a0  <-- 32
       0     4299        M 0x80001884 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x8000185c
       0     4300        M 0x8000185c beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     4303        M 0x80001860 addi    s1, s9, 1              #; s9  = 5, (wrb) s1  <-- 6
       0     4304        M 0x80001864 mv      a1, s4                 #; s4  = 0x0011fc27, (wrb) a1  <-- 0x0011fc27
       0     4305        M 0x80001868 mv      a2, s9                 #; s9  = 5, (wrb) a2  <-- 5
       0     4306        M 0x8000186c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     4307        M 0x80001870 jalr    s2                     #; s2  = 0x800023bc, (wrb) ra  <-- 0x80001874, goto 0x800023bc
       0     4310        M 0x800023bc beqz    a0, pc + 168           #; a0  = 32, not taken
       0     4313        M 0x800023c0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4314        M 0x800023c4 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4315        M 0x800023c8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4316        M 0x800023cc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800043cc
       0     4317        M 0x800023d0 addi    a3, a3, -1464          #; a3  = 0x800043cc, (wrb) a3  <-- 0x80003e14
       0     4318        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4319        M 0x800023d4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003e14, (wrb) a1  <-- 0x80003e14
       0     4320        M 0x800023d8 lw      a4, 0(a1)              #; a1  = 0x80003e14, a4  <~~ Word[0x80003e14]
       0     4331        M                                           #; (lsu) a4  <-- 5
       0     4332        M 0x800023dc addi    a5, a4, 1              #; a4  = 5, (wrb) a5  <-- 6
       0     4333        M 0x800023e0 sw      a5, 0(a1)              #; a1  = 0x80003e14, 6 ~~> Word[0x80003e14]
       0     4334        M 0x800023e4 add     a4, a1, a4             #; a1  = 0x80003e14, a4  = 5, (wrb) a4  <-- 0x80003e19
       0     4335        M 0x800023e8 sb      a0, 72(a4)             #; a4  = 0x80003e19, 32 ~~> Byte[0x80003e61]
       0     4336        M 0x800023ec lw      a4, 0(a1)              #; a1  = 0x80003e14, a4  <~~ Word[0x80003e14]
       0     4357        M                                           #; (lsu) a4  <-- 6
       0     4358        M 0x800023f0 addi    a4, a4, -1020          #; a4  = 6, (wrb) a4  <-- -1014
       0     4359        M 0x800023f4 snez    a4, a4                 #; a4  = -1014, (wrb) a4  <-- 1
       0     4360        M 0x800023f8 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
       0     4361        M 0x800023fc snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
       0     4362        M 0x80002400 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4363        M 0x80002404 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80002464
       0     4367        M 0x80002464 ret                            #; ra  = 0x80001874, goto 0x80001874
       0     4372        M 0x80001874 addi    s0, s0, 1              #; s0  = 0x80003aaa, (wrb) s0  <-- 0x80003aab
       0     4373        M 0x80001878 addi    s10, s10, 1            #; s10 = 0x80003aac, (wrb) s10 <-- 0x80003aad
       0     4374        M 0x8000187c mv      s9, s1                 #; s1  = 6, (wrb) s9  <-- 6
       0     4375        M 0x80001880 lbu     a0, 0(s0)              #; s0  = 0x80003aab, a0  <~~ Byte[0x80003aab]
       0     4386        M                                           #; (lsu) a0  <-- 61
       0     4387        M 0x80001884 bnez    a0, pc - 40            #; a0  = 61, taken, goto 0x8000185c
       0     4388        M 0x8000185c beq     a0, s6, pc + 48        #; a0  = 61, s6  = 37, not taken
       0     4391        M 0x80001860 addi    s1, s9, 1              #; s9  = 6, (wrb) s1  <-- 7
       0     4392        M 0x80001864 mv      a1, s4                 #; s4  = 0x0011fc27, (wrb) a1  <-- 0x0011fc27
       0     4393        M 0x80001868 mv      a2, s9                 #; s9  = 6, (wrb) a2  <-- 6
       0     4394        M 0x8000186c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     4395        M 0x80001870 jalr    s2                     #; s2  = 0x800023bc, (wrb) ra  <-- 0x80001874, goto 0x800023bc
       0     4398        M 0x800023bc beqz    a0, pc + 168           #; a0  = 61, not taken
       0     4401        M 0x800023c0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4402        M 0x800023c4 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4403        M 0x800023c8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4404        M 0x800023cc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800043cc
       0     4405        M 0x800023d0 addi    a3, a3, -1464          #; a3  = 0x800043cc, (wrb) a3  <-- 0x80003e14
       0     4406        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4407        M 0x800023d4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003e14, (wrb) a1  <-- 0x80003e14
       0     4408        M 0x800023d8 lw      a4, 0(a1)              #; a1  = 0x80003e14, a4  <~~ Word[0x80003e14]
       0     4419        M                                           #; (lsu) a4  <-- 6
       0     4420        M 0x800023dc addi    a5, a4, 1              #; a4  = 6, (wrb) a5  <-- 7
       0     4421        M 0x800023e0 sw      a5, 0(a1)              #; a1  = 0x80003e14, 7 ~~> Word[0x80003e14]
       0     4422        M 0x800023e4 add     a4, a1, a4             #; a1  = 0x80003e14, a4  = 6, (wrb) a4  <-- 0x80003e1a
       0     4423        M 0x800023e8 sb      a0, 72(a4)             #; a4  = 0x80003e1a, 61 ~~> Byte[0x80003e62]
       0     4424        M 0x800023ec lw      a4, 0(a1)              #; a1  = 0x80003e14, a4  <~~ Word[0x80003e14]
       0     4445        M                                           #; (lsu) a4  <-- 7
       0     4446        M 0x800023f0 addi    a4, a4, -1020          #; a4  = 7, (wrb) a4  <-- -1013
       0     4447        M 0x800023f4 snez    a4, a4                 #; a4  = -1013, (wrb) a4  <-- 1
       0     4448        M 0x800023f8 addi    a0, a0, -10            #; a0  = 61, (wrb) a0  <-- 51
       0     4449        M 0x800023fc snez    a0, a0                 #; a0  = 51, (wrb) a0  <-- 1
       0     4450        M 0x80002400 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4451        M 0x80002404 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80002464
       0     4455        M 0x80002464 ret                            #; ra  = 0x80001874, goto 0x80001874
       0     4460        M 0x80001874 addi    s0, s0, 1              #; s0  = 0x80003aab, (wrb) s0  <-- 0x80003aac
       0     4461        M 0x80001878 addi    s10, s10, 1            #; s10 = 0x80003aad, (wrb) s10 <-- 0x80003aae
       0     4462        M 0x8000187c mv      s9, s1                 #; s1  = 7, (wrb) s9  <-- 7
       0     4463        M 0x80001880 lbu     a0, 0(s0)              #; s0  = 0x80003aac, a0  <~~ Byte[0x80003aac]
       0     4474        M                                           #; (lsu) a0  <-- 32
       0     4475        M 0x80001884 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x8000185c
       0     4476        M 0x8000185c beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     4479        M 0x80001860 addi    s1, s9, 1              #; s9  = 7, (wrb) s1  <-- 8
       0     4480        M 0x80001864 mv      a1, s4                 #; s4  = 0x0011fc27, (wrb) a1  <-- 0x0011fc27
       0     4481        M 0x80001868 mv      a2, s9                 #; s9  = 7, (wrb) a2  <-- 7
       0     4482        M 0x8000186c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     4483        M 0x80001870 jalr    s2                     #; s2  = 0x800023bc, (wrb) ra  <-- 0x80001874, goto 0x800023bc
       0     4486        M 0x800023bc beqz    a0, pc + 168           #; a0  = 32, not taken
       0     4489        M 0x800023c0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4490        M 0x800023c4 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4491        M 0x800023c8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4492        M 0x800023cc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800043cc
       0     4493        M 0x800023d0 addi    a3, a3, -1464          #; a3  = 0x800043cc, (wrb) a3  <-- 0x80003e14
       0     4494        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4495        M 0x800023d4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003e14, (wrb) a1  <-- 0x80003e14
       0     4496        M 0x800023d8 lw      a4, 0(a1)              #; a1  = 0x80003e14, a4  <~~ Word[0x80003e14]
       0     4507        M                                           #; (lsu) a4  <-- 7
       0     4508        M 0x800023dc addi    a5, a4, 1              #; a4  = 7, (wrb) a5  <-- 8
       0     4509        M 0x800023e0 sw      a5, 0(a1)              #; a1  = 0x80003e14, 8 ~~> Word[0x80003e14]
       0     4510        M 0x800023e4 add     a4, a1, a4             #; a1  = 0x80003e14, a4  = 7, (wrb) a4  <-- 0x80003e1b
       0     4511        M 0x800023e8 sb      a0, 72(a4)             #; a4  = 0x80003e1b, 32 ~~> Byte[0x80003e63]
       0     4512        M 0x800023ec lw      a4, 0(a1)              #; a1  = 0x80003e14, a4  <~~ Word[0x80003e14]
       0     4533        M                                           #; (lsu) a4  <-- 8
       0     4534        M 0x800023f0 addi    a4, a4, -1020          #; a4  = 8, (wrb) a4  <-- -1012
       0     4535        M 0x800023f4 snez    a4, a4                 #; a4  = -1012, (wrb) a4  <-- 1
       0     4536        M 0x800023f8 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
       0     4537        M 0x800023fc snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
       0     4538        M 0x80002400 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4539        M 0x80002404 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80002464
       0     4543        M 0x80002464 ret                            #; ra  = 0x80001874, goto 0x80001874
       0     4548        M 0x80001874 addi    s0, s0, 1              #; s0  = 0x80003aac, (wrb) s0  <-- 0x80003aad
       0     4549        M 0x80001878 addi    s10, s10, 1            #; s10 = 0x80003aae, (wrb) s10 <-- 0x80003aaf
       0     4550        M 0x8000187c mv      s9, s1                 #; s1  = 8, (wrb) s9  <-- 8
       0     4551        M 0x80001880 lbu     a0, 0(s0)              #; s0  = 0x80003aad, a0  <~~ Byte[0x80003aad]
       0     4562        M                                           #; (lsu) a0  <-- 37
       0     4563        M 0x80001884 bnez    a0, pc - 40            #; a0  = 37, taken, goto 0x8000185c
       0     4564        M 0x8000185c beq     a0, s6, pc + 48        #; a0  = 37, s6  = 37, taken, goto 0x8000188c
       0     4565        M 0x8000188c li      s0, 0                  #; (wrb) s0  <-- 0
       0     4578        M 0x80001890 j       pc + 0x10              #; goto 0x800018a0
       0     4590        M 0x800018a0 lbu     a0, -1(s10)            #; s10 = 0x80003aaf, a0  <~~ Byte[0x80003aae]
       0     4601        M                                           #; (lsu) a0  <-- 102
       0     4602        M 0x800018a4 addi    a1, a0, -32            #; a0  = 102, (wrb) a1  <-- 70
       0     4603        M 0x800018a8 bltu    s11, a1, pc + 56       #; s11 = 16, a1  = 70, taken, goto 0x800018e0
       0     4615        M 0x800018e0 addi    a1, a0, -48            #; a0  = 102, (wrb) a1  <-- 54
       0     4616        M 0x800018e4 andi    a2, a1, 255            #; a1  = 54, (wrb) a2  <-- 54
       0     4617        M 0x800018e8 addi    a1, s10, -1            #; s10 = 0x80003aaf, (wrb) a1  <-- 0x80003aae
       0     4618        M 0x800018ec li      a3, 9                  #; (wrb) a3  <-- 9
       0     4627        M 0x800018f0 bltu    a3, a2, pc + 124       #; a3  = 9, a2  = 54, taken, goto 0x8000196c
       0     4650        M 0x8000196c li      a2, 42                 #; (wrb) a2  <-- 42
       0     4662        M 0x80001970 bne     a0, a2, pc + 80        #; a0  = 102, a2  = 42, taken, goto 0x800019c0
       0     4685        M 0x800019c0 li      s6, 0                  #; (wrb) s6  <-- 0
       0     4686        M 0x800019c4 mv      s10, a1                #; a1  = 0x80003aae, (wrb) s10 <-- 0x80003aae
       0     4687        M 0x800019c8 beq     a0, s7, pc - 164       #; a0  = 102, s7  = 46, not taken
       0     4688        M 0x800019cc li      s7, 0                  #; (wrb) s7  <-- 0
       0     4708        M 0x800019d0 j       pc + 0xc               #; goto 0x800019dc
       0     4709        M 0x800019dc addi    a1, a0, -104           #; a0  = 102, (wrb) a1  <-- -2
       0     4721        M 0x800019e0 srli    a2, a1, 1              #; a1  = -2, (wrb) a2  <-- 0x7fffffff
       0     4722        M 0x800019e4 slli    a1, a1, 31             #; a1  = -2, (wrb) a1  <-- 0
       0     4723        M 0x800019e8 or      a1, a1, a2             #; a1  = 0, a2  = 0x7fffffff, (wrb) a1  <-- 0x7fffffff
       0     4724        M 0x800019ec li      a2, 9                  #; (wrb) a2  <-- 9
       0     4733        M 0x800019f0 bltu    a2, a1, pc + 100       #; a2  = 9, a1  = 0x7fffffff, taken, goto 0x80001a54
       0     4756        M 0x80001a54 addi    a1, a0, -37            #; a0  = 102, (wrb) a1  <-- 65
       0     4757        M 0x80001a58 li      a2, 83                 #; (wrb) a2  <-- 83
       0     4758        M 0x80001a5c bltu    a2, a1, pc + 264       #; a2  = 83, a1  = 65, not taken
       0     4768        M 0x80001a60 slli    a1, a1, 2              #; a1  = 65, (wrb) a1  <-- 260
       0     4769        M 0x80001a64 auipc   a2, 0x2                #; (wrb) a2  <-- 0x80003a64
       0     4770        M 0x80001a68 addi    a2, a2, 192            #; a2  = 0x80003a64, (wrb) a2  <-- 0x80003b24
       0     4771        M 0x80001a6c add     a1, a1, a2             #; a1  = 260, a2  = 0x80003b24, (wrb) a1  <-- 0x80003c28
       0     4780        M 0x80001a70 lw      a2, 0(a1)              #; a1  = 0x80003c28, a2  <~~ Word[0x80003c28]
       0     4781        M 0x80001a74 li      a1, 8                  #; (wrb) a1  <-- 8
       0     4782        M 0x80001a78 li      s8, 16                 #; (wrb) s8  <-- 16
       0     4791        M                                           #; (lsu) a2  <-- 0x80001aac
       0     4792        M 0x80001a7c jr      a2                     #; a2  = 0x80001aac, goto 0x80001aac
       0     4804        M 0x80001aac li      a1, 70                 #; (wrb) a1  <-- 70
       0     4816        M 0x80001ab0 bne     a0, a1, pc + 8         #; a0  = 102, a1  = 70, taken, goto 0x80001ab8
       0     4817        M 0x80001ab8 addi    a0, s3, 7              #; s3  = 0x0011fc34, (wrb) a0  <-- 0x0011fc3b
       0     4818        M 0x80001abc andi    a0, a0, -8             #; a0  = 0x0011fc3b, (wrb) a0  <-- 0x0011fc38
       0     4829        M 0x80001ac4 addi    s3, a0, 8              #; a0  = 0x0011fc38, (wrb) s3  <-- 0x0011fc40
       0     4830        M 0x80001ac8 mv      a0, s2                 #; s2  = 0x800023bc, (wrb) a0  <-- 0x800023bc
                         M 0x80001ac0 fld     fa0, 0(a0)             #; fa0  <~~ Doub[0x0011fc38]
       0     4831        M 0x80001acc mv      a1, s4                 #; s4  = 0x0011fc27, (wrb) a1  <-- 0x0011fc27
                         M                                           #; (f:lsu) fa0  <-- 0.0
       0     4840        M 0x80001ad0 mv      a2, s9                 #; s9  = 8, (wrb) a2  <-- 8
       0     4841        M 0x80001ad4 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     4842        M 0x80001ad8 mv      a4, s7                 #; s7  = 0, (wrb) a4  <-- 0
       0     4843        M 0x80001adc mv      a5, s6                 #; s6  = 0, (wrb) a5  <-- 0
       0     4852        M 0x80001ae0 mv      a6, s0                 #; s0  = 0, (wrb) a6  <-- 0
       0     4853        M 0x80001ae4 auipc   ra, 0x1                #; (wrb) ra  <-- 0x80002ae4
       0     4854        M 0x80001ae8 jalr    ra, ra, -1656          #; ra  = 0x80002ae4, (wrb) ra  <-- 0x80001aec, goto 0x8000246c
       0     4866        M 0x8000246c addi    sp, sp, -112           #; sp  = 0x0011fbb0, (wrb) sp  <-- 0x0011fb40
       0     4869        M 0x80002470 sw      ra, 108(sp)            #; sp  = 0x0011fb40, 0x80001aec ~~> Word[0x0011fbac]
       0     4870        M 0x80002474 sw      s0, 104(sp)            #; sp  = 0x0011fb40, 0 ~~> Word[0x0011fba8]
       0     4871        M 0x80002478 sw      s1, 100(sp)            #; sp  = 0x0011fb40, 8 ~~> Word[0x0011fba4]
       0     4872        M 0x8000247c sw      s2, 96(sp)             #; sp  = 0x0011fb40, 0x800023bc ~~> Word[0x0011fba0]
       0     4881        M 0x80002480 sw      s3, 92(sp)             #; sp  = 0x0011fb40, 0x0011fc40 ~~> Word[0x0011fb9c]
       0     4882        M 0x80002484 sw      s4, 88(sp)             #; sp  = 0x0011fb40, 0x0011fc27 ~~> Word[0x0011fb98]
       0     4883        M 0x80002488 sw      s5, 84(sp)             #; sp  = 0x0011fb40, -1 ~~> Word[0x0011fb94]
       0     4884        M 0x8000248c sw      s6, 80(sp)             #; sp  = 0x0011fb40, 0 ~~> Word[0x0011fb90]
       0     4893        M 0x80002490 sw      s7, 76(sp)             #; sp  = 0x0011fb40, 0 ~~> Word[0x0011fb8c]
       0     4894        M 0x80002494 sw      s8, 72(sp)             #; sp  = 0x0011fb40, 16 ~~> Word[0x0011fb88]
       0     4895        M 0x80002498 sw      s9, 68(sp)             #; sp  = 0x0011fb40, 8 ~~> Word[0x0011fb84]
       0     4896        M 0x8000249c sw      s10, 64(sp)            #; sp  = 0x0011fb40, 0x80003aae ~~> Word[0x0011fb80]
       0     4907        M 0x800024a0 fsd     fs0, 56(sp)            #; 0.0 ~~> Doub[0x0011fb78]
       0     4908        M 0x800024ac auipc   s1, 0x2                #; (wrb) s1  <-- 0x800044ac
                         M 0x800024a4 fsd     fs1, 48(sp)            #; 0.0 ~~> Doub[0x0011fb70]
       0     4909        M 0x800024a8 fsd     fs2, 40(sp)            #; 0.0 ~~> Doub[0x0011fb68]
       0     4917        M 0x800024b0 addi    s1, s1, -1860          #; s1  = 0x800044ac, (wrb) s1  <-- 0x80003d68
       0     4920        M 0x800024bc mv      s5, a6                 #; a6  = 0, (wrb) s5  <-- 0
                         M 0x800024b4 fld     ft0, 0(s1)             #; ft0  <~~ Doub[0x80003d68]
       0     4929        M 0x800024c0 mv      s2, a5                 #; a5  = 0, (wrb) s2  <-- 0
                         M                                           #; (f:lsu) ft0  <-- -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     4930        M 0x800024c4 mv      s3, a3                 #; a3  = -1, (wrb) s3  <-- -1
                         M 0x800024b8 fle.d   s1, ft0, fa0           #; ft0  = -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000, fa0  = 0.0
       0     4931        M 0x800024c8 mv      s4, a2                 #; a2  = 8, (wrb) s4  <-- 8
       0     4932        M 0x800024cc mv      s6, a1                 #; a1  = 0x0011fc27, (wrb) s6  <-- 0x0011fc27
       0     4941        M 0x800024d0 mv      s7, a0                 #; a0  = 0x800023bc, (wrb) s7  <-- 0x800023bc
       0     4942        M 0x800024d4 bnez    s1, pc + 240           #; s1  = 1, taken, goto 0x800025c4
       0     4965        M 0x800025c8 auipc   a0, 0x1                #; (wrb) a0  <-- 0x800035c8
       0     4966        M 0x800025cc addi    a0, a0, 1960           #; a0  = 0x800035c8, (wrb) a0  <-- 0x80003d70
                         M 0x800025c4 fsgnj.d fs0, fa0, fa0          #; fa0  = 0.0, fa0  = 0.0
       0     4967        M                                           #; (f:fpu) fs0  <-- 0.0
       0     4978        M 0x800025d0 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003d70]
       0     4987        M                                           #; (f:lsu) ft0  <-- 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     4988        M 0x800025d4 fle.d   a0, fa0, ft0           #; fa0  = 0.0, ft0  = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     4990        M                                           #; (acc) t3  <-- 0x00051e63
       0     4991        M 0x800025d8 bnez    a0, pc + 28            #; a0  = 1, taken, goto 0x800025f4
       0     5003        M 0x800025f4 auipc   a0, 0x1                #; (wrb) a0  <-- 0x800035f4
       0     5004        M 0x800025f8 addi    a0, a0, 1924           #; a0  = 0x800035f4, (wrb) a0  <-- 0x80003d78
       0     5007        M 0x800025fc fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003d78]
       0     5015        M 0x80002600 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80003600
       0     5016        M 0x80002604 addi    a0, a0, 1920           #; a0  = 0x80003600, (wrb) a0  <-- 0x80003d80
                         M                                           #; (f:lsu) ft0  <-- 1000000000.0000000
       0     5019        M 0x80002608 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80003d80]
       0     5020        M 0x8000260c fle.d   a0, fs0, ft0           #; fs0  = 0.0, ft0  = 1000000000.0000000
       0     5028        M                                           #; (f:lsu) ft1  <-- -1000000000.0000000
       0     5029        M 0x80002610 fle.d   a1, ft1, fs0           #; ft1  = -1000000000.0000000, fs0  = 0.0
       0     5031        M                                           #; (acc) a0  <-- 0x00b57533
       0     5032        M 0x80002614 and     a0, a0, a1             #; a0  = 1, a1  = 1, (wrb) a0  <-- 1
       0     5033        M 0x80002618 bnez    a0, pc + 252           #; a0  = 1, taken, goto 0x80002714
       0     5050        M 0x80002714 andi    a0, s5, 1024           #; s5  = 0, (wrb) a0  <-- 0
       0     5051        M 0x80002718 li      s8, 6                  #; (wrb) s8  <-- 6
       0     5052        M 0x8000271c beqz    a0, pc + 8             #; a0  = 0, taken, goto 0x80002724
       0     5062        M 0x80002724 li      a0, 10                 #; (wrb) a0  <-- 10
       0     5064        M 0x8000272c bltu    s8, a0, pc + 56        #; s8  = 6, a0  = 10, taken, goto 0x80002764
       0     5065        M 0x80002728 fsgnjx.d fs2, fs0, fs0         #; fs0  = 0.0, fs0  = 0.0
       0     5066        M                                           #; (f:fpu) fs2  <-- 0.0
       0     5085        M 0x80002764 li      s0, 0                  #; (wrb) s0  <-- 0
       0     5086        M 0x80002768 slli    a0, s8, 3              #; s8  = 6, (wrb) a0  <-- 48
       0     5087        M 0x8000276c auipc   a1, 0x1                #; (wrb) a1  <-- 0x8000376c
       0     5097        M 0x80002770 addi    a1, a1, 1292           #; a1  = 0x8000376c, (wrb) a1  <-- 0x80003c78
       0     5098        M 0x80002774 add     a0, a0, a1             #; a0  = 48, a1  = 0x80003c78, (wrb) a0  <-- 0x80003ca8
       0     5101        M 0x80002778 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80003ca8]
       0     5102        M 0x8000277c fcvt.w.d s1, fs2               #; fs2  = 0.0
       0     5110        M 0x80002780 fcvt.d.w ft0, s1               #; ac1  = 0, (f:lsu) ft1  <-- 1000000.0000000
       0     5111        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5112        M 0x8000278c auipc   a0, 0x1                #; (wrb) a0  <-- 0x8000378c
                         M 0x80002784 fsub.d  ft0, fs2, ft0          #; fs2  = 0.0, ft0  = 0.0
       0     5115        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5116        M 0x80002788 fmul.d  ft2, ft1, ft0          #; ft1  = 1000000.0000000, ft0  = 0.0
       0     5119        M                                           #; (f:fpu) ft2  <-- 0.0
       0     5121        M 0x80002790 addi    a0, a0, 1532           #; a0  = 0x8000378c, (wrb) a0  <-- 0x80003d88
       0     5124        M 0x80002794 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003d88]
       0     5125        M 0x80002798 fcvt.wu.d a0, ft2              #; ft2  = 0.0
       0     5127        M                                           #; (acc) gp  <-- 0xd21501d3
       0     5129        M 0x8000279c fcvt.d.wu ft3, a0              #; ac1  = 0
       0     5130        M                                           #; (f:fpu) ft3  <-- 0.0
       0     5133        M                                           #; (f:lsu) ft0  <-- 0.5
       0     5135        M 0x800027a0 fsub.d  ft2, ft2, ft3          #; ft2  = 0.0, ft3  = 0.0
       0     5138        M                                           #; (f:fpu) ft2  <-- 0.0
       0     5139        M 0x800027a4 fle.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
       0     5142        M 0x800027a8 bnez    a1, pc + 32            #; a1  = 1, taken, goto 0x800027c8
       0     5157        M 0x800027c8 flt.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
       0     5159        M                                           #; (acc) s4  <-- 0x00059a63
       0     5160        M 0x800027cc bnez    a1, pc + 20            #; a1  = 1, taken, goto 0x800027e0
       0     5180        M 0x800027e4 beqz    s8, pc + 216           #; s8  = 6, not taken
                         M 0x800027e0 fcvt.d.w fs1, zero             #; ac1  = 0
       0     5181        M 0x800027e8 li      a2, 0                  #; (wrb) a2  <-- 0
                         M                                           #; (f:fpu) fs1  <-- 0.0
       0     5182        M 0x800027ec addi    a1, sp, 8              #; sp  = 0x0011fb40, (wrb) a1  <-- 0x0011fb48
       0     5191        M 0x800027f0 add     t1, a1, s0             #; a1  = 0x0011fb48, s0  = 0, (wrb) t1  <-- 0x0011fb48
       0     5192        M 0x800027f4 li      t0, 32                 #; (wrb) t0  <-- 32
       0     5193        M 0x800027f8 sub     a4, t0, s0             #; t0  = 32, s0  = 0, (wrb) a4  <-- 32
       0     5194        M 0x800027fc lui     a1, 0xccccd            #; (wrb) a1  <-- 0xccccd000
       0     5203        M 0x80002800 addi    t2, a1, -819           #; a1  = 0xccccd000, (wrb) t2  <-- 0xcccccccd
       0     5204        M 0x80002804 li      a6, 10                 #; (wrb) a6  <-- 10
       0     5205        M 0x80002808 li      a7, 9                  #; (wrb) a7  <-- 9
       0     5206        M 0x8000280c beq     a4, a2, pc + 200       #; a4  = 32, a2  = 0, not taken
       0     5215        M 0x80002810 mv      a1, a0                 #; a0  = 0, (wrb) a1  <-- 0
       0     5216        M 0x80002814 mulhu   a0, a0, t2             #; a0  = 0, t2  = 0xcccccccd
       0     5219        M                                           #; (acc) a0  <-- 0x00355513
       0     5220        M 0x80002818 srli    a0, a0, 3              #; a0  = 0, (wrb) a0  <-- 0
       0     5221        M 0x8000281c mul     a3, a0, a6             #; a0  = 0, a6  = 10
       0     5227        M 0x80002820 sub     a3, a1, a3             #; a1  = 0, a3  = 0, (wrb) a3  <-- 0
       0     5228        M 0x80002824 ori     a3, a3, 48             #; a3  = 0, (wrb) a3  <-- 48
       0     5229        M 0x80002828 add     a5, t1, a2             #; t1  = 0x0011fb48, a2  = 0, (wrb) a5  <-- 0x0011fb48
       0     5230        M 0x8000282c sb      a3, 0(a5)              #; a5  = 0x0011fb48, 48 ~~> Byte[0x0011fb48]
       0     5239        M 0x80002830 addi    a2, a2, 1              #; a2  = 0, (wrb) a2  <-- 1
       0     5240        M 0x80002834 bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 0, not taken
       0     5241        M 0x80002838 add     a0, s0, a2             #; s0  = 0, a2  = 1, (wrb) a0  <-- 1
       0     5242        M 0x8000283c addi    a1, a0, -1             #; a0  = 1, (wrb) a1  <-- 0
       0     5253        M 0x80002840 li      a3, 30                 #; (wrb) a3  <-- 30
       0     5254        M 0x80002844 sltu    a3, a3, a1             #; a3  = 30, a1  = 0, (wrb) a3  <-- 0
       0     5255        M 0x80002848 xor     a4, s8, a2             #; s8  = 6, a2  = 1, (wrb) a4  <-- 7
       0     5256        M 0x8000284c seqz    a4, a4                 #; a4  = 7, (wrb) a4  <-- 0
       0     5265        M 0x80002850 or      a3, a3, a4             #; a3  = 0, a4  = 0, (wrb) a3  <-- 0
       0     5266        M 0x80002854 bnez    a3, pc + 136           #; a3  = 0, not taken
       0     5267        M 0x80002858 addi    a0, sp, 8              #; sp  = 0x0011fb40, (wrb) a0  <-- 0x0011fb48
       0     5268        M 0x8000285c add     a0, a0, s0             #; a0  = 0x0011fb48, s0  = 0, (wrb) a0  <-- 0x0011fb48
       0     5277        M 0x80002860 not     a1, a2                 #; a2  = 1, (wrb) a1  <-- -2
       0     5278        M 0x80002864 add     s8, a1, s8             #; a1  = -2, s8  = 6, (wrb) s8  <-- 4
       0     5279        M 0x80002868 add     s0, s0, a2             #; s0  = 0, a2  = 1, (wrb) s0  <-- 1
       0     5280        M 0x8000286c li      a1, 31                 #; (wrb) a1  <-- 31
       0     5289        M 0x80002870 sub     a3, a1, s0             #; a1  = 31, s0  = 1, (wrb) a3  <-- 30
       0     5290        M 0x80002874 add     a0, a0, a2             #; a0  = 0x0011fb48, a2  = 1, (wrb) a0  <-- 0x0011fb49
       0     5291        M 0x80002878 mv      a1, s8                 #; s8  = 4, (wrb) a1  <-- 4
       0     5292        M 0x8000287c bltu    s8, a3, pc + 8         #; s8  = 4, a3  = 30, taken, goto 0x80002884
       0     5301        M 0x80002884 addi    a2, a1, 1              #; a1  = 4, (wrb) a2  <-- 5
       0     5302        M 0x80002888 li      a1, 48                 #; (wrb) a1  <-- 48
       0     5303        M 0x8000288c auipc   ra, 0xffffe            #; (wrb) ra  <-- 0x8000088c
       0     5313        M 0x80002890 jalr    ra, ra, -820           #; ra  = 0x8000088c, (wrb) ra  <-- 0x80002894, goto 0x80000558
       0     5336        M 0x80000558 li      t1, 15                 #; (wrb) t1  <-- 15
       0     5337        M 0x8000055c mv      a4, a0                 #; a0  = 0x0011fb49, (wrb) a4  <-- 0x0011fb49
       0     5348        M 0x80000560 bgeu    t1, a2, pc + 60        #; t1  = 15, a2  = 5, taken, goto 0x8000059c
       0     5371        M 0x8000059c sub     a3, t1, a2             #; t1  = 15, a2  = 5, (wrb) a3  <-- 10
       0     5383        M 0x800005a0 slli    a3, a3, 2              #; a3  = 10, (wrb) a3  <-- 40
       0     5384        M 0x800005a4 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800005a4
       0     5385        M 0x800005a8 add     a3, a3, t0             #; a3  = 40, t0  = 0x800005a4, (wrb) a3  <-- 0x800005cc
       0     5386        M 0x800005ac jalr    zero, a3, 12           #; a3  = 0x800005cc, goto 0x800005d8
       0     5406        M 0x800005d8 sb      a1, 4(a4)              #; a4  = 0x0011fb49, 48 ~~> Byte[0x0011fb4d]
       0     5407        M 0x800005dc sb      a1, 3(a4)              #; a4  = 0x0011fb49, 48 ~~> Byte[0x0011fb4c]
       0     5418        M 0x800005e0 sb      a1, 2(a4)              #; a4  = 0x0011fb49, 48 ~~> Byte[0x0011fb4b]
       0     5419        M 0x800005e4 sb      a1, 1(a4)              #; a4  = 0x0011fb49, 48 ~~> Byte[0x0011fb4a]
       0     5420        M 0x800005e8 sb      a1, 0(a4)              #; a4  = 0x0011fb49, 48 ~~> Byte[0x0011fb49]
       0     5421        M 0x800005ec ret                            #; ra  = 0x80002894, goto 0x80002894
       0     5432        M 0x80002894 li      a0, 0                  #; (wrb) a0  <-- 0
       0     5433        M 0x80002898 add     a1, s0, a0             #; s0  = 1, a0  = 0, (wrb) a1  <-- 1
       0     5434        M 0x8000289c sltiu   a1, a1, 31             #; a1  = 1, (wrb) a1  <-- 1
       0     5435        M 0x800028a0 xor     a2, s8, a0             #; s8  = 4, a0  = 0, (wrb) a2  <-- 4
       0     5436        M 0x800028a4 snez    a2, a2                 #; a2  = 4, (wrb) a2  <-- 1
       0     5437        M 0x800028a8 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     5438        M 0x800028ac addi    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0     5447        M 0x800028b0 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80002898
       0     5448        M 0x80002898 add     a1, s0, a0             #; s0  = 1, a0  = 1, (wrb) a1  <-- 2
       0     5449        M 0x8000289c sltiu   a1, a1, 31             #; a1  = 2, (wrb) a1  <-- 1
       0     5450        M 0x800028a0 xor     a2, s8, a0             #; s8  = 4, a0  = 1, (wrb) a2  <-- 5
       0     5451        M 0x800028a4 snez    a2, a2                 #; a2  = 5, (wrb) a2  <-- 1
       0     5452        M 0x800028a8 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     5453        M 0x800028ac addi    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 2
       0     5454        M 0x800028b0 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80002898
       0     5455        M 0x80002898 add     a1, s0, a0             #; s0  = 1, a0  = 2, (wrb) a1  <-- 3
       0     5456        M 0x8000289c sltiu   a1, a1, 31             #; a1  = 3, (wrb) a1  <-- 1
       0     5457        M 0x800028a0 xor     a2, s8, a0             #; s8  = 4, a0  = 2, (wrb) a2  <-- 6
       0     5458        M 0x800028a4 snez    a2, a2                 #; a2  = 6, (wrb) a2  <-- 1
       0     5459        M 0x800028a8 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     5460        M 0x800028ac addi    a0, a0, 1              #; a0  = 2, (wrb) a0  <-- 3
       0     5461        M 0x800028b0 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80002898
       0     5462        M 0x80002898 add     a1, s0, a0             #; s0  = 1, a0  = 3, (wrb) a1  <-- 4
       0     5463        M 0x8000289c sltiu   a1, a1, 31             #; a1  = 4, (wrb) a1  <-- 1
       0     5464        M 0x800028a0 xor     a2, s8, a0             #; s8  = 4, a0  = 3, (wrb) a2  <-- 7
       0     5465        M 0x800028a4 snez    a2, a2                 #; a2  = 7, (wrb) a2  <-- 1
       0     5466        M 0x800028a8 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     5467        M 0x800028ac addi    a0, a0, 1              #; a0  = 3, (wrb) a0  <-- 4
       0     5468        M 0x800028b0 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80002898
       0     5469        M 0x80002898 add     a1, s0, a0             #; s0  = 1, a0  = 4, (wrb) a1  <-- 5
       0     5470        M 0x8000289c sltiu   a1, a1, 31             #; a1  = 5, (wrb) a1  <-- 1
       0     5471        M 0x800028a0 xor     a2, s8, a0             #; s8  = 4, a0  = 4, (wrb) a2  <-- 0
       0     5472        M 0x800028a4 snez    a2, a2                 #; a2  = 0, (wrb) a2  <-- 0
       0     5473        M 0x800028a8 and     a2, a1, a2             #; a1  = 1, a2  = 0, (wrb) a2  <-- 0
       0     5474        M 0x800028ac addi    a0, a0, 1              #; a0  = 4, (wrb) a0  <-- 5
       0     5475        M 0x800028b0 bnez    a2, pc - 24            #; a2  = 0, not taken
       0     5476        M 0x800028b4 add     a0, s0, a0             #; s0  = 1, a0  = 5, (wrb) a0  <-- 6
       0     5477        M 0x800028b8 j       pc + 0x28              #; goto 0x800028e0
       0     5488        M 0x800028e0 beqz    a1, pc + 28            #; a1  = 1, not taken
       0     5489        M 0x800028e4 addi    s0, a0, 1              #; a0  = 6, (wrb) s0  <-- 7
       0     5490        M 0x800028e8 addi    a1, sp, 8              #; sp  = 0x0011fb40, (wrb) a1  <-- 0x0011fb48
       0     5491        M 0x800028ec add     a0, a1, a0             #; a1  = 0x0011fb48, a0  = 6, (wrb) a0  <-- 0x0011fb4e
       0     5500        M 0x800028f0 li      a1, 46                 #; (wrb) a1  <-- 46
       0     5501        M 0x800028f4 sb      a1, 0(a0)              #; a0  = 0x0011fb4e, 46 ~~> Byte[0x0011fb4e]
       0     5502        M 0x800028f8 j       pc + 0x8               #; goto 0x80002900
       0     5512        M 0x80002900 li      a0, 32                 #; (wrb) a0  <-- 32
       0     5513        M 0x80002904 mv      t0, s0                 #; s0  = 7, (wrb) t0  <-- 7
       0     5514        M 0x80002908 bltu    a0, s0, pc + 8         #; a0  = 32, s0  = 7, not taken
       0     5515        M 0x8000290c li      t0, 32                 #; (wrb) t0  <-- 32
       0     5525        M 0x80002914 lui     a0, 0x66666            #; (wrb) a0  <-- 0x66666000
                         M 0x80002910 flt.d   s9, fs0, fs1           #; fs0  = 0.0, fs1  = 0.0
       0     5526        M 0x80002918 addi    a1, a0, 1639           #; a0  = 0x66666000, (wrb) a1  <-- 0x66666667
       0     5527        M 0x8000291c li      a6, 10                 #; (wrb) a6  <-- 10
       0     5536        M 0x80002920 addi    a3, sp, 8              #; sp  = 0x0011fb40, (wrb) a3  <-- 0x0011fb48
       0     5537        M 0x80002924 li      a4, 18                 #; (wrb) a4  <-- 18
       0     5538        M 0x80002928 beq     t0, s0, pc + 64        #; t0  = 32, s0  = 7, not taken
       0     5539        M 0x8000292c mulh    a0, s1, a1             #; s1  = 0, a1  = 0x66666667
       0     5548        M 0x80002930 srli    a5, a0, 31             #; a0  = 0, (wrb) a5  <-- 0
       0     5549        M 0x80002934 srai    a0, a0, 2              #; a0  = 0, (wrb) a0  <-- 0
       0     5550        M 0x80002938 add     a0, a0, a5             #; a0  = 0, a5  = 0, (wrb) a0  <-- 0
       0     5551        M 0x8000293c mul     a5, a0, a6             #; a0  = 0, a6  = 10
       0     5560        M 0x80002940 sub     a5, s1, a5             #; s1  = 0, a5  = 0, (wrb) a5  <-- 0
       0     5561        M 0x80002944 addi    a5, a5, 48             #; a5  = 0, (wrb) a5  <-- 48
       0     5562        M 0x80002948 addi    s8, s0, 1              #; s0  = 7, (wrb) s8  <-- 8
       0     5563        M 0x8000294c add     s0, a3, s0             #; a3  = 0x0011fb48, s0  = 7, (wrb) s0  <-- 0x0011fb4f
       0     5572        M 0x80002950 addi    a2, s1, 9              #; s1  = 0, (wrb) a2  <-- 9
       0     5573        M 0x80002954 sb      a5, 0(s0)              #; s0  = 0x0011fb4f, 48 ~~> Byte[0x0011fb4f]
       0     5574        M 0x80002958 mv      s0, s8                 #; s8  = 8, (wrb) s0  <-- 8
       0     5575        M 0x8000295c mv      s1, a0                 #; a0  = 0, (wrb) s1  <-- 0
       0     5584        M 0x80002960 bltu    a4, a2, pc - 56        #; a4  = 18, a2  = 9, not taken
       0     5585        M 0x80002964 j       pc + 0x8               #; goto 0x8000296c
       0     5586        M 0x8000296c andi    s1, s5, 3              #; s5  = 0, (wrb) s1  <-- 0
       0     5598        M 0x80002970 li      a0, 1                  #; (wrb) a0  <-- 1
       0     5599        M 0x80002974 bne     s1, a0, pc + 108       #; s1  = 0, a0  = 1, taken, goto 0x800029e0
       0     5621        M 0x800029e0 li      a0, 31                 #; (wrb) a0  <-- 31
       0     5622        M 0x800029e4 bltu    a0, s8, pc + 84        #; a0  = 31, s8  = 8, not taken
       0     5623        M 0x800029e8 beqz    s9, pc + 24            #; s9  = 0, taken, goto 0x80002a00
       0     5644        M 0x80002a00 andi    a0, s5, 4              #; s5  = 0, (wrb) a0  <-- 0
       0     5645        M 0x80002a04 bnez    a0, pc + 32            #; a0  = 0, not taken
       0     5646        M 0x80002a08 andi    a0, s5, 8              #; s5  = 0, (wrb) a0  <-- 0
       0     5647        M 0x80002a0c beqz    a0, pc + 44            #; a0  = 0, taken, goto 0x80002a38
       0     5667        M 0x80002a38 snez    a0, s1                 #; s1  = 0, (wrb) a0  <-- 0
       0     5668        M 0x80002a3c sltu    a1, s8, s2             #; s8  = 8, s2  = 0, (wrb) a1  <-- 0
       0     5679        M 0x80002a40 xori    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
       0     5680        M 0x80002a44 or      a0, a0, a1             #; a0  = 0, a1  = 1, (wrb) a0  <-- 1
       0     5681        M 0x80002a48 andi    s5, s5, 2              #; s5  = 0, (wrb) s5  <-- 0
       0     5682        M 0x80002a4c mv      s0, s4                 #; s4  = 8, (wrb) s0  <-- 8
       0     5691        M 0x80002a50 bnez    a0, pc + 44            #; a0  = 1, taken, goto 0x80002a7c
       0     5714        M 0x80002a7c srli    s5, s5, 1              #; s5  = 0, (wrb) s5  <-- 0
       0     5726        M 0x80002a80 beqz    s8, pc + 56            #; s8  = 8, not taken
       0     5727        M 0x80002a84 addi    s9, sp, 7              #; sp  = 0x0011fb40, (wrb) s9  <-- 0x0011fb47
       0     5728        M 0x80002a88 add     a0, s9, s8             #; s9  = 0x0011fb47, s8  = 8, (wrb) a0  <-- 0x0011fb4f
       0     5729        M 0x80002a8c lbu     a0, 0(a0)              #; a0  = 0x0011fb4f, a0  <~~ Byte[0x0011fb4f]
       0     5732        M                                           #; (lsu) a0  <-- 48
       0     5738        M 0x80002a90 addi    s10, s8, -1            #; s8  = 8, (wrb) s10 <-- 7
       0     5739        M 0x80002a94 addi    s1, s0, 1              #; s0  = 8, (wrb) s1  <-- 9
       0     5740        M 0x80002a98 mv      a1, s6                 #; s6  = 0x0011fc27, (wrb) a1  <-- 0x0011fc27
       0     5741        M 0x80002a9c mv      a2, s0                 #; s0  = 8, (wrb) a2  <-- 8
       0     5750        M 0x80002aa0 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     5751        M 0x80002aa4 jalr    s7                     #; s7  = 0x800023bc, (wrb) ra  <-- 0x80002aa8, goto 0x800023bc
       0     5764        M 0x800023bc beqz    a0, pc + 168           #; a0  = 48, not taken
       0     5767        M 0x800023c0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5768        M 0x800023c4 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5769        M 0x800023c8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5770        M 0x800023cc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800043cc
       0     5771        M 0x800023d0 addi    a3, a3, -1464          #; a3  = 0x800043cc, (wrb) a3  <-- 0x80003e14
       0     5772        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5773        M 0x800023d4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003e14, (wrb) a1  <-- 0x80003e14
       0     5774        M 0x800023d8 lw      a4, 0(a1)              #; a1  = 0x80003e14, a4  <~~ Word[0x80003e14]
       0     5785        M                                           #; (lsu) a4  <-- 8
       0     5786        M 0x800023dc addi    a5, a4, 1              #; a4  = 8, (wrb) a5  <-- 9
       0     5787        M 0x800023e0 sw      a5, 0(a1)              #; a1  = 0x80003e14, 9 ~~> Word[0x80003e14]
       0     5788        M 0x800023e4 add     a4, a1, a4             #; a1  = 0x80003e14, a4  = 8, (wrb) a4  <-- 0x80003e1c
       0     5789        M 0x800023e8 sb      a0, 72(a4)             #; a4  = 0x80003e1c, 48 ~~> Byte[0x80003e64]
       0     5790        M 0x800023ec lw      a4, 0(a1)              #; a1  = 0x80003e14, a4  <~~ Word[0x80003e14]
       0     5811        M                                           #; (lsu) a4  <-- 9
       0     5812        M 0x800023f0 addi    a4, a4, -1020          #; a4  = 9, (wrb) a4  <-- -1011
       0     5813        M 0x800023f4 snez    a4, a4                 #; a4  = -1011, (wrb) a4  <-- 1
       0     5814        M 0x800023f8 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     5815        M 0x800023fc snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     5816        M 0x80002400 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5817        M 0x80002404 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80002464
       0     5821        M 0x80002464 ret                            #; ra  = 0x80002aa8, goto 0x80002aa8
       0     5826        M 0x80002aa8 mv      s0, s1                 #; s1  = 9, (wrb) s0  <-- 9
       0     5827        M 0x80002aac mv      s8, s10                #; s10 = 7, (wrb) s8  <-- 7
       0     5829        M 0x80002ab0 bnez    s10, pc - 40           #; s10 = 7, taken, goto 0x80002a88
       0     5832        M 0x80002a88 add     a0, s9, s8             #; s9  = 0x0011fb47, s8  = 7, (wrb) a0  <-- 0x0011fb4e
       0     5833        M 0x80002a8c lbu     a0, 0(a0)              #; a0  = 0x0011fb4e, a0  <~~ Byte[0x0011fb4e]
       0     5835        M 0x80002a90 addi    s10, s8, -1            #; s8  = 7, (wrb) s10 <-- 6
       0     5836        M 0x80002a94 addi    s1, s0, 1              #; s0  = 9, (wrb) s1  <-- 10
       0     5837        M 0x80002a98 mv      a1, s6                 #; s6  = 0x0011fc27, (wrb) a1  <-- 0x0011fc27
       0     5838        M 0x80002a9c mv      a2, s0                 #; s0  = 9, (wrb) a2  <-- 9
       0     5839        M 0x80002aa0 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     5840        M 0x80002aa4 jalr    s7                     #; s7  = 0x800023bc, (wrb) ra  <-- 0x80002aa8, goto 0x800023bc
       0     5841        M                                           #; (lsu) a0  <-- 46
       0     5843        M 0x800023bc beqz    a0, pc + 168           #; a0  = 46, not taken
       0     5846        M 0x800023c0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5847        M 0x800023c4 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5848        M 0x800023c8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5849        M 0x800023cc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800043cc
       0     5850        M 0x800023d0 addi    a3, a3, -1464          #; a3  = 0x800043cc, (wrb) a3  <-- 0x80003e14
       0     5851        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5852        M 0x800023d4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003e14, (wrb) a1  <-- 0x80003e14
       0     5853        M 0x800023d8 lw      a4, 0(a1)              #; a1  = 0x80003e14, a4  <~~ Word[0x80003e14]
       0     5864        M                                           #; (lsu) a4  <-- 9
       0     5865        M 0x800023dc addi    a5, a4, 1              #; a4  = 9, (wrb) a5  <-- 10
       0     5866        M 0x800023e0 sw      a5, 0(a1)              #; a1  = 0x80003e14, 10 ~~> Word[0x80003e14]
       0     5867        M 0x800023e4 add     a4, a1, a4             #; a1  = 0x80003e14, a4  = 9, (wrb) a4  <-- 0x80003e1d
       0     5868        M 0x800023e8 sb      a0, 72(a4)             #; a4  = 0x80003e1d, 46 ~~> Byte[0x80003e65]
       0     5869        M 0x800023ec lw      a4, 0(a1)              #; a1  = 0x80003e14, a4  <~~ Word[0x80003e14]
       0     5890        M                                           #; (lsu) a4  <-- 10
       0     5891        M 0x800023f0 addi    a4, a4, -1020          #; a4  = 10, (wrb) a4  <-- -1010
       0     5892        M 0x800023f4 snez    a4, a4                 #; a4  = -1010, (wrb) a4  <-- 1
       0     5893        M 0x800023f8 addi    a0, a0, -10            #; a0  = 46, (wrb) a0  <-- 36
       0     5894        M 0x800023fc snez    a0, a0                 #; a0  = 36, (wrb) a0  <-- 1
       0     5895        M 0x80002400 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5896        M 0x80002404 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80002464
       0     5900        M 0x80002464 ret                            #; ra  = 0x80002aa8, goto 0x80002aa8
       0     5905        M 0x80002aa8 mv      s0, s1                 #; s1  = 10, (wrb) s0  <-- 10
       0     5906        M 0x80002aac mv      s8, s10                #; s10 = 6, (wrb) s8  <-- 6
       0     5908        M 0x80002ab0 bnez    s10, pc - 40           #; s10 = 6, taken, goto 0x80002a88
       0     5911        M 0x80002a88 add     a0, s9, s8             #; s9  = 0x0011fb47, s8  = 6, (wrb) a0  <-- 0x0011fb4d
       0     5912        M 0x80002a8c lbu     a0, 0(a0)              #; a0  = 0x0011fb4d, a0  <~~ Byte[0x0011fb4d]
       0     5914        M 0x80002a90 addi    s10, s8, -1            #; s8  = 6, (wrb) s10 <-- 5
       0     5915        M 0x80002a94 addi    s1, s0, 1              #; s0  = 10, (wrb) s1  <-- 11
       0     5916        M 0x80002a98 mv      a1, s6                 #; s6  = 0x0011fc27, (wrb) a1  <-- 0x0011fc27
       0     5917        M 0x80002a9c mv      a2, s0                 #; s0  = 10, (wrb) a2  <-- 10
       0     5918        M 0x80002aa0 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     5919        M 0x80002aa4 jalr    s7                     #; s7  = 0x800023bc, (wrb) ra  <-- 0x80002aa8, goto 0x800023bc
       0     5920        M                                           #; (lsu) a0  <-- 48
       0     5922        M 0x800023bc beqz    a0, pc + 168           #; a0  = 48, not taken
       0     5925        M 0x800023c0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5926        M 0x800023c4 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5927        M 0x800023c8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5928        M 0x800023cc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800043cc
       0     5929        M 0x800023d0 addi    a3, a3, -1464          #; a3  = 0x800043cc, (wrb) a3  <-- 0x80003e14
       0     5930        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5931        M 0x800023d4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003e14, (wrb) a1  <-- 0x80003e14
       0     5932        M 0x800023d8 lw      a4, 0(a1)              #; a1  = 0x80003e14, a4  <~~ Word[0x80003e14]
       0     5943        M                                           #; (lsu) a4  <-- 10
       0     5944        M 0x800023dc addi    a5, a4, 1              #; a4  = 10, (wrb) a5  <-- 11
       0     5945        M 0x800023e0 sw      a5, 0(a1)              #; a1  = 0x80003e14, 11 ~~> Word[0x80003e14]
       0     5946        M 0x800023e4 add     a4, a1, a4             #; a1  = 0x80003e14, a4  = 10, (wrb) a4  <-- 0x80003e1e
       0     5947        M 0x800023e8 sb      a0, 72(a4)             #; a4  = 0x80003e1e, 48 ~~> Byte[0x80003e66]
       0     5948        M 0x800023ec lw      a4, 0(a1)              #; a1  = 0x80003e14, a4  <~~ Word[0x80003e14]
       0     5969        M                                           #; (lsu) a4  <-- 11
       0     5970        M 0x800023f0 addi    a4, a4, -1020          #; a4  = 11, (wrb) a4  <-- -1009
       0     5971        M 0x800023f4 snez    a4, a4                 #; a4  = -1009, (wrb) a4  <-- 1
       0     5972        M 0x800023f8 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     5973        M 0x800023fc snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     5974        M 0x80002400 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5975        M 0x80002404 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80002464
       0     5979        M 0x80002464 ret                            #; ra  = 0x80002aa8, goto 0x80002aa8
       0     5984        M 0x80002aa8 mv      s0, s1                 #; s1  = 11, (wrb) s0  <-- 11
       0     5985        M 0x80002aac mv      s8, s10                #; s10 = 5, (wrb) s8  <-- 5
       0     5987        M 0x80002ab0 bnez    s10, pc - 40           #; s10 = 5, taken, goto 0x80002a88
       0     5990        M 0x80002a88 add     a0, s9, s8             #; s9  = 0x0011fb47, s8  = 5, (wrb) a0  <-- 0x0011fb4c
       0     5991        M 0x80002a8c lbu     a0, 0(a0)              #; a0  = 0x0011fb4c, a0  <~~ Byte[0x0011fb4c]
       0     5993        M 0x80002a90 addi    s10, s8, -1            #; s8  = 5, (wrb) s10 <-- 4
       0     5994        M 0x80002a94 addi    s1, s0, 1              #; s0  = 11, (wrb) s1  <-- 12
       0     5995        M 0x80002a98 mv      a1, s6                 #; s6  = 0x0011fc27, (wrb) a1  <-- 0x0011fc27
       0     5996        M 0x80002a9c mv      a2, s0                 #; s0  = 11, (wrb) a2  <-- 11
       0     5997        M 0x80002aa0 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     5998        M 0x80002aa4 jalr    s7                     #; s7  = 0x800023bc, (wrb) ra  <-- 0x80002aa8, goto 0x800023bc
       0     5999        M                                           #; (lsu) a0  <-- 48
       0     6001        M 0x800023bc beqz    a0, pc + 168           #; a0  = 48, not taken
       0     6004        M 0x800023c0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6005        M 0x800023c4 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     6006        M 0x800023c8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     6007        M 0x800023cc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800043cc
       0     6008        M 0x800023d0 addi    a3, a3, -1464          #; a3  = 0x800043cc, (wrb) a3  <-- 0x80003e14
       0     6009        M                                           #; (acc) a1  <-- 0x00d605b3
       0     6010        M 0x800023d4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003e14, (wrb) a1  <-- 0x80003e14
       0     6011        M 0x800023d8 lw      a4, 0(a1)              #; a1  = 0x80003e14, a4  <~~ Word[0x80003e14]
       0     6022        M                                           #; (lsu) a4  <-- 11
       0     6023        M 0x800023dc addi    a5, a4, 1              #; a4  = 11, (wrb) a5  <-- 12
       0     6024        M 0x800023e0 sw      a5, 0(a1)              #; a1  = 0x80003e14, 12 ~~> Word[0x80003e14]
       0     6025        M 0x800023e4 add     a4, a1, a4             #; a1  = 0x80003e14, a4  = 11, (wrb) a4  <-- 0x80003e1f
       0     6026        M 0x800023e8 sb      a0, 72(a4)             #; a4  = 0x80003e1f, 48 ~~> Byte[0x80003e67]
       0     6027        M 0x800023ec lw      a4, 0(a1)              #; a1  = 0x80003e14, a4  <~~ Word[0x80003e14]
       0     6048        M                                           #; (lsu) a4  <-- 12
       0     6049        M 0x800023f0 addi    a4, a4, -1020          #; a4  = 12, (wrb) a4  <-- -1008
       0     6050        M 0x800023f4 snez    a4, a4                 #; a4  = -1008, (wrb) a4  <-- 1
       0     6051        M 0x800023f8 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     6052        M 0x800023fc snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     6053        M 0x80002400 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     6054        M 0x80002404 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80002464
       0     6058        M 0x80002464 ret                            #; ra  = 0x80002aa8, goto 0x80002aa8
       0     6063        M 0x80002aa8 mv      s0, s1                 #; s1  = 12, (wrb) s0  <-- 12
       0     6064        M 0x80002aac mv      s8, s10                #; s10 = 4, (wrb) s8  <-- 4
       0     6066        M 0x80002ab0 bnez    s10, pc - 40           #; s10 = 4, taken, goto 0x80002a88
       0     6069        M 0x80002a88 add     a0, s9, s8             #; s9  = 0x0011fb47, s8  = 4, (wrb) a0  <-- 0x0011fb4b
       0     6070        M 0x80002a8c lbu     a0, 0(a0)              #; a0  = 0x0011fb4b, a0  <~~ Byte[0x0011fb4b]
       0     6072        M 0x80002a90 addi    s10, s8, -1            #; s8  = 4, (wrb) s10 <-- 3
       0     6073        M 0x80002a94 addi    s1, s0, 1              #; s0  = 12, (wrb) s1  <-- 13
       0     6074        M 0x80002a98 mv      a1, s6                 #; s6  = 0x0011fc27, (wrb) a1  <-- 0x0011fc27
       0     6075        M 0x80002a9c mv      a2, s0                 #; s0  = 12, (wrb) a2  <-- 12
       0     6076        M 0x80002aa0 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     6077        M 0x80002aa4 jalr    s7                     #; s7  = 0x800023bc, (wrb) ra  <-- 0x80002aa8, goto 0x800023bc
       0     6078        M                                           #; (lsu) a0  <-- 48
       0     6080        M 0x800023bc beqz    a0, pc + 168           #; a0  = 48, not taken
       0     6083        M 0x800023c0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6084        M 0x800023c4 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     6085        M 0x800023c8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     6086        M 0x800023cc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800043cc
       0     6087        M 0x800023d0 addi    a3, a3, -1464          #; a3  = 0x800043cc, (wrb) a3  <-- 0x80003e14
       0     6088        M                                           #; (acc) a1  <-- 0x00d605b3
       0     6089        M 0x800023d4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003e14, (wrb) a1  <-- 0x80003e14
       0     6090        M 0x800023d8 lw      a4, 0(a1)              #; a1  = 0x80003e14, a4  <~~ Word[0x80003e14]
       0     6101        M                                           #; (lsu) a4  <-- 12
       0     6102        M 0x800023dc addi    a5, a4, 1              #; a4  = 12, (wrb) a5  <-- 13
       0     6103        M 0x800023e0 sw      a5, 0(a1)              #; a1  = 0x80003e14, 13 ~~> Word[0x80003e14]
       0     6104        M 0x800023e4 add     a4, a1, a4             #; a1  = 0x80003e14, a4  = 12, (wrb) a4  <-- 0x80003e20
       0     6105        M 0x800023e8 sb      a0, 72(a4)             #; a4  = 0x80003e20, 48 ~~> Byte[0x80003e68]
       0     6106        M 0x800023ec lw      a4, 0(a1)              #; a1  = 0x80003e14, a4  <~~ Word[0x80003e14]
       0     6127        M                                           #; (lsu) a4  <-- 13
       0     6128        M 0x800023f0 addi    a4, a4, -1020          #; a4  = 13, (wrb) a4  <-- -1007
       0     6129        M 0x800023f4 snez    a4, a4                 #; a4  = -1007, (wrb) a4  <-- 1
       0     6130        M 0x800023f8 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     6131        M 0x800023fc snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     6132        M 0x80002400 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     6133        M 0x80002404 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80002464
       0     6137        M 0x80002464 ret                            #; ra  = 0x80002aa8, goto 0x80002aa8
       0     6142        M 0x80002aa8 mv      s0, s1                 #; s1  = 13, (wrb) s0  <-- 13
       0     6143        M 0x80002aac mv      s8, s10                #; s10 = 3, (wrb) s8  <-- 3
       0     6145        M 0x80002ab0 bnez    s10, pc - 40           #; s10 = 3, taken, goto 0x80002a88
       0     6148        M 0x80002a88 add     a0, s9, s8             #; s9  = 0x0011fb47, s8  = 3, (wrb) a0  <-- 0x0011fb4a
       0     6149        M 0x80002a8c lbu     a0, 0(a0)              #; a0  = 0x0011fb4a, a0  <~~ Byte[0x0011fb4a]
       0     6151        M 0x80002a90 addi    s10, s8, -1            #; s8  = 3, (wrb) s10 <-- 2
       0     6152        M 0x80002a94 addi    s1, s0, 1              #; s0  = 13, (wrb) s1  <-- 14
       0     6153        M 0x80002a98 mv      a1, s6                 #; s6  = 0x0011fc27, (wrb) a1  <-- 0x0011fc27
       0     6154        M 0x80002a9c mv      a2, s0                 #; s0  = 13, (wrb) a2  <-- 13
       0     6155        M 0x80002aa0 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     6156        M 0x80002aa4 jalr    s7                     #; s7  = 0x800023bc, (wrb) ra  <-- 0x80002aa8, goto 0x800023bc
       0     6157        M                                           #; (lsu) a0  <-- 48
       0     6159        M 0x800023bc beqz    a0, pc + 168           #; a0  = 48, not taken
       0     6162        M 0x800023c0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6163        M 0x800023c4 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     6164        M 0x800023c8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     6165        M 0x800023cc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800043cc
       0     6166        M 0x800023d0 addi    a3, a3, -1464          #; a3  = 0x800043cc, (wrb) a3  <-- 0x80003e14
       0     6167        M                                           #; (acc) a1  <-- 0x00d605b3
       0     6168        M 0x800023d4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003e14, (wrb) a1  <-- 0x80003e14
       0     6169        M 0x800023d8 lw      a4, 0(a1)              #; a1  = 0x80003e14, a4  <~~ Word[0x80003e14]
       0     6180        M                                           #; (lsu) a4  <-- 13
       0     6181        M 0x800023dc addi    a5, a4, 1              #; a4  = 13, (wrb) a5  <-- 14
       0     6182        M 0x800023e0 sw      a5, 0(a1)              #; a1  = 0x80003e14, 14 ~~> Word[0x80003e14]
       0     6183        M 0x800023e4 add     a4, a1, a4             #; a1  = 0x80003e14, a4  = 13, (wrb) a4  <-- 0x80003e21
       0     6184        M 0x800023e8 sb      a0, 72(a4)             #; a4  = 0x80003e21, 48 ~~> Byte[0x80003e69]
       0     6185        M 0x800023ec lw      a4, 0(a1)              #; a1  = 0x80003e14, a4  <~~ Word[0x80003e14]
       0     6206        M                                           #; (lsu) a4  <-- 14
       0     6207        M 0x800023f0 addi    a4, a4, -1020          #; a4  = 14, (wrb) a4  <-- -1006
       0     6208        M 0x800023f4 snez    a4, a4                 #; a4  = -1006, (wrb) a4  <-- 1
       0     6209        M 0x800023f8 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     6210        M 0x800023fc snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     6211        M 0x80002400 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     6212        M 0x80002404 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80002464
       0     6216        M 0x80002464 ret                            #; ra  = 0x80002aa8, goto 0x80002aa8
       0     6221        M 0x80002aa8 mv      s0, s1                 #; s1  = 14, (wrb) s0  <-- 14
       0     6222        M 0x80002aac mv      s8, s10                #; s10 = 2, (wrb) s8  <-- 2
       0     6224        M 0x80002ab0 bnez    s10, pc - 40           #; s10 = 2, taken, goto 0x80002a88
       0     6227        M 0x80002a88 add     a0, s9, s8             #; s9  = 0x0011fb47, s8  = 2, (wrb) a0  <-- 0x0011fb49
       0     6228        M 0x80002a8c lbu     a0, 0(a0)              #; a0  = 0x0011fb49, a0  <~~ Byte[0x0011fb49]
       0     6230        M 0x80002a90 addi    s10, s8, -1            #; s8  = 2, (wrb) s10 <-- 1
       0     6231        M 0x80002a94 addi    s1, s0, 1              #; s0  = 14, (wrb) s1  <-- 15
       0     6232        M 0x80002a98 mv      a1, s6                 #; s6  = 0x0011fc27, (wrb) a1  <-- 0x0011fc27
       0     6233        M 0x80002a9c mv      a2, s0                 #; s0  = 14, (wrb) a2  <-- 14
       0     6234        M 0x80002aa0 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     6235        M 0x80002aa4 jalr    s7                     #; s7  = 0x800023bc, (wrb) ra  <-- 0x80002aa8, goto 0x800023bc
       0     6236        M                                           #; (lsu) a0  <-- 48
       0     6238        M 0x800023bc beqz    a0, pc + 168           #; a0  = 48, not taken
       0     6241        M 0x800023c0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6242        M 0x800023c4 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     6243        M 0x800023c8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     6244        M 0x800023cc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800043cc
       0     6245        M 0x800023d0 addi    a3, a3, -1464          #; a3  = 0x800043cc, (wrb) a3  <-- 0x80003e14
       0     6246        M                                           #; (acc) a1  <-- 0x00d605b3
       0     6247        M 0x800023d4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003e14, (wrb) a1  <-- 0x80003e14
       0     6248        M 0x800023d8 lw      a4, 0(a1)              #; a1  = 0x80003e14, a4  <~~ Word[0x80003e14]
       0     6259        M                                           #; (lsu) a4  <-- 14
       0     6260        M 0x800023dc addi    a5, a4, 1              #; a4  = 14, (wrb) a5  <-- 15
       0     6261        M 0x800023e0 sw      a5, 0(a1)              #; a1  = 0x80003e14, 15 ~~> Word[0x80003e14]
       0     6262        M 0x800023e4 add     a4, a1, a4             #; a1  = 0x80003e14, a4  = 14, (wrb) a4  <-- 0x80003e22
       0     6263        M 0x800023e8 sb      a0, 72(a4)             #; a4  = 0x80003e22, 48 ~~> Byte[0x80003e6a]
       0     6264        M 0x800023ec lw      a4, 0(a1)              #; a1  = 0x80003e14, a4  <~~ Word[0x80003e14]
       0     6285        M                                           #; (lsu) a4  <-- 15
       0     6286        M 0x800023f0 addi    a4, a4, -1020          #; a4  = 15, (wrb) a4  <-- -1005
       0     6287        M 0x800023f4 snez    a4, a4                 #; a4  = -1005, (wrb) a4  <-- 1
       0     6288        M 0x800023f8 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     6289        M 0x800023fc snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     6290        M 0x80002400 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     6291        M 0x80002404 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80002464
       0     6295        M 0x80002464 ret                            #; ra  = 0x80002aa8, goto 0x80002aa8
       0     6300        M 0x80002aa8 mv      s0, s1                 #; s1  = 15, (wrb) s0  <-- 15
       0     6301        M 0x80002aac mv      s8, s10                #; s10 = 1, (wrb) s8  <-- 1
       0     6303        M 0x80002ab0 bnez    s10, pc - 40           #; s10 = 1, taken, goto 0x80002a88
       0     6306        M 0x80002a88 add     a0, s9, s8             #; s9  = 0x0011fb47, s8  = 1, (wrb) a0  <-- 0x0011fb48
       0     6307        M 0x80002a8c lbu     a0, 0(a0)              #; a0  = 0x0011fb48, a0  <~~ Byte[0x0011fb48]
       0     6309        M 0x80002a90 addi    s10, s8, -1            #; s8  = 1, (wrb) s10 <-- 0
       0     6310        M 0x80002a94 addi    s1, s0, 1              #; s0  = 15, (wrb) s1  <-- 16
       0     6311        M 0x80002a98 mv      a1, s6                 #; s6  = 0x0011fc27, (wrb) a1  <-- 0x0011fc27
       0     6312        M 0x80002a9c mv      a2, s0                 #; s0  = 15, (wrb) a2  <-- 15
       0     6313        M 0x80002aa0 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     6314        M 0x80002aa4 jalr    s7                     #; s7  = 0x800023bc, (wrb) ra  <-- 0x80002aa8, goto 0x800023bc
       0     6315        M                                           #; (lsu) a0  <-- 48
       0     6317        M 0x800023bc beqz    a0, pc + 168           #; a0  = 48, not taken
       0     6320        M 0x800023c0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6321        M 0x800023c4 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     6322        M 0x800023c8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     6323        M 0x800023cc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800043cc
       0     6324        M 0x800023d0 addi    a3, a3, -1464          #; a3  = 0x800043cc, (wrb) a3  <-- 0x80003e14
       0     6325        M                                           #; (acc) a1  <-- 0x00d605b3
       0     6326        M 0x800023d4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003e14, (wrb) a1  <-- 0x80003e14
       0     6327        M 0x800023d8 lw      a4, 0(a1)              #; a1  = 0x80003e14, a4  <~~ Word[0x80003e14]
       0     6338        M                                           #; (lsu) a4  <-- 15
       0     6339        M 0x800023dc addi    a5, a4, 1              #; a4  = 15, (wrb) a5  <-- 16
       0     6340        M 0x800023e0 sw      a5, 0(a1)              #; a1  = 0x80003e14, 16 ~~> Word[0x80003e14]
       0     6341        M 0x800023e4 add     a4, a1, a4             #; a1  = 0x80003e14, a4  = 15, (wrb) a4  <-- 0x80003e23
       0     6342        M 0x800023e8 sb      a0, 72(a4)             #; a4  = 0x80003e23, 48 ~~> Byte[0x80003e6b]
       0     6343        M 0x800023ec lw      a4, 0(a1)              #; a1  = 0x80003e14, a4  <~~ Word[0x80003e14]
       0     6364        M                                           #; (lsu) a4  <-- 16
       0     6365        M 0x800023f0 addi    a4, a4, -1020          #; a4  = 16, (wrb) a4  <-- -1004
       0     6366        M 0x800023f4 snez    a4, a4                 #; a4  = -1004, (wrb) a4  <-- 1
       0     6367        M 0x800023f8 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     6368        M 0x800023fc snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     6369        M 0x80002400 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     6370        M 0x80002404 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80002464
       0     6374        M 0x80002464 ret                            #; ra  = 0x80002aa8, goto 0x80002aa8
       0     6379        M 0x80002aa8 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
       0     6380        M 0x80002aac mv      s8, s10                #; s10 = 0, (wrb) s8  <-- 0
       0     6382        M 0x80002ab0 bnez    s10, pc - 40           #; s10 = 0, not taken
       0     6383        M 0x80002ab4 j       pc + 0x8               #; goto 0x80002abc
       0     6384        M 0x80002abc sub     a0, s1, s4             #; s1  = 16, s4  = 8, (wrb) a0  <-- 8
       0     6396        M 0x80002ac0 sltu    a0, a0, s2             #; a0  = 8, s2  = 0, (wrb) a0  <-- 0
       0     6397        M 0x80002ac4 xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0     6398        M 0x80002ac8 xori    a1, s5, 1              #; s5  = 0, (wrb) a1  <-- 1
       0     6399        M 0x80002acc or      a0, a1, a0             #; a1  = 1, a0  = 1, (wrb) a0  <-- 1
       0     6408        M 0x80002ad0 bnez    a0, pc + 48            #; a0  = 1, taken, goto 0x80002b00
       0     6431        M 0x80002b00 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
       0     6432        M 0x80002b04 mv      a0, s0                 #; s0  = 16, (wrb) a0  <-- 16
       0     6435        M 0x80002b08 fld     fs2, 40(sp)            #; fs2  <~~ Doub[0x0011fb68]
       0     6436        M 0x80002b0c fld     fs1, 48(sp)            #; fs1  <~~ Doub[0x0011fb70], (f:lsu) fs2  <-- 0.0
       0     6437        M                                           #; (f:lsu) fs1  <-- 0.0
       0     6444        M 0x80002b14 lw      s10, 64(sp)            #; sp  = 0x0011fb40, s10 <~~ Word[0x0011fb80]
       0     6445        M 0x80002b10 fld     fs0, 56(sp)            #; fs0  <~~ Doub[0x0011fb78]
       0     6446        M                                           #; (f:lsu) fs0  <-- 0.0
       0     6448        M                                           #; (lsu) s10 <-- 0x80003aae
       0     6449        M 0x80002b18 lw      s9, 68(sp)             #; sp  = 0x0011fb40, s9  <~~ Word[0x0011fb84]
       0     6452        M                                           #; (lsu) s9  <-- 8
       0     6453        M 0x80002b1c lw      s8, 72(sp)             #; sp  = 0x0011fb40, s8  <~~ Word[0x0011fb88]
       0     6456        M                                           #; (lsu) s8  <-- 16
       0     6457        M 0x80002b20 lw      s7, 76(sp)             #; sp  = 0x0011fb40, s7  <~~ Word[0x0011fb8c]
       0     6460        M                                           #; (lsu) s7  <-- 0
       0     6461        M 0x80002b24 lw      s6, 80(sp)             #; sp  = 0x0011fb40, s6  <~~ Word[0x0011fb90]
       0     6464        M                                           #; (lsu) s6  <-- 0
       0     6465        M 0x80002b28 lw      s5, 84(sp)             #; sp  = 0x0011fb40, s5  <~~ Word[0x0011fb94]
       0     6468        M                                           #; (lsu) s5  <-- -1
       0     6469        M 0x80002b2c lw      s4, 88(sp)             #; sp  = 0x0011fb40, s4  <~~ Word[0x0011fb98]
       0     6472        M                                           #; (lsu) s4  <-- 0x0011fc27
       0     6473        M 0x80002b30 lw      s3, 92(sp)             #; sp  = 0x0011fb40, s3  <~~ Word[0x0011fb9c]
       0     6476        M                                           #; (lsu) s3  <-- 0x0011fc40
       0     6477        M 0x80002b34 lw      s2, 96(sp)             #; sp  = 0x0011fb40, s2  <~~ Word[0x0011fba0]
       0     6480        M                                           #; (lsu) s2  <-- 0x800023bc
       0     6481        M 0x80002b38 lw      s1, 100(sp)            #; sp  = 0x0011fb40, s1  <~~ Word[0x0011fba4]
       0     6484        M                                           #; (lsu) s1  <-- 8
       0     6485        M 0x80002b3c lw      s0, 104(sp)            #; sp  = 0x0011fb40, s0  <~~ Word[0x0011fba8]
       0     6488        M                                           #; (lsu) s0  <-- 0
       0     6489        M 0x80002b40 lw      ra, 108(sp)            #; sp  = 0x0011fb40, ra  <~~ Word[0x0011fbac]
       0     6490        M 0x80002b44 addi    sp, sp, 112            #; sp  = 0x0011fb40, (wrb) sp  <-- 0x0011fbb0
       0     6492        M                                           #; (lsu) ra  <-- 0x80001aec
       0     6493        M 0x80002b48 ret                            #; ra  = 0x80001aec, goto 0x80001aec
       0     6510        M 0x80001aec j       pc + 0x7c0             #; goto 0x800022ac
       0     6513        M 0x800022ac mv      s8, a0                 #; a0  = 16, (wrb) s8  <-- 16
       0     6525        M 0x800022b0 li      s6, 37                 #; (wrb) s6  <-- 37
       0     6526        M 0x800022b4 li      s7, 46                 #; (wrb) s7  <-- 46
       0     6527        M 0x800022b8 addi    s0, s10, 1             #; s10 = 0x80003aae, (wrb) s0  <-- 0x80003aaf
       0     6528        M 0x800022bc j       pc - 0xa74             #; goto 0x80001848
       0     6537        M 0x80001848 addi    s10, s0, 2             #; s0  = 0x80003aaf, (wrb) s10 <-- 0x80003ab1
       0     6538        M 0x8000184c mv      s9, s8                 #; s8  = 16, (wrb) s9  <-- 16
       0     6549        M 0x80001850 li      s8, 10                 #; (wrb) s8  <-- 10
       0     6550        M 0x80001854 lbu     a0, 0(s0)              #; s0  = 0x80003aaf, a0  <~~ Byte[0x80003aaf]
       0     6561        M                                           #; (lsu) a0  <-- 10
       0     6562        M 0x80001858 beqz    a0, pc + 2824          #; a0  = 10, not taken
       0     6563        M 0x8000185c beq     a0, s6, pc + 48        #; a0  = 10, s6  = 37, not taken
       0     6564        M 0x80001860 addi    s1, s9, 1              #; s9  = 16, (wrb) s1  <-- 17
       0     6565        M 0x80001864 mv      a1, s4                 #; s4  = 0x0011fc27, (wrb) a1  <-- 0x0011fc27
       0     6566        M 0x80001868 mv      a2, s9                 #; s9  = 16, (wrb) a2  <-- 16
       0     6567        M 0x8000186c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     6576        M 0x80001870 jalr    s2                     #; s2  = 0x800023bc, (wrb) ra  <-- 0x80001874, goto 0x800023bc
       0     6590        M 0x800023bc beqz    a0, pc + 168           #; a0  = 10, not taken
       0     6593        M 0x800023c0 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6594        M 0x800023c4 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     6595        M 0x800023c8 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     6596        M 0x800023cc auipc   a3, 0x2                #; (wrb) a3  <-- 0x800043cc
       0     6597        M 0x800023d0 addi    a3, a3, -1464          #; a3  = 0x800043cc, (wrb) a3  <-- 0x80003e14
       0     6598        M                                           #; (acc) a1  <-- 0x00d605b3
       0     6599        M 0x800023d4 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003e14, (wrb) a1  <-- 0x80003e14
       0     6600        M 0x800023d8 lw      a4, 0(a1)              #; a1  = 0x80003e14, a4  <~~ Word[0x80003e14]
       0     6611        M                                           #; (lsu) a4  <-- 16
       0     6612        M 0x800023dc addi    a5, a4, 1              #; a4  = 16, (wrb) a5  <-- 17
       0     6613        M 0x800023e0 sw      a5, 0(a1)              #; a1  = 0x80003e14, 17 ~~> Word[0x80003e14]
       0     6614        M 0x800023e4 add     a4, a1, a4             #; a1  = 0x80003e14, a4  = 16, (wrb) a4  <-- 0x80003e24
       0     6615        M 0x800023e8 sb      a0, 72(a4)             #; a4  = 0x80003e24, 10 ~~> Byte[0x80003e6c]
       0     6616        M 0x800023ec lw      a4, 0(a1)              #; a1  = 0x80003e14, a4  <~~ Word[0x80003e14]
       0     6637        M                                           #; (lsu) a4  <-- 17
       0     6638        M 0x800023f0 addi    a4, a4, -1020          #; a4  = 17, (wrb) a4  <-- -1003
       0     6639        M 0x800023f4 snez    a4, a4                 #; a4  = -1003, (wrb) a4  <-- 1
       0     6640        M 0x800023f8 addi    a0, a0, -10            #; a0  = 10, (wrb) a0  <-- 0
       0     6641        M 0x800023fc snez    a0, a0                 #; a0  = 0, (wrb) a0  <-- 0
       0     6642        M 0x80002400 and     a0, a0, a4             #; a0  = 0, a4  = 1, (wrb) a0  <-- 0
       0     6643        M 0x80002404 bnez    a0, pc + 96            #; a0  = 0, not taken
       0     6644        M 0x80002408 add     a0, a3, a2             #; a3  = 0x80003e14, a2  = 0, (wrb) a0  <-- 0x80003e14
       0     6645        M 0x8000240c addi    a2, a0, 72             #; a0  = 0x80003e14, (wrb) a2  <-- 0x80003e5c
       0     6646        M 0x80002410 sw      zero, 12(a0)           #; a0  = 0x80003e14, 0 ~~> Word[0x80003e20]
       0     6647        M 0x80002414 li      a3, 64                 #; (wrb) a3  <-- 64
       0     6648        M 0x80002418 sw      a3, 8(a0)              #; a0  = 0x80003e14, 64 ~~> Word[0x80003e1c]
       0     6649        M 0x8000241c sw      zero, 20(a0)           #; a0  = 0x80003e14, 0 ~~> Word[0x80003e28]
       0     6658        M 0x80002420 li      a3, 1                  #; (wrb) a3  <-- 1
       0     6659        M 0x80002424 sw      a3, 16(a0)             #; a0  = 0x80003e14, 1 ~~> Word[0x80003e24]
       0     6660        M 0x80002428 sw      zero, 28(a0)           #; a0  = 0x80003e14, 0 ~~> Word[0x80003e30]
       0     6662        M 0x8000242c sw      a2, 24(a0)             #; a0  = 0x80003e14, 0x80003e5c ~~> Word[0x80003e2c]
       0     6672        M 0x80002430 lw      a2, 0(a1)              #; a1  = 0x80003e14, a2  <~~ Word[0x80003e14]
       0     6673        M 0x80002434 addi    a3, a0, 8              #; a0  = 0x80003e14, (wrb) a3  <-- 0x80003e1c
       0     6674        M 0x80002438 sw      zero, 36(a0)           #; a0  = 0x80003e14, 0 ~~> Word[0x80003e38]
       0     6694        M                                           #; (lsu) a2  <-- 17
       0     6695        M 0x8000243c sw      a2, 32(a0)             #; a0  = 0x80003e14, 17 ~~> Word[0x80003e34]
       0     6696        M 0x80002440 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80004440
       0     6697        M 0x80002444 addi    a0, a0, -1856          #; a0  = 0x80004440, (wrb) a0  <-- 0x80003d00
       0     6698        M 0x80002448 sw      a3, 0(a0)              #; a0  = 0x80003d00, 0x80003e1c ~~> Word[0x80003d00]
       0     6699        M 0x8000244c auipc   a0, 0x2                #; (wrb) a0  <-- 0x8000444c
       0     6708        M 0x80002450 addi    a0, a0, -1804          #; a0  = 0x8000444c, (wrb) a0  <-- 0x80003d40
       0     6709        M 0x80002454 lw      a2, 0(a0)              #; a0  = 0x80003d40, a2  <~~ Word[0x80003d40]
       0     6724        M                                           #; (lsu) a2  <-- 0
       0     6725        M 0x80002458 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80002454
       0     6726        M 0x80002454 lw      a2, 0(a0)              #; a0  = 0x80003d40, a2  <~~ Word[0x80003d40]
       0     6737        M                                           #; (lsu) a2  <-- 0
       0     6738        M 0x80002458 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80002454
       0     6739        M 0x80002454 lw      a2, 0(a0)              #; a0  = 0x80003d40, a2  <~~ Word[0x80003d40]
       0     6750        M                                           #; (lsu) a2  <-- 0
       0     6751        M 0x80002458 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80002454
       0     6752        M 0x80002454 lw      a2, 0(a0)              #; a0  = 0x80003d40, a2  <~~ Word[0x80003d40]
       0     6763        M                                           #; (lsu) a2  <-- 0
       0     6764        M 0x80002458 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80002454
       0     6765        M 0x80002454 lw      a2, 0(a0)              #; a0  = 0x80003d40, a2  <~~ Word[0x80003d40]
       0     6776        M                                           #; (lsu) a2  <-- 0
       0     6777        M 0x80002458 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80002454
       0     6778        M 0x80002454 lw      a2, 0(a0)              #; a0  = 0x80003d40, a2  <~~ Word[0x80003d40]
       0     6789        M                                           #; (lsu) a2  <-- 0
       0     6790        M 0x80002458 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80002454
       0     6791        M 0x80002454 lw      a2, 0(a0)              #; a0  = 0x80003d40, a2  <~~ Word[0x80003d40]
       0     6802        M                                           #; (lsu) a2  <-- 0
       0     6803        M 0x80002458 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80002454
       0     6804        M 0x80002454 lw      a2, 0(a0)              #; a0  = 0x80003d40, a2  <~~ Word[0x80003d40]
       0     6815        M                                           #; (lsu) a2  <-- 1
       0     6816        M 0x80002458 beqz    a2, pc - 4             #; a2  = 1, not taken
       0     6817        M 0x8000245c sw      zero, 0(a0)            #; a0  = 0x80003d40, 0 ~~> Word[0x80003d40]
       0     6820        M 0x80002460 sw      zero, 0(a1)            #; a1  = 0x80003e14, 0 ~~> Word[0x80003e14]
       0     6821        M 0x80002464 ret                            #; ra  = 0x80001874, goto 0x80001874
       0     6825        M 0x80001874 addi    s0, s0, 1              #; s0  = 0x80003aaf, (wrb) s0  <-- 0x80003ab0
       0     6826        M 0x80001878 addi    s10, s10, 1            #; s10 = 0x80003ab1, (wrb) s10 <-- 0x80003ab2
       0     6827        M 0x8000187c mv      s9, s1                 #; s1  = 17, (wrb) s9  <-- 17
       0     6828        M 0x80001880 lbu     a0, 0(s0)              #; s0  = 0x80003ab0, a0  <~~ Byte[0x80003ab0]
       0     6841        M                                           #; (lsu) a0  <-- 0
       0     6842        M 0x80001884 bnez    a0, pc - 40            #; a0  = 0, not taken
       0     6843        M 0x80001888 j       pc + 0xad8             #; goto 0x80002360
       0     6855        M 0x80002360 mv      a2, s9                 #; s9  = 17, (wrb) a2  <-- 17
       0     6856        M 0x80002364 bltu    s9, s5, pc + 8         #; s9  = 17, s5  = -1, taken, goto 0x8000236c
       0     6857        M 0x8000236c li      a0, 0                  #; (wrb) a0  <-- 0
       0     6867        M 0x80002370 mv      a1, s4                 #; s4  = 0x0011fc27, (wrb) a1  <-- 0x0011fc27
       0     6868        M 0x80002374 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     6869        M 0x80002378 jalr    s2                     #; s2  = 0x800023bc, (wrb) ra  <-- 0x8000237c, goto 0x800023bc
       0     6881        M 0x800023bc beqz    a0, pc + 168           #; a0  = 0, taken, goto 0x80002464
       0     6886        M 0x80002464 ret                            #; ra  = 0x8000237c, goto 0x8000237c
       0     6887        M 0x8000237c mv      a0, s9                 #; s9  = 17, (wrb) a0  <-- 17
       0     6888        M 0x80002380 lw      s11, 60(sp)            #; sp  = 0x0011fbb0, s11 <~~ Word[0x0011fbec]
       0     6891        M                                           #; (lsu) s11 <-- 0
       0     6892        M 0x80002384 lw      s10, 64(sp)            #; sp  = 0x0011fbb0, s10 <~~ Word[0x0011fbf0]
       0     6895        M                                           #; (lsu) s10 <-- 0
       0     6896        M 0x80002388 lw      s9, 68(sp)             #; sp  = 0x0011fbb0, s9  <~~ Word[0x0011fbf4]
       0     6899        M                                           #; (lsu) s9  <-- 0
       0     6900        M 0x8000238c lw      s8, 72(sp)             #; sp  = 0x0011fbb0, s8  <~~ Word[0x0011fbf8]
       0     6903        M                                           #; (lsu) s8  <-- 0
       0     6904        M 0x80002390 lw      s7, 76(sp)             #; sp  = 0x0011fbb0, s7  <~~ Word[0x0011fbfc]
       0     6907        M                                           #; (lsu) s7  <-- 0
       0     6908        M 0x80002394 lw      s6, 80(sp)             #; sp  = 0x0011fbb0, s6  <~~ Word[0x0011fc00]
       0     6911        M                                           #; (lsu) s6  <-- 0
       0     6912        M 0x80002398 lw      s5, 84(sp)             #; sp  = 0x0011fbb0, s5  <~~ Word[0x0011fc04]
       0     6915        M                                           #; (lsu) s5  <-- 0
       0     6916        M 0x8000239c lw      s4, 88(sp)             #; sp  = 0x0011fbb0, s4  <~~ Word[0x0011fc08]
       0     6919        M                                           #; (lsu) s4  <-- 0
       0     6920        M 0x800023a0 lw      s3, 92(sp)             #; sp  = 0x0011fbb0, s3  <~~ Word[0x0011fc0c]
       0     6923        M                                           #; (lsu) s3  <-- 0
       0     6924        M 0x800023a4 lw      s2, 96(sp)             #; sp  = 0x0011fbb0, s2  <~~ Word[0x0011fc10]
       0     6927        M                                           #; (lsu) s2  <-- 0
       0     6928        M 0x800023a8 lw      s1, 100(sp)            #; sp  = 0x0011fbb0, s1  <~~ Word[0x0011fc14]
       0     6931        M                                           #; (lsu) s1  <-- 0
       0     6932        M 0x800023ac lw      s0, 104(sp)            #; sp  = 0x0011fbb0, s0  <~~ Word[0x0011fc18]
       0     6935        M                                           #; (lsu) s0  <-- 0
       0     6936        M 0x800023b0 lw      ra, 108(sp)            #; sp  = 0x0011fbb0, ra  <~~ Word[0x0011fc1c]
       0     6937        M 0x800023b4 addi    sp, sp, 112            #; sp  = 0x0011fbb0, (wrb) sp  <-- 0x0011fc20
       0     6939        M                                           #; (lsu) ra  <-- 0x800017b8
       0     6940        M 0x800023b8 ret                            #; ra  = 0x800017b8, goto 0x800017b8
       0     6952        M 0x800017b8 lw      ra, 12(sp)             #; sp  = 0x0011fc20, ra  <~~ Word[0x0011fc2c]
       0     6953        M 0x800017bc addi    sp, sp, 48             #; sp  = 0x0011fc20, (wrb) sp  <-- 0x0011fc50
       0     6955        M                                           #; (lsu) ra  <-- 0x8000171c
       0     6964        M 0x800017c0 ret                            #; ra  = 0x8000171c, goto 0x8000171c
       0     6987        M 0x8000171c auipc   a0, 0x2                #; (wrb) a0  <-- 0x8000371c
       0     6999        M 0x80001720 addi    a0, a0, 1604           #; a0  = 0x8000371c, (wrb) a0  <-- 0x80003d60
       0     7002        M 0x80001724 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80003d60]
       0     7011        M                                           #; (f:lsu) ft3  <-- 0.0001
       0     7012        M 0x80001728 flt.d   a0, ft3, fs0           #; ft3  = 0.0001, fs0  = 0.0
       0     7014        M                                           #; (acc) s9  <-- 0x2b813c87
                         M 0x8000172c fld     fs11, 680(sp)          #; fs11 <~~ Doub[0x0011fef8]
       0     7015        M 0x80001730 fld     fs10, 688(sp)          #; fs10 <~~ Doub[0x0011ff00], (f:lsu) fs11 <-- 0.0
       0     7016        M 0x80001734 fld     fs9, 696(sp)           #; fs9  <~~ Doub[0x0011ff08], (f:lsu) fs10 <-- 0.0
       0     7017        M 0x80001738 fld     fs8, 704(sp)           #; fs8  <~~ Doub[0x0011ff10], (f:lsu) fs9  <-- 0.0
       0     7018        M 0x8000173c fld     fs7, 712(sp)           #; fs7  <~~ Doub[0x0011ff18], (f:lsu) fs8  <-- 0.0
       0     7019        M 0x80001740 fld     fs6, 720(sp)           #; fs6  <~~ Doub[0x0011ff20], (f:lsu) fs7  <-- 0.0
       0     7020        M 0x80001744 fld     fs5, 728(sp)           #; fs5  <~~ Doub[0x0011ff28], (f:lsu) fs6  <-- 0.0
       0     7021        M 0x80001748 fld     fs4, 736(sp)           #; fs4  <~~ Doub[0x0011ff30], (f:lsu) fs5  <-- 0.0
       0     7022        M 0x8000174c fld     fs3, 744(sp)           #; fs3  <~~ Doub[0x0011ff38], (f:lsu) fs4  <-- 0.0
       0     7023        M 0x80001750 fld     fs2, 752(sp)           #; fs2  <~~ Doub[0x0011ff40], (f:lsu) fs3  <-- 0.0
       0     7024        M 0x8000175c lw      ra, 780(sp)            #; sp  = 0x0011fc50, ra  <~~ Word[0x0011ff5c]
                         M 0x80001754 fld     fs1, 760(sp)           #; fs1  <~~ Doub[0x0011ff48], (f:lsu) fs2  <-- 0.0
       0     7025        M 0x80001760 addi    sp, sp, 784            #; sp  = 0x0011fc50, (wrb) sp  <-- 0x0011ff60
                         M 0x80001758 fld     fs0, 768(sp)           #; fs0  <~~ Doub[0x0011ff50], (f:lsu) fs1  <-- 0.0
       0     7026        M                                           #; (f:lsu) fs0  <-- 0.0
       0     7028        M                                           #; (lsu) ra  <-- 0x80003820
       0     7029        M 0x80001764 ret                            #; ra  = 0x80003820, goto 0x80003820
       0     7032        M 0x80003820 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
       0     7033        M 0x80003824 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80003824
       0     7034        M 0x80003828 jalr    ra, ra, 524            #; ra  = 0x80003824, (wrb) ra  <-- 0x8000382c, goto 0x80003a30
       0     7046        M 0x80003a30 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
       0     7047        M 0x80003a34 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x8000382c ~~> Word[0x0011ff5c]
       0     7048        M 0x80003a38 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80003a38
       0     7049        M 0x80003a3c jalr    ra, ra, -1268          #; ra  = 0x80003a38, (wrb) ra  <-- 0x80003a40, goto 0x80003544
       0     7060        M 0x80003544 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     7061        M 0x80003548 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     7062        M 0x8000354c lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     7065        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     7066        M 0x80003550 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     7069        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     7070        M 0x80003554 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
       0     7071        M 0x80003558 ret                            #; ra  = 0x80003a40, goto 0x80003a40
       0     7073        M                                           #; (lsu) a0  <-- 0x00120190
       0     7074        M 0x80003a40 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
       0     7084        M                                           #; (lsu) a0  <-- 0
       0     7085        M 0x80003a44 mv      zero, a0               #; a0  = 0
       0     7086        M 0x80003a48 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
       0     7087        M 0x80003a4c addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
       0     7089        M                                           #; (lsu) ra  <-- 0x8000382c
       0     7090        M 0x80003a50 ret                            #; ra  = 0x8000382c, goto 0x8000382c
       0     7104        M 0x8000382c mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
       0     7108        M 0x80003830 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80003830
       0     7109        M 0x80003834 jalr    ra, ra, 556            #; ra  = 0x80003830, (wrb) ra  <-- 0x80003838, goto 0x80003a5c
       0     7110        M 0x80003a5c addi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff58
       0     7111        M 0x80003a60 sw      a0, 0(sp)              #; sp  = 0x0011ff58, 0 ~~> Word[0x0011ff58]
       0     7112        M 0x80003a64 sw      ra, 4(sp)              #; sp  = 0x0011ff58, 0x80003838 ~~> Word[0x0011ff5c]
       0     7113        M 0x80003a68 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80003a68
       0     7114        M 0x80003a6c jalr    ra, ra, -1348          #; ra  = 0x80003a68, (wrb) ra  <-- 0x80003a70, goto 0x80003524
       0     7125        M 0x80003524 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     7126        M 0x80003528 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     7127        M 0x8000352c lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     7130        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     7131        M 0x80003530 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     7134        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     7135        M 0x80003534 lw      a0, 8(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff78]
       0     7136        M 0x80003538 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     7138        M                                           #; (lsu) a0  <-- 0
       0     7139        M 0x8000353c sub     a0, a1, a0             #; a1  = 0, a0  = 0, (wrb) a0  <-- 0
       0     7140        M 0x80003540 ret                            #; ra  = 0x80003a70, goto 0x80003a70
       0     7141        M 0x80003a70 lw      t0, 0(sp)              #; sp  = 0x0011ff58, t0  <~~ Word[0x0011ff58]
       0     7144        M                                           #; (lsu) t0  <-- 0
       0     7145        M 0x80003a74 lw      ra, 4(sp)              #; sp  = 0x0011ff58, ra  <~~ Word[0x0011ff5c]
       0     7146        M 0x80003a78 addi    sp, sp, 8              #; sp  = 0x0011ff58, (wrb) sp  <-- 0x0011ff60
       0     7147        M 0x80003a7c bnez    a0, pc + 24            #; a0  = 0, not taken
       0     7148        M                                           #; (lsu) ra  <-- 0x80003838
       0     7154        M 0x80003a80 slli    t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 0
       0     7155        M 0x80003a84 ori     t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 1
       0     7156        M 0x80003a88 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80003a88
       0     7157        M 0x80003a8c addi    t1, t1, 632            #; t1  = 0x80003a88, (wrb) t1  <-- 0x80003d00
       0     7165        M 0x80003a90 sw      t0, 0(t1)              #; t1  = 0x80003d00, 1 ~~> Word[0x80003d00]
       0     7166        M 0x80003a94 ret                            #; ra  = 0x80003838, goto 0x80003838
       0     7179        M 0x80003838 wfi                            #; 

## Performance metrics

Performance metrics for section 0 @ (12, 7179):
snitch_loads                                   141
snitch_stores                                  142
fpss_stores                                     16
fpss_loads                                      24
snitch_avg_load_latency                    11.9078
snitch_occupancy                            0.2091
snitch_fseq_rel_offloads                    0.2999
fseq_yield                                     1.0
fseq_fpu_yield                                 1.0
fpss_section_latency                             0
fpss_avg_fpu_latency                        2.0808
fpss_avg_load_latency                       3.6667
fpss_occupancy                              0.0896
fpss_fpu_occupancy                          0.0829
fpss_fpu_rel_occupancy                      0.9252
cycles                                        7168
total_ipc                                   0.2987
