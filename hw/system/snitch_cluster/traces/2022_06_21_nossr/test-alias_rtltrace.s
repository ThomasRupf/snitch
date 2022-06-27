       0       12        M 0x00001000 csrr    a0, mhartid            #; mhartid = 0, (wrb) a0  <-- 0
       0       32        M 0x00001004 auipc   a1, 0x0                #; (wrb) a1  <-- 4100
       0       56        M 0x00001008 addi    a1, a1, 32             #; a1  = 4100, (wrb) a1  <-- 4132
       0       84        M 0x0000100c auipc   t0, 0x0                #; (wrb) t0  <-- 4108
       0      104        M 0x00001010 lw      t0, 20(t0)             #; t0  = 4108, t0  <~~ Word[0x00001020]
       0      115        M                                           #; (lsu) t0  <-- 0x80002570
       0      128        M 0x00001014 jalr    t0                     #; t0  = 0x80002570, (wrb) ra  <-- 4120, goto 0x80002570
       0      269        M 0x80002570 auipc   gp, 0x1                #; (wrb) gp  <-- 0x80003570
       0      270        M 0x80002574 addi    gp, gp, -232           #; gp  = 0x80003570, (wrb) gp  <-- 0x80003488
       0      271        M 0x80002578 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002578
       0      272        M 0x8000257c jalr    ra, ra, 964            #; ra  = 0x80002578, (wrb) ra  <-- 0x80002580, goto 0x8000293c
       0      292        M 0x8000293c mv      a4, a1                 #; a1  = 4132, (wrb) a4  <-- 4132
       0      304        M 0x80002940 lw      a1, 4(a4)              #; a4  = 4132, a1  <~~ Word[0x00001028]
       0      334        M                                           #; (lsu) a1  <-- 8
       0      335        M 0x80002944 lw      t0, 8(a4)              #; a4  = 4132, t0  <~~ Word[0x0000102c]
       0      374        M                                           #; (lsu) t0  <-- 0
       0      375        M 0x80002948 lw      a2, 12(a4)             #; a4  = 4132, a2  <~~ Word[0x00001030]
       0      414        M                                           #; (lsu) a2  <-- 0x00100000
       0      415        M 0x8000294c lw      t1, 16(a4)             #; a4  = 4132, t1  <~~ Word[0x00001034]
       0      454        M                                           #; (lsu) t1  <-- 0x00020000
       0      455        M 0x80002950 lw      t2, 20(a4)             #; a4  = 4132, t2  <~~ Word[0x00001038]
       0      456        M 0x80002954 sub     a0, a0, t0             #; a0  = 0, t0  = 0, (wrb) a0  <-- 0
       0      457        M 0x80002958 div     t3, a0, a1             #; a0  = 0, a1  = 8
       0      460        M                                           #; (acc) t4  <-- 0x027e0eb3
       0      494        M                                           #; (lsu) t2  <-- 0
       0      495        M 0x8000295c mul     t4, t3, t2             #; t3  = 0, t2  = 0
       0      498        M                                           #; (acc) a2  <-- 0x01d60633
       0      499        M 0x80002960 add     a2, a2, t4             #; a2  = 0x00100000, t4  = 0, (wrb) a2  <-- 0x00100000
       0      500        M 0x80002964 add     a3, a2, t1             #; a2  = 0x00100000, t1  = 0x00020000, (wrb) a3  <-- 0x00120000
       0      501        M 0x80002968 remu    a0, a0, a1             #; a0  = 0, a1  = 8
       0      502        M 0x8000296c ret                            #; ra  = 0x80002580, goto 0x80002580
       0      504        M                                           #; (acc) s0  <-- 0x00050413
       0      505        M 0x80002580 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
       0      506        M 0x80002584 mv      a0, a4                 #; a4  = 4132, (wrb) a0  <-- 4132
       0      507        M 0x80002588 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002588
       0      508        M 0x8000258c jalr    ra, ra, 1036           #; ra  = 0x80002588, (wrb) ra  <-- 0x80002590, goto 0x80002994
       0      523        M 0x80002994 lw      a0, 8(a0)              #; a0  = 4132, a0  <~~ Word[0x0000102c]
       0      524        M 0x80002998 ret                            #; ra  = 0x80002590, goto 0x80002590
       0      543        M                                           #; (lsu) a0  <-- 0
       0      544        M 0x80002590 mv      t0, a0                 #; a0  = 0, (wrb) t0  <-- 0
       0      545        M 0x80002594 mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
       0      546        M 0x80002598 csrr    t1, mhartid            #; mhartid = 0, (wrb) t1  <-- 0
       0      547        M 0x8000259c sub     t0, t1, t0             #; t1  = 0, t0  = 0, (wrb) t0  <-- 0
       0      549        M 0x800025a0 bnez    t0, pc + 36            #; t0  = 0, not taken
       0      550        M 0x800025a4 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800025a4
       0      551        M 0x800025a8 addi    t0, t0, 1948           #; t0  = 0x800025a4, (wrb) t0  <-- 0x80002d40
       0      552        M 0x800025ac auipc   t1, 0x0                #; (wrb) t1  <-- 0x800025ac
       0      562        M 0x800025b0 addi    t1, t1, 1944           #; t1  = 0x800025ac, (wrb) t1  <-- 0x80002d44
       0      563        M 0x800025b4 bge     t0, t1, pc + 16        #; t0  = 0x80002d40, t1  = 0x80002d44, not taken
       0      564        M 0x800025b8 sw      zero, 0(t0)            #; t0  = 0x80002d40, 0 ~~> Word[0x80002d40]
       0      565        M 0x800025bc addi    t0, t0, 4              #; t0  = 0x80002d40, (wrb) t0  <-- 0x80002d44
       0      573        M 0x800025c0 blt     t0, t1, pc - 8         #; t0  = 0x80002d44, t1  = 0x80002d44, not taken
       0      574        M 0x800025c4 csrr    t0, misa               #; misa = 0x40801129, (wrb) t0  <-- 0x40801129
       0      575        M 0x800025c8 andi    t0, t0, 40             #; t0  = 0x40801129, (wrb) t0  <-- 40
       0      576        M 0x800025cc beqz    t0, pc + 132           #; t0  = 40, not taken
       0      586        M 0x800025d0 fcvt.d.w ft0, zero             #; ac1  = 0
       0      587        M 0x800025d4 fcvt.d.w ft1, zero             #; ac1  = 0, (f:fpu) ft0  <-- 0.0
       0      588        M 0x800025d8 fcvt.d.w ft2, zero             #; ac1  = 0, (f:fpu) ft1  <-- 0.0
       0      589        M 0x800025dc fcvt.d.w ft3, zero             #; ac1  = 0, (f:fpu) ft2  <-- 0.0
       0      590        M                                           #; (f:fpu) ft3  <-- 0.0
       0      598        M 0x800025e0 fcvt.d.w ft4, zero             #; ac1  = 0
       0      599        M 0x800025e4 fcvt.d.w ft5, zero             #; ac1  = 0, (f:fpu) ft4  <-- 0.0
       0      600        M 0x800025e8 fcvt.d.w ft6, zero             #; ac1  = 0, (f:fpu) ft5  <-- 0.0
       0      601        M 0x800025ec fcvt.d.w ft7, zero             #; ac1  = 0, (f:fpu) ft6  <-- 0.0
       0      602        M                                           #; (f:fpu) ft7  <-- 0.0
       0      610        M 0x800025f0 fcvt.d.w fs0, zero             #; ac1  = 0
       0      611        M 0x800025f4 fcvt.d.w fs1, zero             #; ac1  = 0, (f:fpu) fs0  <-- 0.0
       0      612        M 0x800025f8 fcvt.d.w fa0, zero             #; ac1  = 0, (f:fpu) fs1  <-- 0.0
       0      613        M 0x800025fc fcvt.d.w fa1, zero             #; ac1  = 0, (f:fpu) fa0  <-- 0.0
       0      614        M                                           #; (f:fpu) fa1  <-- 0.0
       0      622        M 0x80002600 fcvt.d.w fa2, zero             #; ac1  = 0
       0      623        M 0x80002604 fcvt.d.w fa3, zero             #; ac1  = 0, (f:fpu) fa2  <-- 0.0
       0      624        M 0x80002608 fcvt.d.w fa4, zero             #; ac1  = 0, (f:fpu) fa3  <-- 0.0
       0      625        M 0x8000260c fcvt.d.w fa5, zero             #; ac1  = 0, (f:fpu) fa4  <-- 0.0
       0      626        M                                           #; (f:fpu) fa5  <-- 0.0
       0      634        M 0x80002610 fcvt.d.w fa6, zero             #; ac1  = 0
       0      635        M 0x80002614 fcvt.d.w fa7, zero             #; ac1  = 0, (f:fpu) fa6  <-- 0.0
       0      636        M 0x80002618 fcvt.d.w fs2, zero             #; ac1  = 0, (f:fpu) fa7  <-- 0.0
       0      637        M 0x8000261c fcvt.d.w fs3, zero             #; ac1  = 0, (f:fpu) fs2  <-- 0.0
       0      638        M                                           #; (f:fpu) fs3  <-- 0.0
       0      646        M 0x80002620 fcvt.d.w fs4, zero             #; ac1  = 0
       0      647        M 0x80002624 fcvt.d.w fs5, zero             #; ac1  = 0, (f:fpu) fs4  <-- 0.0
       0      648        M 0x80002628 fcvt.d.w fs6, zero             #; ac1  = 0, (f:fpu) fs5  <-- 0.0
       0      649        M 0x8000262c fcvt.d.w fs7, zero             #; ac1  = 0, (f:fpu) fs6  <-- 0.0
       0      650        M                                           #; (f:fpu) fs7  <-- 0.0
       0      658        M 0x80002630 fcvt.d.w fs8, zero             #; ac1  = 0
       0      659        M 0x80002634 fcvt.d.w fs9, zero             #; ac1  = 0, (f:fpu) fs8  <-- 0.0
       0      660        M 0x80002638 fcvt.d.w fs10, zero            #; ac1  = 0, (f:fpu) fs9  <-- 0.0
       0      661        M 0x8000263c fcvt.d.w fs11, zero            #; ac1  = 0, (f:fpu) fs10 <-- 0.0
       0      662        M                                           #; (f:fpu) fs11 <-- 0.0
       0      670        M 0x80002640 fcvt.d.w ft8, zero             #; ac1  = 0
       0      671        M 0x80002644 fcvt.d.w ft9, zero             #; ac1  = 0, (f:fpu) ft8  <-- 0.0
       0      672        M 0x80002648 fcvt.d.w ft10, zero            #; ac1  = 0, (f:fpu) ft9  <-- 0.0
       0      673        M 0x8000264c fcvt.d.w ft11, zero            #; ac1  = 0, (f:fpu) ft10 <-- 0.0
       0      674        M                                           #; (f:fpu) ft11 <-- 0.0
       0      681        M 0x80002650 addi    a3, a3, -8             #; a3  = 0x00120000, (wrb) a3  <-- 0x0011fff8
       0      682        M 0x80002654 sw      zero, 0(a3)            #; a3  = 0x0011fff8, 0 ~~> Word[0x0011fff8]
       0      683        M 0x80002658 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002658
       0      684        M 0x8000265c lw      t0, 900(t0)            #; t0  = 0x80002658, t0  <~~ Word[0x800029dc]
       0      704        M                                           #; (lsu) t0  <-- 136
       0      705        M 0x80002660 sub     a3, a3, t0             #; a3  = 0x0011fff8, t0  = 136, (wrb) a3  <-- 0x0011ff70
       0      706        M 0x80002664 mv      a5, a3                 #; a3  = 0x0011ff70, (wrb) a5  <-- 0x0011ff70
       0      707        M 0x80002668 auipc   t2, 0x0                #; (wrb) t2  <-- 0x80002668
       0      708        M 0x8000266c lw      t2, 880(t2)            #; t2  = 0x80002668, t2  <~~ Word[0x800029d8]
       0      744        M                                           #; (lsu) t2  <-- 10
       0      745        M 0x80002670 sll     t0, a0, t2             #; a0  = 0, t2  = 10, (wrb) t0  <-- 0
       0      746        M 0x80002674 sll     t1, a1, t2             #; a1  = 8, t2  = 10, (wrb) t1  <-- 8192
       0      747        M 0x80002678 sub     sp, a3, t0             #; a3  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
       0      748        M 0x8000267c sub     a3, a3, t1             #; a3  = 0x0011ff70, t1  = 8192, (wrb) a3  <-- 0x0011df70
       0      749        M 0x80002680 slli    t0, a0, 3              #; a0  = 0, (wrb) t0  <-- 0
       0      750        M 0x80002684 slli    t1, a1, 3              #; a1  = 8, (wrb) t1  <-- 64
       0      751        M 0x80002688 sub     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
       0      752        M 0x8000268c sub     a3, a3, t1             #; a3  = 0x0011df70, t1  = 64, (wrb) a3  <-- 0x0011df30
       0      761        M 0x80002690 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002690
       0      762        M 0x80002694 addi    t0, t0, 1528           #; t0  = 0x80002690, (wrb) t0  <-- 0x80002c88
       0      763        M 0x80002698 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002698
       0      764        M 0x8000269c addi    t1, t1, 1520           #; t1  = 0x80002698, (wrb) t1  <-- 0x80002c88
       0      775        M 0x800026a0 auipc   t2, 0x0                #; (wrb) t2  <-- 0x800026a0
       0      776        M 0x800026a4 addi    t2, t2, 1512           #; t2  = 0x800026a0, (wrb) t2  <-- 0x80002c88
       0      777        M 0x800026a8 auipc   t3, 0x0                #; (wrb) t3  <-- 0x800026a8
       0      778        M 0x800026ac addi    t3, t3, 1520           #; t3  = 0x800026a8, (wrb) t3  <-- 0x80002c98
       0      787        M 0x800026b0 add     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0x80002c88, (wrb) sp  <-- 0x80122bf8
       0      788        M 0x800026b4 sub     sp, sp, t1             #; sp  = 0x80122bf8, t1  = 0x80002c88, (wrb) sp  <-- 0x0011ff70
       0      789        M 0x800026b8 add     sp, sp, t2             #; sp  = 0x0011ff70, t2  = 0x80002c88, (wrb) sp  <-- 0x80122bf8
       0      790        M 0x800026bc sub     sp, sp, t3             #; sp  = 0x80122bf8, t3  = 0x80002c98, (wrb) sp  <-- 0x0011ff60
       0      799        M 0x800026c0 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
       0      800        M 0x800026c4 mv      tp, sp                 #; sp  = 0x0011ff60, (wrb) tp  <-- 0x0011ff60
       0      801        M 0x800026c8 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
       0      802        M 0x800026cc mv      t4, tp                 #; tp  = 0x0011ff60, (wrb) t4  <-- 0x0011ff60
       0      811        M 0x800026d0 bge     t0, t1, pc + 24        #; t0  = 0x80002c88, t1  = 0x80002c88, taken, goto 0x800026e8
       0      823        M 0x800026e8 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800026e8
       0      824        M 0x800026ec addi    t0, t0, 1440           #; t0  = 0x800026e8, (wrb) t0  <-- 0x80002c88
       0      835        M 0x800026f0 auipc   t1, 0x0                #; (wrb) t1  <-- 0x800026f0
       0      836        M 0x800026f4 addi    t1, t1, 1448           #; t1  = 0x800026f0, (wrb) t1  <-- 0x80002c98
       0      837        M 0x800026f8 bge     t0, t1, pc + 20        #; t0  = 0x80002c88, t1  = 0x80002c98, not taken
       0      838        M 0x800026fc sw      zero, 0(t4)            #; t4  = 0x0011ff60, 0 ~~> Word[0x0011ff60]
       0      847        M 0x80002700 addi    t0, t0, 4              #; t0  = 0x80002c88, (wrb) t0  <-- 0x80002c8c
       0      848        M 0x80002704 addi    t4, t4, 4              #; t4  = 0x0011ff60, (wrb) t4  <-- 0x0011ff64
       0      849        M 0x80002708 blt     t0, t2, pc - 12        #; t0  = 0x80002c8c, t2  = 0x80002c88, not taken
       0      850        M 0x8000270c addi    sp, sp, -20            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff4c
       0      862        M 0x80002710 sw      a0, 0(sp)              #; sp  = 0x0011ff4c, 0 ~~> Word[0x0011ff4c]
       0      863        M 0x80002714 sw      a1, 4(sp)              #; sp  = 0x0011ff4c, 8 ~~> Word[0x0011ff50]
       0      864        M 0x80002718 sw      a2, 8(sp)              #; sp  = 0x0011ff4c, 0x00100000 ~~> Word[0x0011ff54]
       0      865        M 0x8000271c sw      a3, 12(sp)             #; sp  = 0x0011ff4c, 0x0011df30 ~~> Word[0x0011ff58]
       0      875        M 0x80002720 sw      a4, 16(sp)             #; sp  = 0x0011ff4c, 4132 ~~> Word[0x0011ff5c]
       0      876        M 0x80002724 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002724
       0      877        M 0x80002728 jalr    ra, ra, -1060          #; ra  = 0x80002724, (wrb) ra  <-- 0x8000272c, goto 0x80002300
       0      898        M 0x80002300 sw      a5, 0(a5)              #; a5  = 0x0011ff70, 0x0011ff70 ~~> Word[0x0011ff70]
       0      899        M 0x80002304 sw      a4, 4(a5)              #; a5  = 0x0011ff70, 4132 ~~> Word[0x0011ff74]
       0      901        M 0x80002308 lw      t1, 8(a4)              #; a4  = 4132, t1  <~~ Word[0x0000102c]
       0      923        M                                           #; (lsu) t1  <-- 0
       0      924        M 0x8000230c sw      t1, 8(a5)              #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff78]
       0      925        M 0x80002310 lw      a6, 40(a4)             #; a4  = 4132, a6  <~~ Word[0x0000104c]
       0      963        M                                           #; (lsu) a6  <-- 1
       0      964        M 0x80002314 lw      a7, 44(a4)             #; a4  = 4132, a7  <~~ Word[0x00001050]
       0     1003        M                                           #; (lsu) a7  <-- 1
       0     1004        M 0x80002318 lw      t0, 4(a4)              #; a4  = 4132, t0  <~~ Word[0x00001028]
       0     1005        M 0x8000231c mul     a6, a7, a6             #; a7  = 1, a6  = 1
       0     1008        M                                           #; (acc) a0  <-- 0x02580533
       0     1043        M                                           #; (lsu) t0  <-- 8
       0     1044        M 0x80002320 mul     a0, a6, t0             #; a6  = 1, t0  = 8
       0     1047        M                                           #; (acc) a2  <-- 0x00a7a623
       0     1048        M 0x80002324 sw      a0, 12(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff7c]
       0     1049        M 0x80002328 csrr    a7, mhartid            #; mhartid = 0, (wrb) a7  <-- 0
       0     1050        M 0x8000232c sub     a0, a7, t1             #; a7  = 0, t1  = 0, (wrb) a0  <-- 0
       0     1051        M 0x80002330 divu    a0, a0, t0             #; a0  = 0, t0  = 8
       0     1054        M                                           #; (acc) a6  <-- 0x00a7a823
       0     1055        M 0x80002334 sw      a0, 16(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff80]
       0     1056        M 0x80002338 sw      a6, 20(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff84]
       0     1057        M 0x8000233c sw      t1, 24(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff88]
       0     1063        M 0x80002340 sw      a1, 28(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff8c]
       0     1064        M 0x80002344 lw      a0, 24(a4)             #; a4  = 4132, a0  <~~ Word[0x0000103c]
       0     1065        M 0x80002348 lui     a1, 0x10000            #; (wrb) a1  <-- 0x10000000
       0     1083        M                                           #; (lsu) a0  <-- 0x80000000
       0     1084        M 0x8000234c add     a0, a0, a1             #; a0  = 0x80000000, a1  = 0x10000000, (wrb) a0  <-- 0x90000000
       0     1085        M 0x80002350 sw      zero, 36(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff94]
       0     1086        M 0x80002354 sw      a0, 32(a5)             #; a5  = 0x0011ff70, 0x90000000 ~~> Word[0x0011ff90]
       0     1087        M 0x80002358 lw      a0, 32(a4)             #; a4  = 4132, a0  <~~ Word[0x00001044]
       0     1123        M                                           #; (lsu) a0  <-- 0
       0     1124        M 0x8000235c lw      a1, 36(a4)             #; a4  = 4132, a1  <~~ Word[0x00001048]
       0     1125        M 0x80002360 sw      a0, 40(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff98]
       0     1163        M                                           #; (lsu) a1  <-- 1
       0     1164        M 0x80002364 sw      a1, 44(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff9c]
       0     1165        M 0x80002368 sw      a2, 48(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffa0]
       0     1166        M 0x8000236c sw      zero, 52(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffa4]
       0     1167        M 0x80002370 sw      a3, 56(a5)             #; a5  = 0x0011ff70, 0x0011df30 ~~> Word[0x0011ffa8]
       0     1168        M 0x80002374 sw      zero, 60(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffac]
       0     1169        M 0x80002378 lw      a0, 16(a4)             #; a4  = 4132, a0  <~~ Word[0x00001034]
       0     1190        M                                           #; (lsu) a0  <-- 0x00020000
       0     1191        M 0x8000237c add     a6, a2, a0             #; a2  = 0x00100000, a0  = 0x00020000, (wrb) a6  <-- 0x00120000
       0     1192        M 0x80002380 addi    a1, a6, 400            #; a6  = 0x00120000, (wrb) a1  <-- 0x00120190
       0     1193        M 0x80002384 sw      a1, 112(a5)            #; a5  = 0x0011ff70, 0x00120190 ~~> Word[0x0011ffe0]
       0     1194        M 0x80002388 sltu    t0, a6, a0             #; a6  = 0x00120000, a0  = 0x00020000, (wrb) t0  <-- 0
       0     1195        M 0x8000238c srli    a1, a0, 1              #; a0  = 0x00020000, (wrb) a1  <-- 0x00010000
       0     1205        M 0x80002390 add     t1, a6, a1             #; a6  = 0x00120000, a1  = 0x00010000, (wrb) t1  <-- 0x00130000
       0     1206        M 0x80002394 sltu    a1, t1, a6             #; t1  = 0x00130000, a6  = 0x00120000, (wrb) a1  <-- 0
       0     1207        M 0x80002398 add     a1, t0, a1             #; t0  = 0, a1  = 0, (wrb) a1  <-- 0
       0     1208        M 0x8000239c sw      t1, 64(a5)             #; a5  = 0x0011ff70, 0x00130000 ~~> Word[0x0011ffb0]
       0     1219        M 0x800023a0 sw      a1, 68(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffb4]
       0     1220        M 0x800023a4 slli    a0, a0, 1              #; a0  = 0x00020000, (wrb) a0  <-- 0x00040000
       0     1221        M 0x800023a8 add     a1, a0, a2             #; a0  = 0x00040000, a2  = 0x00100000, (wrb) a1  <-- 0x00140000
       0     1222        M 0x800023ac sltu    a0, a1, a0             #; a1  = 0x00140000, a0  = 0x00040000, (wrb) a0  <-- 0
       0     1231        M 0x800023b0 sw      a1, 72(a5)             #; a5  = 0x0011ff70, 0x00140000 ~~> Word[0x0011ffb8]
       0     1232        M 0x800023b4 sw      a0, 76(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffbc]
       0     1234        M 0x800023b8 sw      zero, 104(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd8]
       0     1238        M 0x800023bc sw      zero, 108(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffdc]
       0     1243        M 0x800023c0 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1244        M 0x800023c4 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1245        M 0x800023c8 sw      a5, 0(a0)              #; a0  = 0x0011ff60, 0x0011ff70 ~~> Word[0x0011ff60]
       0     1246        M 0x800023cc lw      a0, 0(a5)              #; a5  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1250        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1255        M 0x800023d0 lw      a1, 24(a0)             #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ff88]
       0     1259        M                                           #; (lsu) a1  <-- 0
       0     1260        M 0x800023d4 lw      a0, 28(a0)             #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff8c]
       0     1261        M 0x800023d8 sub     a1, a7, a1             #; a7  = 0, a1  = 0, (wrb) a1  <-- 0
       0     1263        M                                           #; (lsu) a0  <-- 8
       0     1264        M 0x800023dc remu    a0, a1, a0             #; a1  = 0, a0  = 8
       0     1267        M 0x800023e0 lui     a1, 0x0                #; (wrb) a1  <-- 0
       0     1268        M 0x800023e4 add     a1, a1, tp             #; a1  = 0, tp  = 0x0011ff60, (wrb) a1  <-- 0x0011ff60
       0     1269        M                                           #; (acc) tp  <-- 0x00a5a223
       0     1270        M 0x800023e8 sw      a0, 4(a1)              #; a1  = 0x0011ff60, 0 ~~> Word[0x0011ff64]
       0     1271        M 0x800023ec li      a0, 1096               #; (wrb) a0  <-- 1096
       0     1279        M 0x800023f0 mul     a0, a7, a0             #; a7  = 0, a0  = 1096
       0     1280        M 0x800023f4 auipc   a1, 0x1                #; (wrb) a1  <-- 0x800033f4
       0     1281        M 0x800023f8 addi    a1, a1, -1712          #; a1  = 0x800033f4, (wrb) a1  <-- 0x80002d44
       0     1283        M                                           #; (acc) a0  <-- 0x00b50533
       0     1284        M 0x800023fc add     a0, a0, a1             #; a0  = 0, a1  = 0x80002d44, (wrb) a0  <-- 0x80002d44
       0     1291        M 0x80002400 sw      zero, 0(a0)            #; a0  = 0x80002d44, 0 ~~> Word[0x80002d44]
       0     1292        M 0x80002404 lw      a7, 48(a4)             #; a4  = 4132, a7  <~~ Word[0x00001054]
       0     1362        M                                           #; (lsu) a7  <-- 0xffff0000
       0     1363        M 0x80002408 sw      a7, 116(a5)            #; a5  = 0x0011ff70, 0xffff0000 ~~> Word[0x0011ffe4]
       0     1364        M 0x8000240c sw      a6, 124(a5)            #; a5  = 0x0011ff70, 0x00120000 ~~> Word[0x0011ffec]
       0     1365        M 0x80002410 sw      zero, 120(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffe8]
       0     1366        M 0x80002414 addi    a4, a6, 384            #; a6  = 0x00120000, (wrb) a4  <-- 0x00120180
       0     1367        M 0x80002418 sw      a4, 128(a5)            #; a5  = 0x0011ff70, 0x00120180 ~~> Word[0x0011fff0]
       0     1368        M 0x8000241c addi    a0, a2, 7              #; a2  = 0x00100000, (wrb) a0  <-- 0x00100007
       0     1369        M 0x80002420 andi    a0, a0, -8             #; a0  = 0x00100007, (wrb) a0  <-- 0x00100000
       0     1370        M 0x80002424 sw      a0, 80(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc0]
       0     1371        M 0x80002428 sub     a2, a3, a2             #; a3  = 0x0011df30, a2  = 0x00100000, (wrb) a2  <-- 0x0001df30
       0     1372        M 0x8000242c sw      a2, 84(a5)             #; a5  = 0x0011ff70, 0x0001df30 ~~> Word[0x0011ffc4]
       0     1373        M 0x80002430 sw      a0, 88(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc8]
       0     1374        M 0x80002434 lw      a0, 0(a1)              #; a1  = 0x80002d44, a0  <~~ Word[0x80002d44]
       0     1385        M                                           #; (lsu) a0  <-- 0
       0     1386        M 0x80002438 addi    a0, a0, 1103           #; a0  = 0, (wrb) a0  <-- 1103
       0     1387        M 0x8000243c andi    a0, a0, -8             #; a0  = 1103, (wrb) a0  <-- 1096
       0     1388        M 0x80002440 sw      a0, 92(a5)             #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffcc]
       0     1389        M 0x80002444 sw      zero, 96(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd0]
       0     1390        M 0x80002448 sw      a0, 100(a5)            #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffd4]
       0     1391        M 0x8000244c lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1392        M 0x80002450 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1393        M 0x80002454 sw      a7, 8(a0)              #; a0  = 0x0011ff60, 0xffff0000 ~~> Word[0x0011ff68]
       0     1394        M 0x80002458 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1395        M 0x8000245c add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1400        M 0x80002460 sw      a4, 12(a0)             #; a0  = 0x0011ff60, 0x00120180 ~~> Word[0x0011ff6c]
       0     1401        M 0x80002464 ret                            #; ra  = 0x8000272c, goto 0x8000272c
       0     1415        M 0x8000272c lw      a0, 0(sp)              #; sp  = 0x0011ff4c, a0  <~~ Word[0x0011ff4c]
       0     1418        M                                           #; (lsu) a0  <-- 0
       0     1419        M 0x80002730 lw      a1, 4(sp)              #; sp  = 0x0011ff4c, a1  <~~ Word[0x0011ff50]
       0     1422        M                                           #; (lsu) a1  <-- 8
       0     1423        M 0x80002734 lw      a2, 8(sp)              #; sp  = 0x0011ff4c, a2  <~~ Word[0x0011ff54]
       0     1426        M                                           #; (lsu) a2  <-- 0x00100000
       0     1427        M 0x80002738 lw      a3, 12(sp)             #; sp  = 0x0011ff4c, a3  <~~ Word[0x0011ff58]
       0     1430        M                                           #; (lsu) a3  <-- 0x0011df30
       0     1431        M 0x8000273c lw      a4, 16(sp)             #; sp  = 0x0011ff4c, a4  <~~ Word[0x0011ff5c]
       0     1432        M 0x80002740 addi    sp, sp, 20             #; sp  = 0x0011ff4c, (wrb) sp  <-- 0x0011ff60
       0     1433        M 0x80002744 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002744
       0     1434        M 0x80002748 addi    t0, t0, 60             #; t0  = 0x80002744, (wrb) t0  <-- 0x80002780
       0     1435        M 0x8000274c csrw    mtvec, t0              #; t0  = 0x80002780, (lsu) a4  <-- 4132
       0     1443        M 0x80002750 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002750
       0     1444        M 0x80002754 jalr    ra, ra, 544            #; ra  = 0x80002750, (wrb) ra  <-- 0x80002758, goto 0x80002970
       0     1460        M 0x80002970 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
       0     1461        M 0x80002974 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x80002758 ~~> Word[0x0011ff5c]
       0     1462        M 0x80002978 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002978
       0     1463        M 0x8000297c jalr    ra, ra, -1264          #; ra  = 0x80002978, (wrb) ra  <-- 0x80002980, goto 0x80002488
       0     1481        M 0x80002488 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1482        M 0x8000248c add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1493        M 0x80002490 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     1496        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1497        M 0x80002494 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1501        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1502        M 0x80002498 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
       0     1503        M 0x8000249c ret                            #; ra  = 0x80002980, goto 0x80002980
       0     1505        M                                           #; (lsu) a0  <-- 0x00120190
       0     1506        M 0x80002980 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
       0     1535        M                                           #; (lsu) a0  <-- 0
       0     1536        M 0x80002984 mv      zero, a0               #; a0  = 0
       0     1537        M 0x80002988 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
       0     1538        M 0x8000298c addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
       0     1540        M                                           #; (lsu) ra  <-- 0x80002758
       0     1541        M 0x80002990 ret                            #; ra  = 0x80002758, goto 0x80002758
       0     1545        M 0x80002758 auipc   ra, 0xffffe            #; (wrb) ra  <-- 0x80000758
       0     1546        M 0x8000275c jalr    ra, ra, -292           #; ra  = 0x80000758, (wrb) ra  <-- 0x80002760, goto 0x80000634
       0     1551        M 0x80000634 addi    sp, sp, -16            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff50
       0     1552        M 0x80000638 sw      ra, 12(sp)             #; sp  = 0x0011ff50, 0x80002760 ~~> Word[0x0011ff5c]
       0     1553        M 0x8000063c lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1554        M 0x80000640 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1555        M 0x80000644 lw      a0, 4(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff64]
       0     1558        M                                           #; (lsu) a0  <-- 0
       0     1559        M 0x80000648 bnez    a0, pc + 84            #; a0  = 0, not taken
       0     1560        M 0x8000064c lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1567        M 0x80000650 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1568        M 0x80000654 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     1571        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1572        M 0x80000658 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1575        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1576        M 0x8000065c lw      a1, 88(a0)             #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ffc8]
       0     1579        M                                           #; (lsu) a1  <-- 0x00100000
       0     1583        M 0x80000660 addi    a2, a1, 80             #; a1  = 0x00100000, (wrb) a2  <-- 0x00100050
       0     1584        M 0x80000664 sw      a2, 88(a0)             #; a0  = 0x0011ff70, 0x00100050 ~~> Word[0x0011ffc8]
       0     1585        M 0x80000668 sw      zero, 4(a1)            #; a1  = 0x00100000, 0 ~~> Word[0x00100004]
       0     1586        M 0x8000066c sw      zero, 0(a1)            #; a1  = 0x00100000, 0 ~~> Word[0x00100000]
       0     1596        M 0x80000670 addi    a0, a1, 8              #; a1  = 0x00100000, (wrb) a0  <-- 0x00100008
       0     1597        M 0x80000674 li      a2, 72                 #; (wrb) a2  <-- 72
       0     1598        M 0x80000678 li      a1, 0                  #; (wrb) a1  <-- 0
       0     1599        M 0x8000067c auipc   ra, 0x0                #; (wrb) ra  <-- 0x8000067c
       0     1621        M 0x80000680 jalr    ra, ra, -1660          #; ra  = 0x8000067c, (wrb) ra  <-- 0x80000684, goto 0x80000000
       0     1635        M 0x80000000 li      t1, 15                 #; (wrb) t1  <-- 15
       0     1636        M 0x80000004 mv      a4, a0                 #; a0  = 0x00100008, (wrb) a4  <-- 0x00100008
       0     1637        M 0x80000008 bgeu    t1, a2, pc + 60        #; t1  = 15, a2  = 72, not taken
       0     1638        M 0x8000000c andi    a5, a4, 15             #; a4  = 0x00100008, (wrb) a5  <-- 8
       0     1647        M 0x80000010 bnez    a5, pc + 160           #; a5  = 8, taken, goto 0x800000b0
       0     1670        M 0x800000b0 slli    a3, a5, 2              #; a5  = 8, (wrb) a3  <-- 32
       0     1671        M 0x800000b4 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800000b4
       0     1672        M 0x800000b8 add     a3, a3, t0             #; a3  = 32, t0  = 0x800000b4, (wrb) a3  <-- 0x800000d4
       0     1673        M 0x800000bc mv      t0, ra                 #; ra  = 0x80000684, (wrb) t0  <-- 0x80000684
       0     1682        M 0x800000c0 jalr    ra, a3, -96            #; a3  = 0x800000d4, (wrb) ra  <-- 0x800000c4, goto 0x80000074
       0     1705        M 0x80000074 sb      a1, 7(a4)              #; a4  = 0x00100008, 0 ~~> Byte[0x0010000f]
       0     1706        M 0x80000078 sb      a1, 6(a4)              #; a4  = 0x00100008, 0 ~~> Byte[0x0010000e]
       0     1707        M 0x8000007c sb      a1, 5(a4)              #; a4  = 0x00100008, 0 ~~> Byte[0x0010000d]
       0     1717        M 0x80000080 sb      a1, 4(a4)              #; a4  = 0x00100008, 0 ~~> Byte[0x0010000c]
       0     1718        M 0x80000084 sb      a1, 3(a4)              #; a4  = 0x00100008, 0 ~~> Byte[0x0010000b]
       0     1719        M 0x80000088 sb      a1, 2(a4)              #; a4  = 0x00100008, 0 ~~> Byte[0x0010000a]
       0     1720        M 0x8000008c sb      a1, 1(a4)              #; a4  = 0x00100008, 0 ~~> Byte[0x00100009]
       0     1729        M 0x80000090 sb      a1, 0(a4)              #; a4  = 0x00100008, 0 ~~> Byte[0x00100008]
       0     1730        M 0x80000094 ret                            #; ra  = 0x800000c4, goto 0x800000c4
       0     1731        M 0x800000c4 mv      ra, t0                 #; t0  = 0x80000684, (wrb) ra  <-- 0x80000684
       0     1732        M 0x800000c8 addi    a5, a5, -16            #; a5  = 8, (wrb) a5  <-- -8
       0     1733        M 0x800000cc sub     a4, a4, a5             #; a4  = 0x00100008, a5  = -8, (wrb) a4  <-- 0x00100010
       0     1734        M 0x800000d0 add     a2, a2, a5             #; a2  = 72, a5  = -8, (wrb) a2  <-- 64
       0     1735        M 0x800000d4 bgeu    t1, a2, pc - 144       #; t1  = 15, a2  = 64, not taken
       0     1736        M 0x800000d8 j       pc - 0xc4              #; goto 0x80000014
       0     1743        M 0x80000014 bnez    a1, pc + 132           #; a1  = 0, not taken
       0     1744        M 0x80000018 andi    a3, a2, -16            #; a2  = 64, (wrb) a3  <-- 64
       0     1745        M 0x8000001c andi    a2, a2, 15             #; a2  = 64, (wrb) a2  <-- 0
       0     1746        M 0x80000020 add     a3, a3, a4             #; a3  = 64, a4  = 0x00100010, (wrb) a3  <-- 0x00100050
       0     1747        M 0x80000024 sw      a1, 0(a4)              #; a4  = 0x00100010, 0 ~~> Word[0x00100010]
       0     1748        M 0x80000028 sw      a1, 4(a4)              #; a4  = 0x00100010, 0 ~~> Word[0x00100014]
       0     1749        M 0x8000002c sw      a1, 8(a4)              #; a4  = 0x00100010, 0 ~~> Word[0x00100018]
       0     1758        M 0x80000030 sw      a1, 12(a4)             #; a4  = 0x00100010, 0 ~~> Word[0x0010001c]
       0     1759        M 0x80000034 addi    a4, a4, 16             #; a4  = 0x00100010, (wrb) a4  <-- 0x00100020
       0     1760        M 0x80000038 bltu    a4, a3, pc - 20        #; a4  = 0x00100020, a3  = 0x00100050, taken, goto 0x80000024
       0     1761        M 0x80000024 sw      a1, 0(a4)              #; a4  = 0x00100020, 0 ~~> Word[0x00100020]
       0     1762        M 0x80000028 sw      a1, 4(a4)              #; a4  = 0x00100020, 0 ~~> Word[0x00100024]
       0     1763        M 0x8000002c sw      a1, 8(a4)              #; a4  = 0x00100020, 0 ~~> Word[0x00100028]
       0     1764        M 0x80000030 sw      a1, 12(a4)             #; a4  = 0x00100020, 0 ~~> Word[0x0010002c]
       0     1765        M 0x80000034 addi    a4, a4, 16             #; a4  = 0x00100020, (wrb) a4  <-- 0x00100030
       0     1766        M 0x80000038 bltu    a4, a3, pc - 20        #; a4  = 0x00100030, a3  = 0x00100050, taken, goto 0x80000024
       0     1767        M 0x80000024 sw      a1, 0(a4)              #; a4  = 0x00100030, 0 ~~> Word[0x00100030]
       0     1768        M 0x80000028 sw      a1, 4(a4)              #; a4  = 0x00100030, 0 ~~> Word[0x00100034]
       0     1769        M 0x8000002c sw      a1, 8(a4)              #; a4  = 0x00100030, 0 ~~> Word[0x00100038]
       0     1770        M 0x80000030 sw      a1, 12(a4)             #; a4  = 0x00100030, 0 ~~> Word[0x0010003c]
       0     1771        M 0x80000034 addi    a4, a4, 16             #; a4  = 0x00100030, (wrb) a4  <-- 0x00100040
       0     1772        M 0x80000038 bltu    a4, a3, pc - 20        #; a4  = 0x00100040, a3  = 0x00100050, taken, goto 0x80000024
       0     1773        M 0x80000024 sw      a1, 0(a4)              #; a4  = 0x00100040, 0 ~~> Word[0x00100040]
       0     1774        M 0x80000028 sw      a1, 4(a4)              #; a4  = 0x00100040, 0 ~~> Word[0x00100044]
       0     1775        M 0x8000002c sw      a1, 8(a4)              #; a4  = 0x00100040, 0 ~~> Word[0x00100048]
       0     1776        M 0x80000030 sw      a1, 12(a4)             #; a4  = 0x00100040, 0 ~~> Word[0x0010004c]
       0     1777        M 0x80000034 addi    a4, a4, 16             #; a4  = 0x00100040, (wrb) a4  <-- 0x00100050
       0     1778        M 0x80000038 bltu    a4, a3, pc - 20        #; a4  = 0x00100050, a3  = 0x00100050, not taken
       0     1779        M 0x8000003c bnez    a2, pc + 8             #; a2  = 0, not taken
       0     1791        M 0x80000040 ret                            #; ra  = 0x80000684, goto 0x80000684
       0     1805        M 0x80000684 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002684
       0     1806        M 0x80000688 addi    a0, a0, 865            #; a0  = 0x80002684, (wrb) a0  <-- 0x800029e5
       0     1807        M 0x8000068c li      a2, 0                  #; (wrb) a2  <-- 0
       0     1808        M 0x80000690 li      a3, 0                  #; (wrb) a3  <-- 0
       0     1809        M 0x80000694 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000694
       0     1810        M 0x80000698 jalr    ra, ra, 24             #; ra  = 0x80000694, (wrb) ra  <-- 0x8000069c, goto 0x800006ac
       0     1811        M 0x800006ac addi    sp, sp, -48            #; sp  = 0x0011ff50, (wrb) sp  <-- 0x0011ff20
       0     1814        M 0x800006b0 sw      ra, 12(sp)             #; sp  = 0x0011ff20, 0x8000069c ~~> Word[0x0011ff2c]
       0     1815        M 0x800006b4 mv      t0, a0                 #; a0  = 0x800029e5, (wrb) t0  <-- 0x800029e5
       0     1816        M 0x800006b8 sw      a7, 44(sp)             #; sp  = 0x0011ff20, 0xffff0000 ~~> Word[0x0011ff4c]
       0     1817        M 0x800006bc sw      a6, 40(sp)             #; sp  = 0x0011ff20, 0x00120000 ~~> Word[0x0011ff48]
       0     1826        M 0x800006c0 sw      a5, 36(sp)             #; sp  = 0x0011ff20, -8 ~~> Word[0x0011ff44]
       0     1827        M 0x800006c4 sw      a4, 32(sp)             #; sp  = 0x0011ff20, 0x00100050 ~~> Word[0x0011ff40]
       0     1828        M 0x800006c8 sw      a3, 28(sp)             #; sp  = 0x0011ff20, 0 ~~> Word[0x0011ff3c]
       0     1829        M 0x800006cc sw      a2, 24(sp)             #; sp  = 0x0011ff20, 0 ~~> Word[0x0011ff38]
       0     1838        M 0x800006d0 sw      a1, 20(sp)             #; sp  = 0x0011ff20, 0 ~~> Word[0x0011ff34]
       0     1839        M 0x800006d4 addi    a0, sp, 20             #; sp  = 0x0011ff20, (wrb) a0  <-- 0x0011ff34
       0     1840        M 0x800006d8 sw      a0, 8(sp)              #; sp  = 0x0011ff20, 0x0011ff34 ~~> Word[0x0011ff28]
       0     1841        M 0x800006dc auipc   a0, 0x1                #; (wrb) a0  <-- 0x800016dc
       0     1850        M 0x800006e0 addi    a0, a0, -988           #; a0  = 0x800016dc, (wrb) a0  <-- 0x80001300
       0     1851        M 0x800006e4 addi    a1, sp, 7              #; sp  = 0x0011ff20, (wrb) a1  <-- 0x0011ff27
       0     1852        M 0x800006e8 li      a2, -1                 #; (wrb) a2  <-- -1
       0     1853        M 0x800006ec addi    a4, sp, 20             #; sp  = 0x0011ff20, (wrb) a4  <-- 0x0011ff34
       0     1862        M 0x800006f0 mv      a3, t0                 #; t0  = 0x800029e5, (wrb) a3  <-- 0x800029e5
       0     1863        M 0x800006f4 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800006f4
       0     1864        M 0x800006f8 jalr    ra, ra, 20             #; ra  = 0x800006f4, (wrb) ra  <-- 0x800006fc, goto 0x80000708
       0     1874        M 0x80000708 addi    sp, sp, -112           #; sp  = 0x0011ff20, (wrb) sp  <-- 0x0011feb0
       0     1875        M 0x8000070c sw      ra, 108(sp)            #; sp  = 0x0011feb0, 0x800006fc ~~> Word[0x0011ff1c]
       0     1886        M 0x80000710 sw      s0, 104(sp)            #; sp  = 0x0011feb0, 0 ~~> Word[0x0011ff18]
       0     1887        M 0x80000714 sw      s1, 100(sp)            #; sp  = 0x0011feb0, 0 ~~> Word[0x0011ff14]
       0     1888        M 0x80000718 sw      s2, 96(sp)             #; sp  = 0x0011feb0, 0 ~~> Word[0x0011ff10]
       0     1889        M 0x8000071c sw      s3, 92(sp)             #; sp  = 0x0011feb0, 0 ~~> Word[0x0011ff0c]
       0     1898        M 0x80000720 sw      s4, 88(sp)             #; sp  = 0x0011feb0, 0 ~~> Word[0x0011ff08]
       0     1899        M 0x80000724 sw      s5, 84(sp)             #; sp  = 0x0011feb0, 0 ~~> Word[0x0011ff04]
       0     1900        M 0x80000728 sw      s6, 80(sp)             #; sp  = 0x0011feb0, 0 ~~> Word[0x0011ff00]
       0     1901        M 0x8000072c sw      s7, 76(sp)             #; sp  = 0x0011feb0, 0 ~~> Word[0x0011fefc]
       0     1910        M 0x80000730 sw      s8, 72(sp)             #; sp  = 0x0011feb0, 0 ~~> Word[0x0011fef8]
       0     1911        M 0x80000734 sw      s9, 68(sp)             #; sp  = 0x0011feb0, 0 ~~> Word[0x0011fef4]
       0     1912        M 0x80000738 sw      s10, 64(sp)            #; sp  = 0x0011feb0, 0 ~~> Word[0x0011fef0]
       0     1913        M 0x8000073c sw      s11, 60(sp)            #; sp  = 0x0011feb0, 0 ~~> Word[0x0011feec]
       0     1922        M 0x80000740 mv      s3, a4                 #; a4  = 0x0011ff34, (wrb) s3  <-- 0x0011ff34
       0     1923        M 0x80000744 mv      s0, a3                 #; a3  = 0x800029e5, (wrb) s0  <-- 0x800029e5
       0     1924        M 0x80000748 mv      s5, a2                 #; a2  = -1, (wrb) s5  <-- -1
       0     1925        M 0x8000074c mv      s4, a1                 #; a1  = 0x0011ff27, (wrb) s4  <-- 0x0011ff27
       0     1934        M 0x80000750 beqz    a1, pc + 12            #; a1  = 0x0011ff27, not taken
       0     1935        M 0x80000754 mv      s2, a0                 #; a0  = 0x80001300, (wrb) s2  <-- 0x80001300
       0     1936        M 0x80000758 j       pc + 0xc               #; goto 0x80000764
       0     1946        M 0x80000764 li      s8, 0                  #; (wrb) s8  <-- 0
       0     1947        M 0x80000768 li      s6, 37                 #; (wrb) s6  <-- 37
       0     1948        M 0x8000076c li      s11, 16                #; (wrb) s11 <-- 16
       0     1958        M 0x80000770 li      s7, 46                 #; (wrb) s7  <-- 46
       0     1959        M 0x80000774 lui     a0, 0x1                #; (wrb) a0  <-- 4096
       0     1960        M 0x80000778 addi    a0, a0, -2048          #; a0  = 4096, (wrb) a0  <-- 2048
       0     1961        M 0x8000077c sw      a0, 24(sp)             #; sp  = 0x0011feb0, 2048 ~~> Word[0x0011fec8]
       0     1970        M 0x80000780 lui     a0, 0x10               #; (wrb) a0  <-- 0x00010000
       0     1971        M 0x80000784 addi    a0, a0, -1             #; a0  = 0x00010000, (wrb) a0  <-- 65535
       0     1972        M 0x80000788 sw      a0, 16(sp)             #; sp  = 0x0011feb0, 65535 ~~> Word[0x0011fec0]
       0     1973        M 0x8000078c addi    s10, s0, 2             #; s0  = 0x800029e5, (wrb) s10 <-- 0x800029e7
       0     1982        M 0x80000790 mv      s9, s8                 #; s8  = 0, (wrb) s9  <-- 0
       0     1983        M 0x80000794 li      s8, 10                 #; (wrb) s8  <-- 10
       0     1984        M 0x80000798 lbu     a0, 0(s0)              #; s0  = 0x800029e5, a0  <~~ Byte[0x800029e5]
       0     1995        M                                           #; (lsu) a0  <-- 101
       0     1996        M 0x8000079c beqz    a0, pc + 2824          #; a0  = 101, not taken
       0     1997        M 0x800007a0 beq     a0, s6, pc + 48        #; a0  = 101, s6  = 37, not taken
       0     1998        M 0x800007a4 addi    s1, s9, 1              #; s9  = 0, (wrb) s1  <-- 1
       0     1999        M 0x800007a8 mv      a1, s4                 #; s4  = 0x0011ff27, (wrb) a1  <-- 0x0011ff27
       0     2000        M 0x800007ac mv      a2, s9                 #; s9  = 0, (wrb) a2  <-- 0
       0     2009        M 0x800007b0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2010        M 0x800007b4 jalr    s2                     #; s2  = 0x80001300, (wrb) ra  <-- 0x800007b8, goto 0x80001300
       0     2032        M 0x80001300 beqz    a0, pc + 168           #; a0  = 101, not taken
       0     2033        M 0x80001304 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2034        M 0x80001308 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2035        M 0x8000130c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2044        M 0x80001310 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003310
       0     2045        M 0x80001314 addi    a3, a3, -1484          #; a3  = 0x80003310, (wrb) a3  <-- 0x80002d44
       0     2046        M 0x80001318 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002d44, (wrb) a1  <-- 0x80002d44
       0     2047        M 0x8000131c lw      a4, 0(a1)              #; a1  = 0x80002d44, a4  <~~ Word[0x80002d44]
       0     2058        M                                           #; (lsu) a4  <-- 0
       0     2059        M 0x80001320 addi    a5, a4, 1              #; a4  = 0, (wrb) a5  <-- 1
       0     2060        M 0x80001324 sw      a5, 0(a1)              #; a1  = 0x80002d44, 1 ~~> Word[0x80002d44]
       0     2061        M 0x80001328 add     a4, a1, a4             #; a1  = 0x80002d44, a4  = 0, (wrb) a4  <-- 0x80002d44
       0     2062        M 0x8000132c sb      a0, 72(a4)             #; a4  = 0x80002d44, 101 ~~> Byte[0x80002d8c]
       0     2068        M 0x80001330 lw      a4, 0(a1)              #; a1  = 0x80002d44, a4  <~~ Word[0x80002d44]
       0     2084        M                                           #; (lsu) a4  <-- 1
       0     2085        M 0x80001334 addi    a4, a4, -1020          #; a4  = 1, (wrb) a4  <-- -1019
       0     2086        M 0x80001338 snez    a4, a4                 #; a4  = -1019, (wrb) a4  <-- 1
       0     2087        M 0x8000133c addi    a0, a0, -10            #; a0  = 101, (wrb) a0  <-- 91
       0     2088        M 0x80001340 snez    a0, a0                 #; a0  = 91, (wrb) a0  <-- 1
       0     2089        M 0x80001344 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2090        M 0x80001348 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800013a8
       0     2111        M 0x800013a8 ret                            #; ra  = 0x800007b8, goto 0x800007b8
       0     2125        M 0x800007b8 addi    s0, s0, 1              #; s0  = 0x800029e5, (wrb) s0  <-- 0x800029e6
       0     2126        M 0x800007bc addi    s10, s10, 1            #; s10 = 0x800029e7, (wrb) s10 <-- 0x800029e8
       0     2128        M 0x800007c0 mv      s9, s1                 #; s1  = 1, (wrb) s9  <-- 1
       0     2129        M 0x800007c4 lbu     a0, 0(s0)              #; s0  = 0x800029e6, a0  <~~ Byte[0x800029e6]
       0     2140        M                                           #; (lsu) a0  <-- 114
       0     2141        M 0x800007c8 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x800007a0
       0     2142        M 0x800007a0 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     2143        M 0x800007a4 addi    s1, s9, 1              #; s9  = 1, (wrb) s1  <-- 2
       0     2144        M 0x800007a8 mv      a1, s4                 #; s4  = 0x0011ff27, (wrb) a1  <-- 0x0011ff27
       0     2145        M 0x800007ac mv      a2, s9                 #; s9  = 1, (wrb) a2  <-- 1
       0     2146        M 0x800007b0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2147        M 0x800007b4 jalr    s2                     #; s2  = 0x80001300, (wrb) ra  <-- 0x800007b8, goto 0x80001300
       0     2150        M 0x80001300 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     2151        M 0x80001304 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2152        M 0x80001308 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2153        M 0x8000130c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2154        M 0x80001310 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003310
       0     2155        M 0x80001314 addi    a3, a3, -1484          #; a3  = 0x80003310, (wrb) a3  <-- 0x80002d44
       0     2156        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2157        M 0x80001318 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002d44, (wrb) a1  <-- 0x80002d44
       0     2158        M 0x8000131c lw      a4, 0(a1)              #; a1  = 0x80002d44, a4  <~~ Word[0x80002d44]
       0     2169        M                                           #; (lsu) a4  <-- 1
       0     2170        M 0x80001320 addi    a5, a4, 1              #; a4  = 1, (wrb) a5  <-- 2
       0     2171        M 0x80001324 sw      a5, 0(a1)              #; a1  = 0x80002d44, 2 ~~> Word[0x80002d44]
       0     2172        M 0x80001328 add     a4, a1, a4             #; a1  = 0x80002d44, a4  = 1, (wrb) a4  <-- 0x80002d45
       0     2173        M 0x8000132c sb      a0, 72(a4)             #; a4  = 0x80002d45, 114 ~~> Byte[0x80002d8d]
       0     2174        M 0x80001330 lw      a4, 0(a1)              #; a1  = 0x80002d44, a4  <~~ Word[0x80002d44]
       0     2195        M                                           #; (lsu) a4  <-- 2
       0     2196        M 0x80001334 addi    a4, a4, -1020          #; a4  = 2, (wrb) a4  <-- -1018
       0     2197        M 0x80001338 snez    a4, a4                 #; a4  = -1018, (wrb) a4  <-- 1
       0     2198        M 0x8000133c addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     2199        M 0x80001340 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     2200        M 0x80001344 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2201        M 0x80001348 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800013a8
       0     2204        M 0x800013a8 ret                            #; ra  = 0x800007b8, goto 0x800007b8
       0     2209        M 0x800007b8 addi    s0, s0, 1              #; s0  = 0x800029e6, (wrb) s0  <-- 0x800029e7
       0     2210        M 0x800007bc addi    s10, s10, 1            #; s10 = 0x800029e8, (wrb) s10 <-- 0x800029e9
       0     2212        M 0x800007c0 mv      s9, s1                 #; s1  = 2, (wrb) s9  <-- 2
       0     2213        M 0x800007c4 lbu     a0, 0(s0)              #; s0  = 0x800029e7, a0  <~~ Byte[0x800029e7]
       0     2224        M                                           #; (lsu) a0  <-- 114
       0     2225        M 0x800007c8 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x800007a0
       0     2226        M 0x800007a0 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     2227        M 0x800007a4 addi    s1, s9, 1              #; s9  = 2, (wrb) s1  <-- 3
       0     2228        M 0x800007a8 mv      a1, s4                 #; s4  = 0x0011ff27, (wrb) a1  <-- 0x0011ff27
       0     2229        M 0x800007ac mv      a2, s9                 #; s9  = 2, (wrb) a2  <-- 2
       0     2230        M 0x800007b0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2231        M 0x800007b4 jalr    s2                     #; s2  = 0x80001300, (wrb) ra  <-- 0x800007b8, goto 0x80001300
       0     2234        M 0x80001300 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     2235        M 0x80001304 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2236        M 0x80001308 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2237        M 0x8000130c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2238        M 0x80001310 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003310
       0     2239        M 0x80001314 addi    a3, a3, -1484          #; a3  = 0x80003310, (wrb) a3  <-- 0x80002d44
       0     2240        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2241        M 0x80001318 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002d44, (wrb) a1  <-- 0x80002d44
       0     2242        M 0x8000131c lw      a4, 0(a1)              #; a1  = 0x80002d44, a4  <~~ Word[0x80002d44]
       0     2253        M                                           #; (lsu) a4  <-- 2
       0     2254        M 0x80001320 addi    a5, a4, 1              #; a4  = 2, (wrb) a5  <-- 3
       0     2255        M 0x80001324 sw      a5, 0(a1)              #; a1  = 0x80002d44, 3 ~~> Word[0x80002d44]
       0     2256        M 0x80001328 add     a4, a1, a4             #; a1  = 0x80002d44, a4  = 2, (wrb) a4  <-- 0x80002d46
       0     2257        M 0x8000132c sb      a0, 72(a4)             #; a4  = 0x80002d46, 114 ~~> Byte[0x80002d8e]
       0     2258        M 0x80001330 lw      a4, 0(a1)              #; a1  = 0x80002d44, a4  <~~ Word[0x80002d44]
       0     2279        M                                           #; (lsu) a4  <-- 3
       0     2280        M 0x80001334 addi    a4, a4, -1020          #; a4  = 3, (wrb) a4  <-- -1017
       0     2281        M 0x80001338 snez    a4, a4                 #; a4  = -1017, (wrb) a4  <-- 1
       0     2282        M 0x8000133c addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     2283        M 0x80001340 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     2284        M 0x80001344 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2285        M 0x80001348 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800013a8
       0     2288        M 0x800013a8 ret                            #; ra  = 0x800007b8, goto 0x800007b8
       0     2293        M 0x800007b8 addi    s0, s0, 1              #; s0  = 0x800029e7, (wrb) s0  <-- 0x800029e8
       0     2294        M 0x800007bc addi    s10, s10, 1            #; s10 = 0x800029e9, (wrb) s10 <-- 0x800029ea
       0     2296        M 0x800007c0 mv      s9, s1                 #; s1  = 3, (wrb) s9  <-- 3
       0     2297        M 0x800007c4 lbu     a0, 0(s0)              #; s0  = 0x800029e8, a0  <~~ Byte[0x800029e8]
       0     2308        M                                           #; (lsu) a0  <-- 111
       0     2309        M 0x800007c8 bnez    a0, pc - 40            #; a0  = 111, taken, goto 0x800007a0
       0     2310        M 0x800007a0 beq     a0, s6, pc + 48        #; a0  = 111, s6  = 37, not taken
       0     2311        M 0x800007a4 addi    s1, s9, 1              #; s9  = 3, (wrb) s1  <-- 4
       0     2312        M 0x800007a8 mv      a1, s4                 #; s4  = 0x0011ff27, (wrb) a1  <-- 0x0011ff27
       0     2313        M 0x800007ac mv      a2, s9                 #; s9  = 3, (wrb) a2  <-- 3
       0     2314        M 0x800007b0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2315        M 0x800007b4 jalr    s2                     #; s2  = 0x80001300, (wrb) ra  <-- 0x800007b8, goto 0x80001300
       0     2318        M 0x80001300 beqz    a0, pc + 168           #; a0  = 111, not taken
       0     2319        M 0x80001304 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2320        M 0x80001308 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2321        M 0x8000130c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2322        M 0x80001310 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003310
       0     2323        M 0x80001314 addi    a3, a3, -1484          #; a3  = 0x80003310, (wrb) a3  <-- 0x80002d44
       0     2324        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2325        M 0x80001318 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002d44, (wrb) a1  <-- 0x80002d44
       0     2326        M 0x8000131c lw      a4, 0(a1)              #; a1  = 0x80002d44, a4  <~~ Word[0x80002d44]
       0     2337        M                                           #; (lsu) a4  <-- 3
       0     2338        M 0x80001320 addi    a5, a4, 1              #; a4  = 3, (wrb) a5  <-- 4
       0     2339        M 0x80001324 sw      a5, 0(a1)              #; a1  = 0x80002d44, 4 ~~> Word[0x80002d44]
       0     2340        M 0x80001328 add     a4, a1, a4             #; a1  = 0x80002d44, a4  = 3, (wrb) a4  <-- 0x80002d47
       0     2341        M 0x8000132c sb      a0, 72(a4)             #; a4  = 0x80002d47, 111 ~~> Byte[0x80002d8f]
       0     2342        M 0x80001330 lw      a4, 0(a1)              #; a1  = 0x80002d44, a4  <~~ Word[0x80002d44]
       0     2363        M                                           #; (lsu) a4  <-- 4
       0     2364        M 0x80001334 addi    a4, a4, -1020          #; a4  = 4, (wrb) a4  <-- -1016
       0     2365        M 0x80001338 snez    a4, a4                 #; a4  = -1016, (wrb) a4  <-- 1
       0     2366        M 0x8000133c addi    a0, a0, -10            #; a0  = 111, (wrb) a0  <-- 101
       0     2367        M 0x80001340 snez    a0, a0                 #; a0  = 101, (wrb) a0  <-- 1
       0     2368        M 0x80001344 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2369        M 0x80001348 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800013a8
       0     2372        M 0x800013a8 ret                            #; ra  = 0x800007b8, goto 0x800007b8
       0     2377        M 0x800007b8 addi    s0, s0, 1              #; s0  = 0x800029e8, (wrb) s0  <-- 0x800029e9
       0     2378        M 0x800007bc addi    s10, s10, 1            #; s10 = 0x800029ea, (wrb) s10 <-- 0x800029eb
       0     2380        M 0x800007c0 mv      s9, s1                 #; s1  = 4, (wrb) s9  <-- 4
       0     2381        M 0x800007c4 lbu     a0, 0(s0)              #; s0  = 0x800029e9, a0  <~~ Byte[0x800029e9]
       0     2392        M                                           #; (lsu) a0  <-- 114
       0     2393        M 0x800007c8 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x800007a0
       0     2394        M 0x800007a0 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     2395        M 0x800007a4 addi    s1, s9, 1              #; s9  = 4, (wrb) s1  <-- 5
       0     2396        M 0x800007a8 mv      a1, s4                 #; s4  = 0x0011ff27, (wrb) a1  <-- 0x0011ff27
       0     2397        M 0x800007ac mv      a2, s9                 #; s9  = 4, (wrb) a2  <-- 4
       0     2398        M 0x800007b0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2399        M 0x800007b4 jalr    s2                     #; s2  = 0x80001300, (wrb) ra  <-- 0x800007b8, goto 0x80001300
       0     2402        M 0x80001300 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     2403        M 0x80001304 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2404        M 0x80001308 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2405        M 0x8000130c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2406        M 0x80001310 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003310
       0     2407        M 0x80001314 addi    a3, a3, -1484          #; a3  = 0x80003310, (wrb) a3  <-- 0x80002d44
       0     2408        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2409        M 0x80001318 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002d44, (wrb) a1  <-- 0x80002d44
       0     2410        M 0x8000131c lw      a4, 0(a1)              #; a1  = 0x80002d44, a4  <~~ Word[0x80002d44]
       0     2421        M                                           #; (lsu) a4  <-- 4
       0     2422        M 0x80001320 addi    a5, a4, 1              #; a4  = 4, (wrb) a5  <-- 5
       0     2423        M 0x80001324 sw      a5, 0(a1)              #; a1  = 0x80002d44, 5 ~~> Word[0x80002d44]
       0     2424        M 0x80001328 add     a4, a1, a4             #; a1  = 0x80002d44, a4  = 4, (wrb) a4  <-- 0x80002d48
       0     2425        M 0x8000132c sb      a0, 72(a4)             #; a4  = 0x80002d48, 114 ~~> Byte[0x80002d90]
       0     2426        M 0x80001330 lw      a4, 0(a1)              #; a1  = 0x80002d44, a4  <~~ Word[0x80002d44]
       0     2447        M                                           #; (lsu) a4  <-- 5
       0     2448        M 0x80001334 addi    a4, a4, -1020          #; a4  = 5, (wrb) a4  <-- -1015
       0     2449        M 0x80001338 snez    a4, a4                 #; a4  = -1015, (wrb) a4  <-- 1
       0     2450        M 0x8000133c addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     2451        M 0x80001340 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     2452        M 0x80001344 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2453        M 0x80001348 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800013a8
       0     2456        M 0x800013a8 ret                            #; ra  = 0x800007b8, goto 0x800007b8
       0     2461        M 0x800007b8 addi    s0, s0, 1              #; s0  = 0x800029e9, (wrb) s0  <-- 0x800029ea
       0     2462        M 0x800007bc addi    s10, s10, 1            #; s10 = 0x800029eb, (wrb) s10 <-- 0x800029ec
       0     2464        M 0x800007c0 mv      s9, s1                 #; s1  = 5, (wrb) s9  <-- 5
       0     2465        M 0x800007c4 lbu     a0, 0(s0)              #; s0  = 0x800029ea, a0  <~~ Byte[0x800029ea]
       0     2476        M                                           #; (lsu) a0  <-- 32
       0     2477        M 0x800007c8 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x800007a0
       0     2478        M 0x800007a0 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     2479        M 0x800007a4 addi    s1, s9, 1              #; s9  = 5, (wrb) s1  <-- 6
       0     2480        M 0x800007a8 mv      a1, s4                 #; s4  = 0x0011ff27, (wrb) a1  <-- 0x0011ff27
       0     2481        M 0x800007ac mv      a2, s9                 #; s9  = 5, (wrb) a2  <-- 5
       0     2482        M 0x800007b0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2483        M 0x800007b4 jalr    s2                     #; s2  = 0x80001300, (wrb) ra  <-- 0x800007b8, goto 0x80001300
       0     2486        M 0x80001300 beqz    a0, pc + 168           #; a0  = 32, not taken
       0     2487        M 0x80001304 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2488        M 0x80001308 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2489        M 0x8000130c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2490        M 0x80001310 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003310
       0     2491        M 0x80001314 addi    a3, a3, -1484          #; a3  = 0x80003310, (wrb) a3  <-- 0x80002d44
       0     2492        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2493        M 0x80001318 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002d44, (wrb) a1  <-- 0x80002d44
       0     2494        M 0x8000131c lw      a4, 0(a1)              #; a1  = 0x80002d44, a4  <~~ Word[0x80002d44]
       0     2505        M                                           #; (lsu) a4  <-- 5
       0     2506        M 0x80001320 addi    a5, a4, 1              #; a4  = 5, (wrb) a5  <-- 6
       0     2507        M 0x80001324 sw      a5, 0(a1)              #; a1  = 0x80002d44, 6 ~~> Word[0x80002d44]
       0     2508        M 0x80001328 add     a4, a1, a4             #; a1  = 0x80002d44, a4  = 5, (wrb) a4  <-- 0x80002d49
       0     2509        M 0x8000132c sb      a0, 72(a4)             #; a4  = 0x80002d49, 32 ~~> Byte[0x80002d91]
       0     2510        M 0x80001330 lw      a4, 0(a1)              #; a1  = 0x80002d44, a4  <~~ Word[0x80002d44]
       0     2531        M                                           #; (lsu) a4  <-- 6
       0     2532        M 0x80001334 addi    a4, a4, -1020          #; a4  = 6, (wrb) a4  <-- -1014
       0     2533        M 0x80001338 snez    a4, a4                 #; a4  = -1014, (wrb) a4  <-- 1
       0     2534        M 0x8000133c addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
       0     2535        M 0x80001340 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
       0     2536        M 0x80001344 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2537        M 0x80001348 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800013a8
       0     2540        M 0x800013a8 ret                            #; ra  = 0x800007b8, goto 0x800007b8
       0     2545        M 0x800007b8 addi    s0, s0, 1              #; s0  = 0x800029ea, (wrb) s0  <-- 0x800029eb
       0     2546        M 0x800007bc addi    s10, s10, 1            #; s10 = 0x800029ec, (wrb) s10 <-- 0x800029ed
       0     2548        M 0x800007c0 mv      s9, s1                 #; s1  = 6, (wrb) s9  <-- 6
       0     2549        M 0x800007c4 lbu     a0, 0(s0)              #; s0  = 0x800029eb, a0  <~~ Byte[0x800029eb]
       0     2560        M                                           #; (lsu) a0  <-- 61
       0     2561        M 0x800007c8 bnez    a0, pc - 40            #; a0  = 61, taken, goto 0x800007a0
       0     2562        M 0x800007a0 beq     a0, s6, pc + 48        #; a0  = 61, s6  = 37, not taken
       0     2563        M 0x800007a4 addi    s1, s9, 1              #; s9  = 6, (wrb) s1  <-- 7
       0     2564        M 0x800007a8 mv      a1, s4                 #; s4  = 0x0011ff27, (wrb) a1  <-- 0x0011ff27
       0     2565        M 0x800007ac mv      a2, s9                 #; s9  = 6, (wrb) a2  <-- 6
       0     2566        M 0x800007b0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2567        M 0x800007b4 jalr    s2                     #; s2  = 0x80001300, (wrb) ra  <-- 0x800007b8, goto 0x80001300
       0     2570        M 0x80001300 beqz    a0, pc + 168           #; a0  = 61, not taken
       0     2571        M 0x80001304 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2572        M 0x80001308 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2573        M 0x8000130c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2574        M 0x80001310 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003310
       0     2575        M 0x80001314 addi    a3, a3, -1484          #; a3  = 0x80003310, (wrb) a3  <-- 0x80002d44
       0     2576        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2577        M 0x80001318 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002d44, (wrb) a1  <-- 0x80002d44
       0     2578        M 0x8000131c lw      a4, 0(a1)              #; a1  = 0x80002d44, a4  <~~ Word[0x80002d44]
       0     2589        M                                           #; (lsu) a4  <-- 6
       0     2590        M 0x80001320 addi    a5, a4, 1              #; a4  = 6, (wrb) a5  <-- 7
       0     2591        M 0x80001324 sw      a5, 0(a1)              #; a1  = 0x80002d44, 7 ~~> Word[0x80002d44]
       0     2592        M 0x80001328 add     a4, a1, a4             #; a1  = 0x80002d44, a4  = 6, (wrb) a4  <-- 0x80002d4a
       0     2593        M 0x8000132c sb      a0, 72(a4)             #; a4  = 0x80002d4a, 61 ~~> Byte[0x80002d92]
       0     2594        M 0x80001330 lw      a4, 0(a1)              #; a1  = 0x80002d44, a4  <~~ Word[0x80002d44]
       0     2615        M                                           #; (lsu) a4  <-- 7
       0     2616        M 0x80001334 addi    a4, a4, -1020          #; a4  = 7, (wrb) a4  <-- -1013
       0     2617        M 0x80001338 snez    a4, a4                 #; a4  = -1013, (wrb) a4  <-- 1
       0     2618        M 0x8000133c addi    a0, a0, -10            #; a0  = 61, (wrb) a0  <-- 51
       0     2619        M 0x80001340 snez    a0, a0                 #; a0  = 51, (wrb) a0  <-- 1
       0     2620        M 0x80001344 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2621        M 0x80001348 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800013a8
       0     2624        M 0x800013a8 ret                            #; ra  = 0x800007b8, goto 0x800007b8
       0     2629        M 0x800007b8 addi    s0, s0, 1              #; s0  = 0x800029eb, (wrb) s0  <-- 0x800029ec
       0     2630        M 0x800007bc addi    s10, s10, 1            #; s10 = 0x800029ed, (wrb) s10 <-- 0x800029ee
       0     2632        M 0x800007c0 mv      s9, s1                 #; s1  = 7, (wrb) s9  <-- 7
       0     2633        M 0x800007c4 lbu     a0, 0(s0)              #; s0  = 0x800029ec, a0  <~~ Byte[0x800029ec]
       0     2644        M                                           #; (lsu) a0  <-- 32
       0     2645        M 0x800007c8 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x800007a0
       0     2646        M 0x800007a0 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     2647        M 0x800007a4 addi    s1, s9, 1              #; s9  = 7, (wrb) s1  <-- 8
       0     2648        M 0x800007a8 mv      a1, s4                 #; s4  = 0x0011ff27, (wrb) a1  <-- 0x0011ff27
       0     2649        M 0x800007ac mv      a2, s9                 #; s9  = 7, (wrb) a2  <-- 7
       0     2650        M 0x800007b0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2651        M 0x800007b4 jalr    s2                     #; s2  = 0x80001300, (wrb) ra  <-- 0x800007b8, goto 0x80001300
       0     2654        M 0x80001300 beqz    a0, pc + 168           #; a0  = 32, not taken
       0     2655        M 0x80001304 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2656        M 0x80001308 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2657        M 0x8000130c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2658        M 0x80001310 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003310
       0     2659        M 0x80001314 addi    a3, a3, -1484          #; a3  = 0x80003310, (wrb) a3  <-- 0x80002d44
       0     2660        M                                           #; (acc) a1  <-- 0x00d605b3
       0     2661        M 0x80001318 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002d44, (wrb) a1  <-- 0x80002d44
       0     2662        M 0x8000131c lw      a4, 0(a1)              #; a1  = 0x80002d44, a4  <~~ Word[0x80002d44]
       0     2673        M                                           #; (lsu) a4  <-- 7
       0     2674        M 0x80001320 addi    a5, a4, 1              #; a4  = 7, (wrb) a5  <-- 8
       0     2675        M 0x80001324 sw      a5, 0(a1)              #; a1  = 0x80002d44, 8 ~~> Word[0x80002d44]
       0     2676        M 0x80001328 add     a4, a1, a4             #; a1  = 0x80002d44, a4  = 7, (wrb) a4  <-- 0x80002d4b
       0     2677        M 0x8000132c sb      a0, 72(a4)             #; a4  = 0x80002d4b, 32 ~~> Byte[0x80002d93]
       0     2678        M 0x80001330 lw      a4, 0(a1)              #; a1  = 0x80002d44, a4  <~~ Word[0x80002d44]
       0     2699        M                                           #; (lsu) a4  <-- 8
       0     2700        M 0x80001334 addi    a4, a4, -1020          #; a4  = 8, (wrb) a4  <-- -1012
       0     2701        M 0x80001338 snez    a4, a4                 #; a4  = -1012, (wrb) a4  <-- 1
       0     2702        M 0x8000133c addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
       0     2703        M 0x80001340 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
       0     2704        M 0x80001344 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2705        M 0x80001348 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800013a8
       0     2708        M 0x800013a8 ret                            #; ra  = 0x800007b8, goto 0x800007b8
       0     2713        M 0x800007b8 addi    s0, s0, 1              #; s0  = 0x800029ec, (wrb) s0  <-- 0x800029ed
       0     2714        M 0x800007bc addi    s10, s10, 1            #; s10 = 0x800029ee, (wrb) s10 <-- 0x800029ef
       0     2716        M 0x800007c0 mv      s9, s1                 #; s1  = 8, (wrb) s9  <-- 8
       0     2717        M 0x800007c4 lbu     a0, 0(s0)              #; s0  = 0x800029ed, a0  <~~ Byte[0x800029ed]
       0     2728        M                                           #; (lsu) a0  <-- 37
       0     2729        M 0x800007c8 bnez    a0, pc - 40            #; a0  = 37, taken, goto 0x800007a0
       0     2730        M 0x800007a0 beq     a0, s6, pc + 48        #; a0  = 37, s6  = 37, taken, goto 0x800007d0
       0     2742        M 0x800007d0 li      s0, 0                  #; (wrb) s0  <-- 0
       0     2743        M 0x800007d4 j       pc + 0x10              #; goto 0x800007e4
       0     2754        M 0x800007e4 lbu     a0, -1(s10)            #; s10 = 0x800029ef, a0  <~~ Byte[0x800029ee]
       0     2765        M                                           #; (lsu) a0  <-- 102
       0     2766        M 0x800007e8 addi    a1, a0, -32            #; a0  = 102, (wrb) a1  <-- 70
       0     2767        M 0x800007ec bltu    s11, a1, pc + 56       #; s11 = 16, a1  = 70, taken, goto 0x80000824
       0     2779        M 0x80000824 addi    a1, a0, -48            #; a0  = 102, (wrb) a1  <-- 54
       0     2780        M 0x80000828 andi    a2, a1, 255            #; a1  = 54, (wrb) a2  <-- 54
       0     2781        M 0x8000082c addi    a1, s10, -1            #; s10 = 0x800029ef, (wrb) a1  <-- 0x800029ee
       0     2791        M 0x80000830 li      a3, 9                  #; (wrb) a3  <-- 9
       0     2792        M 0x80000834 bltu    a3, a2, pc + 124       #; a3  = 9, a2  = 54, taken, goto 0x800008b0
       0     2814        M 0x800008b0 li      a2, 42                 #; (wrb) a2  <-- 42
       0     2815        M 0x800008b4 bne     a0, a2, pc + 80        #; a0  = 102, a2  = 42, taken, goto 0x80000904
       0     2837        M 0x80000904 li      s6, 0                  #; (wrb) s6  <-- 0
       0     2838        M 0x80000908 mv      s10, a1                #; a1  = 0x800029ee, (wrb) s10 <-- 0x800029ee
       0     2839        M 0x8000090c beq     a0, s7, pc - 164       #; a0  = 102, s7  = 46, not taken
       0     2860        M 0x80000910 li      s7, 0                  #; (wrb) s7  <-- 0
       0     2861        M 0x80000914 j       pc + 0xc               #; goto 0x80000920
       0     2872        M 0x80000920 addi    a1, a0, -104           #; a0  = 102, (wrb) a1  <-- -2
       0     2873        M 0x80000924 srli    a2, a1, 1              #; a1  = -2, (wrb) a2  <-- 0x7fffffff
       0     2874        M 0x80000928 slli    a1, a1, 31             #; a1  = -2, (wrb) a1  <-- 0
       0     2875        M 0x8000092c or      a1, a1, a2             #; a1  = 0, a2  = 0x7fffffff, (wrb) a1  <-- 0x7fffffff
       0     2884        M 0x80000930 li      a2, 9                  #; (wrb) a2  <-- 9
       0     2885        M 0x80000934 bltu    a2, a1, pc + 100       #; a2  = 9, a1  = 0x7fffffff, taken, goto 0x80000998
       0     2907        M 0x80000998 addi    a1, a0, -37            #; a0  = 102, (wrb) a1  <-- 65
       0     2908        M 0x8000099c li      a2, 83                 #; (wrb) a2  <-- 83
       0     2919        M 0x800009a0 bltu    a2, a1, pc + 264       #; a2  = 83, a1  = 65, not taken
       0     2920        M 0x800009a4 slli    a1, a1, 2              #; a1  = 65, (wrb) a1  <-- 260
       0     2921        M 0x800009a8 auipc   a2, 0x2                #; (wrb) a2  <-- 0x800029a8
       0     2922        M 0x800009ac addi    a2, a2, 188            #; a2  = 0x800029a8, (wrb) a2  <-- 0x80002a64
       0     2931        M 0x800009b0 add     a1, a1, a2             #; a1  = 260, a2  = 0x80002a64, (wrb) a1  <-- 0x80002b68
       0     2932        M 0x800009b4 lw      a2, 0(a1)              #; a1  = 0x80002b68, a2  <~~ Word[0x80002b68]
       0     2933        M 0x800009b8 li      a1, 8                  #; (wrb) a1  <-- 8
       0     2934        M 0x800009bc li      s8, 16                 #; (wrb) s8  <-- 16
       0     2943        M                                           #; (lsu) a2  <-- 0x800009f0
       0     2944        M 0x800009c0 jr      a2                     #; a2  = 0x800009f0, goto 0x800009f0
       0     2966        M 0x800009f0 li      a1, 70                 #; (wrb) a1  <-- 70
       0     2967        M 0x800009f4 bne     a0, a1, pc + 8         #; a0  = 102, a1  = 70, taken, goto 0x800009fc
       0     2968        M 0x800009fc addi    a0, s3, 7              #; s3  = 0x0011ff34, (wrb) a0  <-- 0x0011ff3b
       0     2978        M 0x80000a00 andi    a0, a0, -8             #; a0  = 0x0011ff3b, (wrb) a0  <-- 0x0011ff38
       0     2980        M 0x80000a08 addi    s3, a0, 8              #; a0  = 0x0011ff38, (wrb) s3  <-- 0x0011ff40
       0     2981        M 0x80000a0c mv      a0, s2                 #; s2  = 0x80001300, (wrb) a0  <-- 0x80001300
                         M 0x80000a04 fld     fa0, 0(a0)             #; fa0  <~~ Doub[0x0011ff38]
       0     2982        M                                           #; (f:lsu) fa0  <-- 0.0
       0     2990        M 0x80000a10 mv      a1, s4                 #; s4  = 0x0011ff27, (wrb) a1  <-- 0x0011ff27
       0     2991        M 0x80000a14 mv      a2, s9                 #; s9  = 8, (wrb) a2  <-- 8
       0     2992        M 0x80000a18 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2993        M 0x80000a1c mv      a4, s7                 #; s7  = 0, (wrb) a4  <-- 0
       0     3002        M 0x80000a20 mv      a5, s6                 #; s6  = 0, (wrb) a5  <-- 0
       0     3003        M 0x80000a24 mv      a6, s0                 #; s0  = 0, (wrb) a6  <-- 0
       0     3004        M 0x80000a28 auipc   ra, 0x1                #; (wrb) ra  <-- 0x80001a28
       0     3005        M 0x80000a2c jalr    ra, ra, -1656          #; ra  = 0x80001a28, (wrb) ra  <-- 0x80000a30, goto 0x800013b0
       0     3016        M 0x800013b0 addi    sp, sp, -112           #; sp  = 0x0011feb0, (wrb) sp  <-- 0x0011fe40
       0     3017        M 0x800013b4 sw      ra, 108(sp)            #; sp  = 0x0011fe40, 0x80000a30 ~~> Word[0x0011feac]
       0     3018        M 0x800013b8 sw      s0, 104(sp)            #; sp  = 0x0011fe40, 0 ~~> Word[0x0011fea8]
       0     3019        M 0x800013bc sw      s1, 100(sp)            #; sp  = 0x0011fe40, 8 ~~> Word[0x0011fea4]
       0     3028        M 0x800013c0 sw      s2, 96(sp)             #; sp  = 0x0011fe40, 0x80001300 ~~> Word[0x0011fea0]
       0     3029        M 0x800013c4 sw      s3, 92(sp)             #; sp  = 0x0011fe40, 0x0011ff40 ~~> Word[0x0011fe9c]
       0     3030        M 0x800013c8 sw      s4, 88(sp)             #; sp  = 0x0011fe40, 0x0011ff27 ~~> Word[0x0011fe98]
       0     3031        M 0x800013cc sw      s5, 84(sp)             #; sp  = 0x0011fe40, -1 ~~> Word[0x0011fe94]
       0     3040        M 0x800013d0 sw      s6, 80(sp)             #; sp  = 0x0011fe40, 0 ~~> Word[0x0011fe90]
       0     3041        M 0x800013d4 sw      s7, 76(sp)             #; sp  = 0x0011fe40, 0 ~~> Word[0x0011fe8c]
       0     3042        M 0x800013d8 sw      s8, 72(sp)             #; sp  = 0x0011fe40, 16 ~~> Word[0x0011fe88]
       0     3043        M 0x800013dc sw      s9, 68(sp)             #; sp  = 0x0011fe40, 8 ~~> Word[0x0011fe84]
       0     3052        M 0x800013e0 sw      s10, 64(sp)            #; sp  = 0x0011fe40, 0x800029ee ~~> Word[0x0011fe80]
       0     3055        M 0x800013e4 fsd     fs0, 56(sp)            #; 0.0 ~~> Doub[0x0011fe78]
       0     3056        M 0x800013e8 fsd     fs1, 48(sp)            #; 0.0 ~~> Doub[0x0011fe70]
       0     3057        M 0x800013ec fsd     fs2, 40(sp)            #; 0.0 ~~> Doub[0x0011fe68]
       0     3064        M 0x800013f0 auipc   s1, 0x2                #; (wrb) s1  <-- 0x800033f0
       0     3065        M 0x800013f4 addi    s1, s1, -1880          #; s1  = 0x800033f0, (wrb) s1  <-- 0x80002c98
       0     3068        M 0x800013f8 fld     ft0, 0(s1)             #; ft0  <~~ Doub[0x80002c98]
       0     3076        M 0x80001400 mv      s5, a6                 #; a6  = 0, (wrb) s5  <-- 0
       0     3077        M 0x80001404 mv      s2, a5                 #; a5  = 0, (wrb) s2  <-- 0
                         M                                           #; (f:lsu) ft0  <-- -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     3078        M 0x80001408 mv      s3, a3                 #; a3  = -1, (wrb) s3  <-- -1
                         M 0x800013fc fle.d   s1, ft0, fa0           #; ft0  = -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000, fa0  = 0.0
       0     3079        M 0x8000140c mv      s4, a2                 #; a2  = 8, (wrb) s4  <-- 8
       0     3088        M 0x80001410 mv      s6, a1                 #; a1  = 0x0011ff27, (wrb) s6  <-- 0x0011ff27
       0     3089        M 0x80001414 mv      s7, a0                 #; a0  = 0x80001300, (wrb) s7  <-- 0x80001300
       0     3090        M 0x80001418 bnez    s1, pc + 240           #; s1  = 1, taken, goto 0x80001508
       0     3112        M 0x8000150c auipc   a0, 0x1                #; (wrb) a0  <-- 0x8000250c
       0     3113        M 0x80001508 fsgnj.d fs0, fa0, fa0          #; fa0  = 0.0, fa0  = 0.0
       0     3114        M                                           #; (f:fpu) fs0  <-- 0.0
       0     3123        M 0x80001510 addi    a0, a0, 1940           #; a0  = 0x8000250c, (wrb) a0  <-- 0x80002ca0
       0     3126        M 0x80001514 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002ca0]
       0     3135        M                                           #; (f:lsu) ft0  <-- 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     3136        M 0x80001518 fle.d   a0, fa0, ft0           #; fa0  = 0.0, ft0  = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     3138        M                                           #; (acc) t3  <-- 0x00051e63
       0     3139        M 0x8000151c bnez    a0, pc + 28            #; a0  = 1, taken, goto 0x80001538
       0     3151        M 0x80001538 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002538
       0     3152        M 0x8000153c addi    a0, a0, 1904           #; a0  = 0x80002538, (wrb) a0  <-- 0x80002ca8
       0     3164        M 0x80001544 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002544
       0     3165        M 0x80001548 addi    a0, a0, 1900           #; a0  = 0x80002544, (wrb) a0  <-- 0x80002cb0
                         M 0x80001540 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002ca8]
       0     3168        M 0x8000154c fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80002cb0]
       0     3174        M                                           #; (f:lsu) ft0  <-- 1000000000.0000000
       0     3176        M 0x80001550 fle.d   a0, fs0, ft0           #; fs0  = 0.0, ft0  = 1000000000.0000000
       0     3177        M                                           #; (f:lsu) ft1  <-- -1000000000.0000000
       0     3178        M                                           #; (acc) a0  <-- 0x00b57533
                         M 0x80001554 fle.d   a1, ft1, fs0           #; ft1  = -1000000000.0000000, fs0  = 0.0
       0     3180        M                                           #; (acc) a0  <-- 0x00b57533
       0     3181        M 0x80001558 and     a0, a0, a1             #; a0  = 1, a1  = 1, (wrb) a0  <-- 1
       0     3182        M 0x8000155c bnez    a0, pc + 252           #; a0  = 1, taken, goto 0x80001658
       0     3198        M 0x80001658 andi    a0, s5, 1024           #; s5  = 0, (wrb) a0  <-- 0
       0     3199        M 0x8000165c li      s8, 6                  #; (wrb) s8  <-- 6
       0     3210        M 0x80001660 beqz    a0, pc + 8             #; a0  = 0, taken, goto 0x80001668
       0     3211        M 0x80001668 li      a0, 10                 #; (wrb) a0  <-- 10
       0     3214        M 0x8000166c fsgnjx.d fs2, fs0, fs0         #; fs0  = 0.0, fs0  = 0.0
       0     3215        M                                           #; (f:fpu) fs2  <-- 0.0
       0     3222        M 0x80001670 bltu    s8, a0, pc + 56        #; s8  = 6, a0  = 10, taken, goto 0x800016a8
       0     3245        M 0x800016a8 li      s0, 0                  #; (wrb) s0  <-- 0
       0     3246        M 0x800016ac slli    a0, s8, 3              #; s8  = 6, (wrb) a0  <-- 48
       0     3257        M 0x800016b0 auipc   a1, 0x1                #; (wrb) a1  <-- 0x800026b0
       0     3258        M 0x800016b4 addi    a1, a1, 1288           #; a1  = 0x800026b0, (wrb) a1  <-- 0x80002bb8
       0     3259        M 0x800016b8 add     a0, a0, a1             #; a0  = 48, a1  = 0x80002bb8, (wrb) a0  <-- 0x80002be8
       0     3262        M 0x800016bc fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80002be8]
       0     3270        M 0x800016c0 fcvt.w.d s1, fs2               #; fs2  = 0.0
       0     3271        M                                           #; (f:lsu) ft1  <-- 1000000.0000000
       0     3274        M 0x800016c4 fcvt.d.w ft0, s1               #; ac1  = 0
       0     3275        M                                           #; (f:fpu) ft0  <-- 0.0
       0     3276        M 0x800016c8 fsub.d  ft0, fs2, ft0          #; fs2  = 0.0, ft0  = 0.0
       0     3279        M                                           #; (f:fpu) ft0  <-- 0.0
       0     3280        M 0x800016cc fmul.d  ft2, ft1, ft0          #; ft1  = 1000000.0000000, ft0  = 0.0
       0     3281        M 0x800016d0 auipc   a0, 0x1                #; (wrb) a0  <-- 0x800026d0
       0     3282        M 0x800016d4 addi    a0, a0, 1512           #; a0  = 0x800026d0, (wrb) a0  <-- 0x80002cb8
       0     3283        M                                           #; (f:fpu) ft2  <-- 0.0
       0     3285        M 0x800016d8 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80002cb8]
       0     3286        M 0x800016dc fcvt.wu.d a0, ft2              #; ft2  = 0.0
       0     3294        M 0x800016e0 fcvt.d.wu ft3, a0              #; ac1  = 0, (f:lsu) ft0  <-- 0.5
       0     3295        M                                           #; (f:fpu) ft3  <-- 0.0
       0     3296        M 0x800016e4 fsub.d  ft2, ft2, ft3          #; ft2  = 0.0, ft3  = 0.0
       0     3299        M                                           #; (f:fpu) ft2  <-- 0.0
       0     3300        M 0x800016e8 fle.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
       0     3303        M 0x800016ec bnez    a1, pc + 32            #; a1  = 1, taken, goto 0x8000170c
       0     3317        M 0x8000170c flt.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
       0     3328        M 0x80001710 bnez    a1, pc + 20            #; a1  = 1, taken, goto 0x80001724
       0     3341        M 0x80001728 beqz    s8, pc + 216           #; s8  = 6, not taken
                         M 0x80001724 fcvt.d.w fs1, zero             #; ac1  = 0
       0     3342        M 0x8000172c li      a2, 0                  #; (wrb) a2  <-- 0
                         M                                           #; (f:fpu) fs1  <-- 0.0
       0     3352        M 0x80001730 addi    a1, sp, 8              #; sp  = 0x0011fe40, (wrb) a1  <-- 0x0011fe48
       0     3353        M 0x80001734 add     t1, a1, s0             #; a1  = 0x0011fe48, s0  = 0, (wrb) t1  <-- 0x0011fe48
       0     3354        M 0x80001738 li      t0, 32                 #; (wrb) t0  <-- 32
       0     3355        M 0x8000173c sub     a4, t0, s0             #; t0  = 32, s0  = 0, (wrb) a4  <-- 32
       0     3364        M 0x80001740 lui     a1, 0xccccd            #; (wrb) a1  <-- 0xccccd000
       0     3365        M 0x80001744 addi    t2, a1, -819           #; a1  = 0xccccd000, (wrb) t2  <-- 0xcccccccd
       0     3366        M 0x80001748 li      a6, 10                 #; (wrb) a6  <-- 10
       0     3367        M 0x8000174c li      a7, 9                  #; (wrb) a7  <-- 9
       0     3376        M 0x80001750 beq     a4, a2, pc + 200       #; a4  = 32, a2  = 0, not taken
       0     3377        M 0x80001754 mv      a1, a0                 #; a0  = 0, (wrb) a1  <-- 0
       0     3378        M 0x80001758 mulhu   a0, a0, t2             #; a0  = 0, t2  = 0xcccccccd
       0     3381        M                                           #; (acc) a0  <-- 0x00355513
       0     3382        M 0x8000175c srli    a0, a0, 3              #; a0  = 0, (wrb) a0  <-- 0
       0     3388        M 0x80001760 mul     a3, a0, a6             #; a0  = 0, a6  = 10
       0     3391        M                                           #; (acc) a3  <-- 0x40d586b3
       0     3392        M 0x80001764 sub     a3, a1, a3             #; a1  = 0, a3  = 0, (wrb) a3  <-- 0
       0     3393        M 0x80001768 ori     a3, a3, 48             #; a3  = 0, (wrb) a3  <-- 48
       0     3394        M 0x8000176c add     a5, t1, a2             #; t1  = 0x0011fe48, a2  = 0, (wrb) a5  <-- 0x0011fe48
       0     3400        M 0x80001770 sb      a3, 0(a5)              #; a5  = 0x0011fe48, 48 ~~> Byte[0x0011fe48]
       0     3401        M 0x80001774 addi    a2, a2, 1              #; a2  = 0, (wrb) a2  <-- 1
       0     3402        M 0x80001778 bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 0, not taken
       0     3403        M 0x8000177c add     a0, s0, a2             #; s0  = 0, a2  = 1, (wrb) a0  <-- 1
       0     3415        M 0x80001780 addi    a1, a0, -1             #; a0  = 1, (wrb) a1  <-- 0
       0     3416        M 0x80001784 li      a3, 30                 #; (wrb) a3  <-- 30
       0     3417        M 0x80001788 sltu    a3, a3, a1             #; a3  = 30, a1  = 0, (wrb) a3  <-- 0
       0     3418        M 0x8000178c xor     a4, s8, a2             #; s8  = 6, a2  = 1, (wrb) a4  <-- 7
       0     3427        M 0x80001790 seqz    a4, a4                 #; a4  = 7, (wrb) a4  <-- 0
       0     3428        M 0x80001794 or      a3, a3, a4             #; a3  = 0, a4  = 0, (wrb) a3  <-- 0
       0     3429        M 0x80001798 bnez    a3, pc + 136           #; a3  = 0, not taken
       0     3430        M 0x8000179c addi    a0, sp, 8              #; sp  = 0x0011fe40, (wrb) a0  <-- 0x0011fe48
       0     3439        M 0x800017a0 add     a0, a0, s0             #; a0  = 0x0011fe48, s0  = 0, (wrb) a0  <-- 0x0011fe48
       0     3440        M 0x800017a4 not     a1, a2                 #; a2  = 1, (wrb) a1  <-- -2
       0     3441        M 0x800017a8 add     s8, a1, s8             #; a1  = -2, s8  = 6, (wrb) s8  <-- 4
       0     3442        M 0x800017ac add     s0, s0, a2             #; s0  = 0, a2  = 1, (wrb) s0  <-- 1
       0     3451        M 0x800017b0 li      a1, 31                 #; (wrb) a1  <-- 31
       0     3452        M 0x800017b4 sub     a3, a1, s0             #; a1  = 31, s0  = 1, (wrb) a3  <-- 30
       0     3453        M 0x800017b8 add     a0, a0, a2             #; a0  = 0x0011fe48, a2  = 1, (wrb) a0  <-- 0x0011fe49
       0     3454        M 0x800017bc mv      a1, s8                 #; s8  = 4, (wrb) a1  <-- 4
       0     3463        M 0x800017c0 bltu    s8, a3, pc + 8         #; s8  = 4, a3  = 30, taken, goto 0x800017c8
       0     3464        M 0x800017c8 addi    a2, a1, 1              #; a1  = 4, (wrb) a2  <-- 5
       0     3465        M 0x800017cc li      a1, 48                 #; (wrb) a1  <-- 48
       0     3475        M 0x800017d0 auipc   ra, 0xfffff            #; (wrb) ra  <-- 0x800007d0
       0     3476        M 0x800017d4 jalr    ra, ra, -2000          #; ra  = 0x800007d0, (wrb) ra  <-- 0x800017d8, goto 0x80000000
       0     3489        M 0x80000000 li      t1, 15                 #; (wrb) t1  <-- 15
       0     3490        M 0x80000004 mv      a4, a0                 #; a0  = 0x0011fe49, (wrb) a4  <-- 0x0011fe49
       0     3491        M 0x80000008 bgeu    t1, a2, pc + 60        #; t1  = 15, a2  = 5, taken, goto 0x80000044
       0     3494        M 0x80000044 sub     a3, t1, a2             #; t1  = 15, a2  = 5, (wrb) a3  <-- 10
       0     3495        M 0x80000048 slli    a3, a3, 2              #; a3  = 10, (wrb) a3  <-- 40
       0     3496        M 0x8000004c auipc   t0, 0x0                #; (wrb) t0  <-- 0x8000004c
       0     3497        M 0x80000050 add     a3, a3, t0             #; a3  = 40, t0  = 0x8000004c, (wrb) a3  <-- 0x80000074
       0     3498        M 0x80000054 jalr    zero, a3, 12           #; a3  = 0x80000074, goto 0x80000080
       0     3511        M 0x80000080 sb      a1, 4(a4)              #; a4  = 0x0011fe49, 48 ~~> Byte[0x0011fe4d]
       0     3512        M 0x80000084 sb      a1, 3(a4)              #; a4  = 0x0011fe49, 48 ~~> Byte[0x0011fe4c]
       0     3513        M 0x80000088 sb      a1, 2(a4)              #; a4  = 0x0011fe49, 48 ~~> Byte[0x0011fe4b]
       0     3514        M 0x8000008c sb      a1, 1(a4)              #; a4  = 0x0011fe49, 48 ~~> Byte[0x0011fe4a]
       0     3515        M 0x80000090 sb      a1, 0(a4)              #; a4  = 0x0011fe49, 48 ~~> Byte[0x0011fe49]
       0     3516        M 0x80000094 ret                            #; ra  = 0x800017d8, goto 0x800017d8
       0     3520        M 0x800017d8 li      a0, 0                  #; (wrb) a0  <-- 0
       0     3521        M 0x800017dc add     a1, s0, a0             #; s0  = 1, a0  = 0, (wrb) a1  <-- 1
       0     3523        M 0x800017e0 sltiu   a1, a1, 31             #; a1  = 1, (wrb) a1  <-- 1
       0     3524        M 0x800017e4 xor     a2, s8, a0             #; s8  = 4, a0  = 0, (wrb) a2  <-- 4
       0     3525        M 0x800017e8 snez    a2, a2                 #; a2  = 4, (wrb) a2  <-- 1
       0     3526        M 0x800017ec and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     3535        M 0x800017f0 addi    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0     3536        M 0x800017f4 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x800017dc
       0     3537        M 0x800017dc add     a1, s0, a0             #; s0  = 1, a0  = 1, (wrb) a1  <-- 2
       0     3538        M 0x800017e0 sltiu   a1, a1, 31             #; a1  = 2, (wrb) a1  <-- 1
       0     3539        M 0x800017e4 xor     a2, s8, a0             #; s8  = 4, a0  = 1, (wrb) a2  <-- 5
       0     3540        M 0x800017e8 snez    a2, a2                 #; a2  = 5, (wrb) a2  <-- 1
       0     3541        M 0x800017ec and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     3542        M 0x800017f0 addi    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 2
       0     3543        M 0x800017f4 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x800017dc
       0     3544        M 0x800017dc add     a1, s0, a0             #; s0  = 1, a0  = 2, (wrb) a1  <-- 3
       0     3545        M 0x800017e0 sltiu   a1, a1, 31             #; a1  = 3, (wrb) a1  <-- 1
       0     3546        M 0x800017e4 xor     a2, s8, a0             #; s8  = 4, a0  = 2, (wrb) a2  <-- 6
       0     3547        M 0x800017e8 snez    a2, a2                 #; a2  = 6, (wrb) a2  <-- 1
       0     3548        M 0x800017ec and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     3549        M 0x800017f0 addi    a0, a0, 1              #; a0  = 2, (wrb) a0  <-- 3
       0     3550        M 0x800017f4 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x800017dc
       0     3551        M 0x800017dc add     a1, s0, a0             #; s0  = 1, a0  = 3, (wrb) a1  <-- 4
       0     3552        M 0x800017e0 sltiu   a1, a1, 31             #; a1  = 4, (wrb) a1  <-- 1
       0     3553        M 0x800017e4 xor     a2, s8, a0             #; s8  = 4, a0  = 3, (wrb) a2  <-- 7
       0     3554        M 0x800017e8 snez    a2, a2                 #; a2  = 7, (wrb) a2  <-- 1
       0     3555        M 0x800017ec and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     3556        M 0x800017f0 addi    a0, a0, 1              #; a0  = 3, (wrb) a0  <-- 4
       0     3557        M 0x800017f4 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x800017dc
       0     3558        M 0x800017dc add     a1, s0, a0             #; s0  = 1, a0  = 4, (wrb) a1  <-- 5
       0     3559        M 0x800017e0 sltiu   a1, a1, 31             #; a1  = 5, (wrb) a1  <-- 1
       0     3560        M 0x800017e4 xor     a2, s8, a0             #; s8  = 4, a0  = 4, (wrb) a2  <-- 0
       0     3561        M 0x800017e8 snez    a2, a2                 #; a2  = 0, (wrb) a2  <-- 0
       0     3562        M 0x800017ec and     a2, a1, a2             #; a1  = 1, a2  = 0, (wrb) a2  <-- 0
       0     3563        M 0x800017f0 addi    a0, a0, 1              #; a0  = 4, (wrb) a0  <-- 5
       0     3564        M 0x800017f4 bnez    a2, pc - 24            #; a2  = 0, not taken
       0     3565        M 0x800017f8 add     a0, s0, a0             #; s0  = 1, a0  = 5, (wrb) a0  <-- 6
       0     3566        M 0x800017fc j       pc + 0x28              #; goto 0x80001824
       0     3577        M 0x80001824 beqz    a1, pc + 28            #; a1  = 1, not taken
       0     3578        M 0x80001828 addi    s0, a0, 1              #; a0  = 6, (wrb) s0  <-- 7
       0     3579        M 0x8000182c addi    a1, sp, 8              #; sp  = 0x0011fe40, (wrb) a1  <-- 0x0011fe48
       0     3589        M 0x80001830 add     a0, a1, a0             #; a1  = 0x0011fe48, a0  = 6, (wrb) a0  <-- 0x0011fe4e
       0     3590        M 0x80001834 li      a1, 46                 #; (wrb) a1  <-- 46
       0     3591        M 0x80001838 sb      a1, 0(a0)              #; a0  = 0x0011fe4e, 46 ~~> Byte[0x0011fe4e]
       0     3592        M 0x8000183c j       pc + 0x8               #; goto 0x80001844
       0     3601        M 0x80001844 li      a0, 32                 #; (wrb) a0  <-- 32
       0     3602        M 0x80001848 mv      t0, s0                 #; s0  = 7, (wrb) t0  <-- 7
       0     3603        M 0x8000184c bltu    a0, s0, pc + 8         #; a0  = 32, s0  = 7, not taken
       0     3613        M 0x80001850 li      t0, 32                 #; (wrb) t0  <-- 32
       0     3615        M 0x80001858 lui     a0, 0x66666            #; (wrb) a0  <-- 0x66666000
                         M 0x80001854 flt.d   s9, fs0, fs1           #; fs0  = 0.0, fs1  = 0.0
       0     3616        M 0x8000185c addi    a1, a0, 1639           #; a0  = 0x66666000, (wrb) a1  <-- 0x66666667
       0     3625        M 0x80001860 li      a6, 10                 #; (wrb) a6  <-- 10
       0     3626        M 0x80001864 addi    a3, sp, 8              #; sp  = 0x0011fe40, (wrb) a3  <-- 0x0011fe48
       0     3627        M 0x80001868 li      a4, 18                 #; (wrb) a4  <-- 18
       0     3628        M 0x8000186c beq     t0, s0, pc + 64        #; t0  = 32, s0  = 7, not taken
       0     3637        M 0x80001870 mulh    a0, s1, a1             #; s1  = 0, a1  = 0x66666667
       0     3640        M                                           #; (acc) a5  <-- 0x01f55793
       0     3641        M 0x80001874 srli    a5, a0, 31             #; a0  = 0, (wrb) a5  <-- 0
       0     3642        M 0x80001878 srai    a0, a0, 2              #; a0  = 0, (wrb) a0  <-- 0
       0     3643        M 0x8000187c add     a0, a0, a5             #; a0  = 0, a5  = 0, (wrb) a0  <-- 0
       0     3649        M 0x80001880 mul     a5, a0, a6             #; a0  = 0, a6  = 10
       0     3652        M                                           #; (acc) a5  <-- 0x40f487b3
       0     3653        M 0x80001884 sub     a5, s1, a5             #; s1  = 0, a5  = 0, (wrb) a5  <-- 0
       0     3654        M 0x80001888 addi    a5, a5, 48             #; a5  = 0, (wrb) a5  <-- 48
       0     3655        M 0x8000188c addi    s8, s0, 1              #; s0  = 7, (wrb) s8  <-- 8
       0     3661        M 0x80001890 add     s0, a3, s0             #; a3  = 0x0011fe48, s0  = 7, (wrb) s0  <-- 0x0011fe4f
       0     3662        M 0x80001894 addi    a2, s1, 9              #; s1  = 0, (wrb) a2  <-- 9
       0     3663        M 0x80001898 sb      a5, 0(s0)              #; s0  = 0x0011fe4f, 48 ~~> Byte[0x0011fe4f]
       0     3664        M 0x8000189c mv      s0, s8                 #; s8  = 8, (wrb) s0  <-- 8
       0     3673        M 0x800018a0 mv      s1, a0                 #; a0  = 0, (wrb) s1  <-- 0
       0     3674        M 0x800018a4 bltu    a4, a2, pc - 56        #; a4  = 18, a2  = 9, not taken
       0     3675        M 0x800018a8 j       pc + 0x8               #; goto 0x800018b0
       0     3687        M 0x800018b0 andi    s1, s5, 3              #; s5  = 0, (wrb) s1  <-- 0
       0     3688        M 0x800018b4 li      a0, 1                  #; (wrb) a0  <-- 1
       0     3689        M 0x800018b8 bne     s1, a0, pc + 108       #; s1  = 0, a0  = 1, taken, goto 0x80001924
       0     3710        M 0x80001924 li      a0, 31                 #; (wrb) a0  <-- 31
       0     3711        M 0x80001928 bltu    a0, s8, pc + 84        #; a0  = 31, s8  = 8, not taken
       0     3712        M 0x8000192c beqz    s9, pc + 24            #; s9  = 0, taken, goto 0x80001944
       0     3733        M 0x80001944 andi    a0, s5, 4              #; s5  = 0, (wrb) a0  <-- 0
       0     3734        M 0x80001948 bnez    a0, pc + 32            #; a0  = 0, not taken
       0     3735        M 0x8000194c andi    a0, s5, 8              #; s5  = 0, (wrb) a0  <-- 0
       0     3745        M 0x80001950 beqz    a0, pc + 44            #; a0  = 0, taken, goto 0x8000197c
       0     3768        M 0x8000197c snez    a0, s1                 #; s1  = 0, (wrb) a0  <-- 0
       0     3780        M 0x80001980 sltu    a1, s8, s2             #; s8  = 8, s2  = 0, (wrb) a1  <-- 0
       0     3781        M 0x80001984 xori    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
       0     3782        M 0x80001988 or      a0, a0, a1             #; a0  = 0, a1  = 1, (wrb) a0  <-- 1
       0     3783        M 0x8000198c andi    s5, s5, 2              #; s5  = 0, (wrb) s5  <-- 0
       0     3792        M 0x80001990 mv      s0, s4                 #; s4  = 8, (wrb) s0  <-- 8
       0     3793        M 0x80001994 bnez    a0, pc + 44            #; a0  = 1, taken, goto 0x800019c0
       0     3815        M 0x800019c0 srli    s5, s5, 1              #; s5  = 0, (wrb) s5  <-- 0
       0     3816        M 0x800019c4 beqz    s8, pc + 56            #; s8  = 8, not taken
       0     3817        M 0x800019c8 addi    s9, sp, 7              #; sp  = 0x0011fe40, (wrb) s9  <-- 0x0011fe47
       0     3818        M 0x800019cc add     a0, s9, s8             #; s9  = 0x0011fe47, s8  = 8, (wrb) a0  <-- 0x0011fe4f
       0     3827        M 0x800019d0 lbu     a0, 0(a0)              #; a0  = 0x0011fe4f, a0  <~~ Byte[0x0011fe4f]
       0     3828        M 0x800019d4 addi    s10, s8, -1            #; s8  = 8, (wrb) s10 <-- 7
       0     3829        M 0x800019d8 addi    s1, s0, 1              #; s0  = 8, (wrb) s1  <-- 9
       0     3830        M 0x800019dc mv      a1, s6                 #; s6  = 0x0011ff27, (wrb) a1  <-- 0x0011ff27
       0     3831        M                                           #; (lsu) a0  <-- 48
       0     3839        M 0x800019e0 mv      a2, s0                 #; s0  = 8, (wrb) a2  <-- 8
       0     3840        M 0x800019e4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     3841        M 0x800019e8 jalr    s7                     #; s7  = 0x80001300, (wrb) ra  <-- 0x800019ec, goto 0x80001300
       0     3853        M 0x80001300 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     3854        M 0x80001304 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     3855        M 0x80001308 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     3856        M 0x8000130c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     3857        M 0x80001310 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003310
       0     3858        M 0x80001314 addi    a3, a3, -1484          #; a3  = 0x80003310, (wrb) a3  <-- 0x80002d44
       0     3859        M                                           #; (acc) a1  <-- 0x00d605b3
       0     3860        M 0x80001318 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002d44, (wrb) a1  <-- 0x80002d44
       0     3861        M 0x8000131c lw      a4, 0(a1)              #; a1  = 0x80002d44, a4  <~~ Word[0x80002d44]
       0     3872        M                                           #; (lsu) a4  <-- 8
       0     3873        M 0x80001320 addi    a5, a4, 1              #; a4  = 8, (wrb) a5  <-- 9
       0     3874        M 0x80001324 sw      a5, 0(a1)              #; a1  = 0x80002d44, 9 ~~> Word[0x80002d44]
       0     3875        M 0x80001328 add     a4, a1, a4             #; a1  = 0x80002d44, a4  = 8, (wrb) a4  <-- 0x80002d4c
       0     3876        M 0x8000132c sb      a0, 72(a4)             #; a4  = 0x80002d4c, 48 ~~> Byte[0x80002d94]
       0     3877        M 0x80001330 lw      a4, 0(a1)              #; a1  = 0x80002d44, a4  <~~ Word[0x80002d44]
       0     3898        M                                           #; (lsu) a4  <-- 9
       0     3899        M 0x80001334 addi    a4, a4, -1020          #; a4  = 9, (wrb) a4  <-- -1011
       0     3900        M 0x80001338 snez    a4, a4                 #; a4  = -1011, (wrb) a4  <-- 1
       0     3901        M 0x8000133c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     3902        M 0x80001340 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     3903        M 0x80001344 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     3904        M 0x80001348 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800013a8
       0     3907        M 0x800013a8 ret                            #; ra  = 0x800019ec, goto 0x800019ec
       0     3912        M 0x800019ec mv      s0, s1                 #; s1  = 9, (wrb) s0  <-- 9
       0     3915        M 0x800019f0 mv      s8, s10                #; s10 = 7, (wrb) s8  <-- 7
       0     3916        M 0x800019f4 bnez    s10, pc - 40           #; s10 = 7, taken, goto 0x800019cc
       0     3918        M 0x800019cc add     a0, s9, s8             #; s9  = 0x0011fe47, s8  = 7, (wrb) a0  <-- 0x0011fe4e
       0     3921        M 0x800019d0 lbu     a0, 0(a0)              #; a0  = 0x0011fe4e, a0  <~~ Byte[0x0011fe4e]
       0     3922        M 0x800019d4 addi    s10, s8, -1            #; s8  = 7, (wrb) s10 <-- 6
       0     3923        M 0x800019d8 addi    s1, s0, 1              #; s0  = 9, (wrb) s1  <-- 10
       0     3924        M 0x800019dc mv      a1, s6                 #; s6  = 0x0011ff27, (wrb) a1  <-- 0x0011ff27
       0     3925        M 0x800019e0 mv      a2, s0                 #; s0  = 9, (wrb) a2  <-- 9
       0     3926        M 0x800019e4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     3927        M 0x800019e8 jalr    s7                     #; s7  = 0x80001300, (wrb) ra  <-- 0x800019ec, goto 0x80001300
       0     3928        M                                           #; (lsu) a0  <-- 46
       0     3930        M 0x80001300 beqz    a0, pc + 168           #; a0  = 46, not taken
       0     3931        M 0x80001304 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     3932        M 0x80001308 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     3933        M 0x8000130c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     3934        M 0x80001310 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003310
       0     3935        M 0x80001314 addi    a3, a3, -1484          #; a3  = 0x80003310, (wrb) a3  <-- 0x80002d44
       0     3936        M                                           #; (acc) a1  <-- 0x00d605b3
       0     3937        M 0x80001318 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002d44, (wrb) a1  <-- 0x80002d44
       0     3938        M 0x8000131c lw      a4, 0(a1)              #; a1  = 0x80002d44, a4  <~~ Word[0x80002d44]
       0     3949        M                                           #; (lsu) a4  <-- 9
       0     3950        M 0x80001320 addi    a5, a4, 1              #; a4  = 9, (wrb) a5  <-- 10
       0     3951        M 0x80001324 sw      a5, 0(a1)              #; a1  = 0x80002d44, 10 ~~> Word[0x80002d44]
       0     3952        M 0x80001328 add     a4, a1, a4             #; a1  = 0x80002d44, a4  = 9, (wrb) a4  <-- 0x80002d4d
       0     3953        M 0x8000132c sb      a0, 72(a4)             #; a4  = 0x80002d4d, 46 ~~> Byte[0x80002d95]
       0     3954        M 0x80001330 lw      a4, 0(a1)              #; a1  = 0x80002d44, a4  <~~ Word[0x80002d44]
       0     3975        M                                           #; (lsu) a4  <-- 10
       0     3976        M 0x80001334 addi    a4, a4, -1020          #; a4  = 10, (wrb) a4  <-- -1010
       0     3977        M 0x80001338 snez    a4, a4                 #; a4  = -1010, (wrb) a4  <-- 1
       0     3978        M 0x8000133c addi    a0, a0, -10            #; a0  = 46, (wrb) a0  <-- 36
       0     3979        M 0x80001340 snez    a0, a0                 #; a0  = 36, (wrb) a0  <-- 1
       0     3980        M 0x80001344 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     3981        M 0x80001348 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800013a8
       0     3984        M 0x800013a8 ret                            #; ra  = 0x800019ec, goto 0x800019ec
       0     3989        M 0x800019ec mv      s0, s1                 #; s1  = 10, (wrb) s0  <-- 10
       0     3992        M 0x800019f0 mv      s8, s10                #; s10 = 6, (wrb) s8  <-- 6
       0     3993        M 0x800019f4 bnez    s10, pc - 40           #; s10 = 6, taken, goto 0x800019cc
       0     3995        M 0x800019cc add     a0, s9, s8             #; s9  = 0x0011fe47, s8  = 6, (wrb) a0  <-- 0x0011fe4d
       0     3998        M 0x800019d0 lbu     a0, 0(a0)              #; a0  = 0x0011fe4d, a0  <~~ Byte[0x0011fe4d]
       0     3999        M 0x800019d4 addi    s10, s8, -1            #; s8  = 6, (wrb) s10 <-- 5
       0     4000        M 0x800019d8 addi    s1, s0, 1              #; s0  = 10, (wrb) s1  <-- 11
       0     4001        M 0x800019dc mv      a1, s6                 #; s6  = 0x0011ff27, (wrb) a1  <-- 0x0011ff27
       0     4002        M 0x800019e0 mv      a2, s0                 #; s0  = 10, (wrb) a2  <-- 10
       0     4003        M 0x800019e4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4004        M 0x800019e8 jalr    s7                     #; s7  = 0x80001300, (wrb) ra  <-- 0x800019ec, goto 0x80001300
       0     4005        M                                           #; (lsu) a0  <-- 48
       0     4007        M 0x80001300 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4008        M 0x80001304 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4009        M 0x80001308 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4010        M 0x8000130c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4011        M 0x80001310 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003310
       0     4012        M 0x80001314 addi    a3, a3, -1484          #; a3  = 0x80003310, (wrb) a3  <-- 0x80002d44
       0     4013        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4014        M 0x80001318 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002d44, (wrb) a1  <-- 0x80002d44
       0     4015        M 0x8000131c lw      a4, 0(a1)              #; a1  = 0x80002d44, a4  <~~ Word[0x80002d44]
       0     4026        M                                           #; (lsu) a4  <-- 10
       0     4027        M 0x80001320 addi    a5, a4, 1              #; a4  = 10, (wrb) a5  <-- 11
       0     4028        M 0x80001324 sw      a5, 0(a1)              #; a1  = 0x80002d44, 11 ~~> Word[0x80002d44]
       0     4029        M 0x80001328 add     a4, a1, a4             #; a1  = 0x80002d44, a4  = 10, (wrb) a4  <-- 0x80002d4e
       0     4030        M 0x8000132c sb      a0, 72(a4)             #; a4  = 0x80002d4e, 48 ~~> Byte[0x80002d96]
       0     4031        M 0x80001330 lw      a4, 0(a1)              #; a1  = 0x80002d44, a4  <~~ Word[0x80002d44]
       0     4052        M                                           #; (lsu) a4  <-- 11
       0     4053        M 0x80001334 addi    a4, a4, -1020          #; a4  = 11, (wrb) a4  <-- -1009
       0     4054        M 0x80001338 snez    a4, a4                 #; a4  = -1009, (wrb) a4  <-- 1
       0     4055        M 0x8000133c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     4056        M 0x80001340 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     4057        M 0x80001344 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4058        M 0x80001348 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800013a8
       0     4061        M 0x800013a8 ret                            #; ra  = 0x800019ec, goto 0x800019ec
       0     4066        M 0x800019ec mv      s0, s1                 #; s1  = 11, (wrb) s0  <-- 11
       0     4069        M 0x800019f0 mv      s8, s10                #; s10 = 5, (wrb) s8  <-- 5
       0     4070        M 0x800019f4 bnez    s10, pc - 40           #; s10 = 5, taken, goto 0x800019cc
       0     4072        M 0x800019cc add     a0, s9, s8             #; s9  = 0x0011fe47, s8  = 5, (wrb) a0  <-- 0x0011fe4c
       0     4075        M 0x800019d0 lbu     a0, 0(a0)              #; a0  = 0x0011fe4c, a0  <~~ Byte[0x0011fe4c]
       0     4076        M 0x800019d4 addi    s10, s8, -1            #; s8  = 5, (wrb) s10 <-- 4
       0     4077        M 0x800019d8 addi    s1, s0, 1              #; s0  = 11, (wrb) s1  <-- 12
       0     4078        M 0x800019dc mv      a1, s6                 #; s6  = 0x0011ff27, (wrb) a1  <-- 0x0011ff27
       0     4079        M 0x800019e0 mv      a2, s0                 #; s0  = 11, (wrb) a2  <-- 11
       0     4080        M 0x800019e4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4081        M 0x800019e8 jalr    s7                     #; s7  = 0x80001300, (wrb) ra  <-- 0x800019ec, goto 0x80001300
       0     4082        M                                           #; (lsu) a0  <-- 48
       0     4084        M 0x80001300 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4085        M 0x80001304 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4086        M 0x80001308 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4087        M 0x8000130c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4088        M 0x80001310 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003310
       0     4089        M 0x80001314 addi    a3, a3, -1484          #; a3  = 0x80003310, (wrb) a3  <-- 0x80002d44
       0     4090        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4091        M 0x80001318 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002d44, (wrb) a1  <-- 0x80002d44
       0     4092        M 0x8000131c lw      a4, 0(a1)              #; a1  = 0x80002d44, a4  <~~ Word[0x80002d44]
       0     4103        M                                           #; (lsu) a4  <-- 11
       0     4104        M 0x80001320 addi    a5, a4, 1              #; a4  = 11, (wrb) a5  <-- 12
       0     4105        M 0x80001324 sw      a5, 0(a1)              #; a1  = 0x80002d44, 12 ~~> Word[0x80002d44]
       0     4106        M 0x80001328 add     a4, a1, a4             #; a1  = 0x80002d44, a4  = 11, (wrb) a4  <-- 0x80002d4f
       0     4107        M 0x8000132c sb      a0, 72(a4)             #; a4  = 0x80002d4f, 48 ~~> Byte[0x80002d97]
       0     4108        M 0x80001330 lw      a4, 0(a1)              #; a1  = 0x80002d44, a4  <~~ Word[0x80002d44]
       0     4129        M                                           #; (lsu) a4  <-- 12
       0     4130        M 0x80001334 addi    a4, a4, -1020          #; a4  = 12, (wrb) a4  <-- -1008
       0     4131        M 0x80001338 snez    a4, a4                 #; a4  = -1008, (wrb) a4  <-- 1
       0     4132        M 0x8000133c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     4133        M 0x80001340 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     4134        M 0x80001344 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4135        M 0x80001348 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800013a8
       0     4138        M 0x800013a8 ret                            #; ra  = 0x800019ec, goto 0x800019ec
       0     4143        M 0x800019ec mv      s0, s1                 #; s1  = 12, (wrb) s0  <-- 12
       0     4146        M 0x800019f0 mv      s8, s10                #; s10 = 4, (wrb) s8  <-- 4
       0     4147        M 0x800019f4 bnez    s10, pc - 40           #; s10 = 4, taken, goto 0x800019cc
       0     4149        M 0x800019cc add     a0, s9, s8             #; s9  = 0x0011fe47, s8  = 4, (wrb) a0  <-- 0x0011fe4b
       0     4152        M 0x800019d0 lbu     a0, 0(a0)              #; a0  = 0x0011fe4b, a0  <~~ Byte[0x0011fe4b]
       0     4153        M 0x800019d4 addi    s10, s8, -1            #; s8  = 4, (wrb) s10 <-- 3
       0     4154        M 0x800019d8 addi    s1, s0, 1              #; s0  = 12, (wrb) s1  <-- 13
       0     4155        M 0x800019dc mv      a1, s6                 #; s6  = 0x0011ff27, (wrb) a1  <-- 0x0011ff27
       0     4156        M 0x800019e0 mv      a2, s0                 #; s0  = 12, (wrb) a2  <-- 12
       0     4157        M 0x800019e4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4158        M 0x800019e8 jalr    s7                     #; s7  = 0x80001300, (wrb) ra  <-- 0x800019ec, goto 0x80001300
       0     4159        M                                           #; (lsu) a0  <-- 48
       0     4161        M 0x80001300 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4162        M 0x80001304 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4163        M 0x80001308 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4164        M 0x8000130c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4165        M 0x80001310 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003310
       0     4166        M 0x80001314 addi    a3, a3, -1484          #; a3  = 0x80003310, (wrb) a3  <-- 0x80002d44
       0     4167        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4168        M 0x80001318 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002d44, (wrb) a1  <-- 0x80002d44
       0     4169        M 0x8000131c lw      a4, 0(a1)              #; a1  = 0x80002d44, a4  <~~ Word[0x80002d44]
       0     4180        M                                           #; (lsu) a4  <-- 12
       0     4181        M 0x80001320 addi    a5, a4, 1              #; a4  = 12, (wrb) a5  <-- 13
       0     4182        M 0x80001324 sw      a5, 0(a1)              #; a1  = 0x80002d44, 13 ~~> Word[0x80002d44]
       0     4183        M 0x80001328 add     a4, a1, a4             #; a1  = 0x80002d44, a4  = 12, (wrb) a4  <-- 0x80002d50
       0     4184        M 0x8000132c sb      a0, 72(a4)             #; a4  = 0x80002d50, 48 ~~> Byte[0x80002d98]
       0     4185        M 0x80001330 lw      a4, 0(a1)              #; a1  = 0x80002d44, a4  <~~ Word[0x80002d44]
       0     4206        M                                           #; (lsu) a4  <-- 13
       0     4207        M 0x80001334 addi    a4, a4, -1020          #; a4  = 13, (wrb) a4  <-- -1007
       0     4208        M 0x80001338 snez    a4, a4                 #; a4  = -1007, (wrb) a4  <-- 1
       0     4209        M 0x8000133c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     4210        M 0x80001340 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     4211        M 0x80001344 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4212        M 0x80001348 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800013a8
       0     4215        M 0x800013a8 ret                            #; ra  = 0x800019ec, goto 0x800019ec
       0     4220        M 0x800019ec mv      s0, s1                 #; s1  = 13, (wrb) s0  <-- 13
       0     4223        M 0x800019f0 mv      s8, s10                #; s10 = 3, (wrb) s8  <-- 3
       0     4224        M 0x800019f4 bnez    s10, pc - 40           #; s10 = 3, taken, goto 0x800019cc
       0     4226        M 0x800019cc add     a0, s9, s8             #; s9  = 0x0011fe47, s8  = 3, (wrb) a0  <-- 0x0011fe4a
       0     4229        M 0x800019d0 lbu     a0, 0(a0)              #; a0  = 0x0011fe4a, a0  <~~ Byte[0x0011fe4a]
       0     4230        M 0x800019d4 addi    s10, s8, -1            #; s8  = 3, (wrb) s10 <-- 2
       0     4231        M 0x800019d8 addi    s1, s0, 1              #; s0  = 13, (wrb) s1  <-- 14
       0     4232        M 0x800019dc mv      a1, s6                 #; s6  = 0x0011ff27, (wrb) a1  <-- 0x0011ff27
       0     4233        M 0x800019e0 mv      a2, s0                 #; s0  = 13, (wrb) a2  <-- 13
       0     4234        M 0x800019e4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4235        M 0x800019e8 jalr    s7                     #; s7  = 0x80001300, (wrb) ra  <-- 0x800019ec, goto 0x80001300
       0     4236        M                                           #; (lsu) a0  <-- 48
       0     4238        M 0x80001300 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4239        M 0x80001304 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4240        M 0x80001308 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4241        M 0x8000130c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4242        M 0x80001310 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003310
       0     4243        M 0x80001314 addi    a3, a3, -1484          #; a3  = 0x80003310, (wrb) a3  <-- 0x80002d44
       0     4244        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4245        M 0x80001318 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002d44, (wrb) a1  <-- 0x80002d44
       0     4246        M 0x8000131c lw      a4, 0(a1)              #; a1  = 0x80002d44, a4  <~~ Word[0x80002d44]
       0     4257        M                                           #; (lsu) a4  <-- 13
       0     4258        M 0x80001320 addi    a5, a4, 1              #; a4  = 13, (wrb) a5  <-- 14
       0     4259        M 0x80001324 sw      a5, 0(a1)              #; a1  = 0x80002d44, 14 ~~> Word[0x80002d44]
       0     4260        M 0x80001328 add     a4, a1, a4             #; a1  = 0x80002d44, a4  = 13, (wrb) a4  <-- 0x80002d51
       0     4261        M 0x8000132c sb      a0, 72(a4)             #; a4  = 0x80002d51, 48 ~~> Byte[0x80002d99]
       0     4262        M 0x80001330 lw      a4, 0(a1)              #; a1  = 0x80002d44, a4  <~~ Word[0x80002d44]
       0     4283        M                                           #; (lsu) a4  <-- 14
       0     4284        M 0x80001334 addi    a4, a4, -1020          #; a4  = 14, (wrb) a4  <-- -1006
       0     4285        M 0x80001338 snez    a4, a4                 #; a4  = -1006, (wrb) a4  <-- 1
       0     4286        M 0x8000133c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     4287        M 0x80001340 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     4288        M 0x80001344 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4289        M 0x80001348 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800013a8
       0     4292        M 0x800013a8 ret                            #; ra  = 0x800019ec, goto 0x800019ec
       0     4297        M 0x800019ec mv      s0, s1                 #; s1  = 14, (wrb) s0  <-- 14
       0     4300        M 0x800019f0 mv      s8, s10                #; s10 = 2, (wrb) s8  <-- 2
       0     4301        M 0x800019f4 bnez    s10, pc - 40           #; s10 = 2, taken, goto 0x800019cc
       0     4303        M 0x800019cc add     a0, s9, s8             #; s9  = 0x0011fe47, s8  = 2, (wrb) a0  <-- 0x0011fe49
       0     4306        M 0x800019d0 lbu     a0, 0(a0)              #; a0  = 0x0011fe49, a0  <~~ Byte[0x0011fe49]
       0     4307        M 0x800019d4 addi    s10, s8, -1            #; s8  = 2, (wrb) s10 <-- 1
       0     4308        M 0x800019d8 addi    s1, s0, 1              #; s0  = 14, (wrb) s1  <-- 15
       0     4309        M 0x800019dc mv      a1, s6                 #; s6  = 0x0011ff27, (wrb) a1  <-- 0x0011ff27
       0     4310        M 0x800019e0 mv      a2, s0                 #; s0  = 14, (wrb) a2  <-- 14
       0     4311        M 0x800019e4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4312        M 0x800019e8 jalr    s7                     #; s7  = 0x80001300, (wrb) ra  <-- 0x800019ec, goto 0x80001300
       0     4313        M                                           #; (lsu) a0  <-- 48
       0     4315        M 0x80001300 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4316        M 0x80001304 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4317        M 0x80001308 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4318        M 0x8000130c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4319        M 0x80001310 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003310
       0     4320        M 0x80001314 addi    a3, a3, -1484          #; a3  = 0x80003310, (wrb) a3  <-- 0x80002d44
       0     4321        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4322        M 0x80001318 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002d44, (wrb) a1  <-- 0x80002d44
       0     4323        M 0x8000131c lw      a4, 0(a1)              #; a1  = 0x80002d44, a4  <~~ Word[0x80002d44]
       0     4334        M                                           #; (lsu) a4  <-- 14
       0     4335        M 0x80001320 addi    a5, a4, 1              #; a4  = 14, (wrb) a5  <-- 15
       0     4336        M 0x80001324 sw      a5, 0(a1)              #; a1  = 0x80002d44, 15 ~~> Word[0x80002d44]
       0     4337        M 0x80001328 add     a4, a1, a4             #; a1  = 0x80002d44, a4  = 14, (wrb) a4  <-- 0x80002d52
       0     4338        M 0x8000132c sb      a0, 72(a4)             #; a4  = 0x80002d52, 48 ~~> Byte[0x80002d9a]
       0     4339        M 0x80001330 lw      a4, 0(a1)              #; a1  = 0x80002d44, a4  <~~ Word[0x80002d44]
       0     4360        M                                           #; (lsu) a4  <-- 15
       0     4361        M 0x80001334 addi    a4, a4, -1020          #; a4  = 15, (wrb) a4  <-- -1005
       0     4362        M 0x80001338 snez    a4, a4                 #; a4  = -1005, (wrb) a4  <-- 1
       0     4363        M 0x8000133c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     4364        M 0x80001340 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     4365        M 0x80001344 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4366        M 0x80001348 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800013a8
       0     4369        M 0x800013a8 ret                            #; ra  = 0x800019ec, goto 0x800019ec
       0     4374        M 0x800019ec mv      s0, s1                 #; s1  = 15, (wrb) s0  <-- 15
       0     4377        M 0x800019f0 mv      s8, s10                #; s10 = 1, (wrb) s8  <-- 1
       0     4378        M 0x800019f4 bnez    s10, pc - 40           #; s10 = 1, taken, goto 0x800019cc
       0     4380        M 0x800019cc add     a0, s9, s8             #; s9  = 0x0011fe47, s8  = 1, (wrb) a0  <-- 0x0011fe48
       0     4383        M 0x800019d0 lbu     a0, 0(a0)              #; a0  = 0x0011fe48, a0  <~~ Byte[0x0011fe48]
       0     4384        M 0x800019d4 addi    s10, s8, -1            #; s8  = 1, (wrb) s10 <-- 0
       0     4385        M 0x800019d8 addi    s1, s0, 1              #; s0  = 15, (wrb) s1  <-- 16
       0     4386        M 0x800019dc mv      a1, s6                 #; s6  = 0x0011ff27, (wrb) a1  <-- 0x0011ff27
       0     4387        M 0x800019e0 mv      a2, s0                 #; s0  = 15, (wrb) a2  <-- 15
       0     4388        M 0x800019e4 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4389        M 0x800019e8 jalr    s7                     #; s7  = 0x80001300, (wrb) ra  <-- 0x800019ec, goto 0x80001300
       0     4390        M                                           #; (lsu) a0  <-- 48
       0     4392        M 0x80001300 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     4393        M 0x80001304 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4394        M 0x80001308 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4395        M 0x8000130c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4396        M 0x80001310 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003310
       0     4397        M 0x80001314 addi    a3, a3, -1484          #; a3  = 0x80003310, (wrb) a3  <-- 0x80002d44
       0     4398        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4399        M 0x80001318 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002d44, (wrb) a1  <-- 0x80002d44
       0     4400        M 0x8000131c lw      a4, 0(a1)              #; a1  = 0x80002d44, a4  <~~ Word[0x80002d44]
       0     4411        M                                           #; (lsu) a4  <-- 15
       0     4412        M 0x80001320 addi    a5, a4, 1              #; a4  = 15, (wrb) a5  <-- 16
       0     4413        M 0x80001324 sw      a5, 0(a1)              #; a1  = 0x80002d44, 16 ~~> Word[0x80002d44]
       0     4414        M 0x80001328 add     a4, a1, a4             #; a1  = 0x80002d44, a4  = 15, (wrb) a4  <-- 0x80002d53
       0     4415        M 0x8000132c sb      a0, 72(a4)             #; a4  = 0x80002d53, 48 ~~> Byte[0x80002d9b]
       0     4416        M 0x80001330 lw      a4, 0(a1)              #; a1  = 0x80002d44, a4  <~~ Word[0x80002d44]
       0     4437        M                                           #; (lsu) a4  <-- 16
       0     4438        M 0x80001334 addi    a4, a4, -1020          #; a4  = 16, (wrb) a4  <-- -1004
       0     4439        M 0x80001338 snez    a4, a4                 #; a4  = -1004, (wrb) a4  <-- 1
       0     4440        M 0x8000133c addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     4441        M 0x80001340 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     4442        M 0x80001344 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4443        M 0x80001348 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800013a8
       0     4446        M 0x800013a8 ret                            #; ra  = 0x800019ec, goto 0x800019ec
       0     4451        M 0x800019ec mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
       0     4454        M 0x800019f0 mv      s8, s10                #; s10 = 0, (wrb) s8  <-- 0
       0     4455        M 0x800019f4 bnez    s10, pc - 40           #; s10 = 0, not taken
       0     4456        M 0x800019f8 j       pc + 0x8               #; goto 0x80001a00
       0     4468        M 0x80001a00 sub     a0, s1, s4             #; s1  = 16, s4  = 8, (wrb) a0  <-- 8
       0     4469        M 0x80001a04 sltu    a0, a0, s2             #; a0  = 8, s2  = 0, (wrb) a0  <-- 0
       0     4470        M 0x80001a08 xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0     4471        M 0x80001a0c xori    a1, s5, 1              #; s5  = 0, (wrb) a1  <-- 1
       0     4480        M 0x80001a10 or      a0, a1, a0             #; a1  = 1, a0  = 1, (wrb) a0  <-- 1
       0     4481        M 0x80001a14 bnez    a0, pc + 48            #; a0  = 1, taken, goto 0x80001a44
       0     4503        M 0x80001a44 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
       0     4504        M 0x80001a48 mv      a0, s0                 #; s0  = 16, (wrb) a0  <-- 16
       0     4507        M 0x80001a4c fld     fs2, 40(sp)            #; fs2  <~~ Doub[0x0011fe68]
       0     4508        M                                           #; (f:lsu) fs2  <-- 0.0
       0     4517        M 0x80001a58 lw      s10, 64(sp)            #; sp  = 0x0011fe40, s10 <~~ Word[0x0011fe80]
                         M 0x80001a50 fld     fs1, 48(sp)            #; fs1  <~~ Doub[0x0011fe70]
       0     4518        M 0x80001a54 fld     fs0, 56(sp)            #; fs0  <~~ Doub[0x0011fe78], (f:lsu) fs1  <-- 0.0
       0     4519        M                                           #; (f:lsu) fs0  <-- 0.0
       0     4521        M                                           #; (lsu) s10 <-- 0x800029ee
       0     4522        M 0x80001a5c lw      s9, 68(sp)             #; sp  = 0x0011fe40, s9  <~~ Word[0x0011fe84]
       0     4525        M                                           #; (lsu) s9  <-- 8
       0     4527        M 0x80001a60 lw      s8, 72(sp)             #; sp  = 0x0011fe40, s8  <~~ Word[0x0011fe88]
       0     4530        M                                           #; (lsu) s8  <-- 16
       0     4531        M 0x80001a64 lw      s7, 76(sp)             #; sp  = 0x0011fe40, s7  <~~ Word[0x0011fe8c]
       0     4534        M                                           #; (lsu) s7  <-- 0
       0     4535        M 0x80001a68 lw      s6, 80(sp)             #; sp  = 0x0011fe40, s6  <~~ Word[0x0011fe90]
       0     4538        M                                           #; (lsu) s6  <-- 0
       0     4539        M 0x80001a6c lw      s5, 84(sp)             #; sp  = 0x0011fe40, s5  <~~ Word[0x0011fe94]
       0     4542        M                                           #; (lsu) s5  <-- -1
       0     4543        M 0x80001a70 lw      s4, 88(sp)             #; sp  = 0x0011fe40, s4  <~~ Word[0x0011fe98]
       0     4546        M                                           #; (lsu) s4  <-- 0x0011ff27
       0     4547        M 0x80001a74 lw      s3, 92(sp)             #; sp  = 0x0011fe40, s3  <~~ Word[0x0011fe9c]
       0     4550        M                                           #; (lsu) s3  <-- 0x0011ff40
       0     4551        M 0x80001a78 lw      s2, 96(sp)             #; sp  = 0x0011fe40, s2  <~~ Word[0x0011fea0]
       0     4554        M                                           #; (lsu) s2  <-- 0x80001300
       0     4555        M 0x80001a7c lw      s1, 100(sp)            #; sp  = 0x0011fe40, s1  <~~ Word[0x0011fea4]
       0     4558        M                                           #; (lsu) s1  <-- 8
       0     4559        M 0x80001a80 lw      s0, 104(sp)            #; sp  = 0x0011fe40, s0  <~~ Word[0x0011fea8]
       0     4562        M                                           #; (lsu) s0  <-- 0
       0     4563        M 0x80001a84 lw      ra, 108(sp)            #; sp  = 0x0011fe40, ra  <~~ Word[0x0011feac]
       0     4564        M 0x80001a88 addi    sp, sp, 112            #; sp  = 0x0011fe40, (wrb) sp  <-- 0x0011feb0
       0     4566        M                                           #; (lsu) ra  <-- 0x80000a30
       0     4567        M 0x80001a8c ret                            #; ra  = 0x80000a30, goto 0x80000a30
       0     4570        M 0x80000a30 j       pc + 0x7c0             #; goto 0x800011f0
       0     4582        M 0x800011f0 mv      s8, a0                 #; a0  = 16, (wrb) s8  <-- 16
       0     4583        M 0x800011f4 li      s6, 37                 #; (wrb) s6  <-- 37
       0     4584        M 0x800011f8 li      s7, 46                 #; (wrb) s7  <-- 46
       0     4585        M 0x800011fc addi    s0, s10, 1             #; s10 = 0x800029ee, (wrb) s0  <-- 0x800029ef
       0     4594        M 0x80001200 j       pc - 0xa74             #; goto 0x8000078c
       0     4597        M 0x8000078c addi    s10, s0, 2             #; s0  = 0x800029ef, (wrb) s10 <-- 0x800029f1
       0     4600        M 0x80000790 mv      s9, s8                 #; s8  = 16, (wrb) s9  <-- 16
       0     4601        M 0x80000794 li      s8, 10                 #; (wrb) s8  <-- 10
       0     4602        M 0x80000798 lbu     a0, 0(s0)              #; s0  = 0x800029ef, a0  <~~ Byte[0x800029ef]
       0     4613        M                                           #; (lsu) a0  <-- 10
       0     4614        M 0x8000079c beqz    a0, pc + 2824          #; a0  = 10, not taken
       0     4615        M 0x800007a0 beq     a0, s6, pc + 48        #; a0  = 10, s6  = 37, not taken
       0     4616        M 0x800007a4 addi    s1, s9, 1              #; s9  = 16, (wrb) s1  <-- 17
       0     4617        M 0x800007a8 mv      a1, s4                 #; s4  = 0x0011ff27, (wrb) a1  <-- 0x0011ff27
       0     4618        M 0x800007ac mv      a2, s9                 #; s9  = 16, (wrb) a2  <-- 16
       0     4619        M 0x800007b0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     4620        M 0x800007b4 jalr    s2                     #; s2  = 0x80001300, (wrb) ra  <-- 0x800007b8, goto 0x80001300
       0     4624        M 0x80001300 beqz    a0, pc + 168           #; a0  = 10, not taken
       0     4625        M 0x80001304 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4626        M 0x80001308 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4627        M 0x8000130c mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4628        M 0x80001310 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003310
       0     4629        M 0x80001314 addi    a3, a3, -1484          #; a3  = 0x80003310, (wrb) a3  <-- 0x80002d44
       0     4630        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4631        M 0x80001318 add     a1, a2, a3             #; a2  = 0, a3  = 0x80002d44, (wrb) a1  <-- 0x80002d44
       0     4632        M 0x8000131c lw      a4, 0(a1)              #; a1  = 0x80002d44, a4  <~~ Word[0x80002d44]
       0     4643        M                                           #; (lsu) a4  <-- 16
       0     4644        M 0x80001320 addi    a5, a4, 1              #; a4  = 16, (wrb) a5  <-- 17
       0     4645        M 0x80001324 sw      a5, 0(a1)              #; a1  = 0x80002d44, 17 ~~> Word[0x80002d44]
       0     4646        M 0x80001328 add     a4, a1, a4             #; a1  = 0x80002d44, a4  = 16, (wrb) a4  <-- 0x80002d54
       0     4647        M 0x8000132c sb      a0, 72(a4)             #; a4  = 0x80002d54, 10 ~~> Byte[0x80002d9c]
       0     4648        M 0x80001330 lw      a4, 0(a1)              #; a1  = 0x80002d44, a4  <~~ Word[0x80002d44]
       0     4669        M                                           #; (lsu) a4  <-- 17
       0     4670        M 0x80001334 addi    a4, a4, -1020          #; a4  = 17, (wrb) a4  <-- -1003
       0     4671        M 0x80001338 snez    a4, a4                 #; a4  = -1003, (wrb) a4  <-- 1
       0     4672        M 0x8000133c addi    a0, a0, -10            #; a0  = 10, (wrb) a0  <-- 0
       0     4673        M 0x80001340 snez    a0, a0                 #; a0  = 0, (wrb) a0  <-- 0
       0     4674        M 0x80001344 and     a0, a0, a4             #; a0  = 0, a4  = 1, (wrb) a0  <-- 0
       0     4675        M 0x80001348 bnez    a0, pc + 96            #; a0  = 0, not taken
       0     4676        M 0x8000134c add     a0, a3, a2             #; a3  = 0x80002d44, a2  = 0, (wrb) a0  <-- 0x80002d44
       0     4677        M 0x80001350 addi    a2, a0, 72             #; a0  = 0x80002d44, (wrb) a2  <-- 0x80002d8c
       0     4678        M 0x80001354 sw      zero, 12(a0)           #; a0  = 0x80002d44, 0 ~~> Word[0x80002d50]
       0     4679        M 0x80001358 li      a3, 64                 #; (wrb) a3  <-- 64
       0     4680        M 0x8000135c sw      a3, 8(a0)              #; a0  = 0x80002d44, 64 ~~> Word[0x80002d4c]
       0     4689        M 0x80001360 sw      zero, 20(a0)           #; a0  = 0x80002d44, 0 ~~> Word[0x80002d58]
       0     4690        M 0x80001364 li      a3, 1                  #; (wrb) a3  <-- 1
       0     4691        M 0x80001368 sw      a3, 16(a0)             #; a0  = 0x80002d44, 1 ~~> Word[0x80002d54]
       0     4692        M 0x8000136c sw      zero, 28(a0)           #; a0  = 0x80002d44, 0 ~~> Word[0x80002d60]
       0     4701        M 0x80001370 sw      a2, 24(a0)             #; a0  = 0x80002d44, 0x80002d8c ~~> Word[0x80002d5c]
       0     4704        M 0x80001374 lw      a2, 0(a1)              #; a1  = 0x80002d44, a2  <~~ Word[0x80002d44]
       0     4705        M 0x80001378 addi    a3, a0, 8              #; a0  = 0x80002d44, (wrb) a3  <-- 0x80002d4c
       0     4706        M 0x8000137c sw      zero, 36(a0)           #; a0  = 0x80002d44, 0 ~~> Word[0x80002d68]
       0     4726        M                                           #; (lsu) a2  <-- 17
       0     4727        M 0x80001380 sw      a2, 32(a0)             #; a0  = 0x80002d44, 17 ~~> Word[0x80002d64]
       0     4728        M 0x80001384 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003384
       0     4729        M 0x80001388 addi    a0, a0, -1860          #; a0  = 0x80003384, (wrb) a0  <-- 0x80002c40
       0     4730        M 0x8000138c sw      a3, 0(a0)              #; a0  = 0x80002c40, 0x80002d4c ~~> Word[0x80002c40]
       0     4731        M 0x80001390 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003390
       0     4732        M 0x80001394 addi    a0, a0, -1808          #; a0  = 0x80003390, (wrb) a0  <-- 0x80002c80
       0     4733        M 0x80001398 lw      a2, 0(a0)              #; a0  = 0x80002c80, a2  <~~ Word[0x80002c80]
       0     4756        M                                           #; (lsu) a2  <-- 0
       0     4757        M 0x8000139c beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001398
       0     4758        M 0x80001398 lw      a2, 0(a0)              #; a0  = 0x80002c80, a2  <~~ Word[0x80002c80]
       0     4769        M                                           #; (lsu) a2  <-- 0
       0     4770        M 0x8000139c beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001398
       0     4771        M 0x80001398 lw      a2, 0(a0)              #; a0  = 0x80002c80, a2  <~~ Word[0x80002c80]
       0     4782        M                                           #; (lsu) a2  <-- 0
       0     4783        M 0x8000139c beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001398
       0     4784        M 0x80001398 lw      a2, 0(a0)              #; a0  = 0x80002c80, a2  <~~ Word[0x80002c80]
       0     4795        M                                           #; (lsu) a2  <-- 0
       0     4796        M 0x8000139c beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001398
       0     4797        M 0x80001398 lw      a2, 0(a0)              #; a0  = 0x80002c80, a2  <~~ Word[0x80002c80]
       0     4808        M                                           #; (lsu) a2  <-- 1
       0     4809        M 0x8000139c beqz    a2, pc - 4             #; a2  = 1, not taken
       0     4812        M 0x800013a0 sw      zero, 0(a0)            #; a0  = 0x80002c80, 0 ~~> Word[0x80002c80]
       0     4813        M 0x800013a4 sw      zero, 0(a1)            #; a1  = 0x80002d44, 0 ~~> Word[0x80002d44]
       0     4814        M 0x800013a8 ret                            #; ra  = 0x800007b8, goto 0x800007b8
       0     4817        M 0x800007b8 addi    s0, s0, 1              #; s0  = 0x800029ef, (wrb) s0  <-- 0x800029f0
       0     4818        M 0x800007bc addi    s10, s10, 1            #; s10 = 0x800029f1, (wrb) s10 <-- 0x800029f2
       0     4820        M 0x800007c0 mv      s9, s1                 #; s1  = 17, (wrb) s9  <-- 17
       0     4821        M 0x800007c4 lbu     a0, 0(s0)              #; s0  = 0x800029f0, a0  <~~ Byte[0x800029f0]
       0     4835        M                                           #; (lsu) a0  <-- 0
       0     4836        M 0x800007c8 bnez    a0, pc - 40            #; a0  = 0, not taken
       0     4837        M 0x800007cc j       pc + 0xad8             #; goto 0x800012a4
       0     4849        M 0x800012a4 mv      a2, s9                 #; s9  = 17, (wrb) a2  <-- 17
       0     4850        M 0x800012a8 bltu    s9, s5, pc + 8         #; s9  = 17, s5  = -1, taken, goto 0x800012b0
       0     4861        M 0x800012b0 li      a0, 0                  #; (wrb) a0  <-- 0
       0     4862        M 0x800012b4 mv      a1, s4                 #; s4  = 0x0011ff27, (wrb) a1  <-- 0x0011ff27
       0     4863        M 0x800012b8 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     4864        M 0x800012bc jalr    s2                     #; s2  = 0x80001300, (wrb) ra  <-- 0x800012c0, goto 0x80001300
       0     4875        M 0x80001300 beqz    a0, pc + 168           #; a0  = 0, taken, goto 0x800013a8
       0     4880        M 0x800013a8 ret                            #; ra  = 0x800012c0, goto 0x800012c0
       0     4881        M 0x800012c0 mv      a0, s9                 #; s9  = 17, (wrb) a0  <-- 17
       0     4882        M 0x800012c4 lw      s11, 60(sp)            #; sp  = 0x0011feb0, s11 <~~ Word[0x0011feec]
       0     4885        M                                           #; (lsu) s11 <-- 0
       0     4886        M 0x800012c8 lw      s10, 64(sp)            #; sp  = 0x0011feb0, s10 <~~ Word[0x0011fef0]
       0     4889        M                                           #; (lsu) s10 <-- 0
       0     4890        M 0x800012cc lw      s9, 68(sp)             #; sp  = 0x0011feb0, s9  <~~ Word[0x0011fef4]
       0     4893        M                                           #; (lsu) s9  <-- 0
       0     4895        M 0x800012d0 lw      s8, 72(sp)             #; sp  = 0x0011feb0, s8  <~~ Word[0x0011fef8]
       0     4898        M                                           #; (lsu) s8  <-- 0
       0     4899        M 0x800012d4 lw      s7, 76(sp)             #; sp  = 0x0011feb0, s7  <~~ Word[0x0011fefc]
       0     4902        M                                           #; (lsu) s7  <-- 0
       0     4903        M 0x800012d8 lw      s6, 80(sp)             #; sp  = 0x0011feb0, s6  <~~ Word[0x0011ff00]
       0     4906        M                                           #; (lsu) s6  <-- 0
       0     4907        M 0x800012dc lw      s5, 84(sp)             #; sp  = 0x0011feb0, s5  <~~ Word[0x0011ff04]
       0     4910        M                                           #; (lsu) s5  <-- 0
       0     4911        M 0x800012e0 lw      s4, 88(sp)             #; sp  = 0x0011feb0, s4  <~~ Word[0x0011ff08]
       0     4914        M                                           #; (lsu) s4  <-- 0
       0     4915        M 0x800012e4 lw      s3, 92(sp)             #; sp  = 0x0011feb0, s3  <~~ Word[0x0011ff0c]
       0     4918        M                                           #; (lsu) s3  <-- 0
       0     4919        M 0x800012e8 lw      s2, 96(sp)             #; sp  = 0x0011feb0, s2  <~~ Word[0x0011ff10]
       0     4922        M                                           #; (lsu) s2  <-- 0
       0     4923        M 0x800012ec lw      s1, 100(sp)            #; sp  = 0x0011feb0, s1  <~~ Word[0x0011ff14]
       0     4926        M                                           #; (lsu) s1  <-- 0
       0     4927        M 0x800012f0 lw      s0, 104(sp)            #; sp  = 0x0011feb0, s0  <~~ Word[0x0011ff18]
       0     4930        M                                           #; (lsu) s0  <-- 0
       0     4931        M 0x800012f4 lw      ra, 108(sp)            #; sp  = 0x0011feb0, ra  <~~ Word[0x0011ff1c]
       0     4932        M 0x800012f8 addi    sp, sp, 112            #; sp  = 0x0011feb0, (wrb) sp  <-- 0x0011ff20
       0     4934        M                                           #; (lsu) ra  <-- 0x800006fc
       0     4935        M 0x800012fc ret                            #; ra  = 0x800006fc, goto 0x800006fc
       0     4938        M 0x800006fc lw      ra, 12(sp)             #; sp  = 0x0011ff20, ra  <~~ Word[0x0011ff2c]
       0     4941        M 0x80000700 addi    sp, sp, 48             #; sp  = 0x0011ff20, (wrb) sp  <-- 0x0011ff50
       0     4942        M                                           #; (lsu) ra  <-- 0x8000069c
       0     4943        M 0x80000704 ret                            #; ra  = 0x8000069c, goto 0x8000069c
       0     4946        M 0x8000069c li      a0, 0                  #; (wrb) a0  <-- 0
       0     4958        M 0x800006a0 lw      ra, 12(sp)             #; sp  = 0x0011ff50, ra  <~~ Word[0x0011ff5c]
       0     4959        M 0x800006a4 addi    sp, sp, 16             #; sp  = 0x0011ff50, (wrb) sp  <-- 0x0011ff60
       0     4961        M                                           #; (lsu) ra  <-- 0x80002760
       0     4962        M 0x800006a8 ret                            #; ra  = 0x80002760, goto 0x80002760
       0     4974        M 0x80002760 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
       0     4975        M 0x80002764 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002764
       0     4976        M 0x80002768 jalr    ra, ra, 524            #; ra  = 0x80002764, (wrb) ra  <-- 0x8000276c, goto 0x80002970
       0     4988        M 0x80002970 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
       0     4989        M 0x80002974 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x8000276c ~~> Word[0x0011ff5c]
       0     4990        M 0x80002978 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002978
       0     4991        M 0x8000297c jalr    ra, ra, -1264          #; ra  = 0x80002978, (wrb) ra  <-- 0x80002980, goto 0x80002488
       0     4994        M 0x80002488 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     4995        M 0x8000248c add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     4997        M 0x80002490 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     5000        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     5001        M 0x80002494 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     5004        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     5005        M 0x80002498 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
       0     5006        M 0x8000249c ret                            #; ra  = 0x80002980, goto 0x80002980
       0     5008        M                                           #; (lsu) a0  <-- 0x00120190
       0     5009        M 0x80002980 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
       0     5019        M                                           #; (lsu) a0  <-- 0
       0     5020        M 0x80002984 mv      zero, a0               #; a0  = 0
       0     5021        M 0x80002988 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
       0     5022        M 0x8000298c addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
       0     5024        M                                           #; (lsu) ra  <-- 0x8000276c
       0     5025        M 0x80002990 ret                            #; ra  = 0x8000276c, goto 0x8000276c
       0     5039        M 0x8000276c mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
       0     5043        M 0x80002770 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002770
       0     5044        M 0x80002774 jalr    ra, ra, 556            #; ra  = 0x80002770, (wrb) ra  <-- 0x80002778, goto 0x8000299c
       0     5045        M 0x8000299c addi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff58
       0     5046        M 0x800029a0 sw      a0, 0(sp)              #; sp  = 0x0011ff58, 0 ~~> Word[0x0011ff58]
       0     5047        M 0x800029a4 sw      ra, 4(sp)              #; sp  = 0x0011ff58, 0x80002778 ~~> Word[0x0011ff5c]
       0     5048        M 0x800029a8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800029a8
       0     5049        M 0x800029ac jalr    ra, ra, -1344          #; ra  = 0x800029a8, (wrb) ra  <-- 0x800029b0, goto 0x80002468
       0     5060        M 0x80002468 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     5061        M 0x8000246c add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     5064        M 0x80002470 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     5067        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     5068        M 0x80002474 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     5071        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     5072        M 0x80002478 lw      a0, 8(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff78]
       0     5073        M 0x8000247c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5075        M                                           #; (lsu) a0  <-- 0
       0     5076        M 0x80002480 sub     a0, a1, a0             #; a1  = 0, a0  = 0, (wrb) a0  <-- 0
       0     5077        M 0x80002484 ret                            #; ra  = 0x800029b0, goto 0x800029b0
       0     5078        M 0x800029b0 lw      t0, 0(sp)              #; sp  = 0x0011ff58, t0  <~~ Word[0x0011ff58]
       0     5081        M                                           #; (lsu) t0  <-- 0
       0     5082        M 0x800029b4 lw      ra, 4(sp)              #; sp  = 0x0011ff58, ra  <~~ Word[0x0011ff5c]
       0     5083        M 0x800029b8 addi    sp, sp, 8              #; sp  = 0x0011ff58, (wrb) sp  <-- 0x0011ff60
       0     5084        M 0x800029bc bnez    a0, pc + 24            #; a0  = 0, not taken
       0     5085        M                                           #; (lsu) ra  <-- 0x80002778
       0     5089        M 0x800029c0 slli    t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 0
       0     5090        M 0x800029c4 ori     t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 1
       0     5091        M 0x800029c8 auipc   t1, 0x0                #; (wrb) t1  <-- 0x800029c8
       0     5092        M 0x800029cc addi    t1, t1, 632            #; t1  = 0x800029c8, (wrb) t1  <-- 0x80002c40
       0     5100        M 0x800029d0 sw      t0, 0(t1)              #; t1  = 0x80002c40, 1 ~~> Word[0x80002c40]
       0     5101        M 0x800029d4 ret                            #; ra  = 0x80002778, goto 0x80002778
       0     5115        M 0x80002778 wfi                            #; 

## Performance metrics

Performance metrics for section 0 @ (12, 5115):
snitch_loads                                   134
snitch_stores                                  168
fpss_loads                                      10
fpss_stores                                      3
snitch_avg_load_latency                    12.2015
snitch_occupancy                            0.2469
snitch_fseq_rel_offloads                    0.0469
fseq_yield                                     1.0
fseq_fpu_yield                                 1.0
fpss_section_latency                             0
fpss_avg_fpu_latency                        0.9388
fpss_avg_load_latency                          5.8
fpss_occupancy                              0.0121
fpss_fpu_occupancy                          0.0096
fpss_fpu_rel_occupancy                      0.7903
cycles                                        5104
total_ipc                                   0.2590
