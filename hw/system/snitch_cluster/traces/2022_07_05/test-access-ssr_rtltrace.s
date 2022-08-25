       0       12        M 0x00001000 csrr    a0, mhartid            #; mhartid = 0, (wrb) a0  <-- 0
       0       32        M 0x00001004 auipc   a1, 0x0                #; (wrb) a1  <-- 4100
       0       56        M 0x00001008 addi    a1, a1, 32             #; a1  = 4100, (wrb) a1  <-- 4132
       0       84        M 0x0000100c auipc   t0, 0x0                #; (wrb) t0  <-- 4108
       0      104        M 0x00001010 lw      t0, 20(t0)             #; t0  = 4108, t0  <~~ Word[0x00001020]
       0      115        M                                           #; (lsu) t0  <-- 0x80003380
       0      128        M 0x00001014 jalr    t0                     #; t0  = 0x80003380, (wrb) ra  <-- 4120, goto 0x80003380
       0      269        M 0x80003380 auipc   gp, 0x1                #; (wrb) gp  <-- 0x80004380
       0      270        M 0x80003384 addi    gp, gp, -248           #; gp  = 0x80004380, (wrb) gp  <-- 0x80004288
       0      271        M 0x80003388 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80003388
       0      272        M 0x8000338c jalr    ra, ra, 964            #; ra  = 0x80003388, (wrb) ra  <-- 0x80003390, goto 0x8000374c
       0      292        M 0x8000374c mv      a4, a1                 #; a1  = 4132, (wrb) a4  <-- 4132
       0      304        M 0x80003750 lw      a1, 4(a4)              #; a4  = 4132, a1  <~~ Word[0x00001028]
       0      334        M                                           #; (lsu) a1  <-- 8
       0      335        M 0x80003754 lw      t0, 8(a4)              #; a4  = 4132, t0  <~~ Word[0x0000102c]
       0      374        M                                           #; (lsu) t0  <-- 0
       0      375        M 0x80003758 lw      a2, 12(a4)             #; a4  = 4132, a2  <~~ Word[0x00001030]
       0      414        M                                           #; (lsu) a2  <-- 0x00100000
       0      415        M 0x8000375c lw      t1, 16(a4)             #; a4  = 4132, t1  <~~ Word[0x00001034]
       0      454        M                                           #; (lsu) t1  <-- 0x00020000
       0      455        M 0x80003760 lw      t2, 20(a4)             #; a4  = 4132, t2  <~~ Word[0x00001038]
       0      456        M 0x80003764 sub     a0, a0, t0             #; a0  = 0, t0  = 0, (wrb) a0  <-- 0
       0      457        M 0x80003768 div     t3, a0, a1             #; a0  = 0, a1  = 8
       0      460        M                                           #; (acc) t4  <-- 0x027e0eb3
       0      494        M                                           #; (lsu) t2  <-- 0
       0      495        M 0x8000376c mul     t4, t3, t2             #; t3  = 0, t2  = 0
       0      498        M                                           #; (acc) a2  <-- 0x01d60633
       0      499        M 0x80003770 add     a2, a2, t4             #; a2  = 0x00100000, t4  = 0, (wrb) a2  <-- 0x00100000
       0      500        M 0x80003774 add     a3, a2, t1             #; a2  = 0x00100000, t1  = 0x00020000, (wrb) a3  <-- 0x00120000
       0      501        M 0x80003778 remu    a0, a0, a1             #; a0  = 0, a1  = 8
       0      502        M 0x8000377c ret                            #; ra  = 0x80003390, goto 0x80003390
       0      504        M                                           #; (acc) s0  <-- 0x00050413
       0      505        M 0x80003390 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
       0      506        M 0x80003394 mv      a0, a4                 #; a4  = 4132, (wrb) a0  <-- 4132
       0      507        M 0x80003398 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80003398
       0      508        M 0x8000339c jalr    ra, ra, 1036           #; ra  = 0x80003398, (wrb) ra  <-- 0x800033a0, goto 0x800037a4
       0      523        M 0x800037a4 lw      a0, 8(a0)              #; a0  = 4132, a0  <~~ Word[0x0000102c]
       0      524        M 0x800037a8 ret                            #; ra  = 0x800033a0, goto 0x800033a0
       0      543        M                                           #; (lsu) a0  <-- 0
       0      544        M 0x800033a0 mv      t0, a0                 #; a0  = 0, (wrb) t0  <-- 0
       0      545        M 0x800033a4 mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
       0      546        M 0x800033a8 csrr    t1, mhartid            #; mhartid = 0, (wrb) t1  <-- 0
       0      547        M 0x800033ac sub     t0, t1, t0             #; t1  = 0, t0  = 0, (wrb) t0  <-- 0
       0      549        M 0x800033b0 bnez    t0, pc + 36            #; t0  = 0, not taken
       0      550        M 0x800033b4 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800033b4
       0      551        M 0x800033b8 addi    t0, t0, 1948           #; t0  = 0x800033b4, (wrb) t0  <-- 0x80003b50
       0      552        M 0x800033bc auipc   t1, 0x0                #; (wrb) t1  <-- 0x800033bc
       0      562        M 0x800033c0 addi    t1, t1, 1944           #; t1  = 0x800033bc, (wrb) t1  <-- 0x80003b54
       0      563        M 0x800033c4 bge     t0, t1, pc + 16        #; t0  = 0x80003b50, t1  = 0x80003b54, not taken
       0      564        M 0x800033c8 sw      zero, 0(t0)            #; t0  = 0x80003b50, 0 ~~> Word[0x80003b50]
       0      565        M 0x800033cc addi    t0, t0, 4              #; t0  = 0x80003b50, (wrb) t0  <-- 0x80003b54
       0      573        M 0x800033d0 blt     t0, t1, pc - 8         #; t0  = 0x80003b54, t1  = 0x80003b54, not taken
       0      574        M 0x800033d4 csrr    t0, misa               #; misa = 0x40801129, (wrb) t0  <-- 0x40801129
       0      575        M 0x800033d8 andi    t0, t0, 40             #; t0  = 0x40801129, (wrb) t0  <-- 40
       0      576        M 0x800033dc beqz    t0, pc + 132           #; t0  = 40, not taken
       0      586        M 0x800033e0 fcvt.d.w ft0, zero             #; ac1  = 0
       0      587        M 0x800033e4 fcvt.d.w ft1, zero             #; ac1  = 0, (f:fpu) ft0  <-- 0.0
       0      588        M 0x800033e8 fcvt.d.w ft2, zero             #; ac1  = 0, (f:fpu) ft1  <-- 0.0
       0      589        M 0x800033ec fcvt.d.w ft3, zero             #; ac1  = 0, (f:fpu) ft2  <-- 0.0
       0      590        M                                           #; (f:fpu) ft3  <-- 0.0
       0      598        M 0x800033f0 fcvt.d.w ft4, zero             #; ac1  = 0
       0      599        M 0x800033f4 fcvt.d.w ft5, zero             #; ac1  = 0, (f:fpu) ft4  <-- 0.0
       0      600        M 0x800033f8 fcvt.d.w ft6, zero             #; ac1  = 0, (f:fpu) ft5  <-- 0.0
       0      601        M 0x800033fc fcvt.d.w ft7, zero             #; ac1  = 0, (f:fpu) ft6  <-- 0.0
       0      602        M                                           #; (f:fpu) ft7  <-- 0.0
       0      610        M 0x80003400 fcvt.d.w fs0, zero             #; ac1  = 0
       0      611        M 0x80003404 fcvt.d.w fs1, zero             #; ac1  = 0, (f:fpu) fs0  <-- 0.0
       0      612        M 0x80003408 fcvt.d.w fa0, zero             #; ac1  = 0, (f:fpu) fs1  <-- 0.0
       0      613        M 0x8000340c fcvt.d.w fa1, zero             #; ac1  = 0, (f:fpu) fa0  <-- 0.0
       0      614        M                                           #; (f:fpu) fa1  <-- 0.0
       0      622        M 0x80003410 fcvt.d.w fa2, zero             #; ac1  = 0
       0      623        M 0x80003414 fcvt.d.w fa3, zero             #; ac1  = 0, (f:fpu) fa2  <-- 0.0
       0      624        M 0x80003418 fcvt.d.w fa4, zero             #; ac1  = 0, (f:fpu) fa3  <-- 0.0
       0      625        M 0x8000341c fcvt.d.w fa5, zero             #; ac1  = 0, (f:fpu) fa4  <-- 0.0
       0      626        M                                           #; (f:fpu) fa5  <-- 0.0
       0      634        M 0x80003420 fcvt.d.w fa6, zero             #; ac1  = 0
       0      635        M 0x80003424 fcvt.d.w fa7, zero             #; ac1  = 0, (f:fpu) fa6  <-- 0.0
       0      636        M 0x80003428 fcvt.d.w fs2, zero             #; ac1  = 0, (f:fpu) fa7  <-- 0.0
       0      637        M 0x8000342c fcvt.d.w fs3, zero             #; ac1  = 0, (f:fpu) fs2  <-- 0.0
       0      638        M                                           #; (f:fpu) fs3  <-- 0.0
       0      646        M 0x80003430 fcvt.d.w fs4, zero             #; ac1  = 0
       0      647        M 0x80003434 fcvt.d.w fs5, zero             #; ac1  = 0, (f:fpu) fs4  <-- 0.0
       0      648        M 0x80003438 fcvt.d.w fs6, zero             #; ac1  = 0, (f:fpu) fs5  <-- 0.0
       0      649        M 0x8000343c fcvt.d.w fs7, zero             #; ac1  = 0, (f:fpu) fs6  <-- 0.0
       0      650        M                                           #; (f:fpu) fs7  <-- 0.0
       0      658        M 0x80003440 fcvt.d.w fs8, zero             #; ac1  = 0
       0      659        M 0x80003444 fcvt.d.w fs9, zero             #; ac1  = 0, (f:fpu) fs8  <-- 0.0
       0      660        M 0x80003448 fcvt.d.w fs10, zero            #; ac1  = 0, (f:fpu) fs9  <-- 0.0
       0      661        M 0x8000344c fcvt.d.w fs11, zero            #; ac1  = 0, (f:fpu) fs10 <-- 0.0
       0      662        M                                           #; (f:fpu) fs11 <-- 0.0
       0      670        M 0x80003450 fcvt.d.w ft8, zero             #; ac1  = 0
       0      671        M 0x80003454 fcvt.d.w ft9, zero             #; ac1  = 0, (f:fpu) ft8  <-- 0.0
       0      672        M 0x80003458 fcvt.d.w ft10, zero            #; ac1  = 0, (f:fpu) ft9  <-- 0.0
       0      673        M 0x8000345c fcvt.d.w ft11, zero            #; ac1  = 0, (f:fpu) ft10 <-- 0.0
       0      674        M                                           #; (f:fpu) ft11 <-- 0.0
       0      681        M 0x80003460 addi    a3, a3, -8             #; a3  = 0x00120000, (wrb) a3  <-- 0x0011fff8
       0      682        M 0x80003464 sw      zero, 0(a3)            #; a3  = 0x0011fff8, 0 ~~> Word[0x0011fff8]
       0      683        M 0x80003468 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80003468
       0      684        M 0x8000346c lw      t0, 900(t0)            #; t0  = 0x80003468, t0  <~~ Word[0x800037ec]
       0      704        M                                           #; (lsu) t0  <-- 136
       0      705        M 0x80003470 sub     a3, a3, t0             #; a3  = 0x0011fff8, t0  = 136, (wrb) a3  <-- 0x0011ff70
       0      706        M 0x80003474 mv      a5, a3                 #; a3  = 0x0011ff70, (wrb) a5  <-- 0x0011ff70
       0      707        M 0x80003478 auipc   t2, 0x0                #; (wrb) t2  <-- 0x80003478
       0      708        M 0x8000347c lw      t2, 880(t2)            #; t2  = 0x80003478, t2  <~~ Word[0x800037e8]
       0      744        M                                           #; (lsu) t2  <-- 10
       0      745        M 0x80003480 sll     t0, a0, t2             #; a0  = 0, t2  = 10, (wrb) t0  <-- 0
       0      746        M 0x80003484 sll     t1, a1, t2             #; a1  = 8, t2  = 10, (wrb) t1  <-- 8192
       0      747        M 0x80003488 sub     sp, a3, t0             #; a3  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
       0      748        M 0x8000348c sub     a3, a3, t1             #; a3  = 0x0011ff70, t1  = 8192, (wrb) a3  <-- 0x0011df70
       0      749        M 0x80003490 slli    t0, a0, 3              #; a0  = 0, (wrb) t0  <-- 0
       0      750        M 0x80003494 slli    t1, a1, 3              #; a1  = 8, (wrb) t1  <-- 64
       0      751        M 0x80003498 sub     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
       0      752        M 0x8000349c sub     a3, a3, t1             #; a3  = 0x0011df70, t1  = 64, (wrb) a3  <-- 0x0011df30
       0      761        M 0x800034a0 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800034a0
       0      762        M 0x800034a4 addi    t0, t0, 1512           #; t0  = 0x800034a0, (wrb) t0  <-- 0x80003a88
       0      763        M 0x800034a8 auipc   t1, 0x0                #; (wrb) t1  <-- 0x800034a8
       0      764        M 0x800034ac addi    t1, t1, 1504           #; t1  = 0x800034a8, (wrb) t1  <-- 0x80003a88
       0      775        M 0x800034b0 auipc   t2, 0x0                #; (wrb) t2  <-- 0x800034b0
       0      776        M 0x800034b4 addi    t2, t2, 1496           #; t2  = 0x800034b0, (wrb) t2  <-- 0x80003a88
       0      777        M 0x800034b8 auipc   t3, 0x0                #; (wrb) t3  <-- 0x800034b8
       0      778        M 0x800034bc addi    t3, t3, 1504           #; t3  = 0x800034b8, (wrb) t3  <-- 0x80003a98
       0      787        M 0x800034c0 add     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0x80003a88, (wrb) sp  <-- 0x801239f8
       0      788        M 0x800034c4 sub     sp, sp, t1             #; sp  = 0x801239f8, t1  = 0x80003a88, (wrb) sp  <-- 0x0011ff70
       0      789        M 0x800034c8 add     sp, sp, t2             #; sp  = 0x0011ff70, t2  = 0x80003a88, (wrb) sp  <-- 0x801239f8
       0      790        M 0x800034cc sub     sp, sp, t3             #; sp  = 0x801239f8, t3  = 0x80003a98, (wrb) sp  <-- 0x0011ff60
       0      799        M 0x800034d0 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
       0      800        M 0x800034d4 mv      tp, sp                 #; sp  = 0x0011ff60, (wrb) tp  <-- 0x0011ff60
       0      801        M 0x800034d8 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
       0      802        M 0x800034dc mv      t4, tp                 #; tp  = 0x0011ff60, (wrb) t4  <-- 0x0011ff60
       0      811        M 0x800034e0 bge     t0, t1, pc + 24        #; t0  = 0x80003a88, t1  = 0x80003a88, taken, goto 0x800034f8
       0      823        M 0x800034f8 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800034f8
       0      824        M 0x800034fc addi    t0, t0, 1424           #; t0  = 0x800034f8, (wrb) t0  <-- 0x80003a88
       0      835        M 0x80003500 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80003500
       0      836        M 0x80003504 addi    t1, t1, 1432           #; t1  = 0x80003500, (wrb) t1  <-- 0x80003a98
       0      837        M 0x80003508 bge     t0, t1, pc + 20        #; t0  = 0x80003a88, t1  = 0x80003a98, not taken
       0      838        M 0x8000350c sw      zero, 0(t4)            #; t4  = 0x0011ff60, 0 ~~> Word[0x0011ff60]
       0      847        M 0x80003510 addi    t0, t0, 4              #; t0  = 0x80003a88, (wrb) t0  <-- 0x80003a8c
       0      848        M 0x80003514 addi    t4, t4, 4              #; t4  = 0x0011ff60, (wrb) t4  <-- 0x0011ff64
       0      849        M 0x80003518 blt     t0, t2, pc - 12        #; t0  = 0x80003a8c, t2  = 0x80003a88, not taken
       0      850        M 0x8000351c addi    sp, sp, -20            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff4c
       0      862        M 0x80003520 sw      a0, 0(sp)              #; sp  = 0x0011ff4c, 0 ~~> Word[0x0011ff4c]
       0      863        M 0x80003524 sw      a1, 4(sp)              #; sp  = 0x0011ff4c, 8 ~~> Word[0x0011ff50]
       0      864        M 0x80003528 sw      a2, 8(sp)              #; sp  = 0x0011ff4c, 0x00100000 ~~> Word[0x0011ff54]
       0      865        M 0x8000352c sw      a3, 12(sp)             #; sp  = 0x0011ff4c, 0x0011df30 ~~> Word[0x0011ff58]
       0      875        M 0x80003530 sw      a4, 16(sp)             #; sp  = 0x0011ff4c, 4132 ~~> Word[0x0011ff5c]
       0      876        M 0x80003534 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80003534
       0      877        M 0x80003538 jalr    ra, ra, -1056          #; ra  = 0x80003534, (wrb) ra  <-- 0x8000353c, goto 0x80003114
       0      899        M 0x80003114 sw      a5, 0(a5)              #; a5  = 0x0011ff70, 0x0011ff70 ~~> Word[0x0011ff70]
       0      900        M 0x80003118 sw      a4, 4(a5)              #; a5  = 0x0011ff70, 4132 ~~> Word[0x0011ff74]
       0      902        M 0x8000311c lw      t1, 8(a4)              #; a4  = 4132, t1  <~~ Word[0x0000102c]
       0      923        M                                           #; (lsu) t1  <-- 0
       0      924        M 0x80003120 sw      t1, 8(a5)              #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff78]
       0      925        M 0x80003124 lw      a6, 40(a4)             #; a4  = 4132, a6  <~~ Word[0x0000104c]
       0      963        M                                           #; (lsu) a6  <-- 1
       0      964        M 0x80003128 lw      a7, 44(a4)             #; a4  = 4132, a7  <~~ Word[0x00001050]
       0     1003        M                                           #; (lsu) a7  <-- 1
       0     1004        M 0x8000312c lw      t0, 4(a4)              #; a4  = 4132, t0  <~~ Word[0x00001028]
       0     1005        M 0x80003130 mul     a6, a7, a6             #; a7  = 1, a6  = 1
       0     1008        M                                           #; (acc) a0  <-- 0x02580533
       0     1043        M                                           #; (lsu) t0  <-- 8
       0     1044        M 0x80003134 mul     a0, a6, t0             #; a6  = 1, t0  = 8
       0     1047        M                                           #; (acc) a2  <-- 0x00a7a623
       0     1048        M 0x80003138 sw      a0, 12(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff7c]
       0     1049        M 0x8000313c csrr    a7, mhartid            #; mhartid = 0, (wrb) a7  <-- 0
       0     1050        M 0x80003140 sub     a0, a7, t1             #; a7  = 0, t1  = 0, (wrb) a0  <-- 0
       0     1051        M 0x80003144 divu    a0, a0, t0             #; a0  = 0, t0  = 8
       0     1054        M                                           #; (acc) a6  <-- 0x00a7a823
       0     1055        M 0x80003148 sw      a0, 16(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff80]
       0     1056        M 0x8000314c sw      a6, 20(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff84]
       0     1062        M 0x80003150 sw      t1, 24(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff88]
       0     1063        M 0x80003154 sw      a1, 28(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff8c]
       0     1064        M 0x80003158 lw      a0, 24(a4)             #; a4  = 4132, a0  <~~ Word[0x0000103c]
       0     1065        M 0x8000315c lui     a1, 0x10000            #; (wrb) a1  <-- 0x10000000
       0     1083        M                                           #; (lsu) a0  <-- 0x80000000
       0     1084        M 0x80003160 add     a0, a0, a1             #; a0  = 0x80000000, a1  = 0x10000000, (wrb) a0  <-- 0x90000000
       0     1085        M 0x80003164 sw      zero, 36(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff94]
       0     1086        M 0x80003168 sw      a0, 32(a5)             #; a5  = 0x0011ff70, 0x90000000 ~~> Word[0x0011ff90]
       0     1087        M 0x8000316c lw      a0, 32(a4)             #; a4  = 4132, a0  <~~ Word[0x00001044]
       0     1123        M                                           #; (lsu) a0  <-- 0
       0     1124        M 0x80003170 lw      a1, 36(a4)             #; a4  = 4132, a1  <~~ Word[0x00001048]
       0     1125        M 0x80003174 sw      a0, 40(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff98]
       0     1163        M                                           #; (lsu) a1  <-- 1
       0     1164        M 0x80003178 sw      a1, 44(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff9c]
       0     1165        M 0x8000317c sw      a2, 48(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffa0]
       0     1166        M 0x80003180 sw      zero, 52(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffa4]
       0     1167        M 0x80003184 sw      a3, 56(a5)             #; a5  = 0x0011ff70, 0x0011df30 ~~> Word[0x0011ffa8]
       0     1168        M 0x80003188 sw      zero, 60(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffac]
       0     1169        M 0x8000318c lw      a0, 16(a4)             #; a4  = 4132, a0  <~~ Word[0x00001034]
       0     1190        M                                           #; (lsu) a0  <-- 0x00020000
       0     1191        M 0x80003190 add     a6, a2, a0             #; a2  = 0x00100000, a0  = 0x00020000, (wrb) a6  <-- 0x00120000
       0     1192        M 0x80003194 addi    a1, a6, 400            #; a6  = 0x00120000, (wrb) a1  <-- 0x00120190
       0     1193        M 0x80003198 sw      a1, 112(a5)            #; a5  = 0x0011ff70, 0x00120190 ~~> Word[0x0011ffe0]
       0     1194        M 0x8000319c sltu    t0, a6, a0             #; a6  = 0x00120000, a0  = 0x00020000, (wrb) t0  <-- 0
       0     1195        M 0x800031a0 srli    a1, a0, 1              #; a0  = 0x00020000, (wrb) a1  <-- 0x00010000
       0     1196        M 0x800031a4 add     t1, a6, a1             #; a6  = 0x00120000, a1  = 0x00010000, (wrb) t1  <-- 0x00130000
       0     1197        M 0x800031a8 sltu    a1, t1, a6             #; t1  = 0x00130000, a6  = 0x00120000, (wrb) a1  <-- 0
       0     1198        M 0x800031ac add     a1, t0, a1             #; t0  = 0, a1  = 0, (wrb) a1  <-- 0
       0     1208        M 0x800031b0 sw      t1, 64(a5)             #; a5  = 0x0011ff70, 0x00130000 ~~> Word[0x0011ffb0]
       0     1209        M 0x800031b4 sw      a1, 68(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffb4]
       0     1210        M 0x800031b8 slli    a0, a0, 1              #; a0  = 0x00020000, (wrb) a0  <-- 0x00040000
       0     1211        M 0x800031bc add     a1, a0, a2             #; a0  = 0x00040000, a2  = 0x00100000, (wrb) a1  <-- 0x00140000
       0     1222        M 0x800031c0 sltu    a0, a1, a0             #; a1  = 0x00140000, a0  = 0x00040000, (wrb) a0  <-- 0
       0     1223        M 0x800031c4 sw      a1, 72(a5)             #; a5  = 0x0011ff70, 0x00140000 ~~> Word[0x0011ffb8]
       0     1224        M 0x800031c8 sw      a0, 76(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffbc]
       0     1226        M 0x800031cc sw      zero, 104(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd8]
       0     1234        M 0x800031d0 sw      zero, 108(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffdc]
       0     1235        M 0x800031d4 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1236        M 0x800031d8 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1237        M 0x800031dc sw      a5, 0(a0)              #; a0  = 0x0011ff60, 0x0011ff70 ~~> Word[0x0011ff60]
       0     1246        M 0x800031e0 lw      a0, 0(a5)              #; a5  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1250        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1251        M 0x800031e4 lw      a1, 24(a0)             #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ff88]
       0     1254        M                                           #; (lsu) a1  <-- 0
       0     1255        M 0x800031e8 lw      a0, 28(a0)             #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff8c]
       0     1256        M 0x800031ec sub     a1, a7, a1             #; a7  = 0, a1  = 0, (wrb) a1  <-- 0
       0     1258        M                                           #; (lsu) a0  <-- 8
       0     1259        M 0x800031f0 remu    a0, a1, a0             #; a1  = 0, a0  = 8
       0     1260        M 0x800031f4 lui     a1, 0x0                #; (wrb) a1  <-- 0
       0     1261        M 0x800031f8 add     a1, a1, tp             #; a1  = 0, tp  = 0x0011ff60, (wrb) a1  <-- 0x0011ff60
       0     1263        M                                           #; (acc) tp  <-- 0x00a5a223
       0     1264        M 0x800031fc sw      a0, 4(a1)              #; a1  = 0x0011ff60, 0 ~~> Word[0x0011ff64]
       0     1270        M 0x80003200 li      a0, 1096               #; (wrb) a0  <-- 1096
       0     1271        M 0x80003204 mul     a0, a7, a0             #; a7  = 0, a0  = 1096
       0     1272        M 0x80003208 auipc   a1, 0x1                #; (wrb) a1  <-- 0x80004208
       0     1273        M 0x8000320c addi    a1, a1, -1716          #; a1  = 0x80004208, (wrb) a1  <-- 0x80003b54
       0     1282        M 0x80003210 add     a0, a0, a1             #; a0  = 0, a1  = 0x80003b54, (wrb) a0  <-- 0x80003b54
       0     1283        M 0x80003214 sw      zero, 0(a0)            #; a0  = 0x80003b54, 0 ~~> Word[0x80003b54]
       0     1284        M 0x80003218 lw      a7, 48(a4)             #; a4  = 4132, a7  <~~ Word[0x00001054]
       0     1354        M                                           #; (lsu) a7  <-- 0xffff0000
       0     1355        M 0x8000321c sw      a7, 116(a5)            #; a5  = 0x0011ff70, 0xffff0000 ~~> Word[0x0011ffe4]
       0     1356        M 0x80003220 sw      a6, 124(a5)            #; a5  = 0x0011ff70, 0x00120000 ~~> Word[0x0011ffec]
       0     1357        M 0x80003224 sw      zero, 120(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffe8]
       0     1358        M 0x80003228 addi    a4, a6, 384            #; a6  = 0x00120000, (wrb) a4  <-- 0x00120180
       0     1359        M 0x8000322c sw      a4, 128(a5)            #; a5  = 0x0011ff70, 0x00120180 ~~> Word[0x0011fff0]
       0     1360        M 0x80003230 addi    a0, a2, 7              #; a2  = 0x00100000, (wrb) a0  <-- 0x00100007
       0     1361        M 0x80003234 andi    a0, a0, -8             #; a0  = 0x00100007, (wrb) a0  <-- 0x00100000
       0     1362        M 0x80003238 sw      a0, 80(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc0]
       0     1363        M 0x8000323c sub     a2, a3, a2             #; a3  = 0x0011df30, a2  = 0x00100000, (wrb) a2  <-- 0x0001df30
       0     1364        M 0x80003240 sw      a2, 84(a5)             #; a5  = 0x0011ff70, 0x0001df30 ~~> Word[0x0011ffc4]
       0     1365        M 0x80003244 sw      a0, 88(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc8]
       0     1366        M 0x80003248 lw      a0, 0(a1)              #; a1  = 0x80003b54, a0  <~~ Word[0x80003b54]
       0     1377        M                                           #; (lsu) a0  <-- 0
       0     1378        M 0x8000324c addi    a0, a0, 1103           #; a0  = 0, (wrb) a0  <-- 1103
       0     1379        M 0x80003250 andi    a0, a0, -8             #; a0  = 1103, (wrb) a0  <-- 1096
       0     1380        M 0x80003254 sw      a0, 92(a5)             #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffcc]
       0     1381        M 0x80003258 sw      zero, 96(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd0]
       0     1382        M 0x8000325c sw      a0, 100(a5)            #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffd4]
       0     1383        M 0x80003260 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1384        M 0x80003264 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1385        M 0x80003268 sw      a7, 8(a0)              #; a0  = 0x0011ff60, 0xffff0000 ~~> Word[0x0011ff68]
       0     1386        M 0x8000326c lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1391        M 0x80003270 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1392        M 0x80003274 sw      a4, 12(a0)             #; a0  = 0x0011ff60, 0x00120180 ~~> Word[0x0011ff6c]
       0     1393        M 0x80003278 ret                            #; ra  = 0x8000353c, goto 0x8000353c
       0     1406        M 0x8000353c lw      a0, 0(sp)              #; sp  = 0x0011ff4c, a0  <~~ Word[0x0011ff4c]
       0     1409        M                                           #; (lsu) a0  <-- 0
       0     1410        M 0x80003540 lw      a1, 4(sp)              #; sp  = 0x0011ff4c, a1  <~~ Word[0x0011ff50]
       0     1413        M                                           #; (lsu) a1  <-- 8
       0     1414        M 0x80003544 lw      a2, 8(sp)              #; sp  = 0x0011ff4c, a2  <~~ Word[0x0011ff54]
       0     1417        M                                           #; (lsu) a2  <-- 0x00100000
       0     1418        M 0x80003548 lw      a3, 12(sp)             #; sp  = 0x0011ff4c, a3  <~~ Word[0x0011ff58]
       0     1421        M                                           #; (lsu) a3  <-- 0x0011df30
       0     1422        M 0x8000354c lw      a4, 16(sp)             #; sp  = 0x0011ff4c, a4  <~~ Word[0x0011ff5c]
       0     1423        M 0x80003550 addi    sp, sp, 20             #; sp  = 0x0011ff4c, (wrb) sp  <-- 0x0011ff60
       0     1424        M 0x80003554 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80003554
       0     1425        M 0x80003558 addi    t0, t0, 60             #; t0  = 0x80003554, (wrb) t0  <-- 0x80003590
       0     1426        M 0x8000355c csrw    mtvec, t0              #; t0  = 0x80003590, (lsu) a4  <-- 4132
       0     1434        M 0x80003560 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80003560
       0     1435        M 0x80003564 jalr    ra, ra, 544            #; ra  = 0x80003560, (wrb) ra  <-- 0x80003568, goto 0x80003780
       0     1451        M 0x80003780 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
       0     1452        M 0x80003784 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x80003568 ~~> Word[0x0011ff5c]
       0     1453        M 0x80003788 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80003788
       0     1454        M 0x8000378c jalr    ra, ra, -1260          #; ra  = 0x80003788, (wrb) ra  <-- 0x80003790, goto 0x8000329c
       0     1472        M 0x8000329c lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1484        M 0x800032a0 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1485        M 0x800032a4 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     1488        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1489        M 0x800032a8 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1493        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1494        M 0x800032ac lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
       0     1496        M 0x800032b0 ret                            #; ra  = 0x80003790, goto 0x80003790
       0     1497        M                                           #; (lsu) a0  <-- 0x00120190
       0     1498        M 0x80003790 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
       0     1527        M                                           #; (lsu) a0  <-- 0
       0     1528        M 0x80003794 mv      zero, a0               #; a0  = 0
       0     1529        M 0x80003798 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
       0     1530        M 0x8000379c addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
       0     1532        M                                           #; (lsu) ra  <-- 0x80003568
       0     1533        M 0x800037a0 ret                            #; ra  = 0x80003568, goto 0x80003568
       0     1537        M 0x80003568 auipc   ra, 0xffffd            #; (wrb) ra  <-- 0x80000568
       0     1538        M 0x8000356c jalr    ra, ra, 204            #; ra  = 0x80000568, (wrb) ra  <-- 0x80003570, goto 0x80000634
       0     1543        M 0x80000634 addi    sp, sp, -32            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff40
       0     1544        M 0x80000638 sw      ra, 28(sp)             #; sp  = 0x0011ff40, 0x80003570 ~~> Word[0x0011ff5c]
       0     1546        M 0x80000640 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1547        M 0x80000644 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
                         M 0x8000063c fsd     fs0, 16(sp)            #; 0.0 ~~> Doub[0x0011ff50]
       0     1548        M 0x80000648 lw      a1, 4(a0)              #; a0  = 0x0011ff60, a1  <~~ Word[0x0011ff64]
       0     1549        M 0x8000064c li      a0, 0                  #; (wrb) a0  <-- 0
       0     1551        M                                           #; (lsu) a1  <-- 0
       0     1559        M 0x80000650 beqz    a1, pc + 8             #; a1  = 0, taken, goto 0x80000658
       0     1560        M 0x80000658 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1561        M 0x8000065c add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1582        M 0x80000660 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     1585        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1586        M 0x80000664 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1589        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1590        M 0x80000668 lw      a1, 88(a0)             #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ffc8]
       0     1593        M                                           #; (lsu) a1  <-- 0x00100000
       0     1594        M 0x8000066c lw      a2, 80(a0)             #; a0  = 0x0011ff70, a2  <~~ Word[0x0011ffc0]
       0     1597        M                                           #; (lsu) a2  <-- 0x00100000
       0     1602        M 0x80000670 lw      a4, 84(a0)             #; a0  = 0x0011ff70, a4  <~~ Word[0x0011ffc4]
       0     1603        M 0x80000674 addi    a3, a1, 864            #; a1  = 0x00100000, (wrb) a3  <-- 0x00100360
       0     1605        M                                           #; (lsu) a4  <-- 0x0001df30
       0     1606        M 0x80000678 add     a2, a4, a2             #; a4  = 0x0001df30, a2  = 0x00100000, (wrb) a2  <-- 0x0011df30
       0     1607        M 0x8000067c bgeu    a2, a3, pc + 20        #; a2  = 0x0011df30, a3  = 0x00100360, taken, goto 0x80000690
       0     1625        M 0x80000690 addi    a4, a1, 856            #; a1  = 0x00100000, (wrb) a4  <-- 0x00100358
       0     1626        M 0x80000694 srli    a2, a1, 20             #; a1  = 0x00100000, (wrb) a2  <-- 1
       0     1627        M 0x80000698 snez    a6, a2                 #; a2  = 1, (wrb) a6  <-- 1
       0     1628        M 0x8000069c lui     a5, 0x120              #; (wrb) a5  <-- 0x00120000
       0     1637        M 0x800006a0 addi    a5, a5, 1              #; a5  = 0x00120000, (wrb) a5  <-- 0x00120001
       0     1638        M 0x800006a4 sltu    a4, a4, a5             #; a4  = 0x00100358, a5  = 0x00120001, (wrb) a4  <-- 1
       0     1639        M 0x800006a8 and     a4, a6, a4             #; a6  = 1, a4  = 1, (wrb) a4  <-- 1
       0     1640        M 0x800006ac sw      a3, 88(a0)             #; a0  = 0x0011ff70, 0x00100360 ~~> Word[0x0011ffc8]
       0     1649        M 0x800006b0 beqz    a4, pc + 80            #; a4  = 1, not taken
       0     1650        M 0x800006b4 li      a0, 8                  #; (wrb) a0  <-- 8
       0     1651        M 0x800006b8 li      a3, 107                #; (wrb) a3  <-- 107
       0     1652        M 0x800006bc li      a4, 64                 #; (wrb) a4  <-- 64
       0     1661        M 0x800006c0 li      a5, 192                #; (wrb) a5  <-- 192
       0     1662        M 0x800006c4 scfgw   a3, a4                 #; a3  = 107, a4  = 64
       0     1663        M 0x800006c8 scfgw   a0, a5                 #; a0  = 8, a5  = 192
       0     1664        M 0x800006cc li      a0, 32                 #; (wrb) a0  <-- 32
       0     1673        M 0x800006d0 scfgw   zero, a0               #; a0  = 32
       0     1674        M 0x800006d4 scfgwi  a1, 896                #; a1  = 0x00100000
       0     1676        M 0x800006dc li      a0, 1                  #; (wrb) a0  <-- 1
                         M 0x800006d8 csrrsi  a0, ssr, 1             #; 
       0     1685        M 0x800006e0 li      a3, 109                #; (wrb) a3  <-- 109
       0     1687        M 0x800006e4 fcvt.d.wu ft3, a0              #; ac1  = 1
       0     1688        M 0x800006ec addi    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 2
                         M                                           #; (f:fpu) ft3  <-- 1.0
       0     1689        M 0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
       0     1690        M                                           #; (f:fpu) ft0  <-- 1.0
       0     1697        M 0x800006f0 bne     a0, a3, pc - 12        #; a0  = 2, a3  = 109, taken, goto 0x800006e4
       0     1699        M 0x800006e4 fcvt.d.wu ft3, a0              #; ac1  = 2
       0     1700        M 0x800006ec addi    a0, a0, 1              #; a0  = 2, (wrb) a0  <-- 3
                         M                                           #; (f:fpu) ft3  <-- 2.0
       0     1701        M 0x800006f0 bne     a0, a3, pc - 12        #; a0  = 3, a3  = 109, taken, goto 0x800006e4
                         M 0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
       0     1702        M                                           #; (f:fpu) ft0  <-- 2.0
       0     1703        M 0x800006e4 fcvt.d.wu ft3, a0              #; ac1  = 3
       0     1704        M 0x800006ec addi    a0, a0, 1              #; a0  = 3, (wrb) a0  <-- 4
                         M                                           #; (f:fpu) ft3  <-- 3.0
       0     1705        M 0x800006f0 bne     a0, a3, pc - 12        #; a0  = 4, a3  = 109, taken, goto 0x800006e4
                         M 0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
       0     1706        M                                           #; (f:fpu) ft0  <-- 3.0
       0     1707        M 0x800006e4 fcvt.d.wu ft3, a0              #; ac1  = 4
       0     1708        M 0x800006ec addi    a0, a0, 1              #; a0  = 4, (wrb) a0  <-- 5
                         M                                           #; (f:fpu) ft3  <-- 4.0
       0     1709        M 0x800006f0 bne     a0, a3, pc - 12        #; a0  = 5, a3  = 109, taken, goto 0x800006e4
                         M 0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
       0     1710        M                                           #; (f:fpu) ft0  <-- 4.0
       0     1711        M 0x800006e4 fcvt.d.wu ft3, a0              #; ac1  = 5
       0     1712        M 0x800006ec addi    a0, a0, 1              #; a0  = 5, (wrb) a0  <-- 6
                         M                                           #; (f:fpu) ft3  <-- 5.0
       0     1713        M 0x800006f0 bne     a0, a3, pc - 12        #; a0  = 6, a3  = 109, taken, goto 0x800006e4
                         M 0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
       0     1714        M                                           #; (f:fpu) ft0  <-- 5.0
       0     1715        M 0x800006e4 fcvt.d.wu ft3, a0              #; ac1  = 6
       0     1716        M 0x800006ec addi    a0, a0, 1              #; a0  = 6, (wrb) a0  <-- 7
                         M                                           #; (f:fpu) ft3  <-- 6.0
       0     1717        M 0x800006f0 bne     a0, a3, pc - 12        #; a0  = 7, a3  = 109, taken, goto 0x800006e4
                         M 0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
       0     1718        M                                           #; (f:fpu) ft0  <-- 6.0
       0     1719        M 0x800006e4 fcvt.d.wu ft3, a0              #; ac1  = 7
       0     1720        M 0x800006ec addi    a0, a0, 1              #; a0  = 7, (wrb) a0  <-- 8
                         M                                           #; (f:fpu) ft3  <-- 7.0
       0     1721        M 0x800006f0 bne     a0, a3, pc - 12        #; a0  = 8, a3  = 109, taken, goto 0x800006e4
                         M 0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
       0     1722        M                                           #; (f:fpu) ft0  <-- 7.0
       0     1723        M 0x800006e4 fcvt.d.wu ft3, a0              #; ac1  = 8
       0     1724        M 0x800006ec addi    a0, a0, 1              #; a0  = 8, (wrb) a0  <-- 9
                         M                                           #; (f:fpu) ft3  <-- 8.0
       0     1725        M 0x800006f0 bne     a0, a3, pc - 12        #; a0  = 9, a3  = 109, taken, goto 0x800006e4
                         M 0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
       0     1726        M                                           #; (f:fpu) ft0  <-- 8.0
       0     1727        M 0x800006e4 fcvt.d.wu ft3, a0              #; ac1  = 9
       0     1728        M 0x800006ec addi    a0, a0, 1              #; a0  = 9, (wrb) a0  <-- 10
                         M                                           #; (f:fpu) ft3  <-- 9.0
       0     1729        M 0x800006f0 bne     a0, a3, pc - 12        #; a0  = 10, a3  = 109, taken, goto 0x800006e4
                         M 0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
       0     1730        M                                           #; (f:fpu) ft0  <-- 9.0
       0     1731        M 0x800006e4 fcvt.d.wu ft3, a0              #; ac1  = 10
       0     1732        M 0x800006ec addi    a0, a0, 1              #; a0  = 10, (wrb) a0  <-- 11
                         M                                           #; (f:fpu) ft3  <-- 10.0
       0     1733        M 0x800006f0 bne     a0, a3, pc - 12        #; a0  = 11, a3  = 109, taken, goto 0x800006e4
                         M 0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 10.0, ft3  = 10.0
       0     1734        M                                           #; (f:fpu) ft0  <-- 10.0
       0     1735        M 0x800006e4 fcvt.d.wu ft3, a0              #; ac1  = 11
       0     1736        M 0x800006ec addi    a0, a0, 1              #; a0  = 11, (wrb) a0  <-- 12
                         M                                           #; (f:fpu) ft3  <-- 11.0
       0     1737        M 0x800006f0 bne     a0, a3, pc - 12        #; a0  = 12, a3  = 109, taken, goto 0x800006e4
                         M 0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 11.0, ft3  = 11.0
       0     1738        M                                           #; (f:fpu) ft0  <-- 11.0
       0     1739        M 0x800006e4 fcvt.d.wu ft3, a0              #; ac1  = 12
       0     1740        M 0x800006ec addi    a0, a0, 1              #; a0  = 12, (wrb) a0  <-- 13
                         M                                           #; (f:fpu) ft3  <-- 12.0
       0     1741        M 0x800006f0 bne     a0, a3, pc - 12        #; a0  = 13, a3  = 109, taken, goto 0x800006e4
                         M 0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 12.0, ft3  = 12.0
       0     1742        M                                           #; (f:fpu) ft0  <-- 12.0
       0     1743        M 0x800006e4 fcvt.d.wu ft3, a0              #; ac1  = 13
       0     1744        M 0x800006ec addi    a0, a0, 1              #; a0  = 13, (wrb) a0  <-- 14
                         M                                           #; (f:fpu) ft3  <-- 13.0
       0     1745        M 0x800006f0 bne     a0, a3, pc - 12        #; a0  = 14, a3  = 109, taken, goto 0x800006e4
                         M 0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 13.0, ft3  = 13.0
       0     1746        M                                           #; (f:fpu) ft0  <-- 13.0
       0     1747        M 0x800006e4 fcvt.d.wu ft3, a0              #; ac1  = 14
       0     1748        M 0x800006ec addi    a0, a0, 1              #; a0  = 14, (wrb) a0  <-- 15
                         M                                           #; (f:fpu) ft3  <-- 14.0
       0     1749        M 0x800006f0 bne     a0, a3, pc - 12        #; a0  = 15, a3  = 109, taken, goto 0x800006e4
                         M 0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 14.0, ft3  = 14.0
       0     1750        M                                           #; (f:fpu) ft0  <-- 14.0
       0     1751        M 0x800006e4 fcvt.d.wu ft3, a0              #; ac1  = 15
       0     1752        M 0x800006ec addi    a0, a0, 1              #; a0  = 15, (wrb) a0  <-- 16
                         M                                           #; (f:fpu) ft3  <-- 15.0
       0     1753        M 0x800006f0 bne     a0, a3, pc - 12        #; a0  = 16, a3  = 109, taken, goto 0x800006e4
                         M 0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 15.0, ft3  = 15.0
       0     1754        M                                           #; (f:fpu) ft0  <-- 15.0
       0     1755        M 0x800006e4 fcvt.d.wu ft3, a0              #; ac1  = 16
       0     1756        M 0x800006ec addi    a0, a0, 1              #; a0  = 16, (wrb) a0  <-- 17
                         M                                           #; (f:fpu) ft3  <-- 16.0
       0     1757        M 0x800006f0 bne     a0, a3, pc - 12        #; a0  = 17, a3  = 109, taken, goto 0x800006e4
                         M 0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 16.0, ft3  = 16.0
       0     1758        M                                           #; (f:fpu) ft0  <-- 16.0
       0     1759        M 0x800006e4 fcvt.d.wu ft3, a0              #; ac1  = 17
       0     1760        M 0x800006ec addi    a0, a0, 1              #; a0  = 17, (wrb) a0  <-- 18
                         M                                           #; (f:fpu) ft3  <-- 17.0
       0     1761        M 0x800006f0 bne     a0, a3, pc - 12        #; a0  = 18, a3  = 109, taken, goto 0x800006e4
                         M 0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 17.0, ft3  = 17.0
       0     1762        M                                           #; (f:fpu) ft0  <-- 17.0
       0     1763        M 0x800006e4 fcvt.d.wu ft3, a0              #; ac1  = 18
       0     1764        M 0x800006ec addi    a0, a0, 1              #; a0  = 18, (wrb) a0  <-- 19
                         M                                           #; (f:fpu) ft3  <-- 18.0
       0     1765        M 0x800006f0 bne     a0, a3, pc - 12        #; a0  = 19, a3  = 109, taken, goto 0x800006e4
                         M 0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 18.0, ft3  = 18.0
       0     1766        M                                           #; (f:fpu) ft0  <-- 18.0
       0     1767        M 0x800006e4 fcvt.d.wu ft3, a0              #; ac1  = 19
       0     1768        M 0x800006ec addi    a0, a0, 1              #; a0  = 19, (wrb) a0  <-- 20
                         M                                           #; (f:fpu) ft3  <-- 19.0
       0     1769        M 0x800006f0 bne     a0, a3, pc - 12        #; a0  = 20, a3  = 109, taken, goto 0x800006e4
                         M 0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 19.0, ft3  = 19.0
       0     1770        M                                           #; (f:fpu) ft0  <-- 19.0
       0     1771        M 0x800006e4 fcvt.d.wu ft3, a0              #; ac1  = 20
       0     1772        M 0x800006ec addi    a0, a0, 1              #; a0  = 20, (wrb) a0  <-- 21
                         M                                           #; (f:fpu) ft3  <-- 20.0
       0     1773        M 0x800006f0 bne     a0, a3, pc - 12        #; a0  = 21, a3  = 109, taken, goto 0x800006e4
                         M 0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 20.0, ft3  = 20.0
       0     1774        M                                           #; (f:fpu) ft0  <-- 20.0
       0     1775        M 0x800006e4 fcvt.d.wu ft3, a0              #; ac1  = 21
       0     1776        M 0x800006ec addi    a0, a0, 1              #; a0  = 21, (wrb) a0  <-- 22
                         M                                           #; (f:fpu) ft3  <-- 21.0
       0     1777        M 0x800006f0 bne     a0, a3, pc - 12        #; a0  = 22, a3  = 109, taken, goto 0x800006e4
                         M 0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 21.0, ft3  = 21.0
       0     1778        M                                           #; (f:fpu) ft0  <-- 21.0
       0     1779        M 0x800006e4 fcvt.d.wu ft3, a0              #; ac1  = 22
       0     1780        M 0x800006ec addi    a0, a0, 1              #; a0  = 22, (wrb) a0  <-- 23
                         M                                           #; (f:fpu) ft3  <-- 22.0
       0     1781        M 0x800006f0 bne     a0, a3, pc - 12        #; a0  = 23, a3  = 109, taken, goto 0x800006e4
                         M 0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 22.0, ft3  = 22.0
       0     1782        M                                           #; (f:fpu) ft0  <-- 22.0
       0     1783        M 0x800006e4 fcvt.d.wu ft3, a0              #; ac1  = 23
       0     1784        M 0x800006ec addi    a0, a0, 1              #; a0  = 23, (wrb) a0  <-- 24
                         M                                           #; (f:fpu) ft3  <-- 23.0
       0     1785        M 0x800006f0 bne     a0, a3, pc - 12        #; a0  = 24, a3  = 109, taken, goto 0x800006e4
                         M 0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 23.0, ft3  = 23.0
       0     1786        M                                           #; (f:fpu) ft0  <-- 23.0
       0     1787        M 0x800006e4 fcvt.d.wu ft3, a0              #; ac1  = 24
       0     1788        M 0x800006ec addi    a0, a0, 1              #; a0  = 24, (wrb) a0  <-- 25
                         M                                           #; (f:fpu) ft3  <-- 24.0
       0     1789        M 0x800006f0 bne     a0, a3, pc - 12        #; a0  = 25, a3  = 109, taken, goto 0x800006e4
                         M 0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 24.0, ft3  = 24.0
       0     1790        M                                           #; (f:fpu) ft0  <-- 24.0
       0     1791        M 0x800006e4 fcvt.d.wu ft3, a0              #; ac1  = 25
       0     1792        M 0x800006ec addi    a0, a0, 1              #; a0  = 25, (wrb) a0  <-- 26
                         M                                           #; (f:fpu) ft3  <-- 25.0
       0     1793        M 0x800006f0 bne     a0, a3, pc - 12        #; a0  = 26, a3  = 109, taken, goto 0x800006e4
                         M 0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 25.0, ft3  = 25.0
       0     1794        M                                           #; (f:fpu) ft0  <-- 25.0
       0     1795        M 0x800006e4 fcvt.d.wu ft3, a0              #; ac1  = 26
       0     1796        M 0x800006ec addi    a0, a0, 1              #; a0  = 26, (wrb) a0  <-- 27
                         M                                           #; (f:fpu) ft3  <-- 26.0
       0     1797        M 0x800006f0 bne     a0, a3, pc - 12        #; a0  = 27, a3  = 109, taken, goto 0x800006e4
                         M 0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 26.0, ft3  = 26.0
       0     1798        M                                           #; (f:fpu) ft0  <-- 26.0
       0     1799        M 0x800006e4 fcvt.d.wu ft3, a0              #; ac1  = 27
       0     1800        M 0x800006ec addi    a0, a0, 1              #; a0  = 27, (wrb) a0  <-- 28
                         M                                           #; (f:fpu) ft3  <-- 27.0
       0     1801        M 0x800006f0 bne     a0, a3, pc - 12        #; a0  = 28, a3  = 109, taken, goto 0x800006e4
                         M 0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 27.0, ft3  = 27.0
       0     1802        M                                           #; (f:fpu) ft0  <-- 27.0
       0     1803        M 0x800006e4 fcvt.d.wu ft3, a0              #; ac1  = 28
       0     1804        M 0x800006ec addi    a0, a0, 1              #; a0  = 28, (wrb) a0  <-- 29
                         M                                           #; (f:fpu) ft3  <-- 28.0
       0     1805        M 0x800006f0 bne     a0, a3, pc - 12        #; a0  = 29, a3  = 109, taken, goto 0x800006e4
                         M 0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 28.0, ft3  = 28.0
       0     1806        M                                           #; (f:fpu) ft0  <-- 28.0
       0     1807        M 0x800006e4 fcvt.d.wu ft3, a0              #; ac1  = 29
       0     1808        M 0x800006ec addi    a0, a0, 1              #; a0  = 29, (wrb) a0  <-- 30
                         M                                           #; (f:fpu) ft3  <-- 29.0
       0     1809        M 0x800006f0 bne     a0, a3, pc - 12        #; a0  = 30, a3  = 109, taken, goto 0x800006e4
                         M 0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 29.0, ft3  = 29.0
       0     1810        M                                           #; (f:fpu) ft0  <-- 29.0
       0     1811        M 0x800006e4 fcvt.d.wu ft3, a0              #; ac1  = 30
       0     1812        M 0x800006ec addi    a0, a0, 1              #; a0  = 30, (wrb) a0  <-- 31
                         M                                           #; (f:fpu) ft3  <-- 30.0
       0     1813        M 0x800006f0 bne     a0, a3, pc - 12        #; a0  = 31, a3  = 109, taken, goto 0x800006e4
                         M 0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 30.0, ft3  = 30.0
       0     1814        M                                           #; (f:fpu) ft0  <-- 30.0
       0     1815        M 0x800006e4 fcvt.d.wu ft3, a0              #; ac1  = 31
       0     1816        M 0x800006ec addi    a0, a0, 1              #; a0  = 31, (wrb) a0  <-- 32
                         M                                           #; (f:fpu) ft3  <-- 31.0
       0     1817        M 0x800006f0 bne     a0, a3, pc - 12        #; a0  = 32, a3  = 109, taken, goto 0x800006e4
                         M 0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 31.0, ft3  = 31.0
       0     1818        M                                           #; (f:fpu) ft0  <-- 31.0
       0     1819        M 0x800006e4 fcvt.d.wu ft3, a0              #; ac1  = 32
       0     1820        M 0x800006ec addi    a0, a0, 1              #; a0  = 32, (wrb) a0  <-- 33
                         M                                           #; (f:fpu) ft3  <-- 32.0
       0     1821        M 0x800006f0 bne     a0, a3, pc - 12        #; a0  = 33, a3  = 109, taken, goto 0x800006e4
                         M 0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 32.0, ft3  = 32.0
       0     1822        M                                           #; (f:fpu) ft0  <-- 32.0
       0     1823        M 0x800006e4 fcvt.d.wu ft3, a0              #; ac1  = 33
       0     1824        M 0x800006ec addi    a0, a0, 1              #; a0  = 33, (wrb) a0  <-- 34
                         M                                           #; (f:fpu) ft3  <-- 33.0
       0     1825        M 0x800006f0 bne     a0, a3, pc - 12        #; a0  = 34, a3  = 109, taken, goto 0x800006e4
                         M 0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 33.0, ft3  = 33.0
       0     1826        M                                           #; (f:fpu) ft0  <-- 33.0
       0     1827        M 0x800006e4 fcvt.d.wu ft3, a0              #; ac1  = 34
       0     1828        M 0x800006ec addi    a0, a0, 1              #; a0  = 34, (wrb) a0  <-- 35
                         M                                           #; (f:fpu) ft3  <-- 34.0
       0     1829        M 0x800006f0 bne     a0, a3, pc - 12        #; a0  = 35, a3  = 109, taken, goto 0x800006e4
                         M 0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 34.0, ft3  = 34.0
       0     1830        M                                           #; (f:fpu) ft0  <-- 34.0
       0     1831        M 0x800006e4 fcvt.d.wu ft3, a0              #; ac1  = 35
       0     1832        M 0x800006ec addi    a0, a0, 1              #; a0  = 35, (wrb) a0  <-- 36
                         M                                           #; (f:fpu) ft3  <-- 35.0
       0     1833        M 0x800006f0 bne     a0, a3, pc - 12        #; a0  = 36, a3  = 109, taken, goto 0x800006e4
                         M 0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 35.0, ft3  = 35.0
       0     1834        M                                           #; (f:fpu) ft0  <-- 35.0
       0     1835        M 0x800006e4 fcvt.d.wu ft3, a0              #; ac1  = 36
       0     1836        M 0x800006ec addi    a0, a0, 1              #; a0  = 36, (wrb) a0  <-- 37
                         M                                           #; (f:fpu) ft3  <-- 36.0
       0     1837        M 0x800006f0 bne     a0, a3, pc - 12        #; a0  = 37, a3  = 109, taken, goto 0x800006e4
                         M 0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 36.0, ft3  = 36.0
       0     1838        M                                           #; (f:fpu) ft0  <-- 36.0
       0     1839        M 0x800006e4 fcvt.d.wu ft3, a0              #; ac1  = 37
       0     1840        M 0x800006ec addi    a0, a0, 1              #; a0  = 37, (wrb) a0  <-- 38
                         M                                           #; (f:fpu) ft3  <-- 37.0
       0     1841        M 0x800006f0 bne     a0, a3, pc - 12        #; a0  = 38, a3  = 109, taken, goto 0x800006e4
                         M 0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 37.0, ft3  = 37.0
       0     1842        M                                           #; (f:fpu) ft0  <-- 37.0
       0     1843        M 0x800006e4 fcvt.d.wu ft3, a0              #; ac1  = 38
       0     1844        M 0x800006ec addi    a0, a0, 1              #; a0  = 38, (wrb) a0  <-- 39
                         M                                           #; (f:fpu) ft3  <-- 38.0
       0     1845        M 0x800006f0 bne     a0, a3, pc - 12        #; a0  = 39, a3  = 109, taken, goto 0x800006e4
                         M 0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 38.0, ft3  = 38.0
       0     1846        M                                           #; (f:fpu) ft0  <-- 38.0
       0     1847        M 0x800006e4 fcvt.d.wu ft3, a0              #; ac1  = 39
       0     1848        M 0x800006ec addi    a0, a0, 1              #; a0  = 39, (wrb) a0  <-- 40
                         M                                           #; (f:fpu) ft3  <-- 39.0
       0     1849        M 0x800006f0 bne     a0, a3, pc - 12        #; a0  = 40, a3  = 109, taken, goto 0x800006e4
                         M 0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 39.0, ft3  = 39.0
       0     1850        M                                           #; (f:fpu) ft0  <-- 39.0
       0     1851        M 0x800006e4 fcvt.d.wu ft3, a0              #; ac1  = 40
       0     1852        M 0x800006ec addi    a0, a0, 1              #; a0  = 40, (wrb) a0  <-- 41
                         M                                           #; (f:fpu) ft3  <-- 40.0
       0     1853        M 0x800006f0 bne     a0, a3, pc - 12        #; a0  = 41, a3  = 109, taken, goto 0x800006e4
                         M 0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 40.0, ft3  = 40.0
       0     1854        M                                           #; (f:fpu) ft0  <-- 40.0
       0     1855        M 0x800006e4 fcvt.d.wu ft3, a0              #; ac1  = 41
       0     1856        M 0x800006ec addi    a0, a0, 1              #; a0  = 41, (wrb) a0  <-- 42
                         M                                           #; (f:fpu) ft3  <-- 41.0
       0     1857        M 0x800006f0 bne     a0, a3, pc - 12        #; a0  = 42, a3  = 109, taken, goto 0x800006e4
                         M 0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 41.0, ft3  = 41.0
       0     1858        M                                           #; (f:fpu) ft0  <-- 41.0
       0     1859        M 0x800006e4 fcvt.d.wu ft3, a0              #; ac1  = 42
       0     1860        M 0x800006ec addi    a0, a0, 1              #; a0  = 42, (wrb) a0  <-- 43
                         M                                           #; (f:fpu) ft3  <-- 42.0
       0     1861        M 0x800006f0 bne     a0, a3, pc - 12        #; a0  = 43, a3  = 109, taken, goto 0x800006e4
                         M 0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 42.0, ft3  = 42.0
       0     1862        M                                           #; (f:fpu) ft0  <-- 42.0
       0     1863        M 0x800006e4 fcvt.d.wu ft3, a0              #; ac1  = 43
       0     1864        M 0x800006ec addi    a0, a0, 1              #; a0  = 43, (wrb) a0  <-- 44
                         M                                           #; (f:fpu) ft3  <-- 43.0
       0     1865        M 0x800006f0 bne     a0, a3, pc - 12        #; a0  = 44, a3  = 109, taken, goto 0x800006e4
                         M 0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 43.0, ft3  = 43.0
       0     1866        M                                           #; (f:fpu) ft0  <-- 43.0
       0     1867        M 0x800006e4 fcvt.d.wu ft3, a0              #; ac1  = 44
       0     1868        M 0x800006ec addi    a0, a0, 1              #; a0  = 44, (wrb) a0  <-- 45
                         M                                           #; (f:fpu) ft3  <-- 44.0
       0     1869        M 0x800006f0 bne     a0, a3, pc - 12        #; a0  = 45, a3  = 109, taken, goto 0x800006e4
                         M 0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 44.0, ft3  = 44.0
       0     1870        M                                           #; (f:fpu) ft0  <-- 44.0
       0     1871        M 0x800006e4 fcvt.d.wu ft3, a0              #; ac1  = 45
       0     1872        M 0x800006ec addi    a0, a0, 1              #; a0  = 45, (wrb) a0  <-- 46
                         M                                           #; (f:fpu) ft3  <-- 45.0
       0     1873        M 0x800006f0 bne     a0, a3, pc - 12        #; a0  = 46, a3  = 109, taken, goto 0x800006e4
                         M 0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 45.0, ft3  = 45.0
       0     1874        M                                           #; (f:fpu) ft0  <-- 45.0
       0     1875        M 0x800006e4 fcvt.d.wu ft3, a0              #; ac1  = 46
       0     1876        M 0x800006ec addi    a0, a0, 1              #; a0  = 46, (wrb) a0  <-- 47
                         M                                           #; (f:fpu) ft3  <-- 46.0
       0     1877        M 0x800006f0 bne     a0, a3, pc - 12        #; a0  = 47, a3  = 109, taken, goto 0x800006e4
                         M 0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 46.0, ft3  = 46.0
       0     1878        M                                           #; (f:fpu) ft0  <-- 46.0
       0     1879        M 0x800006e4 fcvt.d.wu ft3, a0              #; ac1  = 47
       0     1880        M 0x800006ec addi    a0, a0, 1              #; a0  = 47, (wrb) a0  <-- 48
                         M                                           #; (f:fpu) ft3  <-- 47.0
       0     1881        M 0x800006f0 bne     a0, a3, pc - 12        #; a0  = 48, a3  = 109, taken, goto 0x800006e4
                         M 0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 47.0, ft3  = 47.0
       0     1882        M                                           #; (f:fpu) ft0  <-- 47.0
       0     1883        M 0x800006e4 fcvt.d.wu ft3, a0              #; ac1  = 48
       0     1884        M 0x800006ec addi    a0, a0, 1              #; a0  = 48, (wrb) a0  <-- 49
                         M                                           #; (f:fpu) ft3  <-- 48.0
       0     1885        M 0x800006f0 bne     a0, a3, pc - 12        #; a0  = 49, a3  = 109, taken, goto 0x800006e4
                         M 0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 48.0, ft3  = 48.0
       0     1886        M                                           #; (f:fpu) ft0  <-- 48.0
       0     1887        M 0x800006e4 fcvt.d.wu ft3, a0              #; ac1  = 49
       0     1888        M 0x800006ec addi    a0, a0, 1              #; a0  = 49, (wrb) a0  <-- 50
                         M                                           #; (f:fpu) ft3  <-- 49.0
       0     1889        M 0x800006f0 bne     a0, a3, pc - 12        #; a0  = 50, a3  = 109, taken, goto 0x800006e4
                         M 0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 49.0, ft3  = 49.0
       0     1890        M                                           #; (f:fpu) ft0  <-- 49.0
       0     1891        M 0x800006e4 fcvt.d.wu ft3, a0              #; ac1  = 50
       0     1892        M 0x800006ec addi    a0, a0, 1              #; a0  = 50, (wrb) a0  <-- 51
                         M                                           #; (f:fpu) ft3  <-- 50.0
       0     1893        M 0x800006f0 bne     a0, a3, pc - 12        #; a0  = 51, a3  = 109, taken, goto 0x800006e4
                         M 0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 50.0, ft3  = 50.0
       0     1894        M                                           #; (f:fpu) ft0  <-- 50.0
       0     1895        M 0x800006e4 fcvt.d.wu ft3, a0              #; ac1  = 51
       0     1896        M 0x800006ec addi    a0, a0, 1              #; a0  = 51, (wrb) a0  <-- 52
                         M                                           #; (f:fpu) ft3  <-- 51.0
       0     1897        M 0x800006f0 bne     a0, a3, pc - 12        #; a0  = 52, a3  = 109, taken, goto 0x800006e4
                         M 0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 51.0, ft3  = 51.0
       0     1898        M                                           #; (f:fpu) ft0  <-- 51.0
       0     1899        M 0x800006e4 fcvt.d.wu ft3, a0              #; ac1  = 52
       0     1900        M 0x800006ec addi    a0, a0, 1              #; a0  = 52, (wrb) a0  <-- 53
                         M                                           #; (f:fpu) ft3  <-- 52.0
       0     1901        M 0x800006f0 bne     a0, a3, pc - 12        #; a0  = 53, a3  = 109, taken, goto 0x800006e4
                         M 0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 52.0, ft3  = 52.0
       0     1902        M                                           #; (f:fpu) ft0  <-- 52.0
       0     1903        M 0x800006e4 fcvt.d.wu ft3, a0              #; ac1  = 53
       0     1904        M 0x800006ec addi    a0, a0, 1              #; a0  = 53, (wrb) a0  <-- 54
                         M                                           #; (f:fpu) ft3  <-- 53.0
       0     1905        M 0x800006f0 bne     a0, a3, pc - 12        #; a0  = 54, a3  = 109, taken, goto 0x800006e4
                         M 0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 53.0, ft3  = 53.0
       0     1906        M                                           #; (f:fpu) ft0  <-- 53.0
       0     1907        M 0x800006e4 fcvt.d.wu ft3, a0              #; ac1  = 54
       0     1908        M 0x800006ec addi    a0, a0, 1              #; a0  = 54, (wrb) a0  <-- 55
                         M                                           #; (f:fpu) ft3  <-- 54.0
       0     1909        M 0x800006f0 bne     a0, a3, pc - 12        #; a0  = 55, a3  = 109, taken, goto 0x800006e4
                         M 0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 54.0, ft3  = 54.0
       0     1910        M                                           #; (f:fpu) ft0  <-- 54.0
       0     1911        M 0x800006e4 fcvt.d.wu ft3, a0              #; ac1  = 55
       0     1912        M 0x800006ec addi    a0, a0, 1              #; a0  = 55, (wrb) a0  <-- 56
                         M                                           #; (f:fpu) ft3  <-- 55.0
       0     1913        M 0x800006f0 bne     a0, a3, pc - 12        #; a0  = 56, a3  = 109, taken, goto 0x800006e4
                         M 0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 55.0, ft3  = 55.0
       0     1914        M                                           #; (f:fpu) ft0  <-- 55.0
       0     1915        M 0x800006e4 fcvt.d.wu ft3, a0              #; ac1  = 56
       0     1916        M 0x800006ec addi    a0, a0, 1              #; a0  = 56, (wrb) a0  <-- 57
                         M                                           #; (f:fpu) ft3  <-- 56.0
       0     1917        M 0x800006f0 bne     a0, a3, pc - 12        #; a0  = 57, a3  = 109, taken, goto 0x800006e4
                         M 0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 56.0, ft3  = 56.0
       0     1918        M                                           #; (f:fpu) ft0  <-- 56.0
       0     1919        M 0x800006e4 fcvt.d.wu ft3, a0              #; ac1  = 57
       0     1920        M 0x800006ec addi    a0, a0, 1              #; a0  = 57, (wrb) a0  <-- 58
                         M                                           #; (f:fpu) ft3  <-- 57.0
       0     1921        M 0x800006f0 bne     a0, a3, pc - 12        #; a0  = 58, a3  = 109, taken, goto 0x800006e4
                         M 0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 57.0, ft3  = 57.0
       0     1922        M                                           #; (f:fpu) ft0  <-- 57.0
       0     1923        M 0x800006e4 fcvt.d.wu ft3, a0              #; ac1  = 58
       0     1924        M 0x800006ec addi    a0, a0, 1              #; a0  = 58, (wrb) a0  <-- 59
                         M                                           #; (f:fpu) ft3  <-- 58.0
       0     1925        M 0x800006f0 bne     a0, a3, pc - 12        #; a0  = 59, a3  = 109, taken, goto 0x800006e4
                         M 0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 58.0, ft3  = 58.0
       0     1926        M                                           #; (f:fpu) ft0  <-- 58.0
       0     1927        M 0x800006e4 fcvt.d.wu ft3, a0              #; ac1  = 59
       0     1928        M 0x800006ec addi    a0, a0, 1              #; a0  = 59, (wrb) a0  <-- 60
                         M                                           #; (f:fpu) ft3  <-- 59.0
       0     1929        M 0x800006f0 bne     a0, a3, pc - 12        #; a0  = 60, a3  = 109, taken, goto 0x800006e4
                         M 0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 59.0, ft3  = 59.0
       0     1930        M                                           #; (f:fpu) ft0  <-- 59.0
       0     1931        M 0x800006e4 fcvt.d.wu ft3, a0              #; ac1  = 60
       0     1932        M 0x800006ec addi    a0, a0, 1              #; a0  = 60, (wrb) a0  <-- 61
                         M                                           #; (f:fpu) ft3  <-- 60.0
       0     1933        M 0x800006f0 bne     a0, a3, pc - 12        #; a0  = 61, a3  = 109, taken, goto 0x800006e4
                         M 0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 60.0, ft3  = 60.0
       0     1934        M                                           #; (f:fpu) ft0  <-- 60.0
       0     1935        M 0x800006e4 fcvt.d.wu ft3, a0              #; ac1  = 61
       0     1936        M 0x800006ec addi    a0, a0, 1              #; a0  = 61, (wrb) a0  <-- 62
                         M                                           #; (f:fpu) ft3  <-- 61.0
       0     1937        M 0x800006f0 bne     a0, a3, pc - 12        #; a0  = 62, a3  = 109, taken, goto 0x800006e4
                         M 0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 61.0, ft3  = 61.0
       0     1938        M                                           #; (f:fpu) ft0  <-- 61.0
       0     1939        M 0x800006e4 fcvt.d.wu ft3, a0              #; ac1  = 62
       0     1940        M 0x800006ec addi    a0, a0, 1              #; a0  = 62, (wrb) a0  <-- 63
                         M                                           #; (f:fpu) ft3  <-- 62.0
       0     1941        M 0x800006f0 bne     a0, a3, pc - 12        #; a0  = 63, a3  = 109, taken, goto 0x800006e4
                         M 0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 62.0, ft3  = 62.0
       0     1942        M                                           #; (f:fpu) ft0  <-- 62.0
       0     1943        M 0x800006e4 fcvt.d.wu ft3, a0              #; ac1  = 63
       0     1944        M 0x800006ec addi    a0, a0, 1              #; a0  = 63, (wrb) a0  <-- 64
                         M                                           #; (f:fpu) ft3  <-- 63.0
       0     1945        M 0x800006f0 bne     a0, a3, pc - 12        #; a0  = 64, a3  = 109, taken, goto 0x800006e4
                         M 0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 63.0, ft3  = 63.0
       0     1946        M                                           #; (f:fpu) ft0  <-- 63.0
       0     1947        M 0x800006e4 fcvt.d.wu ft3, a0              #; ac1  = 64
       0     1948        M 0x800006ec addi    a0, a0, 1              #; a0  = 64, (wrb) a0  <-- 65
                         M                                           #; (f:fpu) ft3  <-- 64.0
       0     1949        M 0x800006f0 bne     a0, a3, pc - 12        #; a0  = 65, a3  = 109, taken, goto 0x800006e4
                         M 0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 64.0, ft3  = 64.0
       0     1950        M                                           #; (f:fpu) ft0  <-- 64.0
       0     1951        M 0x800006e4 fcvt.d.wu ft3, a0              #; ac1  = 65
       0     1952        M 0x800006ec addi    a0, a0, 1              #; a0  = 65, (wrb) a0  <-- 66
                         M                                           #; (f:fpu) ft3  <-- 65.0
       0     1953        M 0x800006f0 bne     a0, a3, pc - 12        #; a0  = 66, a3  = 109, taken, goto 0x800006e4
                         M 0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 65.0, ft3  = 65.0
       0     1954        M                                           #; (f:fpu) ft0  <-- 65.0
       0     1955        M 0x800006e4 fcvt.d.wu ft3, a0              #; ac1  = 66
       0     1956        M 0x800006ec addi    a0, a0, 1              #; a0  = 66, (wrb) a0  <-- 67
                         M                                           #; (f:fpu) ft3  <-- 66.0
       0     1957        M 0x800006f0 bne     a0, a3, pc - 12        #; a0  = 67, a3  = 109, taken, goto 0x800006e4
                         M 0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 66.0, ft3  = 66.0
       0     1958        M                                           #; (f:fpu) ft0  <-- 66.0
       0     1959        M 0x800006e4 fcvt.d.wu ft3, a0              #; ac1  = 67
       0     1960        M 0x800006ec addi    a0, a0, 1              #; a0  = 67, (wrb) a0  <-- 68
                         M                                           #; (f:fpu) ft3  <-- 67.0
       0     1961        M 0x800006f0 bne     a0, a3, pc - 12        #; a0  = 68, a3  = 109, taken, goto 0x800006e4
                         M 0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 67.0, ft3  = 67.0
       0     1962        M                                           #; (f:fpu) ft0  <-- 67.0
       0     1963        M 0x800006e4 fcvt.d.wu ft3, a0              #; ac1  = 68
       0     1964        M 0x800006ec addi    a0, a0, 1              #; a0  = 68, (wrb) a0  <-- 69
                         M                                           #; (f:fpu) ft3  <-- 68.0
       0     1965        M 0x800006f0 bne     a0, a3, pc - 12        #; a0  = 69, a3  = 109, taken, goto 0x800006e4
                         M 0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 68.0, ft3  = 68.0
       0     1966        M                                           #; (f:fpu) ft0  <-- 68.0
       0     1967        M 0x800006e4 fcvt.d.wu ft3, a0              #; ac1  = 69
       0     1968        M 0x800006ec addi    a0, a0, 1              #; a0  = 69, (wrb) a0  <-- 70
                         M                                           #; (f:fpu) ft3  <-- 69.0
       0     1969        M 0x800006f0 bne     a0, a3, pc - 12        #; a0  = 70, a3  = 109, taken, goto 0x800006e4
                         M 0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 69.0, ft3  = 69.0
       0     1970        M                                           #; (f:fpu) ft0  <-- 69.0
       0     1971        M 0x800006e4 fcvt.d.wu ft3, a0              #; ac1  = 70
       0     1972        M 0x800006ec addi    a0, a0, 1              #; a0  = 70, (wrb) a0  <-- 71
                         M                                           #; (f:fpu) ft3  <-- 70.0
       0     1973        M 0x800006f0 bne     a0, a3, pc - 12        #; a0  = 71, a3  = 109, taken, goto 0x800006e4
                         M 0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 70.0, ft3  = 70.0
       0     1974        M                                           #; (f:fpu) ft0  <-- 70.0
       0     1975        M 0x800006e4 fcvt.d.wu ft3, a0              #; ac1  = 71
       0     1976        M 0x800006ec addi    a0, a0, 1              #; a0  = 71, (wrb) a0  <-- 72
                         M                                           #; (f:fpu) ft3  <-- 71.0
       0     1977        M 0x800006f0 bne     a0, a3, pc - 12        #; a0  = 72, a3  = 109, taken, goto 0x800006e4
                         M 0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 71.0, ft3  = 71.0
       0     1978        M                                           #; (f:fpu) ft0  <-- 71.0
       0     1979        M 0x800006e4 fcvt.d.wu ft3, a0              #; ac1  = 72
       0     1980        M 0x800006ec addi    a0, a0, 1              #; a0  = 72, (wrb) a0  <-- 73
                         M                                           #; (f:fpu) ft3  <-- 72.0
       0     1981        M 0x800006f0 bne     a0, a3, pc - 12        #; a0  = 73, a3  = 109, taken, goto 0x800006e4
                         M 0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 72.0, ft3  = 72.0
       0     1982        M                                           #; (f:fpu) ft0  <-- 72.0
       0     1983        M 0x800006e4 fcvt.d.wu ft3, a0              #; ac1  = 73
       0     1984        M 0x800006ec addi    a0, a0, 1              #; a0  = 73, (wrb) a0  <-- 74
                         M                                           #; (f:fpu) ft3  <-- 73.0
       0     1985        M 0x800006f0 bne     a0, a3, pc - 12        #; a0  = 74, a3  = 109, taken, goto 0x800006e4
                         M 0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 73.0, ft3  = 73.0
       0     1986        M                                           #; (f:fpu) ft0  <-- 73.0
       0     1987        M 0x800006e4 fcvt.d.wu ft3, a0              #; ac1  = 74
       0     1988        M 0x800006ec addi    a0, a0, 1              #; a0  = 74, (wrb) a0  <-- 75
                         M                                           #; (f:fpu) ft3  <-- 74.0
       0     1989        M 0x800006f0 bne     a0, a3, pc - 12        #; a0  = 75, a3  = 109, taken, goto 0x800006e4
                         M 0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 74.0, ft3  = 74.0
       0     1990        M                                           #; (f:fpu) ft0  <-- 74.0
       0     1991        M 0x800006e4 fcvt.d.wu ft3, a0              #; ac1  = 75
       0     1992        M 0x800006ec addi    a0, a0, 1              #; a0  = 75, (wrb) a0  <-- 76
                         M                                           #; (f:fpu) ft3  <-- 75.0
       0     1993        M 0x800006f0 bne     a0, a3, pc - 12        #; a0  = 76, a3  = 109, taken, goto 0x800006e4
                         M 0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 75.0, ft3  = 75.0
       0     1994        M                                           #; (f:fpu) ft0  <-- 75.0
       0     1995        M 0x800006e4 fcvt.d.wu ft3, a0              #; ac1  = 76
       0     1996        M 0x800006ec addi    a0, a0, 1              #; a0  = 76, (wrb) a0  <-- 77
                         M                                           #; (f:fpu) ft3  <-- 76.0
       0     1997        M 0x800006f0 bne     a0, a3, pc - 12        #; a0  = 77, a3  = 109, taken, goto 0x800006e4
                         M 0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 76.0, ft3  = 76.0
       0     1998        M                                           #; (f:fpu) ft0  <-- 76.0
       0     1999        M 0x800006e4 fcvt.d.wu ft3, a0              #; ac1  = 77
       0     2000        M 0x800006ec addi    a0, a0, 1              #; a0  = 77, (wrb) a0  <-- 78
                         M                                           #; (f:fpu) ft3  <-- 77.0
       0     2001        M 0x800006f0 bne     a0, a3, pc - 12        #; a0  = 78, a3  = 109, taken, goto 0x800006e4
                         M 0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 77.0, ft3  = 77.0
       0     2002        M                                           #; (f:fpu) ft0  <-- 77.0
       0     2003        M 0x800006e4 fcvt.d.wu ft3, a0              #; ac1  = 78
       0     2004        M 0x800006ec addi    a0, a0, 1              #; a0  = 78, (wrb) a0  <-- 79
                         M                                           #; (f:fpu) ft3  <-- 78.0
       0     2005        M 0x800006f0 bne     a0, a3, pc - 12        #; a0  = 79, a3  = 109, taken, goto 0x800006e4
                         M 0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 78.0, ft3  = 78.0
       0     2006        M                                           #; (f:fpu) ft0  <-- 78.0
       0     2007        M 0x800006e4 fcvt.d.wu ft3, a0              #; ac1  = 79
       0     2008        M 0x800006ec addi    a0, a0, 1              #; a0  = 79, (wrb) a0  <-- 80
                         M                                           #; (f:fpu) ft3  <-- 79.0
       0     2009        M 0x800006f0 bne     a0, a3, pc - 12        #; a0  = 80, a3  = 109, taken, goto 0x800006e4
                         M 0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 79.0, ft3  = 79.0
       0     2010        M                                           #; (f:fpu) ft0  <-- 79.0
       0     2011        M 0x800006e4 fcvt.d.wu ft3, a0              #; ac1  = 80
       0     2012        M 0x800006ec addi    a0, a0, 1              #; a0  = 80, (wrb) a0  <-- 81
                         M                                           #; (f:fpu) ft3  <-- 80.0
       0     2013        M 0x800006f0 bne     a0, a3, pc - 12        #; a0  = 81, a3  = 109, taken, goto 0x800006e4
                         M 0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 80.0, ft3  = 80.0
       0     2014        M                                           #; (f:fpu) ft0  <-- 80.0
       0     2015        M 0x800006e4 fcvt.d.wu ft3, a0              #; ac1  = 81
       0     2016        M 0x800006ec addi    a0, a0, 1              #; a0  = 81, (wrb) a0  <-- 82
                         M                                           #; (f:fpu) ft3  <-- 81.0
       0     2017        M 0x800006f0 bne     a0, a3, pc - 12        #; a0  = 82, a3  = 109, taken, goto 0x800006e4
                         M 0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 81.0, ft3  = 81.0
       0     2018        M                                           #; (f:fpu) ft0  <-- 81.0
       0     2019        M 0x800006e4 fcvt.d.wu ft3, a0              #; ac1  = 82
       0     2020        M 0x800006ec addi    a0, a0, 1              #; a0  = 82, (wrb) a0  <-- 83
                         M                                           #; (f:fpu) ft3  <-- 82.0
       0     2021        M 0x800006f0 bne     a0, a3, pc - 12        #; a0  = 83, a3  = 109, taken, goto 0x800006e4
                         M 0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 82.0, ft3  = 82.0
       0     2022        M                                           #; (f:fpu) ft0  <-- 82.0
       0     2023        M 0x800006e4 fcvt.d.wu ft3, a0              #; ac1  = 83
       0     2024        M 0x800006ec addi    a0, a0, 1              #; a0  = 83, (wrb) a0  <-- 84
                         M                                           #; (f:fpu) ft3  <-- 83.0
       0     2025        M 0x800006f0 bne     a0, a3, pc - 12        #; a0  = 84, a3  = 109, taken, goto 0x800006e4
                         M 0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 83.0, ft3  = 83.0
       0     2026        M                                           #; (f:fpu) ft0  <-- 83.0
       0     2027        M 0x800006e4 fcvt.d.wu ft3, a0              #; ac1  = 84
       0     2028        M 0x800006ec addi    a0, a0, 1              #; a0  = 84, (wrb) a0  <-- 85
                         M                                           #; (f:fpu) ft3  <-- 84.0
       0     2029        M 0x800006f0 bne     a0, a3, pc - 12        #; a0  = 85, a3  = 109, taken, goto 0x800006e4
                         M 0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 84.0, ft3  = 84.0
       0     2030        M                                           #; (f:fpu) ft0  <-- 84.0
       0     2031        M 0x800006e4 fcvt.d.wu ft3, a0              #; ac1  = 85
       0     2032        M 0x800006ec addi    a0, a0, 1              #; a0  = 85, (wrb) a0  <-- 86
                         M                                           #; (f:fpu) ft3  <-- 85.0
       0     2033        M 0x800006f0 bne     a0, a3, pc - 12        #; a0  = 86, a3  = 109, taken, goto 0x800006e4
                         M 0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 85.0, ft3  = 85.0
       0     2034        M                                           #; (f:fpu) ft0  <-- 85.0
       0     2035        M 0x800006e4 fcvt.d.wu ft3, a0              #; ac1  = 86
       0     2036        M 0x800006ec addi    a0, a0, 1              #; a0  = 86, (wrb) a0  <-- 87
                         M                                           #; (f:fpu) ft3  <-- 86.0
       0     2037        M 0x800006f0 bne     a0, a3, pc - 12        #; a0  = 87, a3  = 109, taken, goto 0x800006e4
                         M 0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 86.0, ft3  = 86.0
       0     2038        M                                           #; (f:fpu) ft0  <-- 86.0
       0     2039        M 0x800006e4 fcvt.d.wu ft3, a0              #; ac1  = 87
       0     2040        M 0x800006ec addi    a0, a0, 1              #; a0  = 87, (wrb) a0  <-- 88
                         M                                           #; (f:fpu) ft3  <-- 87.0
       0     2041        M 0x800006f0 bne     a0, a3, pc - 12        #; a0  = 88, a3  = 109, taken, goto 0x800006e4
                         M 0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 87.0, ft3  = 87.0
       0     2042        M                                           #; (f:fpu) ft0  <-- 87.0
       0     2043        M 0x800006e4 fcvt.d.wu ft3, a0              #; ac1  = 88
       0     2044        M 0x800006ec addi    a0, a0, 1              #; a0  = 88, (wrb) a0  <-- 89
                         M                                           #; (f:fpu) ft3  <-- 88.0
       0     2045        M 0x800006f0 bne     a0, a3, pc - 12        #; a0  = 89, a3  = 109, taken, goto 0x800006e4
                         M 0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 88.0, ft3  = 88.0
       0     2046        M                                           #; (f:fpu) ft0  <-- 88.0
       0     2047        M 0x800006e4 fcvt.d.wu ft3, a0              #; ac1  = 89
       0     2048        M 0x800006ec addi    a0, a0, 1              #; a0  = 89, (wrb) a0  <-- 90
                         M                                           #; (f:fpu) ft3  <-- 89.0
       0     2049        M 0x800006f0 bne     a0, a3, pc - 12        #; a0  = 90, a3  = 109, taken, goto 0x800006e4
                         M 0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 89.0, ft3  = 89.0
       0     2050        M                                           #; (f:fpu) ft0  <-- 89.0
       0     2051        M 0x800006e4 fcvt.d.wu ft3, a0              #; ac1  = 90
       0     2052        M 0x800006ec addi    a0, a0, 1              #; a0  = 90, (wrb) a0  <-- 91
                         M                                           #; (f:fpu) ft3  <-- 90.0
       0     2053        M 0x800006f0 bne     a0, a3, pc - 12        #; a0  = 91, a3  = 109, taken, goto 0x800006e4
                         M 0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 90.0, ft3  = 90.0
       0     2054        M                                           #; (f:fpu) ft0  <-- 90.0
       0     2055        M 0x800006e4 fcvt.d.wu ft3, a0              #; ac1  = 91
       0     2056        M 0x800006ec addi    a0, a0, 1              #; a0  = 91, (wrb) a0  <-- 92
                         M                                           #; (f:fpu) ft3  <-- 91.0
       0     2057        M 0x800006f0 bne     a0, a3, pc - 12        #; a0  = 92, a3  = 109, taken, goto 0x800006e4
                         M 0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 91.0, ft3  = 91.0
       0     2058        M                                           #; (f:fpu) ft0  <-- 91.0
       0     2059        M 0x800006e4 fcvt.d.wu ft3, a0              #; ac1  = 92
       0     2060        M 0x800006ec addi    a0, a0, 1              #; a0  = 92, (wrb) a0  <-- 93
                         M                                           #; (f:fpu) ft3  <-- 92.0
       0     2061        M 0x800006f0 bne     a0, a3, pc - 12        #; a0  = 93, a3  = 109, taken, goto 0x800006e4
                         M 0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 92.0, ft3  = 92.0
       0     2062        M                                           #; (f:fpu) ft0  <-- 92.0
       0     2063        M 0x800006e4 fcvt.d.wu ft3, a0              #; ac1  = 93
       0     2064        M 0x800006ec addi    a0, a0, 1              #; a0  = 93, (wrb) a0  <-- 94
                         M                                           #; (f:fpu) ft3  <-- 93.0
       0     2065        M 0x800006f0 bne     a0, a3, pc - 12        #; a0  = 94, a3  = 109, taken, goto 0x800006e4
                         M 0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 93.0, ft3  = 93.0
       0     2066        M                                           #; (f:fpu) ft0  <-- 93.0
       0     2067        M 0x800006e4 fcvt.d.wu ft3, a0              #; ac1  = 94
       0     2068        M 0x800006ec addi    a0, a0, 1              #; a0  = 94, (wrb) a0  <-- 95
                         M                                           #; (f:fpu) ft3  <-- 94.0
       0     2069        M 0x800006f0 bne     a0, a3, pc - 12        #; a0  = 95, a3  = 109, taken, goto 0x800006e4
                         M 0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 94.0, ft3  = 94.0
       0     2070        M                                           #; (f:fpu) ft0  <-- 94.0
       0     2071        M 0x800006e4 fcvt.d.wu ft3, a0              #; ac1  = 95
       0     2072        M 0x800006ec addi    a0, a0, 1              #; a0  = 95, (wrb) a0  <-- 96
                         M                                           #; (f:fpu) ft3  <-- 95.0
       0     2073        M 0x800006f0 bne     a0, a3, pc - 12        #; a0  = 96, a3  = 109, taken, goto 0x800006e4
                         M 0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 95.0, ft3  = 95.0
       0     2074        M                                           #; (f:fpu) ft0  <-- 95.0
       0     2075        M 0x800006e4 fcvt.d.wu ft3, a0              #; ac1  = 96
       0     2076        M 0x800006ec addi    a0, a0, 1              #; a0  = 96, (wrb) a0  <-- 97
                         M                                           #; (f:fpu) ft3  <-- 96.0
       0     2077        M 0x800006f0 bne     a0, a3, pc - 12        #; a0  = 97, a3  = 109, taken, goto 0x800006e4
                         M 0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 96.0, ft3  = 96.0
       0     2078        M                                           #; (f:fpu) ft0  <-- 96.0
       0     2079        M 0x800006e4 fcvt.d.wu ft3, a0              #; ac1  = 97
       0     2080        M 0x800006ec addi    a0, a0, 1              #; a0  = 97, (wrb) a0  <-- 98
                         M                                           #; (f:fpu) ft3  <-- 97.0
       0     2081        M 0x800006f0 bne     a0, a3, pc - 12        #; a0  = 98, a3  = 109, taken, goto 0x800006e4
                         M 0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 97.0, ft3  = 97.0
       0     2082        M                                           #; (f:fpu) ft0  <-- 97.0
       0     2083        M 0x800006e4 fcvt.d.wu ft3, a0              #; ac1  = 98
       0     2084        M 0x800006ec addi    a0, a0, 1              #; a0  = 98, (wrb) a0  <-- 99
                         M                                           #; (f:fpu) ft3  <-- 98.0
       0     2085        M 0x800006f0 bne     a0, a3, pc - 12        #; a0  = 99, a3  = 109, taken, goto 0x800006e4
                         M 0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 98.0, ft3  = 98.0
       0     2086        M                                           #; (f:fpu) ft0  <-- 98.0
       0     2087        M 0x800006e4 fcvt.d.wu ft3, a0              #; ac1  = 99
       0     2088        M 0x800006ec addi    a0, a0, 1              #; a0  = 99, (wrb) a0  <-- 100
                         M                                           #; (f:fpu) ft3  <-- 99.0
       0     2089        M 0x800006f0 bne     a0, a3, pc - 12        #; a0  = 100, a3  = 109, taken, goto 0x800006e4
                         M 0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 99.0, ft3  = 99.0
       0     2090        M                                           #; (f:fpu) ft0  <-- 99.0
       0     2091        M 0x800006e4 fcvt.d.wu ft3, a0              #; ac1  = 100
       0     2092        M 0x800006ec addi    a0, a0, 1              #; a0  = 100, (wrb) a0  <-- 101
                         M                                           #; (f:fpu) ft3  <-- 100.0
       0     2093        M 0x800006f0 bne     a0, a3, pc - 12        #; a0  = 101, a3  = 109, taken, goto 0x800006e4
                         M 0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 100.0, ft3  = 100.0
       0     2094        M                                           #; (f:fpu) ft0  <-- 100.0
       0     2095        M 0x800006e4 fcvt.d.wu ft3, a0              #; ac1  = 101
       0     2096        M 0x800006ec addi    a0, a0, 1              #; a0  = 101, (wrb) a0  <-- 102
                         M                                           #; (f:fpu) ft3  <-- 101.0
       0     2097        M 0x800006f0 bne     a0, a3, pc - 12        #; a0  = 102, a3  = 109, taken, goto 0x800006e4
                         M 0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 101.0, ft3  = 101.0
       0     2098        M                                           #; (f:fpu) ft0  <-- 101.0
       0     2099        M 0x800006e4 fcvt.d.wu ft3, a0              #; ac1  = 102
       0     2100        M 0x800006ec addi    a0, a0, 1              #; a0  = 102, (wrb) a0  <-- 103
                         M                                           #; (f:fpu) ft3  <-- 102.0
       0     2101        M 0x800006f0 bne     a0, a3, pc - 12        #; a0  = 103, a3  = 109, taken, goto 0x800006e4
                         M 0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 102.0, ft3  = 102.0
       0     2102        M                                           #; (f:fpu) ft0  <-- 102.0
       0     2103        M 0x800006e4 fcvt.d.wu ft3, a0              #; ac1  = 103
       0     2104        M 0x800006ec addi    a0, a0, 1              #; a0  = 103, (wrb) a0  <-- 104
                         M                                           #; (f:fpu) ft3  <-- 103.0
       0     2105        M 0x800006f0 bne     a0, a3, pc - 12        #; a0  = 104, a3  = 109, taken, goto 0x800006e4
                         M 0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 103.0, ft3  = 103.0
       0     2106        M                                           #; (f:fpu) ft0  <-- 103.0
       0     2107        M 0x800006e4 fcvt.d.wu ft3, a0              #; ac1  = 104
       0     2108        M 0x800006ec addi    a0, a0, 1              #; a0  = 104, (wrb) a0  <-- 105
                         M                                           #; (f:fpu) ft3  <-- 104.0
       0     2109        M 0x800006f0 bne     a0, a3, pc - 12        #; a0  = 105, a3  = 109, taken, goto 0x800006e4
                         M 0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 104.0, ft3  = 104.0
       0     2110        M                                           #; (f:fpu) ft0  <-- 104.0
       0     2111        M 0x800006e4 fcvt.d.wu ft3, a0              #; ac1  = 105
       0     2112        M 0x800006ec addi    a0, a0, 1              #; a0  = 105, (wrb) a0  <-- 106
                         M                                           #; (f:fpu) ft3  <-- 105.0
       0     2113        M 0x800006f0 bne     a0, a3, pc - 12        #; a0  = 106, a3  = 109, taken, goto 0x800006e4
                         M 0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 105.0, ft3  = 105.0
       0     2114        M                                           #; (f:fpu) ft0  <-- 105.0
       0     2115        M 0x800006e4 fcvt.d.wu ft3, a0              #; ac1  = 106
       0     2116        M 0x800006ec addi    a0, a0, 1              #; a0  = 106, (wrb) a0  <-- 107
                         M                                           #; (f:fpu) ft3  <-- 106.0
       0     2117        M 0x800006f0 bne     a0, a3, pc - 12        #; a0  = 107, a3  = 109, taken, goto 0x800006e4
                         M 0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 106.0, ft3  = 106.0
       0     2118        M                                           #; (f:fpu) ft0  <-- 106.0
       0     2119        M 0x800006e4 fcvt.d.wu ft3, a0              #; ac1  = 107
       0     2120        M 0x800006ec addi    a0, a0, 1              #; a0  = 107, (wrb) a0  <-- 108
                         M                                           #; (f:fpu) ft3  <-- 107.0
       0     2121        M 0x800006f0 bne     a0, a3, pc - 12        #; a0  = 108, a3  = 109, taken, goto 0x800006e4
                         M 0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 107.0, ft3  = 107.0
       0     2122        M                                           #; (f:fpu) ft0  <-- 107.0
       0     2123        M 0x800006e4 fcvt.d.wu ft3, a0              #; ac1  = 108
       0     2124        M 0x800006ec addi    a0, a0, 1              #; a0  = 108, (wrb) a0  <-- 109
                         M                                           #; (f:fpu) ft3  <-- 108.0
       0     2125        M 0x800006f0 bne     a0, a3, pc - 12        #; a0  = 109, a3  = 109, not taken
                         M 0x800006e8 fsgnj.d ft0, ft3, ft3          #; ft3  = 108.0, ft3  = 108.0
       0     2126        M                                           #; (f:fpu) ft0  <-- 108.0
       0     2127        M 0x800006f8 mv      a0, a1                 #; a1  = 0x00100000, (wrb) a0  <-- 0x00100000
                         M 0x800006f4 csrrci  a0, ssr, 1             #; 
       0     2128        M 0x800006fc j       pc + 0x28              #; goto 0x80000724
       0     2138        M 0x80000724 addi    a3, a1, 1536           #; a1  = 0x00100000, (wrb) a3  <-- 0x00100600
       0     2139        M 0x80000728 lui     a4, 0x120              #; (wrb) a4  <-- 0x00120000
       0     2140        M 0x8000072c addi    a4, a4, 1              #; a4  = 0x00120000, (wrb) a4  <-- 0x00120001
       0     2150        M 0x80000730 sltu    a3, a3, a4             #; a3  = 0x00100600, a4  = 0x00120001, (wrb) a3  <-- 1
       0     2151        M 0x80000734 and     a3, a6, a3             #; a6  = 1, a3  = 1, (wrb) a3  <-- 1
       0     2152        M 0x80000738 beqz    a3, pc + 500           #; a3  = 1, not taken
       0     2153        M 0x8000073c li      a3, 8                  #; (wrb) a3  <-- 8
       0     2162        M 0x80000740 li      a4, 11                 #; (wrb) a4  <-- 11
       0     2163        M 0x80000744 li      a5, 64                 #; (wrb) a5  <-- 64
       0     2164        M 0x80000748 li      a2, 192                #; (wrb) a2  <-- 192
       0     2165        M 0x8000074c scfgw   a4, a5                 #; a4  = 11, a5  = 64
       0     2174        M 0x80000750 scfgw   a3, a2                 #; a3  = 8, a2  = 192
       0     2175        M 0x80000754 li      a2, 96                 #; (wrb) a2  <-- 96
       0     2176        M 0x80000758 li      a4, 224                #; (wrb) a4  <-- 224
       0     2177        M 0x8000075c scfgw   a3, a2                 #; a3  = 8, a2  = 96, (acc) ra  <-- 0x00c6a0ab
       0     2186        M 0x80000760 scfgw   a3, a4                 #; a3  = 8, a4  = 224
       0     2187        M 0x80000764 li      a2, 32                 #; (wrb) a2  <-- 32
       0     2188        M 0x80000768 scfgw   zero, a2               #; a2  = 32
       0     2189        M 0x8000076c scfgwi  a0, 800                #; a0  = 0x00100000
       0     2199        M 0x80000770 csrrsi  a2, ssr, 1             #; 
       0     2201        M 0x80000774 fsgnj.d ft3, ft0, ft0          #; ft0  = 1.0, ft0  = 1.0
       0     2202        M                                           #; (f:fpu) ft3  <-- 1.0
       0     2203        M 0x80000778 fadd.d  ft3, ft0, ft3          #; ft0  = 2.0, ft3  = 1.0
       0     2206        M                                           #; (f:fpu) ft3  <-- 3.0
       0     2207        M 0x8000077c fadd.d  ft3, ft3, ft0          #; ft3  = 3.0, ft0  = 3.0
       0     2210        M                                           #; (f:fpu) ft3  <-- 6.0
       0     2212        M 0x80000780 fadd.d  ft3, ft3, ft0          #; ft3  = 6.0, ft0  = 4.0
       0     2215        M                                           #; (f:fpu) ft3  <-- 10.0
       0     2216        M 0x80000784 fadd.d  ft3, ft3, ft0          #; ft3  = 10.0, ft0  = 5.0
       0     2219        M                                           #; (f:fpu) ft3  <-- 15.0
       0     2220        M 0x80000788 fadd.d  ft3, ft3, ft0          #; ft3  = 15.0, ft0  = 6.0
       0     2223        M                                           #; (f:fpu) ft3  <-- 21.0
       0     2224        M 0x8000078c fadd.d  ft3, ft3, ft0          #; ft3  = 21.0, ft0  = 7.0
       0     2227        M                                           #; (f:fpu) ft3  <-- 28.0
       0     2228        M 0x80000790 fadd.d  ft3, ft3, ft0          #; ft3  = 28.0, ft0  = 8.0
       0     2231        M                                           #; (f:fpu) ft3  <-- 36.0
       0     2232        M 0x80000794 fadd.d  ft3, ft3, ft0          #; ft3  = 36.0, ft0  = 9.0
       0     2235        M                                           #; (f:fpu) ft3  <-- 45.0
       0     2236        M 0x80000798 fadd.d  ft3, ft3, ft0          #; ft3  = 45.0, ft0  = 10.0
       0     2239        M                                           #; (f:fpu) ft3  <-- 55.0
       0     2240        M 0x8000079c fadd.d  ft3, ft3, ft0          #; ft3  = 55.0, ft0  = 11.0
       0     2243        M                                           #; (f:fpu) ft3  <-- 66.0
       0     2244        M 0x800007a0 fadd.d  ft3, ft3, ft0          #; ft3  = 66.0, ft0  = 12.0
       0     2247        M                                           #; (f:fpu) ft3  <-- 78.0
       0     2248        M 0x800007a4 fadd.d  ft3, ft3, ft0          #; ft3  = 78.0, ft0  = 13.0
       0     2251        M                                           #; (f:fpu) ft3  <-- 91.0
       0     2252        M 0x800007a8 fadd.d  ft3, ft3, ft0          #; ft3  = 91.0, ft0  = 14.0
       0     2255        M                                           #; (f:fpu) ft3  <-- 105.0
       0     2256        M 0x800007ac fadd.d  ft3, ft3, ft0          #; ft3  = 105.0, ft0  = 15.0
       0     2259        M                                           #; (f:fpu) ft3  <-- 120.0
       0     2260        M 0x800007b0 fadd.d  ft3, ft3, ft0          #; ft3  = 120.0, ft0  = 16.0
       0     2263        M                                           #; (f:fpu) ft3  <-- 136.0
       0     2264        M 0x800007b4 fadd.d  ft3, ft3, ft0          #; ft3  = 136.0, ft0  = 17.0
       0     2267        M                                           #; (f:fpu) ft3  <-- 153.0
       0     2268        M 0x800007b8 fadd.d  ft3, ft3, ft0          #; ft3  = 153.0, ft0  = 18.0
       0     2271        M                                           #; (f:fpu) ft3  <-- 171.0
       0     2272        M 0x800007bc fadd.d  ft3, ft3, ft0          #; ft3  = 171.0, ft0  = 19.0
       0     2275        M                                           #; (f:fpu) ft3  <-- 190.0
       0     2276        M 0x800007c0 fadd.d  ft3, ft3, ft0          #; ft3  = 190.0, ft0  = 20.0
       0     2279        M                                           #; (f:fpu) ft3  <-- 210.0
       0     2280        M 0x800007c4 fadd.d  ft3, ft3, ft0          #; ft3  = 210.0, ft0  = 21.0
       0     2283        M                                           #; (f:fpu) ft3  <-- 231.0
       0     2284        M 0x800007c8 fadd.d  ft3, ft3, ft0          #; ft3  = 231.0, ft0  = 22.0
       0     2287        M                                           #; (f:fpu) ft3  <-- 253.0
       0     2288        M 0x800007cc fadd.d  ft3, ft3, ft0          #; ft3  = 253.0, ft0  = 23.0
       0     2291        M                                           #; (f:fpu) ft3  <-- 276.0
       0     2292        M 0x800007d0 fadd.d  ft3, ft3, ft0          #; ft3  = 276.0, ft0  = 24.0
       0     2295        M                                           #; (f:fpu) ft3  <-- 300.0
       0     2296        M 0x800007d4 fadd.d  ft3, ft3, ft0          #; ft3  = 300.0, ft0  = 25.0
       0     2299        M                                           #; (f:fpu) ft3  <-- 325.0
       0     2300        M 0x800007d8 fadd.d  ft3, ft3, ft0          #; ft3  = 325.0, ft0  = 26.0
       0     2303        M                                           #; (f:fpu) ft3  <-- 351.0
       0     2304        M 0x800007dc fadd.d  ft3, ft3, ft0          #; ft3  = 351.0, ft0  = 27.0
       0     2307        M                                           #; (f:fpu) ft3  <-- 378.0
       0     2308        M 0x800007e0 fadd.d  ft3, ft3, ft0          #; ft3  = 378.0, ft0  = 28.0
       0     2311        M                                           #; (f:fpu) ft3  <-- 406.0
       0     2312        M 0x800007e4 fadd.d  ft3, ft3, ft0          #; ft3  = 406.0, ft0  = 29.0
       0     2315        M                                           #; (f:fpu) ft3  <-- 435.0
       0     2316        M 0x800007e8 fadd.d  ft3, ft3, ft0          #; ft3  = 435.0, ft0  = 30.0
       0     2319        M                                           #; (f:fpu) ft3  <-- 465.0
       0     2320        M 0x800007ec fadd.d  ft3, ft3, ft0          #; ft3  = 465.0, ft0  = 31.0
       0     2323        M                                           #; (f:fpu) ft3  <-- 496.0
       0     2324        M 0x800007f0 fadd.d  ft3, ft3, ft0          #; ft3  = 496.0, ft0  = 32.0
       0     2327        M                                           #; (f:fpu) ft3  <-- 528.0
       0     2328        M 0x800007f4 fadd.d  ft3, ft3, ft0          #; ft3  = 528.0, ft0  = 33.0
       0     2331        M                                           #; (f:fpu) ft3  <-- 561.0
       0     2332        M 0x800007f8 fadd.d  ft3, ft3, ft0          #; ft3  = 561.0, ft0  = 34.0
       0     2335        M                                           #; (f:fpu) ft3  <-- 595.0
       0     2336        M 0x800007fc fadd.d  ft3, ft3, ft0          #; ft3  = 595.0, ft0  = 35.0
       0     2339        M                                           #; (f:fpu) ft3  <-- 630.0
       0     2340        M 0x80000800 fadd.d  ft3, ft3, ft0          #; ft3  = 630.0, ft0  = 36.0
       0     2343        M                                           #; (f:fpu) ft3  <-- 666.0
       0     2344        M 0x80000804 fadd.d  ft3, ft3, ft0          #; ft3  = 666.0, ft0  = 37.0
       0     2347        M                                           #; (f:fpu) ft3  <-- 703.0
       0     2348        M 0x80000808 fadd.d  ft3, ft3, ft0          #; ft3  = 703.0, ft0  = 38.0
       0     2351        M                                           #; (f:fpu) ft3  <-- 741.0
       0     2352        M 0x8000080c fadd.d  ft3, ft3, ft0          #; ft3  = 741.0, ft0  = 39.0
       0     2355        M                                           #; (f:fpu) ft3  <-- 780.0
       0     2356        M 0x80000810 fadd.d  ft3, ft3, ft0          #; ft3  = 780.0, ft0  = 40.0
       0     2359        M                                           #; (f:fpu) ft3  <-- 820.0
       0     2360        M 0x80000814 fadd.d  ft3, ft3, ft0          #; ft3  = 820.0, ft0  = 41.0
       0     2363        M                                           #; (f:fpu) ft3  <-- 861.0
       0     2364        M 0x80000818 fadd.d  ft3, ft3, ft0          #; ft3  = 861.0, ft0  = 42.0
       0     2367        M                                           #; (f:fpu) ft3  <-- 903.0
       0     2368        M 0x8000081c fadd.d  ft3, ft3, ft0          #; ft3  = 903.0, ft0  = 43.0
       0     2371        M                                           #; (f:fpu) ft3  <-- 946.0
       0     2372        M 0x80000820 fadd.d  ft3, ft3, ft0          #; ft3  = 946.0, ft0  = 44.0
       0     2375        M                                           #; (f:fpu) ft3  <-- 990.0
       0     2376        M 0x80000824 fadd.d  ft3, ft3, ft0          #; ft3  = 990.0, ft0  = 45.0
       0     2379        M                                           #; (f:fpu) ft3  <-- 1035.0
       0     2380        M 0x80000828 fadd.d  ft3, ft3, ft0          #; ft3  = 1035.0, ft0  = 46.0
       0     2383        M                                           #; (f:fpu) ft3  <-- 1081.0
       0     2384        M 0x8000082c fadd.d  ft3, ft3, ft0          #; ft3  = 1081.0, ft0  = 47.0
       0     2387        M                                           #; (f:fpu) ft3  <-- 1128.0
       0     2388        M 0x80000830 fadd.d  ft3, ft3, ft0          #; ft3  = 1128.0, ft0  = 48.0
       0     2391        M                                           #; (f:fpu) ft3  <-- 1176.0
       0     2392        M 0x80000834 fadd.d  ft3, ft3, ft0          #; ft3  = 1176.0, ft0  = 49.0
       0     2395        M                                           #; (f:fpu) ft3  <-- 1225.0
       0     2396        M 0x80000838 fadd.d  ft3, ft3, ft0          #; ft3  = 1225.0, ft0  = 50.0
       0     2399        M                                           #; (f:fpu) ft3  <-- 1275.0
       0     2400        M 0x8000083c fadd.d  ft3, ft3, ft0          #; ft3  = 1275.0, ft0  = 51.0
       0     2403        M                                           #; (f:fpu) ft3  <-- 1326.0
       0     2404        M 0x80000840 fadd.d  ft3, ft3, ft0          #; ft3  = 1326.0, ft0  = 52.0
       0     2407        M                                           #; (f:fpu) ft3  <-- 1378.0
       0     2408        M 0x80000844 fadd.d  ft3, ft3, ft0          #; ft3  = 1378.0, ft0  = 53.0
       0     2411        M                                           #; (f:fpu) ft3  <-- 1431.0
       0     2412        M 0x80000848 fadd.d  ft3, ft3, ft0          #; ft3  = 1431.0, ft0  = 54.0
       0     2415        M                                           #; (f:fpu) ft3  <-- 1485.0
       0     2416        M 0x8000084c fadd.d  ft3, ft3, ft0          #; ft3  = 1485.0, ft0  = 55.0
       0     2419        M                                           #; (f:fpu) ft3  <-- 1540.0
       0     2420        M 0x80000850 fadd.d  ft3, ft3, ft0          #; ft3  = 1540.0, ft0  = 56.0
       0     2423        M                                           #; (f:fpu) ft3  <-- 1596.0
       0     2424        M 0x80000854 fadd.d  ft3, ft3, ft0          #; ft3  = 1596.0, ft0  = 57.0
       0     2427        M                                           #; (f:fpu) ft3  <-- 1653.0
       0     2428        M 0x80000858 fadd.d  ft3, ft3, ft0          #; ft3  = 1653.0, ft0  = 58.0
       0     2431        M                                           #; (f:fpu) ft3  <-- 1711.0
       0     2432        M 0x8000085c fadd.d  ft3, ft3, ft0          #; ft3  = 1711.0, ft0  = 59.0
       0     2435        M                                           #; (f:fpu) ft3  <-- 1770.0
       0     2436        M 0x80000860 fadd.d  ft3, ft3, ft0          #; ft3  = 1770.0, ft0  = 60.0
       0     2439        M                                           #; (f:fpu) ft3  <-- 1830.0
       0     2440        M 0x80000864 fadd.d  ft3, ft3, ft0          #; ft3  = 1830.0, ft0  = 61.0
       0     2443        M                                           #; (f:fpu) ft3  <-- 1891.0
       0     2444        M 0x80000868 fadd.d  ft3, ft3, ft0          #; ft3  = 1891.0, ft0  = 62.0
       0     2447        M                                           #; (f:fpu) ft3  <-- 1953.0
       0     2448        M 0x8000086c fadd.d  ft3, ft3, ft0          #; ft3  = 1953.0, ft0  = 63.0
       0     2451        M                                           #; (f:fpu) ft3  <-- 2016.0
       0     2452        M 0x80000870 fadd.d  ft3, ft3, ft0          #; ft3  = 2016.0, ft0  = 64.0
       0     2455        M                                           #; (f:fpu) ft3  <-- 2080.0
       0     2456        M 0x80000874 fadd.d  ft3, ft3, ft0          #; ft3  = 2080.0, ft0  = 65.0
       0     2459        M                                           #; (f:fpu) ft3  <-- 2145.0
       0     2460        M 0x80000878 fadd.d  ft3, ft3, ft0          #; ft3  = 2145.0, ft0  = 66.0
       0     2463        M                                           #; (f:fpu) ft3  <-- 2211.0
       0     2464        M 0x8000087c fadd.d  ft3, ft3, ft0          #; ft3  = 2211.0, ft0  = 67.0
       0     2467        M                                           #; (f:fpu) ft3  <-- 2278.0
       0     2468        M 0x80000880 fadd.d  ft3, ft3, ft0          #; ft3  = 2278.0, ft0  = 68.0
       0     2471        M                                           #; (f:fpu) ft3  <-- 2346.0
       0     2472        M 0x80000884 fadd.d  ft3, ft3, ft0          #; ft3  = 2346.0, ft0  = 69.0
       0     2475        M                                           #; (f:fpu) ft3  <-- 2415.0
       0     2476        M 0x80000888 fadd.d  ft3, ft3, ft0          #; ft3  = 2415.0, ft0  = 70.0
       0     2479        M                                           #; (f:fpu) ft3  <-- 2485.0
       0     2480        M 0x8000088c fadd.d  ft3, ft3, ft0          #; ft3  = 2485.0, ft0  = 71.0
       0     2483        M                                           #; (f:fpu) ft3  <-- 2556.0
       0     2484        M 0x80000890 fadd.d  ft3, ft3, ft0          #; ft3  = 2556.0, ft0  = 72.0
       0     2487        M                                           #; (f:fpu) ft3  <-- 2628.0
       0     2488        M 0x80000894 fadd.d  ft3, ft3, ft0          #; ft3  = 2628.0, ft0  = 73.0
       0     2491        M                                           #; (f:fpu) ft3  <-- 2701.0
       0     2492        M 0x80000898 fadd.d  ft3, ft3, ft0          #; ft3  = 2701.0, ft0  = 74.0
       0     2495        M                                           #; (f:fpu) ft3  <-- 2775.0
       0     2496        M 0x8000089c fadd.d  ft3, ft3, ft0          #; ft3  = 2775.0, ft0  = 75.0
       0     2499        M                                           #; (f:fpu) ft3  <-- 2850.0
       0     2500        M 0x800008a0 fadd.d  ft3, ft3, ft0          #; ft3  = 2850.0, ft0  = 76.0
       0     2503        M                                           #; (f:fpu) ft3  <-- 2926.0
       0     2504        M 0x800008a4 fadd.d  ft3, ft3, ft0          #; ft3  = 2926.0, ft0  = 77.0
       0     2507        M                                           #; (f:fpu) ft3  <-- 3003.0
       0     2508        M 0x800008a8 fadd.d  ft3, ft3, ft0          #; ft3  = 3003.0, ft0  = 78.0
       0     2511        M                                           #; (f:fpu) ft3  <-- 3081.0
       0     2512        M 0x800008ac fadd.d  ft3, ft3, ft0          #; ft3  = 3081.0, ft0  = 79.0
       0     2515        M                                           #; (f:fpu) ft3  <-- 3160.0
       0     2516        M 0x800008b0 fadd.d  ft3, ft3, ft0          #; ft3  = 3160.0, ft0  = 80.0
       0     2519        M                                           #; (f:fpu) ft3  <-- 3240.0
       0     2520        M 0x800008b4 fadd.d  ft3, ft3, ft0          #; ft3  = 3240.0, ft0  = 81.0
       0     2523        M                                           #; (f:fpu) ft3  <-- 3321.0
       0     2524        M 0x800008b8 fadd.d  ft3, ft3, ft0          #; ft3  = 3321.0, ft0  = 82.0
       0     2527        M                                           #; (f:fpu) ft3  <-- 3403.0
       0     2528        M 0x800008bc fadd.d  ft3, ft3, ft0          #; ft3  = 3403.0, ft0  = 83.0
       0     2531        M                                           #; (f:fpu) ft3  <-- 3486.0
       0     2532        M 0x800008c0 fadd.d  ft3, ft3, ft0          #; ft3  = 3486.0, ft0  = 84.0
       0     2535        M                                           #; (f:fpu) ft3  <-- 3570.0
       0     2536        M 0x800008c4 fadd.d  ft3, ft3, ft0          #; ft3  = 3570.0, ft0  = 85.0
       0     2539        M                                           #; (f:fpu) ft3  <-- 3655.0
       0     2540        M 0x800008c8 fadd.d  ft3, ft3, ft0          #; ft3  = 3655.0, ft0  = 86.0
       0     2543        M                                           #; (f:fpu) ft3  <-- 3741.0
       0     2544        M 0x800008cc fadd.d  ft3, ft3, ft0          #; ft3  = 3741.0, ft0  = 87.0
       0     2547        M                                           #; (f:fpu) ft3  <-- 3828.0
       0     2548        M 0x800008d0 fadd.d  ft3, ft3, ft0          #; ft3  = 3828.0, ft0  = 88.0
       0     2551        M                                           #; (f:fpu) ft3  <-- 3916.0
       0     2552        M 0x800008d4 fadd.d  ft3, ft3, ft0          #; ft3  = 3916.0, ft0  = 89.0
       0     2555        M                                           #; (f:fpu) ft3  <-- 4005.0
       0     2556        M 0x800008d8 fadd.d  ft3, ft3, ft0          #; ft3  = 4005.0, ft0  = 90.0
       0     2559        M                                           #; (f:fpu) ft3  <-- 4095.0
       0     2560        M 0x800008dc fadd.d  ft3, ft3, ft0          #; ft3  = 4095.0, ft0  = 91.0
       0     2563        M 0x80000928 j       pc + 0x360             #; goto 0x80000c88
                         M                                           #; (f:fpu) ft3  <-- 4186.0
       0     2564        M 0x800008e0 fadd.d  ft3, ft3, ft0          #; ft3  = 4186.0, ft0  = 92.0
       0     2567        M 0x80000c88 addi    a2, a1, 176            #; a1  = 0x00100000, (wrb) a2  <-- 0x001000b0
                         M                                           #; (f:fpu) ft3  <-- 4278.0
       0     2568        M 0x80000c8c lui     a3, 0x120              #; (wrb) a3  <-- 0x00120000
                         M 0x800008e4 fadd.d  ft3, ft3, ft0          #; ft3  = 4278.0, ft0  = 93.0
       0     2571        M                                           #; (f:fpu) ft3  <-- 4371.0
       0     2572        M 0x800008e8 fadd.d  ft3, ft3, ft0          #; ft3  = 4371.0, ft0  = 94.0
       0     2575        M                                           #; (f:fpu) ft3  <-- 4465.0
       0     2576        M 0x800008ec fadd.d  ft3, ft3, ft0          #; ft3  = 4465.0, ft0  = 95.0
       0     2579        M 0x80000c90 addi    a3, a3, 1              #; a3  = 0x00120000, (wrb) a3  <-- 0x00120001
                         M                                           #; (f:fpu) ft3  <-- 4560.0
       0     2580        M 0x80000c94 sltu    a2, a2, a3             #; a2  = 0x001000b0, a3  = 0x00120001, (wrb) a2  <-- 1
                         M 0x800008f0 fadd.d  ft3, ft3, ft0          #; ft3  = 4560.0, ft0  = 96.0
       0     2581        M 0x80000c98 and     a2, a6, a2             #; a6  = 1, a2  = 1, (wrb) a2  <-- 1
       0     2582        M 0x80000c9c beqz    a2, pc + 508           #; a2  = 1, not taken
       0     2583        M                                           #; (f:fpu) ft3  <-- 4656.0
       0     2584        M 0x800008f4 fadd.d  ft3, ft3, ft0          #; ft3  = 4656.0, ft0  = 97.0
       0     2587        M                                           #; (f:fpu) ft3  <-- 4753.0
       0     2588        M 0x800008f8 fadd.d  ft3, ft3, ft0          #; ft3  = 4753.0, ft0  = 98.0
       0     2591        M 0x80000ca0 li      a2, 96                 #; (wrb) a2  <-- 96
                         M                                           #; (f:fpu) ft3  <-- 4851.0
       0     2592        M 0x80000ca4 li      a3, 8                  #; (wrb) a3  <-- 8
                         M 0x800008fc fadd.d  ft3, ft3, ft0          #; ft3  = 4851.0, ft0  = 99.0
       0     2593        M 0x80000ca8 li      a4, 64                 #; (wrb) a4  <-- 64
       0     2594        M 0x80000cac li      a5, 192                #; (wrb) a5  <-- 192
       0     2595        M                                           #; (f:fpu) ft3  <-- 4950.0
       0     2596        M 0x80000900 fadd.d  ft3, ft3, ft0          #; ft3  = 4950.0, ft0  = 100.0
       0     2599        M                                           #; (f:fpu) ft3  <-- 5050.0
       0     2600        M 0x80000904 fadd.d  ft3, ft3, ft0          #; ft3  = 5050.0, ft0  = 101.0
       0     2603        M 0x80000cb0 scfgw   a3, a4                 #; a3  = 8, a4  = 64
                         M                                           #; (f:fpu) ft3  <-- 5151.0
       0     2604        M 0x80000908 fadd.d  ft3, ft3, ft0          #; ft3  = 5151.0, ft0  = 102.0
       0     2607        M                                           #; (f:fpu) ft3  <-- 5253.0
       0     2608        M 0x8000090c fadd.d  ft3, ft3, ft0          #; ft3  = 5253.0, ft0  = 103.0
       0     2611        M                                           #; (f:fpu) ft3  <-- 5356.0
       0     2612        M 0x80000910 fadd.d  ft3, ft3, ft0          #; ft3  = 5356.0, ft0  = 104.0
       0     2615        M                                           #; (f:fpu) ft3  <-- 5460.0
       0     2616        M 0x80000914 fadd.d  ft3, ft3, ft0          #; ft3  = 5460.0, ft0  = 105.0
       0     2619        M                                           #; (f:fpu) ft3  <-- 5565.0
       0     2620        M 0x80000918 fadd.d  ft3, ft3, ft0          #; ft3  = 5565.0, ft0  = 106.0
       0     2623        M                                           #; (f:fpu) ft3  <-- 5671.0
       0     2624        M 0x8000091c fadd.d  ft3, ft3, ft0          #; ft3  = 5671.0, ft0  = 107.0
       0     2627        M                                           #; (f:fpu) ft3  <-- 5778.0
       0     2628        M 0x80000920 fadd.d  ft3, ft3, ft0          #; ft3  = 5778.0, ft0  = 108.0
       0     2629        M 0x80000924 csrrci  a2, ssr, 1             #; 
       0     2630        M 0x80000cb4 scfgw   a2, a5                 #; a2  = 96, a5  = 192
       0     2631        M 0x80000cb8 li      a2, -760               #; (wrb) a2  <-- -760
                         M                                           #; (f:fpu) ft3  <-- 5886.0
       0     2632        M 0x80000cbc li      a3, 11                 #; (wrb) a3  <-- 11
       0     2633        M 0x80000cc0 li      a4, 96                 #; (wrb) a4  <-- 96
       0     2634        M 0x80000cc4 li      a5, 224                #; (wrb) a5  <-- 224
       0     2635        M 0x80000cc8 scfgw   a3, a4                 #; a3  = 11, a4  = 96, (acc) ra  <-- 0x00e6a0ab
       0     2636        M 0x80000ccc scfgw   a2, a5                 #; a2  = -760, a5  = 224, (acc) ra  <-- 0x00f620ab
       0     2645        M 0x80000cd0 li      a2, 32                 #; (wrb) a2  <-- 32
       0     2646        M 0x80000cd4 scfgw   zero, a2               #; a2  = 32
       0     2647        M 0x80000cd8 scfgwi  a0, 800                #; a0  = 0x00100000
       0     2649        M 0x80000cdc csrrsi  a2, ssr, 1             #; 
       0     2659        M 0x80000ce0 fsgnj.d ft4, ft0, ft0          #; ft0  = 1.0, ft0  = 1.0
       0     2660        M                                           #; (f:fpu) ft4  <-- 1.0
       0     2661        M 0x80000ce4 fadd.d  ft4, ft0, ft4          #; ft0  = 13.0, ft4  = 1.0
       0     2664        M                                           #; (f:fpu) ft4  <-- 14.0
       0     2665        M 0x80000ce8 fadd.d  ft4, ft4, ft0          #; ft4  = 14.0, ft0  = 25.0
       0     2668        M                                           #; (f:fpu) ft4  <-- 39.0
       0     2669        M 0x80000cec fadd.d  ft4, ft4, ft0          #; ft4  = 39.0, ft0  = 37.0
       0     2672        M                                           #; (f:fpu) ft4  <-- 76.0
       0     2673        M 0x80000cf0 fadd.d  ft4, ft4, ft0          #; ft4  = 76.0, ft0  = 49.0
       0     2676        M                                           #; (f:fpu) ft4  <-- 125.0
       0     2677        M 0x80000cf4 fadd.d  ft4, ft4, ft0          #; ft4  = 125.0, ft0  = 61.0
       0     2680        M                                           #; (f:fpu) ft4  <-- 186.0
       0     2681        M 0x80000cf8 fadd.d  ft4, ft4, ft0          #; ft4  = 186.0, ft0  = 73.0
       0     2684        M                                           #; (f:fpu) ft4  <-- 259.0
       0     2685        M 0x80000cfc fadd.d  ft4, ft4, ft0          #; ft4  = 259.0, ft0  = 85.0
       0     2688        M                                           #; (f:fpu) ft4  <-- 344.0
       0     2689        M 0x80000d00 fadd.d  ft4, ft4, ft0          #; ft4  = 344.0, ft0  = 97.0
       0     2692        M                                           #; (f:fpu) ft4  <-- 441.0
       0     2693        M 0x80000d04 fadd.d  ft4, ft4, ft0          #; ft4  = 441.0, ft0  = 2.0
       0     2696        M                                           #; (f:fpu) ft4  <-- 443.0
       0     2697        M 0x80000d08 fadd.d  ft4, ft4, ft0          #; ft4  = 443.0, ft0  = 14.0
       0     2700        M                                           #; (f:fpu) ft4  <-- 457.0
       0     2701        M 0x80000d0c fadd.d  ft4, ft4, ft0          #; ft4  = 457.0, ft0  = 26.0
       0     2704        M                                           #; (f:fpu) ft4  <-- 483.0
       0     2705        M 0x80000d10 fadd.d  ft4, ft4, ft0          #; ft4  = 483.0, ft0  = 38.0
       0     2708        M                                           #; (f:fpu) ft4  <-- 521.0
       0     2709        M 0x80000d14 fadd.d  ft4, ft4, ft0          #; ft4  = 521.0, ft0  = 50.0
       0     2712        M                                           #; (f:fpu) ft4  <-- 571.0
       0     2713        M 0x80000d18 fadd.d  ft4, ft4, ft0          #; ft4  = 571.0, ft0  = 62.0
       0     2716        M                                           #; (f:fpu) ft4  <-- 633.0
       0     2717        M 0x80000d1c fadd.d  ft4, ft4, ft0          #; ft4  = 633.0, ft0  = 74.0
       0     2720        M                                           #; (f:fpu) ft4  <-- 707.0
       0     2721        M 0x80000d20 fadd.d  ft4, ft4, ft0          #; ft4  = 707.0, ft0  = 86.0
       0     2724        M                                           #; (f:fpu) ft4  <-- 793.0
       0     2725        M 0x80000d24 fadd.d  ft4, ft4, ft0          #; ft4  = 793.0, ft0  = 98.0
       0     2728        M                                           #; (f:fpu) ft4  <-- 891.0
       0     2729        M 0x80000d28 fadd.d  ft4, ft4, ft0          #; ft4  = 891.0, ft0  = 3.0
       0     2732        M                                           #; (f:fpu) ft4  <-- 894.0
       0     2733        M 0x80000d2c fadd.d  ft4, ft4, ft0          #; ft4  = 894.0, ft0  = 15.0
       0     2736        M                                           #; (f:fpu) ft4  <-- 909.0
       0     2737        M 0x80000d30 fadd.d  ft4, ft4, ft0          #; ft4  = 909.0, ft0  = 27.0
       0     2740        M                                           #; (f:fpu) ft4  <-- 936.0
       0     2741        M 0x80000d34 fadd.d  ft4, ft4, ft0          #; ft4  = 936.0, ft0  = 39.0
       0     2744        M                                           #; (f:fpu) ft4  <-- 975.0
       0     2745        M 0x80000d38 fadd.d  ft4, ft4, ft0          #; ft4  = 975.0, ft0  = 51.0
       0     2748        M                                           #; (f:fpu) ft4  <-- 1026.0
       0     2749        M 0x80000d3c fadd.d  ft4, ft4, ft0          #; ft4  = 1026.0, ft0  = 63.0
       0     2752        M                                           #; (f:fpu) ft4  <-- 1089.0
       0     2753        M 0x80000d40 fadd.d  ft4, ft4, ft0          #; ft4  = 1089.0, ft0  = 75.0
       0     2756        M                                           #; (f:fpu) ft4  <-- 1164.0
       0     2757        M 0x80000d44 fadd.d  ft4, ft4, ft0          #; ft4  = 1164.0, ft0  = 87.0
       0     2760        M                                           #; (f:fpu) ft4  <-- 1251.0
       0     2761        M 0x80000d48 fadd.d  ft4, ft4, ft0          #; ft4  = 1251.0, ft0  = 99.0
       0     2764        M                                           #; (f:fpu) ft4  <-- 1350.0
       0     2765        M 0x80000d4c fadd.d  ft4, ft4, ft0          #; ft4  = 1350.0, ft0  = 4.0
       0     2768        M                                           #; (f:fpu) ft4  <-- 1354.0
       0     2769        M 0x80000d50 fadd.d  ft4, ft4, ft0          #; ft4  = 1354.0, ft0  = 16.0
       0     2772        M                                           #; (f:fpu) ft4  <-- 1370.0
       0     2773        M 0x80000d54 fadd.d  ft4, ft4, ft0          #; ft4  = 1370.0, ft0  = 28.0
       0     2776        M                                           #; (f:fpu) ft4  <-- 1398.0
       0     2777        M 0x80000d58 fadd.d  ft4, ft4, ft0          #; ft4  = 1398.0, ft0  = 40.0
       0     2780        M                                           #; (f:fpu) ft4  <-- 1438.0
       0     2781        M 0x80000d5c fadd.d  ft4, ft4, ft0          #; ft4  = 1438.0, ft0  = 52.0
       0     2784        M                                           #; (f:fpu) ft4  <-- 1490.0
       0     2785        M 0x80000d60 fadd.d  ft4, ft4, ft0          #; ft4  = 1490.0, ft0  = 64.0
       0     2788        M                                           #; (f:fpu) ft4  <-- 1554.0
       0     2789        M 0x80000d64 fadd.d  ft4, ft4, ft0          #; ft4  = 1554.0, ft0  = 76.0
       0     2792        M                                           #; (f:fpu) ft4  <-- 1630.0
       0     2793        M 0x80000d68 fadd.d  ft4, ft4, ft0          #; ft4  = 1630.0, ft0  = 88.0
       0     2796        M                                           #; (f:fpu) ft4  <-- 1718.0
       0     2797        M 0x80000d6c fadd.d  ft4, ft4, ft0          #; ft4  = 1718.0, ft0  = 100.0
       0     2800        M                                           #; (f:fpu) ft4  <-- 1818.0
       0     2801        M 0x80000d70 fadd.d  ft4, ft4, ft0          #; ft4  = 1818.0, ft0  = 5.0
       0     2804        M                                           #; (f:fpu) ft4  <-- 1823.0
       0     2805        M 0x80000d74 fadd.d  ft4, ft4, ft0          #; ft4  = 1823.0, ft0  = 17.0
       0     2808        M                                           #; (f:fpu) ft4  <-- 1840.0
       0     2809        M 0x80000d78 fadd.d  ft4, ft4, ft0          #; ft4  = 1840.0, ft0  = 29.0
       0     2812        M                                           #; (f:fpu) ft4  <-- 1869.0
       0     2813        M 0x80000d7c fadd.d  ft4, ft4, ft0          #; ft4  = 1869.0, ft0  = 41.0
       0     2816        M                                           #; (f:fpu) ft4  <-- 1910.0
       0     2817        M 0x80000d80 fadd.d  ft4, ft4, ft0          #; ft4  = 1910.0, ft0  = 53.0
       0     2820        M                                           #; (f:fpu) ft4  <-- 1963.0
       0     2821        M 0x80000d84 fadd.d  ft4, ft4, ft0          #; ft4  = 1963.0, ft0  = 65.0
       0     2824        M                                           #; (f:fpu) ft4  <-- 2028.0
       0     2825        M 0x80000d88 fadd.d  ft4, ft4, ft0          #; ft4  = 2028.0, ft0  = 77.0
       0     2828        M                                           #; (f:fpu) ft4  <-- 2105.0
       0     2829        M 0x80000d8c fadd.d  ft4, ft4, ft0          #; ft4  = 2105.0, ft0  = 89.0
       0     2832        M                                           #; (f:fpu) ft4  <-- 2194.0
       0     2833        M 0x80000d90 fadd.d  ft4, ft4, ft0          #; ft4  = 2194.0, ft0  = 101.0
       0     2836        M                                           #; (f:fpu) ft4  <-- 2295.0
       0     2837        M 0x80000d94 fadd.d  ft4, ft4, ft0          #; ft4  = 2295.0, ft0  = 6.0
       0     2840        M                                           #; (f:fpu) ft4  <-- 2301.0
       0     2841        M 0x80000d98 fadd.d  ft4, ft4, ft0          #; ft4  = 2301.0, ft0  = 18.0
       0     2844        M                                           #; (f:fpu) ft4  <-- 2319.0
       0     2845        M 0x80000d9c fadd.d  ft4, ft4, ft0          #; ft4  = 2319.0, ft0  = 30.0
       0     2848        M                                           #; (f:fpu) ft4  <-- 2349.0
       0     2849        M 0x80000da0 fadd.d  ft4, ft4, ft0          #; ft4  = 2349.0, ft0  = 42.0
       0     2852        M                                           #; (f:fpu) ft4  <-- 2391.0
       0     2853        M 0x80000da4 fadd.d  ft4, ft4, ft0          #; ft4  = 2391.0, ft0  = 54.0
       0     2856        M                                           #; (f:fpu) ft4  <-- 2445.0
       0     2857        M 0x80000da8 fadd.d  ft4, ft4, ft0          #; ft4  = 2445.0, ft0  = 66.0
       0     2860        M                                           #; (f:fpu) ft4  <-- 2511.0
       0     2861        M 0x80000dac fadd.d  ft4, ft4, ft0          #; ft4  = 2511.0, ft0  = 78.0
       0     2864        M                                           #; (f:fpu) ft4  <-- 2589.0
       0     2865        M 0x80000db0 fadd.d  ft4, ft4, ft0          #; ft4  = 2589.0, ft0  = 90.0
       0     2868        M                                           #; (f:fpu) ft4  <-- 2679.0
       0     2869        M 0x80000db4 fadd.d  ft4, ft4, ft0          #; ft4  = 2679.0, ft0  = 102.0
       0     2872        M                                           #; (f:fpu) ft4  <-- 2781.0
       0     2873        M 0x80000db8 fadd.d  ft4, ft4, ft0          #; ft4  = 2781.0, ft0  = 7.0
       0     2876        M                                           #; (f:fpu) ft4  <-- 2788.0
       0     2877        M 0x80000dbc fadd.d  ft4, ft4, ft0          #; ft4  = 2788.0, ft0  = 19.0
       0     2880        M                                           #; (f:fpu) ft4  <-- 2807.0
       0     2881        M 0x80000dc0 fadd.d  ft4, ft4, ft0          #; ft4  = 2807.0, ft0  = 31.0
       0     2884        M                                           #; (f:fpu) ft4  <-- 2838.0
       0     2885        M 0x80000dc4 fadd.d  ft4, ft4, ft0          #; ft4  = 2838.0, ft0  = 43.0
       0     2888        M                                           #; (f:fpu) ft4  <-- 2881.0
       0     2889        M 0x80000dc8 fadd.d  ft4, ft4, ft0          #; ft4  = 2881.0, ft0  = 55.0
       0     2892        M                                           #; (f:fpu) ft4  <-- 2936.0
       0     2893        M 0x80000dcc fadd.d  ft4, ft4, ft0          #; ft4  = 2936.0, ft0  = 67.0
       0     2896        M                                           #; (f:fpu) ft4  <-- 3003.0
       0     2897        M 0x80000dd0 fadd.d  ft4, ft4, ft0          #; ft4  = 3003.0, ft0  = 79.0
       0     2900        M                                           #; (f:fpu) ft4  <-- 3082.0
       0     2901        M 0x80000dd4 fadd.d  ft4, ft4, ft0          #; ft4  = 3082.0, ft0  = 91.0
       0     2904        M                                           #; (f:fpu) ft4  <-- 3173.0
       0     2905        M 0x80000dd8 fadd.d  ft4, ft4, ft0          #; ft4  = 3173.0, ft0  = 103.0
       0     2908        M                                           #; (f:fpu) ft4  <-- 3276.0
       0     2909        M 0x80000ddc fadd.d  ft4, ft4, ft0          #; ft4  = 3276.0, ft0  = 8.0
       0     2912        M                                           #; (f:fpu) ft4  <-- 3284.0
       0     2913        M 0x80000de0 fadd.d  ft4, ft4, ft0          #; ft4  = 3284.0, ft0  = 20.0
       0     2916        M                                           #; (f:fpu) ft4  <-- 3304.0
       0     2917        M 0x80000de4 fadd.d  ft4, ft4, ft0          #; ft4  = 3304.0, ft0  = 32.0
       0     2920        M                                           #; (f:fpu) ft4  <-- 3336.0
       0     2921        M 0x80000de8 fadd.d  ft4, ft4, ft0          #; ft4  = 3336.0, ft0  = 44.0
       0     2924        M                                           #; (f:fpu) ft4  <-- 3380.0
       0     2925        M 0x80000dec fadd.d  ft4, ft4, ft0          #; ft4  = 3380.0, ft0  = 56.0
       0     2928        M                                           #; (f:fpu) ft4  <-- 3436.0
       0     2929        M 0x80000df0 fadd.d  ft4, ft4, ft0          #; ft4  = 3436.0, ft0  = 68.0
       0     2932        M                                           #; (f:fpu) ft4  <-- 3504.0
       0     2933        M 0x80000df4 fadd.d  ft4, ft4, ft0          #; ft4  = 3504.0, ft0  = 80.0
       0     2936        M                                           #; (f:fpu) ft4  <-- 3584.0
       0     2937        M 0x80000df8 fadd.d  ft4, ft4, ft0          #; ft4  = 3584.0, ft0  = 92.0
       0     2940        M                                           #; (f:fpu) ft4  <-- 3676.0
       0     2941        M 0x80000dfc fadd.d  ft4, ft4, ft0          #; ft4  = 3676.0, ft0  = 104.0
       0     2944        M                                           #; (f:fpu) ft4  <-- 3780.0
       0     2945        M 0x80000e00 fadd.d  ft4, ft4, ft0          #; ft4  = 3780.0, ft0  = 9.0
       0     2948        M                                           #; (f:fpu) ft4  <-- 3789.0
       0     2949        M 0x80000e04 fadd.d  ft4, ft4, ft0          #; ft4  = 3789.0, ft0  = 21.0
       0     2952        M                                           #; (f:fpu) ft4  <-- 3810.0
       0     2953        M 0x80000e08 fadd.d  ft4, ft4, ft0          #; ft4  = 3810.0, ft0  = 33.0
       0     2956        M                                           #; (f:fpu) ft4  <-- 3843.0
       0     2957        M 0x80000e0c fadd.d  ft4, ft4, ft0          #; ft4  = 3843.0, ft0  = 45.0
       0     2960        M                                           #; (f:fpu) ft4  <-- 3888.0
       0     2961        M 0x80000e10 fadd.d  ft4, ft4, ft0          #; ft4  = 3888.0, ft0  = 57.0
       0     2964        M                                           #; (f:fpu) ft4  <-- 3945.0
       0     2965        M 0x80000e14 fadd.d  ft4, ft4, ft0          #; ft4  = 3945.0, ft0  = 69.0
       0     2968        M                                           #; (f:fpu) ft4  <-- 4014.0
       0     2969        M 0x80000e18 fadd.d  ft4, ft4, ft0          #; ft4  = 4014.0, ft0  = 81.0
       0     2972        M                                           #; (f:fpu) ft4  <-- 4095.0
       0     2973        M 0x80000e1c fadd.d  ft4, ft4, ft0          #; ft4  = 4095.0, ft0  = 93.0
       0     2976        M                                           #; (f:fpu) ft4  <-- 4188.0
       0     2977        M 0x80000e20 fadd.d  ft4, ft4, ft0          #; ft4  = 4188.0, ft0  = 105.0
       0     2980        M                                           #; (f:fpu) ft4  <-- 4293.0
       0     2981        M 0x80000e24 fadd.d  ft4, ft4, ft0          #; ft4  = 4293.0, ft0  = 10.0
       0     2984        M                                           #; (f:fpu) ft4  <-- 4303.0
       0     2985        M 0x80000e28 fadd.d  ft4, ft4, ft0          #; ft4  = 4303.0, ft0  = 22.0
       0     2988        M                                           #; (f:fpu) ft4  <-- 4325.0
       0     2989        M 0x80000e2c fadd.d  ft4, ft4, ft0          #; ft4  = 4325.0, ft0  = 34.0
       0     2992        M                                           #; (f:fpu) ft4  <-- 4359.0
       0     2993        M 0x80000e30 fadd.d  ft4, ft4, ft0          #; ft4  = 4359.0, ft0  = 46.0
       0     2996        M                                           #; (f:fpu) ft4  <-- 4405.0
       0     2997        M 0x80000e34 fadd.d  ft4, ft4, ft0          #; ft4  = 4405.0, ft0  = 58.0
       0     3000        M                                           #; (f:fpu) ft4  <-- 4463.0
       0     3001        M 0x80000e38 fadd.d  ft4, ft4, ft0          #; ft4  = 4463.0, ft0  = 70.0
       0     3004        M                                           #; (f:fpu) ft4  <-- 4533.0
       0     3005        M 0x80000e3c fadd.d  ft4, ft4, ft0          #; ft4  = 4533.0, ft0  = 82.0
       0     3008        M                                           #; (f:fpu) ft4  <-- 4615.0
       0     3009        M 0x80000e40 fadd.d  ft4, ft4, ft0          #; ft4  = 4615.0, ft0  = 94.0
       0     3012        M                                           #; (f:fpu) ft4  <-- 4709.0
       0     3013        M 0x80000e44 fadd.d  ft4, ft4, ft0          #; ft4  = 4709.0, ft0  = 106.0
       0     3016        M                                           #; (f:fpu) ft4  <-- 4815.0
       0     3017        M 0x80000e48 fadd.d  ft4, ft4, ft0          #; ft4  = 4815.0, ft0  = 11.0
       0     3020        M 0x80000e94 j       pc + 0x64              #; goto 0x80000ef8
                         M                                           #; (f:fpu) ft4  <-- 4826.0
       0     3021        M 0x80000e4c fadd.d  ft4, ft4, ft0          #; ft4  = 4826.0, ft0  = 23.0
       0     3024        M                                           #; (f:fpu) ft4  <-- 4849.0
       0     3025        M 0x80000e50 fadd.d  ft4, ft4, ft0          #; ft4  = 4849.0, ft0  = 35.0
       0     3028        M 0x80000ef8 addi    a1, a1, -768           #; a1  = 0x00100000, (wrb) a1  <-- 0x000ffd00
                         M                                           #; (f:fpu) ft4  <-- 4884.0
       0     3029        M 0x80000efc srli    a1, a1, 20             #; a1  = 0x000ffd00, (wrb) a1  <-- 0
                         M 0x80000e54 fadd.d  ft4, ft4, ft0          #; ft4  = 4884.0, ft0  = 47.0
       0     3032        M                                           #; (f:fpu) ft4  <-- 4931.0
       0     3033        M 0x80000e58 fadd.d  ft4, ft4, ft0          #; ft4  = 4931.0, ft0  = 59.0
       0     3036        M                                           #; (f:fpu) ft4  <-- 4990.0
       0     3037        M 0x80000e5c fadd.d  ft4, ft4, ft0          #; ft4  = 4990.0, ft0  = 71.0
       0     3040        M 0x80000f00 snez    a1, a1                 #; a1  = 0, (wrb) a1  <-- 0
                         M                                           #; (f:fpu) ft4  <-- 5061.0
       0     3041        M 0x80000f04 lui     a2, 0x120              #; (wrb) a2  <-- 0x00120000
                         M 0x80000e60 fadd.d  ft4, ft4, ft0          #; ft4  = 5061.0, ft0  = 83.0
       0     3042        M 0x80000f08 addi    a2, a2, -767           #; a2  = 0x00120000, (wrb) a2  <-- 0x0011fd01
       0     3043        M 0x80000f0c sltu    a2, a0, a2             #; a0  = 0x00100000, a2  = 0x0011fd01, (wrb) a2  <-- 1
       0     3044        M                                           #; (f:fpu) ft4  <-- 5144.0
       0     3045        M 0x80000e64 fadd.d  ft4, ft4, ft0          #; ft4  = 5144.0, ft0  = 95.0
       0     3048        M                                           #; (f:fpu) ft4  <-- 5239.0
       0     3049        M 0x80000e68 fadd.d  ft4, ft4, ft0          #; ft4  = 5239.0, ft0  = 107.0
       0     3052        M 0x80000f10 and     a1, a2, a1             #; a2  = 1, a1  = 0, (wrb) a1  <-- 0
                         M                                           #; (f:fpu) ft4  <-- 5346.0
       0     3053        M 0x80000f14 beqz    a1, pc + 508           #; a1  = 0, taken, goto 0x80001110
                         M 0x80000e6c fadd.d  ft4, ft4, ft0          #; ft4  = 5346.0, ft0  = 12.0
       0     3056        M                                           #; (f:fpu) ft4  <-- 5358.0
       0     3057        M 0x80000e70 fadd.d  ft4, ft4, ft0          #; ft4  = 5358.0, ft0  = 24.0
       0     3060        M                                           #; (f:fpu) ft4  <-- 5382.0
       0     3061        M 0x80000e74 fadd.d  ft4, ft4, ft0          #; ft4  = 5382.0, ft0  = 36.0
       0     3064        M                                           #; (f:fpu) ft4  <-- 5418.0
       0     3065        M 0x80000e78 fadd.d  ft4, ft4, ft0          #; ft4  = 5418.0, ft0  = 48.0
       0     3068        M                                           #; (f:fpu) ft4  <-- 5466.0
       0     3069        M 0x80000e7c fadd.d  ft4, ft4, ft0          #; ft4  = 5466.0, ft0  = 60.0
       0     3072        M                                           #; (f:fpu) ft4  <-- 5526.0
       0     3073        M 0x80000e80 fadd.d  ft4, ft4, ft0          #; ft4  = 5526.0, ft0  = 72.0
       0     3076        M                                           #; (f:fpu) ft4  <-- 5598.0
       0     3077        M 0x80000e84 fadd.d  ft4, ft4, ft0          #; ft4  = 5598.0, ft0  = 84.0
       0     3080        M                                           #; (f:fpu) ft4  <-- 5682.0
       0     3081        M 0x80000e88 fadd.d  ft4, ft4, ft0          #; ft4  = 5682.0, ft0  = 96.0
       0     3084        M                                           #; (f:fpu) ft4  <-- 5778.0
       0     3085        M 0x80000e8c fadd.d  ft4, ft4, ft0          #; ft4  = 5778.0, ft0  = 108.0
       0     3086        M 0x80000e90 csrrci  a2, ssr, 1             #; 
       0     3088        M 0x80001110 fld     ft5, 768(a0)           #; ft5  <~~ Doub[0x00100300], (f:fpu) ft4  <-- 5886.0
       0     3089        M 0x80001114 fld     ft6, 776(a0)           #; ft6  <~~ Doub[0x00100308], (f:lsu) ft5  <-- 97.0
       0     3090        M 0x80001118 fld     ft7, 784(a0)           #; ft7  <~~ Doub[0x00100310], (f:lsu) ft6  <-- 98.0
       0     3091        M 0x8000111c fld     fa0, 792(a0)           #; fa0  <~~ Doub[0x00100318], (f:lsu) ft7  <-- 99.0
       0     3092        M 0x80001120 fadd.d  ft5, ft6, ft5          #; ft6  = 98.0, ft5  = 97.0, (f:lsu) fa0  <-- 100.0
       0     3095        M                                           #; (f:fpu) ft5  <-- 195.0
       0     3096        M 0x80001124 fadd.d  ft5, ft5, ft7          #; ft5  = 195.0, ft7  = 99.0
       0     3099        M                                           #; (f:fpu) ft5  <-- 294.0
       0     3100        M 0x80001128 fadd.d  ft5, ft5, fa0          #; ft5  = 294.0, fa0  = 100.0
       0     3101        M 0x8000112c fld     ft6, 800(a0)           #; ft6  <~~ Doub[0x00100320]
       0     3102        M                                           #; (f:lsu) ft6  <-- 101.0
       0     3103        M                                           #; (f:fpu) ft5  <-- 394.0
       0     3104        M 0x80001130 fld     ft7, 808(a0)           #; ft7  <~~ Doub[0x00100328]
       0     3105        M 0x80001134 fld     fa0, 816(a0)           #; fa0  <~~ Doub[0x00100330], (f:lsu) ft7  <-- 102.0
       0     3106        M 0x80001138 fld     fa1, 824(a0)           #; fa1  <~~ Doub[0x00100338], (f:lsu) fa0  <-- 103.0
       0     3107        M 0x8000113c fadd.d  ft5, ft5, ft6          #; ft5  = 394.0, ft6  = 101.0, (f:lsu) fa1  <-- 104.0
       0     3110        M                                           #; (f:fpu) ft5  <-- 495.0
       0     3116        M 0x80001140 fadd.d  ft5, ft5, ft7          #; ft5  = 495.0, ft7  = 102.0
       0     3119        M                                           #; (f:fpu) ft5  <-- 597.0
       0     3120        M 0x80001144 fadd.d  ft5, ft5, fa0          #; ft5  = 597.0, fa0  = 103.0
       0     3123        M                                           #; (f:fpu) ft5  <-- 700.0
       0     3124        M 0x80001148 fadd.d  ft5, ft5, fa1          #; ft5  = 700.0, fa1  = 104.0
       0     3125        M 0x8000114c fld     ft6, 832(a0)           #; ft6  <~~ Doub[0x00100340]
       0     3126        M                                           #; (f:lsu) ft6  <-- 105.0
       0     3127        M                                           #; (f:fpu) ft5  <-- 804.0
       0     3128        M 0x80001150 fld     ft7, 840(a0)           #; ft7  <~~ Doub[0x00100348]
       0     3129        M 0x80001154 fld     fa0, 848(a0)           #; fa0  <~~ Doub[0x00100350], (f:lsu) ft7  <-- 106.0
       0     3130        M 0x80001158 fld     fa1, 856(a0)           #; fa1  <~~ Doub[0x00100358], (f:lsu) fa0  <-- 107.0
       0     3131        M 0x8000115c fadd.d  ft5, ft5, ft6          #; ft5  = 804.0, ft6  = 105.0, (f:lsu) fa1  <-- 108.0
       0     3134        M                                           #; (f:fpu) ft5  <-- 909.0
       0     3140        M 0x80001160 fadd.d  ft5, ft5, ft7          #; ft5  = 909.0, ft7  = 106.0
       0     3143        M                                           #; (f:fpu) ft5  <-- 1015.0
       0     3144        M 0x80001164 fadd.d  ft5, ft5, fa0          #; ft5  = 1015.0, fa0  = 107.0
       0     3147        M                                           #; (f:fpu) ft5  <-- 1122.0
       0     3148        M 0x80001168 fadd.d  ft5, ft5, fa1          #; ft5  = 1122.0, fa1  = 108.0
       0     3149        M 0x8000116c fld     ft6, 672(a0)           #; ft6  <~~ Doub[0x001002a0]
       0     3150        M                                           #; (f:lsu) ft6  <-- 85.0
       0     3151        M                                           #; (f:fpu) ft5  <-- 1230.0
       0     3152        M 0x80001170 fld     ft7, 680(a0)           #; ft7  <~~ Doub[0x001002a8]
       0     3153        M 0x80001174 fld     fa0, 688(a0)           #; fa0  <~~ Doub[0x001002b0], (f:lsu) ft7  <-- 86.0
       0     3154        M 0x80001178 fld     fa1, 696(a0)           #; fa1  <~~ Doub[0x001002b8], (f:lsu) fa0  <-- 87.0
       0     3155        M 0x8000117c fadd.d  ft5, ft5, ft6          #; ft5  = 1230.0, ft6  = 85.0, (f:lsu) fa1  <-- 88.0
       0     3158        M                                           #; (f:fpu) ft5  <-- 1315.0
       0     3164        M 0x80001180 fadd.d  ft5, ft5, ft7          #; ft5  = 1315.0, ft7  = 86.0
       0     3167        M                                           #; (f:fpu) ft5  <-- 1401.0
       0     3168        M 0x80001184 fadd.d  ft5, ft5, fa0          #; ft5  = 1401.0, fa0  = 87.0
       0     3171        M                                           #; (f:fpu) ft5  <-- 1488.0
       0     3172        M 0x80001188 fadd.d  ft5, ft5, fa1          #; ft5  = 1488.0, fa1  = 88.0
       0     3173        M 0x8000118c fld     ft6, 704(a0)           #; ft6  <~~ Doub[0x001002c0]
       0     3174        M                                           #; (f:lsu) ft6  <-- 89.0
       0     3175        M                                           #; (f:fpu) ft5  <-- 1576.0
       0     3176        M 0x80001190 fld     ft7, 712(a0)           #; ft7  <~~ Doub[0x001002c8]
       0     3177        M 0x80001194 fld     fa0, 720(a0)           #; fa0  <~~ Doub[0x001002d0], (f:lsu) ft7  <-- 90.0
       0     3178        M 0x80001198 fld     fa1, 728(a0)           #; fa1  <~~ Doub[0x001002d8], (f:lsu) fa0  <-- 91.0
       0     3179        M 0x8000119c fadd.d  ft5, ft5, ft6          #; ft5  = 1576.0, ft6  = 89.0, (f:lsu) fa1  <-- 92.0
       0     3182        M                                           #; (f:fpu) ft5  <-- 1665.0
       0     3188        M 0x800011a0 fadd.d  ft5, ft5, ft7          #; ft5  = 1665.0, ft7  = 90.0
       0     3191        M                                           #; (f:fpu) ft5  <-- 1755.0
       0     3192        M 0x800011a4 fadd.d  ft5, ft5, fa0          #; ft5  = 1755.0, fa0  = 91.0
       0     3195        M                                           #; (f:fpu) ft5  <-- 1846.0
       0     3196        M 0x800011a8 fadd.d  ft5, ft5, fa1          #; ft5  = 1846.0, fa1  = 92.0
       0     3197        M 0x800011ac fld     ft6, 736(a0)           #; ft6  <~~ Doub[0x001002e0]
       0     3198        M                                           #; (f:lsu) ft6  <-- 93.0
       0     3199        M                                           #; (f:fpu) ft5  <-- 1938.0
       0     3200        M 0x800011b0 fld     ft7, 744(a0)           #; ft7  <~~ Doub[0x001002e8]
       0     3201        M 0x800011b4 fld     fa0, 752(a0)           #; fa0  <~~ Doub[0x001002f0], (f:lsu) ft7  <-- 94.0
       0     3202        M 0x800011b8 fld     fa1, 760(a0)           #; fa1  <~~ Doub[0x001002f8], (f:lsu) fa0  <-- 95.0
       0     3203        M 0x800011bc fadd.d  ft5, ft5, ft6          #; ft5  = 1938.0, ft6  = 93.0, (f:lsu) fa1  <-- 96.0
       0     3206        M                                           #; (f:fpu) ft5  <-- 2031.0
       0     3212        M 0x800011c0 fadd.d  ft5, ft5, ft7          #; ft5  = 2031.0, ft7  = 94.0
       0     3215        M                                           #; (f:fpu) ft5  <-- 2125.0
       0     3216        M 0x800011c4 fadd.d  ft5, ft5, fa0          #; ft5  = 2125.0, fa0  = 95.0
       0     3219        M                                           #; (f:fpu) ft5  <-- 2220.0
       0     3220        M 0x800011c8 fadd.d  ft5, ft5, fa1          #; ft5  = 2220.0, fa1  = 96.0
       0     3221        M 0x800011cc fld     ft6, 576(a0)           #; ft6  <~~ Doub[0x00100240]
       0     3222        M                                           #; (f:lsu) ft6  <-- 73.0
       0     3223        M                                           #; (f:fpu) ft5  <-- 2316.0
       0     3224        M 0x800011d0 fld     ft7, 584(a0)           #; ft7  <~~ Doub[0x00100248]
       0     3225        M 0x800011d4 fld     fa0, 592(a0)           #; fa0  <~~ Doub[0x00100250], (f:lsu) ft7  <-- 74.0
       0     3226        M 0x800011d8 fld     fa1, 600(a0)           #; fa1  <~~ Doub[0x00100258], (f:lsu) fa0  <-- 75.0
       0     3227        M 0x800011dc fadd.d  ft5, ft5, ft6          #; ft5  = 2316.0, ft6  = 73.0, (f:lsu) fa1  <-- 76.0
       0     3230        M                                           #; (f:fpu) ft5  <-- 2389.0
       0     3236        M 0x800011e0 fadd.d  ft5, ft5, ft7          #; ft5  = 2389.0, ft7  = 74.0
       0     3239        M                                           #; (f:fpu) ft5  <-- 2463.0
       0     3240        M 0x800011e4 fadd.d  ft5, ft5, fa0          #; ft5  = 2463.0, fa0  = 75.0
       0     3243        M                                           #; (f:fpu) ft5  <-- 2538.0
       0     3244        M 0x800011e8 fadd.d  ft5, ft5, fa1          #; ft5  = 2538.0, fa1  = 76.0
       0     3245        M 0x800011ec fld     ft6, 608(a0)           #; ft6  <~~ Doub[0x00100260]
       0     3246        M                                           #; (f:lsu) ft6  <-- 77.0
       0     3247        M                                           #; (f:fpu) ft5  <-- 2614.0
       0     3248        M 0x800011f0 fld     ft7, 616(a0)           #; ft7  <~~ Doub[0x00100268]
       0     3249        M 0x800011f4 fld     fa0, 624(a0)           #; fa0  <~~ Doub[0x00100270], (f:lsu) ft7  <-- 78.0
       0     3250        M 0x800011f8 fld     fa1, 632(a0)           #; fa1  <~~ Doub[0x00100278], (f:lsu) fa0  <-- 79.0
       0     3251        M 0x800011fc fadd.d  ft5, ft5, ft6          #; ft5  = 2614.0, ft6  = 77.0, (f:lsu) fa1  <-- 80.0
       0     3254        M                                           #; (f:fpu) ft5  <-- 2691.0
       0     3260        M 0x80001200 fadd.d  ft5, ft5, ft7          #; ft5  = 2691.0, ft7  = 78.0
       0     3263        M                                           #; (f:fpu) ft5  <-- 2769.0
       0     3264        M 0x80001204 fadd.d  ft5, ft5, fa0          #; ft5  = 2769.0, fa0  = 79.0
       0     3267        M                                           #; (f:fpu) ft5  <-- 2848.0
       0     3268        M 0x80001208 fadd.d  ft5, ft5, fa1          #; ft5  = 2848.0, fa1  = 80.0
       0     3269        M 0x8000120c fld     ft6, 640(a0)           #; ft6  <~~ Doub[0x00100280]
       0     3270        M                                           #; (f:lsu) ft6  <-- 81.0
       0     3271        M                                           #; (f:fpu) ft5  <-- 2928.0
       0     3272        M 0x80001210 fld     ft7, 648(a0)           #; ft7  <~~ Doub[0x00100288]
       0     3273        M 0x80001214 fld     fa0, 656(a0)           #; fa0  <~~ Doub[0x00100290], (f:lsu) ft7  <-- 82.0
       0     3274        M 0x80001218 fld     fa1, 664(a0)           #; fa1  <~~ Doub[0x00100298], (f:lsu) fa0  <-- 83.0
       0     3275        M 0x8000121c fadd.d  ft5, ft5, ft6          #; ft5  = 2928.0, ft6  = 81.0, (f:lsu) fa1  <-- 84.0
       0     3278        M                                           #; (f:fpu) ft5  <-- 3009.0
       0     3284        M 0x80001220 fadd.d  ft5, ft5, ft7          #; ft5  = 3009.0, ft7  = 82.0
       0     3287        M                                           #; (f:fpu) ft5  <-- 3091.0
       0     3288        M 0x80001224 fadd.d  ft5, ft5, fa0          #; ft5  = 3091.0, fa0  = 83.0
       0     3291        M                                           #; (f:fpu) ft5  <-- 3174.0
       0     3292        M 0x80001228 fadd.d  ft5, ft5, fa1          #; ft5  = 3174.0, fa1  = 84.0
       0     3293        M 0x8000122c fld     ft6, 480(a0)           #; ft6  <~~ Doub[0x001001e0]
       0     3294        M                                           #; (f:lsu) ft6  <-- 61.0
       0     3295        M                                           #; (f:fpu) ft5  <-- 3258.0
       0     3296        M 0x80001230 fld     ft7, 488(a0)           #; ft7  <~~ Doub[0x001001e8]
       0     3297        M 0x80001234 fld     fa0, 496(a0)           #; fa0  <~~ Doub[0x001001f0], (f:lsu) ft7  <-- 62.0
       0     3298        M 0x80001238 fld     fa1, 504(a0)           #; fa1  <~~ Doub[0x001001f8], (f:lsu) fa0  <-- 63.0
       0     3299        M 0x8000123c fadd.d  ft5, ft5, ft6          #; ft5  = 3258.0, ft6  = 61.0, (f:lsu) fa1  <-- 64.0
       0     3302        M                                           #; (f:fpu) ft5  <-- 3319.0
       0     3308        M 0x80001240 fadd.d  ft5, ft5, ft7          #; ft5  = 3319.0, ft7  = 62.0
       0     3311        M                                           #; (f:fpu) ft5  <-- 3381.0
       0     3312        M 0x80001244 fadd.d  ft5, ft5, fa0          #; ft5  = 3381.0, fa0  = 63.0
       0     3315        M                                           #; (f:fpu) ft5  <-- 3444.0
       0     3316        M 0x80001248 fadd.d  ft5, ft5, fa1          #; ft5  = 3444.0, fa1  = 64.0
       0     3317        M 0x8000124c fld     ft6, 512(a0)           #; ft6  <~~ Doub[0x00100200]
       0     3318        M                                           #; (f:lsu) ft6  <-- 65.0
       0     3319        M                                           #; (f:fpu) ft5  <-- 3508.0
       0     3320        M 0x80001250 fld     ft7, 520(a0)           #; ft7  <~~ Doub[0x00100208]
       0     3321        M 0x80001254 fld     fa0, 528(a0)           #; fa0  <~~ Doub[0x00100210], (f:lsu) ft7  <-- 66.0
       0     3322        M 0x80001258 fld     fa1, 536(a0)           #; fa1  <~~ Doub[0x00100218], (f:lsu) fa0  <-- 67.0
       0     3323        M 0x8000125c fadd.d  ft5, ft5, ft6          #; ft5  = 3508.0, ft6  = 65.0, (f:lsu) fa1  <-- 68.0
       0     3326        M                                           #; (f:fpu) ft5  <-- 3573.0
       0     3332        M 0x80001260 fadd.d  ft5, ft5, ft7          #; ft5  = 3573.0, ft7  = 66.0
       0     3335        M                                           #; (f:fpu) ft5  <-- 3639.0
       0     3336        M 0x80001264 fadd.d  ft5, ft5, fa0          #; ft5  = 3639.0, fa0  = 67.0
       0     3339        M                                           #; (f:fpu) ft5  <-- 3706.0
       0     3340        M 0x80001268 fadd.d  ft5, ft5, fa1          #; ft5  = 3706.0, fa1  = 68.0
       0     3341        M 0x8000126c fld     ft6, 544(a0)           #; ft6  <~~ Doub[0x00100220]
       0     3342        M                                           #; (f:lsu) ft6  <-- 69.0
       0     3343        M                                           #; (f:fpu) ft5  <-- 3774.0
       0     3344        M 0x80001270 fld     ft7, 552(a0)           #; ft7  <~~ Doub[0x00100228]
       0     3345        M 0x80001274 fld     fa0, 560(a0)           #; fa0  <~~ Doub[0x00100230], (f:lsu) ft7  <-- 70.0
       0     3346        M 0x80001278 fld     fa1, 568(a0)           #; fa1  <~~ Doub[0x00100238], (f:lsu) fa0  <-- 71.0
       0     3347        M 0x8000127c fadd.d  ft5, ft5, ft6          #; ft5  = 3774.0, ft6  = 69.0, (f:lsu) fa1  <-- 72.0
       0     3350        M                                           #; (f:fpu) ft5  <-- 3843.0
       0     3356        M 0x80001280 fadd.d  ft5, ft5, ft7          #; ft5  = 3843.0, ft7  = 70.0
       0     3359        M                                           #; (f:fpu) ft5  <-- 3913.0
       0     3360        M 0x80001284 fadd.d  ft5, ft5, fa0          #; ft5  = 3913.0, fa0  = 71.0
       0     3363        M                                           #; (f:fpu) ft5  <-- 3984.0
       0     3364        M 0x80001288 fadd.d  ft5, ft5, fa1          #; ft5  = 3984.0, fa1  = 72.0
       0     3365        M 0x8000128c fld     ft6, 384(a0)           #; ft6  <~~ Doub[0x00100180]
       0     3366        M                                           #; (f:lsu) ft6  <-- 49.0
       0     3367        M                                           #; (f:fpu) ft5  <-- 4056.0
       0     3368        M 0x80001290 fld     ft7, 392(a0)           #; ft7  <~~ Doub[0x00100188]
       0     3369        M 0x80001294 fld     fa0, 400(a0)           #; fa0  <~~ Doub[0x00100190], (f:lsu) ft7  <-- 50.0
       0     3370        M 0x80001298 fld     fa1, 408(a0)           #; fa1  <~~ Doub[0x00100198], (f:lsu) fa0  <-- 51.0
       0     3371        M 0x8000129c fadd.d  ft5, ft5, ft6          #; ft5  = 4056.0, ft6  = 49.0, (f:lsu) fa1  <-- 52.0
       0     3374        M                                           #; (f:fpu) ft5  <-- 4105.0
       0     3380        M 0x800012a0 fadd.d  ft5, ft5, ft7          #; ft5  = 4105.0, ft7  = 50.0
       0     3383        M                                           #; (f:fpu) ft5  <-- 4155.0
       0     3384        M 0x800012a4 fadd.d  ft5, ft5, fa0          #; ft5  = 4155.0, fa0  = 51.0
       0     3387        M                                           #; (f:fpu) ft5  <-- 4206.0
       0     3388        M 0x800012a8 fadd.d  ft5, ft5, fa1          #; ft5  = 4206.0, fa1  = 52.0
       0     3389        M 0x800012ac fld     ft6, 416(a0)           #; ft6  <~~ Doub[0x001001a0]
       0     3390        M                                           #; (f:lsu) ft6  <-- 53.0
       0     3391        M                                           #; (f:fpu) ft5  <-- 4258.0
       0     3392        M 0x800012b0 fld     ft7, 424(a0)           #; ft7  <~~ Doub[0x001001a8]
       0     3393        M 0x800012b4 fld     fa0, 432(a0)           #; fa0  <~~ Doub[0x001001b0], (f:lsu) ft7  <-- 54.0
       0     3394        M 0x800012b8 fld     fa1, 440(a0)           #; fa1  <~~ Doub[0x001001b8], (f:lsu) fa0  <-- 55.0
       0     3395        M 0x800012bc fadd.d  ft5, ft5, ft6          #; ft5  = 4258.0, ft6  = 53.0, (f:lsu) fa1  <-- 56.0
       0     3398        M                                           #; (f:fpu) ft5  <-- 4311.0
       0     3404        M 0x800012c0 fadd.d  ft5, ft5, ft7          #; ft5  = 4311.0, ft7  = 54.0
       0     3407        M                                           #; (f:fpu) ft5  <-- 4365.0
       0     3408        M 0x800012c4 fadd.d  ft5, ft5, fa0          #; ft5  = 4365.0, fa0  = 55.0
       0     3411        M                                           #; (f:fpu) ft5  <-- 4420.0
       0     3412        M 0x800012c8 fadd.d  ft5, ft5, fa1          #; ft5  = 4420.0, fa1  = 56.0
       0     3413        M 0x800012cc fld     ft6, 448(a0)           #; ft6  <~~ Doub[0x001001c0]
       0     3414        M                                           #; (f:lsu) ft6  <-- 57.0
       0     3415        M                                           #; (f:fpu) ft5  <-- 4476.0
       0     3416        M 0x800012d0 fld     ft7, 456(a0)           #; ft7  <~~ Doub[0x001001c8]
       0     3417        M 0x800012d4 fld     fa0, 464(a0)           #; fa0  <~~ Doub[0x001001d0], (f:lsu) ft7  <-- 58.0
       0     3418        M 0x800012d8 fld     fa1, 472(a0)           #; fa1  <~~ Doub[0x001001d8], (f:lsu) fa0  <-- 59.0
       0     3419        M 0x800012dc fadd.d  ft5, ft5, ft6          #; ft5  = 4476.0, ft6  = 57.0, (f:lsu) fa1  <-- 60.0
       0     3422        M                                           #; (f:fpu) ft5  <-- 4533.0
       0     3428        M 0x800012e0 fadd.d  ft5, ft5, ft7          #; ft5  = 4533.0, ft7  = 58.0
       0     3431        M                                           #; (f:fpu) ft5  <-- 4591.0
       0     3432        M 0x800012e4 fadd.d  ft5, ft5, fa0          #; ft5  = 4591.0, fa0  = 59.0
       0     3435        M                                           #; (f:fpu) ft5  <-- 4650.0
       0     3436        M 0x800012e8 fadd.d  ft5, ft5, fa1          #; ft5  = 4650.0, fa1  = 60.0
       0     3437        M 0x800012ec fld     ft6, 288(a0)           #; ft6  <~~ Doub[0x00100120]
       0     3438        M                                           #; (f:lsu) ft6  <-- 37.0
       0     3439        M                                           #; (f:fpu) ft5  <-- 4710.0
       0     3440        M 0x800012f0 fld     ft7, 296(a0)           #; ft7  <~~ Doub[0x00100128]
       0     3441        M 0x800012f4 fld     fa0, 304(a0)           #; fa0  <~~ Doub[0x00100130], (f:lsu) ft7  <-- 38.0
       0     3442        M 0x800012f8 fld     fa1, 312(a0)           #; fa1  <~~ Doub[0x00100138], (f:lsu) fa0  <-- 39.0
       0     3443        M 0x800012fc fadd.d  ft5, ft5, ft6          #; ft5  = 4710.0, ft6  = 37.0, (f:lsu) fa1  <-- 40.0
       0     3446        M                                           #; (f:fpu) ft5  <-- 4747.0
       0     3452        M 0x80001300 fadd.d  ft5, ft5, ft7          #; ft5  = 4747.0, ft7  = 38.0
       0     3455        M                                           #; (f:fpu) ft5  <-- 4785.0
       0     3456        M 0x80001304 fadd.d  ft5, ft5, fa0          #; ft5  = 4785.0, fa0  = 39.0
       0     3459        M                                           #; (f:fpu) ft5  <-- 4824.0
       0     3460        M 0x80001308 fadd.d  ft5, ft5, fa1          #; ft5  = 4824.0, fa1  = 40.0
       0     3461        M 0x8000130c fld     ft6, 320(a0)           #; ft6  <~~ Doub[0x00100140]
       0     3462        M                                           #; (f:lsu) ft6  <-- 41.0
       0     3463        M                                           #; (f:fpu) ft5  <-- 4864.0
       0     3464        M 0x80001310 fld     ft7, 328(a0)           #; ft7  <~~ Doub[0x00100148]
       0     3465        M 0x80001314 fld     fa0, 336(a0)           #; fa0  <~~ Doub[0x00100150], (f:lsu) ft7  <-- 42.0
       0     3466        M 0x80001318 fld     fa1, 344(a0)           #; fa1  <~~ Doub[0x00100158], (f:lsu) fa0  <-- 43.0
       0     3467        M 0x8000131c fadd.d  ft5, ft5, ft6          #; ft5  = 4864.0, ft6  = 41.0, (f:lsu) fa1  <-- 44.0
       0     3470        M                                           #; (f:fpu) ft5  <-- 4905.0
       0     3476        M 0x80001320 fadd.d  ft5, ft5, ft7          #; ft5  = 4905.0, ft7  = 42.0
       0     3479        M                                           #; (f:fpu) ft5  <-- 4947.0
       0     3480        M 0x80001324 fadd.d  ft5, ft5, fa0          #; ft5  = 4947.0, fa0  = 43.0
       0     3483        M                                           #; (f:fpu) ft5  <-- 4990.0
       0     3484        M 0x80001328 fadd.d  ft5, ft5, fa1          #; ft5  = 4990.0, fa1  = 44.0
       0     3485        M 0x8000132c fld     ft6, 352(a0)           #; ft6  <~~ Doub[0x00100160]
       0     3486        M                                           #; (f:lsu) ft6  <-- 45.0
       0     3487        M                                           #; (f:fpu) ft5  <-- 5034.0
       0     3488        M 0x80001330 fld     ft7, 360(a0)           #; ft7  <~~ Doub[0x00100168]
       0     3489        M 0x80001334 fld     fa0, 368(a0)           #; fa0  <~~ Doub[0x00100170], (f:lsu) ft7  <-- 46.0
       0     3490        M 0x80001338 fld     fa1, 376(a0)           #; fa1  <~~ Doub[0x00100178], (f:lsu) fa0  <-- 47.0
       0     3491        M 0x8000133c fadd.d  ft5, ft5, ft6          #; ft5  = 5034.0, ft6  = 45.0, (f:lsu) fa1  <-- 48.0
       0     3494        M                                           #; (f:fpu) ft5  <-- 5079.0
       0     3500        M 0x80001340 fadd.d  ft5, ft5, ft7          #; ft5  = 5079.0, ft7  = 46.0
       0     3503        M                                           #; (f:fpu) ft5  <-- 5125.0
       0     3504        M 0x80001344 fadd.d  ft5, ft5, fa0          #; ft5  = 5125.0, fa0  = 47.0
       0     3507        M                                           #; (f:fpu) ft5  <-- 5172.0
       0     3508        M 0x80001348 fadd.d  ft5, ft5, fa1          #; ft5  = 5172.0, fa1  = 48.0
       0     3509        M 0x8000134c fld     ft6, 192(a0)           #; ft6  <~~ Doub[0x001000c0]
       0     3510        M                                           #; (f:lsu) ft6  <-- 25.0
       0     3511        M                                           #; (f:fpu) ft5  <-- 5220.0
       0     3512        M 0x80001350 fld     ft7, 200(a0)           #; ft7  <~~ Doub[0x001000c8]
       0     3513        M 0x80001354 fld     fa0, 208(a0)           #; fa0  <~~ Doub[0x001000d0], (f:lsu) ft7  <-- 26.0
       0     3514        M 0x80001358 fld     fa1, 216(a0)           #; fa1  <~~ Doub[0x001000d8], (f:lsu) fa0  <-- 27.0
       0     3515        M 0x8000135c fadd.d  ft5, ft5, ft6          #; ft5  = 5220.0, ft6  = 25.0, (f:lsu) fa1  <-- 28.0
       0     3518        M                                           #; (f:fpu) ft5  <-- 5245.0
       0     3524        M 0x80001360 fadd.d  ft5, ft5, ft7          #; ft5  = 5245.0, ft7  = 26.0
       0     3527        M                                           #; (f:fpu) ft5  <-- 5271.0
       0     3528        M 0x80001364 fadd.d  ft5, ft5, fa0          #; ft5  = 5271.0, fa0  = 27.0
       0     3531        M                                           #; (f:fpu) ft5  <-- 5298.0
       0     3532        M 0x80001368 fadd.d  ft5, ft5, fa1          #; ft5  = 5298.0, fa1  = 28.0
       0     3533        M 0x8000136c fld     ft6, 224(a0)           #; ft6  <~~ Doub[0x001000e0]
       0     3534        M                                           #; (f:lsu) ft6  <-- 29.0
       0     3535        M                                           #; (f:fpu) ft5  <-- 5326.0
       0     3536        M 0x80001370 fld     ft7, 232(a0)           #; ft7  <~~ Doub[0x001000e8]
       0     3537        M 0x80001374 fld     fa0, 240(a0)           #; fa0  <~~ Doub[0x001000f0], (f:lsu) ft7  <-- 30.0
       0     3538        M 0x80001378 fld     fa1, 248(a0)           #; fa1  <~~ Doub[0x001000f8], (f:lsu) fa0  <-- 31.0
       0     3539        M 0x8000137c fadd.d  ft5, ft5, ft6          #; ft5  = 5326.0, ft6  = 29.0, (f:lsu) fa1  <-- 32.0
       0     3542        M                                           #; (f:fpu) ft5  <-- 5355.0
       0     3548        M 0x80001380 fadd.d  ft5, ft5, ft7          #; ft5  = 5355.0, ft7  = 30.0
       0     3551        M                                           #; (f:fpu) ft5  <-- 5385.0
       0     3552        M 0x80001384 fadd.d  ft5, ft5, fa0          #; ft5  = 5385.0, fa0  = 31.0
       0     3555        M                                           #; (f:fpu) ft5  <-- 5416.0
       0     3556        M 0x80001388 fadd.d  ft5, ft5, fa1          #; ft5  = 5416.0, fa1  = 32.0
       0     3557        M 0x8000138c fld     ft6, 256(a0)           #; ft6  <~~ Doub[0x00100100]
       0     3558        M                                           #; (f:lsu) ft6  <-- 33.0
       0     3559        M                                           #; (f:fpu) ft5  <-- 5448.0
       0     3560        M 0x80001390 fld     ft7, 264(a0)           #; ft7  <~~ Doub[0x00100108]
       0     3561        M 0x80001394 fld     fa0, 272(a0)           #; fa0  <~~ Doub[0x00100110], (f:lsu) ft7  <-- 34.0
       0     3562        M 0x80001398 fld     fa1, 280(a0)           #; fa1  <~~ Doub[0x00100118], (f:lsu) fa0  <-- 35.0
       0     3563        M 0x8000139c fadd.d  ft5, ft5, ft6          #; ft5  = 5448.0, ft6  = 33.0, (f:lsu) fa1  <-- 36.0
       0     3566        M                                           #; (f:fpu) ft5  <-- 5481.0
       0     3572        M 0x800013a0 fadd.d  ft5, ft5, ft7          #; ft5  = 5481.0, ft7  = 34.0
       0     3575        M                                           #; (f:fpu) ft5  <-- 5515.0
       0     3576        M 0x800013a4 fadd.d  ft5, ft5, fa0          #; ft5  = 5515.0, fa0  = 35.0
       0     3579        M                                           #; (f:fpu) ft5  <-- 5550.0
       0     3580        M 0x800013a8 fadd.d  ft5, ft5, fa1          #; ft5  = 5550.0, fa1  = 36.0
       0     3581        M 0x800013ac fld     ft6, 96(a0)            #; ft6  <~~ Doub[0x00100060]
       0     3582        M                                           #; (f:lsu) ft6  <-- 13.0
       0     3583        M                                           #; (f:fpu) ft5  <-- 5586.0
       0     3584        M 0x800013b0 fld     ft7, 104(a0)           #; ft7  <~~ Doub[0x00100068]
       0     3585        M 0x800013b4 fld     fa0, 112(a0)           #; fa0  <~~ Doub[0x00100070], (f:lsu) ft7  <-- 14.0
       0     3586        M 0x800013b8 fld     fa1, 120(a0)           #; fa1  <~~ Doub[0x00100078], (f:lsu) fa0  <-- 15.0
       0     3587        M 0x800013bc fadd.d  ft5, ft5, ft6          #; ft5  = 5586.0, ft6  = 13.0, (f:lsu) fa1  <-- 16.0
       0     3590        M                                           #; (f:fpu) ft5  <-- 5599.0
       0     3596        M 0x800013c0 fadd.d  ft5, ft5, ft7          #; ft5  = 5599.0, ft7  = 14.0
       0     3599        M                                           #; (f:fpu) ft5  <-- 5613.0
       0     3600        M 0x800013c4 fadd.d  ft5, ft5, fa0          #; ft5  = 5613.0, fa0  = 15.0
       0     3603        M                                           #; (f:fpu) ft5  <-- 5628.0
       0     3604        M 0x800013c8 fadd.d  ft5, ft5, fa1          #; ft5  = 5628.0, fa1  = 16.0
       0     3605        M 0x800013cc fld     ft6, 128(a0)           #; ft6  <~~ Doub[0x00100080]
       0     3606        M                                           #; (f:lsu) ft6  <-- 17.0
       0     3607        M                                           #; (f:fpu) ft5  <-- 5644.0
       0     3608        M 0x800013d0 fld     ft7, 136(a0)           #; ft7  <~~ Doub[0x00100088]
       0     3609        M 0x800013d4 fld     fa0, 144(a0)           #; fa0  <~~ Doub[0x00100090], (f:lsu) ft7  <-- 18.0
       0     3610        M 0x800013d8 fld     fa1, 152(a0)           #; fa1  <~~ Doub[0x00100098], (f:lsu) fa0  <-- 19.0
       0     3611        M 0x800013dc fadd.d  ft5, ft5, ft6          #; ft5  = 5644.0, ft6  = 17.0, (f:lsu) fa1  <-- 20.0
       0     3614        M                                           #; (f:fpu) ft5  <-- 5661.0
       0     3620        M 0x800013e0 fadd.d  ft5, ft5, ft7          #; ft5  = 5661.0, ft7  = 18.0
       0     3623        M                                           #; (f:fpu) ft5  <-- 5679.0
       0     3624        M 0x800013e4 fadd.d  ft5, ft5, fa0          #; ft5  = 5679.0, fa0  = 19.0
       0     3627        M                                           #; (f:fpu) ft5  <-- 5698.0
       0     3628        M 0x800013e8 fadd.d  ft5, ft5, fa1          #; ft5  = 5698.0, fa1  = 20.0
       0     3629        M 0x800013ec fld     ft6, 160(a0)           #; ft6  <~~ Doub[0x001000a0]
       0     3630        M                                           #; (f:lsu) ft6  <-- 21.0
       0     3631        M                                           #; (f:fpu) ft5  <-- 5718.0
       0     3632        M 0x800013f0 fld     ft7, 168(a0)           #; ft7  <~~ Doub[0x001000a8]
       0     3633        M 0x800013f4 fld     fa0, 176(a0)           #; fa0  <~~ Doub[0x001000b0], (f:lsu) ft7  <-- 22.0
       0     3634        M 0x800013f8 fld     fa1, 184(a0)           #; fa1  <~~ Doub[0x001000b8], (f:lsu) fa0  <-- 23.0
       0     3635        M 0x800013fc fadd.d  ft5, ft5, ft6          #; ft5  = 5718.0, ft6  = 21.0, (f:lsu) fa1  <-- 24.0
       0     3638        M                                           #; (f:fpu) ft5  <-- 5739.0
       0     3644        M 0x80001400 fadd.d  ft5, ft5, ft7          #; ft5  = 5739.0, ft7  = 22.0
       0     3647        M                                           #; (f:fpu) ft5  <-- 5761.0
       0     3648        M 0x80001404 fadd.d  ft5, ft5, fa0          #; ft5  = 5761.0, fa0  = 23.0
       0     3651        M                                           #; (f:fpu) ft5  <-- 5784.0
       0     3652        M 0x80001408 fadd.d  ft5, ft5, fa1          #; ft5  = 5784.0, fa1  = 24.0
       0     3653        M 0x8000140c fld     ft6, 0(a0)             #; ft6  <~~ Doub[0x00100000]
       0     3654        M                                           #; (f:lsu) ft6  <-- 1.0
       0     3655        M                                           #; (f:fpu) ft5  <-- 5808.0
       0     3656        M 0x80001410 fld     ft7, 8(a0)             #; ft7  <~~ Doub[0x00100008]
       0     3657        M 0x80001414 fld     fa0, 16(a0)            #; fa0  <~~ Doub[0x00100010], (f:lsu) ft7  <-- 2.0
       0     3658        M 0x80001418 fld     fa1, 24(a0)            #; fa1  <~~ Doub[0x00100018], (f:lsu) fa0  <-- 3.0
       0     3659        M 0x8000141c fadd.d  ft5, ft5, ft6          #; ft5  = 5808.0, ft6  = 1.0, (f:lsu) fa1  <-- 4.0
       0     3662        M                                           #; (f:fpu) ft5  <-- 5809.0
       0     3668        M 0x80001420 fadd.d  ft5, ft5, ft7          #; ft5  = 5809.0, ft7  = 2.0
       0     3671        M                                           #; (f:fpu) ft5  <-- 5811.0
       0     3672        M 0x80001424 fadd.d  ft5, ft5, fa0          #; ft5  = 5811.0, fa0  = 3.0
       0     3675        M                                           #; (f:fpu) ft5  <-- 5814.0
       0     3676        M 0x80001428 fadd.d  ft5, ft5, fa1          #; ft5  = 5814.0, fa1  = 4.0
       0     3677        M 0x8000142c fld     ft6, 32(a0)            #; ft6  <~~ Doub[0x00100020]
       0     3678        M                                           #; (f:lsu) ft6  <-- 5.0
       0     3679        M                                           #; (f:fpu) ft5  <-- 5818.0
       0     3680        M 0x80001430 fld     ft7, 40(a0)            #; ft7  <~~ Doub[0x00100028]
       0     3681        M 0x80001434 fld     fa0, 48(a0)            #; fa0  <~~ Doub[0x00100030], (f:lsu) ft7  <-- 6.0
       0     3682        M 0x80001438 fld     fa1, 56(a0)            #; fa1  <~~ Doub[0x00100038], (f:lsu) fa0  <-- 7.0
       0     3683        M 0x8000143c fadd.d  ft5, ft5, ft6          #; ft5  = 5818.0, ft6  = 5.0, (f:lsu) fa1  <-- 8.0
       0     3686        M                                           #; (f:fpu) ft5  <-- 5823.0
       0     3692        M 0x80001440 fadd.d  ft5, ft5, ft7          #; ft5  = 5823.0, ft7  = 6.0
       0     3695        M                                           #; (f:fpu) ft5  <-- 5829.0
       0     3696        M 0x80001444 fadd.d  ft5, ft5, fa0          #; ft5  = 5829.0, fa0  = 7.0
       0     3699        M                                           #; (f:fpu) ft5  <-- 5836.0
       0     3700        M 0x80001448 fadd.d  ft5, ft5, fa1          #; ft5  = 5836.0, fa1  = 8.0
       0     3701        M 0x8000144c fld     ft6, 64(a0)            #; ft6  <~~ Doub[0x00100040]
       0     3702        M                                           #; (f:lsu) ft6  <-- 9.0
       0     3703        M                                           #; (f:fpu) ft5  <-- 5844.0
       0     3704        M 0x80001450 fld     ft7, 72(a0)            #; ft7  <~~ Doub[0x00100048]
       0     3705        M 0x80001454 fld     fa0, 80(a0)            #; fa0  <~~ Doub[0x00100050], (f:lsu) ft7  <-- 10.0
       0     3706        M 0x80001458 fld     fa1, 88(a0)            #; fa1  <~~ Doub[0x00100058], (f:lsu) fa0  <-- 11.0
       0     3707        M 0x8000145c fadd.d  ft5, ft5, ft6          #; ft5  = 5844.0, ft6  = 9.0, (f:lsu) fa1  <-- 12.0
       0     3710        M                                           #; (f:fpu) ft5  <-- 5853.0
       0     3716        M 0x80001460 fadd.d  ft5, ft5, ft7          #; ft5  = 5853.0, ft7  = 10.0
       0     3717        M 0x8000146c auipc   a0, 0x2                #; (wrb) a0  <-- 0x8000346c
       0     3719        M                                           #; (f:fpu) ft5  <-- 5863.0
       0     3720        M 0x80001464 fadd.d  ft5, ft5, fa0          #; ft5  = 5863.0, fa0  = 11.0
       0     3723        M                                           #; (f:fpu) ft5  <-- 5874.0
       0     3724        M 0x80001468 fadd.d  ft5, ft5, fa1          #; ft5  = 5874.0, fa1  = 12.0
       0     3726        M 0x80001470 addi    a0, a0, 1580           #; a0  = 0x8000346c, (wrb) a0  <-- 0x80003a98
       0     3727        M                                           #; (f:fpu) ft5  <-- 5886.0
       0     3729        M 0x80001474 fld     ft6, 0(a0)             #; ft6  <~~ Doub[0x80003a98]
       0     3730        M 0x80001478 fadd.d  ft4, ft4, ft5          #; ft4  = 5886.0, ft5  = 5886.0
       0     3733        M                                           #; (f:fpu) ft4  <-- 11772.0
       0     3738        M                                           #; (f:lsu) ft6  <-- -2.0
       0     3739        M 0x8000147c fmadd.d ft3, ft3, ft6, ft4     #; ft3  = 5886.0, ft6  = -2.0, ft4  = 11772.0
       0     3740        M 0x80001488 lw      a2, 8(sp)              #; sp  = 0x0011ff40, a2  <~~ Word[0x0011ff48]
       0     3742        M                                           #; (f:fpu) ft3  <-- 0.0
       0     3743        M                                           #; (lsu) a2  <-- 0
                         M 0x80001480 fsgnjx.d fs0, ft3, ft3         #; ft3  = 0.0, ft3  = 0.0
       0     3744        M 0x8000148c lw      a3, 12(sp)             #; sp  = 0x0011ff40, a3  <~~ Word[0x0011ff4c]
                         M                                           #; (f:fpu) fs0  <-- 0.0
       0     3746        M 0x80001484 fsd     fs0, 8(sp)             #; 0.0 ~~> Doub[0x0011ff48]
       0     3747        M                                           #; (lsu) a3  <-- 0
       0     3750        M 0x80001490 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003490
       0     3751        M 0x80001494 addi    a0, a0, 869            #; a0  = 0x80003490, (wrb) a0  <-- 0x800037f5
       0     3752        M 0x80001498 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80001498
       0     3753        M 0x8000149c jalr    ra, ra, 40             #; ra  = 0x80001498, (wrb) ra  <-- 0x800014a0, goto 0x800014c0
       0     3764        M 0x800014c0 addi    sp, sp, -48            #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff10
       0     3765        M 0x800014c4 sw      ra, 12(sp)             #; sp  = 0x0011ff10, 0x800014a0 ~~> Word[0x0011ff1c]
       0     3766        M 0x800014c8 mv      t0, a0                 #; a0  = 0x800037f5, (wrb) t0  <-- 0x800037f5
       0     3767        M 0x800014cc sw      a7, 44(sp)             #; sp  = 0x0011ff10, 0xffff0000 ~~> Word[0x0011ff3c]
       0     3776        M 0x800014d0 sw      a6, 40(sp)             #; sp  = 0x0011ff10, 1 ~~> Word[0x0011ff38]
       0     3777        M 0x800014d4 sw      a5, 36(sp)             #; sp  = 0x0011ff10, 224 ~~> Word[0x0011ff34]
       0     3778        M 0x800014d8 sw      a4, 32(sp)             #; sp  = 0x0011ff10, 96 ~~> Word[0x0011ff30]
       0     3779        M 0x800014dc sw      a3, 28(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff2c]
       0     3788        M 0x800014e0 sw      a2, 24(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff28]
       0     3789        M 0x800014e4 sw      a1, 20(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff24]
       0     3790        M 0x800014e8 addi    a0, sp, 20             #; sp  = 0x0011ff10, (wrb) a0  <-- 0x0011ff24
       0     3791        M 0x800014ec sw      a0, 8(sp)              #; sp  = 0x0011ff10, 0x0011ff24 ~~> Word[0x0011ff18]
       0     3800        M 0x800014f0 auipc   a0, 0x1                #; (wrb) a0  <-- 0x800024f0
       0     3801        M 0x800014f4 addi    a0, a0, -988           #; a0  = 0x800024f0, (wrb) a0  <-- 0x80002114
       0     3802        M 0x800014f8 addi    a1, sp, 7              #; sp  = 0x0011ff10, (wrb) a1  <-- 0x0011ff17
       0     3803        M 0x800014fc li      a2, -1                 #; (wrb) a2  <-- -1
       0     3812        M 0x80001500 addi    a4, sp, 20             #; sp  = 0x0011ff10, (wrb) a4  <-- 0x0011ff24
       0     3813        M 0x80001504 mv      a3, t0                 #; t0  = 0x800037f5, (wrb) a3  <-- 0x800037f5
       0     3814        M 0x80001508 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80001508
       0     3815        M 0x8000150c jalr    ra, ra, 20             #; ra  = 0x80001508, (wrb) ra  <-- 0x80001510, goto 0x8000151c
       0     3824        M 0x8000151c addi    sp, sp, -112           #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011fea0
       0     3836        M 0x80001520 sw      ra, 108(sp)            #; sp  = 0x0011fea0, 0x80001510 ~~> Word[0x0011ff0c]
       0     3837        M 0x80001524 sw      s0, 104(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff08]
       0     3838        M 0x80001528 sw      s1, 100(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff04]
       0     3839        M 0x8000152c sw      s2, 96(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff00]
       0     3848        M 0x80001530 sw      s3, 92(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fefc]
       0     3849        M 0x80001534 sw      s4, 88(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef8]
       0     3850        M 0x80001538 sw      s5, 84(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef4]
       0     3851        M 0x8000153c sw      s6, 80(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef0]
       0     3860        M 0x80001540 sw      s7, 76(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011feec]
       0     3861        M 0x80001544 sw      s8, 72(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee8]
       0     3862        M 0x80001548 sw      s9, 68(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee4]
       0     3863        M 0x8000154c sw      s10, 64(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee0]
       0     3872        M 0x80001550 sw      s11, 60(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fedc]
       0     3873        M 0x80001554 mv      s3, a4                 #; a4  = 0x0011ff24, (wrb) s3  <-- 0x0011ff24
       0     3874        M 0x80001558 mv      s0, a3                 #; a3  = 0x800037f5, (wrb) s0  <-- 0x800037f5
       0     3875        M 0x8000155c mv      s5, a2                 #; a2  = -1, (wrb) s5  <-- -1
       0     3884        M 0x80001560 mv      s4, a1                 #; a1  = 0x0011ff17, (wrb) s4  <-- 0x0011ff17
       0     3885        M 0x80001564 beqz    a1, pc + 12            #; a1  = 0x0011ff17, not taken
       0     3886        M 0x80001568 mv      s2, a0                 #; a0  = 0x80002114, (wrb) s2  <-- 0x80002114
       0     3887        M 0x8000156c j       pc + 0xc               #; goto 0x80001578
       0     3896        M 0x80001578 li      s8, 0                  #; (wrb) s8  <-- 0
       0     3897        M 0x8000157c li      s6, 37                 #; (wrb) s6  <-- 37
       0     3908        M 0x80001580 li      s11, 16                #; (wrb) s11 <-- 16
       0     3909        M 0x80001584 li      s7, 46                 #; (wrb) s7  <-- 46
       0     3910        M 0x80001588 lui     a0, 0x1                #; (wrb) a0  <-- 4096
       0     3911        M 0x8000158c addi    a0, a0, -2048          #; a0  = 4096, (wrb) a0  <-- 2048
       0     3920        M 0x80001590 sw      a0, 24(sp)             #; sp  = 0x0011fea0, 2048 ~~> Word[0x0011feb8]
       0     3921        M 0x80001594 lui     a0, 0x10               #; (wrb) a0  <-- 0x00010000
       0     3922        M 0x80001598 addi    a0, a0, -1             #; a0  = 0x00010000, (wrb) a0  <-- 65535
       0     3923        M 0x8000159c sw      a0, 16(sp)             #; sp  = 0x0011fea0, 65535 ~~> Word[0x0011feb0]
       0     3932        M 0x800015a0 addi    s10, s0, 2             #; s0  = 0x800037f5, (wrb) s10 <-- 0x800037f7
       0     3933        M 0x800015a4 mv      s9, s8                 #; s8  = 0, (wrb) s9  <-- 0
       0     3934        M 0x800015a8 li      s8, 10                 #; (wrb) s8  <-- 10
       0     3935        M 0x800015ac lbu     a0, 0(s0)              #; s0  = 0x800037f5, a0  <~~ Byte[0x800037f5]
       0     3946        M                                           #; (lsu) a0  <-- 101
       0     3947        M 0x800015b0 beqz    a0, pc + 2824          #; a0  = 101, not taken
       0     3948        M 0x800015b4 beq     a0, s6, pc + 48        #; a0  = 101, s6  = 37, not taken
       0     3949        M 0x800015b8 addi    s1, s9, 1              #; s9  = 0, (wrb) s1  <-- 1
       0     3950        M 0x800015bc mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     3956        M 0x800015c0 mv      a2, s9                 #; s9  = 0, (wrb) a2  <-- 0
       0     3957        M 0x800015c4 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3958        M 0x800015c8 jalr    s2                     #; s2  = 0x80002114, (wrb) ra  <-- 0x800015cc, goto 0x80002114
       0     3979        M 0x80002114 beqz    a0, pc + 168           #; a0  = 101, not taken
       0     3980        M 0x80002118 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     3981        M 0x8000211c li      a2, 1096               #; (wrb) a2  <-- 1096
       0     3991        M 0x80002120 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     3992        M 0x80002124 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80004124
       0     3993        M 0x80002128 addi    a3, a3, -1488          #; a3  = 0x80004124, (wrb) a3  <-- 0x80003b54
       0     3994        M                                           #; (acc) a1  <-- 0x00d605b3
       0     3995        M 0x8000212c add     a1, a2, a3             #; a2  = 0, a3  = 0x80003b54, (wrb) a1  <-- 0x80003b54
       0     4003        M 0x80002130 lw      a4, 0(a1)              #; a1  = 0x80003b54, a4  <~~ Word[0x80003b54]
       0     4014        M                                           #; (lsu) a4  <-- 0
       0     4015        M 0x80002134 addi    a5, a4, 1              #; a4  = 0, (wrb) a5  <-- 1
       0     4016        M 0x80002138 sw      a5, 0(a1)              #; a1  = 0x80003b54, 1 ~~> Word[0x80003b54]
       0     4017        M 0x8000213c add     a4, a1, a4             #; a1  = 0x80003b54, a4  = 0, (wrb) a4  <-- 0x80003b54
       0     4018        M 0x80002140 sb      a0, 72(a4)             #; a4  = 0x80003b54, 101 ~~> Byte[0x80003b9c]
       0     4019        M 0x80002144 lw      a4, 0(a1)              #; a1  = 0x80003b54, a4  <~~ Word[0x80003b54]
       0     4040        M                                           #; (lsu) a4  <-- 1
       0     4041        M 0x80002148 addi    a4, a4, -1020          #; a4  = 1, (wrb) a4  <-- -1019
       0     4042        M 0x8000214c snez    a4, a4                 #; a4  = -1019, (wrb) a4  <-- 1
       0     4043        M 0x80002150 addi    a0, a0, -10            #; a0  = 101, (wrb) a0  <-- 91
       0     4044        M 0x80002154 snez    a0, a0                 #; a0  = 91, (wrb) a0  <-- 1
       0     4045        M 0x80002158 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4046        M 0x8000215c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800021bc
       0     4066        M 0x800021bc ret                            #; ra  = 0x800015cc, goto 0x800015cc
       0     4080        M 0x800015cc addi    s0, s0, 1              #; s0  = 0x800037f5, (wrb) s0  <-- 0x800037f6
       0     4083        M 0x800015d0 addi    s10, s10, 1            #; s10 = 0x800037f7, (wrb) s10 <-- 0x800037f8
       0     4084        M 0x800015d4 mv      s9, s1                 #; s1  = 1, (wrb) s9  <-- 1
       0     4085        M 0x800015d8 lbu     a0, 0(s0)              #; s0  = 0x800037f6, a0  <~~ Byte[0x800037f6]
       0     4096        M                                           #; (lsu) a0  <-- 114
       0     4097        M 0x800015dc bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x800015b4
       0     4098        M 0x800015b4 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     4099        M 0x800015b8 addi    s1, s9, 1              #; s9  = 1, (wrb) s1  <-- 2
       0     4100        M 0x800015bc mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4101        M 0x800015c0 mv      a2, s9                 #; s9  = 1, (wrb) a2  <-- 1
       0     4102        M 0x800015c4 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     4103        M 0x800015c8 jalr    s2                     #; s2  = 0x80002114, (wrb) ra  <-- 0x800015cc, goto 0x80002114
       0     4106        M 0x80002114 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     4107        M 0x80002118 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4108        M 0x8000211c li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4109        M 0x80002120 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4110        M 0x80002124 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80004124
       0     4111        M 0x80002128 addi    a3, a3, -1488          #; a3  = 0x80004124, (wrb) a3  <-- 0x80003b54
       0     4112        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4113        M 0x8000212c add     a1, a2, a3             #; a2  = 0, a3  = 0x80003b54, (wrb) a1  <-- 0x80003b54
       0     4114        M 0x80002130 lw      a4, 0(a1)              #; a1  = 0x80003b54, a4  <~~ Word[0x80003b54]
       0     4125        M                                           #; (lsu) a4  <-- 1
       0     4126        M 0x80002134 addi    a5, a4, 1              #; a4  = 1, (wrb) a5  <-- 2
       0     4127        M 0x80002138 sw      a5, 0(a1)              #; a1  = 0x80003b54, 2 ~~> Word[0x80003b54]
       0     4128        M 0x8000213c add     a4, a1, a4             #; a1  = 0x80003b54, a4  = 1, (wrb) a4  <-- 0x80003b55
       0     4129        M 0x80002140 sb      a0, 72(a4)             #; a4  = 0x80003b55, 114 ~~> Byte[0x80003b9d]
       0     4130        M 0x80002144 lw      a4, 0(a1)              #; a1  = 0x80003b54, a4  <~~ Word[0x80003b54]
       0     4151        M                                           #; (lsu) a4  <-- 2
       0     4152        M 0x80002148 addi    a4, a4, -1020          #; a4  = 2, (wrb) a4  <-- -1018
       0     4153        M 0x8000214c snez    a4, a4                 #; a4  = -1018, (wrb) a4  <-- 1
       0     4154        M 0x80002150 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     4155        M 0x80002154 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     4156        M 0x80002158 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4157        M 0x8000215c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800021bc
       0     4160        M 0x800021bc ret                            #; ra  = 0x800015cc, goto 0x800015cc
       0     4165        M 0x800015cc addi    s0, s0, 1              #; s0  = 0x800037f6, (wrb) s0  <-- 0x800037f7
       0     4168        M 0x800015d0 addi    s10, s10, 1            #; s10 = 0x800037f8, (wrb) s10 <-- 0x800037f9
       0     4169        M 0x800015d4 mv      s9, s1                 #; s1  = 2, (wrb) s9  <-- 2
       0     4170        M 0x800015d8 lbu     a0, 0(s0)              #; s0  = 0x800037f7, a0  <~~ Byte[0x800037f7]
       0     4181        M                                           #; (lsu) a0  <-- 114
       0     4182        M 0x800015dc bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x800015b4
       0     4183        M 0x800015b4 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     4184        M 0x800015b8 addi    s1, s9, 1              #; s9  = 2, (wrb) s1  <-- 3
       0     4185        M 0x800015bc mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4186        M 0x800015c0 mv      a2, s9                 #; s9  = 2, (wrb) a2  <-- 2
       0     4187        M 0x800015c4 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     4188        M 0x800015c8 jalr    s2                     #; s2  = 0x80002114, (wrb) ra  <-- 0x800015cc, goto 0x80002114
       0     4191        M 0x80002114 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     4192        M 0x80002118 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4193        M 0x8000211c li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4194        M 0x80002120 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4195        M 0x80002124 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80004124
       0     4196        M 0x80002128 addi    a3, a3, -1488          #; a3  = 0x80004124, (wrb) a3  <-- 0x80003b54
       0     4197        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4198        M 0x8000212c add     a1, a2, a3             #; a2  = 0, a3  = 0x80003b54, (wrb) a1  <-- 0x80003b54
       0     4199        M 0x80002130 lw      a4, 0(a1)              #; a1  = 0x80003b54, a4  <~~ Word[0x80003b54]
       0     4210        M                                           #; (lsu) a4  <-- 2
       0     4211        M 0x80002134 addi    a5, a4, 1              #; a4  = 2, (wrb) a5  <-- 3
       0     4212        M 0x80002138 sw      a5, 0(a1)              #; a1  = 0x80003b54, 3 ~~> Word[0x80003b54]
       0     4213        M 0x8000213c add     a4, a1, a4             #; a1  = 0x80003b54, a4  = 2, (wrb) a4  <-- 0x80003b56
       0     4214        M 0x80002140 sb      a0, 72(a4)             #; a4  = 0x80003b56, 114 ~~> Byte[0x80003b9e]
       0     4215        M 0x80002144 lw      a4, 0(a1)              #; a1  = 0x80003b54, a4  <~~ Word[0x80003b54]
       0     4236        M                                           #; (lsu) a4  <-- 3
       0     4237        M 0x80002148 addi    a4, a4, -1020          #; a4  = 3, (wrb) a4  <-- -1017
       0     4238        M 0x8000214c snez    a4, a4                 #; a4  = -1017, (wrb) a4  <-- 1
       0     4239        M 0x80002150 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     4240        M 0x80002154 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     4241        M 0x80002158 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4242        M 0x8000215c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800021bc
       0     4245        M 0x800021bc ret                            #; ra  = 0x800015cc, goto 0x800015cc
       0     4250        M 0x800015cc addi    s0, s0, 1              #; s0  = 0x800037f7, (wrb) s0  <-- 0x800037f8
       0     4253        M 0x800015d0 addi    s10, s10, 1            #; s10 = 0x800037f9, (wrb) s10 <-- 0x800037fa
       0     4254        M 0x800015d4 mv      s9, s1                 #; s1  = 3, (wrb) s9  <-- 3
       0     4255        M 0x800015d8 lbu     a0, 0(s0)              #; s0  = 0x800037f8, a0  <~~ Byte[0x800037f8]
       0     4266        M                                           #; (lsu) a0  <-- 111
       0     4267        M 0x800015dc bnez    a0, pc - 40            #; a0  = 111, taken, goto 0x800015b4
       0     4268        M 0x800015b4 beq     a0, s6, pc + 48        #; a0  = 111, s6  = 37, not taken
       0     4269        M 0x800015b8 addi    s1, s9, 1              #; s9  = 3, (wrb) s1  <-- 4
       0     4270        M 0x800015bc mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4271        M 0x800015c0 mv      a2, s9                 #; s9  = 3, (wrb) a2  <-- 3
       0     4272        M 0x800015c4 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     4273        M 0x800015c8 jalr    s2                     #; s2  = 0x80002114, (wrb) ra  <-- 0x800015cc, goto 0x80002114
       0     4276        M 0x80002114 beqz    a0, pc + 168           #; a0  = 111, not taken
       0     4277        M 0x80002118 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4278        M 0x8000211c li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4279        M 0x80002120 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4280        M 0x80002124 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80004124
       0     4281        M 0x80002128 addi    a3, a3, -1488          #; a3  = 0x80004124, (wrb) a3  <-- 0x80003b54
       0     4282        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4283        M 0x8000212c add     a1, a2, a3             #; a2  = 0, a3  = 0x80003b54, (wrb) a1  <-- 0x80003b54
       0     4284        M 0x80002130 lw      a4, 0(a1)              #; a1  = 0x80003b54, a4  <~~ Word[0x80003b54]
       0     4295        M                                           #; (lsu) a4  <-- 3
       0     4296        M 0x80002134 addi    a5, a4, 1              #; a4  = 3, (wrb) a5  <-- 4
       0     4297        M 0x80002138 sw      a5, 0(a1)              #; a1  = 0x80003b54, 4 ~~> Word[0x80003b54]
       0     4298        M 0x8000213c add     a4, a1, a4             #; a1  = 0x80003b54, a4  = 3, (wrb) a4  <-- 0x80003b57
       0     4299        M 0x80002140 sb      a0, 72(a4)             #; a4  = 0x80003b57, 111 ~~> Byte[0x80003b9f]
       0     4300        M 0x80002144 lw      a4, 0(a1)              #; a1  = 0x80003b54, a4  <~~ Word[0x80003b54]
       0     4321        M                                           #; (lsu) a4  <-- 4
       0     4322        M 0x80002148 addi    a4, a4, -1020          #; a4  = 4, (wrb) a4  <-- -1016
       0     4323        M 0x8000214c snez    a4, a4                 #; a4  = -1016, (wrb) a4  <-- 1
       0     4324        M 0x80002150 addi    a0, a0, -10            #; a0  = 111, (wrb) a0  <-- 101
       0     4325        M 0x80002154 snez    a0, a0                 #; a0  = 101, (wrb) a0  <-- 1
       0     4326        M 0x80002158 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4327        M 0x8000215c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800021bc
       0     4330        M 0x800021bc ret                            #; ra  = 0x800015cc, goto 0x800015cc
       0     4335        M 0x800015cc addi    s0, s0, 1              #; s0  = 0x800037f8, (wrb) s0  <-- 0x800037f9
       0     4338        M 0x800015d0 addi    s10, s10, 1            #; s10 = 0x800037fa, (wrb) s10 <-- 0x800037fb
       0     4339        M 0x800015d4 mv      s9, s1                 #; s1  = 4, (wrb) s9  <-- 4
       0     4340        M 0x800015d8 lbu     a0, 0(s0)              #; s0  = 0x800037f9, a0  <~~ Byte[0x800037f9]
       0     4351        M                                           #; (lsu) a0  <-- 114
       0     4352        M 0x800015dc bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x800015b4
       0     4353        M 0x800015b4 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     4354        M 0x800015b8 addi    s1, s9, 1              #; s9  = 4, (wrb) s1  <-- 5
       0     4355        M 0x800015bc mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4356        M 0x800015c0 mv      a2, s9                 #; s9  = 4, (wrb) a2  <-- 4
       0     4357        M 0x800015c4 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     4358        M 0x800015c8 jalr    s2                     #; s2  = 0x80002114, (wrb) ra  <-- 0x800015cc, goto 0x80002114
       0     4361        M 0x80002114 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     4362        M 0x80002118 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4363        M 0x8000211c li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4364        M 0x80002120 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4365        M 0x80002124 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80004124
       0     4366        M 0x80002128 addi    a3, a3, -1488          #; a3  = 0x80004124, (wrb) a3  <-- 0x80003b54
       0     4367        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4368        M 0x8000212c add     a1, a2, a3             #; a2  = 0, a3  = 0x80003b54, (wrb) a1  <-- 0x80003b54
       0     4369        M 0x80002130 lw      a4, 0(a1)              #; a1  = 0x80003b54, a4  <~~ Word[0x80003b54]
       0     4380        M                                           #; (lsu) a4  <-- 4
       0     4381        M 0x80002134 addi    a5, a4, 1              #; a4  = 4, (wrb) a5  <-- 5
       0     4382        M 0x80002138 sw      a5, 0(a1)              #; a1  = 0x80003b54, 5 ~~> Word[0x80003b54]
       0     4383        M 0x8000213c add     a4, a1, a4             #; a1  = 0x80003b54, a4  = 4, (wrb) a4  <-- 0x80003b58
       0     4384        M 0x80002140 sb      a0, 72(a4)             #; a4  = 0x80003b58, 114 ~~> Byte[0x80003ba0]
       0     4385        M 0x80002144 lw      a4, 0(a1)              #; a1  = 0x80003b54, a4  <~~ Word[0x80003b54]
       0     4406        M                                           #; (lsu) a4  <-- 5
       0     4407        M 0x80002148 addi    a4, a4, -1020          #; a4  = 5, (wrb) a4  <-- -1015
       0     4408        M 0x8000214c snez    a4, a4                 #; a4  = -1015, (wrb) a4  <-- 1
       0     4409        M 0x80002150 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     4410        M 0x80002154 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     4411        M 0x80002158 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4412        M 0x8000215c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800021bc
       0     4415        M 0x800021bc ret                            #; ra  = 0x800015cc, goto 0x800015cc
       0     4420        M 0x800015cc addi    s0, s0, 1              #; s0  = 0x800037f9, (wrb) s0  <-- 0x800037fa
       0     4423        M 0x800015d0 addi    s10, s10, 1            #; s10 = 0x800037fb, (wrb) s10 <-- 0x800037fc
       0     4424        M 0x800015d4 mv      s9, s1                 #; s1  = 5, (wrb) s9  <-- 5
       0     4425        M 0x800015d8 lbu     a0, 0(s0)              #; s0  = 0x800037fa, a0  <~~ Byte[0x800037fa]
       0     4436        M                                           #; (lsu) a0  <-- 32
       0     4437        M 0x800015dc bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x800015b4
       0     4438        M 0x800015b4 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     4439        M 0x800015b8 addi    s1, s9, 1              #; s9  = 5, (wrb) s1  <-- 6
       0     4440        M 0x800015bc mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4441        M 0x800015c0 mv      a2, s9                 #; s9  = 5, (wrb) a2  <-- 5
       0     4442        M 0x800015c4 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     4443        M 0x800015c8 jalr    s2                     #; s2  = 0x80002114, (wrb) ra  <-- 0x800015cc, goto 0x80002114
       0     4446        M 0x80002114 beqz    a0, pc + 168           #; a0  = 32, not taken
       0     4447        M 0x80002118 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4448        M 0x8000211c li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4449        M 0x80002120 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4450        M 0x80002124 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80004124
       0     4451        M 0x80002128 addi    a3, a3, -1488          #; a3  = 0x80004124, (wrb) a3  <-- 0x80003b54
       0     4452        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4453        M 0x8000212c add     a1, a2, a3             #; a2  = 0, a3  = 0x80003b54, (wrb) a1  <-- 0x80003b54
       0     4454        M 0x80002130 lw      a4, 0(a1)              #; a1  = 0x80003b54, a4  <~~ Word[0x80003b54]
       0     4465        M                                           #; (lsu) a4  <-- 5
       0     4466        M 0x80002134 addi    a5, a4, 1              #; a4  = 5, (wrb) a5  <-- 6
       0     4467        M 0x80002138 sw      a5, 0(a1)              #; a1  = 0x80003b54, 6 ~~> Word[0x80003b54]
       0     4468        M 0x8000213c add     a4, a1, a4             #; a1  = 0x80003b54, a4  = 5, (wrb) a4  <-- 0x80003b59
       0     4469        M 0x80002140 sb      a0, 72(a4)             #; a4  = 0x80003b59, 32 ~~> Byte[0x80003ba1]
       0     4470        M 0x80002144 lw      a4, 0(a1)              #; a1  = 0x80003b54, a4  <~~ Word[0x80003b54]
       0     4491        M                                           #; (lsu) a4  <-- 6
       0     4492        M 0x80002148 addi    a4, a4, -1020          #; a4  = 6, (wrb) a4  <-- -1014
       0     4493        M 0x8000214c snez    a4, a4                 #; a4  = -1014, (wrb) a4  <-- 1
       0     4494        M 0x80002150 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
       0     4495        M 0x80002154 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
       0     4496        M 0x80002158 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4497        M 0x8000215c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800021bc
       0     4500        M 0x800021bc ret                            #; ra  = 0x800015cc, goto 0x800015cc
       0     4505        M 0x800015cc addi    s0, s0, 1              #; s0  = 0x800037fa, (wrb) s0  <-- 0x800037fb
       0     4508        M 0x800015d0 addi    s10, s10, 1            #; s10 = 0x800037fc, (wrb) s10 <-- 0x800037fd
       0     4509        M 0x800015d4 mv      s9, s1                 #; s1  = 6, (wrb) s9  <-- 6
       0     4510        M 0x800015d8 lbu     a0, 0(s0)              #; s0  = 0x800037fb, a0  <~~ Byte[0x800037fb]
       0     4521        M                                           #; (lsu) a0  <-- 61
       0     4522        M 0x800015dc bnez    a0, pc - 40            #; a0  = 61, taken, goto 0x800015b4
       0     4523        M 0x800015b4 beq     a0, s6, pc + 48        #; a0  = 61, s6  = 37, not taken
       0     4524        M 0x800015b8 addi    s1, s9, 1              #; s9  = 6, (wrb) s1  <-- 7
       0     4525        M 0x800015bc mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4526        M 0x800015c0 mv      a2, s9                 #; s9  = 6, (wrb) a2  <-- 6
       0     4527        M 0x800015c4 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     4528        M 0x800015c8 jalr    s2                     #; s2  = 0x80002114, (wrb) ra  <-- 0x800015cc, goto 0x80002114
       0     4531        M 0x80002114 beqz    a0, pc + 168           #; a0  = 61, not taken
       0     4532        M 0x80002118 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4533        M 0x8000211c li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4534        M 0x80002120 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4535        M 0x80002124 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80004124
       0     4536        M 0x80002128 addi    a3, a3, -1488          #; a3  = 0x80004124, (wrb) a3  <-- 0x80003b54
       0     4537        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4538        M 0x8000212c add     a1, a2, a3             #; a2  = 0, a3  = 0x80003b54, (wrb) a1  <-- 0x80003b54
       0     4539        M 0x80002130 lw      a4, 0(a1)              #; a1  = 0x80003b54, a4  <~~ Word[0x80003b54]
       0     4550        M                                           #; (lsu) a4  <-- 6
       0     4551        M 0x80002134 addi    a5, a4, 1              #; a4  = 6, (wrb) a5  <-- 7
       0     4552        M 0x80002138 sw      a5, 0(a1)              #; a1  = 0x80003b54, 7 ~~> Word[0x80003b54]
       0     4553        M 0x8000213c add     a4, a1, a4             #; a1  = 0x80003b54, a4  = 6, (wrb) a4  <-- 0x80003b5a
       0     4554        M 0x80002140 sb      a0, 72(a4)             #; a4  = 0x80003b5a, 61 ~~> Byte[0x80003ba2]
       0     4555        M 0x80002144 lw      a4, 0(a1)              #; a1  = 0x80003b54, a4  <~~ Word[0x80003b54]
       0     4576        M                                           #; (lsu) a4  <-- 7
       0     4577        M 0x80002148 addi    a4, a4, -1020          #; a4  = 7, (wrb) a4  <-- -1013
       0     4578        M 0x8000214c snez    a4, a4                 #; a4  = -1013, (wrb) a4  <-- 1
       0     4579        M 0x80002150 addi    a0, a0, -10            #; a0  = 61, (wrb) a0  <-- 51
       0     4580        M 0x80002154 snez    a0, a0                 #; a0  = 51, (wrb) a0  <-- 1
       0     4581        M 0x80002158 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4582        M 0x8000215c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800021bc
       0     4585        M 0x800021bc ret                            #; ra  = 0x800015cc, goto 0x800015cc
       0     4590        M 0x800015cc addi    s0, s0, 1              #; s0  = 0x800037fb, (wrb) s0  <-- 0x800037fc
       0     4593        M 0x800015d0 addi    s10, s10, 1            #; s10 = 0x800037fd, (wrb) s10 <-- 0x800037fe
       0     4594        M 0x800015d4 mv      s9, s1                 #; s1  = 7, (wrb) s9  <-- 7
       0     4595        M 0x800015d8 lbu     a0, 0(s0)              #; s0  = 0x800037fc, a0  <~~ Byte[0x800037fc]
       0     4606        M                                           #; (lsu) a0  <-- 32
       0     4607        M 0x800015dc bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x800015b4
       0     4608        M 0x800015b4 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     4609        M 0x800015b8 addi    s1, s9, 1              #; s9  = 7, (wrb) s1  <-- 8
       0     4610        M 0x800015bc mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4611        M 0x800015c0 mv      a2, s9                 #; s9  = 7, (wrb) a2  <-- 7
       0     4612        M 0x800015c4 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     4613        M 0x800015c8 jalr    s2                     #; s2  = 0x80002114, (wrb) ra  <-- 0x800015cc, goto 0x80002114
       0     4616        M 0x80002114 beqz    a0, pc + 168           #; a0  = 32, not taken
       0     4617        M 0x80002118 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4618        M 0x8000211c li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4619        M 0x80002120 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4620        M 0x80002124 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80004124
       0     4621        M 0x80002128 addi    a3, a3, -1488          #; a3  = 0x80004124, (wrb) a3  <-- 0x80003b54
       0     4622        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4623        M 0x8000212c add     a1, a2, a3             #; a2  = 0, a3  = 0x80003b54, (wrb) a1  <-- 0x80003b54
       0     4624        M 0x80002130 lw      a4, 0(a1)              #; a1  = 0x80003b54, a4  <~~ Word[0x80003b54]
       0     4635        M                                           #; (lsu) a4  <-- 7
       0     4636        M 0x80002134 addi    a5, a4, 1              #; a4  = 7, (wrb) a5  <-- 8
       0     4637        M 0x80002138 sw      a5, 0(a1)              #; a1  = 0x80003b54, 8 ~~> Word[0x80003b54]
       0     4638        M 0x8000213c add     a4, a1, a4             #; a1  = 0x80003b54, a4  = 7, (wrb) a4  <-- 0x80003b5b
       0     4639        M 0x80002140 sb      a0, 72(a4)             #; a4  = 0x80003b5b, 32 ~~> Byte[0x80003ba3]
       0     4640        M 0x80002144 lw      a4, 0(a1)              #; a1  = 0x80003b54, a4  <~~ Word[0x80003b54]
       0     4661        M                                           #; (lsu) a4  <-- 8
       0     4662        M 0x80002148 addi    a4, a4, -1020          #; a4  = 8, (wrb) a4  <-- -1012
       0     4663        M 0x8000214c snez    a4, a4                 #; a4  = -1012, (wrb) a4  <-- 1
       0     4664        M 0x80002150 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
       0     4665        M 0x80002154 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
       0     4666        M 0x80002158 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4667        M 0x8000215c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800021bc
       0     4670        M 0x800021bc ret                            #; ra  = 0x800015cc, goto 0x800015cc
       0     4675        M 0x800015cc addi    s0, s0, 1              #; s0  = 0x800037fc, (wrb) s0  <-- 0x800037fd
       0     4678        M 0x800015d0 addi    s10, s10, 1            #; s10 = 0x800037fe, (wrb) s10 <-- 0x800037ff
       0     4679        M 0x800015d4 mv      s9, s1                 #; s1  = 8, (wrb) s9  <-- 8
       0     4680        M 0x800015d8 lbu     a0, 0(s0)              #; s0  = 0x800037fd, a0  <~~ Byte[0x800037fd]
       0     4691        M                                           #; (lsu) a0  <-- 37
       0     4692        M 0x800015dc bnez    a0, pc - 40            #; a0  = 37, taken, goto 0x800015b4
       0     4693        M 0x800015b4 beq     a0, s6, pc + 48        #; a0  = 37, s6  = 37, taken, goto 0x800015e4
       0     4705        M 0x800015e4 li      s0, 0                  #; (wrb) s0  <-- 0
       0     4706        M 0x800015e8 j       pc + 0x10              #; goto 0x800015f8
       0     4717        M 0x800015f8 lbu     a0, -1(s10)            #; s10 = 0x800037ff, a0  <~~ Byte[0x800037fe]
       0     4728        M                                           #; (lsu) a0  <-- 102
       0     4729        M 0x800015fc addi    a1, a0, -32            #; a0  = 102, (wrb) a1  <-- 70
       0     4730        M 0x80001600 bltu    s11, a1, pc + 56       #; s11 = 16, a1  = 70, taken, goto 0x80001638
       0     4753        M 0x80001638 addi    a1, a0, -48            #; a0  = 102, (wrb) a1  <-- 54
       0     4754        M 0x8000163c andi    a2, a1, 255            #; a1  = 54, (wrb) a2  <-- 54
       0     4765        M 0x80001640 addi    a1, s10, -1            #; s10 = 0x800037ff, (wrb) a1  <-- 0x800037fe
       0     4766        M 0x80001644 li      a3, 9                  #; (wrb) a3  <-- 9
       0     4767        M 0x80001648 bltu    a3, a2, pc + 124       #; a3  = 9, a2  = 54, taken, goto 0x800016c4
       0     4788        M 0x800016c4 li      a2, 42                 #; (wrb) a2  <-- 42
       0     4789        M 0x800016c8 bne     a0, a2, pc + 80        #; a0  = 102, a2  = 42, taken, goto 0x80001718
       0     4811        M 0x80001718 li      s6, 0                  #; (wrb) s6  <-- 0
       0     4812        M 0x8000171c mv      s10, a1                #; a1  = 0x800037fe, (wrb) s10 <-- 0x800037fe
       0     4823        M 0x80001720 beq     a0, s7, pc - 164       #; a0  = 102, s7  = 46, not taken
       0     4824        M 0x80001724 li      s7, 0                  #; (wrb) s7  <-- 0
       0     4825        M 0x80001728 j       pc + 0xc               #; goto 0x80001734
       0     4846        M 0x80001734 addi    a1, a0, -104           #; a0  = 102, (wrb) a1  <-- -2
       0     4847        M 0x80001738 srli    a2, a1, 1              #; a1  = -2, (wrb) a2  <-- 0x7fffffff
       0     4848        M 0x8000173c slli    a1, a1, 31             #; a1  = -2, (wrb) a1  <-- 0
       0     4858        M 0x80001740 or      a1, a1, a2             #; a1  = 0, a2  = 0x7fffffff, (wrb) a1  <-- 0x7fffffff
       0     4859        M 0x80001744 li      a2, 9                  #; (wrb) a2  <-- 9
       0     4860        M 0x80001748 bltu    a2, a1, pc + 100       #; a2  = 9, a1  = 0x7fffffff, taken, goto 0x800017ac
       0     4881        M 0x800017ac addi    a1, a0, -37            #; a0  = 102, (wrb) a1  <-- 65
       0     4893        M 0x800017b0 li      a2, 83                 #; (wrb) a2  <-- 83
       0     4894        M 0x800017b4 bltu    a2, a1, pc + 264       #; a2  = 83, a1  = 65, not taken
       0     4895        M 0x800017b8 slli    a1, a1, 2              #; a1  = 65, (wrb) a1  <-- 260
       0     4896        M 0x800017bc auipc   a2, 0x2                #; (wrb) a2  <-- 0x800037bc
       0     4905        M 0x800017c0 addi    a2, a2, 184            #; a2  = 0x800037bc, (wrb) a2  <-- 0x80003874
       0     4906        M 0x800017c4 add     a1, a1, a2             #; a1  = 260, a2  = 0x80003874, (wrb) a1  <-- 0x80003978
       0     4907        M 0x800017c8 lw      a2, 0(a1)              #; a1  = 0x80003978, a2  <~~ Word[0x80003978]
       0     4908        M 0x800017cc li      a1, 8                  #; (wrb) a1  <-- 8
       0     4917        M 0x800017d0 li      s8, 16                 #; (wrb) s8  <-- 16
       0     4918        M                                           #; (lsu) a2  <-- 0x80001804
       0     4919        M 0x800017d4 jr      a2                     #; a2  = 0x80001804, goto 0x80001804
       0     4940        M 0x80001804 li      a1, 70                 #; (wrb) a1  <-- 70
       0     4941        M 0x80001808 bne     a0, a1, pc + 8         #; a0  = 102, a1  = 70, taken, goto 0x80001810
       0     4952        M 0x80001810 addi    a0, s3, 7              #; s3  = 0x0011ff24, (wrb) a0  <-- 0x0011ff2b
       0     4953        M 0x80001814 andi    a0, a0, -8             #; a0  = 0x0011ff2b, (wrb) a0  <-- 0x0011ff28
       0     4955        M 0x8000181c addi    s3, a0, 8              #; a0  = 0x0011ff28, (wrb) s3  <-- 0x0011ff30
       0     4956        M 0x80001818 fld     fa0, 0(a0)             #; fa0  <~~ Doub[0x0011ff28]
       0     4957        M                                           #; (f:lsu) fa0  <-- 0.0
       0     4964        M 0x80001820 mv      a0, s2                 #; s2  = 0x80002114, (wrb) a0  <-- 0x80002114
       0     4965        M 0x80001824 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4966        M 0x80001828 mv      a2, s9                 #; s9  = 8, (wrb) a2  <-- 8
       0     4967        M 0x8000182c mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     4976        M 0x80001830 mv      a4, s7                 #; s7  = 0, (wrb) a4  <-- 0
       0     4977        M 0x80001834 mv      a5, s6                 #; s6  = 0, (wrb) a5  <-- 0
       0     4978        M 0x80001838 mv      a6, s0                 #; s0  = 0, (wrb) a6  <-- 0
       0     4979        M 0x8000183c auipc   ra, 0x1                #; (wrb) ra  <-- 0x8000283c
       0     4988        M 0x80001840 jalr    ra, ra, -1656          #; ra  = 0x8000283c, (wrb) ra  <-- 0x80001844, goto 0x800021c4
       0     5002        M 0x800021c4 addi    sp, sp, -112           #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011fe30
       0     5003        M 0x800021c8 sw      ra, 108(sp)            #; sp  = 0x0011fe30, 0x80001844 ~~> Word[0x0011fe9c]
       0     5004        M 0x800021cc sw      s0, 104(sp)            #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe98]
       0     5014        M 0x800021d0 sw      s1, 100(sp)            #; sp  = 0x0011fe30, 8 ~~> Word[0x0011fe94]
       0     5015        M 0x800021d4 sw      s2, 96(sp)             #; sp  = 0x0011fe30, 0x80002114 ~~> Word[0x0011fe90]
       0     5016        M 0x800021d8 sw      s3, 92(sp)             #; sp  = 0x0011fe30, 0x0011ff30 ~~> Word[0x0011fe8c]
       0     5017        M 0x800021dc sw      s4, 88(sp)             #; sp  = 0x0011fe30, 0x0011ff17 ~~> Word[0x0011fe88]
       0     5026        M 0x800021e0 sw      s5, 84(sp)             #; sp  = 0x0011fe30, -1 ~~> Word[0x0011fe84]
       0     5027        M 0x800021e4 sw      s6, 80(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe80]
       0     5028        M 0x800021e8 sw      s7, 76(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe7c]
       0     5029        M 0x800021ec sw      s8, 72(sp)             #; sp  = 0x0011fe30, 16 ~~> Word[0x0011fe78]
       0     5038        M 0x800021f0 sw      s9, 68(sp)             #; sp  = 0x0011fe30, 8 ~~> Word[0x0011fe74]
       0     5039        M 0x800021f4 sw      s10, 64(sp)            #; sp  = 0x0011fe30, 0x800037fe ~~> Word[0x0011fe70]
       0     5042        M 0x800021f8 fsd     fs0, 56(sp)            #; 0.0 ~~> Doub[0x0011fe68]
       0     5043        M 0x800021fc fsd     fs1, 48(sp)            #; 0.0 ~~> Doub[0x0011fe60]
       0     5051        M 0x80002204 auipc   s1, 0x2                #; (wrb) s1  <-- 0x80004204
       0     5052        M 0x80002208 addi    s1, s1, -1884          #; s1  = 0x80004204, (wrb) s1  <-- 0x80003aa8
                         M 0x80002200 fsd     fs2, 40(sp)            #; 0.0 ~~> Doub[0x0011fe58]
       0     5055        M 0x8000220c fld     ft0, 0(s1)             #; ft0  <~~ Doub[0x80003aa8]
       0     5063        M 0x80002214 mv      s5, a6                 #; a6  = 0, (wrb) s5  <-- 0
       0     5064        M 0x80002218 mv      s2, a5                 #; a5  = 0, (wrb) s2  <-- 0
                         M                                           #; (f:lsu) ft0  <-- -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     5065        M 0x8000221c mv      s3, a3                 #; a3  = -1, (wrb) s3  <-- -1
                         M 0x80002210 fle.d   s1, ft0, fa0           #; ft0  = -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000, fa0  = 0.0
       0     5074        M 0x80002220 mv      s4, a2                 #; a2  = 8, (wrb) s4  <-- 8
       0     5075        M 0x80002224 mv      s6, a1                 #; a1  = 0x0011ff17, (wrb) s6  <-- 0x0011ff17
       0     5076        M 0x80002228 mv      s7, a0                 #; a0  = 0x80002114, (wrb) s7  <-- 0x80002114
       0     5077        M 0x8000222c bnez    s1, pc + 240           #; s1  = 1, taken, goto 0x8000231c
       0     5099        M 0x8000231c fsgnj.d fs0, fa0, fa0          #; fa0  = 0.0, fa0  = 0.0
       0     5100        M                                           #; (f:fpu) fs0  <-- 0.0
       0     5109        M 0x80002320 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80003320
       0     5110        M 0x80002324 addi    a0, a0, 1936           #; a0  = 0x80003320, (wrb) a0  <-- 0x80003ab0
       0     5113        M 0x80002328 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003ab0]
       0     5122        M                                           #; (f:lsu) ft0  <-- 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     5123        M 0x8000232c fle.d   a0, fa0, ft0           #; fa0  = 0.0, ft0  = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     5125        M                                           #; (acc) t3  <-- 0x00051e63
       0     5126        M 0x80002330 bnez    a0, pc + 28            #; a0  = 1, taken, goto 0x8000234c
       0     5133        M 0x8000234c auipc   a0, 0x1                #; (wrb) a0  <-- 0x8000334c
       0     5145        M 0x80002350 addi    a0, a0, 1900           #; a0  = 0x8000334c, (wrb) a0  <-- 0x80003ab8
       0     5147        M 0x80002358 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80003358
       0     5148        M 0x8000235c addi    a0, a0, 1896           #; a0  = 0x80003358, (wrb) a0  <-- 0x80003ac0
                         M 0x80002354 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003ab8]
       0     5157        M                                           #; (f:lsu) ft0  <-- 1000000000.0000000
       0     5159        M 0x80002360 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80003ac0]
       0     5160        M 0x80002364 fle.d   a0, fs0, ft0           #; fs0  = 0.0, ft0  = 1000000000.0000000
       0     5162        M                                           #; (acc) a0  <-- 0x00b57533
       0     5168        M                                           #; (f:lsu) ft1  <-- -1000000000.0000000
       0     5169        M 0x80002368 fle.d   a1, ft1, fs0           #; ft1  = -1000000000.0000000, fs0  = 0.0
       0     5171        M                                           #; (acc) a0  <-- 0x00b57533
       0     5172        M 0x8000236c and     a0, a0, a1             #; a0  = 1, a1  = 1, (wrb) a0  <-- 1
       0     5173        M 0x80002370 bnez    a0, pc + 252           #; a0  = 1, taken, goto 0x8000246c
       0     5196        M 0x8000246c andi    a0, s5, 1024           #; s5  = 0, (wrb) a0  <-- 0
       0     5208        M 0x80002470 li      s8, 6                  #; (wrb) s8  <-- 6
       0     5209        M 0x80002474 beqz    a0, pc + 8             #; a0  = 0, taken, goto 0x8000247c
       0     5210        M 0x8000247c li      a0, 10                 #; (wrb) a0  <-- 10
       0     5221        M 0x80002484 bltu    s8, a0, pc + 56        #; s8  = 6, a0  = 10, taken, goto 0x800024bc
       0     5222        M 0x80002480 fsgnjx.d fs2, fs0, fs0         #; fs0  = 0.0, fs0  = 0.0
       0     5223        M                                           #; (f:fpu) fs2  <-- 0.0
       0     5243        M 0x800024bc li      s0, 0                  #; (wrb) s0  <-- 0
       0     5255        M 0x800024c0 slli    a0, s8, 3              #; s8  = 6, (wrb) a0  <-- 48
       0     5256        M 0x800024c4 auipc   a1, 0x1                #; (wrb) a1  <-- 0x800034c4
       0     5257        M 0x800024c8 addi    a1, a1, 1284           #; a1  = 0x800034c4, (wrb) a1  <-- 0x800039c8
       0     5258        M 0x800024cc add     a0, a0, a1             #; a0  = 48, a1  = 0x800039c8, (wrb) a0  <-- 0x800039f8
       0     5269        M 0x800024d0 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x800039f8]
       0     5270        M 0x800024d4 fcvt.w.d s1, fs2               #; fs2  = 0.0
       0     5274        M 0x800024d8 fcvt.d.w ft0, s1               #; ac1  = 0
       0     5275        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5276        M 0x800024dc fsub.d  ft0, fs2, ft0          #; fs2  = 0.0, ft0  = 0.0
       0     5278        M                                           #; (f:lsu) ft1  <-- 1000000.0000000
       0     5279        M                                           #; (f:fpu) ft0  <-- 0.0
       0     5280        M 0x800024e4 auipc   a0, 0x1                #; (wrb) a0  <-- 0x800034e4
       0     5281        M 0x800024e8 addi    a0, a0, 1508           #; a0  = 0x800034e4, (wrb) a0  <-- 0x80003ac8
                         M 0x800024e0 fmul.d  ft2, ft1, ft0          #; ft1  = 1000000.0000000, ft0  = 0.0
       0     5284        M 0x800024ec fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003ac8], (f:fpu) ft2  <-- 0.0
       0     5292        M 0x800024f0 fcvt.wu.d a0, ft2              #; ft2  = 0.0
       0     5293        M                                           #; (f:lsu) ft0  <-- 0.5
       0     5294        M                                           #; (acc) gp  <-- 0xd21501d3
       0     5296        M 0x800024f4 fcvt.d.wu ft3, a0              #; ac1  = 0
       0     5297        M                                           #; (f:fpu) ft3  <-- 0.0
       0     5298        M 0x800024f8 fsub.d  ft2, ft2, ft3          #; ft2  = 0.0, ft3  = 0.0
       0     5301        M                                           #; (f:fpu) ft2  <-- 0.0
       0     5302        M 0x800024fc fle.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
       0     5305        M 0x80002500 bnez    a1, pc + 32            #; a1  = 1, taken, goto 0x80002520
       0     5327        M 0x80002520 flt.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
       0     5329        M                                           #; (acc) s4  <-- 0x00059a63
       0     5330        M 0x80002524 bnez    a1, pc + 20            #; a1  = 1, taken, goto 0x80002538
       0     5339        M 0x8000253c beqz    s8, pc + 216           #; s8  = 6, not taken
                         M 0x80002538 fcvt.d.w fs1, zero             #; ac1  = 0
       0     5340        M                                           #; (f:fpu) fs1  <-- 0.0
       0     5350        M 0x80002540 li      a2, 0                  #; (wrb) a2  <-- 0
       0     5351        M 0x80002544 addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
       0     5352        M 0x80002548 add     t1, a1, s0             #; a1  = 0x0011fe38, s0  = 0, (wrb) t1  <-- 0x0011fe38
       0     5353        M 0x8000254c li      t0, 32                 #; (wrb) t0  <-- 32
       0     5362        M 0x80002550 sub     a4, t0, s0             #; t0  = 32, s0  = 0, (wrb) a4  <-- 32
       0     5363        M 0x80002554 lui     a1, 0xccccd            #; (wrb) a1  <-- 0xccccd000
       0     5364        M 0x80002558 addi    t2, a1, -819           #; a1  = 0xccccd000, (wrb) t2  <-- 0xcccccccd
       0     5365        M 0x8000255c li      a6, 10                 #; (wrb) a6  <-- 10
       0     5374        M 0x80002560 li      a7, 9                  #; (wrb) a7  <-- 9
       0     5375        M 0x80002564 beq     a4, a2, pc + 200       #; a4  = 32, a2  = 0, not taken
       0     5376        M 0x80002568 mv      a1, a0                 #; a0  = 0, (wrb) a1  <-- 0
       0     5377        M 0x8000256c mulhu   a0, a0, t2             #; a0  = 0, t2  = 0xcccccccd
       0     5386        M 0x80002570 srli    a0, a0, 3              #; a0  = 0, (wrb) a0  <-- 0
       0     5387        M 0x80002574 mul     a3, a0, a6             #; a0  = 0, a6  = 10
       0     5390        M                                           #; (acc) a3  <-- 0x40d586b3
       0     5391        M 0x80002578 sub     a3, a1, a3             #; a1  = 0, a3  = 0, (wrb) a3  <-- 0
       0     5392        M 0x8000257c ori     a3, a3, 48             #; a3  = 0, (wrb) a3  <-- 48
       0     5398        M 0x80002580 add     a5, t1, a2             #; t1  = 0x0011fe38, a2  = 0, (wrb) a5  <-- 0x0011fe38
       0     5399        M 0x80002584 sb      a3, 0(a5)              #; a5  = 0x0011fe38, 48 ~~> Byte[0x0011fe38]
       0     5400        M 0x80002588 addi    a2, a2, 1              #; a2  = 0, (wrb) a2  <-- 1
       0     5401        M 0x8000258c bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 0, not taken
       0     5413        M 0x80002590 add     a0, s0, a2             #; s0  = 0, a2  = 1, (wrb) a0  <-- 1
       0     5414        M 0x80002594 addi    a1, a0, -1             #; a0  = 1, (wrb) a1  <-- 0
       0     5415        M 0x80002598 li      a3, 30                 #; (wrb) a3  <-- 30
       0     5416        M 0x8000259c sltu    a3, a3, a1             #; a3  = 30, a1  = 0, (wrb) a3  <-- 0
       0     5425        M 0x800025a0 xor     a4, s8, a2             #; s8  = 6, a2  = 1, (wrb) a4  <-- 7
       0     5426        M 0x800025a4 seqz    a4, a4                 #; a4  = 7, (wrb) a4  <-- 0
       0     5427        M 0x800025a8 or      a3, a3, a4             #; a3  = 0, a4  = 0, (wrb) a3  <-- 0
       0     5428        M 0x800025ac bnez    a3, pc + 136           #; a3  = 0, not taken
       0     5437        M 0x800025b0 addi    a0, sp, 8              #; sp  = 0x0011fe30, (wrb) a0  <-- 0x0011fe38
       0     5438        M 0x800025b4 add     a0, a0, s0             #; a0  = 0x0011fe38, s0  = 0, (wrb) a0  <-- 0x0011fe38
       0     5439        M 0x800025b8 not     a1, a2                 #; a2  = 1, (wrb) a1  <-- -2
       0     5440        M 0x800025bc add     s8, a1, s8             #; a1  = -2, s8  = 6, (wrb) s8  <-- 4
       0     5449        M 0x800025c0 add     s0, s0, a2             #; s0  = 0, a2  = 1, (wrb) s0  <-- 1
       0     5450        M 0x800025c4 li      a1, 31                 #; (wrb) a1  <-- 31
       0     5451        M 0x800025c8 sub     a3, a1, s0             #; a1  = 31, s0  = 1, (wrb) a3  <-- 30
       0     5452        M 0x800025cc add     a0, a0, a2             #; a0  = 0x0011fe38, a2  = 1, (wrb) a0  <-- 0x0011fe39
       0     5461        M 0x800025d0 mv      a1, s8                 #; s8  = 4, (wrb) a1  <-- 4
       0     5462        M 0x800025d4 bltu    s8, a3, pc + 8         #; s8  = 4, a3  = 30, taken, goto 0x800025dc
       0     5463        M 0x800025dc addi    a2, a1, 1              #; a1  = 4, (wrb) a2  <-- 5
       0     5473        M 0x800025e0 li      a1, 48                 #; (wrb) a1  <-- 48
       0     5474        M 0x800025e4 auipc   ra, 0xffffe            #; (wrb) ra  <-- 0x800005e4
       0     5475        M 0x800025e8 jalr    ra, ra, -140           #; ra  = 0x800005e4, (wrb) ra  <-- 0x800025ec, goto 0x80000558
       0     5496        M 0x80000558 li      t1, 15                 #; (wrb) t1  <-- 15
       0     5497        M 0x8000055c mv      a4, a0                 #; a0  = 0x0011fe39, (wrb) a4  <-- 0x0011fe39
       0     5508        M 0x80000560 bgeu    t1, a2, pc + 60        #; t1  = 15, a2  = 5, taken, goto 0x8000059c
       0     5531        M 0x8000059c sub     a3, t1, a2             #; t1  = 15, a2  = 5, (wrb) a3  <-- 10
       0     5543        M 0x800005a0 slli    a3, a3, 2              #; a3  = 10, (wrb) a3  <-- 40
       0     5544        M 0x800005a4 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800005a4
       0     5545        M 0x800005a8 add     a3, a3, t0             #; a3  = 40, t0  = 0x800005a4, (wrb) a3  <-- 0x800005cc
       0     5546        M 0x800005ac jalr    zero, a3, 12           #; a3  = 0x800005cc, goto 0x800005d8
       0     5566        M 0x800005d8 sb      a1, 4(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3d]
       0     5567        M 0x800005dc sb      a1, 3(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3c]
       0     5578        M 0x800005e0 sb      a1, 2(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3b]
       0     5579        M 0x800005e4 sb      a1, 1(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3a]
       0     5580        M 0x800005e8 sb      a1, 0(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe39]
       0     5581        M 0x800005ec ret                            #; ra  = 0x800025ec, goto 0x800025ec
       0     5593        M 0x800025ec li      a0, 0                  #; (wrb) a0  <-- 0
       0     5597        M 0x800025f0 add     a1, s0, a0             #; s0  = 1, a0  = 0, (wrb) a1  <-- 1
       0     5598        M 0x800025f4 sltiu   a1, a1, 31             #; a1  = 1, (wrb) a1  <-- 1
       0     5599        M 0x800025f8 xor     a2, s8, a0             #; s8  = 4, a0  = 0, (wrb) a2  <-- 4
       0     5600        M 0x800025fc snez    a2, a2                 #; a2  = 4, (wrb) a2  <-- 1
       0     5609        M 0x80002600 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     5610        M 0x80002604 addi    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0     5611        M 0x80002608 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x800025f0
       0     5612        M 0x800025f0 add     a1, s0, a0             #; s0  = 1, a0  = 1, (wrb) a1  <-- 2
       0     5613        M 0x800025f4 sltiu   a1, a1, 31             #; a1  = 2, (wrb) a1  <-- 1
       0     5614        M 0x800025f8 xor     a2, s8, a0             #; s8  = 4, a0  = 1, (wrb) a2  <-- 5
       0     5615        M 0x800025fc snez    a2, a2                 #; a2  = 5, (wrb) a2  <-- 1
       0     5616        M 0x80002600 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     5617        M 0x80002604 addi    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 2
       0     5618        M 0x80002608 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x800025f0
       0     5619        M 0x800025f0 add     a1, s0, a0             #; s0  = 1, a0  = 2, (wrb) a1  <-- 3
       0     5620        M 0x800025f4 sltiu   a1, a1, 31             #; a1  = 3, (wrb) a1  <-- 1
       0     5621        M 0x800025f8 xor     a2, s8, a0             #; s8  = 4, a0  = 2, (wrb) a2  <-- 6
       0     5622        M 0x800025fc snez    a2, a2                 #; a2  = 6, (wrb) a2  <-- 1
       0     5623        M 0x80002600 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     5624        M 0x80002604 addi    a0, a0, 1              #; a0  = 2, (wrb) a0  <-- 3
       0     5625        M 0x80002608 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x800025f0
       0     5626        M 0x800025f0 add     a1, s0, a0             #; s0  = 1, a0  = 3, (wrb) a1  <-- 4
       0     5627        M 0x800025f4 sltiu   a1, a1, 31             #; a1  = 4, (wrb) a1  <-- 1
       0     5628        M 0x800025f8 xor     a2, s8, a0             #; s8  = 4, a0  = 3, (wrb) a2  <-- 7
       0     5629        M 0x800025fc snez    a2, a2                 #; a2  = 7, (wrb) a2  <-- 1
       0     5630        M 0x80002600 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     5631        M 0x80002604 addi    a0, a0, 1              #; a0  = 3, (wrb) a0  <-- 4
       0     5632        M 0x80002608 bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x800025f0
       0     5633        M 0x800025f0 add     a1, s0, a0             #; s0  = 1, a0  = 4, (wrb) a1  <-- 5
       0     5634        M 0x800025f4 sltiu   a1, a1, 31             #; a1  = 5, (wrb) a1  <-- 1
       0     5635        M 0x800025f8 xor     a2, s8, a0             #; s8  = 4, a0  = 4, (wrb) a2  <-- 0
       0     5636        M 0x800025fc snez    a2, a2                 #; a2  = 0, (wrb) a2  <-- 0
       0     5637        M 0x80002600 and     a2, a1, a2             #; a1  = 1, a2  = 0, (wrb) a2  <-- 0
       0     5638        M 0x80002604 addi    a0, a0, 1              #; a0  = 4, (wrb) a0  <-- 5
       0     5639        M 0x80002608 bnez    a2, pc - 24            #; a2  = 0, not taken
       0     5640        M 0x8000260c add     a0, s0, a0             #; s0  = 1, a0  = 5, (wrb) a0  <-- 6
       0     5652        M 0x80002610 j       pc + 0x28              #; goto 0x80002638
       0     5664        M 0x80002638 beqz    a1, pc + 28            #; a1  = 1, not taken
       0     5665        M 0x8000263c addi    s0, a0, 1              #; a0  = 6, (wrb) s0  <-- 7
       0     5676        M 0x80002640 addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
       0     5677        M 0x80002644 add     a0, a1, a0             #; a1  = 0x0011fe38, a0  = 6, (wrb) a0  <-- 0x0011fe3e
       0     5678        M 0x80002648 li      a1, 46                 #; (wrb) a1  <-- 46
       0     5679        M 0x8000264c sb      a1, 0(a0)              #; a0  = 0x0011fe3e, 46 ~~> Byte[0x0011fe3e]
       0     5688        M 0x80002650 j       pc + 0x8               #; goto 0x80002658
       0     5689        M 0x80002658 li      a0, 32                 #; (wrb) a0  <-- 32
       0     5690        M 0x8000265c mv      t0, s0                 #; s0  = 7, (wrb) t0  <-- 7
       0     5701        M 0x80002660 bltu    a0, s0, pc + 8         #; a0  = 32, s0  = 7, not taken
       0     5702        M 0x80002664 li      t0, 32                 #; (wrb) t0  <-- 32
       0     5704        M 0x8000266c lui     a0, 0x66666            #; (wrb) a0  <-- 0x66666000
                         M 0x80002668 flt.d   s9, fs0, fs1           #; fs0  = 0.0, fs1  = 0.0
       0     5713        M 0x80002670 addi    a1, a0, 1639           #; a0  = 0x66666000, (wrb) a1  <-- 0x66666667
       0     5714        M 0x80002674 li      a6, 10                 #; (wrb) a6  <-- 10
       0     5715        M 0x80002678 addi    a3, sp, 8              #; sp  = 0x0011fe30, (wrb) a3  <-- 0x0011fe38
       0     5716        M 0x8000267c li      a4, 18                 #; (wrb) a4  <-- 18
       0     5725        M 0x80002680 beq     t0, s0, pc + 64        #; t0  = 32, s0  = 7, not taken
       0     5726        M 0x80002684 mulh    a0, s1, a1             #; s1  = 0, a1  = 0x66666667
       0     5729        M                                           #; (acc) a5  <-- 0x01f55793
       0     5730        M 0x80002688 srli    a5, a0, 31             #; a0  = 0, (wrb) a5  <-- 0
       0     5731        M 0x8000268c srai    a0, a0, 2              #; a0  = 0, (wrb) a0  <-- 0
       0     5737        M 0x80002690 add     a0, a0, a5             #; a0  = 0, a5  = 0, (wrb) a0  <-- 0
       0     5738        M 0x80002694 mul     a5, a0, a6             #; a0  = 0, a6  = 10
       0     5741        M                                           #; (acc) a5  <-- 0x40f487b3
       0     5742        M 0x80002698 sub     a5, s1, a5             #; s1  = 0, a5  = 0, (wrb) a5  <-- 0
       0     5743        M 0x8000269c addi    a5, a5, 48             #; a5  = 0, (wrb) a5  <-- 48
       0     5749        M 0x800026a0 addi    s8, s0, 1              #; s0  = 7, (wrb) s8  <-- 8
       0     5750        M 0x800026a4 add     s0, a3, s0             #; a3  = 0x0011fe38, s0  = 7, (wrb) s0  <-- 0x0011fe3f
       0     5751        M 0x800026a8 addi    a2, s1, 9              #; s1  = 0, (wrb) a2  <-- 9
       0     5752        M 0x800026ac sb      a5, 0(s0)              #; s0  = 0x0011fe3f, 48 ~~> Byte[0x0011fe3f]
       0     5761        M 0x800026b0 mv      s0, s8                 #; s8  = 8, (wrb) s0  <-- 8
       0     5762        M 0x800026b4 mv      s1, a0                 #; a0  = 0, (wrb) s1  <-- 0
       0     5763        M 0x800026b8 bltu    a4, a2, pc - 56        #; a4  = 18, a2  = 9, not taken
       0     5764        M 0x800026bc j       pc + 0x8               #; goto 0x800026c4
       0     5776        M 0x800026c4 andi    s1, s5, 3              #; s5  = 0, (wrb) s1  <-- 0
       0     5777        M 0x800026c8 li      a0, 1                  #; (wrb) a0  <-- 1
       0     5778        M 0x800026cc bne     s1, a0, pc + 108       #; s1  = 0, a0  = 1, taken, goto 0x80002738
       0     5799        M 0x80002738 li      a0, 31                 #; (wrb) a0  <-- 31
       0     5800        M 0x8000273c bltu    a0, s8, pc + 84        #; a0  = 31, s8  = 8, not taken
       0     5811        M 0x80002740 beqz    s9, pc + 24            #; s9  = 0, taken, goto 0x80002758
       0     5823        M 0x80002758 andi    a0, s5, 4              #; s5  = 0, (wrb) a0  <-- 0
       0     5824        M 0x8000275c bnez    a0, pc + 32            #; a0  = 0, not taken
       0     5835        M 0x80002760 andi    a0, s5, 8              #; s5  = 0, (wrb) a0  <-- 0
       0     5836        M 0x80002764 beqz    a0, pc + 44            #; a0  = 0, taken, goto 0x80002790
       0     5858        M 0x80002790 snez    a0, s1                 #; s1  = 0, (wrb) a0  <-- 0
       0     5859        M 0x80002794 sltu    a1, s8, s2             #; s8  = 8, s2  = 0, (wrb) a1  <-- 0
       0     5860        M 0x80002798 xori    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
       0     5861        M 0x8000279c or      a0, a0, a1             #; a0  = 0, a1  = 1, (wrb) a0  <-- 1
       0     5870        M 0x800027a0 andi    s5, s5, 2              #; s5  = 0, (wrb) s5  <-- 0
       0     5871        M 0x800027a4 mv      s0, s4                 #; s4  = 8, (wrb) s0  <-- 8
       0     5872        M 0x800027a8 bnez    a0, pc + 44            #; a0  = 1, taken, goto 0x800027d4
       0     5893        M 0x800027d4 srli    s5, s5, 1              #; s5  = 0, (wrb) s5  <-- 0
       0     5894        M 0x800027d8 beqz    s8, pc + 56            #; s8  = 8, not taken
       0     5895        M 0x800027dc addi    s9, sp, 7              #; sp  = 0x0011fe30, (wrb) s9  <-- 0x0011fe37
       0     5905        M 0x800027e0 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 8, (wrb) a0  <-- 0x0011fe3f
       0     5906        M 0x800027e4 lbu     a0, 0(a0)              #; a0  = 0x0011fe3f, a0  <~~ Byte[0x0011fe3f]
       0     5907        M 0x800027e8 addi    s10, s8, -1            #; s8  = 8, (wrb) s10 <-- 7
       0     5908        M 0x800027ec addi    s1, s0, 1              #; s0  = 8, (wrb) s1  <-- 9
       0     5909        M                                           #; (lsu) a0  <-- 48
       0     5917        M 0x800027f0 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5918        M 0x800027f4 mv      a2, s0                 #; s0  = 8, (wrb) a2  <-- 8
       0     5919        M 0x800027f8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     5920        M 0x800027fc jalr    s7                     #; s7  = 0x80002114, (wrb) ra  <-- 0x80002800, goto 0x80002114
       0     5931        M 0x80002114 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     5932        M 0x80002118 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5933        M 0x8000211c li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5934        M 0x80002120 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5935        M 0x80002124 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80004124
       0     5936        M 0x80002128 addi    a3, a3, -1488          #; a3  = 0x80004124, (wrb) a3  <-- 0x80003b54
       0     5937        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5938        M 0x8000212c add     a1, a2, a3             #; a2  = 0, a3  = 0x80003b54, (wrb) a1  <-- 0x80003b54
       0     5939        M 0x80002130 lw      a4, 0(a1)              #; a1  = 0x80003b54, a4  <~~ Word[0x80003b54]
       0     5950        M                                           #; (lsu) a4  <-- 8
       0     5951        M 0x80002134 addi    a5, a4, 1              #; a4  = 8, (wrb) a5  <-- 9
       0     5952        M 0x80002138 sw      a5, 0(a1)              #; a1  = 0x80003b54, 9 ~~> Word[0x80003b54]
       0     5953        M 0x8000213c add     a4, a1, a4             #; a1  = 0x80003b54, a4  = 8, (wrb) a4  <-- 0x80003b5c
       0     5954        M 0x80002140 sb      a0, 72(a4)             #; a4  = 0x80003b5c, 48 ~~> Byte[0x80003ba4]
       0     5955        M 0x80002144 lw      a4, 0(a1)              #; a1  = 0x80003b54, a4  <~~ Word[0x80003b54]
       0     5976        M                                           #; (lsu) a4  <-- 9
       0     5977        M 0x80002148 addi    a4, a4, -1020          #; a4  = 9, (wrb) a4  <-- -1011
       0     5978        M 0x8000214c snez    a4, a4                 #; a4  = -1011, (wrb) a4  <-- 1
       0     5979        M 0x80002150 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     5980        M 0x80002154 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     5981        M 0x80002158 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5982        M 0x8000215c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800021bc
       0     5985        M 0x800021bc ret                            #; ra  = 0x80002800, goto 0x80002800
       0     5990        M 0x80002800 mv      s0, s1                 #; s1  = 9, (wrb) s0  <-- 9
       0     5991        M 0x80002804 mv      s8, s10                #; s10 = 7, (wrb) s8  <-- 7
       0     5992        M 0x80002808 bnez    s10, pc - 40           #; s10 = 7, taken, goto 0x800027e0
       0     5993        M 0x800027e0 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 7, (wrb) a0  <-- 0x0011fe3e
       0     5994        M 0x800027e4 lbu     a0, 0(a0)              #; a0  = 0x0011fe3e, a0  <~~ Byte[0x0011fe3e]
       0     5995        M 0x800027e8 addi    s10, s8, -1            #; s8  = 7, (wrb) s10 <-- 6
       0     5996        M 0x800027ec addi    s1, s0, 1              #; s0  = 9, (wrb) s1  <-- 10
       0     5997        M 0x800027f0 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5998        M 0x800027f4 mv      a2, s0                 #; s0  = 9, (wrb) a2  <-- 9
       0     5999        M 0x800027f8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     6000        M 0x800027fc jalr    s7                     #; s7  = 0x80002114, (wrb) ra  <-- 0x80002800, goto 0x80002114
       0     6001        M                                           #; (lsu) a0  <-- 46
       0     6003        M 0x80002114 beqz    a0, pc + 168           #; a0  = 46, not taken
       0     6004        M 0x80002118 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6005        M 0x8000211c li      a2, 1096               #; (wrb) a2  <-- 1096
       0     6006        M 0x80002120 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     6007        M 0x80002124 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80004124
       0     6008        M 0x80002128 addi    a3, a3, -1488          #; a3  = 0x80004124, (wrb) a3  <-- 0x80003b54
       0     6009        M                                           #; (acc) a1  <-- 0x00d605b3
       0     6010        M 0x8000212c add     a1, a2, a3             #; a2  = 0, a3  = 0x80003b54, (wrb) a1  <-- 0x80003b54
       0     6011        M 0x80002130 lw      a4, 0(a1)              #; a1  = 0x80003b54, a4  <~~ Word[0x80003b54]
       0     6022        M                                           #; (lsu) a4  <-- 9
       0     6023        M 0x80002134 addi    a5, a4, 1              #; a4  = 9, (wrb) a5  <-- 10
       0     6024        M 0x80002138 sw      a5, 0(a1)              #; a1  = 0x80003b54, 10 ~~> Word[0x80003b54]
       0     6025        M 0x8000213c add     a4, a1, a4             #; a1  = 0x80003b54, a4  = 9, (wrb) a4  <-- 0x80003b5d
       0     6026        M 0x80002140 sb      a0, 72(a4)             #; a4  = 0x80003b5d, 46 ~~> Byte[0x80003ba5]
       0     6027        M 0x80002144 lw      a4, 0(a1)              #; a1  = 0x80003b54, a4  <~~ Word[0x80003b54]
       0     6048        M                                           #; (lsu) a4  <-- 10
       0     6049        M 0x80002148 addi    a4, a4, -1020          #; a4  = 10, (wrb) a4  <-- -1010
       0     6050        M 0x8000214c snez    a4, a4                 #; a4  = -1010, (wrb) a4  <-- 1
       0     6051        M 0x80002150 addi    a0, a0, -10            #; a0  = 46, (wrb) a0  <-- 36
       0     6052        M 0x80002154 snez    a0, a0                 #; a0  = 36, (wrb) a0  <-- 1
       0     6053        M 0x80002158 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     6054        M 0x8000215c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800021bc
       0     6057        M 0x800021bc ret                            #; ra  = 0x80002800, goto 0x80002800
       0     6062        M 0x80002800 mv      s0, s1                 #; s1  = 10, (wrb) s0  <-- 10
       0     6063        M 0x80002804 mv      s8, s10                #; s10 = 6, (wrb) s8  <-- 6
       0     6064        M 0x80002808 bnez    s10, pc - 40           #; s10 = 6, taken, goto 0x800027e0
       0     6065        M 0x800027e0 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 6, (wrb) a0  <-- 0x0011fe3d
       0     6066        M 0x800027e4 lbu     a0, 0(a0)              #; a0  = 0x0011fe3d, a0  <~~ Byte[0x0011fe3d]
       0     6067        M 0x800027e8 addi    s10, s8, -1            #; s8  = 6, (wrb) s10 <-- 5
       0     6068        M 0x800027ec addi    s1, s0, 1              #; s0  = 10, (wrb) s1  <-- 11
       0     6069        M 0x800027f0 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     6070        M 0x800027f4 mv      a2, s0                 #; s0  = 10, (wrb) a2  <-- 10
       0     6071        M 0x800027f8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     6072        M 0x800027fc jalr    s7                     #; s7  = 0x80002114, (wrb) ra  <-- 0x80002800, goto 0x80002114
       0     6073        M                                           #; (lsu) a0  <-- 48
       0     6075        M 0x80002114 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     6076        M 0x80002118 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6077        M 0x8000211c li      a2, 1096               #; (wrb) a2  <-- 1096
       0     6078        M 0x80002120 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     6079        M 0x80002124 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80004124
       0     6080        M 0x80002128 addi    a3, a3, -1488          #; a3  = 0x80004124, (wrb) a3  <-- 0x80003b54
       0     6081        M                                           #; (acc) a1  <-- 0x00d605b3
       0     6082        M 0x8000212c add     a1, a2, a3             #; a2  = 0, a3  = 0x80003b54, (wrb) a1  <-- 0x80003b54
       0     6083        M 0x80002130 lw      a4, 0(a1)              #; a1  = 0x80003b54, a4  <~~ Word[0x80003b54]
       0     6094        M                                           #; (lsu) a4  <-- 10
       0     6095        M 0x80002134 addi    a5, a4, 1              #; a4  = 10, (wrb) a5  <-- 11
       0     6096        M 0x80002138 sw      a5, 0(a1)              #; a1  = 0x80003b54, 11 ~~> Word[0x80003b54]
       0     6097        M 0x8000213c add     a4, a1, a4             #; a1  = 0x80003b54, a4  = 10, (wrb) a4  <-- 0x80003b5e
       0     6098        M 0x80002140 sb      a0, 72(a4)             #; a4  = 0x80003b5e, 48 ~~> Byte[0x80003ba6]
       0     6099        M 0x80002144 lw      a4, 0(a1)              #; a1  = 0x80003b54, a4  <~~ Word[0x80003b54]
       0     6120        M                                           #; (lsu) a4  <-- 11
       0     6121        M 0x80002148 addi    a4, a4, -1020          #; a4  = 11, (wrb) a4  <-- -1009
       0     6122        M 0x8000214c snez    a4, a4                 #; a4  = -1009, (wrb) a4  <-- 1
       0     6123        M 0x80002150 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     6124        M 0x80002154 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     6125        M 0x80002158 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     6126        M 0x8000215c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800021bc
       0     6129        M 0x800021bc ret                            #; ra  = 0x80002800, goto 0x80002800
       0     6134        M 0x80002800 mv      s0, s1                 #; s1  = 11, (wrb) s0  <-- 11
       0     6135        M 0x80002804 mv      s8, s10                #; s10 = 5, (wrb) s8  <-- 5
       0     6136        M 0x80002808 bnez    s10, pc - 40           #; s10 = 5, taken, goto 0x800027e0
       0     6137        M 0x800027e0 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 5, (wrb) a0  <-- 0x0011fe3c
       0     6138        M 0x800027e4 lbu     a0, 0(a0)              #; a0  = 0x0011fe3c, a0  <~~ Byte[0x0011fe3c]
       0     6139        M 0x800027e8 addi    s10, s8, -1            #; s8  = 5, (wrb) s10 <-- 4
       0     6140        M 0x800027ec addi    s1, s0, 1              #; s0  = 11, (wrb) s1  <-- 12
       0     6141        M 0x800027f0 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     6142        M 0x800027f4 mv      a2, s0                 #; s0  = 11, (wrb) a2  <-- 11
       0     6143        M 0x800027f8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     6144        M 0x800027fc jalr    s7                     #; s7  = 0x80002114, (wrb) ra  <-- 0x80002800, goto 0x80002114
       0     6145        M                                           #; (lsu) a0  <-- 48
       0     6147        M 0x80002114 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     6148        M 0x80002118 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6149        M 0x8000211c li      a2, 1096               #; (wrb) a2  <-- 1096
       0     6150        M 0x80002120 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     6151        M 0x80002124 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80004124
       0     6152        M 0x80002128 addi    a3, a3, -1488          #; a3  = 0x80004124, (wrb) a3  <-- 0x80003b54
       0     6153        M                                           #; (acc) a1  <-- 0x00d605b3
       0     6154        M 0x8000212c add     a1, a2, a3             #; a2  = 0, a3  = 0x80003b54, (wrb) a1  <-- 0x80003b54
       0     6155        M 0x80002130 lw      a4, 0(a1)              #; a1  = 0x80003b54, a4  <~~ Word[0x80003b54]
       0     6166        M                                           #; (lsu) a4  <-- 11
       0     6167        M 0x80002134 addi    a5, a4, 1              #; a4  = 11, (wrb) a5  <-- 12
       0     6168        M 0x80002138 sw      a5, 0(a1)              #; a1  = 0x80003b54, 12 ~~> Word[0x80003b54]
       0     6169        M 0x8000213c add     a4, a1, a4             #; a1  = 0x80003b54, a4  = 11, (wrb) a4  <-- 0x80003b5f
       0     6170        M 0x80002140 sb      a0, 72(a4)             #; a4  = 0x80003b5f, 48 ~~> Byte[0x80003ba7]
       0     6171        M 0x80002144 lw      a4, 0(a1)              #; a1  = 0x80003b54, a4  <~~ Word[0x80003b54]
       0     6192        M                                           #; (lsu) a4  <-- 12
       0     6193        M 0x80002148 addi    a4, a4, -1020          #; a4  = 12, (wrb) a4  <-- -1008
       0     6194        M 0x8000214c snez    a4, a4                 #; a4  = -1008, (wrb) a4  <-- 1
       0     6195        M 0x80002150 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     6196        M 0x80002154 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     6197        M 0x80002158 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     6198        M 0x8000215c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800021bc
       0     6201        M 0x800021bc ret                            #; ra  = 0x80002800, goto 0x80002800
       0     6206        M 0x80002800 mv      s0, s1                 #; s1  = 12, (wrb) s0  <-- 12
       0     6207        M 0x80002804 mv      s8, s10                #; s10 = 4, (wrb) s8  <-- 4
       0     6208        M 0x80002808 bnez    s10, pc - 40           #; s10 = 4, taken, goto 0x800027e0
       0     6209        M 0x800027e0 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 4, (wrb) a0  <-- 0x0011fe3b
       0     6210        M 0x800027e4 lbu     a0, 0(a0)              #; a0  = 0x0011fe3b, a0  <~~ Byte[0x0011fe3b]
       0     6211        M 0x800027e8 addi    s10, s8, -1            #; s8  = 4, (wrb) s10 <-- 3
       0     6212        M 0x800027ec addi    s1, s0, 1              #; s0  = 12, (wrb) s1  <-- 13
       0     6213        M 0x800027f0 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     6214        M 0x800027f4 mv      a2, s0                 #; s0  = 12, (wrb) a2  <-- 12
       0     6215        M 0x800027f8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     6216        M 0x800027fc jalr    s7                     #; s7  = 0x80002114, (wrb) ra  <-- 0x80002800, goto 0x80002114
       0     6217        M                                           #; (lsu) a0  <-- 48
       0     6219        M 0x80002114 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     6220        M 0x80002118 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6221        M 0x8000211c li      a2, 1096               #; (wrb) a2  <-- 1096
       0     6222        M 0x80002120 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     6223        M 0x80002124 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80004124
       0     6224        M 0x80002128 addi    a3, a3, -1488          #; a3  = 0x80004124, (wrb) a3  <-- 0x80003b54
       0     6225        M                                           #; (acc) a1  <-- 0x00d605b3
       0     6226        M 0x8000212c add     a1, a2, a3             #; a2  = 0, a3  = 0x80003b54, (wrb) a1  <-- 0x80003b54
       0     6227        M 0x80002130 lw      a4, 0(a1)              #; a1  = 0x80003b54, a4  <~~ Word[0x80003b54]
       0     6238        M                                           #; (lsu) a4  <-- 12
       0     6239        M 0x80002134 addi    a5, a4, 1              #; a4  = 12, (wrb) a5  <-- 13
       0     6240        M 0x80002138 sw      a5, 0(a1)              #; a1  = 0x80003b54, 13 ~~> Word[0x80003b54]
       0     6241        M 0x8000213c add     a4, a1, a4             #; a1  = 0x80003b54, a4  = 12, (wrb) a4  <-- 0x80003b60
       0     6242        M 0x80002140 sb      a0, 72(a4)             #; a4  = 0x80003b60, 48 ~~> Byte[0x80003ba8]
       0     6243        M 0x80002144 lw      a4, 0(a1)              #; a1  = 0x80003b54, a4  <~~ Word[0x80003b54]
       0     6264        M                                           #; (lsu) a4  <-- 13
       0     6265        M 0x80002148 addi    a4, a4, -1020          #; a4  = 13, (wrb) a4  <-- -1007
       0     6266        M 0x8000214c snez    a4, a4                 #; a4  = -1007, (wrb) a4  <-- 1
       0     6267        M 0x80002150 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     6268        M 0x80002154 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     6269        M 0x80002158 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     6270        M 0x8000215c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800021bc
       0     6273        M 0x800021bc ret                            #; ra  = 0x80002800, goto 0x80002800
       0     6278        M 0x80002800 mv      s0, s1                 #; s1  = 13, (wrb) s0  <-- 13
       0     6279        M 0x80002804 mv      s8, s10                #; s10 = 3, (wrb) s8  <-- 3
       0     6280        M 0x80002808 bnez    s10, pc - 40           #; s10 = 3, taken, goto 0x800027e0
       0     6281        M 0x800027e0 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 3, (wrb) a0  <-- 0x0011fe3a
       0     6282        M 0x800027e4 lbu     a0, 0(a0)              #; a0  = 0x0011fe3a, a0  <~~ Byte[0x0011fe3a]
       0     6283        M 0x800027e8 addi    s10, s8, -1            #; s8  = 3, (wrb) s10 <-- 2
       0     6284        M 0x800027ec addi    s1, s0, 1              #; s0  = 13, (wrb) s1  <-- 14
       0     6285        M 0x800027f0 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     6286        M 0x800027f4 mv      a2, s0                 #; s0  = 13, (wrb) a2  <-- 13
       0     6287        M 0x800027f8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     6288        M 0x800027fc jalr    s7                     #; s7  = 0x80002114, (wrb) ra  <-- 0x80002800, goto 0x80002114
       0     6289        M                                           #; (lsu) a0  <-- 48
       0     6291        M 0x80002114 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     6292        M 0x80002118 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6293        M 0x8000211c li      a2, 1096               #; (wrb) a2  <-- 1096
       0     6294        M 0x80002120 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     6295        M 0x80002124 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80004124
       0     6296        M 0x80002128 addi    a3, a3, -1488          #; a3  = 0x80004124, (wrb) a3  <-- 0x80003b54
       0     6297        M                                           #; (acc) a1  <-- 0x00d605b3
       0     6298        M 0x8000212c add     a1, a2, a3             #; a2  = 0, a3  = 0x80003b54, (wrb) a1  <-- 0x80003b54
       0     6299        M 0x80002130 lw      a4, 0(a1)              #; a1  = 0x80003b54, a4  <~~ Word[0x80003b54]
       0     6310        M                                           #; (lsu) a4  <-- 13
       0     6311        M 0x80002134 addi    a5, a4, 1              #; a4  = 13, (wrb) a5  <-- 14
       0     6312        M 0x80002138 sw      a5, 0(a1)              #; a1  = 0x80003b54, 14 ~~> Word[0x80003b54]
       0     6313        M 0x8000213c add     a4, a1, a4             #; a1  = 0x80003b54, a4  = 13, (wrb) a4  <-- 0x80003b61
       0     6314        M 0x80002140 sb      a0, 72(a4)             #; a4  = 0x80003b61, 48 ~~> Byte[0x80003ba9]
       0     6315        M 0x80002144 lw      a4, 0(a1)              #; a1  = 0x80003b54, a4  <~~ Word[0x80003b54]
       0     6336        M                                           #; (lsu) a4  <-- 14
       0     6337        M 0x80002148 addi    a4, a4, -1020          #; a4  = 14, (wrb) a4  <-- -1006
       0     6338        M 0x8000214c snez    a4, a4                 #; a4  = -1006, (wrb) a4  <-- 1
       0     6339        M 0x80002150 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     6340        M 0x80002154 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     6341        M 0x80002158 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     6342        M 0x8000215c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800021bc
       0     6345        M 0x800021bc ret                            #; ra  = 0x80002800, goto 0x80002800
       0     6350        M 0x80002800 mv      s0, s1                 #; s1  = 14, (wrb) s0  <-- 14
       0     6351        M 0x80002804 mv      s8, s10                #; s10 = 2, (wrb) s8  <-- 2
       0     6352        M 0x80002808 bnez    s10, pc - 40           #; s10 = 2, taken, goto 0x800027e0
       0     6353        M 0x800027e0 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 2, (wrb) a0  <-- 0x0011fe39
       0     6354        M 0x800027e4 lbu     a0, 0(a0)              #; a0  = 0x0011fe39, a0  <~~ Byte[0x0011fe39]
       0     6355        M 0x800027e8 addi    s10, s8, -1            #; s8  = 2, (wrb) s10 <-- 1
       0     6356        M 0x800027ec addi    s1, s0, 1              #; s0  = 14, (wrb) s1  <-- 15
       0     6357        M 0x800027f0 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     6358        M 0x800027f4 mv      a2, s0                 #; s0  = 14, (wrb) a2  <-- 14
       0     6359        M 0x800027f8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     6360        M 0x800027fc jalr    s7                     #; s7  = 0x80002114, (wrb) ra  <-- 0x80002800, goto 0x80002114
       0     6361        M                                           #; (lsu) a0  <-- 48
       0     6363        M 0x80002114 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     6364        M 0x80002118 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6365        M 0x8000211c li      a2, 1096               #; (wrb) a2  <-- 1096
       0     6366        M 0x80002120 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     6367        M 0x80002124 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80004124
       0     6368        M 0x80002128 addi    a3, a3, -1488          #; a3  = 0x80004124, (wrb) a3  <-- 0x80003b54
       0     6369        M                                           #; (acc) a1  <-- 0x00d605b3
       0     6370        M 0x8000212c add     a1, a2, a3             #; a2  = 0, a3  = 0x80003b54, (wrb) a1  <-- 0x80003b54
       0     6371        M 0x80002130 lw      a4, 0(a1)              #; a1  = 0x80003b54, a4  <~~ Word[0x80003b54]
       0     6382        M                                           #; (lsu) a4  <-- 14
       0     6383        M 0x80002134 addi    a5, a4, 1              #; a4  = 14, (wrb) a5  <-- 15
       0     6384        M 0x80002138 sw      a5, 0(a1)              #; a1  = 0x80003b54, 15 ~~> Word[0x80003b54]
       0     6385        M 0x8000213c add     a4, a1, a4             #; a1  = 0x80003b54, a4  = 14, (wrb) a4  <-- 0x80003b62
       0     6386        M 0x80002140 sb      a0, 72(a4)             #; a4  = 0x80003b62, 48 ~~> Byte[0x80003baa]
       0     6387        M 0x80002144 lw      a4, 0(a1)              #; a1  = 0x80003b54, a4  <~~ Word[0x80003b54]
       0     6408        M                                           #; (lsu) a4  <-- 15
       0     6409        M 0x80002148 addi    a4, a4, -1020          #; a4  = 15, (wrb) a4  <-- -1005
       0     6410        M 0x8000214c snez    a4, a4                 #; a4  = -1005, (wrb) a4  <-- 1
       0     6411        M 0x80002150 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     6412        M 0x80002154 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     6413        M 0x80002158 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     6414        M 0x8000215c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800021bc
       0     6417        M 0x800021bc ret                            #; ra  = 0x80002800, goto 0x80002800
       0     6422        M 0x80002800 mv      s0, s1                 #; s1  = 15, (wrb) s0  <-- 15
       0     6423        M 0x80002804 mv      s8, s10                #; s10 = 1, (wrb) s8  <-- 1
       0     6424        M 0x80002808 bnez    s10, pc - 40           #; s10 = 1, taken, goto 0x800027e0
       0     6425        M 0x800027e0 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 1, (wrb) a0  <-- 0x0011fe38
       0     6426        M 0x800027e4 lbu     a0, 0(a0)              #; a0  = 0x0011fe38, a0  <~~ Byte[0x0011fe38]
       0     6427        M 0x800027e8 addi    s10, s8, -1            #; s8  = 1, (wrb) s10 <-- 0
       0     6428        M 0x800027ec addi    s1, s0, 1              #; s0  = 15, (wrb) s1  <-- 16
       0     6429        M 0x800027f0 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     6430        M 0x800027f4 mv      a2, s0                 #; s0  = 15, (wrb) a2  <-- 15
       0     6431        M 0x800027f8 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     6432        M 0x800027fc jalr    s7                     #; s7  = 0x80002114, (wrb) ra  <-- 0x80002800, goto 0x80002114
       0     6433        M                                           #; (lsu) a0  <-- 48
       0     6435        M 0x80002114 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     6436        M 0x80002118 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6437        M 0x8000211c li      a2, 1096               #; (wrb) a2  <-- 1096
       0     6438        M 0x80002120 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     6439        M 0x80002124 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80004124
       0     6440        M 0x80002128 addi    a3, a3, -1488          #; a3  = 0x80004124, (wrb) a3  <-- 0x80003b54
       0     6441        M                                           #; (acc) a1  <-- 0x00d605b3
       0     6442        M 0x8000212c add     a1, a2, a3             #; a2  = 0, a3  = 0x80003b54, (wrb) a1  <-- 0x80003b54
       0     6443        M 0x80002130 lw      a4, 0(a1)              #; a1  = 0x80003b54, a4  <~~ Word[0x80003b54]
       0     6454        M                                           #; (lsu) a4  <-- 15
       0     6455        M 0x80002134 addi    a5, a4, 1              #; a4  = 15, (wrb) a5  <-- 16
       0     6456        M 0x80002138 sw      a5, 0(a1)              #; a1  = 0x80003b54, 16 ~~> Word[0x80003b54]
       0     6457        M 0x8000213c add     a4, a1, a4             #; a1  = 0x80003b54, a4  = 15, (wrb) a4  <-- 0x80003b63
       0     6458        M 0x80002140 sb      a0, 72(a4)             #; a4  = 0x80003b63, 48 ~~> Byte[0x80003bab]
       0     6459        M 0x80002144 lw      a4, 0(a1)              #; a1  = 0x80003b54, a4  <~~ Word[0x80003b54]
       0     6480        M                                           #; (lsu) a4  <-- 16
       0     6481        M 0x80002148 addi    a4, a4, -1020          #; a4  = 16, (wrb) a4  <-- -1004
       0     6482        M 0x8000214c snez    a4, a4                 #; a4  = -1004, (wrb) a4  <-- 1
       0     6483        M 0x80002150 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     6484        M 0x80002154 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     6485        M 0x80002158 and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     6486        M 0x8000215c bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800021bc
       0     6489        M 0x800021bc ret                            #; ra  = 0x80002800, goto 0x80002800
       0     6494        M 0x80002800 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
       0     6495        M 0x80002804 mv      s8, s10                #; s10 = 0, (wrb) s8  <-- 0
       0     6496        M 0x80002808 bnez    s10, pc - 40           #; s10 = 0, not taken
       0     6497        M 0x8000280c j       pc + 0x8               #; goto 0x80002814
       0     6509        M 0x80002814 sub     a0, s1, s4             #; s1  = 16, s4  = 8, (wrb) a0  <-- 8
       0     6510        M 0x80002818 sltu    a0, a0, s2             #; a0  = 8, s2  = 0, (wrb) a0  <-- 0
       0     6511        M 0x8000281c xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0     6521        M 0x80002820 xori    a1, s5, 1              #; s5  = 0, (wrb) a1  <-- 1
       0     6522        M 0x80002824 or      a0, a1, a0             #; a1  = 1, a0  = 1, (wrb) a0  <-- 1
       0     6523        M 0x80002828 bnez    a0, pc + 48            #; a0  = 1, taken, goto 0x80002858
       0     6544        M 0x80002858 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
       0     6545        M 0x8000285c mv      a0, s0                 #; s0  = 16, (wrb) a0  <-- 16
       0     6558        M 0x80002860 fld     fs2, 40(sp)            #; fs2  <~~ Doub[0x0011fe58]
       0     6559        M 0x8000286c lw      s10, 64(sp)            #; sp  = 0x0011fe30, s10 <~~ Word[0x0011fe70]
                         M 0x80002864 fld     fs1, 48(sp)            #; fs1  <~~ Doub[0x0011fe60], (f:lsu) fs2  <-- 0.0
       0     6560        M 0x80002868 fld     fs0, 56(sp)            #; fs0  <~~ Doub[0x0011fe68], (f:lsu) fs1  <-- 0.0
       0     6561        M                                           #; (f:lsu) fs0  <-- 0.0
       0     6563        M                                           #; (lsu) s10 <-- 0x800037fe
       0     6568        M 0x80002870 lw      s9, 68(sp)             #; sp  = 0x0011fe30, s9  <~~ Word[0x0011fe74]
       0     6571        M                                           #; (lsu) s9  <-- 8
       0     6572        M 0x80002874 lw      s8, 72(sp)             #; sp  = 0x0011fe30, s8  <~~ Word[0x0011fe78]
       0     6575        M                                           #; (lsu) s8  <-- 16
       0     6576        M 0x80002878 lw      s7, 76(sp)             #; sp  = 0x0011fe30, s7  <~~ Word[0x0011fe7c]
       0     6579        M                                           #; (lsu) s7  <-- 0
       0     6580        M 0x8000287c lw      s6, 80(sp)             #; sp  = 0x0011fe30, s6  <~~ Word[0x0011fe80]
       0     6583        M                                           #; (lsu) s6  <-- 0
       0     6584        M 0x80002880 lw      s5, 84(sp)             #; sp  = 0x0011fe30, s5  <~~ Word[0x0011fe84]
       0     6587        M                                           #; (lsu) s5  <-- -1
       0     6588        M 0x80002884 lw      s4, 88(sp)             #; sp  = 0x0011fe30, s4  <~~ Word[0x0011fe88]
       0     6591        M                                           #; (lsu) s4  <-- 0x0011ff17
       0     6592        M 0x80002888 lw      s3, 92(sp)             #; sp  = 0x0011fe30, s3  <~~ Word[0x0011fe8c]
       0     6595        M                                           #; (lsu) s3  <-- 0x0011ff30
       0     6596        M 0x8000288c lw      s2, 96(sp)             #; sp  = 0x0011fe30, s2  <~~ Word[0x0011fe90]
       0     6599        M                                           #; (lsu) s2  <-- 0x80002114
       0     6600        M 0x80002890 lw      s1, 100(sp)            #; sp  = 0x0011fe30, s1  <~~ Word[0x0011fe94]
       0     6603        M                                           #; (lsu) s1  <-- 8
       0     6604        M 0x80002894 lw      s0, 104(sp)            #; sp  = 0x0011fe30, s0  <~~ Word[0x0011fe98]
       0     6607        M                                           #; (lsu) s0  <-- 0
       0     6608        M 0x80002898 lw      ra, 108(sp)            #; sp  = 0x0011fe30, ra  <~~ Word[0x0011fe9c]
       0     6609        M 0x8000289c addi    sp, sp, 112            #; sp  = 0x0011fe30, (wrb) sp  <-- 0x0011fea0
       0     6611        M                                           #; (lsu) ra  <-- 0x80001844
       0     6612        M 0x800028a0 ret                            #; ra  = 0x80001844, goto 0x80001844
       0     6624        M 0x80001844 j       pc + 0x7c0             #; goto 0x80002004
       0     6627        M 0x80002004 mv      s8, a0                 #; a0  = 16, (wrb) s8  <-- 16
       0     6628        M 0x80002008 li      s6, 37                 #; (wrb) s6  <-- 37
       0     6629        M 0x8000200c li      s7, 46                 #; (wrb) s7  <-- 46
       0     6639        M 0x80002010 addi    s0, s10, 1             #; s10 = 0x800037fe, (wrb) s0  <-- 0x800037ff
       0     6640        M 0x80002014 j       pc - 0xa74             #; goto 0x800015a0
       0     6651        M 0x800015a0 addi    s10, s0, 2             #; s0  = 0x800037ff, (wrb) s10 <-- 0x80003801
       0     6652        M 0x800015a4 mv      s9, s8                 #; s8  = 16, (wrb) s9  <-- 16
       0     6653        M 0x800015a8 li      s8, 10                 #; (wrb) s8  <-- 10
       0     6654        M 0x800015ac lbu     a0, 0(s0)              #; s0  = 0x800037ff, a0  <~~ Byte[0x800037ff]
       0     6665        M                                           #; (lsu) a0  <-- 10
       0     6666        M 0x800015b0 beqz    a0, pc + 2824          #; a0  = 10, not taken
       0     6667        M 0x800015b4 beq     a0, s6, pc + 48        #; a0  = 10, s6  = 37, not taken
       0     6668        M 0x800015b8 addi    s1, s9, 1              #; s9  = 16, (wrb) s1  <-- 17
       0     6669        M 0x800015bc mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     6675        M 0x800015c0 mv      a2, s9                 #; s9  = 16, (wrb) a2  <-- 16
       0     6676        M 0x800015c4 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     6677        M 0x800015c8 jalr    s2                     #; s2  = 0x80002114, (wrb) ra  <-- 0x800015cc, goto 0x80002114
       0     6689        M 0x80002114 beqz    a0, pc + 168           #; a0  = 10, not taken
       0     6690        M 0x80002118 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6691        M 0x8000211c li      a2, 1096               #; (wrb) a2  <-- 1096
       0     6692        M 0x80002120 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     6693        M 0x80002124 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80004124
       0     6694        M 0x80002128 addi    a3, a3, -1488          #; a3  = 0x80004124, (wrb) a3  <-- 0x80003b54
       0     6695        M                                           #; (acc) a1  <-- 0x00d605b3
       0     6696        M 0x8000212c add     a1, a2, a3             #; a2  = 0, a3  = 0x80003b54, (wrb) a1  <-- 0x80003b54
       0     6697        M 0x80002130 lw      a4, 0(a1)              #; a1  = 0x80003b54, a4  <~~ Word[0x80003b54]
       0     6708        M                                           #; (lsu) a4  <-- 16
       0     6709        M 0x80002134 addi    a5, a4, 1              #; a4  = 16, (wrb) a5  <-- 17
       0     6710        M 0x80002138 sw      a5, 0(a1)              #; a1  = 0x80003b54, 17 ~~> Word[0x80003b54]
       0     6711        M 0x8000213c add     a4, a1, a4             #; a1  = 0x80003b54, a4  = 16, (wrb) a4  <-- 0x80003b64
       0     6712        M 0x80002140 sb      a0, 72(a4)             #; a4  = 0x80003b64, 10 ~~> Byte[0x80003bac]
       0     6713        M 0x80002144 lw      a4, 0(a1)              #; a1  = 0x80003b54, a4  <~~ Word[0x80003b54]
       0     6734        M                                           #; (lsu) a4  <-- 17
       0     6735        M 0x80002148 addi    a4, a4, -1020          #; a4  = 17, (wrb) a4  <-- -1003
       0     6736        M 0x8000214c snez    a4, a4                 #; a4  = -1003, (wrb) a4  <-- 1
       0     6737        M 0x80002150 addi    a0, a0, -10            #; a0  = 10, (wrb) a0  <-- 0
       0     6738        M 0x80002154 snez    a0, a0                 #; a0  = 0, (wrb) a0  <-- 0
       0     6739        M 0x80002158 and     a0, a0, a4             #; a0  = 0, a4  = 1, (wrb) a0  <-- 0
       0     6740        M 0x8000215c bnez    a0, pc + 96            #; a0  = 0, not taken
       0     6741        M 0x80002160 add     a0, a3, a2             #; a3  = 0x80003b54, a2  = 0, (wrb) a0  <-- 0x80003b54
       0     6742        M 0x80002164 addi    a2, a0, 72             #; a0  = 0x80003b54, (wrb) a2  <-- 0x80003b9c
       0     6743        M 0x80002168 sw      zero, 12(a0)           #; a0  = 0x80003b54, 0 ~~> Word[0x80003b60]
       0     6744        M 0x8000216c li      a3, 64                 #; (wrb) a3  <-- 64
       0     6753        M 0x80002170 sw      a3, 8(a0)              #; a0  = 0x80003b54, 64 ~~> Word[0x80003b5c]
       0     6754        M 0x80002174 sw      zero, 20(a0)           #; a0  = 0x80003b54, 0 ~~> Word[0x80003b68]
       0     6755        M 0x80002178 li      a3, 1                  #; (wrb) a3  <-- 1
       0     6756        M 0x8000217c sw      a3, 16(a0)             #; a0  = 0x80003b54, 1 ~~> Word[0x80003b64]
       0     6765        M 0x80002180 sw      zero, 28(a0)           #; a0  = 0x80003b54, 0 ~~> Word[0x80003b70]
       0     6766        M 0x80002184 sw      a2, 24(a0)             #; a0  = 0x80003b54, 0x80003b9c ~~> Word[0x80003b6c]
       0     6768        M 0x80002188 lw      a2, 0(a1)              #; a1  = 0x80003b54, a2  <~~ Word[0x80003b54]
       0     6769        M 0x8000218c addi    a3, a0, 8              #; a0  = 0x80003b54, (wrb) a3  <-- 0x80003b5c
       0     6778        M 0x80002190 sw      zero, 36(a0)           #; a0  = 0x80003b54, 0 ~~> Word[0x80003b78]
       0     6797        M                                           #; (lsu) a2  <-- 17
       0     6798        M 0x80002194 sw      a2, 32(a0)             #; a0  = 0x80003b54, 17 ~~> Word[0x80003b74]
       0     6799        M 0x80002198 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80004198
       0     6800        M 0x8000219c addi    a0, a0, -1880          #; a0  = 0x80004198, (wrb) a0  <-- 0x80003a40
       0     6801        M 0x800021a0 sw      a3, 0(a0)              #; a0  = 0x80003a40, 0x80003b5c ~~> Word[0x80003a40]
       0     6802        M 0x800021a4 auipc   a0, 0x2                #; (wrb) a0  <-- 0x800041a4
       0     6803        M 0x800021a8 addi    a0, a0, -1828          #; a0  = 0x800041a4, (wrb) a0  <-- 0x80003a80
       0     6804        M 0x800021ac lw      a2, 0(a0)              #; a0  = 0x80003a80, a2  <~~ Word[0x80003a80]
       0     6827        M                                           #; (lsu) a2  <-- 0
       0     6828        M 0x800021b0 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x800021ac
       0     6829        M 0x800021ac lw      a2, 0(a0)              #; a0  = 0x80003a80, a2  <~~ Word[0x80003a80]
       0     6840        M                                           #; (lsu) a2  <-- 0
       0     6841        M 0x800021b0 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x800021ac
       0     6842        M 0x800021ac lw      a2, 0(a0)              #; a0  = 0x80003a80, a2  <~~ Word[0x80003a80]
       0     6853        M                                           #; (lsu) a2  <-- 0
       0     6854        M 0x800021b0 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x800021ac
       0     6855        M 0x800021ac lw      a2, 0(a0)              #; a0  = 0x80003a80, a2  <~~ Word[0x80003a80]
       0     6866        M                                           #; (lsu) a2  <-- 0
       0     6867        M 0x800021b0 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x800021ac
       0     6868        M 0x800021ac lw      a2, 0(a0)              #; a0  = 0x80003a80, a2  <~~ Word[0x80003a80]
       0     6879        M                                           #; (lsu) a2  <-- 0
       0     6880        M 0x800021b0 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x800021ac
       0     6881        M 0x800021ac lw      a2, 0(a0)              #; a0  = 0x80003a80, a2  <~~ Word[0x80003a80]
       0     6892        M                                           #; (lsu) a2  <-- 0
       0     6893        M 0x800021b0 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x800021ac
       0     6894        M 0x800021ac lw      a2, 0(a0)              #; a0  = 0x80003a80, a2  <~~ Word[0x80003a80]
       0     6905        M                                           #; (lsu) a2  <-- 1
       0     6906        M 0x800021b0 beqz    a2, pc - 4             #; a2  = 1, not taken
       0     6907        M 0x800021b4 sw      zero, 0(a0)            #; a0  = 0x80003a80, 0 ~~> Word[0x80003a80]
       0     6908        M 0x800021b8 sw      zero, 0(a1)            #; a1  = 0x80003b54, 0 ~~> Word[0x80003b54]
       0     6909        M 0x800021bc ret                            #; ra  = 0x800015cc, goto 0x800015cc
       0     6912        M 0x800015cc addi    s0, s0, 1              #; s0  = 0x800037ff, (wrb) s0  <-- 0x80003800
       0     6915        M 0x800015d0 addi    s10, s10, 1            #; s10 = 0x80003801, (wrb) s10 <-- 0x80003802
       0     6916        M 0x800015d4 mv      s9, s1                 #; s1  = 17, (wrb) s9  <-- 17
       0     6917        M 0x800015d8 lbu     a0, 0(s0)              #; s0  = 0x80003800, a0  <~~ Byte[0x80003800]
       0     6930        M                                           #; (lsu) a0  <-- 0
       0     6931        M 0x800015dc bnez    a0, pc - 40            #; a0  = 0, not taken
       0     6943        M 0x800015e0 j       pc + 0xad8             #; goto 0x800020b8
       0     6955        M 0x800020b8 mv      a2, s9                 #; s9  = 17, (wrb) a2  <-- 17
       0     6956        M 0x800020bc bltu    s9, s5, pc + 8         #; s9  = 17, s5  = -1, taken, goto 0x800020c4
       0     6967        M 0x800020c4 li      a0, 0                  #; (wrb) a0  <-- 0
       0     6968        M 0x800020c8 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     6969        M 0x800020cc mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     6979        M 0x800020d0 jalr    s2                     #; s2  = 0x80002114, (wrb) ra  <-- 0x800020d4, goto 0x80002114
       0     6993        M 0x80002114 beqz    a0, pc + 168           #; a0  = 0, taken, goto 0x800021bc
       0     6998        M 0x800021bc ret                            #; ra  = 0x800020d4, goto 0x800020d4
       0     6999        M 0x800020d4 mv      a0, s9                 #; s9  = 17, (wrb) a0  <-- 17
       0     7000        M 0x800020d8 lw      s11, 60(sp)            #; sp  = 0x0011fea0, s11 <~~ Word[0x0011fedc]
       0     7003        M                                           #; (lsu) s11 <-- 0
       0     7004        M 0x800020dc lw      s10, 64(sp)            #; sp  = 0x0011fea0, s10 <~~ Word[0x0011fee0]
       0     7007        M                                           #; (lsu) s10 <-- 0
       0     7008        M 0x800020e0 lw      s9, 68(sp)             #; sp  = 0x0011fea0, s9  <~~ Word[0x0011fee4]
       0     7011        M                                           #; (lsu) s9  <-- 0
       0     7012        M 0x800020e4 lw      s8, 72(sp)             #; sp  = 0x0011fea0, s8  <~~ Word[0x0011fee8]
       0     7015        M                                           #; (lsu) s8  <-- 0
       0     7016        M 0x800020e8 lw      s7, 76(sp)             #; sp  = 0x0011fea0, s7  <~~ Word[0x0011feec]
       0     7019        M                                           #; (lsu) s7  <-- 0
       0     7020        M 0x800020ec lw      s6, 80(sp)             #; sp  = 0x0011fea0, s6  <~~ Word[0x0011fef0]
       0     7023        M                                           #; (lsu) s6  <-- 0
       0     7024        M 0x800020f0 lw      s5, 84(sp)             #; sp  = 0x0011fea0, s5  <~~ Word[0x0011fef4]
       0     7027        M                                           #; (lsu) s5  <-- 0
       0     7028        M 0x800020f4 lw      s4, 88(sp)             #; sp  = 0x0011fea0, s4  <~~ Word[0x0011fef8]
       0     7031        M                                           #; (lsu) s4  <-- 0
       0     7032        M 0x800020f8 lw      s3, 92(sp)             #; sp  = 0x0011fea0, s3  <~~ Word[0x0011fefc]
       0     7035        M                                           #; (lsu) s3  <-- 0
       0     7036        M 0x800020fc lw      s2, 96(sp)             #; sp  = 0x0011fea0, s2  <~~ Word[0x0011ff00]
       0     7039        M                                           #; (lsu) s2  <-- 0
       0     7040        M 0x80002100 lw      s1, 100(sp)            #; sp  = 0x0011fea0, s1  <~~ Word[0x0011ff04]
       0     7043        M                                           #; (lsu) s1  <-- 0
       0     7044        M 0x80002104 lw      s0, 104(sp)            #; sp  = 0x0011fea0, s0  <~~ Word[0x0011ff08]
       0     7047        M                                           #; (lsu) s0  <-- 0
       0     7048        M 0x80002108 lw      ra, 108(sp)            #; sp  = 0x0011fea0, ra  <~~ Word[0x0011ff0c]
       0     7049        M 0x8000210c addi    sp, sp, 112            #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011ff10
       0     7051        M                                           #; (lsu) ra  <-- 0x80001510
       0     7052        M 0x80002110 ret                            #; ra  = 0x80001510, goto 0x80001510
       0     7064        M 0x80001510 lw      ra, 12(sp)             #; sp  = 0x0011ff10, ra  <~~ Word[0x0011ff1c]
       0     7065        M 0x80001514 addi    sp, sp, 48             #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011ff40
       0     7067        M                                           #; (lsu) ra  <-- 0x800014a0
       0     7068        M 0x80001518 ret                            #; ra  = 0x800014a0, goto 0x800014a0
       0     7078        M 0x800014a0 auipc   a0, 0x2                #; (wrb) a0  <-- 0x800034a0
       0     7079        M 0x800014a4 addi    a0, a0, 1536           #; a0  = 0x800034a0, (wrb) a0  <-- 0x80003aa0
       0     7082        M 0x800014a8 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x80003aa0]
       0     7083        M 0x800014b4 lw      ra, 28(sp)             #; sp  = 0x0011ff40, ra  <~~ Word[0x0011ff5c]
       0     7084        M 0x800014b8 addi    sp, sp, 32             #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff60
       0     7091        M                                           #; (f:lsu) ft3  <-- 0.0001
       0     7092        M 0x800014ac flt.d   a0, ft3, fs0           #; ft3  = 0.0001, fs0  = 0.0
       0     7093        M                                           #; (lsu) ra  <-- 0x80003570
       0     7094        M 0x800014bc ret                            #; ra  = 0x80003570, goto 0x80003570
                         M 0x800014b0 fld     fs0, 16(sp)            #; fs0  <~~ Doub[0x0011ff50]
       0     7095        M                                           #; (f:lsu) fs0  <-- 0.0
       0     7106        M 0x80003570 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
       0     7107        M 0x80003574 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80003574
       0     7108        M 0x80003578 jalr    ra, ra, 524            #; ra  = 0x80003574, (wrb) ra  <-- 0x8000357c, goto 0x80003780
       0     7129        M 0x80003780 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
       0     7130        M 0x80003784 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x8000357c ~~> Word[0x0011ff5c]
       0     7131        M 0x80003788 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80003788
       0     7132        M 0x8000378c jalr    ra, ra, -1260          #; ra  = 0x80003788, (wrb) ra  <-- 0x80003790, goto 0x8000329c
       0     7143        M 0x8000329c lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     7146        M 0x800032a0 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     7147        M 0x800032a4 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     7150        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     7151        M 0x800032a8 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     7154        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     7155        M 0x800032ac lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
       0     7156        M 0x800032b0 ret                            #; ra  = 0x80003790, goto 0x80003790
       0     7158        M                                           #; (lsu) a0  <-- 0x00120190
       0     7159        M 0x80003790 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
       0     7169        M                                           #; (lsu) a0  <-- 0
       0     7170        M 0x80003794 mv      zero, a0               #; a0  = 0
       0     7171        M 0x80003798 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
       0     7172        M 0x8000379c addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
       0     7174        M                                           #; (lsu) ra  <-- 0x8000357c
       0     7175        M 0x800037a0 ret                            #; ra  = 0x8000357c, goto 0x8000357c
       0     7189        M 0x8000357c mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
       0     7193        M 0x80003580 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80003580
       0     7194        M 0x80003584 jalr    ra, ra, 556            #; ra  = 0x80003580, (wrb) ra  <-- 0x80003588, goto 0x800037ac
       0     7195        M 0x800037ac addi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff58
       0     7196        M 0x800037b0 sw      a0, 0(sp)              #; sp  = 0x0011ff58, 0 ~~> Word[0x0011ff58]
       0     7197        M 0x800037b4 sw      ra, 4(sp)              #; sp  = 0x0011ff58, 0x80003588 ~~> Word[0x0011ff5c]
       0     7198        M 0x800037b8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800037b8
       0     7199        M 0x800037bc jalr    ra, ra, -1340          #; ra  = 0x800037b8, (wrb) ra  <-- 0x800037c0, goto 0x8000327c
       0     7210        M 0x8000327c lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     7214        M 0x80003280 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     7215        M 0x80003284 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     7218        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     7219        M 0x80003288 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     7222        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     7223        M 0x8000328c lw      a0, 8(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff78]
       0     7224        M 0x80003290 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     7226        M                                           #; (lsu) a0  <-- 0
       0     7227        M 0x80003294 sub     a0, a1, a0             #; a1  = 0, a0  = 0, (wrb) a0  <-- 0
       0     7228        M 0x80003298 ret                            #; ra  = 0x800037c0, goto 0x800037c0
       0     7229        M 0x800037c0 lw      t0, 0(sp)              #; sp  = 0x0011ff58, t0  <~~ Word[0x0011ff58]
       0     7232        M                                           #; (lsu) t0  <-- 0
       0     7233        M 0x800037c4 lw      ra, 4(sp)              #; sp  = 0x0011ff58, ra  <~~ Word[0x0011ff5c]
       0     7234        M 0x800037c8 addi    sp, sp, 8              #; sp  = 0x0011ff58, (wrb) sp  <-- 0x0011ff60
       0     7235        M 0x800037cc bnez    a0, pc + 24            #; a0  = 0, not taken
       0     7236        M                                           #; (lsu) ra  <-- 0x80003588
       0     7240        M 0x800037d0 slli    t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 0
       0     7241        M 0x800037d4 ori     t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 1
       0     7242        M 0x800037d8 auipc   t1, 0x0                #; (wrb) t1  <-- 0x800037d8
       0     7243        M 0x800037dc addi    t1, t1, 616            #; t1  = 0x800037d8, (wrb) t1  <-- 0x80003a40
       0     7251        M 0x800037e0 sw      t0, 0(t1)              #; t1  = 0x80003a40, 1 ~~> Word[0x80003a40]
       0     7252        M 0x800037e4 ret                            #; ra  = 0x80003588, goto 0x80003588
       0     7266        M 0x80003588 wfi                            #; 

## Performance metrics

Performance metrics for section 0 @ (12, 7266):
snitch_loads                                   140
snitch_stores                                  142
fpss_stores                                      5
fpss_loads                                     121
snitch_avg_load_latency                    12.0214
snitch_occupancy                            0.2063
snitch_fseq_rel_offloads                    0.3260
fseq_yield                                     1.0
fseq_fpu_yield                                 1.0
fpss_section_latency                             0
fpss_avg_fpu_latency                        2.0845
fpss_avg_load_latency                       1.5289
fpss_occupancy                              0.0998
fpss_fpu_occupancy                          0.0816
fpss_fpu_rel_occupancy                      0.8177
cycles                                        7255
total_ipc                                   0.3061
