       0       12        M 0x00001000 csrr    a0, mhartid            #; mhartid = 0, (wrb) a0  <-- 0
       0       32        M 0x00001004 auipc   a1, 0x0                #; (wrb) a1  <-- 4100
       0       56        M 0x00001008 addi    a1, a1, 32             #; a1  = 4100, (wrb) a1  <-- 4132
       0       84        M 0x0000100c auipc   t0, 0x0                #; (wrb) t0  <-- 4108
       0      104        M 0x00001010 lw      t0, 20(t0)             #; t0  = 4108, t0  <~~ Word[0x00001020]
       0      115        M                                           #; (lsu) t0  <-- 0x80003410
       0      128        M 0x00001014 jalr    t0                     #; t0  = 0x80003410, (wrb) ra  <-- 4120, goto 0x80003410
       0      269        M 0x80003410 auipc   gp, 0x1                #; (wrb) gp  <-- 0x80004410
       0      270        M 0x80003414 addi    gp, gp, -264           #; gp  = 0x80004410, (wrb) gp  <-- 0x80004308
       0      271        M 0x80003418 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80003418
       0      272        M 0x8000341c jalr    ra, ra, 964            #; ra  = 0x80003418, (wrb) ra  <-- 0x80003420, goto 0x800037dc
       0      292        M 0x800037dc mv      a4, a1                 #; a1  = 4132, (wrb) a4  <-- 4132
       0      304        M 0x800037e0 lw      a1, 4(a4)              #; a4  = 4132, a1  <~~ Word[0x00001028]
       0      334        M                                           #; (lsu) a1  <-- 8
       0      335        M 0x800037e4 lw      t0, 8(a4)              #; a4  = 4132, t0  <~~ Word[0x0000102c]
       0      374        M                                           #; (lsu) t0  <-- 0
       0      375        M 0x800037e8 lw      a2, 12(a4)             #; a4  = 4132, a2  <~~ Word[0x00001030]
       0      414        M                                           #; (lsu) a2  <-- 0x00100000
       0      415        M 0x800037ec lw      t1, 16(a4)             #; a4  = 4132, t1  <~~ Word[0x00001034]
       0      454        M                                           #; (lsu) t1  <-- 0x00020000
       0      455        M 0x800037f0 lw      t2, 20(a4)             #; a4  = 4132, t2  <~~ Word[0x00001038]
       0      456        M 0x800037f4 sub     a0, a0, t0             #; a0  = 0, t0  = 0, (wrb) a0  <-- 0
       0      457        M 0x800037f8 div     t3, a0, a1             #; a0  = 0, a1  = 8
       0      460        M                                           #; (acc) t4  <-- 0x027e0eb3
       0      494        M                                           #; (lsu) t2  <-- 0
       0      495        M 0x800037fc mul     t4, t3, t2             #; t3  = 0, t2  = 0
       0      498        M                                           #; (acc) a2  <-- 0x01d60633
       0      499        M 0x80003800 add     a2, a2, t4             #; a2  = 0x00100000, t4  = 0, (wrb) a2  <-- 0x00100000
       0      500        M 0x80003804 add     a3, a2, t1             #; a2  = 0x00100000, t1  = 0x00020000, (wrb) a3  <-- 0x00120000
       0      501        M 0x80003808 remu    a0, a0, a1             #; a0  = 0, a1  = 8
       0      502        M 0x8000380c ret                            #; ra  = 0x80003420, goto 0x80003420
       0      504        M                                           #; (acc) s0  <-- 0x00050413
       0      505        M 0x80003420 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
       0      506        M 0x80003424 mv      a0, a4                 #; a4  = 4132, (wrb) a0  <-- 4132
       0      507        M 0x80003428 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80003428
       0      508        M 0x8000342c jalr    ra, ra, 1036           #; ra  = 0x80003428, (wrb) ra  <-- 0x80003430, goto 0x80003834
       0      523        M 0x80003834 lw      a0, 8(a0)              #; a0  = 4132, a0  <~~ Word[0x0000102c]
       0      524        M 0x80003838 ret                            #; ra  = 0x80003430, goto 0x80003430
       0      543        M                                           #; (lsu) a0  <-- 0
       0      544        M 0x80003430 mv      t0, a0                 #; a0  = 0, (wrb) t0  <-- 0
       0      545        M 0x80003434 mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
       0      546        M 0x80003438 csrr    t1, mhartid            #; mhartid = 0, (wrb) t1  <-- 0
       0      547        M 0x8000343c sub     t0, t1, t0             #; t1  = 0, t0  = 0, (wrb) t0  <-- 0
       0      549        M 0x80003440 bnez    t0, pc + 36            #; t0  = 0, not taken
       0      550        M 0x80003444 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80003444
       0      551        M 0x80003448 addi    t0, t0, 1932           #; t0  = 0x80003444, (wrb) t0  <-- 0x80003bd0
       0      552        M 0x8000344c auipc   t1, 0x0                #; (wrb) t1  <-- 0x8000344c
       0      562        M 0x80003450 addi    t1, t1, 1928           #; t1  = 0x8000344c, (wrb) t1  <-- 0x80003bd4
       0      563        M 0x80003454 bge     t0, t1, pc + 16        #; t0  = 0x80003bd0, t1  = 0x80003bd4, not taken
       0      564        M 0x80003458 sw      zero, 0(t0)            #; t0  = 0x80003bd0, 0 ~~> Word[0x80003bd0]
       0      565        M 0x8000345c addi    t0, t0, 4              #; t0  = 0x80003bd0, (wrb) t0  <-- 0x80003bd4
       0      573        M 0x80003460 blt     t0, t1, pc - 8         #; t0  = 0x80003bd4, t1  = 0x80003bd4, not taken
       0      574        M 0x80003464 csrr    t0, misa               #; misa = 0x40801129, (wrb) t0  <-- 0x40801129
       0      575        M 0x80003468 andi    t0, t0, 40             #; t0  = 0x40801129, (wrb) t0  <-- 40
       0      576        M 0x8000346c beqz    t0, pc + 132           #; t0  = 40, not taken
       0      586        M 0x80003470 fcvt.d.w ft0, zero             #; ac1  = 0
       0      587        M 0x80003474 fcvt.d.w ft1, zero             #; ac1  = 0, (f:fpu) ft0  <-- 0.0
       0      588        M 0x80003478 fcvt.d.w ft2, zero             #; ac1  = 0, (f:fpu) ft1  <-- 0.0
       0      589        M 0x8000347c fcvt.d.w ft3, zero             #; ac1  = 0, (f:fpu) ft2  <-- 0.0
       0      590        M                                           #; (f:fpu) ft3  <-- 0.0
       0      598        M 0x80003480 fcvt.d.w ft4, zero             #; ac1  = 0
       0      599        M 0x80003484 fcvt.d.w ft5, zero             #; ac1  = 0, (f:fpu) ft4  <-- 0.0
       0      600        M 0x80003488 fcvt.d.w ft6, zero             #; ac1  = 0, (f:fpu) ft5  <-- 0.0
       0      601        M 0x8000348c fcvt.d.w ft7, zero             #; ac1  = 0, (f:fpu) ft6  <-- 0.0
       0      602        M                                           #; (f:fpu) ft7  <-- 0.0
       0      610        M 0x80003490 fcvt.d.w fs0, zero             #; ac1  = 0
       0      611        M 0x80003494 fcvt.d.w fs1, zero             #; ac1  = 0, (f:fpu) fs0  <-- 0.0
       0      612        M 0x80003498 fcvt.d.w fa0, zero             #; ac1  = 0, (f:fpu) fs1  <-- 0.0
       0      613        M 0x8000349c fcvt.d.w fa1, zero             #; ac1  = 0, (f:fpu) fa0  <-- 0.0
       0      614        M                                           #; (f:fpu) fa1  <-- 0.0
       0      622        M 0x800034a0 fcvt.d.w fa2, zero             #; ac1  = 0
       0      623        M 0x800034a4 fcvt.d.w fa3, zero             #; ac1  = 0, (f:fpu) fa2  <-- 0.0
       0      624        M 0x800034a8 fcvt.d.w fa4, zero             #; ac1  = 0, (f:fpu) fa3  <-- 0.0
       0      625        M 0x800034ac fcvt.d.w fa5, zero             #; ac1  = 0, (f:fpu) fa4  <-- 0.0
       0      626        M                                           #; (f:fpu) fa5  <-- 0.0
       0      634        M 0x800034b0 fcvt.d.w fa6, zero             #; ac1  = 0
       0      635        M 0x800034b4 fcvt.d.w fa7, zero             #; ac1  = 0, (f:fpu) fa6  <-- 0.0
       0      636        M 0x800034b8 fcvt.d.w fs2, zero             #; ac1  = 0, (f:fpu) fa7  <-- 0.0
       0      637        M 0x800034bc fcvt.d.w fs3, zero             #; ac1  = 0, (f:fpu) fs2  <-- 0.0
       0      638        M                                           #; (f:fpu) fs3  <-- 0.0
       0      646        M 0x800034c0 fcvt.d.w fs4, zero             #; ac1  = 0
       0      647        M 0x800034c4 fcvt.d.w fs5, zero             #; ac1  = 0, (f:fpu) fs4  <-- 0.0
       0      648        M 0x800034c8 fcvt.d.w fs6, zero             #; ac1  = 0, (f:fpu) fs5  <-- 0.0
       0      649        M 0x800034cc fcvt.d.w fs7, zero             #; ac1  = 0, (f:fpu) fs6  <-- 0.0
       0      650        M                                           #; (f:fpu) fs7  <-- 0.0
       0      658        M 0x800034d0 fcvt.d.w fs8, zero             #; ac1  = 0
       0      659        M 0x800034d4 fcvt.d.w fs9, zero             #; ac1  = 0, (f:fpu) fs8  <-- 0.0
       0      660        M 0x800034d8 fcvt.d.w fs10, zero            #; ac1  = 0, (f:fpu) fs9  <-- 0.0
       0      661        M 0x800034dc fcvt.d.w fs11, zero            #; ac1  = 0, (f:fpu) fs10 <-- 0.0
       0      662        M                                           #; (f:fpu) fs11 <-- 0.0
       0      670        M 0x800034e0 fcvt.d.w ft8, zero             #; ac1  = 0
       0      671        M 0x800034e4 fcvt.d.w ft9, zero             #; ac1  = 0, (f:fpu) ft8  <-- 0.0
       0      672        M 0x800034e8 fcvt.d.w ft10, zero            #; ac1  = 0, (f:fpu) ft9  <-- 0.0
       0      673        M 0x800034ec fcvt.d.w ft11, zero            #; ac1  = 0, (f:fpu) ft10 <-- 0.0
       0      674        M                                           #; (f:fpu) ft11 <-- 0.0
       0      681        M 0x800034f0 addi    a3, a3, -8             #; a3  = 0x00120000, (wrb) a3  <-- 0x0011fff8
       0      682        M 0x800034f4 sw      zero, 0(a3)            #; a3  = 0x0011fff8, 0 ~~> Word[0x0011fff8]
       0      683        M 0x800034f8 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800034f8
       0      684        M 0x800034fc lw      t0, 900(t0)            #; t0  = 0x800034f8, t0  <~~ Word[0x8000387c]
       0      704        M                                           #; (lsu) t0  <-- 136
       0      705        M 0x80003500 sub     a3, a3, t0             #; a3  = 0x0011fff8, t0  = 136, (wrb) a3  <-- 0x0011ff70
       0      706        M 0x80003504 mv      a5, a3                 #; a3  = 0x0011ff70, (wrb) a5  <-- 0x0011ff70
       0      707        M 0x80003508 auipc   t2, 0x0                #; (wrb) t2  <-- 0x80003508
       0      708        M 0x8000350c lw      t2, 880(t2)            #; t2  = 0x80003508, t2  <~~ Word[0x80003878]
       0      744        M                                           #; (lsu) t2  <-- 10
       0      745        M 0x80003510 sll     t0, a0, t2             #; a0  = 0, t2  = 10, (wrb) t0  <-- 0
       0      746        M 0x80003514 sll     t1, a1, t2             #; a1  = 8, t2  = 10, (wrb) t1  <-- 8192
       0      747        M 0x80003518 sub     sp, a3, t0             #; a3  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
       0      748        M 0x8000351c sub     a3, a3, t1             #; a3  = 0x0011ff70, t1  = 8192, (wrb) a3  <-- 0x0011df70
       0      749        M 0x80003520 slli    t0, a0, 3              #; a0  = 0, (wrb) t0  <-- 0
       0      750        M 0x80003524 slli    t1, a1, 3              #; a1  = 8, (wrb) t1  <-- 64
       0      751        M 0x80003528 sub     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
       0      752        M 0x8000352c sub     a3, a3, t1             #; a3  = 0x0011df70, t1  = 64, (wrb) a3  <-- 0x0011df30
       0      761        M 0x80003530 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80003530
       0      762        M 0x80003534 addi    t0, t0, 1496           #; t0  = 0x80003530, (wrb) t0  <-- 0x80003b08
       0      763        M 0x80003538 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80003538
       0      764        M 0x8000353c addi    t1, t1, 1488           #; t1  = 0x80003538, (wrb) t1  <-- 0x80003b08
       0      775        M 0x80003540 auipc   t2, 0x0                #; (wrb) t2  <-- 0x80003540
       0      776        M 0x80003544 addi    t2, t2, 1480           #; t2  = 0x80003540, (wrb) t2  <-- 0x80003b08
       0      777        M 0x80003548 auipc   t3, 0x0                #; (wrb) t3  <-- 0x80003548
       0      778        M 0x8000354c addi    t3, t3, 1488           #; t3  = 0x80003548, (wrb) t3  <-- 0x80003b18
       0      787        M 0x80003550 add     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0x80003b08, (wrb) sp  <-- 0x80123a78
       0      788        M 0x80003554 sub     sp, sp, t1             #; sp  = 0x80123a78, t1  = 0x80003b08, (wrb) sp  <-- 0x0011ff70
       0      789        M 0x80003558 add     sp, sp, t2             #; sp  = 0x0011ff70, t2  = 0x80003b08, (wrb) sp  <-- 0x80123a78
       0      790        M 0x8000355c sub     sp, sp, t3             #; sp  = 0x80123a78, t3  = 0x80003b18, (wrb) sp  <-- 0x0011ff60
       0      799        M 0x80003560 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
       0      800        M 0x80003564 mv      tp, sp                 #; sp  = 0x0011ff60, (wrb) tp  <-- 0x0011ff60
       0      801        M 0x80003568 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
       0      802        M 0x8000356c mv      t4, tp                 #; tp  = 0x0011ff60, (wrb) t4  <-- 0x0011ff60
       0      811        M 0x80003570 bge     t0, t1, pc + 24        #; t0  = 0x80003b08, t1  = 0x80003b08, taken, goto 0x80003588
       0      823        M 0x80003588 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80003588
       0      824        M 0x8000358c addi    t0, t0, 1408           #; t0  = 0x80003588, (wrb) t0  <-- 0x80003b08
       0      835        M 0x80003590 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80003590
       0      836        M 0x80003594 addi    t1, t1, 1416           #; t1  = 0x80003590, (wrb) t1  <-- 0x80003b18
       0      837        M 0x80003598 bge     t0, t1, pc + 20        #; t0  = 0x80003b08, t1  = 0x80003b18, not taken
       0      838        M 0x8000359c sw      zero, 0(t4)            #; t4  = 0x0011ff60, 0 ~~> Word[0x0011ff60]
       0      847        M 0x800035a0 addi    t0, t0, 4              #; t0  = 0x80003b08, (wrb) t0  <-- 0x80003b0c
       0      848        M 0x800035a4 addi    t4, t4, 4              #; t4  = 0x0011ff60, (wrb) t4  <-- 0x0011ff64
       0      849        M 0x800035a8 blt     t0, t2, pc - 12        #; t0  = 0x80003b0c, t2  = 0x80003b08, not taken
       0      850        M 0x800035ac addi    sp, sp, -20            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff4c
       0      862        M 0x800035b0 sw      a0, 0(sp)              #; sp  = 0x0011ff4c, 0 ~~> Word[0x0011ff4c]
       0      863        M 0x800035b4 sw      a1, 4(sp)              #; sp  = 0x0011ff4c, 8 ~~> Word[0x0011ff50]
       0      864        M 0x800035b8 sw      a2, 8(sp)              #; sp  = 0x0011ff4c, 0x00100000 ~~> Word[0x0011ff54]
       0      865        M 0x800035bc sw      a3, 12(sp)             #; sp  = 0x0011ff4c, 0x0011df30 ~~> Word[0x0011ff58]
       0      875        M 0x800035c0 sw      a4, 16(sp)             #; sp  = 0x0011ff4c, 4132 ~~> Word[0x0011ff5c]
       0      876        M 0x800035c4 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800035c4
       0      877        M 0x800035c8 jalr    ra, ra, -1060          #; ra  = 0x800035c4, (wrb) ra  <-- 0x800035cc, goto 0x800031a0
       0      898        M 0x800031a0 sw      a5, 0(a5)              #; a5  = 0x0011ff70, 0x0011ff70 ~~> Word[0x0011ff70]
       0      899        M 0x800031a4 sw      a4, 4(a5)              #; a5  = 0x0011ff70, 4132 ~~> Word[0x0011ff74]
       0      901        M 0x800031a8 lw      t1, 8(a4)              #; a4  = 4132, t1  <~~ Word[0x0000102c]
       0      923        M                                           #; (lsu) t1  <-- 0
       0      924        M 0x800031ac sw      t1, 8(a5)              #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff78]
       0      925        M 0x800031b0 lw      a6, 40(a4)             #; a4  = 4132, a6  <~~ Word[0x0000104c]
       0      963        M                                           #; (lsu) a6  <-- 1
       0      964        M 0x800031b4 lw      a7, 44(a4)             #; a4  = 4132, a7  <~~ Word[0x00001050]
       0     1003        M                                           #; (lsu) a7  <-- 1
       0     1004        M 0x800031b8 lw      t0, 4(a4)              #; a4  = 4132, t0  <~~ Word[0x00001028]
       0     1005        M 0x800031bc mul     a6, a7, a6             #; a7  = 1, a6  = 1
       0     1008        M                                           #; (acc) a0  <-- 0x02580533
       0     1043        M                                           #; (lsu) t0  <-- 8
       0     1044        M 0x800031c0 mul     a0, a6, t0             #; a6  = 1, t0  = 8
       0     1047        M                                           #; (acc) a2  <-- 0x00a7a623
       0     1048        M 0x800031c4 sw      a0, 12(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff7c]
       0     1049        M 0x800031c8 csrr    a7, mhartid            #; mhartid = 0, (wrb) a7  <-- 0
       0     1050        M 0x800031cc sub     a0, a7, t1             #; a7  = 0, t1  = 0, (wrb) a0  <-- 0
       0     1051        M 0x800031d0 divu    a0, a0, t0             #; a0  = 0, t0  = 8
       0     1054        M                                           #; (acc) a6  <-- 0x00a7a823
       0     1055        M 0x800031d4 sw      a0, 16(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff80]
       0     1056        M 0x800031d8 sw      a6, 20(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff84]
       0     1057        M 0x800031dc sw      t1, 24(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff88]
       0     1063        M 0x800031e0 sw      a1, 28(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff8c]
       0     1064        M 0x800031e4 lw      a0, 24(a4)             #; a4  = 4132, a0  <~~ Word[0x0000103c]
       0     1065        M 0x800031e8 lui     a1, 0x10000            #; (wrb) a1  <-- 0x10000000
       0     1083        M                                           #; (lsu) a0  <-- 0x80000000
       0     1084        M 0x800031ec add     a0, a0, a1             #; a0  = 0x80000000, a1  = 0x10000000, (wrb) a0  <-- 0x90000000
       0     1085        M 0x800031f0 sw      zero, 36(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff94]
       0     1086        M 0x800031f4 sw      a0, 32(a5)             #; a5  = 0x0011ff70, 0x90000000 ~~> Word[0x0011ff90]
       0     1087        M 0x800031f8 lw      a0, 32(a4)             #; a4  = 4132, a0  <~~ Word[0x00001044]
       0     1123        M                                           #; (lsu) a0  <-- 0
       0     1124        M 0x800031fc lw      a1, 36(a4)             #; a4  = 4132, a1  <~~ Word[0x00001048]
       0     1125        M 0x80003200 sw      a0, 40(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff98]
       0     1163        M                                           #; (lsu) a1  <-- 1
       0     1164        M 0x80003204 sw      a1, 44(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff9c]
       0     1165        M 0x80003208 sw      a2, 48(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffa0]
       0     1166        M 0x8000320c sw      zero, 52(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffa4]
       0     1167        M 0x80003210 sw      a3, 56(a5)             #; a5  = 0x0011ff70, 0x0011df30 ~~> Word[0x0011ffa8]
       0     1168        M 0x80003214 sw      zero, 60(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffac]
       0     1169        M 0x80003218 lw      a0, 16(a4)             #; a4  = 4132, a0  <~~ Word[0x00001034]
       0     1190        M                                           #; (lsu) a0  <-- 0x00020000
       0     1191        M 0x8000321c add     a6, a2, a0             #; a2  = 0x00100000, a0  = 0x00020000, (wrb) a6  <-- 0x00120000
       0     1192        M 0x80003220 addi    a1, a6, 400            #; a6  = 0x00120000, (wrb) a1  <-- 0x00120190
       0     1193        M 0x80003224 sw      a1, 112(a5)            #; a5  = 0x0011ff70, 0x00120190 ~~> Word[0x0011ffe0]
       0     1194        M 0x80003228 sltu    t0, a6, a0             #; a6  = 0x00120000, a0  = 0x00020000, (wrb) t0  <-- 0
       0     1195        M 0x8000322c srli    a1, a0, 1              #; a0  = 0x00020000, (wrb) a1  <-- 0x00010000
       0     1205        M 0x80003230 add     t1, a6, a1             #; a6  = 0x00120000, a1  = 0x00010000, (wrb) t1  <-- 0x00130000
       0     1206        M 0x80003234 sltu    a1, t1, a6             #; t1  = 0x00130000, a6  = 0x00120000, (wrb) a1  <-- 0
       0     1207        M 0x80003238 add     a1, t0, a1             #; t0  = 0, a1  = 0, (wrb) a1  <-- 0
       0     1208        M 0x8000323c sw      t1, 64(a5)             #; a5  = 0x0011ff70, 0x00130000 ~~> Word[0x0011ffb0]
       0     1219        M 0x80003240 sw      a1, 68(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffb4]
       0     1220        M 0x80003244 slli    a0, a0, 1              #; a0  = 0x00020000, (wrb) a0  <-- 0x00040000
       0     1221        M 0x80003248 add     a1, a0, a2             #; a0  = 0x00040000, a2  = 0x00100000, (wrb) a1  <-- 0x00140000
       0     1222        M 0x8000324c sltu    a0, a1, a0             #; a1  = 0x00140000, a0  = 0x00040000, (wrb) a0  <-- 0
       0     1231        M 0x80003250 sw      a1, 72(a5)             #; a5  = 0x0011ff70, 0x00140000 ~~> Word[0x0011ffb8]
       0     1232        M 0x80003254 sw      a0, 76(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffbc]
       0     1234        M 0x80003258 sw      zero, 104(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd8]
       0     1238        M 0x8000325c sw      zero, 108(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffdc]
       0     1243        M 0x80003260 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1244        M 0x80003264 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1245        M 0x80003268 sw      a5, 0(a0)              #; a0  = 0x0011ff60, 0x0011ff70 ~~> Word[0x0011ff60]
       0     1246        M 0x8000326c lw      a0, 0(a5)              #; a5  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1250        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1255        M 0x80003270 lw      a1, 24(a0)             #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ff88]
       0     1259        M                                           #; (lsu) a1  <-- 0
       0     1260        M 0x80003274 lw      a0, 28(a0)             #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff8c]
       0     1261        M 0x80003278 sub     a1, a7, a1             #; a7  = 0, a1  = 0, (wrb) a1  <-- 0
       0     1263        M                                           #; (lsu) a0  <-- 8
       0     1264        M 0x8000327c remu    a0, a1, a0             #; a1  = 0, a0  = 8
       0     1267        M 0x80003280 lui     a1, 0x0                #; (wrb) a1  <-- 0
       0     1268        M 0x80003284 add     a1, a1, tp             #; a1  = 0, tp  = 0x0011ff60, (wrb) a1  <-- 0x0011ff60
       0     1269        M                                           #; (acc) tp  <-- 0x00a5a223
       0     1270        M 0x80003288 sw      a0, 4(a1)              #; a1  = 0x0011ff60, 0 ~~> Word[0x0011ff64]
       0     1271        M 0x8000328c li      a0, 1096               #; (wrb) a0  <-- 1096
       0     1279        M 0x80003290 mul     a0, a7, a0             #; a7  = 0, a0  = 1096
       0     1280        M 0x80003294 auipc   a1, 0x1                #; (wrb) a1  <-- 0x80004294
       0     1281        M 0x80003298 addi    a1, a1, -1728          #; a1  = 0x80004294, (wrb) a1  <-- 0x80003bd4
       0     1283        M                                           #; (acc) a0  <-- 0x00b50533
       0     1284        M 0x8000329c add     a0, a0, a1             #; a0  = 0, a1  = 0x80003bd4, (wrb) a0  <-- 0x80003bd4
       0     1291        M 0x800032a0 sw      zero, 0(a0)            #; a0  = 0x80003bd4, 0 ~~> Word[0x80003bd4]
       0     1292        M 0x800032a4 lw      a7, 48(a4)             #; a4  = 4132, a7  <~~ Word[0x00001054]
       0     1362        M                                           #; (lsu) a7  <-- 0xffff0000
       0     1363        M 0x800032a8 sw      a7, 116(a5)            #; a5  = 0x0011ff70, 0xffff0000 ~~> Word[0x0011ffe4]
       0     1364        M 0x800032ac sw      a6, 124(a5)            #; a5  = 0x0011ff70, 0x00120000 ~~> Word[0x0011ffec]
       0     1365        M 0x800032b0 sw      zero, 120(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffe8]
       0     1366        M 0x800032b4 addi    a4, a6, 384            #; a6  = 0x00120000, (wrb) a4  <-- 0x00120180
       0     1367        M 0x800032b8 sw      a4, 128(a5)            #; a5  = 0x0011ff70, 0x00120180 ~~> Word[0x0011fff0]
       0     1368        M 0x800032bc addi    a0, a2, 7              #; a2  = 0x00100000, (wrb) a0  <-- 0x00100007
       0     1369        M 0x800032c0 andi    a0, a0, -8             #; a0  = 0x00100007, (wrb) a0  <-- 0x00100000
       0     1370        M 0x800032c4 sw      a0, 80(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc0]
       0     1371        M 0x800032c8 sub     a2, a3, a2             #; a3  = 0x0011df30, a2  = 0x00100000, (wrb) a2  <-- 0x0001df30
       0     1372        M 0x800032cc sw      a2, 84(a5)             #; a5  = 0x0011ff70, 0x0001df30 ~~> Word[0x0011ffc4]
       0     1373        M 0x800032d0 sw      a0, 88(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc8]
       0     1374        M 0x800032d4 lw      a0, 0(a1)              #; a1  = 0x80003bd4, a0  <~~ Word[0x80003bd4]
       0     1385        M                                           #; (lsu) a0  <-- 0
       0     1386        M 0x800032d8 addi    a0, a0, 1103           #; a0  = 0, (wrb) a0  <-- 1103
       0     1387        M 0x800032dc andi    a0, a0, -8             #; a0  = 1103, (wrb) a0  <-- 1096
       0     1388        M 0x800032e0 sw      a0, 92(a5)             #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffcc]
       0     1389        M 0x800032e4 sw      zero, 96(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd0]
       0     1390        M 0x800032e8 sw      a0, 100(a5)            #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffd4]
       0     1391        M 0x800032ec lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1392        M 0x800032f0 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1393        M 0x800032f4 sw      a7, 8(a0)              #; a0  = 0x0011ff60, 0xffff0000 ~~> Word[0x0011ff68]
       0     1394        M 0x800032f8 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1395        M 0x800032fc add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1400        M 0x80003300 sw      a4, 12(a0)             #; a0  = 0x0011ff60, 0x00120180 ~~> Word[0x0011ff6c]
       0     1401        M 0x80003304 ret                            #; ra  = 0x800035cc, goto 0x800035cc
       0     1415        M 0x800035cc lw      a0, 0(sp)              #; sp  = 0x0011ff4c, a0  <~~ Word[0x0011ff4c]
       0     1418        M                                           #; (lsu) a0  <-- 0
       0     1419        M 0x800035d0 lw      a1, 4(sp)              #; sp  = 0x0011ff4c, a1  <~~ Word[0x0011ff50]
       0     1422        M                                           #; (lsu) a1  <-- 8
       0     1423        M 0x800035d4 lw      a2, 8(sp)              #; sp  = 0x0011ff4c, a2  <~~ Word[0x0011ff54]
       0     1426        M                                           #; (lsu) a2  <-- 0x00100000
       0     1427        M 0x800035d8 lw      a3, 12(sp)             #; sp  = 0x0011ff4c, a3  <~~ Word[0x0011ff58]
       0     1430        M                                           #; (lsu) a3  <-- 0x0011df30
       0     1431        M 0x800035dc lw      a4, 16(sp)             #; sp  = 0x0011ff4c, a4  <~~ Word[0x0011ff5c]
       0     1432        M 0x800035e0 addi    sp, sp, 20             #; sp  = 0x0011ff4c, (wrb) sp  <-- 0x0011ff60
       0     1433        M 0x800035e4 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800035e4
       0     1434        M 0x800035e8 addi    t0, t0, 60             #; t0  = 0x800035e4, (wrb) t0  <-- 0x80003620
       0     1435        M 0x800035ec csrw    mtvec, t0              #; t0  = 0x80003620, (lsu) a4  <-- 4132
       0     1443        M 0x800035f0 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800035f0
       0     1444        M 0x800035f4 jalr    ra, ra, 544            #; ra  = 0x800035f0, (wrb) ra  <-- 0x800035f8, goto 0x80003810
       0     1460        M 0x80003810 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
       0     1461        M 0x80003814 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x800035f8 ~~> Word[0x0011ff5c]
       0     1462        M 0x80003818 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80003818
       0     1463        M 0x8000381c jalr    ra, ra, -1264          #; ra  = 0x80003818, (wrb) ra  <-- 0x80003820, goto 0x80003328
       0     1481        M 0x80003328 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1482        M 0x8000332c add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1493        M 0x80003330 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     1496        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1497        M 0x80003334 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1501        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1502        M 0x80003338 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
       0     1503        M 0x8000333c ret                            #; ra  = 0x80003820, goto 0x80003820
       0     1505        M                                           #; (lsu) a0  <-- 0x00120190
       0     1506        M 0x80003820 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
       0     1535        M                                           #; (lsu) a0  <-- 0
       0     1536        M 0x80003824 mv      zero, a0               #; a0  = 0
       0     1537        M 0x80003828 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
       0     1538        M 0x8000382c addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
       0     1540        M                                           #; (lsu) ra  <-- 0x800035f8
       0     1541        M 0x80003830 ret                            #; ra  = 0x800035f8, goto 0x800035f8
       0     1545        M 0x800035f8 auipc   ra, 0xffffd            #; (wrb) ra  <-- 0x800005f8
       0     1546        M 0x800035fc jalr    ra, ra, 60             #; ra  = 0x800005f8, (wrb) ra  <-- 0x80003600, goto 0x80000634
       0     1551        M 0x80000634 addi    sp, sp, -784           #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011fc50
       0     1552        M 0x80000638 sw      ra, 780(sp)            #; sp  = 0x0011fc50, 0x80003600 ~~> Word[0x0011ff5c]
       0     1555        M 0x8000063c fsd     fs0, 768(sp)           #; 0.0 ~~> Doub[0x0011ff50]
       0     1556        M 0x80000640 fsd     fs1, 760(sp)           #; 0.0 ~~> Doub[0x0011ff48]
       0     1557        M 0x80000644 fsd     fs2, 752(sp)           #; 0.0 ~~> Doub[0x0011ff40]
       0     1558        M 0x80000648 fsd     fs3, 744(sp)           #; 0.0 ~~> Doub[0x0011ff38]
       0     1559        M 0x8000064c fsd     fs4, 736(sp)           #; 0.0 ~~> Doub[0x0011ff30]
       0     1569        M 0x80000650 fsd     fs5, 728(sp)           #; 0.0 ~~> Doub[0x0011ff28]
       0     1571        M 0x80000654 fsd     fs6, 720(sp)           #; 0.0 ~~> Doub[0x0011ff20]
       0     1572        M 0x80000658 fsd     fs7, 712(sp)           #; 0.0 ~~> Doub[0x0011ff18]
       0     1573        M 0x8000065c fsd     fs8, 704(sp)           #; 0.0 ~~> Doub[0x0011ff10]
       0     1581        M 0x80000660 fsd     fs9, 696(sp)           #; 0.0 ~~> Doub[0x0011ff08]
       0     1582        M 0x8000066c lui     a0, 0x0                #; (wrb) a0  <-- 0
                         M 0x80000664 fsd     fs10, 688(sp)          #; 0.0 ~~> Doub[0x0011ff00]
       0     1583        M 0x80000668 fsd     fs11, 680(sp)          #; 0.0 ~~> Doub[0x0011fef8]
       0     1591        M 0x80000670 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1592        M 0x80000674 lw      a1, 4(a0)              #; a0  = 0x0011ff60, a1  <~~ Word[0x0011ff64]
       0     1593        M 0x80000678 li      a0, 0                  #; (wrb) a0  <-- 0
       0     1595        M                                           #; (lsu) a1  <-- 0
       0     1596        M 0x8000067c beqz    a1, pc + 8             #; a1  = 0, taken, goto 0x80000684
       0     1603        M 0x80000684 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1604        M 0x80000688 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1605        M 0x8000068c lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     1608        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1617        M 0x80000690 lw      a2, 0(a0)              #; a0  = 0x0011ff70, a2  <~~ Word[0x0011ff70]
       0     1620        M                                           #; (lsu) a2  <-- 0x0011ff70
       0     1621        M 0x80000694 lw      a0, 88(a2)             #; a2  = 0x0011ff70, a0  <~~ Word[0x0011ffc8]
       0     1625        M                                           #; (lsu) a0  <-- 0x00100000
       0     1626        M 0x80000698 lw      a1, 80(a2)             #; a2  = 0x0011ff70, a1  <~~ Word[0x0011ffc0]
       0     1629        M                                           #; (lsu) a1  <-- 0x00100000
       0     1630        M 0x8000069c lw      a4, 84(a2)             #; a2  = 0x0011ff70, a4  <~~ Word[0x0011ffc4]
       0     1631        M 0x800006a0 addi    a3, a0, 864            #; a0  = 0x00100000, (wrb) a3  <-- 0x00100360
       0     1633        M                                           #; (lsu) a4  <-- 0x0001df30
       0     1634        M 0x800006a4 add     a1, a4, a1             #; a4  = 0x0001df30, a1  = 0x00100000, (wrb) a1  <-- 0x0011df30
       0     1635        M 0x800006a8 bgeu    a1, a3, pc + 12        #; a1  = 0x0011df30, a3  = 0x00100360, taken, goto 0x800006b4
       0     1646        M 0x800006b4 srli    a1, a0, 20             #; a0  = 0x00100000, (wrb) a1  <-- 1
       0     1647        M 0x800006b8 snez    a1, a1                 #; a1  = 1, (wrb) a1  <-- 1
       0     1648        M 0x800006bc lui     a4, 0x120              #; (wrb) a4  <-- 0x00120000
       0     1659        M 0x800006c0 addi    a4, a4, -855           #; a4  = 0x00120000, (wrb) a4  <-- 0x0011fca9
       0     1660        M 0x800006c4 sltu    a4, a0, a4             #; a0  = 0x00100000, a4  = 0x0011fca9, (wrb) a4  <-- 1
       0     1661        M 0x800006c8 and     a1, a1, a4             #; a1  = 1, a4  = 1, (wrb) a1  <-- 1
       0     1662        M 0x800006cc sw      a3, 88(a2)             #; a2  = 0x0011ff70, 0x00100360 ~~> Word[0x0011ffc8]
       0     1673        M 0x800006d0 beqz    a1, pc + 1068          #; a1  = 1, not taken
       0     1674        M 0x800006d4 li      a2, 8                  #; (wrb) a2  <-- 8
       0     1675        M 0x800006d8 li      a3, 107                #; (wrb) a3  <-- 107
       0     1676        M 0x800006dc li      a4, 64                 #; (wrb) a4  <-- 64
       0     1700        M 0x800006e0 li      a5, 192                #; (wrb) a5  <-- 192
       0     1701        M 0x800006e4 scfgw   a3, a4                 #; a3  = 107, a4  = 64
       0     1702        M 0x800006e8 scfgw   a2, a5                 #; a2  = 8, a5  = 192
       0     1703        M 0x800006ec li      a2, 32                 #; (wrb) a2  <-- 32
       0     1712        M 0x800006f0 scfgw   zero, a2               #; a2  = 32
       0     1713        M 0x800006f4 scfgwi  a0, 896                #; a0  = 0x00100000
       0     1715        M 0x800006fc li      a2, 1                  #; (wrb) a2  <-- 1
                         M 0x800006f8 csrrsi  a2, ssr, 1             #; 
       0     1724        M 0x80000700 li      a3, 109                #; (wrb) a3  <-- 109
       0     1726        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 1
       0     1727        M 0x8000070c addi    a2, a2, 1              #; a2  = 1, (wrb) a2  <-- 2
                         M                                           #; (f:fpu) ft3  <-- 1.0
       0     1728        M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
       0     1729        M                                           #; (f:fpu) ft0  <-- 1.0
       0     1736        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 2, a3  = 109, taken, goto 0x80000704
       0     1738        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 2
       0     1739        M 0x8000070c addi    a2, a2, 1              #; a2  = 2, (wrb) a2  <-- 3
                         M                                           #; (f:fpu) ft3  <-- 2.0
       0     1740        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 3, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
       0     1741        M                                           #; (f:fpu) ft0  <-- 2.0
       0     1742        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 3
       0     1743        M 0x8000070c addi    a2, a2, 1              #; a2  = 3, (wrb) a2  <-- 4
                         M                                           #; (f:fpu) ft3  <-- 3.0
       0     1744        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 4, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
       0     1745        M                                           #; (f:fpu) ft0  <-- 3.0
       0     1746        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 4
       0     1747        M 0x8000070c addi    a2, a2, 1              #; a2  = 4, (wrb) a2  <-- 5
                         M                                           #; (f:fpu) ft3  <-- 4.0
       0     1748        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 5, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
       0     1749        M                                           #; (f:fpu) ft0  <-- 4.0
       0     1750        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 5
       0     1751        M 0x8000070c addi    a2, a2, 1              #; a2  = 5, (wrb) a2  <-- 6
                         M                                           #; (f:fpu) ft3  <-- 5.0
       0     1752        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 6, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
       0     1753        M                                           #; (f:fpu) ft0  <-- 5.0
       0     1754        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 6
       0     1755        M 0x8000070c addi    a2, a2, 1              #; a2  = 6, (wrb) a2  <-- 7
                         M                                           #; (f:fpu) ft3  <-- 6.0
       0     1756        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 7, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
       0     1757        M                                           #; (f:fpu) ft0  <-- 6.0
       0     1758        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 7
       0     1759        M 0x8000070c addi    a2, a2, 1              #; a2  = 7, (wrb) a2  <-- 8
                         M                                           #; (f:fpu) ft3  <-- 7.0
       0     1760        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 8, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
       0     1761        M                                           #; (f:fpu) ft0  <-- 7.0
       0     1762        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 8
       0     1763        M 0x8000070c addi    a2, a2, 1              #; a2  = 8, (wrb) a2  <-- 9
                         M                                           #; (f:fpu) ft3  <-- 8.0
       0     1764        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 9, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
       0     1765        M                                           #; (f:fpu) ft0  <-- 8.0
       0     1766        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 9
       0     1767        M 0x8000070c addi    a2, a2, 1              #; a2  = 9, (wrb) a2  <-- 10
                         M                                           #; (f:fpu) ft3  <-- 9.0
       0     1768        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 10, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
       0     1769        M                                           #; (f:fpu) ft0  <-- 9.0
       0     1770        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 10
       0     1771        M 0x8000070c addi    a2, a2, 1              #; a2  = 10, (wrb) a2  <-- 11
                         M                                           #; (f:fpu) ft3  <-- 10.0
       0     1772        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 11, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 10.0, ft3  = 10.0
       0     1773        M                                           #; (f:fpu) ft0  <-- 10.0
       0     1774        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 11
       0     1775        M 0x8000070c addi    a2, a2, 1              #; a2  = 11, (wrb) a2  <-- 12
                         M                                           #; (f:fpu) ft3  <-- 11.0
       0     1776        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 12, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 11.0, ft3  = 11.0
       0     1777        M                                           #; (f:fpu) ft0  <-- 11.0
       0     1778        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 12
       0     1779        M 0x8000070c addi    a2, a2, 1              #; a2  = 12, (wrb) a2  <-- 13
                         M                                           #; (f:fpu) ft3  <-- 12.0
       0     1780        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 13, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 12.0, ft3  = 12.0
       0     1781        M                                           #; (f:fpu) ft0  <-- 12.0
       0     1782        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 13
       0     1783        M 0x8000070c addi    a2, a2, 1              #; a2  = 13, (wrb) a2  <-- 14
                         M                                           #; (f:fpu) ft3  <-- 13.0
       0     1784        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 14, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 13.0, ft3  = 13.0
       0     1785        M                                           #; (f:fpu) ft0  <-- 13.0
       0     1786        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 14
       0     1787        M 0x8000070c addi    a2, a2, 1              #; a2  = 14, (wrb) a2  <-- 15
                         M                                           #; (f:fpu) ft3  <-- 14.0
       0     1788        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 15, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 14.0, ft3  = 14.0
       0     1789        M                                           #; (f:fpu) ft0  <-- 14.0
       0     1790        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 15
       0     1791        M 0x8000070c addi    a2, a2, 1              #; a2  = 15, (wrb) a2  <-- 16
                         M                                           #; (f:fpu) ft3  <-- 15.0
       0     1792        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 16, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 15.0, ft3  = 15.0
       0     1793        M                                           #; (f:fpu) ft0  <-- 15.0
       0     1794        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 16
       0     1795        M 0x8000070c addi    a2, a2, 1              #; a2  = 16, (wrb) a2  <-- 17
                         M                                           #; (f:fpu) ft3  <-- 16.0
       0     1796        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 17, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 16.0, ft3  = 16.0
       0     1797        M                                           #; (f:fpu) ft0  <-- 16.0
       0     1798        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 17
       0     1799        M 0x8000070c addi    a2, a2, 1              #; a2  = 17, (wrb) a2  <-- 18
                         M                                           #; (f:fpu) ft3  <-- 17.0
       0     1800        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 18, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 17.0, ft3  = 17.0
       0     1801        M                                           #; (f:fpu) ft0  <-- 17.0
       0     1802        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 18
       0     1803        M 0x8000070c addi    a2, a2, 1              #; a2  = 18, (wrb) a2  <-- 19
                         M                                           #; (f:fpu) ft3  <-- 18.0
       0     1804        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 19, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 18.0, ft3  = 18.0
       0     1805        M                                           #; (f:fpu) ft0  <-- 18.0
       0     1806        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 19
       0     1807        M 0x8000070c addi    a2, a2, 1              #; a2  = 19, (wrb) a2  <-- 20
                         M                                           #; (f:fpu) ft3  <-- 19.0
       0     1808        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 20, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 19.0, ft3  = 19.0
       0     1809        M                                           #; (f:fpu) ft0  <-- 19.0
       0     1810        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 20
       0     1811        M 0x8000070c addi    a2, a2, 1              #; a2  = 20, (wrb) a2  <-- 21
                         M                                           #; (f:fpu) ft3  <-- 20.0
       0     1812        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 21, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 20.0, ft3  = 20.0
       0     1813        M                                           #; (f:fpu) ft0  <-- 20.0
       0     1814        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 21
       0     1815        M 0x8000070c addi    a2, a2, 1              #; a2  = 21, (wrb) a2  <-- 22
                         M                                           #; (f:fpu) ft3  <-- 21.0
       0     1816        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 22, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 21.0, ft3  = 21.0
       0     1817        M                                           #; (f:fpu) ft0  <-- 21.0
       0     1818        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 22
       0     1819        M 0x8000070c addi    a2, a2, 1              #; a2  = 22, (wrb) a2  <-- 23
                         M                                           #; (f:fpu) ft3  <-- 22.0
       0     1820        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 23, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 22.0, ft3  = 22.0
       0     1821        M                                           #; (f:fpu) ft0  <-- 22.0
       0     1822        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 23
       0     1823        M 0x8000070c addi    a2, a2, 1              #; a2  = 23, (wrb) a2  <-- 24
                         M                                           #; (f:fpu) ft3  <-- 23.0
       0     1824        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 24, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 23.0, ft3  = 23.0
       0     1825        M                                           #; (f:fpu) ft0  <-- 23.0
       0     1826        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 24
       0     1827        M 0x8000070c addi    a2, a2, 1              #; a2  = 24, (wrb) a2  <-- 25
                         M                                           #; (f:fpu) ft3  <-- 24.0
       0     1828        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 25, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 24.0, ft3  = 24.0
       0     1829        M                                           #; (f:fpu) ft0  <-- 24.0
       0     1830        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 25
       0     1831        M 0x8000070c addi    a2, a2, 1              #; a2  = 25, (wrb) a2  <-- 26
                         M                                           #; (f:fpu) ft3  <-- 25.0
       0     1832        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 26, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 25.0, ft3  = 25.0
       0     1833        M                                           #; (f:fpu) ft0  <-- 25.0
       0     1834        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 26
       0     1835        M 0x8000070c addi    a2, a2, 1              #; a2  = 26, (wrb) a2  <-- 27
                         M                                           #; (f:fpu) ft3  <-- 26.0
       0     1836        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 27, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 26.0, ft3  = 26.0
       0     1837        M                                           #; (f:fpu) ft0  <-- 26.0
       0     1838        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 27
       0     1839        M 0x8000070c addi    a2, a2, 1              #; a2  = 27, (wrb) a2  <-- 28
                         M                                           #; (f:fpu) ft3  <-- 27.0
       0     1840        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 28, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 27.0, ft3  = 27.0
       0     1841        M                                           #; (f:fpu) ft0  <-- 27.0
       0     1842        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 28
       0     1843        M 0x8000070c addi    a2, a2, 1              #; a2  = 28, (wrb) a2  <-- 29
                         M                                           #; (f:fpu) ft3  <-- 28.0
       0     1844        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 29, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 28.0, ft3  = 28.0
       0     1845        M                                           #; (f:fpu) ft0  <-- 28.0
       0     1846        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 29
       0     1847        M 0x8000070c addi    a2, a2, 1              #; a2  = 29, (wrb) a2  <-- 30
                         M                                           #; (f:fpu) ft3  <-- 29.0
       0     1848        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 30, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 29.0, ft3  = 29.0
       0     1849        M                                           #; (f:fpu) ft0  <-- 29.0
       0     1850        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 30
       0     1851        M 0x8000070c addi    a2, a2, 1              #; a2  = 30, (wrb) a2  <-- 31
                         M                                           #; (f:fpu) ft3  <-- 30.0
       0     1852        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 31, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 30.0, ft3  = 30.0
       0     1853        M                                           #; (f:fpu) ft0  <-- 30.0
       0     1854        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 31
       0     1855        M 0x8000070c addi    a2, a2, 1              #; a2  = 31, (wrb) a2  <-- 32
                         M                                           #; (f:fpu) ft3  <-- 31.0
       0     1856        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 32, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 31.0, ft3  = 31.0
       0     1857        M                                           #; (f:fpu) ft0  <-- 31.0
       0     1858        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 32
       0     1859        M 0x8000070c addi    a2, a2, 1              #; a2  = 32, (wrb) a2  <-- 33
                         M                                           #; (f:fpu) ft3  <-- 32.0
       0     1860        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 33, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 32.0, ft3  = 32.0
       0     1861        M                                           #; (f:fpu) ft0  <-- 32.0
       0     1862        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 33
       0     1863        M 0x8000070c addi    a2, a2, 1              #; a2  = 33, (wrb) a2  <-- 34
                         M                                           #; (f:fpu) ft3  <-- 33.0
       0     1864        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 34, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 33.0, ft3  = 33.0
       0     1865        M                                           #; (f:fpu) ft0  <-- 33.0
       0     1866        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 34
       0     1867        M 0x8000070c addi    a2, a2, 1              #; a2  = 34, (wrb) a2  <-- 35
                         M                                           #; (f:fpu) ft3  <-- 34.0
       0     1868        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 35, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 34.0, ft3  = 34.0
       0     1869        M                                           #; (f:fpu) ft0  <-- 34.0
       0     1870        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 35
       0     1871        M 0x8000070c addi    a2, a2, 1              #; a2  = 35, (wrb) a2  <-- 36
                         M                                           #; (f:fpu) ft3  <-- 35.0
       0     1872        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 36, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 35.0, ft3  = 35.0
       0     1873        M                                           #; (f:fpu) ft0  <-- 35.0
       0     1874        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 36
       0     1875        M 0x8000070c addi    a2, a2, 1              #; a2  = 36, (wrb) a2  <-- 37
                         M                                           #; (f:fpu) ft3  <-- 36.0
       0     1876        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 37, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 36.0, ft3  = 36.0
       0     1877        M                                           #; (f:fpu) ft0  <-- 36.0
       0     1878        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 37
       0     1879        M 0x8000070c addi    a2, a2, 1              #; a2  = 37, (wrb) a2  <-- 38
                         M                                           #; (f:fpu) ft3  <-- 37.0
       0     1880        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 38, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 37.0, ft3  = 37.0
       0     1881        M                                           #; (f:fpu) ft0  <-- 37.0
       0     1882        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 38
       0     1883        M 0x8000070c addi    a2, a2, 1              #; a2  = 38, (wrb) a2  <-- 39
                         M                                           #; (f:fpu) ft3  <-- 38.0
       0     1884        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 39, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 38.0, ft3  = 38.0
       0     1885        M                                           #; (f:fpu) ft0  <-- 38.0
       0     1886        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 39
       0     1887        M 0x8000070c addi    a2, a2, 1              #; a2  = 39, (wrb) a2  <-- 40
                         M                                           #; (f:fpu) ft3  <-- 39.0
       0     1888        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 40, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 39.0, ft3  = 39.0
       0     1889        M                                           #; (f:fpu) ft0  <-- 39.0
       0     1890        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 40
       0     1891        M 0x8000070c addi    a2, a2, 1              #; a2  = 40, (wrb) a2  <-- 41
                         M                                           #; (f:fpu) ft3  <-- 40.0
       0     1892        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 41, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 40.0, ft3  = 40.0
       0     1893        M                                           #; (f:fpu) ft0  <-- 40.0
       0     1894        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 41
       0     1895        M 0x8000070c addi    a2, a2, 1              #; a2  = 41, (wrb) a2  <-- 42
                         M                                           #; (f:fpu) ft3  <-- 41.0
       0     1896        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 42, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 41.0, ft3  = 41.0
       0     1897        M                                           #; (f:fpu) ft0  <-- 41.0
       0     1898        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 42
       0     1899        M 0x8000070c addi    a2, a2, 1              #; a2  = 42, (wrb) a2  <-- 43
                         M                                           #; (f:fpu) ft3  <-- 42.0
       0     1900        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 43, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 42.0, ft3  = 42.0
       0     1901        M                                           #; (f:fpu) ft0  <-- 42.0
       0     1902        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 43
       0     1903        M 0x8000070c addi    a2, a2, 1              #; a2  = 43, (wrb) a2  <-- 44
                         M                                           #; (f:fpu) ft3  <-- 43.0
       0     1904        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 44, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 43.0, ft3  = 43.0
       0     1905        M                                           #; (f:fpu) ft0  <-- 43.0
       0     1906        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 44
       0     1907        M 0x8000070c addi    a2, a2, 1              #; a2  = 44, (wrb) a2  <-- 45
                         M                                           #; (f:fpu) ft3  <-- 44.0
       0     1908        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 45, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 44.0, ft3  = 44.0
       0     1909        M                                           #; (f:fpu) ft0  <-- 44.0
       0     1910        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 45
       0     1911        M 0x8000070c addi    a2, a2, 1              #; a2  = 45, (wrb) a2  <-- 46
                         M                                           #; (f:fpu) ft3  <-- 45.0
       0     1912        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 46, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 45.0, ft3  = 45.0
       0     1913        M                                           #; (f:fpu) ft0  <-- 45.0
       0     1914        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 46
       0     1915        M 0x8000070c addi    a2, a2, 1              #; a2  = 46, (wrb) a2  <-- 47
                         M                                           #; (f:fpu) ft3  <-- 46.0
       0     1916        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 47, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 46.0, ft3  = 46.0
       0     1917        M                                           #; (f:fpu) ft0  <-- 46.0
       0     1918        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 47
       0     1919        M 0x8000070c addi    a2, a2, 1              #; a2  = 47, (wrb) a2  <-- 48
                         M                                           #; (f:fpu) ft3  <-- 47.0
       0     1920        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 48, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 47.0, ft3  = 47.0
       0     1921        M                                           #; (f:fpu) ft0  <-- 47.0
       0     1922        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 48
       0     1923        M 0x8000070c addi    a2, a2, 1              #; a2  = 48, (wrb) a2  <-- 49
                         M                                           #; (f:fpu) ft3  <-- 48.0
       0     1924        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 49, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 48.0, ft3  = 48.0
       0     1925        M                                           #; (f:fpu) ft0  <-- 48.0
       0     1926        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 49
       0     1927        M 0x8000070c addi    a2, a2, 1              #; a2  = 49, (wrb) a2  <-- 50
                         M                                           #; (f:fpu) ft3  <-- 49.0
       0     1928        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 50, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 49.0, ft3  = 49.0
       0     1929        M                                           #; (f:fpu) ft0  <-- 49.0
       0     1930        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 50
       0     1931        M 0x8000070c addi    a2, a2, 1              #; a2  = 50, (wrb) a2  <-- 51
                         M                                           #; (f:fpu) ft3  <-- 50.0
       0     1932        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 51, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 50.0, ft3  = 50.0
       0     1933        M                                           #; (f:fpu) ft0  <-- 50.0
       0     1934        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 51
       0     1935        M 0x8000070c addi    a2, a2, 1              #; a2  = 51, (wrb) a2  <-- 52
                         M                                           #; (f:fpu) ft3  <-- 51.0
       0     1936        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 52, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 51.0, ft3  = 51.0
       0     1937        M                                           #; (f:fpu) ft0  <-- 51.0
       0     1938        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 52
       0     1939        M 0x8000070c addi    a2, a2, 1              #; a2  = 52, (wrb) a2  <-- 53
                         M                                           #; (f:fpu) ft3  <-- 52.0
       0     1940        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 53, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 52.0, ft3  = 52.0
       0     1941        M                                           #; (f:fpu) ft0  <-- 52.0
       0     1942        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 53
       0     1943        M 0x8000070c addi    a2, a2, 1              #; a2  = 53, (wrb) a2  <-- 54
                         M                                           #; (f:fpu) ft3  <-- 53.0
       0     1944        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 54, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 53.0, ft3  = 53.0
       0     1945        M                                           #; (f:fpu) ft0  <-- 53.0
       0     1946        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 54
       0     1947        M 0x8000070c addi    a2, a2, 1              #; a2  = 54, (wrb) a2  <-- 55
                         M                                           #; (f:fpu) ft3  <-- 54.0
       0     1948        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 55, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 54.0, ft3  = 54.0
       0     1949        M                                           #; (f:fpu) ft0  <-- 54.0
       0     1950        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 55
       0     1951        M 0x8000070c addi    a2, a2, 1              #; a2  = 55, (wrb) a2  <-- 56
                         M                                           #; (f:fpu) ft3  <-- 55.0
       0     1952        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 56, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 55.0, ft3  = 55.0
       0     1953        M                                           #; (f:fpu) ft0  <-- 55.0
       0     1954        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 56
       0     1955        M 0x8000070c addi    a2, a2, 1              #; a2  = 56, (wrb) a2  <-- 57
                         M                                           #; (f:fpu) ft3  <-- 56.0
       0     1956        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 57, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 56.0, ft3  = 56.0
       0     1957        M                                           #; (f:fpu) ft0  <-- 56.0
       0     1958        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 57
       0     1959        M 0x8000070c addi    a2, a2, 1              #; a2  = 57, (wrb) a2  <-- 58
                         M                                           #; (f:fpu) ft3  <-- 57.0
       0     1960        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 58, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 57.0, ft3  = 57.0
       0     1961        M                                           #; (f:fpu) ft0  <-- 57.0
       0     1962        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 58
       0     1963        M 0x8000070c addi    a2, a2, 1              #; a2  = 58, (wrb) a2  <-- 59
                         M                                           #; (f:fpu) ft3  <-- 58.0
       0     1964        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 59, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 58.0, ft3  = 58.0
       0     1965        M                                           #; (f:fpu) ft0  <-- 58.0
       0     1966        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 59
       0     1967        M 0x8000070c addi    a2, a2, 1              #; a2  = 59, (wrb) a2  <-- 60
                         M                                           #; (f:fpu) ft3  <-- 59.0
       0     1968        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 60, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 59.0, ft3  = 59.0
       0     1969        M                                           #; (f:fpu) ft0  <-- 59.0
       0     1970        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 60
       0     1971        M 0x8000070c addi    a2, a2, 1              #; a2  = 60, (wrb) a2  <-- 61
                         M                                           #; (f:fpu) ft3  <-- 60.0
       0     1972        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 61, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 60.0, ft3  = 60.0
       0     1973        M                                           #; (f:fpu) ft0  <-- 60.0
       0     1974        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 61
       0     1975        M 0x8000070c addi    a2, a2, 1              #; a2  = 61, (wrb) a2  <-- 62
                         M                                           #; (f:fpu) ft3  <-- 61.0
       0     1976        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 62, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 61.0, ft3  = 61.0
       0     1977        M                                           #; (f:fpu) ft0  <-- 61.0
       0     1978        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 62
       0     1979        M 0x8000070c addi    a2, a2, 1              #; a2  = 62, (wrb) a2  <-- 63
                         M                                           #; (f:fpu) ft3  <-- 62.0
       0     1980        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 63, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 62.0, ft3  = 62.0
       0     1981        M                                           #; (f:fpu) ft0  <-- 62.0
       0     1982        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 63
       0     1983        M 0x8000070c addi    a2, a2, 1              #; a2  = 63, (wrb) a2  <-- 64
                         M                                           #; (f:fpu) ft3  <-- 63.0
       0     1984        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 64, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 63.0, ft3  = 63.0
       0     1985        M                                           #; (f:fpu) ft0  <-- 63.0
       0     1986        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 64
       0     1987        M 0x8000070c addi    a2, a2, 1              #; a2  = 64, (wrb) a2  <-- 65
                         M                                           #; (f:fpu) ft3  <-- 64.0
       0     1988        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 65, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 64.0, ft3  = 64.0
       0     1989        M                                           #; (f:fpu) ft0  <-- 64.0
       0     1990        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 65
       0     1991        M 0x8000070c addi    a2, a2, 1              #; a2  = 65, (wrb) a2  <-- 66
                         M                                           #; (f:fpu) ft3  <-- 65.0
       0     1992        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 66, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 65.0, ft3  = 65.0
       0     1993        M                                           #; (f:fpu) ft0  <-- 65.0
       0     1994        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 66
       0     1995        M 0x8000070c addi    a2, a2, 1              #; a2  = 66, (wrb) a2  <-- 67
                         M                                           #; (f:fpu) ft3  <-- 66.0
       0     1996        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 67, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 66.0, ft3  = 66.0
       0     1997        M                                           #; (f:fpu) ft0  <-- 66.0
       0     1998        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 67
       0     1999        M 0x8000070c addi    a2, a2, 1              #; a2  = 67, (wrb) a2  <-- 68
                         M                                           #; (f:fpu) ft3  <-- 67.0
       0     2000        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 68, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 67.0, ft3  = 67.0
       0     2001        M                                           #; (f:fpu) ft0  <-- 67.0
       0     2002        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 68
       0     2003        M 0x8000070c addi    a2, a2, 1              #; a2  = 68, (wrb) a2  <-- 69
                         M                                           #; (f:fpu) ft3  <-- 68.0
       0     2004        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 69, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 68.0, ft3  = 68.0
       0     2005        M                                           #; (f:fpu) ft0  <-- 68.0
       0     2006        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 69
       0     2007        M 0x8000070c addi    a2, a2, 1              #; a2  = 69, (wrb) a2  <-- 70
                         M                                           #; (f:fpu) ft3  <-- 69.0
       0     2008        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 70, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 69.0, ft3  = 69.0
       0     2009        M                                           #; (f:fpu) ft0  <-- 69.0
       0     2010        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 70
       0     2011        M 0x8000070c addi    a2, a2, 1              #; a2  = 70, (wrb) a2  <-- 71
                         M                                           #; (f:fpu) ft3  <-- 70.0
       0     2012        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 71, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 70.0, ft3  = 70.0
       0     2013        M                                           #; (f:fpu) ft0  <-- 70.0
       0     2014        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 71
       0     2015        M 0x8000070c addi    a2, a2, 1              #; a2  = 71, (wrb) a2  <-- 72
                         M                                           #; (f:fpu) ft3  <-- 71.0
       0     2016        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 72, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 71.0, ft3  = 71.0
       0     2017        M                                           #; (f:fpu) ft0  <-- 71.0
       0     2018        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 72
       0     2019        M 0x8000070c addi    a2, a2, 1              #; a2  = 72, (wrb) a2  <-- 73
                         M                                           #; (f:fpu) ft3  <-- 72.0
       0     2020        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 73, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 72.0, ft3  = 72.0
       0     2021        M                                           #; (f:fpu) ft0  <-- 72.0
       0     2022        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 73
       0     2023        M 0x8000070c addi    a2, a2, 1              #; a2  = 73, (wrb) a2  <-- 74
                         M                                           #; (f:fpu) ft3  <-- 73.0
       0     2024        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 74, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 73.0, ft3  = 73.0
       0     2025        M                                           #; (f:fpu) ft0  <-- 73.0
       0     2026        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 74
       0     2027        M 0x8000070c addi    a2, a2, 1              #; a2  = 74, (wrb) a2  <-- 75
                         M                                           #; (f:fpu) ft3  <-- 74.0
       0     2028        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 75, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 74.0, ft3  = 74.0
       0     2029        M                                           #; (f:fpu) ft0  <-- 74.0
       0     2030        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 75
       0     2031        M 0x8000070c addi    a2, a2, 1              #; a2  = 75, (wrb) a2  <-- 76
                         M                                           #; (f:fpu) ft3  <-- 75.0
       0     2032        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 76, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 75.0, ft3  = 75.0
       0     2033        M                                           #; (f:fpu) ft0  <-- 75.0
       0     2034        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 76
       0     2035        M 0x8000070c addi    a2, a2, 1              #; a2  = 76, (wrb) a2  <-- 77
                         M                                           #; (f:fpu) ft3  <-- 76.0
       0     2036        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 77, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 76.0, ft3  = 76.0
       0     2037        M                                           #; (f:fpu) ft0  <-- 76.0
       0     2038        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 77
       0     2039        M 0x8000070c addi    a2, a2, 1              #; a2  = 77, (wrb) a2  <-- 78
                         M                                           #; (f:fpu) ft3  <-- 77.0
       0     2040        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 78, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 77.0, ft3  = 77.0
       0     2041        M                                           #; (f:fpu) ft0  <-- 77.0
       0     2042        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 78
       0     2043        M 0x8000070c addi    a2, a2, 1              #; a2  = 78, (wrb) a2  <-- 79
                         M                                           #; (f:fpu) ft3  <-- 78.0
       0     2044        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 79, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 78.0, ft3  = 78.0
       0     2045        M                                           #; (f:fpu) ft0  <-- 78.0
       0     2046        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 79
       0     2047        M 0x8000070c addi    a2, a2, 1              #; a2  = 79, (wrb) a2  <-- 80
                         M                                           #; (f:fpu) ft3  <-- 79.0
       0     2048        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 80, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 79.0, ft3  = 79.0
       0     2049        M                                           #; (f:fpu) ft0  <-- 79.0
       0     2050        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 80
       0     2051        M 0x8000070c addi    a2, a2, 1              #; a2  = 80, (wrb) a2  <-- 81
                         M                                           #; (f:fpu) ft3  <-- 80.0
       0     2052        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 81, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 80.0, ft3  = 80.0
       0     2053        M                                           #; (f:fpu) ft0  <-- 80.0
       0     2054        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 81
       0     2055        M 0x8000070c addi    a2, a2, 1              #; a2  = 81, (wrb) a2  <-- 82
                         M                                           #; (f:fpu) ft3  <-- 81.0
       0     2056        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 82, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 81.0, ft3  = 81.0
       0     2057        M                                           #; (f:fpu) ft0  <-- 81.0
       0     2058        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 82
       0     2059        M 0x8000070c addi    a2, a2, 1              #; a2  = 82, (wrb) a2  <-- 83
                         M                                           #; (f:fpu) ft3  <-- 82.0
       0     2060        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 83, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 82.0, ft3  = 82.0
       0     2061        M                                           #; (f:fpu) ft0  <-- 82.0
       0     2062        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 83
       0     2063        M 0x8000070c addi    a2, a2, 1              #; a2  = 83, (wrb) a2  <-- 84
                         M                                           #; (f:fpu) ft3  <-- 83.0
       0     2064        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 84, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 83.0, ft3  = 83.0
       0     2065        M                                           #; (f:fpu) ft0  <-- 83.0
       0     2066        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 84
       0     2067        M 0x8000070c addi    a2, a2, 1              #; a2  = 84, (wrb) a2  <-- 85
                         M                                           #; (f:fpu) ft3  <-- 84.0
       0     2068        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 85, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 84.0, ft3  = 84.0
       0     2069        M                                           #; (f:fpu) ft0  <-- 84.0
       0     2070        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 85
       0     2071        M 0x8000070c addi    a2, a2, 1              #; a2  = 85, (wrb) a2  <-- 86
                         M                                           #; (f:fpu) ft3  <-- 85.0
       0     2072        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 86, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 85.0, ft3  = 85.0
       0     2073        M                                           #; (f:fpu) ft0  <-- 85.0
       0     2074        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 86
       0     2075        M 0x8000070c addi    a2, a2, 1              #; a2  = 86, (wrb) a2  <-- 87
                         M                                           #; (f:fpu) ft3  <-- 86.0
       0     2076        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 87, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 86.0, ft3  = 86.0
       0     2077        M                                           #; (f:fpu) ft0  <-- 86.0
       0     2078        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 87
       0     2079        M 0x8000070c addi    a2, a2, 1              #; a2  = 87, (wrb) a2  <-- 88
                         M                                           #; (f:fpu) ft3  <-- 87.0
       0     2080        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 88, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 87.0, ft3  = 87.0
       0     2081        M                                           #; (f:fpu) ft0  <-- 87.0
       0     2082        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 88
       0     2083        M 0x8000070c addi    a2, a2, 1              #; a2  = 88, (wrb) a2  <-- 89
                         M                                           #; (f:fpu) ft3  <-- 88.0
       0     2084        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 89, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 88.0, ft3  = 88.0
       0     2085        M                                           #; (f:fpu) ft0  <-- 88.0
       0     2086        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 89
       0     2087        M 0x8000070c addi    a2, a2, 1              #; a2  = 89, (wrb) a2  <-- 90
                         M                                           #; (f:fpu) ft3  <-- 89.0
       0     2088        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 90, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 89.0, ft3  = 89.0
       0     2089        M                                           #; (f:fpu) ft0  <-- 89.0
       0     2090        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 90
       0     2091        M 0x8000070c addi    a2, a2, 1              #; a2  = 90, (wrb) a2  <-- 91
                         M                                           #; (f:fpu) ft3  <-- 90.0
       0     2092        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 91, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 90.0, ft3  = 90.0
       0     2093        M                                           #; (f:fpu) ft0  <-- 90.0
       0     2094        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 91
       0     2095        M 0x8000070c addi    a2, a2, 1              #; a2  = 91, (wrb) a2  <-- 92
                         M                                           #; (f:fpu) ft3  <-- 91.0
       0     2096        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 92, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 91.0, ft3  = 91.0
       0     2097        M                                           #; (f:fpu) ft0  <-- 91.0
       0     2098        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 92
       0     2099        M 0x8000070c addi    a2, a2, 1              #; a2  = 92, (wrb) a2  <-- 93
                         M                                           #; (f:fpu) ft3  <-- 92.0
       0     2100        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 93, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 92.0, ft3  = 92.0
       0     2101        M                                           #; (f:fpu) ft0  <-- 92.0
       0     2102        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 93
       0     2103        M 0x8000070c addi    a2, a2, 1              #; a2  = 93, (wrb) a2  <-- 94
                         M                                           #; (f:fpu) ft3  <-- 93.0
       0     2104        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 94, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 93.0, ft3  = 93.0
       0     2105        M                                           #; (f:fpu) ft0  <-- 93.0
       0     2106        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 94
       0     2107        M 0x8000070c addi    a2, a2, 1              #; a2  = 94, (wrb) a2  <-- 95
                         M                                           #; (f:fpu) ft3  <-- 94.0
       0     2108        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 95, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 94.0, ft3  = 94.0
       0     2109        M                                           #; (f:fpu) ft0  <-- 94.0
       0     2110        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 95
       0     2111        M 0x8000070c addi    a2, a2, 1              #; a2  = 95, (wrb) a2  <-- 96
                         M                                           #; (f:fpu) ft3  <-- 95.0
       0     2112        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 96, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 95.0, ft3  = 95.0
       0     2113        M                                           #; (f:fpu) ft0  <-- 95.0
       0     2114        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 96
       0     2115        M 0x8000070c addi    a2, a2, 1              #; a2  = 96, (wrb) a2  <-- 97
                         M                                           #; (f:fpu) ft3  <-- 96.0
       0     2116        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 97, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 96.0, ft3  = 96.0
       0     2117        M                                           #; (f:fpu) ft0  <-- 96.0
       0     2118        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 97
       0     2119        M 0x8000070c addi    a2, a2, 1              #; a2  = 97, (wrb) a2  <-- 98
                         M                                           #; (f:fpu) ft3  <-- 97.0
       0     2120        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 98, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 97.0, ft3  = 97.0
       0     2121        M                                           #; (f:fpu) ft0  <-- 97.0
       0     2122        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 98
       0     2123        M 0x8000070c addi    a2, a2, 1              #; a2  = 98, (wrb) a2  <-- 99
                         M                                           #; (f:fpu) ft3  <-- 98.0
       0     2124        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 99, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 98.0, ft3  = 98.0
       0     2125        M                                           #; (f:fpu) ft0  <-- 98.0
       0     2126        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 99
       0     2127        M 0x8000070c addi    a2, a2, 1              #; a2  = 99, (wrb) a2  <-- 100
                         M                                           #; (f:fpu) ft3  <-- 99.0
       0     2128        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 100, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 99.0, ft3  = 99.0
       0     2129        M                                           #; (f:fpu) ft0  <-- 99.0
       0     2130        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 100
       0     2131        M 0x8000070c addi    a2, a2, 1              #; a2  = 100, (wrb) a2  <-- 101
                         M                                           #; (f:fpu) ft3  <-- 100.0
       0     2132        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 101, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 100.0, ft3  = 100.0
       0     2133        M                                           #; (f:fpu) ft0  <-- 100.0
       0     2134        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 101
       0     2135        M 0x8000070c addi    a2, a2, 1              #; a2  = 101, (wrb) a2  <-- 102
                         M                                           #; (f:fpu) ft3  <-- 101.0
       0     2136        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 102, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 101.0, ft3  = 101.0
       0     2137        M                                           #; (f:fpu) ft0  <-- 101.0
       0     2138        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 102
       0     2139        M 0x8000070c addi    a2, a2, 1              #; a2  = 102, (wrb) a2  <-- 103
                         M                                           #; (f:fpu) ft3  <-- 102.0
       0     2140        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 103, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 102.0, ft3  = 102.0
       0     2141        M                                           #; (f:fpu) ft0  <-- 102.0
       0     2142        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 103
       0     2143        M 0x8000070c addi    a2, a2, 1              #; a2  = 103, (wrb) a2  <-- 104
                         M                                           #; (f:fpu) ft3  <-- 103.0
       0     2144        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 104, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 103.0, ft3  = 103.0
       0     2145        M                                           #; (f:fpu) ft0  <-- 103.0
       0     2146        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 104
       0     2147        M 0x8000070c addi    a2, a2, 1              #; a2  = 104, (wrb) a2  <-- 105
                         M                                           #; (f:fpu) ft3  <-- 104.0
       0     2148        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 105, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 104.0, ft3  = 104.0
       0     2149        M                                           #; (f:fpu) ft0  <-- 104.0
       0     2150        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 105
       0     2151        M 0x8000070c addi    a2, a2, 1              #; a2  = 105, (wrb) a2  <-- 106
                         M                                           #; (f:fpu) ft3  <-- 105.0
       0     2152        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 106, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 105.0, ft3  = 105.0
       0     2153        M                                           #; (f:fpu) ft0  <-- 105.0
       0     2154        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 106
       0     2155        M 0x8000070c addi    a2, a2, 1              #; a2  = 106, (wrb) a2  <-- 107
                         M                                           #; (f:fpu) ft3  <-- 106.0
       0     2156        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 107, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 106.0, ft3  = 106.0
       0     2157        M                                           #; (f:fpu) ft0  <-- 106.0
       0     2158        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 107
       0     2159        M 0x8000070c addi    a2, a2, 1              #; a2  = 107, (wrb) a2  <-- 108
                         M                                           #; (f:fpu) ft3  <-- 107.0
       0     2160        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 108, a3  = 109, taken, goto 0x80000704
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 107.0, ft3  = 107.0
       0     2161        M                                           #; (f:fpu) ft0  <-- 107.0
       0     2162        M 0x80000704 fcvt.d.wu ft3, a2              #; ac1  = 108
       0     2163        M 0x8000070c addi    a2, a2, 1              #; a2  = 108, (wrb) a2  <-- 109
                         M                                           #; (f:fpu) ft3  <-- 108.0
       0     2164        M 0x80000710 bne     a2, a3, pc - 12        #; a2  = 109, a3  = 109, not taken
                         M 0x80000708 fsgnj.d ft0, ft3, ft3          #; ft3  = 108.0, ft3  = 108.0
       0     2165        M                                           #; (f:fpu) ft0  <-- 108.0
       0     2166        M 0x80000718 beqz    a1, pc + 1028          #; a1  = 1, not taken
                         M 0x80000714 csrrci  a2, ssr, 1             #; 
       0     2167        M 0x8000071c li      a2, 8                  #; (wrb) a2  <-- 8
       0     2177        M 0x80000720 li      a1, 11                 #; (wrb) a1  <-- 11
       0     2178        M 0x80000724 li      a3, 64                 #; (wrb) a3  <-- 64
       0     2179        M 0x80000728 li      a4, 192                #; (wrb) a4  <-- 192
       0     2180        M 0x8000072c scfgw   a1, a3                 #; a1  = 11, a3  = 64
       0     2189        M 0x80000730 scfgw   a2, a4                 #; a2  = 8, a4  = 192
       0     2190        M 0x80000734 li      a3, 96                 #; (wrb) a3  <-- 96
       0     2191        M 0x80000738 li      a4, 224                #; (wrb) a4  <-- 224
       0     2192        M 0x8000073c scfgw   a2, a3                 #; a2  = 8, a3  = 96, (acc) ra  <-- 0x00d620ab
       0     2201        M 0x80000740 scfgw   a2, a4                 #; a2  = 8, a4  = 224
       0     2202        M 0x80000744 li      a3, 32                 #; (wrb) a3  <-- 32
       0     2203        M 0x80000748 scfgw   zero, a3               #; a3  = 32
       0     2204        M 0x8000074c scfgwi  a0, 800                #; a0  = 0x00100000
       0     2214        M 0x80000750 csrrsi  a3, ssr, 1             #; 
       0     2216        M 0x80000754 fsgnj.d ft3, ft0, ft0          #; ft0  = 1.0, ft0  = 1.0
       0     2217        M                                           #; (f:fpu) ft3  <-- 1.0
       0     2218        M 0x80000758 fadd.d  ft3, ft0, ft3          #; ft0  = 2.0, ft3  = 1.0
       0     2221        M                                           #; (f:fpu) ft3  <-- 3.0
       0     2222        M 0x8000075c fadd.d  ft3, ft3, ft0          #; ft3  = 3.0, ft0  = 3.0
       0     2225        M                                           #; (f:fpu) ft3  <-- 6.0
       0     2227        M 0x80000760 fadd.d  ft3, ft3, ft0          #; ft3  = 6.0, ft0  = 4.0
       0     2230        M                                           #; (f:fpu) ft3  <-- 10.0
       0     2231        M 0x80000764 fadd.d  ft3, ft3, ft0          #; ft3  = 10.0, ft0  = 5.0
       0     2234        M                                           #; (f:fpu) ft3  <-- 15.0
       0     2235        M 0x80000768 fadd.d  ft3, ft3, ft0          #; ft3  = 15.0, ft0  = 6.0
       0     2238        M                                           #; (f:fpu) ft3  <-- 21.0
       0     2239        M 0x8000076c fadd.d  ft3, ft3, ft0          #; ft3  = 21.0, ft0  = 7.0
       0     2242        M                                           #; (f:fpu) ft3  <-- 28.0
       0     2243        M 0x80000770 fadd.d  ft3, ft3, ft0          #; ft3  = 28.0, ft0  = 8.0
       0     2246        M                                           #; (f:fpu) ft3  <-- 36.0
       0     2247        M 0x80000774 fadd.d  ft3, ft3, ft0          #; ft3  = 36.0, ft0  = 9.0
       0     2250        M                                           #; (f:fpu) ft3  <-- 45.0
       0     2251        M 0x80000778 fadd.d  ft3, ft3, ft0          #; ft3  = 45.0, ft0  = 10.0
       0     2254        M                                           #; (f:fpu) ft3  <-- 55.0
       0     2255        M 0x8000077c fadd.d  ft3, ft3, ft0          #; ft3  = 55.0, ft0  = 11.0
       0     2258        M                                           #; (f:fpu) ft3  <-- 66.0
       0     2259        M 0x80000780 fadd.d  ft3, ft3, ft0          #; ft3  = 66.0, ft0  = 12.0
       0     2262        M                                           #; (f:fpu) ft3  <-- 78.0
       0     2263        M 0x80000784 fadd.d  ft3, ft3, ft0          #; ft3  = 78.0, ft0  = 13.0
       0     2266        M                                           #; (f:fpu) ft3  <-- 91.0
       0     2267        M 0x80000788 fadd.d  ft3, ft3, ft0          #; ft3  = 91.0, ft0  = 14.0
       0     2270        M                                           #; (f:fpu) ft3  <-- 105.0
       0     2271        M 0x8000078c fadd.d  ft3, ft3, ft0          #; ft3  = 105.0, ft0  = 15.0
       0     2274        M                                           #; (f:fpu) ft3  <-- 120.0
       0     2275        M 0x80000790 fadd.d  ft3, ft3, ft0          #; ft3  = 120.0, ft0  = 16.0
       0     2278        M                                           #; (f:fpu) ft3  <-- 136.0
       0     2279        M 0x80000794 fadd.d  ft3, ft3, ft0          #; ft3  = 136.0, ft0  = 17.0
       0     2282        M                                           #; (f:fpu) ft3  <-- 153.0
       0     2283        M 0x80000798 fadd.d  ft3, ft3, ft0          #; ft3  = 153.0, ft0  = 18.0
       0     2286        M                                           #; (f:fpu) ft3  <-- 171.0
       0     2287        M 0x8000079c fadd.d  ft3, ft3, ft0          #; ft3  = 171.0, ft0  = 19.0
       0     2290        M                                           #; (f:fpu) ft3  <-- 190.0
       0     2291        M 0x800007a0 fadd.d  ft3, ft3, ft0          #; ft3  = 190.0, ft0  = 20.0
       0     2294        M                                           #; (f:fpu) ft3  <-- 210.0
       0     2295        M 0x800007a4 fadd.d  ft3, ft3, ft0          #; ft3  = 210.0, ft0  = 21.0
       0     2298        M                                           #; (f:fpu) ft3  <-- 231.0
       0     2299        M 0x800007a8 fadd.d  ft3, ft3, ft0          #; ft3  = 231.0, ft0  = 22.0
       0     2302        M                                           #; (f:fpu) ft3  <-- 253.0
       0     2303        M 0x800007ac fadd.d  ft3, ft3, ft0          #; ft3  = 253.0, ft0  = 23.0
       0     2306        M                                           #; (f:fpu) ft3  <-- 276.0
       0     2307        M 0x800007b0 fadd.d  ft3, ft3, ft0          #; ft3  = 276.0, ft0  = 24.0
       0     2310        M                                           #; (f:fpu) ft3  <-- 300.0
       0     2311        M 0x800007b4 fadd.d  ft3, ft3, ft0          #; ft3  = 300.0, ft0  = 25.0
       0     2314        M                                           #; (f:fpu) ft3  <-- 325.0
       0     2315        M 0x800007b8 fadd.d  ft3, ft3, ft0          #; ft3  = 325.0, ft0  = 26.0
       0     2318        M                                           #; (f:fpu) ft3  <-- 351.0
       0     2319        M 0x800007bc fadd.d  ft3, ft3, ft0          #; ft3  = 351.0, ft0  = 27.0
       0     2322        M                                           #; (f:fpu) ft3  <-- 378.0
       0     2323        M 0x800007c0 fadd.d  ft3, ft3, ft0          #; ft3  = 378.0, ft0  = 28.0
       0     2326        M                                           #; (f:fpu) ft3  <-- 406.0
       0     2327        M 0x800007c4 fadd.d  ft3, ft3, ft0          #; ft3  = 406.0, ft0  = 29.0
       0     2330        M                                           #; (f:fpu) ft3  <-- 435.0
       0     2331        M 0x800007c8 fadd.d  ft3, ft3, ft0          #; ft3  = 435.0, ft0  = 30.0
       0     2334        M                                           #; (f:fpu) ft3  <-- 465.0
       0     2335        M 0x800007cc fadd.d  ft3, ft3, ft0          #; ft3  = 465.0, ft0  = 31.0
       0     2338        M                                           #; (f:fpu) ft3  <-- 496.0
       0     2339        M 0x800007d0 fadd.d  ft3, ft3, ft0          #; ft3  = 496.0, ft0  = 32.0
       0     2342        M                                           #; (f:fpu) ft3  <-- 528.0
       0     2343        M 0x800007d4 fadd.d  ft3, ft3, ft0          #; ft3  = 528.0, ft0  = 33.0
       0     2346        M                                           #; (f:fpu) ft3  <-- 561.0
       0     2347        M 0x800007d8 fadd.d  ft3, ft3, ft0          #; ft3  = 561.0, ft0  = 34.0
       0     2350        M                                           #; (f:fpu) ft3  <-- 595.0
       0     2351        M 0x800007dc fadd.d  ft3, ft3, ft0          #; ft3  = 595.0, ft0  = 35.0
       0     2354        M                                           #; (f:fpu) ft3  <-- 630.0
       0     2355        M 0x800007e0 fadd.d  ft3, ft3, ft0          #; ft3  = 630.0, ft0  = 36.0
       0     2358        M                                           #; (f:fpu) ft3  <-- 666.0
       0     2359        M 0x800007e4 fadd.d  ft3, ft3, ft0          #; ft3  = 666.0, ft0  = 37.0
       0     2362        M                                           #; (f:fpu) ft3  <-- 703.0
       0     2363        M 0x800007e8 fadd.d  ft3, ft3, ft0          #; ft3  = 703.0, ft0  = 38.0
       0     2366        M                                           #; (f:fpu) ft3  <-- 741.0
       0     2367        M 0x800007ec fadd.d  ft3, ft3, ft0          #; ft3  = 741.0, ft0  = 39.0
       0     2370        M                                           #; (f:fpu) ft3  <-- 780.0
       0     2371        M 0x800007f0 fadd.d  ft3, ft3, ft0          #; ft3  = 780.0, ft0  = 40.0
       0     2374        M                                           #; (f:fpu) ft3  <-- 820.0
       0     2375        M 0x800007f4 fadd.d  ft3, ft3, ft0          #; ft3  = 820.0, ft0  = 41.0
       0     2378        M                                           #; (f:fpu) ft3  <-- 861.0
       0     2379        M 0x800007f8 fadd.d  ft3, ft3, ft0          #; ft3  = 861.0, ft0  = 42.0
       0     2382        M                                           #; (f:fpu) ft3  <-- 903.0
       0     2383        M 0x800007fc fadd.d  ft3, ft3, ft0          #; ft3  = 903.0, ft0  = 43.0
       0     2386        M                                           #; (f:fpu) ft3  <-- 946.0
       0     2387        M 0x80000800 fadd.d  ft3, ft3, ft0          #; ft3  = 946.0, ft0  = 44.0
       0     2390        M                                           #; (f:fpu) ft3  <-- 990.0
       0     2391        M 0x80000804 fadd.d  ft3, ft3, ft0          #; ft3  = 990.0, ft0  = 45.0
       0     2394        M                                           #; (f:fpu) ft3  <-- 1035.0
       0     2395        M 0x80000808 fadd.d  ft3, ft3, ft0          #; ft3  = 1035.0, ft0  = 46.0
       0     2398        M                                           #; (f:fpu) ft3  <-- 1081.0
       0     2399        M 0x8000080c fadd.d  ft3, ft3, ft0          #; ft3  = 1081.0, ft0  = 47.0
       0     2402        M                                           #; (f:fpu) ft3  <-- 1128.0
       0     2403        M 0x80000810 fadd.d  ft3, ft3, ft0          #; ft3  = 1128.0, ft0  = 48.0
       0     2406        M                                           #; (f:fpu) ft3  <-- 1176.0
       0     2407        M 0x80000814 fadd.d  ft3, ft3, ft0          #; ft3  = 1176.0, ft0  = 49.0
       0     2410        M                                           #; (f:fpu) ft3  <-- 1225.0
       0     2411        M 0x80000818 fadd.d  ft3, ft3, ft0          #; ft3  = 1225.0, ft0  = 50.0
       0     2414        M                                           #; (f:fpu) ft3  <-- 1275.0
       0     2415        M 0x8000081c fadd.d  ft3, ft3, ft0          #; ft3  = 1275.0, ft0  = 51.0
       0     2418        M                                           #; (f:fpu) ft3  <-- 1326.0
       0     2419        M 0x80000820 fadd.d  ft3, ft3, ft0          #; ft3  = 1326.0, ft0  = 52.0
       0     2422        M                                           #; (f:fpu) ft3  <-- 1378.0
       0     2423        M 0x80000824 fadd.d  ft3, ft3, ft0          #; ft3  = 1378.0, ft0  = 53.0
       0     2426        M                                           #; (f:fpu) ft3  <-- 1431.0
       0     2427        M 0x80000828 fadd.d  ft3, ft3, ft0          #; ft3  = 1431.0, ft0  = 54.0
       0     2430        M                                           #; (f:fpu) ft3  <-- 1485.0
       0     2431        M 0x8000082c fadd.d  ft3, ft3, ft0          #; ft3  = 1485.0, ft0  = 55.0
       0     2434        M                                           #; (f:fpu) ft3  <-- 1540.0
       0     2435        M 0x80000830 fadd.d  ft3, ft3, ft0          #; ft3  = 1540.0, ft0  = 56.0
       0     2438        M                                           #; (f:fpu) ft3  <-- 1596.0
       0     2439        M 0x80000834 fadd.d  ft3, ft3, ft0          #; ft3  = 1596.0, ft0  = 57.0
       0     2442        M                                           #; (f:fpu) ft3  <-- 1653.0
       0     2443        M 0x80000838 fadd.d  ft3, ft3, ft0          #; ft3  = 1653.0, ft0  = 58.0
       0     2446        M                                           #; (f:fpu) ft3  <-- 1711.0
       0     2447        M 0x8000083c fadd.d  ft3, ft3, ft0          #; ft3  = 1711.0, ft0  = 59.0
       0     2450        M                                           #; (f:fpu) ft3  <-- 1770.0
       0     2451        M 0x80000840 fadd.d  ft3, ft3, ft0          #; ft3  = 1770.0, ft0  = 60.0
       0     2454        M                                           #; (f:fpu) ft3  <-- 1830.0
       0     2455        M 0x80000844 fadd.d  ft3, ft3, ft0          #; ft3  = 1830.0, ft0  = 61.0
       0     2458        M                                           #; (f:fpu) ft3  <-- 1891.0
       0     2459        M 0x80000848 fadd.d  ft3, ft3, ft0          #; ft3  = 1891.0, ft0  = 62.0
       0     2462        M                                           #; (f:fpu) ft3  <-- 1953.0
       0     2463        M 0x8000084c fadd.d  ft3, ft3, ft0          #; ft3  = 1953.0, ft0  = 63.0
       0     2466        M                                           #; (f:fpu) ft3  <-- 2016.0
       0     2467        M 0x80000850 fadd.d  ft3, ft3, ft0          #; ft3  = 2016.0, ft0  = 64.0
       0     2470        M                                           #; (f:fpu) ft3  <-- 2080.0
       0     2471        M 0x80000854 fadd.d  ft3, ft3, ft0          #; ft3  = 2080.0, ft0  = 65.0
       0     2474        M                                           #; (f:fpu) ft3  <-- 2145.0
       0     2475        M 0x80000858 fadd.d  ft3, ft3, ft0          #; ft3  = 2145.0, ft0  = 66.0
       0     2478        M                                           #; (f:fpu) ft3  <-- 2211.0
       0     2479        M 0x8000085c fadd.d  ft3, ft3, ft0          #; ft3  = 2211.0, ft0  = 67.0
       0     2482        M                                           #; (f:fpu) ft3  <-- 2278.0
       0     2483        M 0x80000860 fadd.d  ft3, ft3, ft0          #; ft3  = 2278.0, ft0  = 68.0
       0     2486        M                                           #; (f:fpu) ft3  <-- 2346.0
       0     2487        M 0x80000864 fadd.d  ft3, ft3, ft0          #; ft3  = 2346.0, ft0  = 69.0
       0     2490        M                                           #; (f:fpu) ft3  <-- 2415.0
       0     2491        M 0x80000868 fadd.d  ft3, ft3, ft0          #; ft3  = 2415.0, ft0  = 70.0
       0     2494        M                                           #; (f:fpu) ft3  <-- 2485.0
       0     2495        M 0x8000086c fadd.d  ft3, ft3, ft0          #; ft3  = 2485.0, ft0  = 71.0
       0     2498        M                                           #; (f:fpu) ft3  <-- 2556.0
       0     2499        M 0x80000870 fadd.d  ft3, ft3, ft0          #; ft3  = 2556.0, ft0  = 72.0
       0     2502        M                                           #; (f:fpu) ft3  <-- 2628.0
       0     2503        M 0x80000874 fadd.d  ft3, ft3, ft0          #; ft3  = 2628.0, ft0  = 73.0
       0     2506        M                                           #; (f:fpu) ft3  <-- 2701.0
       0     2507        M 0x80000878 fadd.d  ft3, ft3, ft0          #; ft3  = 2701.0, ft0  = 74.0
       0     2510        M                                           #; (f:fpu) ft3  <-- 2775.0
       0     2511        M 0x8000087c fadd.d  ft3, ft3, ft0          #; ft3  = 2775.0, ft0  = 75.0
       0     2514        M                                           #; (f:fpu) ft3  <-- 2850.0
       0     2515        M 0x80000880 fadd.d  ft3, ft3, ft0          #; ft3  = 2850.0, ft0  = 76.0
       0     2518        M                                           #; (f:fpu) ft3  <-- 2926.0
       0     2519        M 0x80000884 fadd.d  ft3, ft3, ft0          #; ft3  = 2926.0, ft0  = 77.0
       0     2522        M                                           #; (f:fpu) ft3  <-- 3003.0
       0     2523        M 0x80000888 fadd.d  ft3, ft3, ft0          #; ft3  = 3003.0, ft0  = 78.0
       0     2526        M                                           #; (f:fpu) ft3  <-- 3081.0
       0     2527        M 0x8000088c fadd.d  ft3, ft3, ft0          #; ft3  = 3081.0, ft0  = 79.0
       0     2530        M                                           #; (f:fpu) ft3  <-- 3160.0
       0     2531        M 0x80000890 fadd.d  ft3, ft3, ft0          #; ft3  = 3160.0, ft0  = 80.0
       0     2534        M                                           #; (f:fpu) ft3  <-- 3240.0
       0     2535        M 0x80000894 fadd.d  ft3, ft3, ft0          #; ft3  = 3240.0, ft0  = 81.0
       0     2538        M                                           #; (f:fpu) ft3  <-- 3321.0
       0     2539        M 0x80000898 fadd.d  ft3, ft3, ft0          #; ft3  = 3321.0, ft0  = 82.0
       0     2542        M                                           #; (f:fpu) ft3  <-- 3403.0
       0     2543        M 0x8000089c fadd.d  ft3, ft3, ft0          #; ft3  = 3403.0, ft0  = 83.0
       0     2546        M                                           #; (f:fpu) ft3  <-- 3486.0
       0     2547        M 0x800008a0 fadd.d  ft3, ft3, ft0          #; ft3  = 3486.0, ft0  = 84.0
       0     2550        M                                           #; (f:fpu) ft3  <-- 3570.0
       0     2551        M 0x800008a4 fadd.d  ft3, ft3, ft0          #; ft3  = 3570.0, ft0  = 85.0
       0     2554        M                                           #; (f:fpu) ft3  <-- 3655.0
       0     2555        M 0x800008a8 fadd.d  ft3, ft3, ft0          #; ft3  = 3655.0, ft0  = 86.0
       0     2558        M                                           #; (f:fpu) ft3  <-- 3741.0
       0     2559        M 0x800008ac fadd.d  ft3, ft3, ft0          #; ft3  = 3741.0, ft0  = 87.0
       0     2562        M                                           #; (f:fpu) ft3  <-- 3828.0
       0     2563        M 0x800008b0 fadd.d  ft3, ft3, ft0          #; ft3  = 3828.0, ft0  = 88.0
       0     2566        M                                           #; (f:fpu) ft3  <-- 3916.0
       0     2567        M 0x800008b4 fadd.d  ft3, ft3, ft0          #; ft3  = 3916.0, ft0  = 89.0
       0     2570        M                                           #; (f:fpu) ft3  <-- 4005.0
       0     2571        M 0x800008b8 fadd.d  ft3, ft3, ft0          #; ft3  = 4005.0, ft0  = 90.0
       0     2574        M                                           #; (f:fpu) ft3  <-- 4095.0
       0     2575        M 0x800008bc fadd.d  ft3, ft3, ft0          #; ft3  = 4095.0, ft0  = 91.0
       0     2578        M 0x80000908 li      a3, 96                 #; (wrb) a3  <-- 96
                         M                                           #; (f:fpu) ft3  <-- 4186.0
       0     2579        M 0x8000090c li      a4, 64                 #; (wrb) a4  <-- 64
                         M 0x800008c0 fadd.d  ft3, ft3, ft0          #; ft3  = 4186.0, ft0  = 92.0
       0     2582        M 0x80000910 li      a5, 192                #; (wrb) a5  <-- 192
                         M                                           #; (f:fpu) ft3  <-- 4278.0
       0     2583        M 0x80000914 scfgw   a2, a4                 #; a2  = 8, a4  = 64
                         M 0x800008c4 fadd.d  ft3, ft3, ft0          #; ft3  = 4278.0, ft0  = 93.0
       0     2586        M                                           #; (f:fpu) ft3  <-- 4371.0
       0     2587        M 0x800008c8 fadd.d  ft3, ft3, ft0          #; ft3  = 4371.0, ft0  = 94.0
       0     2590        M                                           #; (f:fpu) ft3  <-- 4465.0
       0     2591        M 0x800008cc fadd.d  ft3, ft3, ft0          #; ft3  = 4465.0, ft0  = 95.0
       0     2594        M                                           #; (f:fpu) ft3  <-- 4560.0
       0     2595        M 0x800008d0 fadd.d  ft3, ft3, ft0          #; ft3  = 4560.0, ft0  = 96.0
       0     2598        M                                           #; (f:fpu) ft3  <-- 4656.0
       0     2599        M 0x800008d4 fadd.d  ft3, ft3, ft0          #; ft3  = 4656.0, ft0  = 97.0
       0     2602        M                                           #; (f:fpu) ft3  <-- 4753.0
       0     2603        M 0x800008d8 fadd.d  ft3, ft3, ft0          #; ft3  = 4753.0, ft0  = 98.0
       0     2606        M                                           #; (f:fpu) ft3  <-- 4851.0
       0     2607        M 0x800008dc fadd.d  ft3, ft3, ft0          #; ft3  = 4851.0, ft0  = 99.0
       0     2610        M                                           #; (f:fpu) ft3  <-- 4950.0
       0     2611        M 0x800008e0 fadd.d  ft3, ft3, ft0          #; ft3  = 4950.0, ft0  = 100.0
       0     2614        M                                           #; (f:fpu) ft3  <-- 5050.0
       0     2615        M 0x800008e4 fadd.d  ft3, ft3, ft0          #; ft3  = 5050.0, ft0  = 101.0
       0     2618        M                                           #; (f:fpu) ft3  <-- 5151.0
       0     2619        M 0x800008e8 fadd.d  ft3, ft3, ft0          #; ft3  = 5151.0, ft0  = 102.0
       0     2622        M                                           #; (f:fpu) ft3  <-- 5253.0
       0     2623        M 0x800008ec fadd.d  ft3, ft3, ft0          #; ft3  = 5253.0, ft0  = 103.0
       0     2626        M                                           #; (f:fpu) ft3  <-- 5356.0
       0     2627        M 0x800008f0 fadd.d  ft3, ft3, ft0          #; ft3  = 5356.0, ft0  = 104.0
       0     2630        M                                           #; (f:fpu) ft3  <-- 5460.0
       0     2631        M 0x800008f4 fadd.d  ft3, ft3, ft0          #; ft3  = 5460.0, ft0  = 105.0
       0     2634        M                                           #; (f:fpu) ft3  <-- 5565.0
       0     2635        M 0x800008f8 fadd.d  ft3, ft3, ft0          #; ft3  = 5565.0, ft0  = 106.0
       0     2638        M                                           #; (f:fpu) ft3  <-- 5671.0
       0     2639        M 0x800008fc fadd.d  ft3, ft3, ft0          #; ft3  = 5671.0, ft0  = 107.0
       0     2640        M 0x80000900 fsgnj.d ft4, ft0, ft0          #; ft0  = 108.0, ft0  = 108.0
       0     2641        M 0x80000904 csrrci  a3, ssr, 1             #; (f:fpu) ft4  <-- 108.0
       0     2642        M 0x80000918 scfgw   a3, a5                 #; a3  = 96, a5  = 192
                         M                                           #; (f:fpu) ft3  <-- 5778.0
       0     2643        M 0x8000091c li      a2, -760               #; (wrb) a2  <-- -760
       0     2644        M 0x80000920 li      a3, 96                 #; (wrb) a3  <-- 96
       0     2645        M 0x80000924 li      a4, 224                #; (wrb) a4  <-- 224
       0     2646        M 0x80000928 scfgw   a1, a3                 #; a1  = 11, a3  = 96, (acc) ra  <-- 0x00d5a0ab
       0     2647        M 0x8000092c scfgw   a2, a4                 #; a2  = -760, a4  = 224, (acc) ra  <-- 0x00e620ab
       0     2656        M 0x80000930 li      a1, 32                 #; (wrb) a1  <-- 32
       0     2657        M 0x80000934 scfgw   zero, a1               #; a1  = 32
       0     2658        M 0x80000938 scfgwi  a0, 800                #; a0  = 0x00100000
       0     2660        M 0x8000093c csrrsi  a1, ssr, 1             #; 
       0     2670        M 0x80000940 fsgnj.d ft5, ft0, ft0          #; ft0  = 1.0, ft0  = 1.0
       0     2671        M 0x80000944 fadd.d  ft3, ft3, ft4          #; ft3  = 5778.0, ft4  = 108.0, (f:fpu) ft5  <-- 1.0
       0     2672        M 0x80000948 fadd.d  ft4, ft0, ft5          #; ft0  = 13.0, ft5  = 1.0
       0     2674        M                                           #; (f:fpu) ft3  <-- 5886.0
       0     2675        M                                           #; (f:fpu) ft4  <-- 14.0
       0     2676        M 0x8000094c fadd.d  ft4, ft4, ft0          #; ft4  = 14.0, ft0  = 25.0
       0     2679        M                                           #; (f:fpu) ft4  <-- 39.0
       0     2682        M 0x80000950 fadd.d  ft4, ft4, ft0          #; ft4  = 39.0, ft0  = 37.0
       0     2685        M                                           #; (f:fpu) ft4  <-- 76.0
       0     2686        M 0x80000954 fadd.d  ft4, ft4, ft0          #; ft4  = 76.0, ft0  = 49.0
       0     2689        M                                           #; (f:fpu) ft4  <-- 125.0
       0     2690        M 0x80000958 fadd.d  ft4, ft4, ft0          #; ft4  = 125.0, ft0  = 61.0
       0     2693        M                                           #; (f:fpu) ft4  <-- 186.0
       0     2694        M 0x8000095c fadd.d  ft4, ft4, ft0          #; ft4  = 186.0, ft0  = 73.0
       0     2697        M                                           #; (f:fpu) ft4  <-- 259.0
       0     2698        M 0x80000960 fadd.d  ft4, ft4, ft0          #; ft4  = 259.0, ft0  = 85.0
       0     2701        M                                           #; (f:fpu) ft4  <-- 344.0
       0     2702        M 0x80000964 fadd.d  ft4, ft4, ft0          #; ft4  = 344.0, ft0  = 97.0
       0     2705        M                                           #; (f:fpu) ft4  <-- 441.0
       0     2706        M 0x80000968 fadd.d  ft4, ft4, ft0          #; ft4  = 441.0, ft0  = 2.0
       0     2709        M                                           #; (f:fpu) ft4  <-- 443.0
       0     2710        M 0x8000096c fadd.d  ft4, ft4, ft0          #; ft4  = 443.0, ft0  = 14.0
       0     2713        M                                           #; (f:fpu) ft4  <-- 457.0
       0     2714        M 0x80000970 fadd.d  ft4, ft4, ft0          #; ft4  = 457.0, ft0  = 26.0
       0     2717        M                                           #; (f:fpu) ft4  <-- 483.0
       0     2718        M 0x80000974 fadd.d  ft4, ft4, ft0          #; ft4  = 483.0, ft0  = 38.0
       0     2721        M                                           #; (f:fpu) ft4  <-- 521.0
       0     2722        M 0x80000978 fadd.d  ft4, ft4, ft0          #; ft4  = 521.0, ft0  = 50.0
       0     2725        M                                           #; (f:fpu) ft4  <-- 571.0
       0     2726        M 0x8000097c fadd.d  ft4, ft4, ft0          #; ft4  = 571.0, ft0  = 62.0
       0     2729        M                                           #; (f:fpu) ft4  <-- 633.0
       0     2730        M 0x80000980 fadd.d  ft4, ft4, ft0          #; ft4  = 633.0, ft0  = 74.0
       0     2733        M                                           #; (f:fpu) ft4  <-- 707.0
       0     2734        M 0x80000984 fadd.d  ft4, ft4, ft0          #; ft4  = 707.0, ft0  = 86.0
       0     2737        M                                           #; (f:fpu) ft4  <-- 793.0
       0     2738        M 0x80000988 fadd.d  ft4, ft4, ft0          #; ft4  = 793.0, ft0  = 98.0
       0     2741        M                                           #; (f:fpu) ft4  <-- 891.0
       0     2742        M 0x8000098c fadd.d  ft4, ft4, ft0          #; ft4  = 891.0, ft0  = 3.0
       0     2745        M                                           #; (f:fpu) ft4  <-- 894.0
       0     2746        M 0x80000990 fadd.d  ft4, ft4, ft0          #; ft4  = 894.0, ft0  = 15.0
       0     2749        M                                           #; (f:fpu) ft4  <-- 909.0
       0     2750        M 0x80000994 fadd.d  ft4, ft4, ft0          #; ft4  = 909.0, ft0  = 27.0
       0     2753        M                                           #; (f:fpu) ft4  <-- 936.0
       0     2754        M 0x80000998 fadd.d  ft4, ft4, ft0          #; ft4  = 936.0, ft0  = 39.0
       0     2757        M                                           #; (f:fpu) ft4  <-- 975.0
       0     2758        M 0x8000099c fadd.d  ft4, ft4, ft0          #; ft4  = 975.0, ft0  = 51.0
       0     2761        M                                           #; (f:fpu) ft4  <-- 1026.0
       0     2762        M 0x800009a0 fadd.d  ft4, ft4, ft0          #; ft4  = 1026.0, ft0  = 63.0
       0     2765        M                                           #; (f:fpu) ft4  <-- 1089.0
       0     2766        M 0x800009a4 fadd.d  ft4, ft4, ft0          #; ft4  = 1089.0, ft0  = 75.0
       0     2769        M                                           #; (f:fpu) ft4  <-- 1164.0
       0     2770        M 0x800009a8 fadd.d  ft4, ft4, ft0          #; ft4  = 1164.0, ft0  = 87.0
       0     2773        M                                           #; (f:fpu) ft4  <-- 1251.0
       0     2774        M 0x800009ac fadd.d  ft4, ft4, ft0          #; ft4  = 1251.0, ft0  = 99.0
       0     2777        M                                           #; (f:fpu) ft4  <-- 1350.0
       0     2778        M 0x800009b0 fadd.d  ft4, ft4, ft0          #; ft4  = 1350.0, ft0  = 4.0
       0     2781        M                                           #; (f:fpu) ft4  <-- 1354.0
       0     2782        M 0x800009b4 fadd.d  ft4, ft4, ft0          #; ft4  = 1354.0, ft0  = 16.0
       0     2785        M                                           #; (f:fpu) ft4  <-- 1370.0
       0     2786        M 0x800009b8 fadd.d  ft4, ft4, ft0          #; ft4  = 1370.0, ft0  = 28.0
       0     2789        M                                           #; (f:fpu) ft4  <-- 1398.0
       0     2790        M 0x800009bc fadd.d  ft4, ft4, ft0          #; ft4  = 1398.0, ft0  = 40.0
       0     2793        M                                           #; (f:fpu) ft4  <-- 1438.0
       0     2794        M 0x800009c0 fadd.d  ft4, ft4, ft0          #; ft4  = 1438.0, ft0  = 52.0
       0     2797        M                                           #; (f:fpu) ft4  <-- 1490.0
       0     2798        M 0x800009c4 fadd.d  ft4, ft4, ft0          #; ft4  = 1490.0, ft0  = 64.0
       0     2801        M                                           #; (f:fpu) ft4  <-- 1554.0
       0     2802        M 0x800009c8 fadd.d  ft4, ft4, ft0          #; ft4  = 1554.0, ft0  = 76.0
       0     2805        M                                           #; (f:fpu) ft4  <-- 1630.0
       0     2806        M 0x800009cc fadd.d  ft4, ft4, ft0          #; ft4  = 1630.0, ft0  = 88.0
       0     2809        M                                           #; (f:fpu) ft4  <-- 1718.0
       0     2810        M 0x800009d0 fadd.d  ft4, ft4, ft0          #; ft4  = 1718.0, ft0  = 100.0
       0     2813        M                                           #; (f:fpu) ft4  <-- 1818.0
       0     2814        M 0x800009d4 fadd.d  ft4, ft4, ft0          #; ft4  = 1818.0, ft0  = 5.0
       0     2817        M                                           #; (f:fpu) ft4  <-- 1823.0
       0     2818        M 0x800009d8 fadd.d  ft4, ft4, ft0          #; ft4  = 1823.0, ft0  = 17.0
       0     2821        M                                           #; (f:fpu) ft4  <-- 1840.0
       0     2822        M 0x800009dc fadd.d  ft4, ft4, ft0          #; ft4  = 1840.0, ft0  = 29.0
       0     2825        M                                           #; (f:fpu) ft4  <-- 1869.0
       0     2826        M 0x800009e0 fadd.d  ft4, ft4, ft0          #; ft4  = 1869.0, ft0  = 41.0
       0     2829        M                                           #; (f:fpu) ft4  <-- 1910.0
       0     2830        M 0x800009e4 fadd.d  ft4, ft4, ft0          #; ft4  = 1910.0, ft0  = 53.0
       0     2833        M                                           #; (f:fpu) ft4  <-- 1963.0
       0     2834        M 0x800009e8 fadd.d  ft4, ft4, ft0          #; ft4  = 1963.0, ft0  = 65.0
       0     2837        M                                           #; (f:fpu) ft4  <-- 2028.0
       0     2838        M 0x800009ec fadd.d  ft4, ft4, ft0          #; ft4  = 2028.0, ft0  = 77.0
       0     2841        M                                           #; (f:fpu) ft4  <-- 2105.0
       0     2842        M 0x800009f0 fadd.d  ft4, ft4, ft0          #; ft4  = 2105.0, ft0  = 89.0
       0     2845        M                                           #; (f:fpu) ft4  <-- 2194.0
       0     2846        M 0x800009f4 fadd.d  ft4, ft4, ft0          #; ft4  = 2194.0, ft0  = 101.0
       0     2849        M                                           #; (f:fpu) ft4  <-- 2295.0
       0     2850        M 0x800009f8 fadd.d  ft4, ft4, ft0          #; ft4  = 2295.0, ft0  = 6.0
       0     2853        M                                           #; (f:fpu) ft4  <-- 2301.0
       0     2854        M 0x800009fc fadd.d  ft4, ft4, ft0          #; ft4  = 2301.0, ft0  = 18.0
       0     2857        M                                           #; (f:fpu) ft4  <-- 2319.0
       0     2858        M 0x80000a00 fadd.d  ft4, ft4, ft0          #; ft4  = 2319.0, ft0  = 30.0
       0     2861        M                                           #; (f:fpu) ft4  <-- 2349.0
       0     2862        M 0x80000a04 fadd.d  ft4, ft4, ft0          #; ft4  = 2349.0, ft0  = 42.0
       0     2865        M                                           #; (f:fpu) ft4  <-- 2391.0
       0     2866        M 0x80000a08 fadd.d  ft4, ft4, ft0          #; ft4  = 2391.0, ft0  = 54.0
       0     2869        M                                           #; (f:fpu) ft4  <-- 2445.0
       0     2870        M 0x80000a0c fadd.d  ft4, ft4, ft0          #; ft4  = 2445.0, ft0  = 66.0
       0     2873        M                                           #; (f:fpu) ft4  <-- 2511.0
       0     2874        M 0x80000a10 fadd.d  ft4, ft4, ft0          #; ft4  = 2511.0, ft0  = 78.0
       0     2877        M                                           #; (f:fpu) ft4  <-- 2589.0
       0     2878        M 0x80000a14 fadd.d  ft4, ft4, ft0          #; ft4  = 2589.0, ft0  = 90.0
       0     2881        M                                           #; (f:fpu) ft4  <-- 2679.0
       0     2882        M 0x80000a18 fadd.d  ft4, ft4, ft0          #; ft4  = 2679.0, ft0  = 102.0
       0     2885        M                                           #; (f:fpu) ft4  <-- 2781.0
       0     2886        M 0x80000a1c fadd.d  ft4, ft4, ft0          #; ft4  = 2781.0, ft0  = 7.0
       0     2889        M                                           #; (f:fpu) ft4  <-- 2788.0
       0     2890        M 0x80000a20 fadd.d  ft4, ft4, ft0          #; ft4  = 2788.0, ft0  = 19.0
       0     2893        M                                           #; (f:fpu) ft4  <-- 2807.0
       0     2894        M 0x80000a24 fadd.d  ft4, ft4, ft0          #; ft4  = 2807.0, ft0  = 31.0
       0     2897        M                                           #; (f:fpu) ft4  <-- 2838.0
       0     2898        M 0x80000a28 fadd.d  ft4, ft4, ft0          #; ft4  = 2838.0, ft0  = 43.0
       0     2901        M                                           #; (f:fpu) ft4  <-- 2881.0
       0     2902        M 0x80000a2c fadd.d  ft4, ft4, ft0          #; ft4  = 2881.0, ft0  = 55.0
       0     2905        M                                           #; (f:fpu) ft4  <-- 2936.0
       0     2906        M 0x80000a30 fadd.d  ft4, ft4, ft0          #; ft4  = 2936.0, ft0  = 67.0
       0     2909        M                                           #; (f:fpu) ft4  <-- 3003.0
       0     2910        M 0x80000a34 fadd.d  ft4, ft4, ft0          #; ft4  = 3003.0, ft0  = 79.0
       0     2913        M                                           #; (f:fpu) ft4  <-- 3082.0
       0     2914        M 0x80000a38 fadd.d  ft4, ft4, ft0          #; ft4  = 3082.0, ft0  = 91.0
       0     2917        M                                           #; (f:fpu) ft4  <-- 3173.0
       0     2918        M 0x80000a3c fadd.d  ft4, ft4, ft0          #; ft4  = 3173.0, ft0  = 103.0
       0     2921        M                                           #; (f:fpu) ft4  <-- 3276.0
       0     2922        M 0x80000a40 fadd.d  ft4, ft4, ft0          #; ft4  = 3276.0, ft0  = 8.0
       0     2925        M                                           #; (f:fpu) ft4  <-- 3284.0
       0     2926        M 0x80000a44 fadd.d  ft4, ft4, ft0          #; ft4  = 3284.0, ft0  = 20.0
       0     2929        M                                           #; (f:fpu) ft4  <-- 3304.0
       0     2930        M 0x80000a48 fadd.d  ft4, ft4, ft0          #; ft4  = 3304.0, ft0  = 32.0
       0     2933        M                                           #; (f:fpu) ft4  <-- 3336.0
       0     2934        M 0x80000a4c fadd.d  ft4, ft4, ft0          #; ft4  = 3336.0, ft0  = 44.0
       0     2937        M                                           #; (f:fpu) ft4  <-- 3380.0
       0     2938        M 0x80000a50 fadd.d  ft4, ft4, ft0          #; ft4  = 3380.0, ft0  = 56.0
       0     2941        M                                           #; (f:fpu) ft4  <-- 3436.0
       0     2942        M 0x80000a54 fadd.d  ft4, ft4, ft0          #; ft4  = 3436.0, ft0  = 68.0
       0     2945        M                                           #; (f:fpu) ft4  <-- 3504.0
       0     2946        M 0x80000a58 fadd.d  ft4, ft4, ft0          #; ft4  = 3504.0, ft0  = 80.0
       0     2949        M                                           #; (f:fpu) ft4  <-- 3584.0
       0     2950        M 0x80000a5c fadd.d  ft4, ft4, ft0          #; ft4  = 3584.0, ft0  = 92.0
       0     2953        M                                           #; (f:fpu) ft4  <-- 3676.0
       0     2954        M 0x80000a60 fadd.d  ft4, ft4, ft0          #; ft4  = 3676.0, ft0  = 104.0
       0     2957        M                                           #; (f:fpu) ft4  <-- 3780.0
       0     2958        M 0x80000a64 fadd.d  ft4, ft4, ft0          #; ft4  = 3780.0, ft0  = 9.0
       0     2961        M                                           #; (f:fpu) ft4  <-- 3789.0
       0     2962        M 0x80000a68 fadd.d  ft4, ft4, ft0          #; ft4  = 3789.0, ft0  = 21.0
       0     2965        M                                           #; (f:fpu) ft4  <-- 3810.0
       0     2966        M 0x80000a6c fadd.d  ft4, ft4, ft0          #; ft4  = 3810.0, ft0  = 33.0
       0     2969        M                                           #; (f:fpu) ft4  <-- 3843.0
       0     2970        M 0x80000a70 fadd.d  ft4, ft4, ft0          #; ft4  = 3843.0, ft0  = 45.0
       0     2973        M                                           #; (f:fpu) ft4  <-- 3888.0
       0     2974        M 0x80000a74 fadd.d  ft4, ft4, ft0          #; ft4  = 3888.0, ft0  = 57.0
       0     2977        M                                           #; (f:fpu) ft4  <-- 3945.0
       0     2978        M 0x80000a78 fadd.d  ft4, ft4, ft0          #; ft4  = 3945.0, ft0  = 69.0
       0     2981        M                                           #; (f:fpu) ft4  <-- 4014.0
       0     2982        M 0x80000a7c fadd.d  ft4, ft4, ft0          #; ft4  = 4014.0, ft0  = 81.0
       0     2985        M                                           #; (f:fpu) ft4  <-- 4095.0
       0     2986        M 0x80000a80 fadd.d  ft4, ft4, ft0          #; ft4  = 4095.0, ft0  = 93.0
       0     2989        M                                           #; (f:fpu) ft4  <-- 4188.0
       0     2990        M 0x80000a84 fadd.d  ft4, ft4, ft0          #; ft4  = 4188.0, ft0  = 105.0
       0     2993        M                                           #; (f:fpu) ft4  <-- 4293.0
       0     2994        M 0x80000a88 fadd.d  ft4, ft4, ft0          #; ft4  = 4293.0, ft0  = 10.0
       0     2997        M                                           #; (f:fpu) ft4  <-- 4303.0
       0     2998        M 0x80000a8c fadd.d  ft4, ft4, ft0          #; ft4  = 4303.0, ft0  = 22.0
       0     3001        M                                           #; (f:fpu) ft4  <-- 4325.0
       0     3002        M 0x80000a90 fadd.d  ft4, ft4, ft0          #; ft4  = 4325.0, ft0  = 34.0
       0     3005        M                                           #; (f:fpu) ft4  <-- 4359.0
       0     3006        M 0x80000a94 fadd.d  ft4, ft4, ft0          #; ft4  = 4359.0, ft0  = 46.0
       0     3009        M                                           #; (f:fpu) ft4  <-- 4405.0
       0     3010        M 0x80000a98 fadd.d  ft4, ft4, ft0          #; ft4  = 4405.0, ft0  = 58.0
       0     3013        M                                           #; (f:fpu) ft4  <-- 4463.0
       0     3014        M 0x80000a9c fadd.d  ft4, ft4, ft0          #; ft4  = 4463.0, ft0  = 70.0
       0     3017        M                                           #; (f:fpu) ft4  <-- 4533.0
       0     3018        M 0x80000aa0 fadd.d  ft4, ft4, ft0          #; ft4  = 4533.0, ft0  = 82.0
       0     3021        M                                           #; (f:fpu) ft4  <-- 4615.0
       0     3022        M 0x80000aa4 fadd.d  ft4, ft4, ft0          #; ft4  = 4615.0, ft0  = 94.0
       0     3025        M                                           #; (f:fpu) ft4  <-- 4709.0
       0     3026        M 0x80000aa8 fadd.d  ft4, ft4, ft0          #; ft4  = 4709.0, ft0  = 106.0
       0     3029        M                                           #; (f:fpu) ft4  <-- 4815.0
       0     3030        M 0x80000aac fadd.d  ft4, ft4, ft0          #; ft4  = 4815.0, ft0  = 11.0
       0     3033        M 0x80000af8 j       pc + 0x678             #; goto 0x80001170
                         M                                           #; (f:fpu) ft4  <-- 4826.0
       0     3034        M 0x80000ab0 fadd.d  ft4, ft4, ft0          #; ft4  = 4826.0, ft0  = 23.0
       0     3037        M                                           #; (f:fpu) ft4  <-- 4849.0
       0     3038        M 0x80000ab4 fadd.d  ft4, ft4, ft0          #; ft4  = 4849.0, ft0  = 35.0
       0     3041        M                                           #; (f:fpu) ft4  <-- 4884.0
       0     3042        M 0x80000ab8 fadd.d  ft4, ft4, ft0          #; ft4  = 4884.0, ft0  = 47.0
       0     3045        M                                           #; (f:fpu) ft4  <-- 4931.0
       0     3046        M 0x80000abc fadd.d  ft4, ft4, ft0          #; ft4  = 4931.0, ft0  = 59.0
       0     3049        M                                           #; (f:fpu) ft4  <-- 4990.0
       0     3050        M 0x80000ac0 fadd.d  ft4, ft4, ft0          #; ft4  = 4990.0, ft0  = 71.0
       0     3053        M                                           #; (f:fpu) ft4  <-- 5061.0
       0     3054        M 0x80000ac4 fadd.d  ft4, ft4, ft0          #; ft4  = 5061.0, ft0  = 83.0
       0     3057        M                                           #; (f:fpu) ft4  <-- 5144.0
       0     3058        M 0x80000ac8 fadd.d  ft4, ft4, ft0          #; ft4  = 5144.0, ft0  = 95.0
       0     3061        M                                           #; (f:fpu) ft4  <-- 5239.0
       0     3062        M 0x80000acc fadd.d  ft4, ft4, ft0          #; ft4  = 5239.0, ft0  = 107.0
       0     3065        M                                           #; (f:fpu) ft4  <-- 5346.0
       0     3066        M 0x80000ad0 fadd.d  ft4, ft4, ft0          #; ft4  = 5346.0, ft0  = 12.0
       0     3069        M                                           #; (f:fpu) ft4  <-- 5358.0
       0     3070        M 0x80000ad4 fadd.d  ft4, ft4, ft0          #; ft4  = 5358.0, ft0  = 24.0
       0     3073        M                                           #; (f:fpu) ft4  <-- 5382.0
       0     3074        M 0x80000ad8 fadd.d  ft4, ft4, ft0          #; ft4  = 5382.0, ft0  = 36.0
       0     3077        M                                           #; (f:fpu) ft4  <-- 5418.0
       0     3078        M 0x80000adc fadd.d  ft4, ft4, ft0          #; ft4  = 5418.0, ft0  = 48.0
       0     3081        M                                           #; (f:fpu) ft4  <-- 5466.0
       0     3082        M 0x80000ae0 fadd.d  ft4, ft4, ft0          #; ft4  = 5466.0, ft0  = 60.0
       0     3085        M                                           #; (f:fpu) ft4  <-- 5526.0
       0     3086        M 0x80000ae4 fadd.d  ft4, ft4, ft0          #; ft4  = 5526.0, ft0  = 72.0
       0     3089        M                                           #; (f:fpu) ft4  <-- 5598.0
       0     3090        M 0x80000ae8 fadd.d  ft4, ft4, ft0          #; ft4  = 5598.0, ft0  = 84.0
       0     3093        M                                           #; (f:fpu) ft4  <-- 5682.0
       0     3094        M 0x80000aec fadd.d  ft4, ft4, ft0          #; ft4  = 5682.0, ft0  = 96.0
       0     3097        M                                           #; (f:fpu) ft4  <-- 5778.0
       0     3098        M 0x80000af0 fadd.d  ft4, ft4, ft0          #; ft4  = 5778.0, ft0  = 108.0
       0     3099        M 0x80000af4 csrrci  a1, ssr, 1             #; 
       0     3101        M 0x80001170 fld     ft5, 768(a0)           #; ft5  <~~ Doub[0x00100300], (f:fpu) ft4  <-- 5886.0
       0     3102        M 0x80001174 fld     ft6, 776(a0)           #; ft6  <~~ Doub[0x00100308], (f:lsu) ft5  <-- 97.0
       0     3103        M 0x80001178 fld     ft7, 784(a0)           #; ft7  <~~ Doub[0x00100310], (f:lsu) ft6  <-- 98.0
       0     3104        M 0x8000117c fld     fa0, 792(a0)           #; fa0  <~~ Doub[0x00100318], (f:lsu) ft7  <-- 99.0
       0     3105        M 0x80001180 fadd.d  ft4, ft4, ft5          #; ft4  = 5886.0, ft5  = 97.0, (f:lsu) fa0  <-- 100.0
       0     3106        M 0x80001184 fld     ft5, 800(a0)           #; ft5  <~~ Doub[0x00100320]
       0     3107        M                                           #; (f:lsu) ft5  <-- 101.0
       0     3108        M                                           #; (f:fpu) ft4  <-- 5983.0
       0     3109        M 0x80001188 fadd.d  ft4, ft4, ft6          #; ft4  = 5983.0, ft6  = 98.0
       0     3110        M 0x8000118c fld     ft6, 808(a0)           #; ft6  <~~ Doub[0x00100328]
       0     3111        M                                           #; (f:lsu) ft6  <-- 102.0
       0     3112        M                                           #; (f:fpu) ft4  <-- 6081.0
       0     3117        M 0x80001190 fadd.d  ft4, ft4, ft7          #; ft4  = 6081.0, ft7  = 99.0
       0     3118        M 0x80001194 fld     ft7, 816(a0)           #; ft7  <~~ Doub[0x00100330]
       0     3119        M                                           #; (f:lsu) ft7  <-- 103.0
       0     3120        M                                           #; (f:fpu) ft4  <-- 6180.0
       0     3121        M 0x80001198 fadd.d  ft4, ft4, fa0          #; ft4  = 6180.0, fa0  = 100.0
       0     3122        M 0x8000119c fld     fa0, 824(a0)           #; fa0  <~~ Doub[0x00100338]
       0     3123        M                                           #; (f:lsu) fa0  <-- 104.0
       0     3124        M                                           #; (f:fpu) ft4  <-- 6280.0
       0     3129        M 0x800011a0 fadd.d  ft4, ft4, ft5          #; ft4  = 6280.0, ft5  = 101.0
       0     3130        M 0x800011a4 fld     ft5, 832(a0)           #; ft5  <~~ Doub[0x00100340]
       0     3131        M                                           #; (f:lsu) ft5  <-- 105.0
       0     3132        M                                           #; (f:fpu) ft4  <-- 6381.0
       0     3133        M 0x800011a8 fadd.d  ft4, ft4, ft6          #; ft4  = 6381.0, ft6  = 102.0
       0     3134        M 0x800011ac fld     ft6, 840(a0)           #; ft6  <~~ Doub[0x00100348]
       0     3135        M                                           #; (f:lsu) ft6  <-- 106.0
       0     3136        M                                           #; (f:fpu) ft4  <-- 6483.0
       0     3141        M 0x800011b0 fadd.d  ft4, ft4, ft7          #; ft4  = 6483.0, ft7  = 103.0
       0     3142        M 0x800011b4 fld     ft7, 848(a0)           #; ft7  <~~ Doub[0x00100350]
       0     3143        M                                           #; (f:lsu) ft7  <-- 107.0
       0     3144        M                                           #; (f:fpu) ft4  <-- 6586.0
       0     3145        M 0x800011b8 fadd.d  ft4, ft4, fa0          #; ft4  = 6586.0, fa0  = 104.0
       0     3146        M 0x800011bc fld     fa0, 856(a0)           #; fa0  <~~ Doub[0x00100358]
       0     3147        M                                           #; (f:lsu) fa0  <-- 108.0
       0     3148        M                                           #; (f:fpu) ft4  <-- 6690.0
       0     3153        M 0x800011c0 fadd.d  ft4, ft4, ft5          #; ft4  = 6690.0, ft5  = 105.0
       0     3154        M 0x800011c4 fld     ft5, 672(a0)           #; ft5  <~~ Doub[0x001002a0]
       0     3155        M                                           #; (f:lsu) ft5  <-- 85.0
       0     3156        M                                           #; (f:fpu) ft4  <-- 6795.0
       0     3157        M 0x800011c8 fadd.d  ft4, ft4, ft6          #; ft4  = 6795.0, ft6  = 106.0
       0     3158        M 0x800011cc fld     ft6, 680(a0)           #; ft6  <~~ Doub[0x001002a8]
       0     3159        M                                           #; (f:lsu) ft6  <-- 86.0
       0     3160        M                                           #; (f:fpu) ft4  <-- 6901.0
       0     3165        M 0x800011d0 fadd.d  ft4, ft4, ft7          #; ft4  = 6901.0, ft7  = 107.0
       0     3166        M 0x800011d4 fld     ft7, 688(a0)           #; ft7  <~~ Doub[0x001002b0]
       0     3167        M                                           #; (f:lsu) ft7  <-- 87.0
       0     3168        M                                           #; (f:fpu) ft4  <-- 7008.0
       0     3169        M 0x800011d8 fadd.d  ft4, ft4, fa0          #; ft4  = 7008.0, fa0  = 108.0
       0     3170        M 0x800011dc fld     fa0, 696(a0)           #; fa0  <~~ Doub[0x001002b8]
       0     3171        M                                           #; (f:lsu) fa0  <-- 88.0
       0     3172        M                                           #; (f:fpu) ft4  <-- 7116.0
       0     3177        M 0x800011e0 fadd.d  ft4, ft4, ft5          #; ft4  = 7116.0, ft5  = 85.0
       0     3178        M 0x800011e4 fld     ft5, 704(a0)           #; ft5  <~~ Doub[0x001002c0]
       0     3179        M                                           #; (f:lsu) ft5  <-- 89.0
       0     3180        M                                           #; (f:fpu) ft4  <-- 7201.0
       0     3181        M 0x800011e8 fadd.d  ft4, ft4, ft6          #; ft4  = 7201.0, ft6  = 86.0
       0     3182        M 0x800011ec fld     ft6, 712(a0)           #; ft6  <~~ Doub[0x001002c8]
       0     3183        M                                           #; (f:lsu) ft6  <-- 90.0
       0     3184        M                                           #; (f:fpu) ft4  <-- 7287.0
       0     3189        M 0x800011f0 fadd.d  ft4, ft4, ft7          #; ft4  = 7287.0, ft7  = 87.0
       0     3190        M 0x800011f4 fld     ft7, 720(a0)           #; ft7  <~~ Doub[0x001002d0]
       0     3191        M                                           #; (f:lsu) ft7  <-- 91.0
       0     3192        M                                           #; (f:fpu) ft4  <-- 7374.0
       0     3193        M 0x800011f8 fadd.d  ft4, ft4, fa0          #; ft4  = 7374.0, fa0  = 88.0
       0     3194        M 0x800011fc fld     fa0, 728(a0)           #; fa0  <~~ Doub[0x001002d8]
       0     3195        M                                           #; (f:lsu) fa0  <-- 92.0
       0     3196        M                                           #; (f:fpu) ft4  <-- 7462.0
       0     3201        M 0x80001200 fadd.d  ft4, ft4, ft5          #; ft4  = 7462.0, ft5  = 89.0
       0     3202        M 0x80001204 fld     ft5, 736(a0)           #; ft5  <~~ Doub[0x001002e0]
       0     3203        M                                           #; (f:lsu) ft5  <-- 93.0
       0     3204        M                                           #; (f:fpu) ft4  <-- 7551.0
       0     3205        M 0x80001208 fadd.d  ft4, ft4, ft6          #; ft4  = 7551.0, ft6  = 90.0
       0     3206        M 0x8000120c fld     ft6, 744(a0)           #; ft6  <~~ Doub[0x001002e8]
       0     3207        M                                           #; (f:lsu) ft6  <-- 94.0
       0     3208        M                                           #; (f:fpu) ft4  <-- 7641.0
       0     3213        M 0x80001210 fadd.d  ft4, ft4, ft7          #; ft4  = 7641.0, ft7  = 91.0
       0     3214        M 0x80001214 fld     ft7, 752(a0)           #; ft7  <~~ Doub[0x001002f0]
       0     3215        M                                           #; (f:lsu) ft7  <-- 95.0
       0     3216        M                                           #; (f:fpu) ft4  <-- 7732.0
       0     3217        M 0x80001218 fadd.d  ft4, ft4, fa0          #; ft4  = 7732.0, fa0  = 92.0
       0     3218        M 0x8000121c fld     fa0, 760(a0)           #; fa0  <~~ Doub[0x001002f8]
       0     3219        M                                           #; (f:lsu) fa0  <-- 96.0
       0     3220        M                                           #; (f:fpu) ft4  <-- 7824.0
       0     3225        M 0x80001220 fadd.d  ft4, ft4, ft5          #; ft4  = 7824.0, ft5  = 93.0
       0     3226        M 0x80001224 fld     ft5, 576(a0)           #; ft5  <~~ Doub[0x00100240]
       0     3227        M                                           #; (f:lsu) ft5  <-- 73.0
       0     3228        M                                           #; (f:fpu) ft4  <-- 7917.0
       0     3229        M 0x80001228 fadd.d  ft4, ft4, ft6          #; ft4  = 7917.0, ft6  = 94.0
       0     3230        M 0x8000122c fld     ft6, 584(a0)           #; ft6  <~~ Doub[0x00100248]
       0     3231        M                                           #; (f:lsu) ft6  <-- 74.0
       0     3232        M                                           #; (f:fpu) ft4  <-- 8011.0
       0     3237        M 0x80001230 fadd.d  ft4, ft4, ft7          #; ft4  = 8011.0, ft7  = 95.0
       0     3238        M 0x80001234 fld     ft7, 592(a0)           #; ft7  <~~ Doub[0x00100250]
       0     3239        M                                           #; (f:lsu) ft7  <-- 75.0
       0     3240        M                                           #; (f:fpu) ft4  <-- 8106.0
       0     3241        M 0x80001238 fadd.d  ft4, ft4, fa0          #; ft4  = 8106.0, fa0  = 96.0
       0     3242        M 0x8000123c fld     fa0, 600(a0)           #; fa0  <~~ Doub[0x00100258]
       0     3243        M                                           #; (f:lsu) fa0  <-- 76.0
       0     3244        M                                           #; (f:fpu) ft4  <-- 8202.0
       0     3249        M 0x80001240 fadd.d  ft4, ft4, ft5          #; ft4  = 8202.0, ft5  = 73.0
       0     3250        M 0x80001244 fld     ft5, 608(a0)           #; ft5  <~~ Doub[0x00100260]
       0     3251        M                                           #; (f:lsu) ft5  <-- 77.0
       0     3252        M                                           #; (f:fpu) ft4  <-- 8275.0
       0     3253        M 0x80001248 fadd.d  ft4, ft4, ft6          #; ft4  = 8275.0, ft6  = 74.0
       0     3254        M 0x8000124c fld     ft6, 616(a0)           #; ft6  <~~ Doub[0x00100268]
       0     3255        M                                           #; (f:lsu) ft6  <-- 78.0
       0     3256        M                                           #; (f:fpu) ft4  <-- 8349.0
       0     3261        M 0x80001250 fadd.d  ft4, ft4, ft7          #; ft4  = 8349.0, ft7  = 75.0
       0     3262        M 0x80001254 fld     ft7, 624(a0)           #; ft7  <~~ Doub[0x00100270]
       0     3263        M                                           #; (f:lsu) ft7  <-- 79.0
       0     3264        M                                           #; (f:fpu) ft4  <-- 8424.0
       0     3265        M 0x80001258 fadd.d  ft4, ft4, fa0          #; ft4  = 8424.0, fa0  = 76.0
       0     3266        M 0x8000125c fld     fa0, 632(a0)           #; fa0  <~~ Doub[0x00100278]
       0     3267        M                                           #; (f:lsu) fa0  <-- 80.0
       0     3268        M                                           #; (f:fpu) ft4  <-- 8500.0
       0     3273        M 0x80001260 fadd.d  ft4, ft4, ft5          #; ft4  = 8500.0, ft5  = 77.0
       0     3274        M 0x80001264 fld     ft5, 640(a0)           #; ft5  <~~ Doub[0x00100280]
       0     3275        M                                           #; (f:lsu) ft5  <-- 81.0
       0     3276        M                                           #; (f:fpu) ft4  <-- 8577.0
       0     3277        M 0x80001268 fadd.d  ft4, ft4, ft6          #; ft4  = 8577.0, ft6  = 78.0
       0     3278        M 0x8000126c fld     ft6, 648(a0)           #; ft6  <~~ Doub[0x00100288]
       0     3279        M                                           #; (f:lsu) ft6  <-- 82.0
       0     3280        M                                           #; (f:fpu) ft4  <-- 8655.0
       0     3285        M 0x80001270 fadd.d  ft4, ft4, ft7          #; ft4  = 8655.0, ft7  = 79.0
       0     3286        M 0x80001274 fld     ft7, 656(a0)           #; ft7  <~~ Doub[0x00100290]
       0     3287        M                                           #; (f:lsu) ft7  <-- 83.0
       0     3288        M                                           #; (f:fpu) ft4  <-- 8734.0
       0     3289        M 0x80001278 fadd.d  ft4, ft4, fa0          #; ft4  = 8734.0, fa0  = 80.0
       0     3290        M 0x8000127c fld     fa0, 664(a0)           #; fa0  <~~ Doub[0x00100298]
       0     3291        M                                           #; (f:lsu) fa0  <-- 84.0
       0     3292        M                                           #; (f:fpu) ft4  <-- 8814.0
       0     3297        M 0x80001280 fadd.d  ft4, ft4, ft5          #; ft4  = 8814.0, ft5  = 81.0
       0     3298        M 0x80001284 fld     ft5, 480(a0)           #; ft5  <~~ Doub[0x001001e0]
       0     3299        M                                           #; (f:lsu) ft5  <-- 61.0
       0     3300        M                                           #; (f:fpu) ft4  <-- 8895.0
       0     3301        M 0x80001288 fadd.d  ft4, ft4, ft6          #; ft4  = 8895.0, ft6  = 82.0
       0     3302        M 0x8000128c fld     ft6, 488(a0)           #; ft6  <~~ Doub[0x001001e8]
       0     3303        M                                           #; (f:lsu) ft6  <-- 62.0
       0     3304        M                                           #; (f:fpu) ft4  <-- 8977.0
       0     3309        M 0x80001290 fadd.d  ft4, ft4, ft7          #; ft4  = 8977.0, ft7  = 83.0
       0     3310        M 0x80001294 fld     ft7, 496(a0)           #; ft7  <~~ Doub[0x001001f0]
       0     3311        M                                           #; (f:lsu) ft7  <-- 63.0
       0     3312        M                                           #; (f:fpu) ft4  <-- 9060.0
       0     3313        M 0x80001298 fadd.d  ft4, ft4, fa0          #; ft4  = 9060.0, fa0  = 84.0
       0     3314        M 0x8000129c fld     fa0, 504(a0)           #; fa0  <~~ Doub[0x001001f8]
       0     3315        M                                           #; (f:lsu) fa0  <-- 64.0
       0     3316        M                                           #; (f:fpu) ft4  <-- 9144.0
       0     3321        M 0x800012a0 fadd.d  ft4, ft4, ft5          #; ft4  = 9144.0, ft5  = 61.0
       0     3322        M 0x800012a4 fld     ft5, 512(a0)           #; ft5  <~~ Doub[0x00100200]
       0     3323        M                                           #; (f:lsu) ft5  <-- 65.0
       0     3324        M                                           #; (f:fpu) ft4  <-- 9205.0
       0     3325        M 0x800012a8 fadd.d  ft4, ft4, ft6          #; ft4  = 9205.0, ft6  = 62.0
       0     3326        M 0x800012ac fld     ft6, 520(a0)           #; ft6  <~~ Doub[0x00100208]
       0     3327        M                                           #; (f:lsu) ft6  <-- 66.0
       0     3328        M                                           #; (f:fpu) ft4  <-- 9267.0
       0     3333        M 0x800012b0 fadd.d  ft4, ft4, ft7          #; ft4  = 9267.0, ft7  = 63.0
       0     3334        M 0x800012b4 fld     ft7, 528(a0)           #; ft7  <~~ Doub[0x00100210]
       0     3335        M                                           #; (f:lsu) ft7  <-- 67.0
       0     3336        M                                           #; (f:fpu) ft4  <-- 9330.0
       0     3337        M 0x800012b8 fadd.d  ft4, ft4, fa0          #; ft4  = 9330.0, fa0  = 64.0
       0     3338        M 0x800012bc fld     fa0, 536(a0)           #; fa0  <~~ Doub[0x00100218]
       0     3339        M                                           #; (f:lsu) fa0  <-- 68.0
       0     3340        M                                           #; (f:fpu) ft4  <-- 9394.0
       0     3345        M 0x800012c0 fadd.d  ft4, ft4, ft5          #; ft4  = 9394.0, ft5  = 65.0
       0     3346        M 0x800012c4 fld     ft5, 544(a0)           #; ft5  <~~ Doub[0x00100220]
       0     3347        M                                           #; (f:lsu) ft5  <-- 69.0
       0     3348        M                                           #; (f:fpu) ft4  <-- 9459.0
       0     3349        M 0x800012c8 fadd.d  ft4, ft4, ft6          #; ft4  = 9459.0, ft6  = 66.0
       0     3350        M 0x800012cc fld     ft6, 552(a0)           #; ft6  <~~ Doub[0x00100228]
       0     3351        M                                           #; (f:lsu) ft6  <-- 70.0
       0     3352        M                                           #; (f:fpu) ft4  <-- 9525.0
       0     3357        M 0x800012d0 fadd.d  ft4, ft4, ft7          #; ft4  = 9525.0, ft7  = 67.0
       0     3358        M 0x800012d4 fld     ft7, 560(a0)           #; ft7  <~~ Doub[0x00100230]
       0     3359        M                                           #; (f:lsu) ft7  <-- 71.0
       0     3360        M                                           #; (f:fpu) ft4  <-- 9592.0
       0     3361        M 0x800012d8 fadd.d  ft4, ft4, fa0          #; ft4  = 9592.0, fa0  = 68.0
       0     3362        M 0x800012dc fld     fa0, 568(a0)           #; fa0  <~~ Doub[0x00100238]
       0     3363        M                                           #; (f:lsu) fa0  <-- 72.0
       0     3364        M                                           #; (f:fpu) ft4  <-- 9660.0
       0     3369        M 0x800012e0 fadd.d  ft4, ft4, ft5          #; ft4  = 9660.0, ft5  = 69.0
       0     3370        M 0x800012e4 fld     ft5, 384(a0)           #; ft5  <~~ Doub[0x00100180]
       0     3371        M                                           #; (f:lsu) ft5  <-- 49.0
       0     3372        M                                           #; (f:fpu) ft4  <-- 9729.0
       0     3373        M 0x800012e8 fadd.d  ft4, ft4, ft6          #; ft4  = 9729.0, ft6  = 70.0
       0     3374        M 0x800012ec fld     ft6, 392(a0)           #; ft6  <~~ Doub[0x00100188]
       0     3375        M                                           #; (f:lsu) ft6  <-- 50.0
       0     3376        M                                           #; (f:fpu) ft4  <-- 9799.0
       0     3381        M 0x800012f0 fadd.d  ft4, ft4, ft7          #; ft4  = 9799.0, ft7  = 71.0
       0     3382        M 0x800012f4 fld     ft7, 400(a0)           #; ft7  <~~ Doub[0x00100190]
       0     3383        M                                           #; (f:lsu) ft7  <-- 51.0
       0     3384        M                                           #; (f:fpu) ft4  <-- 9870.0
       0     3385        M 0x800012f8 fadd.d  ft4, ft4, fa0          #; ft4  = 9870.0, fa0  = 72.0
       0     3386        M 0x800012fc fld     fa0, 408(a0)           #; fa0  <~~ Doub[0x00100198]
       0     3387        M                                           #; (f:lsu) fa0  <-- 52.0
       0     3388        M                                           #; (f:fpu) ft4  <-- 9942.0
       0     3393        M 0x80001300 fadd.d  ft4, ft4, ft5          #; ft4  = 9942.0, ft5  = 49.0
       0     3394        M 0x80001304 fld     ft5, 416(a0)           #; ft5  <~~ Doub[0x001001a0]
       0     3395        M                                           #; (f:lsu) ft5  <-- 53.0
       0     3396        M                                           #; (f:fpu) ft4  <-- 9991.0
       0     3397        M 0x80001308 fadd.d  ft4, ft4, ft6          #; ft4  = 9991.0, ft6  = 50.0
       0     3398        M 0x8000130c fld     ft6, 424(a0)           #; ft6  <~~ Doub[0x001001a8]
       0     3399        M                                           #; (f:lsu) ft6  <-- 54.0
       0     3400        M                                           #; (f:fpu) ft4  <-- 10041.0
       0     3405        M 0x80001310 fadd.d  ft4, ft4, ft7          #; ft4  = 10041.0, ft7  = 51.0
       0     3406        M 0x80001314 fld     ft7, 432(a0)           #; ft7  <~~ Doub[0x001001b0]
       0     3407        M                                           #; (f:lsu) ft7  <-- 55.0
       0     3408        M                                           #; (f:fpu) ft4  <-- 10092.0
       0     3409        M 0x80001318 fadd.d  ft4, ft4, fa0          #; ft4  = 10092.0, fa0  = 52.0
       0     3410        M 0x8000131c fld     fa0, 440(a0)           #; fa0  <~~ Doub[0x001001b8]
       0     3411        M                                           #; (f:lsu) fa0  <-- 56.0
       0     3412        M                                           #; (f:fpu) ft4  <-- 10144.0
       0     3417        M 0x80001320 fadd.d  ft4, ft4, ft5          #; ft4  = 10144.0, ft5  = 53.0
       0     3418        M 0x80001324 fld     ft5, 448(a0)           #; ft5  <~~ Doub[0x001001c0]
       0     3419        M                                           #; (f:lsu) ft5  <-- 57.0
       0     3420        M                                           #; (f:fpu) ft4  <-- 10197.0
       0     3421        M 0x80001328 fadd.d  ft4, ft4, ft6          #; ft4  = 10197.0, ft6  = 54.0
       0     3422        M 0x8000132c fld     ft6, 456(a0)           #; ft6  <~~ Doub[0x001001c8]
       0     3423        M                                           #; (f:lsu) ft6  <-- 58.0
       0     3424        M                                           #; (f:fpu) ft4  <-- 10251.0
       0     3429        M 0x80001330 fadd.d  ft4, ft4, ft7          #; ft4  = 10251.0, ft7  = 55.0
       0     3430        M 0x80001334 fld     ft7, 464(a0)           #; ft7  <~~ Doub[0x001001d0]
       0     3431        M                                           #; (f:lsu) ft7  <-- 59.0
       0     3432        M                                           #; (f:fpu) ft4  <-- 10306.0
       0     3433        M 0x80001338 fadd.d  ft4, ft4, fa0          #; ft4  = 10306.0, fa0  = 56.0
       0     3434        M 0x8000133c fld     fa0, 472(a0)           #; fa0  <~~ Doub[0x001001d8]
       0     3435        M                                           #; (f:lsu) fa0  <-- 60.0
       0     3436        M                                           #; (f:fpu) ft4  <-- 10362.0
       0     3441        M 0x80001340 fadd.d  ft4, ft4, ft5          #; ft4  = 10362.0, ft5  = 57.0
       0     3442        M 0x80001344 fld     ft5, 288(a0)           #; ft5  <~~ Doub[0x00100120]
       0     3443        M                                           #; (f:lsu) ft5  <-- 37.0
       0     3444        M                                           #; (f:fpu) ft4  <-- 10419.0
       0     3445        M 0x80001348 fadd.d  ft4, ft4, ft6          #; ft4  = 10419.0, ft6  = 58.0
       0     3446        M 0x8000134c fld     ft6, 296(a0)           #; ft6  <~~ Doub[0x00100128]
       0     3447        M                                           #; (f:lsu) ft6  <-- 38.0
       0     3448        M                                           #; (f:fpu) ft4  <-- 10477.0
       0     3453        M 0x80001350 fadd.d  ft4, ft4, ft7          #; ft4  = 10477.0, ft7  = 59.0
       0     3454        M 0x80001354 fld     ft7, 304(a0)           #; ft7  <~~ Doub[0x00100130]
       0     3455        M                                           #; (f:lsu) ft7  <-- 39.0
       0     3456        M                                           #; (f:fpu) ft4  <-- 10536.0
       0     3457        M 0x80001358 fadd.d  ft4, ft4, fa0          #; ft4  = 10536.0, fa0  = 60.0
       0     3458        M 0x8000135c fld     fa0, 312(a0)           #; fa0  <~~ Doub[0x00100138]
       0     3459        M                                           #; (f:lsu) fa0  <-- 40.0
       0     3460        M                                           #; (f:fpu) ft4  <-- 10596.0
       0     3465        M 0x80001360 fadd.d  ft4, ft4, ft5          #; ft4  = 10596.0, ft5  = 37.0
       0     3466        M 0x80001364 fld     ft5, 320(a0)           #; ft5  <~~ Doub[0x00100140]
       0     3467        M                                           #; (f:lsu) ft5  <-- 41.0
       0     3468        M                                           #; (f:fpu) ft4  <-- 10633.0
       0     3469        M 0x80001368 fadd.d  ft4, ft4, ft6          #; ft4  = 10633.0, ft6  = 38.0
       0     3470        M 0x8000136c fld     ft6, 328(a0)           #; ft6  <~~ Doub[0x00100148]
       0     3471        M                                           #; (f:lsu) ft6  <-- 42.0
       0     3472        M                                           #; (f:fpu) ft4  <-- 10671.0
       0     3477        M 0x80001370 fadd.d  ft4, ft4, ft7          #; ft4  = 10671.0, ft7  = 39.0
       0     3478        M 0x80001374 fld     ft7, 336(a0)           #; ft7  <~~ Doub[0x00100150]
       0     3479        M                                           #; (f:lsu) ft7  <-- 43.0
       0     3480        M                                           #; (f:fpu) ft4  <-- 10710.0
       0     3481        M 0x80001378 fadd.d  ft4, ft4, fa0          #; ft4  = 10710.0, fa0  = 40.0
       0     3482        M 0x8000137c fld     fa0, 344(a0)           #; fa0  <~~ Doub[0x00100158]
       0     3483        M                                           #; (f:lsu) fa0  <-- 44.0
       0     3484        M                                           #; (f:fpu) ft4  <-- 10750.0
       0     3489        M 0x80001380 fadd.d  ft4, ft4, ft5          #; ft4  = 10750.0, ft5  = 41.0
       0     3490        M 0x80001384 fld     ft5, 352(a0)           #; ft5  <~~ Doub[0x00100160]
       0     3491        M                                           #; (f:lsu) ft5  <-- 45.0
       0     3492        M                                           #; (f:fpu) ft4  <-- 10791.0
       0     3493        M 0x80001388 fadd.d  ft4, ft4, ft6          #; ft4  = 10791.0, ft6  = 42.0
       0     3494        M 0x8000138c fld     ft6, 360(a0)           #; ft6  <~~ Doub[0x00100168]
       0     3495        M                                           #; (f:lsu) ft6  <-- 46.0
       0     3496        M                                           #; (f:fpu) ft4  <-- 10833.0
       0     3501        M 0x80001390 fadd.d  ft4, ft4, ft7          #; ft4  = 10833.0, ft7  = 43.0
       0     3502        M 0x80001394 fld     ft7, 368(a0)           #; ft7  <~~ Doub[0x00100170]
       0     3503        M                                           #; (f:lsu) ft7  <-- 47.0
       0     3504        M                                           #; (f:fpu) ft4  <-- 10876.0
       0     3505        M 0x80001398 fadd.d  ft4, ft4, fa0          #; ft4  = 10876.0, fa0  = 44.0
       0     3506        M 0x8000139c fld     fa0, 376(a0)           #; fa0  <~~ Doub[0x00100178]
       0     3507        M                                           #; (f:lsu) fa0  <-- 48.0
       0     3508        M                                           #; (f:fpu) ft4  <-- 10920.0
       0     3513        M 0x800013a0 fadd.d  ft4, ft4, ft5          #; ft4  = 10920.0, ft5  = 45.0
       0     3514        M 0x800013a4 fld     ft5, 192(a0)           #; ft5  <~~ Doub[0x001000c0]
       0     3515        M                                           #; (f:lsu) ft5  <-- 25.0
       0     3516        M                                           #; (f:fpu) ft4  <-- 10965.0
       0     3517        M 0x800013a8 fadd.d  ft4, ft4, ft6          #; ft4  = 10965.0, ft6  = 46.0
       0     3518        M 0x800013ac fld     ft6, 200(a0)           #; ft6  <~~ Doub[0x001000c8]
       0     3519        M                                           #; (f:lsu) ft6  <-- 26.0
       0     3520        M                                           #; (f:fpu) ft4  <-- 11011.0
       0     3525        M 0x800013b0 fadd.d  ft4, ft4, ft7          #; ft4  = 11011.0, ft7  = 47.0
       0     3526        M 0x800013b4 fld     ft7, 208(a0)           #; ft7  <~~ Doub[0x001000d0]
       0     3527        M                                           #; (f:lsu) ft7  <-- 27.0
       0     3528        M                                           #; (f:fpu) ft4  <-- 11058.0
       0     3529        M 0x800013b8 fadd.d  ft4, ft4, fa0          #; ft4  = 11058.0, fa0  = 48.0
       0     3530        M 0x800013bc fld     fa0, 216(a0)           #; fa0  <~~ Doub[0x001000d8]
       0     3531        M                                           #; (f:lsu) fa0  <-- 28.0
       0     3532        M                                           #; (f:fpu) ft4  <-- 11106.0
       0     3537        M 0x800013c0 fadd.d  ft4, ft4, ft5          #; ft4  = 11106.0, ft5  = 25.0
       0     3538        M 0x800013c4 fld     ft5, 224(a0)           #; ft5  <~~ Doub[0x001000e0]
       0     3539        M                                           #; (f:lsu) ft5  <-- 29.0
       0     3540        M                                           #; (f:fpu) ft4  <-- 11131.0
       0     3541        M 0x800013c8 fadd.d  ft4, ft4, ft6          #; ft4  = 11131.0, ft6  = 26.0
       0     3542        M 0x800013cc fld     ft6, 232(a0)           #; ft6  <~~ Doub[0x001000e8]
       0     3543        M                                           #; (f:lsu) ft6  <-- 30.0
       0     3544        M                                           #; (f:fpu) ft4  <-- 11157.0
       0     3549        M 0x800013d0 fadd.d  ft4, ft4, ft7          #; ft4  = 11157.0, ft7  = 27.0
       0     3550        M 0x800013d4 fld     ft7, 240(a0)           #; ft7  <~~ Doub[0x001000f0]
       0     3551        M                                           #; (f:lsu) ft7  <-- 31.0
       0     3552        M                                           #; (f:fpu) ft4  <-- 11184.0
       0     3553        M 0x800013d8 fadd.d  ft4, ft4, fa0          #; ft4  = 11184.0, fa0  = 28.0
       0     3554        M 0x800013dc fld     fa0, 248(a0)           #; fa0  <~~ Doub[0x001000f8]
       0     3555        M                                           #; (f:lsu) fa0  <-- 32.0
       0     3556        M                                           #; (f:fpu) ft4  <-- 11212.0
       0     3561        M 0x800013e0 fadd.d  ft4, ft4, ft5          #; ft4  = 11212.0, ft5  = 29.0
       0     3562        M 0x800013e4 fld     ft5, 256(a0)           #; ft5  <~~ Doub[0x00100100]
       0     3563        M                                           #; (f:lsu) ft5  <-- 33.0
       0     3564        M                                           #; (f:fpu) ft4  <-- 11241.0
       0     3565        M 0x800013e8 fadd.d  ft4, ft4, ft6          #; ft4  = 11241.0, ft6  = 30.0
       0     3566        M 0x800013ec fld     ft6, 264(a0)           #; ft6  <~~ Doub[0x00100108]
       0     3567        M                                           #; (f:lsu) ft6  <-- 34.0
       0     3568        M                                           #; (f:fpu) ft4  <-- 11271.0
       0     3573        M 0x800013f0 fadd.d  ft4, ft4, ft7          #; ft4  = 11271.0, ft7  = 31.0
       0     3574        M 0x800013f4 fld     ft7, 272(a0)           #; ft7  <~~ Doub[0x00100110]
       0     3575        M                                           #; (f:lsu) ft7  <-- 35.0
       0     3576        M                                           #; (f:fpu) ft4  <-- 11302.0
       0     3577        M 0x800013f8 fadd.d  ft4, ft4, fa0          #; ft4  = 11302.0, fa0  = 32.0
       0     3578        M 0x800013fc fld     fa0, 280(a0)           #; fa0  <~~ Doub[0x00100118]
       0     3579        M                                           #; (f:lsu) fa0  <-- 36.0
       0     3580        M                                           #; (f:fpu) ft4  <-- 11334.0
       0     3585        M 0x80001400 fadd.d  ft4, ft4, ft5          #; ft4  = 11334.0, ft5  = 33.0
       0     3586        M 0x80001404 fld     ft5, 96(a0)            #; ft5  <~~ Doub[0x00100060]
       0     3587        M                                           #; (f:lsu) ft5  <-- 13.0
       0     3588        M                                           #; (f:fpu) ft4  <-- 11367.0
       0     3589        M 0x80001408 fadd.d  ft4, ft4, ft6          #; ft4  = 11367.0, ft6  = 34.0
       0     3590        M 0x8000140c fld     ft6, 104(a0)           #; ft6  <~~ Doub[0x00100068]
       0     3591        M                                           #; (f:lsu) ft6  <-- 14.0
       0     3592        M                                           #; (f:fpu) ft4  <-- 11401.0
       0     3597        M 0x80001410 fadd.d  ft4, ft4, ft7          #; ft4  = 11401.0, ft7  = 35.0
       0     3598        M 0x80001414 fld     ft7, 112(a0)           #; ft7  <~~ Doub[0x00100070]
       0     3599        M                                           #; (f:lsu) ft7  <-- 15.0
       0     3600        M                                           #; (f:fpu) ft4  <-- 11436.0
       0     3601        M 0x80001418 fadd.d  ft4, ft4, fa0          #; ft4  = 11436.0, fa0  = 36.0
       0     3602        M 0x8000141c fld     fa0, 120(a0)           #; fa0  <~~ Doub[0x00100078]
       0     3603        M                                           #; (f:lsu) fa0  <-- 16.0
       0     3604        M                                           #; (f:fpu) ft4  <-- 11472.0
       0     3609        M 0x80001420 fadd.d  ft4, ft4, ft5          #; ft4  = 11472.0, ft5  = 13.0
       0     3610        M 0x80001424 fld     ft5, 128(a0)           #; ft5  <~~ Doub[0x00100080]
       0     3611        M                                           #; (f:lsu) ft5  <-- 17.0
       0     3612        M                                           #; (f:fpu) ft4  <-- 11485.0
       0     3613        M 0x80001428 fadd.d  ft4, ft4, ft6          #; ft4  = 11485.0, ft6  = 14.0
       0     3614        M 0x8000142c fld     ft6, 136(a0)           #; ft6  <~~ Doub[0x00100088]
       0     3615        M                                           #; (f:lsu) ft6  <-- 18.0
       0     3616        M                                           #; (f:fpu) ft4  <-- 11499.0
       0     3621        M 0x80001430 fadd.d  ft4, ft4, ft7          #; ft4  = 11499.0, ft7  = 15.0
       0     3622        M 0x80001434 fld     ft7, 144(a0)           #; ft7  <~~ Doub[0x00100090]
       0     3623        M                                           #; (f:lsu) ft7  <-- 19.0
       0     3624        M                                           #; (f:fpu) ft4  <-- 11514.0
       0     3625        M 0x80001438 fadd.d  ft4, ft4, fa0          #; ft4  = 11514.0, fa0  = 16.0
       0     3626        M 0x8000143c fld     fa0, 152(a0)           #; fa0  <~~ Doub[0x00100098]
       0     3627        M                                           #; (f:lsu) fa0  <-- 20.0
       0     3628        M                                           #; (f:fpu) ft4  <-- 11530.0
       0     3633        M 0x80001440 fadd.d  ft4, ft4, ft5          #; ft4  = 11530.0, ft5  = 17.0
       0     3634        M 0x80001444 fld     ft5, 160(a0)           #; ft5  <~~ Doub[0x001000a0]
       0     3635        M                                           #; (f:lsu) ft5  <-- 21.0
       0     3636        M                                           #; (f:fpu) ft4  <-- 11547.0
       0     3637        M 0x80001448 fadd.d  ft4, ft4, ft6          #; ft4  = 11547.0, ft6  = 18.0
       0     3638        M 0x8000144c fld     ft6, 168(a0)           #; ft6  <~~ Doub[0x001000a8]
       0     3639        M                                           #; (f:lsu) ft6  <-- 22.0
       0     3640        M                                           #; (f:fpu) ft4  <-- 11565.0
       0     3645        M 0x80001450 fadd.d  ft4, ft4, ft7          #; ft4  = 11565.0, ft7  = 19.0
       0     3646        M 0x80001454 fld     ft7, 176(a0)           #; ft7  <~~ Doub[0x001000b0]
       0     3647        M                                           #; (f:lsu) ft7  <-- 23.0
       0     3648        M                                           #; (f:fpu) ft4  <-- 11584.0
       0     3649        M 0x80001458 fadd.d  ft4, ft4, fa0          #; ft4  = 11584.0, fa0  = 20.0
       0     3650        M 0x8000145c fld     fa0, 184(a0)           #; fa0  <~~ Doub[0x001000b8]
       0     3651        M                                           #; (f:lsu) fa0  <-- 24.0
       0     3652        M                                           #; (f:fpu) ft4  <-- 11604.0
       0     3657        M 0x80001460 fadd.d  ft4, ft4, ft5          #; ft4  = 11604.0, ft5  = 21.0
       0     3658        M 0x80001464 fld     ft5, 0(a0)             #; ft5  <~~ Doub[0x00100000]
       0     3659        M                                           #; (f:lsu) ft5  <-- 1.0
       0     3660        M                                           #; (f:fpu) ft4  <-- 11625.0
       0     3661        M 0x80001468 fadd.d  ft4, ft4, ft6          #; ft4  = 11625.0, ft6  = 22.0
       0     3662        M 0x8000146c fld     ft6, 8(a0)             #; ft6  <~~ Doub[0x00100008]
       0     3663        M                                           #; (f:lsu) ft6  <-- 2.0
       0     3664        M                                           #; (f:fpu) ft4  <-- 11647.0
       0     3669        M 0x80001470 fadd.d  ft4, ft4, ft7          #; ft4  = 11647.0, ft7  = 23.0
       0     3670        M 0x80001474 fld     ft7, 16(a0)            #; ft7  <~~ Doub[0x00100010]
       0     3671        M                                           #; (f:lsu) ft7  <-- 3.0
       0     3672        M                                           #; (f:fpu) ft4  <-- 11670.0
       0     3673        M 0x80001478 fadd.d  ft4, ft4, fa0          #; ft4  = 11670.0, fa0  = 24.0
       0     3674        M 0x8000147c fld     fa0, 24(a0)            #; fa0  <~~ Doub[0x00100018]
       0     3675        M                                           #; (f:lsu) fa0  <-- 4.0
       0     3676        M                                           #; (f:fpu) ft4  <-- 11694.0
       0     3681        M 0x80001480 fadd.d  ft4, ft4, ft5          #; ft4  = 11694.0, ft5  = 1.0
       0     3682        M 0x80001484 fld     ft5, 32(a0)            #; ft5  <~~ Doub[0x00100020]
       0     3683        M                                           #; (f:lsu) ft5  <-- 5.0
       0     3684        M                                           #; (f:fpu) ft4  <-- 11695.0
       0     3685        M 0x80001488 fadd.d  ft4, ft4, ft6          #; ft4  = 11695.0, ft6  = 2.0
       0     3686        M 0x8000148c fld     ft6, 40(a0)            #; ft6  <~~ Doub[0x00100028]
       0     3687        M                                           #; (f:lsu) ft6  <-- 6.0
       0     3688        M                                           #; (f:fpu) ft4  <-- 11697.0
       0     3693        M 0x80001490 fadd.d  ft4, ft4, ft7          #; ft4  = 11697.0, ft7  = 3.0
       0     3694        M 0x80001494 fld     ft7, 48(a0)            #; ft7  <~~ Doub[0x00100030]
       0     3695        M                                           #; (f:lsu) ft7  <-- 7.0
       0     3696        M                                           #; (f:fpu) ft4  <-- 11700.0
       0     3697        M 0x80001498 fadd.d  ft4, ft4, fa0          #; ft4  = 11700.0, fa0  = 4.0
       0     3698        M 0x8000149c fld     fa0, 56(a0)            #; fa0  <~~ Doub[0x00100038]
       0     3699        M                                           #; (f:lsu) fa0  <-- 8.0
       0     3700        M                                           #; (f:fpu) ft4  <-- 11704.0
       0     3705        M 0x800014a0 fadd.d  ft4, ft4, ft5          #; ft4  = 11704.0, ft5  = 5.0
       0     3706        M 0x800014a4 fld     ft5, 64(a0)            #; ft5  <~~ Doub[0x00100040]
       0     3707        M                                           #; (f:lsu) ft5  <-- 9.0
       0     3708        M                                           #; (f:fpu) ft4  <-- 11709.0
       0     3709        M 0x800014a8 fadd.d  ft4, ft4, ft6          #; ft4  = 11709.0, ft6  = 6.0
       0     3710        M 0x800014ac fld     ft6, 72(a0)            #; ft6  <~~ Doub[0x00100048]
       0     3711        M                                           #; (f:lsu) ft6  <-- 10.0
       0     3712        M                                           #; (f:fpu) ft4  <-- 11715.0
       0     3717        M 0x800014b0 fadd.d  ft4, ft4, ft7          #; ft4  = 11715.0, ft7  = 7.0
       0     3718        M 0x800014b4 fld     ft7, 80(a0)            #; ft7  <~~ Doub[0x00100050]
       0     3719        M                                           #; (f:lsu) ft7  <-- 11.0
       0     3720        M                                           #; (f:fpu) ft4  <-- 11722.0
       0     3721        M 0x800014b8 fadd.d  ft4, ft4, fa0          #; ft4  = 11722.0, fa0  = 8.0
       0     3722        M 0x800014bc fld     fa0, 88(a0)            #; fa0  <~~ Doub[0x00100058]
       0     3723        M                                           #; (f:lsu) fa0  <-- 12.0
       0     3724        M                                           #; (f:fpu) ft4  <-- 11730.0
       0     3728        M 0x800014c4 auipc   a0, 0x2                #; (wrb) a0  <-- 0x800034c4
       0     3729        M 0x800014c8 addi    a0, a0, 1620           #; a0  = 0x800034c4, (wrb) a0  <-- 0x80003b18
                         M 0x800014c0 fadd.d  ft4, ft4, ft5          #; ft4  = 11730.0, ft5  = 9.0
       0     3732        M 0x800014cc fld     ft5, 0(a0)             #; ft5  <~~ Doub[0x80003b18], (f:fpu) ft4  <-- 11739.0
       0     3741        M 0x800014d0 fadd.d  ft4, ft4, ft6          #; ft4  = 11739.0, ft6  = 10.0, (f:lsu) ft5  <-- -2.0
       0     3744        M                                           #; (f:fpu) ft4  <-- 11749.0
       0     3745        M 0x800014d4 fadd.d  ft4, ft4, ft7          #; ft4  = 11749.0, ft7  = 11.0
       0     3748        M                                           #; (f:fpu) ft4  <-- 11760.0
       0     3749        M 0x800014d8 fadd.d  ft4, ft4, fa0          #; ft4  = 11760.0, fa0  = 12.0
       0     3752        M                                           #; (f:fpu) ft4  <-- 11772.0
       0     3753        M 0x800014e8 lw      a2, 672(sp)            #; sp  = 0x0011fc50, a2  <~~ Word[0x0011fef0]
                         M 0x800014dc fmadd.d ft3, ft3, ft5, ft4     #; ft3  = 5886.0, ft5  = -2.0, ft4  = 11772.0
       0     3756        M                                           #; (lsu) a2  <-- 0
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     3757        M 0x800014ec lw      a3, 676(sp)            #; sp  = 0x0011fc50, a3  <~~ Word[0x0011fef4]
                         M 0x800014e0 fsgnjx.d fs0, ft3, ft3         #; ft3  = 0.0, ft3  = 0.0
       0     3758        M                                           #; (f:fpu) fs0  <-- 0.0
       0     3759        M 0x800014e4 fsd     fs0, 672(sp)           #; 0.0 ~~> Doub[0x0011fef0]
       0     3760        M                                           #; (lsu) a3  <-- 0
       0     3763        M 0x800014f0 auipc   a0, 0x2                #; (wrb) a0  <-- 0x800034f0
       0     3764        M 0x800014f4 addi    a0, a0, 917            #; a0  = 0x800034f0, (wrb) a0  <-- 0x80003885
       0     3765        M 0x800014f8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800014f8
       0     3766        M 0x800014fc jalr    ra, ra, 84             #; ra  = 0x800014f8, (wrb) ra  <-- 0x80001500, goto 0x8000154c
       0     3777        M 0x8000154c addi    sp, sp, -48            #; sp  = 0x0011fc50, (wrb) sp  <-- 0x0011fc20
       0     3780        M 0x80001550 sw      ra, 12(sp)             #; sp  = 0x0011fc20, 0x80001500 ~~> Word[0x0011fc2c]
       0     3781        M 0x80001554 mv      t0, a0                 #; a0  = 0x80003885, (wrb) t0  <-- 0x80003885
       0     3782        M 0x80001558 sw      a7, 44(sp)             #; sp  = 0x0011fc20, 0xffff0000 ~~> Word[0x0011fc4c]
       0     3783        M 0x8000155c sw      a6, 40(sp)             #; sp  = 0x0011fc20, 0x00120000 ~~> Word[0x0011fc48]
       0     3792        M 0x80001560 sw      a5, 36(sp)             #; sp  = 0x0011fc20, 192 ~~> Word[0x0011fc44]
       0     3793        M 0x80001564 sw      a4, 32(sp)             #; sp  = 0x0011fc20, 224 ~~> Word[0x0011fc40]
       0     3794        M 0x80001568 sw      a3, 28(sp)             #; sp  = 0x0011fc20, 0 ~~> Word[0x0011fc3c]
       0     3795        M 0x8000156c sw      a2, 24(sp)             #; sp  = 0x0011fc20, 0 ~~> Word[0x0011fc38]
       0     3804        M 0x80001570 sw      a1, 20(sp)             #; sp  = 0x0011fc20, 32 ~~> Word[0x0011fc34]
       0     3805        M 0x80001574 addi    a0, sp, 20             #; sp  = 0x0011fc20, (wrb) a0  <-- 0x0011fc34
       0     3806        M 0x80001578 sw      a0, 8(sp)              #; sp  = 0x0011fc20, 0x0011fc34 ~~> Word[0x0011fc28]
       0     3807        M 0x8000157c auipc   a0, 0x1                #; (wrb) a0  <-- 0x8000257c
       0     3816        M 0x80001580 addi    a0, a0, -988           #; a0  = 0x8000257c, (wrb) a0  <-- 0x800021a0
       0     3817        M 0x80001584 addi    a1, sp, 7              #; sp  = 0x0011fc20, (wrb) a1  <-- 0x0011fc27
       0     3818        M 0x80001588 li      a2, -1                 #; (wrb) a2  <-- -1
       0     3819        M 0x8000158c addi    a4, sp, 20             #; sp  = 0x0011fc20, (wrb) a4  <-- 0x0011fc34
       0     3828        M 0x80001590 mv      a3, t0                 #; t0  = 0x80003885, (wrb) a3  <-- 0x80003885
       0     3829        M 0x80001594 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80001594
       0     3830        M 0x80001598 jalr    ra, ra, 20             #; ra  = 0x80001594, (wrb) ra  <-- 0x8000159c, goto 0x800015a8
       0     3840        M 0x800015a8 addi    sp, sp, -112           #; sp  = 0x0011fc20, (wrb) sp  <-- 0x0011fbb0
       0     3841        M 0x800015ac sw      ra, 108(sp)            #; sp  = 0x0011fbb0, 0x8000159c ~~> Word[0x0011fc1c]
       0     3852        M 0x800015b0 sw      s0, 104(sp)            #; sp  = 0x0011fbb0, 0 ~~> Word[0x0011fc18]
       0     3853        M 0x800015b4 sw      s1, 100(sp)            #; sp  = 0x0011fbb0, 0 ~~> Word[0x0011fc14]
       0     3854        M 0x800015b8 sw      s2, 96(sp)             #; sp  = 0x0011fbb0, 0 ~~> Word[0x0011fc10]
       0     3855        M 0x800015bc sw      s3, 92(sp)             #; sp  = 0x0011fbb0, 0 ~~> Word[0x0011fc0c]
       0     3864        M 0x800015c0 sw      s4, 88(sp)             #; sp  = 0x0011fbb0, 0 ~~> Word[0x0011fc08]
       0     3865        M 0x800015c4 sw      s5, 84(sp)             #; sp  = 0x0011fbb0, 0 ~~> Word[0x0011fc04]
       0     3866        M 0x800015c8 sw      s6, 80(sp)             #; sp  = 0x0011fbb0, 0 ~~> Word[0x0011fc00]
       0     3867        M 0x800015cc sw      s7, 76(sp)             #; sp  = 0x0011fbb0, 0 ~~> Word[0x0011fbfc]
       0     3876        M 0x800015d0 sw      s8, 72(sp)             #; sp  = 0x0011fbb0, 0 ~~> Word[0x0011fbf8]
       0     3877        M 0x800015d4 sw      s9, 68(sp)             #; sp  = 0x0011fbb0, 0 ~~> Word[0x0011fbf4]
       0     3878        M 0x800015d8 sw      s10, 64(sp)            #; sp  = 0x0011fbb0, 0 ~~> Word[0x0011fbf0]
       0     3879        M 0x800015dc sw      s11, 60(sp)            #; sp  = 0x0011fbb0, 0 ~~> Word[0x0011fbec]
       0     3888        M 0x800015e0 mv      s3, a4                 #; a4  = 0x0011fc34, (wrb) s3  <-- 0x0011fc34
       0     3889        M 0x800015e4 mv      s0, a3                 #; a3  = 0x80003885, (wrb) s0  <-- 0x80003885
       0     3890        M 0x800015e8 mv      s5, a2                 #; a2  = -1, (wrb) s5  <-- -1
       0     3891        M 0x800015ec mv      s4, a1                 #; a1  = 0x0011fc27, (wrb) s4  <-- 0x0011fc27
       0     3900        M 0x800015f0 beqz    a1, pc + 12            #; a1  = 0x0011fc27, not taken
       0     3901        M 0x800015f4 mv      s2, a0                 #; a0  = 0x800021a0, (wrb) s2  <-- 0x800021a0
       0     3902        M 0x800015f8 j       pc + 0xc               #; goto 0x80001604
       0     3912        M 0x80001604 li      s8, 0                  #; (wrb) s8  <-- 0
       0     3913        M 0x80001608 li      s6, 37                 #; (wrb) s6  <-- 37
       0     3914        M 0x8000160c li      s11, 16                #; (wrb) s11 <-- 16
       0     3924        M 0x80001610 li      s7, 46                 #; (wrb) s7  <-- 46
       0     3925        M 0x80001614 lui     a0, 0x1                #; (wrb) a0  <-- 4096
       0     3926        M 0x80001618 addi    a0, a0, -2048          #; a0  = 4096, (wrb) a0  <-- 2048
       0     3927        M 0x8000161c sw      a0, 24(sp)             #; sp  = 0x0011fbb0, 2048 ~~> Word[0x0011fbc8]
       0     3936        M 0x80001620 lui     a0, 0x10               #; (wrb) a0  <-- 0x00010000
       0     3937        M 0x80001624 addi    a0, a0, -1             #; a0  = 0x00010000, (wrb) a0  <-- 65535
       0     3938        M 0x80001628 sw      a0, 16(sp)             #; sp  = 0x0011fbb0, 65535 ~~> Word[0x0011fbc0]
       0     3939        M 0x8000162c addi    s10, s0, 2             #; s0  = 0x80003885, (wrb) s10 <-- 0x80003887
       0     3948        M 0x80001630 mv      s9, s8                 #; s8  = 0, (wrb) s9  <-- 0
       0     3949        M 0x80001634 li      s8, 10                 #; (wrb) s8  <-- 10
       0     3950        M 0x80001638 lbu     a0, 0(s0)              #; s0  = 0x80003885, a0  <~~ Byte[0x80003885]
       0     3961        M                                           #; (lsu) a0  <-- 101
       0     3962        M 0x8000163c beqz    a0, pc + 2824          #; a0  = 101, not taken
       0     3963        M 0x80001640 beq     a0, s6, pc + 48        #; a0  = 101, s6  = 37, not taken
       0     3964        M 0x80001644 addi    s1, s9, 1              #; s9  = 0, (wrb) s1  <-- 1
       0     3965        M 0x80001648 mv      a1, s4                 #; s4  = 0x0011fc27, (wrb) a1  <-- 0x0011fc27
       0     3966        M 0x8000164c mv      a2, s9                 #; s9  = 0, (wrb) a2  <-- 0
       0     3975        M 0x80001650 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3976        M 0x80001654 jalr    s2                     #; s2  = 0x800021a0, (wrb) ra  <-- 0x80001658, goto 0x800021a0
       0     3998        M 0x800021a0 beqz    a0, pc + 168           #; a0  = 101, not taken
       0     3999        M 0x800021a4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4000        M 0x800021a8 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4001        M 0x800021ac mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4010        M 0x800021b0 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800041b0
       0     4011        M 0x800021b4 addi    a3, a3, -1500          #; a3  = 0x800041b0, (wrb) a3  <-- 0x80003bd4
       0     4012        M 0x800021b8 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003bd4, (wrb) a1  <-- 0x80003bd4
       0     4013        M 0x800021bc lw      a4, 0(a1)              #; a1  = 0x80003bd4, a4  <~~ Word[0x80003bd4]
       0     4024        M                                           #; (lsu) a4  <-- 0
       0     4025        M 0x800021c0 addi    a5, a4, 1              #; a4  = 0, (wrb) a5  <-- 1
       0     4026        M 0x800021c4 sw      a5, 0(a1)              #; a1  = 0x80003bd4, 1 ~~> Word[0x80003bd4]
       0     4027        M 0x800021c8 add     a4, a1, a4             #; a1  = 0x80003bd4, a4  = 0, (wrb) a4  <-- 0x80003bd4
       0     4028        M 0x800021cc sb      a0, 72(a4)             #; a4  = 0x80003bd4, 101 ~~> Byte[0x80003c1c]
       0     4034        M 0x800021d0 lw      a4, 0(a1)              #; a1  = 0x80003bd4, a4  <~~ Word[0x80003bd4]
       0     4050        M                                           #; (lsu) a4  <-- 1
       0     4051        M 0x800021d4 addi    a4, a4, -1020          #; a4  = 1, (wrb) a4  <-- -1019
       0     4052        M 0x800021d8 snez    a4, a4                 #; a4  = -1019, (wrb) a4  <-- 1
       0     4053        M 0x800021dc addi    a0, a0, -10            #; a0  = 101, (wrb) a0  <-- 91
       0     4054        M 0x800021e0 snez    a0, a0                 #; a0  = 91, (wrb) a0  <-- 1
       0     4055        M 0x800021e4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4056        M 0x800021e8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80002248
       0     4077        M 0x80002248 ret                            #; ra  = 0x80001658, goto 0x80001658
       0     4091        M 0x80001658 addi    s0, s0, 1              #; s0  = 0x80003885, (wrb) s0  <-- 0x80003886
       0     4092        M 0x8000165c addi    s10, s10, 1            #; s10 = 0x80003887, (wrb) s10 <-- 0x80003888
       0     4094        M 0x80001660 mv      s9, s1                 #; s1  = 1, (wrb) s9  <-- 1
       0     4095        M 0x80001664 lbu     a0, 0(s0)              #; s0  = 0x80003886, a0  <~~ Byte[0x80003886]
       0     4106        M                                           #; (lsu) a0  <-- 114
       0     4107        M 0x80001668 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80001640
       0     4108        M 0x80001640 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     4109        M 0x80001644 addi    s1, s9, 1              #; s9  = 1, (wrb) s1  <-- 2
       0     4110        M 0x80001648 mv      a1, s4                 #; s4  = 0x0011fc27, (wrb) a1  <-- 0x0011fc27
       0     4111        M 0x8000164c mv      a2, s9                 #; s9  = 1, (wrb) a2  <-- 1
       0     4112        M 0x80001650 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     4113        M 0x80001654 jalr    s2                     #; s2  = 0x800021a0, (wrb) ra  <-- 0x80001658, goto 0x800021a0
       0     4116        M 0x800021a0 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     4117        M 0x800021a4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4118        M 0x800021a8 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4119        M 0x800021ac mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4120        M 0x800021b0 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800041b0
       0     4121        M 0x800021b4 addi    a3, a3, -1500          #; a3  = 0x800041b0, (wrb) a3  <-- 0x80003bd4
       0     4122        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4123        M 0x800021b8 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003bd4, (wrb) a1  <-- 0x80003bd4
       0     4124        M 0x800021bc lw      a4, 0(a1)              #; a1  = 0x80003bd4, a4  <~~ Word[0x80003bd4]
       0     4135        M                                           #; (lsu) a4  <-- 1
       0     4136        M 0x800021c0 addi    a5, a4, 1              #; a4  = 1, (wrb) a5  <-- 2
       0     4137        M 0x800021c4 sw      a5, 0(a1)              #; a1  = 0x80003bd4, 2 ~~> Word[0x80003bd4]
       0     4138        M 0x800021c8 add     a4, a1, a4             #; a1  = 0x80003bd4, a4  = 1, (wrb) a4  <-- 0x80003bd5
       0     4139        M 0x800021cc sb      a0, 72(a4)             #; a4  = 0x80003bd5, 114 ~~> Byte[0x80003c1d]
       0     4140        M 0x800021d0 lw      a4, 0(a1)              #; a1  = 0x80003bd4, a4  <~~ Word[0x80003bd4]
       0     4161        M                                           #; (lsu) a4  <-- 2
       0     4162        M 0x800021d4 addi    a4, a4, -1020          #; a4  = 2, (wrb) a4  <-- -1018
       0     4163        M 0x800021d8 snez    a4, a4                 #; a4  = -1018, (wrb) a4  <-- 1
       0     4164        M 0x800021dc addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     4165        M 0x800021e0 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     4166        M 0x800021e4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4167        M 0x800021e8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80002248
       0     4170        M 0x80002248 ret                            #; ra  = 0x80001658, goto 0x80001658
       0     4175        M 0x80001658 addi    s0, s0, 1              #; s0  = 0x80003886, (wrb) s0  <-- 0x80003887
       0     4176        M 0x8000165c addi    s10, s10, 1            #; s10 = 0x80003888, (wrb) s10 <-- 0x80003889
       0     4178        M 0x80001660 mv      s9, s1                 #; s1  = 2, (wrb) s9  <-- 2
       0     4179        M 0x80001664 lbu     a0, 0(s0)              #; s0  = 0x80003887, a0  <~~ Byte[0x80003887]
       0     4190        M                                           #; (lsu) a0  <-- 114
       0     4191        M 0x80001668 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80001640
       0     4192        M 0x80001640 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     4193        M 0x80001644 addi    s1, s9, 1              #; s9  = 2, (wrb) s1  <-- 3
       0     4194        M 0x80001648 mv      a1, s4                 #; s4  = 0x0011fc27, (wrb) a1  <-- 0x0011fc27
       0     4195        M 0x8000164c mv      a2, s9                 #; s9  = 2, (wrb) a2  <-- 2
       0     4196        M 0x80001650 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     4197        M 0x80001654 jalr    s2                     #; s2  = 0x800021a0, (wrb) ra  <-- 0x80001658, goto 0x800021a0
       0     4200        M 0x800021a0 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     4201        M 0x800021a4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4202        M 0x800021a8 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4203        M 0x800021ac mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4204        M 0x800021b0 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800041b0
       0     4205        M 0x800021b4 addi    a3, a3, -1500          #; a3  = 0x800041b0, (wrb) a3  <-- 0x80003bd4
       0     4206        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4207        M 0x800021b8 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003bd4, (wrb) a1  <-- 0x80003bd4
       0     4208        M 0x800021bc lw      a4, 0(a1)              #; a1  = 0x80003bd4, a4  <~~ Word[0x80003bd4]
       0     4219        M                                           #; (lsu) a4  <-- 2
       0     4220        M 0x800021c0 addi    a5, a4, 1              #; a4  = 2, (wrb) a5  <-- 3
       0     4221        M 0x800021c4 sw      a5, 0(a1)              #; a1  = 0x80003bd4, 3 ~~> Word[0x80003bd4]
       0     4222        M 0x800021c8 add     a4, a1, a4             #; a1  = 0x80003bd4, a4  = 2, (wrb) a4  <-- 0x80003bd6
       0     4223        M 0x800021cc sb      a0, 72(a4)             #; a4  = 0x80003bd6, 114 ~~> Byte[0x80003c1e]
       0     4224        M 0x800021d0 lw      a4, 0(a1)              #; a1  = 0x80003bd4, a4  <~~ Word[0x80003bd4]
       0     4245        M                                           #; (lsu) a4  <-- 3
       0     4246        M 0x800021d4 addi    a4, a4, -1020          #; a4  = 3, (wrb) a4  <-- -1017
       0     4247        M 0x800021d8 snez    a4, a4                 #; a4  = -1017, (wrb) a4  <-- 1
       0     4248        M 0x800021dc addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     4249        M 0x800021e0 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     4250        M 0x800021e4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4251        M 0x800021e8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80002248
       0     4254        M 0x80002248 ret                            #; ra  = 0x80001658, goto 0x80001658
       0     4259        M 0x80001658 addi    s0, s0, 1              #; s0  = 0x80003887, (wrb) s0  <-- 0x80003888
       0     4260        M 0x8000165c addi    s10, s10, 1            #; s10 = 0x80003889, (wrb) s10 <-- 0x8000388a
       0     4262        M 0x80001660 mv      s9, s1                 #; s1  = 3, (wrb) s9  <-- 3
       0     4263        M 0x80001664 lbu     a0, 0(s0)              #; s0  = 0x80003888, a0  <~~ Byte[0x80003888]
       0     4274        M                                           #; (lsu) a0  <-- 111
       0     4275        M 0x80001668 bnez    a0, pc - 40            #; a0  = 111, taken, goto 0x80001640
       0     4276        M 0x80001640 beq     a0, s6, pc + 48        #; a0  = 111, s6  = 37, not taken
       0     4277        M 0x80001644 addi    s1, s9, 1              #; s9  = 3, (wrb) s1  <-- 4
       0     4278        M 0x80001648 mv      a1, s4                 #; s4  = 0x0011fc27, (wrb) a1  <-- 0x0011fc27
       0     4279        M 0x8000164c mv      a2, s9                 #; s9  = 3, (wrb) a2  <-- 3
       0     4280        M 0x80001650 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     4281        M 0x80001654 jalr    s2                     #; s2  = 0x800021a0, (wrb) ra  <-- 0x80001658, goto 0x800021a0
       0     4284        M 0x800021a0 beqz    a0, pc + 168           #; a0  = 111, not taken
       0     4285        M 0x800021a4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4286        M 0x800021a8 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4287        M 0x800021ac mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4288        M 0x800021b0 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800041b0
       0     4289        M 0x800021b4 addi    a3, a3, -1500          #; a3  = 0x800041b0, (wrb) a3  <-- 0x80003bd4
       0     4290        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4291        M 0x800021b8 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003bd4, (wrb) a1  <-- 0x80003bd4
       0     4292        M 0x800021bc lw      a4, 0(a1)              #; a1  = 0x80003bd4, a4  <~~ Word[0x80003bd4]
       0     4303        M                                           #; (lsu) a4  <-- 3
       0     4304        M 0x800021c0 addi    a5, a4, 1              #; a4  = 3, (wrb) a5  <-- 4
       0     4305        M 0x800021c4 sw      a5, 0(a1)              #; a1  = 0x80003bd4, 4 ~~> Word[0x80003bd4]
       0     4306        M 0x800021c8 add     a4, a1, a4             #; a1  = 0x80003bd4, a4  = 3, (wrb) a4  <-- 0x80003bd7
       0     4307        M 0x800021cc sb      a0, 72(a4)             #; a4  = 0x80003bd7, 111 ~~> Byte[0x80003c1f]
       0     4308        M 0x800021d0 lw      a4, 0(a1)              #; a1  = 0x80003bd4, a4  <~~ Word[0x80003bd4]
       0     4329        M                                           #; (lsu) a4  <-- 4
       0     4330        M 0x800021d4 addi    a4, a4, -1020          #; a4  = 4, (wrb) a4  <-- -1016
       0     4331        M 0x800021d8 snez    a4, a4                 #; a4  = -1016, (wrb) a4  <-- 1
       0     4332        M 0x800021dc addi    a0, a0, -10            #; a0  = 111, (wrb) a0  <-- 101
       0     4333        M 0x800021e0 snez    a0, a0                 #; a0  = 101, (wrb) a0  <-- 1
       0     4334        M 0x800021e4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4335        M 0x800021e8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80002248
       0     4338        M 0x80002248 ret                            #; ra  = 0x80001658, goto 0x80001658
       0     4343        M 0x80001658 addi    s0, s0, 1              #; s0  = 0x80003888, (wrb) s0  <-- 0x80003889
       0     4344        M 0x8000165c addi    s10, s10, 1            #; s10 = 0x8000388a, (wrb) s10 <-- 0x8000388b
       0     4346        M 0x80001660 mv      s9, s1                 #; s1  = 4, (wrb) s9  <-- 4
       0     4347        M 0x80001664 lbu     a0, 0(s0)              #; s0  = 0x80003889, a0  <~~ Byte[0x80003889]
       0     4358        M                                           #; (lsu) a0  <-- 114
       0     4359        M 0x80001668 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80001640
       0     4360        M 0x80001640 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     4361        M 0x80001644 addi    s1, s9, 1              #; s9  = 4, (wrb) s1  <-- 5
       0     4362        M 0x80001648 mv      a1, s4                 #; s4  = 0x0011fc27, (wrb) a1  <-- 0x0011fc27
       0     4363        M 0x8000164c mv      a2, s9                 #; s9  = 4, (wrb) a2  <-- 4
       0     4364        M 0x80001650 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     4365        M 0x80001654 jalr    s2                     #; s2  = 0x800021a0, (wrb) ra  <-- 0x80001658, goto 0x800021a0
       0     4368        M 0x800021a0 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     4369        M 0x800021a4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4370        M 0x800021a8 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4371        M 0x800021ac mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4372        M 0x800021b0 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800041b0
       0     4373        M 0x800021b4 addi    a3, a3, -1500          #; a3  = 0x800041b0, (wrb) a3  <-- 0x80003bd4
       0     4374        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4375        M 0x800021b8 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003bd4, (wrb) a1  <-- 0x80003bd4
       0     4376        M 0x800021bc lw      a4, 0(a1)              #; a1  = 0x80003bd4, a4  <~~ Word[0x80003bd4]
       0     4387        M                                           #; (lsu) a4  <-- 4
       0     4388        M 0x800021c0 addi    a5, a4, 1              #; a4  = 4, (wrb) a5  <-- 5
       0     4389        M 0x800021c4 sw      a5, 0(a1)              #; a1  = 0x80003bd4, 5 ~~> Word[0x80003bd4]
       0     4390        M 0x800021c8 add     a4, a1, a4             #; a1  = 0x80003bd4, a4  = 4, (wrb) a4  <-- 0x80003bd8
       0     4391        M 0x800021cc sb      a0, 72(a4)             #; a4  = 0x80003bd8, 114 ~~> Byte[0x80003c20]
       0     4392        M 0x800021d0 lw      a4, 0(a1)              #; a1  = 0x80003bd4, a4  <~~ Word[0x80003bd4]
       0     4413        M                                           #; (lsu) a4  <-- 5
       0     4414        M 0x800021d4 addi    a4, a4, -1020          #; a4  = 5, (wrb) a4  <-- -1015
       0     4415        M 0x800021d8 snez    a4, a4                 #; a4  = -1015, (wrb) a4  <-- 1
       0     4416        M 0x800021dc addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     4417        M 0x800021e0 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     4418        M 0x800021e4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4419        M 0x800021e8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80002248
       0     4422        M 0x80002248 ret                            #; ra  = 0x80001658, goto 0x80001658
       0     4427        M 0x80001658 addi    s0, s0, 1              #; s0  = 0x80003889, (wrb) s0  <-- 0x8000388a
       0     4428        M 0x8000165c addi    s10, s10, 1            #; s10 = 0x8000388b, (wrb) s10 <-- 0x8000388c
       0     4430        M 0x80001660 mv      s9, s1                 #; s1  = 5, (wrb) s9  <-- 5
       0     4431        M 0x80001664 lbu     a0, 0(s0)              #; s0  = 0x8000388a, a0  <~~ Byte[0x8000388a]
       0     4442        M                                           #; (lsu) a0  <-- 32
       0     4443        M 0x80001668 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80001640
       0     4444        M 0x80001640 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     4445        M 0x80001644 addi    s1, s9, 1              #; s9  = 5, (wrb) s1  <-- 6
       0     4446        M 0x80001648 mv      a1, s4                 #; s4  = 0x0011fc27, (wrb) a1  <-- 0x0011fc27
       0     4447        M 0x8000164c mv      a2, s9                 #; s9  = 5, (wrb) a2  <-- 5
       0     4448        M 0x80001650 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     4449        M 0x80001654 jalr    s2                     #; s2  = 0x800021a0, (wrb) ra  <-- 0x80001658, goto 0x800021a0
       0     4452        M 0x800021a0 beqz    a0, pc + 168           #; a0  = 32, not taken
       0     4453        M 0x800021a4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4454        M 0x800021a8 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4455        M 0x800021ac mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4456        M 0x800021b0 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800041b0
       0     4457        M 0x800021b4 addi    a3, a3, -1500          #; a3  = 0x800041b0, (wrb) a3  <-- 0x80003bd4
       0     4458        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4459        M 0x800021b8 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003bd4, (wrb) a1  <-- 0x80003bd4
       0     4460        M 0x800021bc lw      a4, 0(a1)              #; a1  = 0x80003bd4, a4  <~~ Word[0x80003bd4]
       0     4471        M                                           #; (lsu) a4  <-- 5
       0     4472        M 0x800021c0 addi    a5, a4, 1              #; a4  = 5, (wrb) a5  <-- 6
       0     4473        M 0x800021c4 sw      a5, 0(a1)              #; a1  = 0x80003bd4, 6 ~~> Word[0x80003bd4]
       0     4474        M 0x800021c8 add     a4, a1, a4             #; a1  = 0x80003bd4, a4  = 5, (wrb) a4  <-- 0x80003bd9
       0     4475        M 0x800021cc sb      a0, 72(a4)             #; a4  = 0x80003bd9, 32 ~~> Byte[0x80003c21]
       0     4476        M 0x800021d0 lw      a4, 0(a1)              #; a1  = 0x80003bd4, a4  <~~ Word[0x80003bd4]
       0     4497        M                                           #; (lsu) a4  <-- 6
       0     4498        M 0x800021d4 addi    a4, a4, -1020          #; a4  = 6, (wrb) a4  <-- -1014
       0     4499        M 0x800021d8 snez    a4, a4                 #; a4  = -1014, (wrb) a4  <-- 1
       0     4500        M 0x800021dc addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
       0     4501        M 0x800021e0 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
       0     4502        M 0x800021e4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4503        M 0x800021e8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80002248
       0     4506        M 0x80002248 ret                            #; ra  = 0x80001658, goto 0x80001658
       0     4511        M 0x80001658 addi    s0, s0, 1              #; s0  = 0x8000388a, (wrb) s0  <-- 0x8000388b
       0     4512        M 0x8000165c addi    s10, s10, 1            #; s10 = 0x8000388c, (wrb) s10 <-- 0x8000388d
       0     4514        M 0x80001660 mv      s9, s1                 #; s1  = 6, (wrb) s9  <-- 6
       0     4515        M 0x80001664 lbu     a0, 0(s0)              #; s0  = 0x8000388b, a0  <~~ Byte[0x8000388b]
       0     4526        M                                           #; (lsu) a0  <-- 61
       0     4527        M 0x80001668 bnez    a0, pc - 40            #; a0  = 61, taken, goto 0x80001640
       0     4528        M 0x80001640 beq     a0, s6, pc + 48        #; a0  = 61, s6  = 37, not taken
       0     4529        M 0x80001644 addi    s1, s9, 1              #; s9  = 6, (wrb) s1  <-- 7
       0     4530        M 0x80001648 mv      a1, s4                 #; s4  = 0x0011fc27, (wrb) a1  <-- 0x0011fc27
       0     4531        M 0x8000164c mv      a2, s9                 #; s9  = 6, (wrb) a2  <-- 6
       0     4532        M 0x80001650 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     4533        M 0x80001654 jalr    s2                     #; s2  = 0x800021a0, (wrb) ra  <-- 0x80001658, goto 0x800021a0
       0     4536        M 0x800021a0 beqz    a0, pc + 168           #; a0  = 61, not taken
       0     4537        M 0x800021a4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4538        M 0x800021a8 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4539        M 0x800021ac mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4540        M 0x800021b0 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800041b0
       0     4541        M 0x800021b4 addi    a3, a3, -1500          #; a3  = 0x800041b0, (wrb) a3  <-- 0x80003bd4
       0     4542        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4543        M 0x800021b8 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003bd4, (wrb) a1  <-- 0x80003bd4
       0     4544        M 0x800021bc lw      a4, 0(a1)              #; a1  = 0x80003bd4, a4  <~~ Word[0x80003bd4]
       0     4555        M                                           #; (lsu) a4  <-- 6
       0     4556        M 0x800021c0 addi    a5, a4, 1              #; a4  = 6, (wrb) a5  <-- 7
       0     4557        M 0x800021c4 sw      a5, 0(a1)              #; a1  = 0x80003bd4, 7 ~~> Word[0x80003bd4]
       0     4558        M 0x800021c8 add     a4, a1, a4             #; a1  = 0x80003bd4, a4  = 6, (wrb) a4  <-- 0x80003bda
       0     4559        M 0x800021cc sb      a0, 72(a4)             #; a4  = 0x80003bda, 61 ~~> Byte[0x80003c22]
       0     4560        M 0x800021d0 lw      a4, 0(a1)              #; a1  = 0x80003bd4, a4  <~~ Word[0x80003bd4]
       0     4581        M                                           #; (lsu) a4  <-- 7
       0     4582        M 0x800021d4 addi    a4, a4, -1020          #; a4  = 7, (wrb) a4  <-- -1013
       0     4583        M 0x800021d8 snez    a4, a4                 #; a4  = -1013, (wrb) a4  <-- 1
       0     4584        M 0x800021dc addi    a0, a0, -10            #; a0  = 61, (wrb) a0  <-- 51
       0     4585        M 0x800021e0 snez    a0, a0                 #; a0  = 51, (wrb) a0  <-- 1
       0     4586        M 0x800021e4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4587        M 0x800021e8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80002248
       0     4590        M 0x80002248 ret                            #; ra  = 0x80001658, goto 0x80001658
       0     4595        M 0x80001658 addi    s0, s0, 1              #; s0  = 0x8000388b, (wrb) s0  <-- 0x8000388c
       0     4596        M 0x8000165c addi    s10, s10, 1            #; s10 = 0x8000388d, (wrb) s10 <-- 0x8000388e
       0     4598        M 0x80001660 mv      s9, s1                 #; s1  = 7, (wrb) s9  <-- 7
       0     4599        M 0x80001664 lbu     a0, 0(s0)              #; s0  = 0x8000388c, a0  <~~ Byte[0x8000388c]
       0     4610        M                                           #; (lsu) a0  <-- 32
       0     4611        M 0x80001668 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80001640
       0     4612        M 0x80001640 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     4613        M 0x80001644 addi    s1, s9, 1              #; s9  = 7, (wrb) s1  <-- 8
       0     4614        M 0x80001648 mv      a1, s4                 #; s4  = 0x0011fc27, (wrb) a1  <-- 0x0011fc27
       0     4615        M 0x8000164c mv      a2, s9                 #; s9  = 7, (wrb) a2  <-- 7
       0     4616        M 0x80001650 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     4617        M 0x80001654 jalr    s2                     #; s2  = 0x800021a0, (wrb) ra  <-- 0x80001658, goto 0x800021a0
       0     4620        M 0x800021a0 beqz    a0, pc + 168           #; a0  = 32, not taken
       0     4621        M 0x800021a4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4622        M 0x800021a8 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4623        M 0x800021ac mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4624        M 0x800021b0 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800041b0
       0     4625        M 0x800021b4 addi    a3, a3, -1500          #; a3  = 0x800041b0, (wrb) a3  <-- 0x80003bd4
       0     4626        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4627        M 0x800021b8 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003bd4, (wrb) a1  <-- 0x80003bd4
       0     4628        M 0x800021bc lw      a4, 0(a1)              #; a1  = 0x80003bd4, a4  <~~ Word[0x80003bd4]
       0     4639        M                                           #; (lsu) a4  <-- 7
       0     4640        M 0x800021c0 addi    a5, a4, 1              #; a4  = 7, (wrb) a5  <-- 8
       0     4641        M 0x800021c4 sw      a5, 0(a1)              #; a1  = 0x80003bd4, 8 ~~> Word[0x80003bd4]
       0     4642        M 0x800021c8 add     a4, a1, a4             #; a1  = 0x80003bd4, a4  = 7, (wrb) a4  <-- 0x80003bdb
       0     4643        M 0x800021cc sb      a0, 72(a4)             #; a4  = 0x80003bdb, 32 ~~> Byte[0x80003c23]
       0     4644        M 0x800021d0 lw      a4, 0(a1)              #; a1  = 0x80003bd4, a4  <~~ Word[0x80003bd4]
       0     4665        M                                           #; (lsu) a4  <-- 8
       0     4666        M 0x800021d4 addi    a4, a4, -1020          #; a4  = 8, (wrb) a4  <-- -1012
       0     4667        M 0x800021d8 snez    a4, a4                 #; a4  = -1012, (wrb) a4  <-- 1
       0     4668        M 0x800021dc addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
       0     4669        M 0x800021e0 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
       0     4670        M 0x800021e4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4671        M 0x800021e8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80002248
       0     4674        M 0x80002248 ret                            #; ra  = 0x80001658, goto 0x80001658
       0     4679        M 0x80001658 addi    s0, s0, 1              #; s0  = 0x8000388c, (wrb) s0  <-- 0x8000388d
       0     4680        M 0x8000165c addi    s10, s10, 1            #; s10 = 0x8000388e, (wrb) s10 <-- 0x8000388f
       0     4682        M 0x80001660 mv      s9, s1                 #; s1  = 8, (wrb) s9  <-- 8
       0     4683        M 0x80001664 lbu     a0, 0(s0)              #; s0  = 0x8000388d, a0  <~~ Byte[0x8000388d]
       0     4694        M                                           #; (lsu) a0  <-- 37
       0     4695        M 0x80001668 bnez    a0, pc - 40            #; a0  = 37, taken, goto 0x80001640
       0     4696        M 0x80001640 beq     a0, s6, pc + 48        #; a0  = 37, s6  = 37, taken, goto 0x80001670
       0     4708        M 0x80001670 li      s0, 0                  #; (wrb) s0  <-- 0
       0     4709        M 0x80001674 j       pc + 0x10              #; goto 0x80001684
       0     4720        M 0x80001684 lbu     a0, -1(s10)            #; s10 = 0x8000388f, a0  <~~ Byte[0x8000388e]
       0     4731        M                                           #; (lsu) a0  <-- 102
       0     4732        M 0x80001688 addi    a1, a0, -32            #; a0  = 102, (wrb) a1  <-- 70
       0     4733        M 0x8000168c bltu    s11, a1, pc + 56       #; s11 = 16, a1  = 70, taken, goto 0x800016c4
       0     4745        M 0x800016c4 addi    a1, a0, -48            #; a0  = 102, (wrb) a1  <-- 54
       0     4746        M 0x800016c8 andi    a2, a1, 255            #; a1  = 54, (wrb) a2  <-- 54
       0     4747        M 0x800016cc addi    a1, s10, -1            #; s10 = 0x8000388f, (wrb) a1  <-- 0x8000388e
       0     4757        M 0x800016d0 li      a3, 9                  #; (wrb) a3  <-- 9
       0     4758        M 0x800016d4 bltu    a3, a2, pc + 124       #; a3  = 9, a2  = 54, taken, goto 0x80001750
       0     4780        M 0x80001750 li      a2, 42                 #; (wrb) a2  <-- 42
       0     4781        M 0x80001754 bne     a0, a2, pc + 80        #; a0  = 102, a2  = 42, taken, goto 0x800017a4
       0     4803        M 0x800017a4 li      s6, 0                  #; (wrb) s6  <-- 0
       0     4804        M 0x800017a8 mv      s10, a1                #; a1  = 0x8000388e, (wrb) s10 <-- 0x8000388e
       0     4805        M 0x800017ac beq     a0, s7, pc - 164       #; a0  = 102, s7  = 46, not taken
       0     4826        M 0x800017b0 li      s7, 0                  #; (wrb) s7  <-- 0
       0     4827        M 0x800017b4 j       pc + 0xc               #; goto 0x800017c0
       0     4838        M 0x800017c0 addi    a1, a0, -104           #; a0  = 102, (wrb) a1  <-- -2
       0     4839        M 0x800017c4 srli    a2, a1, 1              #; a1  = -2, (wrb) a2  <-- 0x7fffffff
       0     4840        M 0x800017c8 slli    a1, a1, 31             #; a1  = -2, (wrb) a1  <-- 0
       0     4841        M 0x800017cc or      a1, a1, a2             #; a1  = 0, a2  = 0x7fffffff, (wrb) a1  <-- 0x7fffffff
       0     4850        M 0x800017d0 li      a2, 9                  #; (wrb) a2  <-- 9
       0     4851        M 0x800017d4 bltu    a2, a1, pc + 100       #; a2  = 9, a1  = 0x7fffffff, taken, goto 0x80001838
       0     4873        M 0x80001838 addi    a1, a0, -37            #; a0  = 102, (wrb) a1  <-- 65
       0     4874        M 0x8000183c li      a2, 83                 #; (wrb) a2  <-- 83
       0     4885        M 0x80001840 bltu    a2, a1, pc + 264       #; a2  = 83, a1  = 65, not taken
       0     4886        M 0x80001844 slli    a1, a1, 2              #; a1  = 65, (wrb) a1  <-- 260
       0     4887        M 0x80001848 auipc   a2, 0x2                #; (wrb) a2  <-- 0x80003848
       0     4888        M 0x8000184c addi    a2, a2, 188            #; a2  = 0x80003848, (wrb) a2  <-- 0x80003904
       0     4897        M 0x80001850 add     a1, a1, a2             #; a1  = 260, a2  = 0x80003904, (wrb) a1  <-- 0x80003a08
       0     4898        M 0x80001854 lw      a2, 0(a1)              #; a1  = 0x80003a08, a2  <~~ Word[0x80003a08]
       0     4899        M 0x80001858 li      a1, 8                  #; (wrb) a1  <-- 8
       0     4900        M 0x8000185c li      s8, 16                 #; (wrb) s8  <-- 16
       0     4909        M                                           #; (lsu) a2  <-- 0x80001890
       0     4910        M 0x80001860 jr      a2                     #; a2  = 0x80001890, goto 0x80001890
       0     4932        M 0x80001890 li      a1, 70                 #; (wrb) a1  <-- 70
       0     4933        M 0x80001894 bne     a0, a1, pc + 8         #; a0  = 102, a1  = 70, taken, goto 0x8000189c
       0     4934        M 0x8000189c addi    a0, s3, 7              #; s3  = 0x0011fc34, (wrb) a0  <-- 0x0011fc3b
       0     4944        M 0x800018a0 andi    a0, a0, -8             #; a0  = 0x0011fc3b, (wrb) a0  <-- 0x0011fc38
       0     4946        M 0x800018a8 addi    s3, a0, 8              #; a0  = 0x0011fc38, (wrb) s3  <-- 0x0011fc40
       0     4947        M 0x800018ac mv      a0, s2                 #; s2  = 0x800021a0, (wrb) a0  <-- 0x800021a0
                         M 0x800018a4 fld     fa0, 0(a0)             #; fa0  <~~ Doub[0x0011fc38]
       0     4948        M                                           #; (f:lsu) fa0  <-- 0.0
       0     4956        M 0x800018b0 mv      a1, s4                 #; s4  = 0x0011fc27, (wrb) a1  <-- 0x0011fc27
       0     4957        M 0x800018b4 mv      a2, s9                 #; s9  = 8, (wrb) a2  <-- 8
       0     4958        M 0x800018b8 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     4959        M 0x800018bc mv      a4, s7                 #; s7  = 0, (wrb) a4  <-- 0
       0     4968        M 0x800018c0 mv      a5, s6                 #; s6  = 0, (wrb) a5  <-- 0
       0     4969        M 0x800018c4 mv      a6, s0                 #; s0  = 0, (wrb) a6  <-- 0
       0     4970        M 0x800018c8 auipc   ra, 0x1                #; (wrb) ra  <-- 0x800028c8
       0     4971        M 0x800018cc jalr    ra, ra, -1656          #; ra  = 0x800028c8, (wrb) ra  <-- 0x800018d0, goto 0x80002250
       0     4982        M 0x80002250 addi    sp, sp, -112           #; sp  = 0x0011fbb0, (wrb) sp  <-- 0x0011fb40
       0     4983        M 0x80002254 sw      ra, 108(sp)            #; sp  = 0x0011fb40, 0x800018d0 ~~> Word[0x0011fbac]
       0     4984        M 0x80002258 sw      s0, 104(sp)            #; sp  = 0x0011fb40, 0 ~~> Word[0x0011fba8]
       0     4985        M 0x8000225c sw      s1, 100(sp)            #; sp  = 0x0011fb40, 8 ~~> Word[0x0011fba4]
       0     4994        M 0x80002260 sw      s2, 96(sp)             #; sp  = 0x0011fb40, 0x800021a0 ~~> Word[0x0011fba0]
       0     4995        M 0x80002264 sw      s3, 92(sp)             #; sp  = 0x0011fb40, 0x0011fc40 ~~> Word[0x0011fb9c]
       0     4996        M 0x80002268 sw      s4, 88(sp)             #; sp  = 0x0011fb40, 0x0011fc27 ~~> Word[0x0011fb98]
       0     4997        M 0x8000226c sw      s5, 84(sp)             #; sp  = 0x0011fb40, -1 ~~> Word[0x0011fb94]
       0     5006        M 0x80002270 sw      s6, 80(sp)             #; sp  = 0x0011fb40, 0 ~~> Word[0x0011fb90]
       0     5007        M 0x80002274 sw      s7, 76(sp)             #; sp  = 0x0011fb40, 0 ~~> Word[0x0011fb8c]
       0     5008        M 0x80002278 sw      s8, 72(sp)             #; sp  = 0x0011fb40, 16 ~~> Word[0x0011fb88]
       0     5009        M 0x8000227c sw      s9, 68(sp)             #; sp  = 0x0011fb40, 8 ~~> Word[0x0011fb84]
       0     5018        M 0x80002280 sw      s10, 64(sp)            #; sp  = 0x0011fb40, 0x8000388e ~~> Word[0x0011fb80]
       0     5021        M 0x80002284 fsd     fs0, 56(sp)            #; 0.0 ~~> Doub[0x0011fb78]
       0     5022        M 0x80002288 fsd     fs1, 48(sp)            #; 0.0 ~~> Doub[0x0011fb70]
       0     5023        M 0x8000228c fsd     fs2, 40(sp)            #; 0.0 ~~> Doub[0x0011fb68]
       0     5030        M 0x80002290 auipc   s1, 0x2                #; (wrb) s1  <-- 0x80004290
       0     5031        M 0x80002294 addi    s1, s1, -1896          #; s1  = 0x80004290, (wrb) s1  <-- 0x80003b28
       0     5034        M 0x80002298 fld     ft0, 0(s1)             #; ft0  <~~ Doub[0x80003b28]
       0     5042        M 0x800022a0 mv      s5, a6                 #; a6  = 0, (wrb) s5  <-- 0
       0     5043        M 0x800022a4 mv      s2, a5                 #; a5  = 0, (wrb) s2  <-- 0
                         M                                           #; (f:lsu) ft0  <-- -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     5044        M 0x800022a8 mv      s3, a3                 #; a3  = -1, (wrb) s3  <-- -1
                         M 0x8000229c fle.d   s1, ft0, fa0           #; ft0  = -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000, fa0  = 0.0
       0     5045        M 0x800022ac mv      s4, a2                 #; a2  = 8, (wrb) s4  <-- 8
       0     5054        M 0x800022b0 mv      s6, a1                 #; a1  = 0x0011fc27, (wrb) s6  <-- 0x0011fc27
       0     5055        M 0x800022b4 mv      s7, a0                 #; a0  = 0x800021a0, (wrb) s7  <-- 0x800021a0
       0     5056        M 0x800022b8 bnez    s1, pc + 240           #; s1  = 1, taken, goto 0x800023a8
       0     5078        M 0x800023ac auipc   a0, 0x1                #; (wrb) a0  <-- 0x800033ac
       0     5079        M 0x800023a8 fsgnj.d fs0, fa0, fa0          #; fa0  = 0.0, fa0  = 0.0
       0     5080        M                                           #; (f:fpu) fs0  <-- 0.0
       0     5089        M 0x800023b0 addi    a0, a0, 1924           #; a0  = 0x800033ac, (wrb) a0  <-- 0x80003b30
       0     5092        M 0x800023b4 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003b30]
       0     5101        M                                           #; (f:lsu) ft0  <-- 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     5102        M 0x800023b8 fle.d   a0, fa0, ft0           #; fa0  = 0.0, ft0  = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     5104        M                                           #; (acc) t3  <-- 0x00051e63
       0     5105        M 0x800023bc bnez    a0, pc + 28            #; a0  = 1, taken, goto 0x800023d8
       0     5117        M 0x800023d8 auipc   a0, 0x1                #; (wrb) a0  <-- 0x800033d8
       0     5118        M 0x800023dc addi    a0, a0, 1888           #; a0  = 0x800033d8, (wrb) a0  <-- 0x80003b38
       0     5130        M 0x800023e4 auipc   a0, 0x1                #; (wrb) a0  <-- 0x800033e4
       0     5131        M 0x800023e8 addi    a0, a0, 1884           #; a0  = 0x800033e4, (wrb) a0  <-- 0x80003b40
                         M 0x800023e0 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003b38]
       0     5134        M 0x800023ec fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80003b40]
       0     5140        M                                           #; (f:lsu) ft0  <-- 1000000000.0000000
       0     5142        M 0x800023f0 fle.d   a0, fs0, ft0           #; fs0  = 0.0, ft0  = 1000000000.0000000
       0     5143        M                                           #; (f:lsu) ft1  <-- -1000000000.0000000
       0     5144        M                                           #; (acc) a0  <-- 0x00b57533
                         M 0x800023f4 fle.d   a1, ft1, fs0           #; ft1  = -1000000000.0000000, fs0  = 0.0
       0     5146        M                                           #; (acc) a0  <-- 0x00b57533
       0     5147        M 0x800023f8 and     a0, a0, a1             #; a0  = 1, a1  = 1, (wrb) a0  <-- 1
       0     5148        M 0x800023fc bnez    a0, pc + 252           #; a0  = 1, taken, goto 0x800024f8
       0     5164        M 0x800024f8 andi    a0, s5, 1024           #; s5  = 0, (wrb) a0  <-- 0
       0     5165        M 0x800024fc li      s8, 6                  #; (wrb) s8  <-- 6
       0     5176        M 0x80002500 beqz    a0, pc + 8             #; a0  = 0, taken, goto 0x80002508
       0     5177        M 0x80002508 li      a0, 10                 #; (wrb) a0  <-- 10
       0     5180        M 0x8000250c fsgnjx.d fs2, fs0, fs0         #; fs0  = 0.0, fs0  = 0.0
       0     5181        M                                           #; (f:fpu) fs2  <-- 0.0
       0     5188        M 0x80002510 bltu    s8, a0, pc + 56        #; s8  = 6, a0  = 10, taken, goto 0x80002548
       0     5211        M 0x80002548 li      s0, 0                  #; (wrb) s0  <-- 0
       0     5212        M 0x8000254c slli    a0, s8, 3              #; s8  = 6, (wrb) a0  <-- 48
       0     5223        M 0x80002550 auipc   a1, 0x1                #; (wrb) a1  <-- 0x80003550
       0     5224        M 0x80002554 addi    a1, a1, 1288           #; a1  = 0x80003550, (wrb) a1  <-- 0x80003a58
       0     5225        M 0x80002558 add     a0, a0, a1             #; a0  = 48, a1  = 0x80003a58, (wrb) a0  <-- 0x80003a88
       0     5228        M 0x8000255c fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80003a88]
       0     5236        M 0x80002560 fcvt.w.d s1, fs2               #; fs2  = 0.0
       0     5237        M                                           #; (f:lsu) ft1  <-- 1000000.0000000
       0     5240        M 0x80002564 fcvt.d.w ft0, s1               #; ac1  = 0
       0     5241        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5242        M 0x80002568 fsub.d  ft0, fs2, ft0          #; fs2  = 0.0, ft0  = 0.0
       0     5245        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5246        M 0x8000256c fmul.d  ft2, ft1, ft0          #; ft1  = 1000000.0000000, ft0  = 0.0
       0     5247        M 0x80002570 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80003570
       0     5248        M 0x80002574 addi    a0, a0, 1496           #; a0  = 0x80003570, (wrb) a0  <-- 0x80003b48
       0     5249        M                                           #; (f:fpu) ft2  <-- 0.0
       0     5251        M 0x80002578 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003b48]
       0     5252        M 0x8000257c fcvt.wu.d a0, ft2              #; ft2  = 0.0
       0     5260        M 0x80002580 fcvt.d.wu ft3, a0              #; ac1  = 0, (f:lsu) ft0  <-- 0.5
       0     5261        M                                           #; (f:fpu) ft3  <-- 0.0
       0     5262        M 0x80002584 fsub.d  ft2, ft2, ft3          #; ft2  = 0.0, ft3  = 0.0
       0     5265        M                                           #; (f:fpu) ft2  <-- 0.0
       0     5266        M 0x80002588 fle.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
       0     5269        M 0x8000258c bnez    a1, pc + 32            #; a1  = 1, taken, goto 0x800025ac
       0     5283        M 0x800025ac flt.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
       0     5294        M 0x800025b0 bnez    a1, pc + 20            #; a1  = 1, taken, goto 0x800025c4
       0     5307        M 0x800025c8 beqz    s8, pc + 216           #; s8  = 6, not taken
                         M 0x800025c4 fcvt.d.w fs1, zero             #; ac1  = 0
       0     5308        M 0x800025cc li      a2, 0                  #; (wrb) a2  <-- 0
                         M                                           #; (f:fpu) fs1  <-- 0.0
       0     5318        M 0x800025d0 addi    a1, sp, 8              #; sp  = 0x0011fb40, (wrb) a1  <-- 0x0011fb48
       0     5319        M 0x800025d4 add     t1, a1, s0             #; a1  = 0x0011fb48, s0  = 0, (wrb) t1  <-- 0x0011fb48
       0     5320        M 0x800025d8 li      t0, 32                 #; (wrb) t0  <-- 32
       0     5321        M 0x800025dc sub     a4, t0, s0             #; t0  = 32, s0  = 0, (wrb) a4  <-- 32
       0     5330        M 0x800025e0 lui     a1, 0xccccd            #; (wrb) a1  <-- 0xccccd000
       0     5331        M 0x800025e4 addi    t2, a1, -819           #; a1  = 0xccccd000, (wrb) t2  <-- 0xcccccccd
       0     5332        M 0x800025e8 li      a6, 10                 #; (wrb) a6  <-- 10
       0     5333        M 0x800025ec li      a7, 9                  #; (wrb) a7  <-- 9
       0     5342        M 0x800025f0 beq     a4, a2, pc + 200       #; a4  = 32, a2  = 0, not taken
       0     5343        M 0x800025f4 mv      a1, a0                 #; a0  = 0, (wrb) a1  <-- 0
       0     5344        M 0x800025f8 mulhu   a0, a0, t2             #; a0  = 0, t2  = 0xcccccccd
       0     5347        M                                           #; (acc) a0  <-- 0x00355513
       0     5348        M 0x800025fc srli    a0, a0, 3              #; a0  = 0, (wrb) a0  <-- 0
       0     5354        M 0x80002600 mul     a3, a0, a6             #; a0  = 0, a6  = 10
       0     5357        M                                           #; (acc) a3  <-- 0x40d586b3
       0     5358        M 0x80002604 sub     a3, a1, a3             #; a1  = 0, a3  = 0, (wrb) a3  <-- 0
       0     5359        M 0x80002608 ori     a3, a3, 48             #; a3  = 0, (wrb) a3  <-- 48
       0     5360        M 0x8000260c add     a5, t1, a2             #; t1  = 0x0011fb48, a2  = 0, (wrb) a5  <-- 0x0011fb48
       0     5366        M 0x80002610 sb      a3, 0(a5)              #; a5  = 0x0011fb48, 48 ~~> Byte[0x0011fb48]
       0     5367        M 0x80002614 addi    a2, a2, 1              #; a2  = 0, (wrb) a2  <-- 1
       0     5368        M 0x80002618 bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 0, not taken
       0     5369        M 0x8000261c add     a0, s0, a2             #; s0  = 0, a2  = 1, (wrb) a0  <-- 1
       0     5381        M 0x80002620 addi    a1, a0, -1             #; a0  = 1, (wrb) a1  <-- 0
       0     5382        M 0x80002624 li      a3, 30                 #; (wrb) a3  <-- 30
       0     5383        M 0x80002628 sltu    a3, a3, a1             #; a3  = 30, a1  = 0, (wrb) a3  <-- 0
       0     5384        M 0x8000262c xor     a4, s8, a2             #; s8  = 6, a2  = 1, (wrb) a4  <-- 7
       0     5393        M 0x80002630 seqz    a4, a4                 #; a4  = 7, (wrb) a4  <-- 0
       0     5394        M 0x80002634 or      a3, a3, a4             #; a3  = 0, a4  = 0, (wrb) a3  <-- 0
       0     5395        M 0x80002638 bnez    a3, pc + 136           #; a3  = 0, not taken
       0     5396        M 0x8000263c addi    a0, sp, 8              #; sp  = 0x0011fb40, (wrb) a0  <-- 0x0011fb48
       0     5405        M 0x80002640 add     a0, a0, s0             #; a0  = 0x0011fb48, s0  = 0, (wrb) a0  <-- 0x0011fb48
       0     5406        M 0x80002644 not     a1, a2                 #; a2  = 1, (wrb) a1  <-- -2
       0     5407        M 0x80002648 add     s8, a1, s8             #; a1  = -2, s8  = 6, (wrb) s8  <-- 4
       0     5408        M 0x8000264c add     s0, s0, a2             #; s0  = 0, a2  = 1, (wrb) s0  <-- 1
       0     5417        M 0x80002650 li      a1, 31                 #; (wrb) a1  <-- 31
       0     5418        M 0x80002654 sub     a3, a1, s0             #; a1  = 31, s0  = 1, (wrb) a3  <-- 30
       0     5419        M 0x80002658 add     a0, a0, a2             #; a0  = 0x0011fb48, a2  = 1, (wrb) a0  <-- 0x0011fb49
       0     5420        M 0x8000265c mv      a1, s8                 #; s8  = 4, (wrb) a1  <-- 4
       0     5429        M 0x80002660 bltu    s8, a3, pc + 8         #; s8  = 4, a3  = 30, taken, goto 0x80002668
       0     5430        M 0x80002668 addi    a2, a1, 1              #; a1  = 4, (wrb) a2  <-- 5
       0     5431        M 0x8000266c li      a1, 48                 #; (wrb) a1  <-- 48
       0     5441        M 0x80002670 auipc   ra, 0xffffe            #; (wrb) ra  <-- 0x80000670
       0     5442        M 0x80002674 jalr    ra, ra, -280           #; ra  = 0x80000670, (wrb) ra  <-- 0x80002678, goto 0x80000558
       0     5464        M 0x80000558 li      t1, 15                 #; (wrb) t1  <-- 15
       0     5465        M 0x8000055c mv      a4, a0                 #; a0  = 0x0011fb49, (wrb) a4  <-- 0x0011fb49
       0     5476        M 0x80000560 bgeu    t1, a2, pc + 60        #; t1  = 15, a2  = 5, taken, goto 0x8000059c
       0     5499        M 0x8000059c sub     a3, t1, a2             #; t1  = 15, a2  = 5, (wrb) a3  <-- 10
       0     5511        M 0x800005a0 slli    a3, a3, 2              #; a3  = 10, (wrb) a3  <-- 40
       0     5512        M 0x800005a4 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800005a4
       0     5513        M 0x800005a8 add     a3, a3, t0             #; a3  = 40, t0  = 0x800005a4, (wrb) a3  <-- 0x800005cc
       0     5514        M 0x800005ac jalr    zero, a3, 12           #; a3  = 0x800005cc, goto 0x800005d8
       0     5534        M 0x800005d8 sb      a1, 4(a4)              #; a4  = 0x0011fb49, 48 ~~> Byte[0x0011fb4d]
       0     5535        M 0x800005dc sb      a1, 3(a4)              #; a4  = 0x0011fb49, 48 ~~> Byte[0x0011fb4c]
       0     5546        M 0x800005e0 sb      a1, 2(a4)              #; a4  = 0x0011fb49, 48 ~~> Byte[0x0011fb4b]
       0     5547        M 0x800005e4 sb      a1, 1(a4)              #; a4  = 0x0011fb49, 48 ~~> Byte[0x0011fb4a]
       0     5548        M 0x800005e8 sb      a1, 0(a4)              #; a4  = 0x0011fb49, 48 ~~> Byte[0x0011fb49]
       0     5549        M 0x800005ec ret                            #; ra  = 0x80002678, goto 0x80002678
       0     5560        M 0x80002678 li      a0, 0                  #; (wrb) a0  <-- 0
       0     5561        M 0x8000267c add     a1, s0, a0             #; s0  = 1, a0  = 0, (wrb) a1  <-- 1
       0     5563        M 0x80002680 sltiu   a1, a1, 31             #; a1  = 1, (wrb) a1  <-- 1
       0     5564        M 0x80002684 xor     a2, s8, a0             #; s8  = 4, a0  = 0, (wrb) a2  <-- 4
       0     5565        M 0x80002688 snez    a2, a2                 #; a2  = 4, (wrb) a2  <-- 1
       0     5566        M 0x8000268c and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     5575        M 0x80002690 addi    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0     5576        M 0x80002694 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x8000267c
       0     5577        M 0x8000267c add     a1, s0, a0             #; s0  = 1, a0  = 1, (wrb) a1  <-- 2
       0     5578        M 0x80002680 sltiu   a1, a1, 31             #; a1  = 2, (wrb) a1  <-- 1
       0     5579        M 0x80002684 xor     a2, s8, a0             #; s8  = 4, a0  = 1, (wrb) a2  <-- 5
       0     5580        M 0x80002688 snez    a2, a2                 #; a2  = 5, (wrb) a2  <-- 1
       0     5581        M 0x8000268c and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     5582        M 0x80002690 addi    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 2
       0     5583        M 0x80002694 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x8000267c
       0     5584        M 0x8000267c add     a1, s0, a0             #; s0  = 1, a0  = 2, (wrb) a1  <-- 3
       0     5585        M 0x80002680 sltiu   a1, a1, 31             #; a1  = 3, (wrb) a1  <-- 1
       0     5586        M 0x80002684 xor     a2, s8, a0             #; s8  = 4, a0  = 2, (wrb) a2  <-- 6
       0     5587        M 0x80002688 snez    a2, a2                 #; a2  = 6, (wrb) a2  <-- 1
       0     5588        M 0x8000268c and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     5589        M 0x80002690 addi    a0, a0, 1              #; a0  = 2, (wrb) a0  <-- 3
       0     5590        M 0x80002694 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x8000267c
       0     5591        M 0x8000267c add     a1, s0, a0             #; s0  = 1, a0  = 3, (wrb) a1  <-- 4
       0     5592        M 0x80002680 sltiu   a1, a1, 31             #; a1  = 4, (wrb) a1  <-- 1
       0     5593        M 0x80002684 xor     a2, s8, a0             #; s8  = 4, a0  = 3, (wrb) a2  <-- 7
       0     5594        M 0x80002688 snez    a2, a2                 #; a2  = 7, (wrb) a2  <-- 1
       0     5595        M 0x8000268c and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     5596        M 0x80002690 addi    a0, a0, 1              #; a0  = 3, (wrb) a0  <-- 4
       0     5597        M 0x80002694 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x8000267c
       0     5598        M 0x8000267c add     a1, s0, a0             #; s0  = 1, a0  = 4, (wrb) a1  <-- 5
       0     5599        M 0x80002680 sltiu   a1, a1, 31             #; a1  = 5, (wrb) a1  <-- 1
       0     5600        M 0x80002684 xor     a2, s8, a0             #; s8  = 4, a0  = 4, (wrb) a2  <-- 0
       0     5601        M 0x80002688 snez    a2, a2                 #; a2  = 0, (wrb) a2  <-- 0
       0     5602        M 0x8000268c and     a2, a1, a2             #; a1  = 1, a2  = 0, (wrb) a2  <-- 0
       0     5603        M 0x80002690 addi    a0, a0, 1              #; a0  = 4, (wrb) a0  <-- 5
       0     5604        M 0x80002694 bnez    a2, pc - 24            #; a2  = 0, not taken
       0     5605        M 0x80002698 add     a0, s0, a0             #; s0  = 1, a0  = 5, (wrb) a0  <-- 6
       0     5606        M 0x8000269c j       pc + 0x28              #; goto 0x800026c4
       0     5617        M 0x800026c4 beqz    a1, pc + 28            #; a1  = 1, not taken
       0     5618        M 0x800026c8 addi    s0, a0, 1              #; a0  = 6, (wrb) s0  <-- 7
       0     5619        M 0x800026cc addi    a1, sp, 8              #; sp  = 0x0011fb40, (wrb) a1  <-- 0x0011fb48
       0     5629        M 0x800026d0 add     a0, a1, a0             #; a1  = 0x0011fb48, a0  = 6, (wrb) a0  <-- 0x0011fb4e
       0     5630        M 0x800026d4 li      a1, 46                 #; (wrb) a1  <-- 46
       0     5631        M 0x800026d8 sb      a1, 0(a0)              #; a0  = 0x0011fb4e, 46 ~~> Byte[0x0011fb4e]
       0     5632        M 0x800026dc j       pc + 0x8               #; goto 0x800026e4
       0     5641        M 0x800026e4 li      a0, 32                 #; (wrb) a0  <-- 32
       0     5642        M 0x800026e8 mv      t0, s0                 #; s0  = 7, (wrb) t0  <-- 7
       0     5643        M 0x800026ec bltu    a0, s0, pc + 8         #; a0  = 32, s0  = 7, not taken
       0     5653        M 0x800026f0 li      t0, 32                 #; (wrb) t0  <-- 32
       0     5655        M 0x800026f8 lui     a0, 0x66666            #; (wrb) a0  <-- 0x66666000
                         M 0x800026f4 flt.d   s9, fs0, fs1           #; fs0  = 0.0, fs1  = 0.0
       0     5656        M 0x800026fc addi    a1, a0, 1639           #; a0  = 0x66666000, (wrb) a1  <-- 0x66666667
       0     5665        M 0x80002700 li      a6, 10                 #; (wrb) a6  <-- 10
       0     5666        M 0x80002704 addi    a3, sp, 8              #; sp  = 0x0011fb40, (wrb) a3  <-- 0x0011fb48
       0     5667        M 0x80002708 li      a4, 18                 #; (wrb) a4  <-- 18
       0     5668        M 0x8000270c beq     t0, s0, pc + 64        #; t0  = 32, s0  = 7, not taken
       0     5677        M 0x80002710 mulh    a0, s1, a1             #; s1  = 0, a1  = 0x66666667
       0     5680        M                                           #; (acc) a5  <-- 0x01f55793
       0     5681        M 0x80002714 srli    a5, a0, 31             #; a0  = 0, (wrb) a5  <-- 0
       0     5682        M 0x80002718 srai    a0, a0, 2              #; a0  = 0, (wrb) a0  <-- 0
       0     5683        M 0x8000271c add     a0, a0, a5             #; a0  = 0, a5  = 0, (wrb) a0  <-- 0
       0     5689        M 0x80002720 mul     a5, a0, a6             #; a0  = 0, a6  = 10
       0     5692        M                                           #; (acc) a5  <-- 0x40f487b3
       0     5693        M 0x80002724 sub     a5, s1, a5             #; s1  = 0, a5  = 0, (wrb) a5  <-- 0
       0     5694        M 0x80002728 addi    a5, a5, 48             #; a5  = 0, (wrb) a5  <-- 48
       0     5695        M 0x8000272c addi    s8, s0, 1              #; s0  = 7, (wrb) s8  <-- 8
       0     5701        M 0x80002730 add     s0, a3, s0             #; a3  = 0x0011fb48, s0  = 7, (wrb) s0  <-- 0x0011fb4f
       0     5702        M 0x80002734 addi    a2, s1, 9              #; s1  = 0, (wrb) a2  <-- 9
       0     5703        M 0x80002738 sb      a5, 0(s0)              #; s0  = 0x0011fb4f, 48 ~~> Byte[0x0011fb4f]
       0     5704        M 0x8000273c mv      s0, s8                 #; s8  = 8, (wrb) s0  <-- 8
       0     5713        M 0x80002740 mv      s1, a0                 #; a0  = 0, (wrb) s1  <-- 0
       0     5714        M 0x80002744 bltu    a4, a2, pc - 56        #; a4  = 18, a2  = 9, not taken
       0     5715        M 0x80002748 j       pc + 0x8               #; goto 0x80002750
       0     5727        M 0x80002750 andi    s1, s5, 3              #; s5  = 0, (wrb) s1  <-- 0
       0     5728        M 0x80002754 li      a0, 1                  #; (wrb) a0  <-- 1
       0     5729        M 0x80002758 bne     s1, a0, pc + 108       #; s1  = 0, a0  = 1, taken, goto 0x800027c4
       0     5750        M 0x800027c4 li      a0, 31                 #; (wrb) a0  <-- 31
       0     5751        M 0x800027c8 bltu    a0, s8, pc + 84        #; a0  = 31, s8  = 8, not taken
       0     5752        M 0x800027cc beqz    s9, pc + 24            #; s9  = 0, taken, goto 0x800027e4
       0     5773        M 0x800027e4 andi    a0, s5, 4              #; s5  = 0, (wrb) a0  <-- 0
       0     5774        M 0x800027e8 bnez    a0, pc + 32            #; a0  = 0, not taken
       0     5775        M 0x800027ec andi    a0, s5, 8              #; s5  = 0, (wrb) a0  <-- 0
       0     5785        M 0x800027f0 beqz    a0, pc + 44            #; a0  = 0, taken, goto 0x8000281c
       0     5808        M 0x8000281c snez    a0, s1                 #; s1  = 0, (wrb) a0  <-- 0
       0     5820        M 0x80002820 sltu    a1, s8, s2             #; s8  = 8, s2  = 0, (wrb) a1  <-- 0
       0     5821        M 0x80002824 xori    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
       0     5822        M 0x80002828 or      a0, a0, a1             #; a0  = 0, a1  = 1, (wrb) a0  <-- 1
       0     5823        M 0x8000282c andi    s5, s5, 2              #; s5  = 0, (wrb) s5  <-- 0
       0     5832        M 0x80002830 mv      s0, s4                 #; s4  = 8, (wrb) s0  <-- 8
       0     5833        M 0x80002834 bnez    a0, pc + 44            #; a0  = 1, taken, goto 0x80002860
       0     5855        M 0x80002860 srli    s5, s5, 1              #; s5  = 0, (wrb) s5  <-- 0
       0     5856        M 0x80002864 beqz    s8, pc + 56            #; s8  = 8, not taken
       0     5857        M 0x80002868 addi    s9, sp, 7              #; sp  = 0x0011fb40, (wrb) s9  <-- 0x0011fb47
       0     5858        M 0x8000286c add     a0, s9, s8             #; s9  = 0x0011fb47, s8  = 8, (wrb) a0  <-- 0x0011fb4f
       0     5867        M 0x80002870 lbu     a0, 0(a0)              #; a0  = 0x0011fb4f, a0  <~~ Byte[0x0011fb4f]
       0     5868        M 0x80002874 addi    s10, s8, -1            #; s8  = 8, (wrb) s10 <-- 7
       0     5869        M 0x80002878 addi    s1, s0, 1              #; s0  = 8, (wrb) s1  <-- 9
       0     5870        M 0x8000287c mv      a1, s6                 #; s6  = 0x0011fc27, (wrb) a1  <-- 0x0011fc27
       0     5871        M                                           #; (lsu) a0  <-- 48
       0     5879        M 0x80002880 mv      a2, s0                 #; s0  = 8, (wrb) a2  <-- 8
       0     5880        M 0x80002884 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     5881        M 0x80002888 jalr    s7                     #; s7  = 0x800021a0, (wrb) ra  <-- 0x8000288c, goto 0x800021a0
       0     5893        M 0x800021a0 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     5894        M 0x800021a4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5895        M 0x800021a8 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5896        M 0x800021ac mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5897        M 0x800021b0 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800041b0
       0     5898        M 0x800021b4 addi    a3, a3, -1500          #; a3  = 0x800041b0, (wrb) a3  <-- 0x80003bd4
       0     5899        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5900        M 0x800021b8 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003bd4, (wrb) a1  <-- 0x80003bd4
       0     5901        M 0x800021bc lw      a4, 0(a1)              #; a1  = 0x80003bd4, a4  <~~ Word[0x80003bd4]
       0     5912        M                                           #; (lsu) a4  <-- 8
       0     5913        M 0x800021c0 addi    a5, a4, 1              #; a4  = 8, (wrb) a5  <-- 9
       0     5914        M 0x800021c4 sw      a5, 0(a1)              #; a1  = 0x80003bd4, 9 ~~> Word[0x80003bd4]
       0     5915        M 0x800021c8 add     a4, a1, a4             #; a1  = 0x80003bd4, a4  = 8, (wrb) a4  <-- 0x80003bdc
       0     5916        M 0x800021cc sb      a0, 72(a4)             #; a4  = 0x80003bdc, 48 ~~> Byte[0x80003c24]
       0     5917        M 0x800021d0 lw      a4, 0(a1)              #; a1  = 0x80003bd4, a4  <~~ Word[0x80003bd4]
       0     5938        M                                           #; (lsu) a4  <-- 9
       0     5939        M 0x800021d4 addi    a4, a4, -1020          #; a4  = 9, (wrb) a4  <-- -1011
       0     5940        M 0x800021d8 snez    a4, a4                 #; a4  = -1011, (wrb) a4  <-- 1
       0     5941        M 0x800021dc addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     5942        M 0x800021e0 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     5943        M 0x800021e4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5944        M 0x800021e8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80002248
       0     5947        M 0x80002248 ret                            #; ra  = 0x8000288c, goto 0x8000288c
       0     5952        M 0x8000288c mv      s0, s1                 #; s1  = 9, (wrb) s0  <-- 9
       0     5955        M 0x80002890 mv      s8, s10                #; s10 = 7, (wrb) s8  <-- 7
       0     5956        M 0x80002894 bnez    s10, pc - 40           #; s10 = 7, taken, goto 0x8000286c
       0     5958        M 0x8000286c add     a0, s9, s8             #; s9  = 0x0011fb47, s8  = 7, (wrb) a0  <-- 0x0011fb4e
       0     5961        M 0x80002870 lbu     a0, 0(a0)              #; a0  = 0x0011fb4e, a0  <~~ Byte[0x0011fb4e]
       0     5962        M 0x80002874 addi    s10, s8, -1            #; s8  = 7, (wrb) s10 <-- 6
       0     5963        M 0x80002878 addi    s1, s0, 1              #; s0  = 9, (wrb) s1  <-- 10
       0     5964        M 0x8000287c mv      a1, s6                 #; s6  = 0x0011fc27, (wrb) a1  <-- 0x0011fc27
       0     5965        M 0x80002880 mv      a2, s0                 #; s0  = 9, (wrb) a2  <-- 9
       0     5966        M 0x80002884 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     5967        M 0x80002888 jalr    s7                     #; s7  = 0x800021a0, (wrb) ra  <-- 0x8000288c, goto 0x800021a0
       0     5968        M                                           #; (lsu) a0  <-- 46
       0     5970        M 0x800021a0 beqz    a0, pc + 168           #; a0  = 46, not taken
       0     5971        M 0x800021a4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5972        M 0x800021a8 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5973        M 0x800021ac mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5974        M 0x800021b0 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800041b0
       0     5975        M 0x800021b4 addi    a3, a3, -1500          #; a3  = 0x800041b0, (wrb) a3  <-- 0x80003bd4
       0     5976        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5977        M 0x800021b8 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003bd4, (wrb) a1  <-- 0x80003bd4
       0     5978        M 0x800021bc lw      a4, 0(a1)              #; a1  = 0x80003bd4, a4  <~~ Word[0x80003bd4]
       0     5989        M                                           #; (lsu) a4  <-- 9
       0     5990        M 0x800021c0 addi    a5, a4, 1              #; a4  = 9, (wrb) a5  <-- 10
       0     5991        M 0x800021c4 sw      a5, 0(a1)              #; a1  = 0x80003bd4, 10 ~~> Word[0x80003bd4]
       0     5992        M 0x800021c8 add     a4, a1, a4             #; a1  = 0x80003bd4, a4  = 9, (wrb) a4  <-- 0x80003bdd
       0     5993        M 0x800021cc sb      a0, 72(a4)             #; a4  = 0x80003bdd, 46 ~~> Byte[0x80003c25]
       0     5994        M 0x800021d0 lw      a4, 0(a1)              #; a1  = 0x80003bd4, a4  <~~ Word[0x80003bd4]
       0     6015        M                                           #; (lsu) a4  <-- 10
       0     6016        M 0x800021d4 addi    a4, a4, -1020          #; a4  = 10, (wrb) a4  <-- -1010
       0     6017        M 0x800021d8 snez    a4, a4                 #; a4  = -1010, (wrb) a4  <-- 1
       0     6018        M 0x800021dc addi    a0, a0, -10            #; a0  = 46, (wrb) a0  <-- 36
       0     6019        M 0x800021e0 snez    a0, a0                 #; a0  = 36, (wrb) a0  <-- 1
       0     6020        M 0x800021e4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     6021        M 0x800021e8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80002248
       0     6024        M 0x80002248 ret                            #; ra  = 0x8000288c, goto 0x8000288c
       0     6029        M 0x8000288c mv      s0, s1                 #; s1  = 10, (wrb) s0  <-- 10
       0     6032        M 0x80002890 mv      s8, s10                #; s10 = 6, (wrb) s8  <-- 6
       0     6033        M 0x80002894 bnez    s10, pc - 40           #; s10 = 6, taken, goto 0x8000286c
       0     6035        M 0x8000286c add     a0, s9, s8             #; s9  = 0x0011fb47, s8  = 6, (wrb) a0  <-- 0x0011fb4d
       0     6038        M 0x80002870 lbu     a0, 0(a0)              #; a0  = 0x0011fb4d, a0  <~~ Byte[0x0011fb4d]
       0     6039        M 0x80002874 addi    s10, s8, -1            #; s8  = 6, (wrb) s10 <-- 5
       0     6040        M 0x80002878 addi    s1, s0, 1              #; s0  = 10, (wrb) s1  <-- 11
       0     6041        M 0x8000287c mv      a1, s6                 #; s6  = 0x0011fc27, (wrb) a1  <-- 0x0011fc27
       0     6042        M 0x80002880 mv      a2, s0                 #; s0  = 10, (wrb) a2  <-- 10
       0     6043        M 0x80002884 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     6044        M 0x80002888 jalr    s7                     #; s7  = 0x800021a0, (wrb) ra  <-- 0x8000288c, goto 0x800021a0
       0     6045        M                                           #; (lsu) a0  <-- 48
       0     6047        M 0x800021a0 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     6048        M 0x800021a4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6049        M 0x800021a8 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     6050        M 0x800021ac mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     6051        M 0x800021b0 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800041b0
       0     6052        M 0x800021b4 addi    a3, a3, -1500          #; a3  = 0x800041b0, (wrb) a3  <-- 0x80003bd4
       0     6053        M                                           #; (acc) a1  <-- 0x00d605b3
       0     6054        M 0x800021b8 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003bd4, (wrb) a1  <-- 0x80003bd4
       0     6055        M 0x800021bc lw      a4, 0(a1)              #; a1  = 0x80003bd4, a4  <~~ Word[0x80003bd4]
       0     6066        M                                           #; (lsu) a4  <-- 10
       0     6067        M 0x800021c0 addi    a5, a4, 1              #; a4  = 10, (wrb) a5  <-- 11
       0     6068        M 0x800021c4 sw      a5, 0(a1)              #; a1  = 0x80003bd4, 11 ~~> Word[0x80003bd4]
       0     6069        M 0x800021c8 add     a4, a1, a4             #; a1  = 0x80003bd4, a4  = 10, (wrb) a4  <-- 0x80003bde
       0     6070        M 0x800021cc sb      a0, 72(a4)             #; a4  = 0x80003bde, 48 ~~> Byte[0x80003c26]
       0     6071        M 0x800021d0 lw      a4, 0(a1)              #; a1  = 0x80003bd4, a4  <~~ Word[0x80003bd4]
       0     6092        M                                           #; (lsu) a4  <-- 11
       0     6093        M 0x800021d4 addi    a4, a4, -1020          #; a4  = 11, (wrb) a4  <-- -1009
       0     6094        M 0x800021d8 snez    a4, a4                 #; a4  = -1009, (wrb) a4  <-- 1
       0     6095        M 0x800021dc addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     6096        M 0x800021e0 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     6097        M 0x800021e4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     6098        M 0x800021e8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80002248
       0     6101        M 0x80002248 ret                            #; ra  = 0x8000288c, goto 0x8000288c
       0     6106        M 0x8000288c mv      s0, s1                 #; s1  = 11, (wrb) s0  <-- 11
       0     6109        M 0x80002890 mv      s8, s10                #; s10 = 5, (wrb) s8  <-- 5
       0     6110        M 0x80002894 bnez    s10, pc - 40           #; s10 = 5, taken, goto 0x8000286c
       0     6112        M 0x8000286c add     a0, s9, s8             #; s9  = 0x0011fb47, s8  = 5, (wrb) a0  <-- 0x0011fb4c
       0     6115        M 0x80002870 lbu     a0, 0(a0)              #; a0  = 0x0011fb4c, a0  <~~ Byte[0x0011fb4c]
       0     6116        M 0x80002874 addi    s10, s8, -1            #; s8  = 5, (wrb) s10 <-- 4
       0     6117        M 0x80002878 addi    s1, s0, 1              #; s0  = 11, (wrb) s1  <-- 12
       0     6118        M 0x8000287c mv      a1, s6                 #; s6  = 0x0011fc27, (wrb) a1  <-- 0x0011fc27
       0     6119        M 0x80002880 mv      a2, s0                 #; s0  = 11, (wrb) a2  <-- 11
       0     6120        M 0x80002884 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     6121        M 0x80002888 jalr    s7                     #; s7  = 0x800021a0, (wrb) ra  <-- 0x8000288c, goto 0x800021a0
       0     6122        M                                           #; (lsu) a0  <-- 48
       0     6124        M 0x800021a0 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     6125        M 0x800021a4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6126        M 0x800021a8 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     6127        M 0x800021ac mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     6128        M 0x800021b0 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800041b0
       0     6129        M 0x800021b4 addi    a3, a3, -1500          #; a3  = 0x800041b0, (wrb) a3  <-- 0x80003bd4
       0     6130        M                                           #; (acc) a1  <-- 0x00d605b3
       0     6131        M 0x800021b8 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003bd4, (wrb) a1  <-- 0x80003bd4
       0     6132        M 0x800021bc lw      a4, 0(a1)              #; a1  = 0x80003bd4, a4  <~~ Word[0x80003bd4]
       0     6143        M                                           #; (lsu) a4  <-- 11
       0     6144        M 0x800021c0 addi    a5, a4, 1              #; a4  = 11, (wrb) a5  <-- 12
       0     6145        M 0x800021c4 sw      a5, 0(a1)              #; a1  = 0x80003bd4, 12 ~~> Word[0x80003bd4]
       0     6146        M 0x800021c8 add     a4, a1, a4             #; a1  = 0x80003bd4, a4  = 11, (wrb) a4  <-- 0x80003bdf
       0     6147        M 0x800021cc sb      a0, 72(a4)             #; a4  = 0x80003bdf, 48 ~~> Byte[0x80003c27]
       0     6148        M 0x800021d0 lw      a4, 0(a1)              #; a1  = 0x80003bd4, a4  <~~ Word[0x80003bd4]
       0     6169        M                                           #; (lsu) a4  <-- 12
       0     6170        M 0x800021d4 addi    a4, a4, -1020          #; a4  = 12, (wrb) a4  <-- -1008
       0     6171        M 0x800021d8 snez    a4, a4                 #; a4  = -1008, (wrb) a4  <-- 1
       0     6172        M 0x800021dc addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     6173        M 0x800021e0 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     6174        M 0x800021e4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     6175        M 0x800021e8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80002248
       0     6178        M 0x80002248 ret                            #; ra  = 0x8000288c, goto 0x8000288c
       0     6183        M 0x8000288c mv      s0, s1                 #; s1  = 12, (wrb) s0  <-- 12
       0     6186        M 0x80002890 mv      s8, s10                #; s10 = 4, (wrb) s8  <-- 4
       0     6187        M 0x80002894 bnez    s10, pc - 40           #; s10 = 4, taken, goto 0x8000286c
       0     6189        M 0x8000286c add     a0, s9, s8             #; s9  = 0x0011fb47, s8  = 4, (wrb) a0  <-- 0x0011fb4b
       0     6192        M 0x80002870 lbu     a0, 0(a0)              #; a0  = 0x0011fb4b, a0  <~~ Byte[0x0011fb4b]
       0     6193        M 0x80002874 addi    s10, s8, -1            #; s8  = 4, (wrb) s10 <-- 3
       0     6194        M 0x80002878 addi    s1, s0, 1              #; s0  = 12, (wrb) s1  <-- 13
       0     6195        M 0x8000287c mv      a1, s6                 #; s6  = 0x0011fc27, (wrb) a1  <-- 0x0011fc27
       0     6196        M 0x80002880 mv      a2, s0                 #; s0  = 12, (wrb) a2  <-- 12
       0     6197        M 0x80002884 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     6198        M 0x80002888 jalr    s7                     #; s7  = 0x800021a0, (wrb) ra  <-- 0x8000288c, goto 0x800021a0
       0     6199        M                                           #; (lsu) a0  <-- 48
       0     6201        M 0x800021a0 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     6202        M 0x800021a4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6203        M 0x800021a8 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     6204        M 0x800021ac mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     6205        M 0x800021b0 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800041b0
       0     6206        M 0x800021b4 addi    a3, a3, -1500          #; a3  = 0x800041b0, (wrb) a3  <-- 0x80003bd4
       0     6207        M                                           #; (acc) a1  <-- 0x00d605b3
       0     6208        M 0x800021b8 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003bd4, (wrb) a1  <-- 0x80003bd4
       0     6209        M 0x800021bc lw      a4, 0(a1)              #; a1  = 0x80003bd4, a4  <~~ Word[0x80003bd4]
       0     6220        M                                           #; (lsu) a4  <-- 12
       0     6221        M 0x800021c0 addi    a5, a4, 1              #; a4  = 12, (wrb) a5  <-- 13
       0     6222        M 0x800021c4 sw      a5, 0(a1)              #; a1  = 0x80003bd4, 13 ~~> Word[0x80003bd4]
       0     6223        M 0x800021c8 add     a4, a1, a4             #; a1  = 0x80003bd4, a4  = 12, (wrb) a4  <-- 0x80003be0
       0     6224        M 0x800021cc sb      a0, 72(a4)             #; a4  = 0x80003be0, 48 ~~> Byte[0x80003c28]
       0     6225        M 0x800021d0 lw      a4, 0(a1)              #; a1  = 0x80003bd4, a4  <~~ Word[0x80003bd4]
       0     6246        M                                           #; (lsu) a4  <-- 13
       0     6247        M 0x800021d4 addi    a4, a4, -1020          #; a4  = 13, (wrb) a4  <-- -1007
       0     6248        M 0x800021d8 snez    a4, a4                 #; a4  = -1007, (wrb) a4  <-- 1
       0     6249        M 0x800021dc addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     6250        M 0x800021e0 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     6251        M 0x800021e4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     6252        M 0x800021e8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80002248
       0     6255        M 0x80002248 ret                            #; ra  = 0x8000288c, goto 0x8000288c
       0     6260        M 0x8000288c mv      s0, s1                 #; s1  = 13, (wrb) s0  <-- 13
       0     6263        M 0x80002890 mv      s8, s10                #; s10 = 3, (wrb) s8  <-- 3
       0     6264        M 0x80002894 bnez    s10, pc - 40           #; s10 = 3, taken, goto 0x8000286c
       0     6266        M 0x8000286c add     a0, s9, s8             #; s9  = 0x0011fb47, s8  = 3, (wrb) a0  <-- 0x0011fb4a
       0     6269        M 0x80002870 lbu     a0, 0(a0)              #; a0  = 0x0011fb4a, a0  <~~ Byte[0x0011fb4a]
       0     6270        M 0x80002874 addi    s10, s8, -1            #; s8  = 3, (wrb) s10 <-- 2
       0     6271        M 0x80002878 addi    s1, s0, 1              #; s0  = 13, (wrb) s1  <-- 14
       0     6272        M 0x8000287c mv      a1, s6                 #; s6  = 0x0011fc27, (wrb) a1  <-- 0x0011fc27
       0     6273        M 0x80002880 mv      a2, s0                 #; s0  = 13, (wrb) a2  <-- 13
       0     6274        M 0x80002884 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     6275        M 0x80002888 jalr    s7                     #; s7  = 0x800021a0, (wrb) ra  <-- 0x8000288c, goto 0x800021a0
       0     6276        M                                           #; (lsu) a0  <-- 48
       0     6278        M 0x800021a0 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     6279        M 0x800021a4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6280        M 0x800021a8 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     6281        M 0x800021ac mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     6282        M 0x800021b0 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800041b0
       0     6283        M 0x800021b4 addi    a3, a3, -1500          #; a3  = 0x800041b0, (wrb) a3  <-- 0x80003bd4
       0     6284        M                                           #; (acc) a1  <-- 0x00d605b3
       0     6285        M 0x800021b8 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003bd4, (wrb) a1  <-- 0x80003bd4
       0     6286        M 0x800021bc lw      a4, 0(a1)              #; a1  = 0x80003bd4, a4  <~~ Word[0x80003bd4]
       0     6297        M                                           #; (lsu) a4  <-- 13
       0     6298        M 0x800021c0 addi    a5, a4, 1              #; a4  = 13, (wrb) a5  <-- 14
       0     6299        M 0x800021c4 sw      a5, 0(a1)              #; a1  = 0x80003bd4, 14 ~~> Word[0x80003bd4]
       0     6300        M 0x800021c8 add     a4, a1, a4             #; a1  = 0x80003bd4, a4  = 13, (wrb) a4  <-- 0x80003be1
       0     6301        M 0x800021cc sb      a0, 72(a4)             #; a4  = 0x80003be1, 48 ~~> Byte[0x80003c29]
       0     6302        M 0x800021d0 lw      a4, 0(a1)              #; a1  = 0x80003bd4, a4  <~~ Word[0x80003bd4]
       0     6323        M                                           #; (lsu) a4  <-- 14
       0     6324        M 0x800021d4 addi    a4, a4, -1020          #; a4  = 14, (wrb) a4  <-- -1006
       0     6325        M 0x800021d8 snez    a4, a4                 #; a4  = -1006, (wrb) a4  <-- 1
       0     6326        M 0x800021dc addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     6327        M 0x800021e0 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     6328        M 0x800021e4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     6329        M 0x800021e8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80002248
       0     6332        M 0x80002248 ret                            #; ra  = 0x8000288c, goto 0x8000288c
       0     6337        M 0x8000288c mv      s0, s1                 #; s1  = 14, (wrb) s0  <-- 14
       0     6340        M 0x80002890 mv      s8, s10                #; s10 = 2, (wrb) s8  <-- 2
       0     6341        M 0x80002894 bnez    s10, pc - 40           #; s10 = 2, taken, goto 0x8000286c
       0     6343        M 0x8000286c add     a0, s9, s8             #; s9  = 0x0011fb47, s8  = 2, (wrb) a0  <-- 0x0011fb49
       0     6346        M 0x80002870 lbu     a0, 0(a0)              #; a0  = 0x0011fb49, a0  <~~ Byte[0x0011fb49]
       0     6347        M 0x80002874 addi    s10, s8, -1            #; s8  = 2, (wrb) s10 <-- 1
       0     6348        M 0x80002878 addi    s1, s0, 1              #; s0  = 14, (wrb) s1  <-- 15
       0     6349        M 0x8000287c mv      a1, s6                 #; s6  = 0x0011fc27, (wrb) a1  <-- 0x0011fc27
       0     6350        M 0x80002880 mv      a2, s0                 #; s0  = 14, (wrb) a2  <-- 14
       0     6351        M 0x80002884 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     6352        M 0x80002888 jalr    s7                     #; s7  = 0x800021a0, (wrb) ra  <-- 0x8000288c, goto 0x800021a0
       0     6353        M                                           #; (lsu) a0  <-- 48
       0     6355        M 0x800021a0 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     6356        M 0x800021a4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6357        M 0x800021a8 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     6358        M 0x800021ac mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     6359        M 0x800021b0 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800041b0
       0     6360        M 0x800021b4 addi    a3, a3, -1500          #; a3  = 0x800041b0, (wrb) a3  <-- 0x80003bd4
       0     6361        M                                           #; (acc) a1  <-- 0x00d605b3
       0     6362        M 0x800021b8 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003bd4, (wrb) a1  <-- 0x80003bd4
       0     6363        M 0x800021bc lw      a4, 0(a1)              #; a1  = 0x80003bd4, a4  <~~ Word[0x80003bd4]
       0     6374        M                                           #; (lsu) a4  <-- 14
       0     6375        M 0x800021c0 addi    a5, a4, 1              #; a4  = 14, (wrb) a5  <-- 15
       0     6376        M 0x800021c4 sw      a5, 0(a1)              #; a1  = 0x80003bd4, 15 ~~> Word[0x80003bd4]
       0     6377        M 0x800021c8 add     a4, a1, a4             #; a1  = 0x80003bd4, a4  = 14, (wrb) a4  <-- 0x80003be2
       0     6378        M 0x800021cc sb      a0, 72(a4)             #; a4  = 0x80003be2, 48 ~~> Byte[0x80003c2a]
       0     6379        M 0x800021d0 lw      a4, 0(a1)              #; a1  = 0x80003bd4, a4  <~~ Word[0x80003bd4]
       0     6400        M                                           #; (lsu) a4  <-- 15
       0     6401        M 0x800021d4 addi    a4, a4, -1020          #; a4  = 15, (wrb) a4  <-- -1005
       0     6402        M 0x800021d8 snez    a4, a4                 #; a4  = -1005, (wrb) a4  <-- 1
       0     6403        M 0x800021dc addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     6404        M 0x800021e0 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     6405        M 0x800021e4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     6406        M 0x800021e8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80002248
       0     6409        M 0x80002248 ret                            #; ra  = 0x8000288c, goto 0x8000288c
       0     6414        M 0x8000288c mv      s0, s1                 #; s1  = 15, (wrb) s0  <-- 15
       0     6417        M 0x80002890 mv      s8, s10                #; s10 = 1, (wrb) s8  <-- 1
       0     6418        M 0x80002894 bnez    s10, pc - 40           #; s10 = 1, taken, goto 0x8000286c
       0     6420        M 0x8000286c add     a0, s9, s8             #; s9  = 0x0011fb47, s8  = 1, (wrb) a0  <-- 0x0011fb48
       0     6423        M 0x80002870 lbu     a0, 0(a0)              #; a0  = 0x0011fb48, a0  <~~ Byte[0x0011fb48]
       0     6424        M 0x80002874 addi    s10, s8, -1            #; s8  = 1, (wrb) s10 <-- 0
       0     6425        M 0x80002878 addi    s1, s0, 1              #; s0  = 15, (wrb) s1  <-- 16
       0     6426        M 0x8000287c mv      a1, s6                 #; s6  = 0x0011fc27, (wrb) a1  <-- 0x0011fc27
       0     6427        M 0x80002880 mv      a2, s0                 #; s0  = 15, (wrb) a2  <-- 15
       0     6428        M 0x80002884 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     6429        M 0x80002888 jalr    s7                     #; s7  = 0x800021a0, (wrb) ra  <-- 0x8000288c, goto 0x800021a0
       0     6430        M                                           #; (lsu) a0  <-- 48
       0     6432        M 0x800021a0 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     6433        M 0x800021a4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6434        M 0x800021a8 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     6435        M 0x800021ac mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     6436        M 0x800021b0 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800041b0
       0     6437        M 0x800021b4 addi    a3, a3, -1500          #; a3  = 0x800041b0, (wrb) a3  <-- 0x80003bd4
       0     6438        M                                           #; (acc) a1  <-- 0x00d605b3
       0     6439        M 0x800021b8 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003bd4, (wrb) a1  <-- 0x80003bd4
       0     6440        M 0x800021bc lw      a4, 0(a1)              #; a1  = 0x80003bd4, a4  <~~ Word[0x80003bd4]
       0     6451        M                                           #; (lsu) a4  <-- 15
       0     6452        M 0x800021c0 addi    a5, a4, 1              #; a4  = 15, (wrb) a5  <-- 16
       0     6453        M 0x800021c4 sw      a5, 0(a1)              #; a1  = 0x80003bd4, 16 ~~> Word[0x80003bd4]
       0     6454        M 0x800021c8 add     a4, a1, a4             #; a1  = 0x80003bd4, a4  = 15, (wrb) a4  <-- 0x80003be3
       0     6455        M 0x800021cc sb      a0, 72(a4)             #; a4  = 0x80003be3, 48 ~~> Byte[0x80003c2b]
       0     6456        M 0x800021d0 lw      a4, 0(a1)              #; a1  = 0x80003bd4, a4  <~~ Word[0x80003bd4]
       0     6477        M                                           #; (lsu) a4  <-- 16
       0     6478        M 0x800021d4 addi    a4, a4, -1020          #; a4  = 16, (wrb) a4  <-- -1004
       0     6479        M 0x800021d8 snez    a4, a4                 #; a4  = -1004, (wrb) a4  <-- 1
       0     6480        M 0x800021dc addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     6481        M 0x800021e0 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     6482        M 0x800021e4 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     6483        M 0x800021e8 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80002248
       0     6486        M 0x80002248 ret                            #; ra  = 0x8000288c, goto 0x8000288c
       0     6491        M 0x8000288c mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
       0     6494        M 0x80002890 mv      s8, s10                #; s10 = 0, (wrb) s8  <-- 0
       0     6495        M 0x80002894 bnez    s10, pc - 40           #; s10 = 0, not taken
       0     6496        M 0x80002898 j       pc + 0x8               #; goto 0x800028a0
       0     6508        M 0x800028a0 sub     a0, s1, s4             #; s1  = 16, s4  = 8, (wrb) a0  <-- 8
       0     6509        M 0x800028a4 sltu    a0, a0, s2             #; a0  = 8, s2  = 0, (wrb) a0  <-- 0
       0     6510        M 0x800028a8 xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0     6511        M 0x800028ac xori    a1, s5, 1              #; s5  = 0, (wrb) a1  <-- 1
       0     6520        M 0x800028b0 or      a0, a1, a0             #; a1  = 1, a0  = 1, (wrb) a0  <-- 1
       0     6521        M 0x800028b4 bnez    a0, pc + 48            #; a0  = 1, taken, goto 0x800028e4
       0     6543        M 0x800028e4 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
       0     6544        M 0x800028e8 mv      a0, s0                 #; s0  = 16, (wrb) a0  <-- 16
       0     6547        M 0x800028ec fld     fs2, 40(sp)            #; fs2  <~~ Doub[0x0011fb68]
       0     6548        M                                           #; (f:lsu) fs2  <-- 0.0
       0     6557        M 0x800028f8 lw      s10, 64(sp)            #; sp  = 0x0011fb40, s10 <~~ Word[0x0011fb80]
                         M 0x800028f0 fld     fs1, 48(sp)            #; fs1  <~~ Doub[0x0011fb70]
       0     6558        M 0x800028f4 fld     fs0, 56(sp)            #; fs0  <~~ Doub[0x0011fb78], (f:lsu) fs1  <-- 0.0
       0     6559        M                                           #; (f:lsu) fs0  <-- 0.0
       0     6561        M                                           #; (lsu) s10 <-- 0x8000388e
       0     6562        M 0x800028fc lw      s9, 68(sp)             #; sp  = 0x0011fb40, s9  <~~ Word[0x0011fb84]
       0     6565        M                                           #; (lsu) s9  <-- 8
       0     6567        M 0x80002900 lw      s8, 72(sp)             #; sp  = 0x0011fb40, s8  <~~ Word[0x0011fb88]
       0     6570        M                                           #; (lsu) s8  <-- 16
       0     6571        M 0x80002904 lw      s7, 76(sp)             #; sp  = 0x0011fb40, s7  <~~ Word[0x0011fb8c]
       0     6574        M                                           #; (lsu) s7  <-- 0
       0     6575        M 0x80002908 lw      s6, 80(sp)             #; sp  = 0x0011fb40, s6  <~~ Word[0x0011fb90]
       0     6578        M                                           #; (lsu) s6  <-- 0
       0     6579        M 0x8000290c lw      s5, 84(sp)             #; sp  = 0x0011fb40, s5  <~~ Word[0x0011fb94]
       0     6582        M                                           #; (lsu) s5  <-- -1
       0     6583        M 0x80002910 lw      s4, 88(sp)             #; sp  = 0x0011fb40, s4  <~~ Word[0x0011fb98]
       0     6586        M                                           #; (lsu) s4  <-- 0x0011fc27
       0     6587        M 0x80002914 lw      s3, 92(sp)             #; sp  = 0x0011fb40, s3  <~~ Word[0x0011fb9c]
       0     6590        M                                           #; (lsu) s3  <-- 0x0011fc40
       0     6591        M 0x80002918 lw      s2, 96(sp)             #; sp  = 0x0011fb40, s2  <~~ Word[0x0011fba0]
       0     6594        M                                           #; (lsu) s2  <-- 0x800021a0
       0     6595        M 0x8000291c lw      s1, 100(sp)            #; sp  = 0x0011fb40, s1  <~~ Word[0x0011fba4]
       0     6598        M                                           #; (lsu) s1  <-- 8
       0     6599        M 0x80002920 lw      s0, 104(sp)            #; sp  = 0x0011fb40, s0  <~~ Word[0x0011fba8]
       0     6602        M                                           #; (lsu) s0  <-- 0
       0     6603        M 0x80002924 lw      ra, 108(sp)            #; sp  = 0x0011fb40, ra  <~~ Word[0x0011fbac]
       0     6604        M 0x80002928 addi    sp, sp, 112            #; sp  = 0x0011fb40, (wrb) sp  <-- 0x0011fbb0
       0     6606        M                                           #; (lsu) ra  <-- 0x800018d0
       0     6607        M 0x8000292c ret                            #; ra  = 0x800018d0, goto 0x800018d0
       0     6610        M 0x800018d0 j       pc + 0x7c0             #; goto 0x80002090
       0     6622        M 0x80002090 mv      s8, a0                 #; a0  = 16, (wrb) s8  <-- 16
       0     6623        M 0x80002094 li      s6, 37                 #; (wrb) s6  <-- 37
       0     6624        M 0x80002098 li      s7, 46                 #; (wrb) s7  <-- 46
       0     6625        M 0x8000209c addi    s0, s10, 1             #; s10 = 0x8000388e, (wrb) s0  <-- 0x8000388f
       0     6634        M 0x800020a0 j       pc - 0xa74             #; goto 0x8000162c
       0     6637        M 0x8000162c addi    s10, s0, 2             #; s0  = 0x8000388f, (wrb) s10 <-- 0x80003891
       0     6640        M 0x80001630 mv      s9, s8                 #; s8  = 16, (wrb) s9  <-- 16
       0     6641        M 0x80001634 li      s8, 10                 #; (wrb) s8  <-- 10
       0     6642        M 0x80001638 lbu     a0, 0(s0)              #; s0  = 0x8000388f, a0  <~~ Byte[0x8000388f]
       0     6653        M                                           #; (lsu) a0  <-- 10
       0     6654        M 0x8000163c beqz    a0, pc + 2824          #; a0  = 10, not taken
       0     6655        M 0x80001640 beq     a0, s6, pc + 48        #; a0  = 10, s6  = 37, not taken
       0     6656        M 0x80001644 addi    s1, s9, 1              #; s9  = 16, (wrb) s1  <-- 17
       0     6657        M 0x80001648 mv      a1, s4                 #; s4  = 0x0011fc27, (wrb) a1  <-- 0x0011fc27
       0     6658        M 0x8000164c mv      a2, s9                 #; s9  = 16, (wrb) a2  <-- 16
       0     6659        M 0x80001650 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     6660        M 0x80001654 jalr    s2                     #; s2  = 0x800021a0, (wrb) ra  <-- 0x80001658, goto 0x800021a0
       0     6664        M 0x800021a0 beqz    a0, pc + 168           #; a0  = 10, not taken
       0     6665        M 0x800021a4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6666        M 0x800021a8 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     6667        M 0x800021ac mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     6668        M 0x800021b0 auipc   a3, 0x2                #; (wrb) a3  <-- 0x800041b0
       0     6669        M 0x800021b4 addi    a3, a3, -1500          #; a3  = 0x800041b0, (wrb) a3  <-- 0x80003bd4
       0     6670        M                                           #; (acc) a1  <-- 0x00d605b3
       0     6671        M 0x800021b8 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003bd4, (wrb) a1  <-- 0x80003bd4
       0     6672        M 0x800021bc lw      a4, 0(a1)              #; a1  = 0x80003bd4, a4  <~~ Word[0x80003bd4]
       0     6683        M                                           #; (lsu) a4  <-- 16
       0     6684        M 0x800021c0 addi    a5, a4, 1              #; a4  = 16, (wrb) a5  <-- 17
       0     6685        M 0x800021c4 sw      a5, 0(a1)              #; a1  = 0x80003bd4, 17 ~~> Word[0x80003bd4]
       0     6686        M 0x800021c8 add     a4, a1, a4             #; a1  = 0x80003bd4, a4  = 16, (wrb) a4  <-- 0x80003be4
       0     6687        M 0x800021cc sb      a0, 72(a4)             #; a4  = 0x80003be4, 10 ~~> Byte[0x80003c2c]
       0     6688        M 0x800021d0 lw      a4, 0(a1)              #; a1  = 0x80003bd4, a4  <~~ Word[0x80003bd4]
       0     6709        M                                           #; (lsu) a4  <-- 17
       0     6710        M 0x800021d4 addi    a4, a4, -1020          #; a4  = 17, (wrb) a4  <-- -1003
       0     6711        M 0x800021d8 snez    a4, a4                 #; a4  = -1003, (wrb) a4  <-- 1
       0     6712        M 0x800021dc addi    a0, a0, -10            #; a0  = 10, (wrb) a0  <-- 0
       0     6713        M 0x800021e0 snez    a0, a0                 #; a0  = 0, (wrb) a0  <-- 0
       0     6714        M 0x800021e4 and     a0, a0, a4             #; a0  = 0, a4  = 1, (wrb) a0  <-- 0
       0     6715        M 0x800021e8 bnez    a0, pc + 96            #; a0  = 0, not taken
       0     6716        M 0x800021ec add     a0, a3, a2             #; a3  = 0x80003bd4, a2  = 0, (wrb) a0  <-- 0x80003bd4
       0     6717        M 0x800021f0 addi    a2, a0, 72             #; a0  = 0x80003bd4, (wrb) a2  <-- 0x80003c1c
       0     6718        M 0x800021f4 sw      zero, 12(a0)           #; a0  = 0x80003bd4, 0 ~~> Word[0x80003be0]
       0     6719        M 0x800021f8 li      a3, 64                 #; (wrb) a3  <-- 64
       0     6720        M 0x800021fc sw      a3, 8(a0)              #; a0  = 0x80003bd4, 64 ~~> Word[0x80003bdc]
       0     6729        M 0x80002200 sw      zero, 20(a0)           #; a0  = 0x80003bd4, 0 ~~> Word[0x80003be8]
       0     6730        M 0x80002204 li      a3, 1                  #; (wrb) a3  <-- 1
       0     6731        M 0x80002208 sw      a3, 16(a0)             #; a0  = 0x80003bd4, 1 ~~> Word[0x80003be4]
       0     6732        M 0x8000220c sw      zero, 28(a0)           #; a0  = 0x80003bd4, 0 ~~> Word[0x80003bf0]
       0     6741        M 0x80002210 sw      a2, 24(a0)             #; a0  = 0x80003bd4, 0x80003c1c ~~> Word[0x80003bec]
       0     6744        M 0x80002214 lw      a2, 0(a1)              #; a1  = 0x80003bd4, a2  <~~ Word[0x80003bd4]
       0     6745        M 0x80002218 addi    a3, a0, 8              #; a0  = 0x80003bd4, (wrb) a3  <-- 0x80003bdc
       0     6746        M 0x8000221c sw      zero, 36(a0)           #; a0  = 0x80003bd4, 0 ~~> Word[0x80003bf8]
       0     6766        M                                           #; (lsu) a2  <-- 17
       0     6767        M 0x80002220 sw      a2, 32(a0)             #; a0  = 0x80003bd4, 17 ~~> Word[0x80003bf4]
       0     6768        M 0x80002224 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80004224
       0     6769        M 0x80002228 addi    a0, a0, -1892          #; a0  = 0x80004224, (wrb) a0  <-- 0x80003ac0
       0     6770        M 0x8000222c sw      a3, 0(a0)              #; a0  = 0x80003ac0, 0x80003bdc ~~> Word[0x80003ac0]
       0     6771        M 0x80002230 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80004230
       0     6772        M 0x80002234 addi    a0, a0, -1840          #; a0  = 0x80004230, (wrb) a0  <-- 0x80003b00
       0     6773        M 0x80002238 lw      a2, 0(a0)              #; a0  = 0x80003b00, a2  <~~ Word[0x80003b00]
       0     6796        M                                           #; (lsu) a2  <-- 0
       0     6797        M 0x8000223c beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80002238
       0     6798        M 0x80002238 lw      a2, 0(a0)              #; a0  = 0x80003b00, a2  <~~ Word[0x80003b00]
       0     6809        M                                           #; (lsu) a2  <-- 1
       0     6810        M 0x8000223c beqz    a2, pc - 4             #; a2  = 1, not taken
       0     6813        M 0x80002240 sw      zero, 0(a0)            #; a0  = 0x80003b00, 0 ~~> Word[0x80003b00]
       0     6814        M 0x80002244 sw      zero, 0(a1)            #; a1  = 0x80003bd4, 0 ~~> Word[0x80003bd4]
       0     6815        M 0x80002248 ret                            #; ra  = 0x80001658, goto 0x80001658
       0     6818        M 0x80001658 addi    s0, s0, 1              #; s0  = 0x8000388f, (wrb) s0  <-- 0x80003890
       0     6819        M 0x8000165c addi    s10, s10, 1            #; s10 = 0x80003891, (wrb) s10 <-- 0x80003892
       0     6821        M 0x80001660 mv      s9, s1                 #; s1  = 17, (wrb) s9  <-- 17
       0     6822        M 0x80001664 lbu     a0, 0(s0)              #; s0  = 0x80003890, a0  <~~ Byte[0x80003890]
       0     6836        M                                           #; (lsu) a0  <-- 0
       0     6837        M 0x80001668 bnez    a0, pc - 40            #; a0  = 0, not taken
       0     6838        M 0x8000166c j       pc + 0xad8             #; goto 0x80002144
       0     6850        M 0x80002144 mv      a2, s9                 #; s9  = 17, (wrb) a2  <-- 17
       0     6851        M 0x80002148 bltu    s9, s5, pc + 8         #; s9  = 17, s5  = -1, taken, goto 0x80002150
       0     6862        M 0x80002150 li      a0, 0                  #; (wrb) a0  <-- 0
       0     6863        M 0x80002154 mv      a1, s4                 #; s4  = 0x0011fc27, (wrb) a1  <-- 0x0011fc27
       0     6864        M 0x80002158 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     6865        M 0x8000215c jalr    s2                     #; s2  = 0x800021a0, (wrb) ra  <-- 0x80002160, goto 0x800021a0
       0     6876        M 0x800021a0 beqz    a0, pc + 168           #; a0  = 0, taken, goto 0x80002248
       0     6881        M 0x80002248 ret                            #; ra  = 0x80002160, goto 0x80002160
       0     6882        M 0x80002160 mv      a0, s9                 #; s9  = 17, (wrb) a0  <-- 17
       0     6883        M 0x80002164 lw      s11, 60(sp)            #; sp  = 0x0011fbb0, s11 <~~ Word[0x0011fbec]
       0     6886        M                                           #; (lsu) s11 <-- 0
       0     6887        M 0x80002168 lw      s10, 64(sp)            #; sp  = 0x0011fbb0, s10 <~~ Word[0x0011fbf0]
       0     6890        M                                           #; (lsu) s10 <-- 0
       0     6891        M 0x8000216c lw      s9, 68(sp)             #; sp  = 0x0011fbb0, s9  <~~ Word[0x0011fbf4]
       0     6894        M                                           #; (lsu) s9  <-- 0
       0     6896        M 0x80002170 lw      s8, 72(sp)             #; sp  = 0x0011fbb0, s8  <~~ Word[0x0011fbf8]
       0     6899        M                                           #; (lsu) s8  <-- 0
       0     6900        M 0x80002174 lw      s7, 76(sp)             #; sp  = 0x0011fbb0, s7  <~~ Word[0x0011fbfc]
       0     6903        M                                           #; (lsu) s7  <-- 0
       0     6904        M 0x80002178 lw      s6, 80(sp)             #; sp  = 0x0011fbb0, s6  <~~ Word[0x0011fc00]
       0     6907        M                                           #; (lsu) s6  <-- 0
       0     6908        M 0x8000217c lw      s5, 84(sp)             #; sp  = 0x0011fbb0, s5  <~~ Word[0x0011fc04]
       0     6911        M                                           #; (lsu) s5  <-- 0
       0     6912        M 0x80002180 lw      s4, 88(sp)             #; sp  = 0x0011fbb0, s4  <~~ Word[0x0011fc08]
       0     6915        M                                           #; (lsu) s4  <-- 0
       0     6916        M 0x80002184 lw      s3, 92(sp)             #; sp  = 0x0011fbb0, s3  <~~ Word[0x0011fc0c]
       0     6919        M                                           #; (lsu) s3  <-- 0
       0     6920        M 0x80002188 lw      s2, 96(sp)             #; sp  = 0x0011fbb0, s2  <~~ Word[0x0011fc10]
       0     6923        M                                           #; (lsu) s2  <-- 0
       0     6924        M 0x8000218c lw      s1, 100(sp)            #; sp  = 0x0011fbb0, s1  <~~ Word[0x0011fc14]
       0     6927        M                                           #; (lsu) s1  <-- 0
       0     6928        M 0x80002190 lw      s0, 104(sp)            #; sp  = 0x0011fbb0, s0  <~~ Word[0x0011fc18]
       0     6931        M                                           #; (lsu) s0  <-- 0
       0     6932        M 0x80002194 lw      ra, 108(sp)            #; sp  = 0x0011fbb0, ra  <~~ Word[0x0011fc1c]
       0     6933        M 0x80002198 addi    sp, sp, 112            #; sp  = 0x0011fbb0, (wrb) sp  <-- 0x0011fc20
       0     6935        M                                           #; (lsu) ra  <-- 0x8000159c
       0     6936        M 0x8000219c ret                            #; ra  = 0x8000159c, goto 0x8000159c
       0     6948        M 0x8000159c lw      ra, 12(sp)             #; sp  = 0x0011fc20, ra  <~~ Word[0x0011fc2c]
       0     6951        M                                           #; (lsu) ra  <-- 0x80001500
       0     6960        M 0x800015a0 addi    sp, sp, 48             #; sp  = 0x0011fc20, (wrb) sp  <-- 0x0011fc50
       0     6961        M 0x800015a4 ret                            #; ra  = 0x80001500, goto 0x80001500
       0     6974        M 0x80001500 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003500
       0     6975        M 0x80001504 addi    a0, a0, 1568           #; a0  = 0x80003500, (wrb) a0  <-- 0x80003b20
       0     6978        M 0x80001508 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80003b20]
       0     6987        M                                           #; (f:lsu) ft3  <-- 0.0001
       0     6988        M 0x8000150c flt.d   a0, ft3, fs0           #; ft3  = 0.0001, fs0  = 0.0
       0     6990        M                                           #; (acc) s9  <-- 0x2b813c87
                         M 0x80001510 fld     fs11, 680(sp)          #; fs11 <~~ Doub[0x0011fef8]
       0     6991        M 0x80001514 fld     fs10, 688(sp)          #; fs10 <~~ Doub[0x0011ff00], (f:lsu) fs11 <-- 0.0
       0     6992        M 0x80001518 fld     fs9, 696(sp)           #; fs9  <~~ Doub[0x0011ff08], (f:lsu) fs10 <-- 0.0
       0     6993        M 0x8000151c fld     fs8, 704(sp)           #; fs8  <~~ Doub[0x0011ff10], (f:lsu) fs9  <-- 0.0
       0     6994        M 0x80001520 fld     fs7, 712(sp)           #; fs7  <~~ Doub[0x0011ff18], (f:lsu) fs8  <-- 0.0
       0     6995        M 0x80001524 fld     fs6, 720(sp)           #; fs6  <~~ Doub[0x0011ff20], (f:lsu) fs7  <-- 0.0
       0     6996        M 0x80001528 fld     fs5, 728(sp)           #; fs5  <~~ Doub[0x0011ff28], (f:lsu) fs6  <-- 0.0
       0     6997        M 0x8000152c fld     fs4, 736(sp)           #; fs4  <~~ Doub[0x0011ff30], (f:lsu) fs5  <-- 0.0
       0     6998        M 0x80001530 fld     fs3, 744(sp)           #; fs3  <~~ Doub[0x0011ff38], (f:lsu) fs4  <-- 0.0
       0     6999        M 0x80001534 fld     fs2, 752(sp)           #; fs2  <~~ Doub[0x0011ff40], (f:lsu) fs3  <-- 0.0
       0     7000        M 0x80001538 fld     fs1, 760(sp)           #; fs1  <~~ Doub[0x0011ff48], (f:lsu) fs2  <-- 0.0
       0     7001        M 0x8000153c fld     fs0, 768(sp)           #; fs0  <~~ Doub[0x0011ff50], (f:lsu) fs1  <-- 0.0
       0     7002        M                                           #; (f:lsu) fs0  <-- 0.0
       0     7008        M 0x80001540 lw      ra, 780(sp)            #; sp  = 0x0011fc50, ra  <~~ Word[0x0011ff5c]
       0     7009        M 0x80001544 addi    sp, sp, 784            #; sp  = 0x0011fc50, (wrb) sp  <-- 0x0011ff60
       0     7011        M                                           #; (lsu) ra  <-- 0x80003600
       0     7012        M 0x80001548 ret                            #; ra  = 0x80003600, goto 0x80003600
       0     7024        M 0x80003600 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
       0     7025        M 0x80003604 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80003604
       0     7026        M 0x80003608 jalr    ra, ra, 524            #; ra  = 0x80003604, (wrb) ra  <-- 0x8000360c, goto 0x80003810
       0     7047        M 0x80003810 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
       0     7048        M 0x80003814 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x8000360c ~~> Word[0x0011ff5c]
       0     7049        M 0x80003818 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80003818
       0     7050        M 0x8000381c jalr    ra, ra, -1264          #; ra  = 0x80003818, (wrb) ra  <-- 0x80003820, goto 0x80003328
       0     7061        M 0x80003328 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     7062        M 0x8000332c add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     7064        M 0x80003330 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     7067        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     7068        M 0x80003334 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     7071        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     7072        M 0x80003338 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
       0     7073        M 0x8000333c ret                            #; ra  = 0x80003820, goto 0x80003820
       0     7075        M                                           #; (lsu) a0  <-- 0x00120190
       0     7076        M 0x80003820 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
       0     7086        M                                           #; (lsu) a0  <-- 0
       0     7087        M 0x80003824 mv      zero, a0               #; a0  = 0
       0     7088        M 0x80003828 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
       0     7089        M 0x8000382c addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
       0     7091        M                                           #; (lsu) ra  <-- 0x8000360c
       0     7092        M 0x80003830 ret                            #; ra  = 0x8000360c, goto 0x8000360c
       0     7106        M 0x8000360c mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
       0     7110        M 0x80003610 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80003610
       0     7111        M 0x80003614 jalr    ra, ra, 556            #; ra  = 0x80003610, (wrb) ra  <-- 0x80003618, goto 0x8000383c
       0     7112        M 0x8000383c addi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff58
       0     7113        M 0x80003840 sw      a0, 0(sp)              #; sp  = 0x0011ff58, 0 ~~> Word[0x0011ff58]
       0     7114        M 0x80003844 sw      ra, 4(sp)              #; sp  = 0x0011ff58, 0x80003618 ~~> Word[0x0011ff5c]
       0     7115        M 0x80003848 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80003848
       0     7116        M 0x8000384c jalr    ra, ra, -1344          #; ra  = 0x80003848, (wrb) ra  <-- 0x80003850, goto 0x80003308
       0     7127        M 0x80003308 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     7128        M 0x8000330c add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     7131        M 0x80003310 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     7134        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     7135        M 0x80003314 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     7138        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     7139        M 0x80003318 lw      a0, 8(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff78]
       0     7140        M 0x8000331c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     7142        M                                           #; (lsu) a0  <-- 0
       0     7143        M 0x80003320 sub     a0, a1, a0             #; a1  = 0, a0  = 0, (wrb) a0  <-- 0
       0     7144        M 0x80003324 ret                            #; ra  = 0x80003850, goto 0x80003850
       0     7145        M 0x80003850 lw      t0, 0(sp)              #; sp  = 0x0011ff58, t0  <~~ Word[0x0011ff58]
       0     7148        M                                           #; (lsu) t0  <-- 0
       0     7149        M 0x80003854 lw      ra, 4(sp)              #; sp  = 0x0011ff58, ra  <~~ Word[0x0011ff5c]
       0     7150        M 0x80003858 addi    sp, sp, 8              #; sp  = 0x0011ff58, (wrb) sp  <-- 0x0011ff60
       0     7151        M 0x8000385c bnez    a0, pc + 24            #; a0  = 0, not taken
       0     7152        M                                           #; (lsu) ra  <-- 0x80003618
       0     7156        M 0x80003860 slli    t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 0
       0     7157        M 0x80003864 ori     t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 1
       0     7158        M 0x80003868 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80003868
       0     7159        M 0x8000386c addi    t1, t1, 600            #; t1  = 0x80003868, (wrb) t1  <-- 0x80003ac0
       0     7167        M 0x80003870 sw      t0, 0(t1)              #; t1  = 0x80003ac0, 1 ~~> Word[0x80003ac0]
       0     7168        M 0x80003874 ret                            #; ra  = 0x80003618, goto 0x80003618
       0     7181        M 0x80003618 wfi                            #; 

## Performance metrics

Performance metrics for section 0 @ (12, 7181):
snitch_loads                                   135
snitch_stores                                  142
fpss_stores                                     16
fpss_loads                                     132
snitch_avg_load_latency                    11.9556
snitch_occupancy                            0.2039
snitch_fseq_rel_offloads                    0.3382
fseq_yield                                     1.0
fseq_fpu_yield                                 1.0
fpss_section_latency                             0
fpss_avg_fpu_latency                        2.0826
fpss_avg_load_latency                       1.4848
fpss_occupancy                              0.1042
fpss_fpu_occupancy                          0.0827
fpss_fpu_rel_occupancy                      0.7938
cycles                                        7170
total_ipc                                   0.3081
