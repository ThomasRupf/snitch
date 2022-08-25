       0       12        M 0x00001000 csrr    a0, mhartid            #; mhartid = 0, (wrb) a0  <-- 0
       0       32        M 0x00001004 auipc   a1, 0x0                #; (wrb) a1  <-- 4100
       0       56        M 0x00001008 addi    a1, a1, 32             #; a1  = 4100, (wrb) a1  <-- 4132
       0       84        M 0x0000100c auipc   t0, 0x0                #; (wrb) t0  <-- 4108
       0      104        M 0x00001010 lw      t0, 20(t0)             #; t0  = 4108, t0  <~~ Word[0x00001020]
       0      115        M                                           #; (lsu) t0  <-- 0x800029c0
       0      128        M 0x00001014 jalr    t0                     #; t0  = 0x800029c0, (wrb) ra  <-- 4120, goto 0x800029c0
       0      269        M 0x800029c0 auipc   gp, 0x1                #; (wrb) gp  <-- 0x800039c0
       0      270        M 0x800029c4 addi    gp, gp, -248           #; gp  = 0x800039c0, (wrb) gp  <-- 0x800038c8
       0      271        M 0x800029c8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800029c8
       0      272        M 0x800029cc jalr    ra, ra, 964            #; ra  = 0x800029c8, (wrb) ra  <-- 0x800029d0, goto 0x80002d8c
       0      292        M 0x80002d8c mv      a4, a1                 #; a1  = 4132, (wrb) a4  <-- 4132
       0      304        M 0x80002d90 lw      a1, 4(a4)              #; a4  = 4132, a1  <~~ Word[0x00001028]
       0      334        M                                           #; (lsu) a1  <-- 8
       0      335        M 0x80002d94 lw      t0, 8(a4)              #; a4  = 4132, t0  <~~ Word[0x0000102c]
       0      374        M                                           #; (lsu) t0  <-- 0
       0      375        M 0x80002d98 lw      a2, 12(a4)             #; a4  = 4132, a2  <~~ Word[0x00001030]
       0      414        M                                           #; (lsu) a2  <-- 0x00100000
       0      415        M 0x80002d9c lw      t1, 16(a4)             #; a4  = 4132, t1  <~~ Word[0x00001034]
       0      454        M                                           #; (lsu) t1  <-- 0x00020000
       0      455        M 0x80002da0 lw      t2, 20(a4)             #; a4  = 4132, t2  <~~ Word[0x00001038]
       0      456        M 0x80002da4 sub     a0, a0, t0             #; a0  = 0, t0  = 0, (wrb) a0  <-- 0
       0      457        M 0x80002da8 div     t3, a0, a1             #; a0  = 0, a1  = 8
       0      460        M                                           #; (acc) t4  <-- 0x027e0eb3
       0      494        M                                           #; (lsu) t2  <-- 0
       0      495        M 0x80002dac mul     t4, t3, t2             #; t3  = 0, t2  = 0
       0      498        M                                           #; (acc) a2  <-- 0x01d60633
       0      499        M 0x80002db0 add     a2, a2, t4             #; a2  = 0x00100000, t4  = 0, (wrb) a2  <-- 0x00100000
       0      500        M 0x80002db4 add     a3, a2, t1             #; a2  = 0x00100000, t1  = 0x00020000, (wrb) a3  <-- 0x00120000
       0      501        M 0x80002db8 remu    a0, a0, a1             #; a0  = 0, a1  = 8
       0      502        M 0x80002dbc ret                            #; ra  = 0x800029d0, goto 0x800029d0
       0      504        M                                           #; (acc) s0  <-- 0x00050413
       0      505        M 0x800029d0 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
       0      506        M 0x800029d4 mv      a0, a4                 #; a4  = 4132, (wrb) a0  <-- 4132
       0      507        M 0x800029d8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800029d8
       0      508        M 0x800029dc jalr    ra, ra, 1036           #; ra  = 0x800029d8, (wrb) ra  <-- 0x800029e0, goto 0x80002de4
       0      523        M 0x80002de4 lw      a0, 8(a0)              #; a0  = 4132, a0  <~~ Word[0x0000102c]
       0      524        M 0x80002de8 ret                            #; ra  = 0x800029e0, goto 0x800029e0
       0      543        M                                           #; (lsu) a0  <-- 0
       0      544        M 0x800029e0 mv      t0, a0                 #; a0  = 0, (wrb) t0  <-- 0
       0      545        M 0x800029e4 mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
       0      546        M 0x800029e8 csrr    t1, mhartid            #; mhartid = 0, (wrb) t1  <-- 0
       0      547        M 0x800029ec sub     t0, t1, t0             #; t1  = 0, t0  = 0, (wrb) t0  <-- 0
       0      549        M 0x800029f0 bnez    t0, pc + 36            #; t0  = 0, not taken
       0      550        M 0x800029f4 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800029f4
       0      551        M 0x800029f8 addi    t0, t0, 1948           #; t0  = 0x800029f4, (wrb) t0  <-- 0x80003190
       0      552        M 0x800029fc auipc   t1, 0x0                #; (wrb) t1  <-- 0x800029fc
       0      562        M 0x80002a00 addi    t1, t1, 1944           #; t1  = 0x800029fc, (wrb) t1  <-- 0x80003194
       0      563        M 0x80002a04 bge     t0, t1, pc + 16        #; t0  = 0x80003190, t1  = 0x80003194, not taken
       0      564        M 0x80002a08 sw      zero, 0(t0)            #; t0  = 0x80003190, 0 ~~> Word[0x80003190]
       0      565        M 0x80002a0c addi    t0, t0, 4              #; t0  = 0x80003190, (wrb) t0  <-- 0x80003194
       0      573        M 0x80002a10 blt     t0, t1, pc - 8         #; t0  = 0x80003194, t1  = 0x80003194, not taken
       0      574        M 0x80002a14 csrr    t0, misa               #; misa = 0x40801129, (wrb) t0  <-- 0x40801129
       0      575        M 0x80002a18 andi    t0, t0, 40             #; t0  = 0x40801129, (wrb) t0  <-- 40
       0      576        M 0x80002a1c beqz    t0, pc + 132           #; t0  = 40, not taken
       0      586        M 0x80002a20 fcvt.d.w ft0, zero             #; ac1  = 0
       0      587        M 0x80002a24 fcvt.d.w ft1, zero             #; ac1  = 0, (f:fpu) ft0  <-- 0.0
       0      588        M 0x80002a28 fcvt.d.w ft2, zero             #; ac1  = 0, (f:fpu) ft1  <-- 0.0
       0      589        M 0x80002a2c fcvt.d.w ft3, zero             #; ac1  = 0, (f:fpu) ft2  <-- 0.0
       0      590        M                                           #; (f:fpu) ft3  <-- 0.0
       0      598        M 0x80002a30 fcvt.d.w ft4, zero             #; ac1  = 0
       0      599        M 0x80002a34 fcvt.d.w ft5, zero             #; ac1  = 0, (f:fpu) ft4  <-- 0.0
       0      600        M 0x80002a38 fcvt.d.w ft6, zero             #; ac1  = 0, (f:fpu) ft5  <-- 0.0
       0      601        M 0x80002a3c fcvt.d.w ft7, zero             #; ac1  = 0, (f:fpu) ft6  <-- 0.0
       0      602        M                                           #; (f:fpu) ft7  <-- 0.0
       0      610        M 0x80002a40 fcvt.d.w fs0, zero             #; ac1  = 0
       0      611        M 0x80002a44 fcvt.d.w fs1, zero             #; ac1  = 0, (f:fpu) fs0  <-- 0.0
       0      612        M 0x80002a48 fcvt.d.w fa0, zero             #; ac1  = 0, (f:fpu) fs1  <-- 0.0
       0      613        M 0x80002a4c fcvt.d.w fa1, zero             #; ac1  = 0, (f:fpu) fa0  <-- 0.0
       0      614        M                                           #; (f:fpu) fa1  <-- 0.0
       0      622        M 0x80002a50 fcvt.d.w fa2, zero             #; ac1  = 0
       0      623        M 0x80002a54 fcvt.d.w fa3, zero             #; ac1  = 0, (f:fpu) fa2  <-- 0.0
       0      624        M 0x80002a58 fcvt.d.w fa4, zero             #; ac1  = 0, (f:fpu) fa3  <-- 0.0
       0      625        M 0x80002a5c fcvt.d.w fa5, zero             #; ac1  = 0, (f:fpu) fa4  <-- 0.0
       0      626        M                                           #; (f:fpu) fa5  <-- 0.0
       0      634        M 0x80002a60 fcvt.d.w fa6, zero             #; ac1  = 0
       0      635        M 0x80002a64 fcvt.d.w fa7, zero             #; ac1  = 0, (f:fpu) fa6  <-- 0.0
       0      636        M 0x80002a68 fcvt.d.w fs2, zero             #; ac1  = 0, (f:fpu) fa7  <-- 0.0
       0      637        M 0x80002a6c fcvt.d.w fs3, zero             #; ac1  = 0, (f:fpu) fs2  <-- 0.0
       0      638        M                                           #; (f:fpu) fs3  <-- 0.0
       0      646        M 0x80002a70 fcvt.d.w fs4, zero             #; ac1  = 0
       0      647        M 0x80002a74 fcvt.d.w fs5, zero             #; ac1  = 0, (f:fpu) fs4  <-- 0.0
       0      648        M 0x80002a78 fcvt.d.w fs6, zero             #; ac1  = 0, (f:fpu) fs5  <-- 0.0
       0      649        M 0x80002a7c fcvt.d.w fs7, zero             #; ac1  = 0, (f:fpu) fs6  <-- 0.0
       0      650        M                                           #; (f:fpu) fs7  <-- 0.0
       0      658        M 0x80002a80 fcvt.d.w fs8, zero             #; ac1  = 0
       0      659        M 0x80002a84 fcvt.d.w fs9, zero             #; ac1  = 0, (f:fpu) fs8  <-- 0.0
       0      660        M 0x80002a88 fcvt.d.w fs10, zero            #; ac1  = 0, (f:fpu) fs9  <-- 0.0
       0      661        M 0x80002a8c fcvt.d.w fs11, zero            #; ac1  = 0, (f:fpu) fs10 <-- 0.0
       0      662        M                                           #; (f:fpu) fs11 <-- 0.0
       0      670        M 0x80002a90 fcvt.d.w ft8, zero             #; ac1  = 0
       0      671        M 0x80002a94 fcvt.d.w ft9, zero             #; ac1  = 0, (f:fpu) ft8  <-- 0.0
       0      672        M 0x80002a98 fcvt.d.w ft10, zero            #; ac1  = 0, (f:fpu) ft9  <-- 0.0
       0      673        M 0x80002a9c fcvt.d.w ft11, zero            #; ac1  = 0, (f:fpu) ft10 <-- 0.0
       0      674        M                                           #; (f:fpu) ft11 <-- 0.0
       0      681        M 0x80002aa0 addi    a3, a3, -8             #; a3  = 0x00120000, (wrb) a3  <-- 0x0011fff8
       0      682        M 0x80002aa4 sw      zero, 0(a3)            #; a3  = 0x0011fff8, 0 ~~> Word[0x0011fff8]
       0      683        M 0x80002aa8 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002aa8
       0      684        M 0x80002aac lw      t0, 900(t0)            #; t0  = 0x80002aa8, t0  <~~ Word[0x80002e2c]
       0      704        M                                           #; (lsu) t0  <-- 136
       0      705        M 0x80002ab0 sub     a3, a3, t0             #; a3  = 0x0011fff8, t0  = 136, (wrb) a3  <-- 0x0011ff70
       0      706        M 0x80002ab4 mv      a5, a3                 #; a3  = 0x0011ff70, (wrb) a5  <-- 0x0011ff70
       0      707        M 0x80002ab8 auipc   t2, 0x0                #; (wrb) t2  <-- 0x80002ab8
       0      708        M 0x80002abc lw      t2, 880(t2)            #; t2  = 0x80002ab8, t2  <~~ Word[0x80002e28]
       0      744        M                                           #; (lsu) t2  <-- 10
       0      745        M 0x80002ac0 sll     t0, a0, t2             #; a0  = 0, t2  = 10, (wrb) t0  <-- 0
       0      746        M 0x80002ac4 sll     t1, a1, t2             #; a1  = 8, t2  = 10, (wrb) t1  <-- 8192
       0      747        M 0x80002ac8 sub     sp, a3, t0             #; a3  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
       0      748        M 0x80002acc sub     a3, a3, t1             #; a3  = 0x0011ff70, t1  = 8192, (wrb) a3  <-- 0x0011df70
       0      749        M 0x80002ad0 slli    t0, a0, 3              #; a0  = 0, (wrb) t0  <-- 0
       0      750        M 0x80002ad4 slli    t1, a1, 3              #; a1  = 8, (wrb) t1  <-- 64
       0      751        M 0x80002ad8 sub     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
       0      752        M 0x80002adc sub     a3, a3, t1             #; a3  = 0x0011df70, t1  = 64, (wrb) a3  <-- 0x0011df30
       0      761        M 0x80002ae0 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002ae0
       0      762        M 0x80002ae4 addi    t0, t0, 1512           #; t0  = 0x80002ae0, (wrb) t0  <-- 0x800030c8
       0      763        M 0x80002ae8 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002ae8
       0      764        M 0x80002aec addi    t1, t1, 1504           #; t1  = 0x80002ae8, (wrb) t1  <-- 0x800030c8
       0      775        M 0x80002af0 auipc   t2, 0x0                #; (wrb) t2  <-- 0x80002af0
       0      776        M 0x80002af4 addi    t2, t2, 1496           #; t2  = 0x80002af0, (wrb) t2  <-- 0x800030c8
       0      777        M 0x80002af8 auipc   t3, 0x0                #; (wrb) t3  <-- 0x80002af8
       0      778        M 0x80002afc addi    t3, t3, 1504           #; t3  = 0x80002af8, (wrb) t3  <-- 0x800030d8
       0      787        M 0x80002b00 add     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0x800030c8, (wrb) sp  <-- 0x80123038
       0      788        M 0x80002b04 sub     sp, sp, t1             #; sp  = 0x80123038, t1  = 0x800030c8, (wrb) sp  <-- 0x0011ff70
       0      789        M 0x80002b08 add     sp, sp, t2             #; sp  = 0x0011ff70, t2  = 0x800030c8, (wrb) sp  <-- 0x80123038
       0      790        M 0x80002b0c sub     sp, sp, t3             #; sp  = 0x80123038, t3  = 0x800030d8, (wrb) sp  <-- 0x0011ff60
       0      799        M 0x80002b10 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
       0      800        M 0x80002b14 mv      tp, sp                 #; sp  = 0x0011ff60, (wrb) tp  <-- 0x0011ff60
       0      801        M 0x80002b18 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
       0      802        M 0x80002b1c mv      t4, tp                 #; tp  = 0x0011ff60, (wrb) t4  <-- 0x0011ff60
       0      811        M 0x80002b20 bge     t0, t1, pc + 24        #; t0  = 0x800030c8, t1  = 0x800030c8, taken, goto 0x80002b38
       0      823        M 0x80002b38 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002b38
       0      824        M 0x80002b3c addi    t0, t0, 1424           #; t0  = 0x80002b38, (wrb) t0  <-- 0x800030c8
       0      835        M 0x80002b40 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002b40
       0      836        M 0x80002b44 addi    t1, t1, 1432           #; t1  = 0x80002b40, (wrb) t1  <-- 0x800030d8
       0      837        M 0x80002b48 bge     t0, t1, pc + 20        #; t0  = 0x800030c8, t1  = 0x800030d8, not taken
       0      838        M 0x80002b4c sw      zero, 0(t4)            #; t4  = 0x0011ff60, 0 ~~> Word[0x0011ff60]
       0      847        M 0x80002b50 addi    t0, t0, 4              #; t0  = 0x800030c8, (wrb) t0  <-- 0x800030cc
       0      848        M 0x80002b54 addi    t4, t4, 4              #; t4  = 0x0011ff60, (wrb) t4  <-- 0x0011ff64
       0      849        M 0x80002b58 blt     t0, t2, pc - 12        #; t0  = 0x800030cc, t2  = 0x800030c8, not taken
       0      850        M 0x80002b5c addi    sp, sp, -20            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff4c
       0      862        M 0x80002b60 sw      a0, 0(sp)              #; sp  = 0x0011ff4c, 0 ~~> Word[0x0011ff4c]
       0      863        M 0x80002b64 sw      a1, 4(sp)              #; sp  = 0x0011ff4c, 8 ~~> Word[0x0011ff50]
       0      864        M 0x80002b68 sw      a2, 8(sp)              #; sp  = 0x0011ff4c, 0x00100000 ~~> Word[0x0011ff54]
       0      865        M 0x80002b6c sw      a3, 12(sp)             #; sp  = 0x0011ff4c, 0x0011df30 ~~> Word[0x0011ff58]
       0      875        M 0x80002b70 sw      a4, 16(sp)             #; sp  = 0x0011ff4c, 4132 ~~> Word[0x0011ff5c]
       0      876        M 0x80002b74 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002b74
       0      877        M 0x80002b78 jalr    ra, ra, -1644          #; ra  = 0x80002b74, (wrb) ra  <-- 0x80002b7c, goto 0x80002508
       0      899        M 0x80002508 sw      a5, 0(a5)              #; a5  = 0x0011ff70, 0x0011ff70 ~~> Word[0x0011ff70]
       0      900        M 0x8000250c sw      a4, 4(a5)              #; a5  = 0x0011ff70, 4132 ~~> Word[0x0011ff74]
       0      911        M 0x80002510 lw      t1, 8(a4)              #; a4  = 4132, t1  <~~ Word[0x0000102c]
       0      949        M                                           #; (lsu) t1  <-- 0
       0      950        M 0x80002514 sw      t1, 8(a5)              #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff78]
       0      951        M 0x80002518 lw      a6, 40(a4)             #; a4  = 4132, a6  <~~ Word[0x0000104c]
       0      989        M                                           #; (lsu) a6  <-- 1
       0      990        M 0x8000251c lw      a7, 44(a4)             #; a4  = 4132, a7  <~~ Word[0x00001050]
       0     1020        M                                           #; (lsu) a7  <-- 1
       0     1021        M 0x80002520 lw      t0, 4(a4)              #; a4  = 4132, t0  <~~ Word[0x00001028]
       0     1022        M 0x80002524 mul     a6, a7, a6             #; a7  = 1, a6  = 1
       0     1025        M                                           #; (acc) a0  <-- 0x02580533
       0     1060        M                                           #; (lsu) t0  <-- 8
       0     1061        M 0x80002528 mul     a0, a6, t0             #; a6  = 1, t0  = 8
       0     1064        M                                           #; (acc) a2  <-- 0x00a7a623
       0     1065        M 0x8000252c sw      a0, 12(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff7c]
       0     1066        M 0x80002530 csrr    a7, mhartid            #; mhartid = 0, (wrb) a7  <-- 0
       0     1067        M 0x80002534 sub     a0, a7, t1             #; a7  = 0, t1  = 0, (wrb) a0  <-- 0
       0     1068        M 0x80002538 divu    a0, a0, t0             #; a0  = 0, t0  = 8
       0     1071        M                                           #; (acc) a6  <-- 0x00a7a823
       0     1072        M 0x8000253c sw      a0, 16(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff80]
       0     1078        M 0x80002540 sw      a6, 20(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff84]
       0     1079        M 0x80002544 sw      t1, 24(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff88]
       0     1080        M 0x80002548 sw      a1, 28(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff8c]
       0     1081        M 0x8000254c lw      a0, 24(a4)             #; a4  = 4132, a0  <~~ Word[0x0000103c]
       0     1090        M 0x80002550 lui     a1, 0x10000            #; (wrb) a1  <-- 0x10000000
       0     1100        M                                           #; (lsu) a0  <-- 0x80000000
       0     1101        M 0x80002554 add     a0, a0, a1             #; a0  = 0x80000000, a1  = 0x10000000, (wrb) a0  <-- 0x90000000
       0     1102        M 0x80002558 sw      zero, 36(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff94]
       0     1103        M 0x8000255c sw      a0, 32(a5)             #; a5  = 0x0011ff70, 0x90000000 ~~> Word[0x0011ff90]
       0     1104        M 0x80002560 lw      a0, 32(a4)             #; a4  = 4132, a0  <~~ Word[0x00001044]
       0     1140        M                                           #; (lsu) a0  <-- 0
       0     1141        M 0x80002564 lw      a1, 36(a4)             #; a4  = 4132, a1  <~~ Word[0x00001048]
       0     1142        M 0x80002568 sw      a0, 40(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff98]
       0     1179        M                                           #; (lsu) a1  <-- 1
       0     1180        M 0x8000256c sw      a1, 44(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff9c]
       0     1181        M 0x80002570 sw      a2, 48(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffa0]
       0     1182        M 0x80002574 sw      zero, 52(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffa4]
       0     1183        M 0x80002578 sw      a3, 56(a5)             #; a5  = 0x0011ff70, 0x0011df30 ~~> Word[0x0011ffa8]
       0     1184        M 0x8000257c sw      zero, 60(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffac]
       0     1193        M 0x80002580 lw      a0, 16(a4)             #; a4  = 4132, a0  <~~ Word[0x00001034]
       0     1205        M                                           #; (lsu) a0  <-- 0x00020000
       0     1206        M 0x80002584 add     a6, a2, a0             #; a2  = 0x00100000, a0  = 0x00020000, (wrb) a6  <-- 0x00120000
       0     1207        M 0x80002588 addi    a1, a6, 400            #; a6  = 0x00120000, (wrb) a1  <-- 0x00120190
       0     1208        M 0x8000258c sw      a1, 112(a5)            #; a5  = 0x0011ff70, 0x00120190 ~~> Word[0x0011ffe0]
       0     1209        M 0x80002590 sltu    t0, a6, a0             #; a6  = 0x00120000, a0  = 0x00020000, (wrb) t0  <-- 0
       0     1210        M 0x80002594 srli    a1, a0, 1              #; a0  = 0x00020000, (wrb) a1  <-- 0x00010000
       0     1211        M 0x80002598 add     t1, a6, a1             #; a6  = 0x00120000, a1  = 0x00010000, (wrb) t1  <-- 0x00130000
       0     1212        M 0x8000259c sltu    a1, t1, a6             #; t1  = 0x00130000, a6  = 0x00120000, (wrb) a1  <-- 0
       0     1220        M 0x800025a0 add     a1, t0, a1             #; t0  = 0, a1  = 0, (wrb) a1  <-- 0
       0     1221        M 0x800025a4 sw      t1, 64(a5)             #; a5  = 0x0011ff70, 0x00130000 ~~> Word[0x0011ffb0]
       0     1222        M 0x800025a8 sw      a1, 68(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffb4]
       0     1223        M 0x800025ac slli    a0, a0, 1              #; a0  = 0x00020000, (wrb) a0  <-- 0x00040000
       0     1233        M 0x800025b0 add     a1, a0, a2             #; a0  = 0x00040000, a2  = 0x00100000, (wrb) a1  <-- 0x00140000
       0     1234        M 0x800025b4 sltu    a0, a1, a0             #; a1  = 0x00140000, a0  = 0x00040000, (wrb) a0  <-- 0
       0     1235        M 0x800025b8 sw      a1, 72(a5)             #; a5  = 0x0011ff70, 0x00140000 ~~> Word[0x0011ffb8]
       0     1236        M 0x800025bc sw      a0, 76(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffbc]
       0     1245        M 0x800025c0 sw      zero, 104(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd8]
       0     1246        M 0x800025c4 sw      zero, 108(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffdc]
       0     1247        M 0x800025c8 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1248        M 0x800025cc add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1257        M 0x800025d0 sw      a5, 0(a0)              #; a0  = 0x0011ff60, 0x0011ff70 ~~> Word[0x0011ff60]
       0     1258        M 0x800025d4 lw      a0, 0(a5)              #; a5  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1262        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1263        M 0x800025d8 lw      a1, 24(a0)             #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ff88]
       0     1266        M                                           #; (lsu) a1  <-- 0
       0     1267        M 0x800025dc lw      a0, 28(a0)             #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff8c]
       0     1269        M 0x800025e0 sub     a1, a7, a1             #; a7  = 0, a1  = 0, (wrb) a1  <-- 0
       0     1270        M                                           #; (lsu) a0  <-- 8
       0     1271        M 0x800025e4 remu    a0, a1, a0             #; a1  = 0, a0  = 8
       0     1272        M 0x800025e8 lui     a1, 0x0                #; (wrb) a1  <-- 0
       0     1273        M 0x800025ec add     a1, a1, tp             #; a1  = 0, tp  = 0x0011ff60, (wrb) a1  <-- 0x0011ff60
       0     1281        M 0x800025f0 sw      a0, 4(a1)              #; a1  = 0x0011ff60, 0 ~~> Word[0x0011ff64]
       0     1282        M 0x800025f4 li      a0, 1096               #; (wrb) a0  <-- 1096
       0     1283        M 0x800025f8 mul     a0, a7, a0             #; a7  = 0, a0  = 1096
       0     1284        M 0x800025fc auipc   a1, 0x1                #; (wrb) a1  <-- 0x800035fc
       0     1293        M 0x80002600 addi    a1, a1, -1128          #; a1  = 0x800035fc, (wrb) a1  <-- 0x80003194
       0     1294        M 0x80002604 add     a0, a0, a1             #; a0  = 0, a1  = 0x80003194, (wrb) a0  <-- 0x80003194
       0     1295        M 0x80002608 sw      zero, 0(a0)            #; a0  = 0x80003194, 0 ~~> Word[0x80003194]
       0     1296        M 0x8000260c lw      a7, 48(a4)             #; a4  = 4132, a7  <~~ Word[0x00001054]
       0     1344        M                                           #; (lsu) a7  <-- 0xffff0000
       0     1345        M 0x80002610 sw      a7, 116(a5)            #; a5  = 0x0011ff70, 0xffff0000 ~~> Word[0x0011ffe4]
       0     1346        M 0x80002614 sw      a6, 124(a5)            #; a5  = 0x0011ff70, 0x00120000 ~~> Word[0x0011ffec]
       0     1347        M 0x80002618 sw      zero, 120(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffe8]
       0     1348        M 0x8000261c addi    a4, a6, 384            #; a6  = 0x00120000, (wrb) a4  <-- 0x00120180
       0     1349        M 0x80002620 sw      a4, 128(a5)            #; a5  = 0x0011ff70, 0x00120180 ~~> Word[0x0011fff0]
       0     1350        M 0x80002624 addi    a0, a2, 7              #; a2  = 0x00100000, (wrb) a0  <-- 0x00100007
       0     1351        M 0x80002628 andi    a0, a0, -8             #; a0  = 0x00100007, (wrb) a0  <-- 0x00100000
       0     1352        M 0x8000262c sw      a0, 80(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc0]
       0     1362        M 0x80002630 sub     a2, a3, a2             #; a3  = 0x0011df30, a2  = 0x00100000, (wrb) a2  <-- 0x0001df30
       0     1363        M 0x80002634 sw      a2, 84(a5)             #; a5  = 0x0011ff70, 0x0001df30 ~~> Word[0x0011ffc4]
       0     1364        M 0x80002638 sw      a0, 88(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc8]
       0     1366        M 0x8000263c lw      a0, 0(a1)              #; a1  = 0x80003194, a0  <~~ Word[0x80003194]
       0     1377        M                                           #; (lsu) a0  <-- 0
       0     1378        M 0x80002640 addi    a0, a0, 1103           #; a0  = 0, (wrb) a0  <-- 1103
       0     1379        M 0x80002644 andi    a0, a0, -8             #; a0  = 1103, (wrb) a0  <-- 1096
       0     1380        M 0x80002648 sw      a0, 92(a5)             #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffcc]
       0     1381        M 0x8000264c sw      zero, 96(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd0]
       0     1387        M 0x80002650 sw      a0, 100(a5)            #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffd4]
       0     1388        M 0x80002654 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1389        M 0x80002658 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1390        M 0x8000265c sw      a7, 8(a0)              #; a0  = 0x0011ff60, 0xffff0000 ~~> Word[0x0011ff68]
       0     1399        M 0x80002660 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1400        M 0x80002664 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1401        M 0x80002668 sw      a4, 12(a0)             #; a0  = 0x0011ff60, 0x00120180 ~~> Word[0x0011ff6c]
       0     1402        M 0x8000266c ret                            #; ra  = 0x80002b7c, goto 0x80002b7c
       0     1415        M 0x80002b7c lw      a0, 0(sp)              #; sp  = 0x0011ff4c, a0  <~~ Word[0x0011ff4c]
       0     1418        M                                           #; (lsu) a0  <-- 0
       0     1419        M 0x80002b80 lw      a1, 4(sp)              #; sp  = 0x0011ff4c, a1  <~~ Word[0x0011ff50]
       0     1422        M                                           #; (lsu) a1  <-- 8
       0     1423        M 0x80002b84 lw      a2, 8(sp)              #; sp  = 0x0011ff4c, a2  <~~ Word[0x0011ff54]
       0     1426        M                                           #; (lsu) a2  <-- 0x00100000
       0     1427        M 0x80002b88 lw      a3, 12(sp)             #; sp  = 0x0011ff4c, a3  <~~ Word[0x0011ff58]
       0     1430        M                                           #; (lsu) a3  <-- 0x0011df30
       0     1431        M 0x80002b8c lw      a4, 16(sp)             #; sp  = 0x0011ff4c, a4  <~~ Word[0x0011ff5c]
       0     1432        M 0x80002b90 addi    sp, sp, 20             #; sp  = 0x0011ff4c, (wrb) sp  <-- 0x0011ff60
       0     1433        M 0x80002b94 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002b94
       0     1434        M 0x80002b98 addi    t0, t0, 60             #; t0  = 0x80002b94, (wrb) t0  <-- 0x80002bd0
       0     1435        M 0x80002b9c csrw    mtvec, t0              #; t0  = 0x80002bd0, (lsu) a4  <-- 4132
       0     1442        M 0x80002ba0 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002ba0
       0     1443        M 0x80002ba4 jalr    ra, ra, 544            #; ra  = 0x80002ba0, (wrb) ra  <-- 0x80002ba8, goto 0x80002dc0
       0     1456        M 0x80002dc0 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
       0     1457        M 0x80002dc4 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x80002ba8 ~~> Word[0x0011ff5c]
       0     1458        M 0x80002dc8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002dc8
       0     1459        M 0x80002dcc jalr    ra, ra, -1848          #; ra  = 0x80002dc8, (wrb) ra  <-- 0x80002dd0, goto 0x80002690
       0     1480        M 0x80002690 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1481        M 0x80002694 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1482        M 0x80002698 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     1485        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1486        M 0x8000269c lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1490        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1492        M 0x800026a0 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
       0     1493        M 0x800026a4 ret                            #; ra  = 0x80002dd0, goto 0x80002dd0
       0     1496        M                                           #; (lsu) a0  <-- 0x00120190
       0     1497        M 0x80002dd0 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
       0     1526        M                                           #; (lsu) a0  <-- 0
       0     1527        M 0x80002dd4 mv      zero, a0               #; a0  = 0
       0     1528        M 0x80002dd8 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
       0     1529        M 0x80002ddc addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
       0     1531        M                                           #; (lsu) ra  <-- 0x80002ba8
       0     1532        M 0x80002de0 ret                            #; ra  = 0x80002ba8, goto 0x80002ba8
       0     1536        M 0x80002ba8 auipc   ra, 0xffffe            #; (wrb) ra  <-- 0x80000ba8
       0     1537        M 0x80002bac jalr    ra, ra, -1396          #; ra  = 0x80000ba8, (wrb) ra  <-- 0x80002bb0, goto 0x80000634
       0     1542        M 0x80000634 addi    sp, sp, -32            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff40
       0     1543        M 0x80000638 sw      ra, 28(sp)             #; sp  = 0x0011ff40, 0x80002bb0 ~~> Word[0x0011ff5c]
       0     1544        M 0x8000063c sw      s0, 24(sp)             #; sp  = 0x0011ff40, 0 ~~> Word[0x0011ff58]
       0     1546        M 0x80000644 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1547        M 0x80000648 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
                         M 0x80000640 fsd     fs0, 16(sp)            #; 0.0 ~~> Doub[0x0011ff50]
       0     1548        M 0x8000064c lw      a1, 4(a0)              #; a0  = 0x0011ff60, a1  <~~ Word[0x0011ff64]
       0     1551        M                                           #; (lsu) a1  <-- 0
       0     1558        M 0x80000650 li      a0, 0                  #; (wrb) a0  <-- 0
       0     1559        M 0x80000654 bnez    a1, pc + 588           #; a1  = 0, not taken
       0     1560        M 0x80000658 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1561        M 0x8000065c add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1570        M 0x80000660 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     1573        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1574        M 0x80000664 lw      a2, 0(a0)              #; a0  = 0x0011ff70, a2  <~~ Word[0x0011ff70]
       0     1577        M                                           #; (lsu) a2  <-- 0x0011ff70
       0     1578        M 0x80000668 lw      a1, 88(a2)             #; a2  = 0x0011ff70, a1  <~~ Word[0x0011ffc8]
       0     1581        M                                           #; (lsu) a1  <-- 0x00100000
       0     1582        M 0x8000066c lw      a0, 80(a2)             #; a2  = 0x0011ff70, a0  <~~ Word[0x0011ffc0]
       0     1585        M                                           #; (lsu) a0  <-- 0x00100000
       0     1586        M 0x80000670 lw      a3, 84(a2)             #; a2  = 0x0011ff70, a3  <~~ Word[0x0011ffc4]
       0     1587        M 0x80000674 addi    a4, a1, 800            #; a1  = 0x00100000, (wrb) a4  <-- 0x00100320
       0     1589        M                                           #; (lsu) a3  <-- 0x0001df30
       0     1590        M 0x80000678 add     a3, a3, a0             #; a3  = 0x0001df30, a0  = 0x00100000, (wrb) a3  <-- 0x0011df30
       0     1591        M 0x8000067c bgeu    a3, a4, pc + 24        #; a3  = 0x0011df30, a4  = 0x00100320, taken, goto 0x80000694
       0     1621        M 0x80000694 mv      a0, a1                 #; a1  = 0x00100000, (wrb) a0  <-- 0x00100000
       0     1622        M 0x80000698 sw      a4, 88(a2)             #; a2  = 0x0011ff70, 0x00100320 ~~> Word[0x0011ffc8]
       0     1623        M 0x8000069c addi    a5, a1, 1600           #; a1  = 0x00100000, (wrb) a5  <-- 0x00100640
       0     1633        M 0x800006a0 mv      a1, a4                 #; a4  = 0x00100320, (wrb) a1  <-- 0x00100320
       0     1634        M 0x800006a4 bgeu    a3, a5, pc - 24        #; a3  = 0x0011df30, a5  = 0x00100640, taken, goto 0x8000068c
       0     1635        M 0x8000068c sw      a5, 88(a2)             #; a2  = 0x0011ff70, 0x00100640 ~~> Word[0x0011ffc8]
       0     1636        M 0x80000690 j       pc + 0x1c              #; goto 0x800006ac
       0     1637        M 0x800006ac srli    a2, a0, 20             #; a0  = 0x00100000, (wrb) a2  <-- 1
       0     1649        M 0x800006b0 snez    a2, a2                 #; a2  = 1, (wrb) a2  <-- 1
       0     1650        M 0x800006b4 lui     a3, 0x120              #; (wrb) a3  <-- 0x00120000
       0     1651        M 0x800006b8 addi    a3, a3, -791           #; a3  = 0x00120000, (wrb) a3  <-- 0x0011fce9
       0     1652        M 0x800006bc sltu    a3, a0, a3             #; a0  = 0x00100000, a3  = 0x0011fce9, (wrb) a3  <-- 1
       0     1661        M 0x800006c0 and     a2, a2, a3             #; a2  = 1, a3  = 1, (wrb) a2  <-- 1
       0     1662        M 0x800006c4 beqz    a2, pc + 108           #; a2  = 1, not taken
       0     1663        M 0x800006c8 li      a2, 0                  #; (wrb) a2  <-- 0
       0     1664        M 0x800006cc li      a3, 8                  #; (wrb) a3  <-- 8
       0     1673        M 0x800006d0 li      a4, 99                 #; (wrb) a4  <-- 99
       0     1674        M 0x800006d4 li      a5, 64                 #; (wrb) a5  <-- 64
       0     1675        M 0x800006d8 scfgw   a4, a5                 #; a4  = 99, a5  = 64
       0     1676        M 0x800006dc li      a4, 192                #; (wrb) a4  <-- 192
       0     1685        M 0x800006e0 scfgw   a3, a4                 #; a3  = 8, a4  = 192
       0     1686        M 0x800006e4 li      a3, 32                 #; (wrb) a3  <-- 32
       0     1687        M 0x800006e8 scfgw   zero, a3               #; a3  = 32
       0     1688        M 0x800006ec scfgwi  a0, 896                #; a0  = 0x00100000
       0     1698        M 0x800006f4 li      a3, 100                #; (wrb) a3  <-- 100
                         M 0x800006f0 csrrsi  a3, ssr, 1             #; 
       0     1699        M 0x800006f8 lui     a4, 0xccccd            #; (wrb) a4  <-- 0xccccd000
       0     1700        M 0x800006fc addi    a4, a4, -819           #; a4  = 0xccccd000, (wrb) a4  <-- 0xcccccccd
       0     1709        M 0x80000700 li      a6, 10                 #; (wrb) a6  <-- 10
       0     1710        M 0x80000704 mulhu   a5, a2, a4             #; a2  = 0, a4  = 0xcccccccd
       0     1713        M                                           #; (acc) a5  <-- 0x0037d793
       0     1714        M 0x80000708 srli    a5, a5, 3              #; a5  = 0, (wrb) a5  <-- 0
       0     1715        M 0x8000070c mul     a5, a5, a6             #; a5  = 0, a6  = 10
       0     1721        M 0x80000710 sub     a5, a2, a5             #; a2  = 0, a5  = 0, (wrb) a5  <-- 0
       0     1723        M 0x80000714 fcvt.d.wu ft3, a5              #; ac1  = 0
       0     1724        M 0x8000071c addi    a3, a3, -1             #; a3  = 100, (wrb) a3  <-- 99
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     1725        M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     1726        M                                           #; (f:fpu) ft0  <-- 0.0
       0     1733        M 0x80000720 addi    a2, a2, 1              #; a2  = 0, (wrb) a2  <-- 1
       0     1734        M 0x80000724 bnez    a3, pc - 32            #; a3  = 99, taken, goto 0x80000704
       0     1735        M 0x80000704 mulhu   a5, a2, a4             #; a2  = 1, a4  = 0xcccccccd
       0     1738        M                                           #; (acc) a5  <-- 0x0037d793
       0     1739        M 0x80000708 srli    a5, a5, 3              #; a5  = 0, (wrb) a5  <-- 0
       0     1740        M 0x8000070c mul     a5, a5, a6             #; a5  = 0, a6  = 10
       0     1743        M                                           #; (acc) a5  <-- 0x40f607b3
       0     1744        M 0x80000710 sub     a5, a2, a5             #; a2  = 1, a5  = 0, (wrb) a5  <-- 1
       0     1746        M 0x80000714 fcvt.d.wu ft3, a5              #; ac1  = 1
       0     1747        M 0x8000071c addi    a3, a3, -1             #; a3  = 99, (wrb) a3  <-- 98
                         M                                           #; (f:fpu) ft3  <-- 1.0
       0     1748        M 0x80000720 addi    a2, a2, 1              #; a2  = 1, (wrb) a2  <-- 2
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
       0     1749        M 0x80000724 bnez    a3, pc - 32            #; a3  = 98, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 1.0
       0     1750        M 0x80000704 mulhu   a5, a2, a4             #; a2  = 2, a4  = 0xcccccccd
       0     1753        M                                           #; (acc) a5  <-- 0x0037d793
       0     1754        M 0x80000708 srli    a5, a5, 3              #; a5  = 1, (wrb) a5  <-- 0
       0     1755        M 0x8000070c mul     a5, a5, a6             #; a5  = 0, a6  = 10
       0     1758        M                                           #; (acc) a5  <-- 0x40f607b3
       0     1759        M 0x80000710 sub     a5, a2, a5             #; a2  = 2, a5  = 0, (wrb) a5  <-- 2
       0     1761        M 0x80000714 fcvt.d.wu ft3, a5              #; ac1  = 2
       0     1762        M 0x8000071c addi    a3, a3, -1             #; a3  = 98, (wrb) a3  <-- 97
                         M                                           #; (f:fpu) ft3  <-- 2.0
       0     1763        M 0x80000720 addi    a2, a2, 1              #; a2  = 2, (wrb) a2  <-- 3
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
       0     1764        M 0x80000724 bnez    a3, pc - 32            #; a3  = 97, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 2.0
       0     1765        M 0x80000704 mulhu   a5, a2, a4             #; a2  = 3, a4  = 0xcccccccd
       0     1768        M                                           #; (acc) a5  <-- 0x0037d793
       0     1769        M 0x80000708 srli    a5, a5, 3              #; a5  = 2, (wrb) a5  <-- 0
       0     1770        M 0x8000070c mul     a5, a5, a6             #; a5  = 0, a6  = 10
       0     1773        M                                           #; (acc) a5  <-- 0x40f607b3
       0     1774        M 0x80000710 sub     a5, a2, a5             #; a2  = 3, a5  = 0, (wrb) a5  <-- 3
       0     1776        M 0x80000714 fcvt.d.wu ft3, a5              #; ac1  = 3
       0     1777        M 0x8000071c addi    a3, a3, -1             #; a3  = 97, (wrb) a3  <-- 96
                         M                                           #; (f:fpu) ft3  <-- 3.0
       0     1778        M 0x80000720 addi    a2, a2, 1              #; a2  = 3, (wrb) a2  <-- 4
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
       0     1779        M 0x80000724 bnez    a3, pc - 32            #; a3  = 96, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 3.0
       0     1780        M 0x80000704 mulhu   a5, a2, a4             #; a2  = 4, a4  = 0xcccccccd
       0     1783        M                                           #; (acc) a5  <-- 0x0037d793
       0     1784        M 0x80000708 srli    a5, a5, 3              #; a5  = 3, (wrb) a5  <-- 0
       0     1785        M 0x8000070c mul     a5, a5, a6             #; a5  = 0, a6  = 10
       0     1788        M                                           #; (acc) a5  <-- 0x40f607b3
       0     1789        M 0x80000710 sub     a5, a2, a5             #; a2  = 4, a5  = 0, (wrb) a5  <-- 4
       0     1791        M 0x80000714 fcvt.d.wu ft3, a5              #; ac1  = 4
       0     1792        M 0x8000071c addi    a3, a3, -1             #; a3  = 96, (wrb) a3  <-- 95
                         M                                           #; (f:fpu) ft3  <-- 4.0
       0     1793        M 0x80000720 addi    a2, a2, 1              #; a2  = 4, (wrb) a2  <-- 5
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
       0     1794        M 0x80000724 bnez    a3, pc - 32            #; a3  = 95, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 4.0
       0     1795        M 0x80000704 mulhu   a5, a2, a4             #; a2  = 5, a4  = 0xcccccccd
       0     1798        M                                           #; (acc) a5  <-- 0x0037d793
       0     1799        M 0x80000708 srli    a5, a5, 3              #; a5  = 4, (wrb) a5  <-- 0
       0     1800        M 0x8000070c mul     a5, a5, a6             #; a5  = 0, a6  = 10
       0     1803        M                                           #; (acc) a5  <-- 0x40f607b3
       0     1804        M 0x80000710 sub     a5, a2, a5             #; a2  = 5, a5  = 0, (wrb) a5  <-- 5
       0     1806        M 0x80000714 fcvt.d.wu ft3, a5              #; ac1  = 5
       0     1807        M 0x8000071c addi    a3, a3, -1             #; a3  = 95, (wrb) a3  <-- 94
                         M                                           #; (f:fpu) ft3  <-- 5.0
       0     1808        M 0x80000720 addi    a2, a2, 1              #; a2  = 5, (wrb) a2  <-- 6
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
       0     1809        M 0x80000724 bnez    a3, pc - 32            #; a3  = 94, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 5.0
       0     1810        M 0x80000704 mulhu   a5, a2, a4             #; a2  = 6, a4  = 0xcccccccd
       0     1813        M                                           #; (acc) a5  <-- 0x0037d793
       0     1814        M 0x80000708 srli    a5, a5, 3              #; a5  = 4, (wrb) a5  <-- 0
       0     1815        M 0x8000070c mul     a5, a5, a6             #; a5  = 0, a6  = 10
       0     1818        M                                           #; (acc) a5  <-- 0x40f607b3
       0     1819        M 0x80000710 sub     a5, a2, a5             #; a2  = 6, a5  = 0, (wrb) a5  <-- 6
       0     1821        M 0x80000714 fcvt.d.wu ft3, a5              #; ac1  = 6
       0     1822        M 0x8000071c addi    a3, a3, -1             #; a3  = 94, (wrb) a3  <-- 93
                         M                                           #; (f:fpu) ft3  <-- 6.0
       0     1823        M 0x80000720 addi    a2, a2, 1              #; a2  = 6, (wrb) a2  <-- 7
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
       0     1824        M 0x80000724 bnez    a3, pc - 32            #; a3  = 93, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 6.0
       0     1825        M 0x80000704 mulhu   a5, a2, a4             #; a2  = 7, a4  = 0xcccccccd
       0     1828        M                                           #; (acc) a5  <-- 0x0037d793
       0     1829        M 0x80000708 srli    a5, a5, 3              #; a5  = 5, (wrb) a5  <-- 0
       0     1830        M 0x8000070c mul     a5, a5, a6             #; a5  = 0, a6  = 10
       0     1833        M                                           #; (acc) a5  <-- 0x40f607b3
       0     1834        M 0x80000710 sub     a5, a2, a5             #; a2  = 7, a5  = 0, (wrb) a5  <-- 7
       0     1836        M 0x80000714 fcvt.d.wu ft3, a5              #; ac1  = 7
       0     1837        M 0x8000071c addi    a3, a3, -1             #; a3  = 93, (wrb) a3  <-- 92
                         M                                           #; (f:fpu) ft3  <-- 7.0
       0     1838        M 0x80000720 addi    a2, a2, 1              #; a2  = 7, (wrb) a2  <-- 8
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
       0     1839        M 0x80000724 bnez    a3, pc - 32            #; a3  = 92, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 7.0
       0     1840        M 0x80000704 mulhu   a5, a2, a4             #; a2  = 8, a4  = 0xcccccccd
       0     1843        M                                           #; (acc) a5  <-- 0x0037d793
       0     1844        M 0x80000708 srli    a5, a5, 3              #; a5  = 6, (wrb) a5  <-- 0
       0     1845        M 0x8000070c mul     a5, a5, a6             #; a5  = 0, a6  = 10
       0     1848        M                                           #; (acc) a5  <-- 0x40f607b3
       0     1849        M 0x80000710 sub     a5, a2, a5             #; a2  = 8, a5  = 0, (wrb) a5  <-- 8
       0     1851        M 0x80000714 fcvt.d.wu ft3, a5              #; ac1  = 8
       0     1852        M 0x8000071c addi    a3, a3, -1             #; a3  = 92, (wrb) a3  <-- 91
                         M                                           #; (f:fpu) ft3  <-- 8.0
       0     1853        M 0x80000720 addi    a2, a2, 1              #; a2  = 8, (wrb) a2  <-- 9
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
       0     1854        M 0x80000724 bnez    a3, pc - 32            #; a3  = 91, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 8.0
       0     1855        M 0x80000704 mulhu   a5, a2, a4             #; a2  = 9, a4  = 0xcccccccd
       0     1858        M                                           #; (acc) a5  <-- 0x0037d793
       0     1859        M 0x80000708 srli    a5, a5, 3              #; a5  = 7, (wrb) a5  <-- 0
       0     1860        M 0x8000070c mul     a5, a5, a6             #; a5  = 0, a6  = 10
       0     1863        M                                           #; (acc) a5  <-- 0x40f607b3
       0     1864        M 0x80000710 sub     a5, a2, a5             #; a2  = 9, a5  = 0, (wrb) a5  <-- 9
       0     1866        M 0x80000714 fcvt.d.wu ft3, a5              #; ac1  = 9
       0     1867        M 0x8000071c addi    a3, a3, -1             #; a3  = 91, (wrb) a3  <-- 90
                         M                                           #; (f:fpu) ft3  <-- 9.0
       0     1868        M 0x80000720 addi    a2, a2, 1              #; a2  = 9, (wrb) a2  <-- 10
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
       0     1869        M 0x80000724 bnez    a3, pc - 32            #; a3  = 90, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 9.0
       0     1870        M 0x80000704 mulhu   a5, a2, a4             #; a2  = 10, a4  = 0xcccccccd
       0     1873        M                                           #; (acc) a5  <-- 0x0037d793
       0     1874        M 0x80000708 srli    a5, a5, 3              #; a5  = 8, (wrb) a5  <-- 1
       0     1875        M 0x8000070c mul     a5, a5, a6             #; a5  = 1, a6  = 10
       0     1878        M                                           #; (acc) a5  <-- 0x40f607b3
       0     1879        M 0x80000710 sub     a5, a2, a5             #; a2  = 10, a5  = 10, (wrb) a5  <-- 0
       0     1881        M 0x80000714 fcvt.d.wu ft3, a5              #; ac1  = 0
       0     1882        M 0x8000071c addi    a3, a3, -1             #; a3  = 90, (wrb) a3  <-- 89
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     1883        M 0x80000720 addi    a2, a2, 1              #; a2  = 10, (wrb) a2  <-- 11
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     1884        M 0x80000724 bnez    a3, pc - 32            #; a3  = 89, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     1885        M 0x80000704 mulhu   a5, a2, a4             #; a2  = 11, a4  = 0xcccccccd
       0     1888        M                                           #; (acc) a5  <-- 0x0037d793
       0     1889        M 0x80000708 srli    a5, a5, 3              #; a5  = 8, (wrb) a5  <-- 1
       0     1890        M 0x8000070c mul     a5, a5, a6             #; a5  = 1, a6  = 10
       0     1893        M                                           #; (acc) a5  <-- 0x40f607b3
       0     1894        M 0x80000710 sub     a5, a2, a5             #; a2  = 11, a5  = 10, (wrb) a5  <-- 1
       0     1896        M 0x80000714 fcvt.d.wu ft3, a5              #; ac1  = 1
       0     1897        M 0x8000071c addi    a3, a3, -1             #; a3  = 89, (wrb) a3  <-- 88
                         M                                           #; (f:fpu) ft3  <-- 1.0
       0     1898        M 0x80000720 addi    a2, a2, 1              #; a2  = 11, (wrb) a2  <-- 12
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
       0     1899        M 0x80000724 bnez    a3, pc - 32            #; a3  = 88, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 1.0
       0     1900        M 0x80000704 mulhu   a5, a2, a4             #; a2  = 12, a4  = 0xcccccccd
       0     1903        M                                           #; (acc) a5  <-- 0x0037d793
       0     1904        M 0x80000708 srli    a5, a5, 3              #; a5  = 9, (wrb) a5  <-- 1
       0     1905        M 0x8000070c mul     a5, a5, a6             #; a5  = 1, a6  = 10
       0     1908        M                                           #; (acc) a5  <-- 0x40f607b3
       0     1909        M 0x80000710 sub     a5, a2, a5             #; a2  = 12, a5  = 10, (wrb) a5  <-- 2
       0     1911        M 0x80000714 fcvt.d.wu ft3, a5              #; ac1  = 2
       0     1912        M 0x8000071c addi    a3, a3, -1             #; a3  = 88, (wrb) a3  <-- 87
                         M                                           #; (f:fpu) ft3  <-- 2.0
       0     1913        M 0x80000720 addi    a2, a2, 1              #; a2  = 12, (wrb) a2  <-- 13
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
       0     1914        M 0x80000724 bnez    a3, pc - 32            #; a3  = 87, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 2.0
       0     1915        M 0x80000704 mulhu   a5, a2, a4             #; a2  = 13, a4  = 0xcccccccd
       0     1918        M                                           #; (acc) a5  <-- 0x0037d793
       0     1919        M 0x80000708 srli    a5, a5, 3              #; a5  = 10, (wrb) a5  <-- 1
       0     1920        M 0x8000070c mul     a5, a5, a6             #; a5  = 1, a6  = 10
       0     1923        M                                           #; (acc) a5  <-- 0x40f607b3
       0     1924        M 0x80000710 sub     a5, a2, a5             #; a2  = 13, a5  = 10, (wrb) a5  <-- 3
       0     1926        M 0x80000714 fcvt.d.wu ft3, a5              #; ac1  = 3
       0     1927        M 0x8000071c addi    a3, a3, -1             #; a3  = 87, (wrb) a3  <-- 86
                         M                                           #; (f:fpu) ft3  <-- 3.0
       0     1928        M 0x80000720 addi    a2, a2, 1              #; a2  = 13, (wrb) a2  <-- 14
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
       0     1929        M 0x80000724 bnez    a3, pc - 32            #; a3  = 86, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 3.0
       0     1930        M 0x80000704 mulhu   a5, a2, a4             #; a2  = 14, a4  = 0xcccccccd
       0     1933        M                                           #; (acc) a5  <-- 0x0037d793
       0     1934        M 0x80000708 srli    a5, a5, 3              #; a5  = 11, (wrb) a5  <-- 1
       0     1935        M 0x8000070c mul     a5, a5, a6             #; a5  = 1, a6  = 10
       0     1938        M                                           #; (acc) a5  <-- 0x40f607b3
       0     1939        M 0x80000710 sub     a5, a2, a5             #; a2  = 14, a5  = 10, (wrb) a5  <-- 4
       0     1941        M 0x80000714 fcvt.d.wu ft3, a5              #; ac1  = 4
       0     1942        M 0x8000071c addi    a3, a3, -1             #; a3  = 86, (wrb) a3  <-- 85
                         M                                           #; (f:fpu) ft3  <-- 4.0
       0     1943        M 0x80000720 addi    a2, a2, 1              #; a2  = 14, (wrb) a2  <-- 15
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
       0     1944        M 0x80000724 bnez    a3, pc - 32            #; a3  = 85, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 4.0
       0     1945        M 0x80000704 mulhu   a5, a2, a4             #; a2  = 15, a4  = 0xcccccccd
       0     1948        M                                           #; (acc) a5  <-- 0x0037d793
       0     1949        M 0x80000708 srli    a5, a5, 3              #; a5  = 12, (wrb) a5  <-- 1
       0     1950        M 0x8000070c mul     a5, a5, a6             #; a5  = 1, a6  = 10
       0     1953        M                                           #; (acc) a5  <-- 0x40f607b3
       0     1954        M 0x80000710 sub     a5, a2, a5             #; a2  = 15, a5  = 10, (wrb) a5  <-- 5
       0     1956        M 0x80000714 fcvt.d.wu ft3, a5              #; ac1  = 5
       0     1957        M 0x8000071c addi    a3, a3, -1             #; a3  = 85, (wrb) a3  <-- 84
                         M                                           #; (f:fpu) ft3  <-- 5.0
       0     1958        M 0x80000720 addi    a2, a2, 1              #; a2  = 15, (wrb) a2  <-- 16
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
       0     1959        M 0x80000724 bnez    a3, pc - 32            #; a3  = 84, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 5.0
       0     1960        M 0x80000704 mulhu   a5, a2, a4             #; a2  = 16, a4  = 0xcccccccd
       0     1963        M                                           #; (acc) a5  <-- 0x0037d793
       0     1964        M 0x80000708 srli    a5, a5, 3              #; a5  = 12, (wrb) a5  <-- 1
       0     1965        M 0x8000070c mul     a5, a5, a6             #; a5  = 1, a6  = 10
       0     1968        M                                           #; (acc) a5  <-- 0x40f607b3
       0     1969        M 0x80000710 sub     a5, a2, a5             #; a2  = 16, a5  = 10, (wrb) a5  <-- 6
       0     1971        M 0x80000714 fcvt.d.wu ft3, a5              #; ac1  = 6
       0     1972        M 0x8000071c addi    a3, a3, -1             #; a3  = 84, (wrb) a3  <-- 83
                         M                                           #; (f:fpu) ft3  <-- 6.0
       0     1973        M 0x80000720 addi    a2, a2, 1              #; a2  = 16, (wrb) a2  <-- 17
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
       0     1974        M 0x80000724 bnez    a3, pc - 32            #; a3  = 83, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 6.0
       0     1975        M 0x80000704 mulhu   a5, a2, a4             #; a2  = 17, a4  = 0xcccccccd
       0     1978        M                                           #; (acc) a5  <-- 0x0037d793
       0     1979        M 0x80000708 srli    a5, a5, 3              #; a5  = 13, (wrb) a5  <-- 1
       0     1980        M 0x8000070c mul     a5, a5, a6             #; a5  = 1, a6  = 10
       0     1983        M                                           #; (acc) a5  <-- 0x40f607b3
       0     1984        M 0x80000710 sub     a5, a2, a5             #; a2  = 17, a5  = 10, (wrb) a5  <-- 7
       0     1986        M 0x80000714 fcvt.d.wu ft3, a5              #; ac1  = 7
       0     1987        M 0x8000071c addi    a3, a3, -1             #; a3  = 83, (wrb) a3  <-- 82
                         M                                           #; (f:fpu) ft3  <-- 7.0
       0     1988        M 0x80000720 addi    a2, a2, 1              #; a2  = 17, (wrb) a2  <-- 18
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
       0     1989        M 0x80000724 bnez    a3, pc - 32            #; a3  = 82, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 7.0
       0     1990        M 0x80000704 mulhu   a5, a2, a4             #; a2  = 18, a4  = 0xcccccccd
       0     1993        M                                           #; (acc) a5  <-- 0x0037d793
       0     1994        M 0x80000708 srli    a5, a5, 3              #; a5  = 14, (wrb) a5  <-- 1
       0     1995        M 0x8000070c mul     a5, a5, a6             #; a5  = 1, a6  = 10
       0     1998        M                                           #; (acc) a5  <-- 0x40f607b3
       0     1999        M 0x80000710 sub     a5, a2, a5             #; a2  = 18, a5  = 10, (wrb) a5  <-- 8
       0     2001        M 0x80000714 fcvt.d.wu ft3, a5              #; ac1  = 8
       0     2002        M 0x8000071c addi    a3, a3, -1             #; a3  = 82, (wrb) a3  <-- 81
                         M                                           #; (f:fpu) ft3  <-- 8.0
       0     2003        M 0x80000720 addi    a2, a2, 1              #; a2  = 18, (wrb) a2  <-- 19
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
       0     2004        M 0x80000724 bnez    a3, pc - 32            #; a3  = 81, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 8.0
       0     2005        M 0x80000704 mulhu   a5, a2, a4             #; a2  = 19, a4  = 0xcccccccd
       0     2008        M                                           #; (acc) a5  <-- 0x0037d793
       0     2009        M 0x80000708 srli    a5, a5, 3              #; a5  = 15, (wrb) a5  <-- 1
       0     2010        M 0x8000070c mul     a5, a5, a6             #; a5  = 1, a6  = 10
       0     2013        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2014        M 0x80000710 sub     a5, a2, a5             #; a2  = 19, a5  = 10, (wrb) a5  <-- 9
       0     2016        M 0x80000714 fcvt.d.wu ft3, a5              #; ac1  = 9
       0     2017        M 0x8000071c addi    a3, a3, -1             #; a3  = 81, (wrb) a3  <-- 80
                         M                                           #; (f:fpu) ft3  <-- 9.0
       0     2018        M 0x80000720 addi    a2, a2, 1              #; a2  = 19, (wrb) a2  <-- 20
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
       0     2019        M 0x80000724 bnez    a3, pc - 32            #; a3  = 80, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 9.0
       0     2020        M 0x80000704 mulhu   a5, a2, a4             #; a2  = 20, a4  = 0xcccccccd
       0     2023        M                                           #; (acc) a5  <-- 0x0037d793
       0     2024        M 0x80000708 srli    a5, a5, 3              #; a5  = 16, (wrb) a5  <-- 2
       0     2025        M 0x8000070c mul     a5, a5, a6             #; a5  = 2, a6  = 10
       0     2028        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2029        M 0x80000710 sub     a5, a2, a5             #; a2  = 20, a5  = 20, (wrb) a5  <-- 0
       0     2031        M 0x80000714 fcvt.d.wu ft3, a5              #; ac1  = 0
       0     2032        M 0x8000071c addi    a3, a3, -1             #; a3  = 80, (wrb) a3  <-- 79
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     2033        M 0x80000720 addi    a2, a2, 1              #; a2  = 20, (wrb) a2  <-- 21
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     2034        M 0x80000724 bnez    a3, pc - 32            #; a3  = 79, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     2035        M 0x80000704 mulhu   a5, a2, a4             #; a2  = 21, a4  = 0xcccccccd
       0     2038        M                                           #; (acc) a5  <-- 0x0037d793
       0     2039        M 0x80000708 srli    a5, a5, 3              #; a5  = 16, (wrb) a5  <-- 2
       0     2040        M 0x8000070c mul     a5, a5, a6             #; a5  = 2, a6  = 10
       0     2043        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2044        M 0x80000710 sub     a5, a2, a5             #; a2  = 21, a5  = 20, (wrb) a5  <-- 1
       0     2046        M 0x80000714 fcvt.d.wu ft3, a5              #; ac1  = 1
       0     2047        M 0x8000071c addi    a3, a3, -1             #; a3  = 79, (wrb) a3  <-- 78
                         M                                           #; (f:fpu) ft3  <-- 1.0
       0     2048        M 0x80000720 addi    a2, a2, 1              #; a2  = 21, (wrb) a2  <-- 22
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
       0     2049        M 0x80000724 bnez    a3, pc - 32            #; a3  = 78, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 1.0
       0     2050        M 0x80000704 mulhu   a5, a2, a4             #; a2  = 22, a4  = 0xcccccccd
       0     2053        M                                           #; (acc) a5  <-- 0x0037d793
       0     2054        M 0x80000708 srli    a5, a5, 3              #; a5  = 17, (wrb) a5  <-- 2
       0     2055        M 0x8000070c mul     a5, a5, a6             #; a5  = 2, a6  = 10
       0     2058        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2059        M 0x80000710 sub     a5, a2, a5             #; a2  = 22, a5  = 20, (wrb) a5  <-- 2
       0     2061        M 0x80000714 fcvt.d.wu ft3, a5              #; ac1  = 2
       0     2062        M 0x8000071c addi    a3, a3, -1             #; a3  = 78, (wrb) a3  <-- 77
                         M                                           #; (f:fpu) ft3  <-- 2.0
       0     2063        M 0x80000720 addi    a2, a2, 1              #; a2  = 22, (wrb) a2  <-- 23
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
       0     2064        M 0x80000724 bnez    a3, pc - 32            #; a3  = 77, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 2.0
       0     2065        M 0x80000704 mulhu   a5, a2, a4             #; a2  = 23, a4  = 0xcccccccd
       0     2068        M                                           #; (acc) a5  <-- 0x0037d793
       0     2069        M 0x80000708 srli    a5, a5, 3              #; a5  = 18, (wrb) a5  <-- 2
       0     2070        M 0x8000070c mul     a5, a5, a6             #; a5  = 2, a6  = 10
       0     2073        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2074        M 0x80000710 sub     a5, a2, a5             #; a2  = 23, a5  = 20, (wrb) a5  <-- 3
       0     2076        M 0x80000714 fcvt.d.wu ft3, a5              #; ac1  = 3
       0     2077        M 0x8000071c addi    a3, a3, -1             #; a3  = 77, (wrb) a3  <-- 76
                         M                                           #; (f:fpu) ft3  <-- 3.0
       0     2078        M 0x80000720 addi    a2, a2, 1              #; a2  = 23, (wrb) a2  <-- 24
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
       0     2079        M 0x80000724 bnez    a3, pc - 32            #; a3  = 76, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 3.0
       0     2080        M 0x80000704 mulhu   a5, a2, a4             #; a2  = 24, a4  = 0xcccccccd
       0     2083        M                                           #; (acc) a5  <-- 0x0037d793
       0     2084        M 0x80000708 srli    a5, a5, 3              #; a5  = 19, (wrb) a5  <-- 2
       0     2085        M 0x8000070c mul     a5, a5, a6             #; a5  = 2, a6  = 10
       0     2088        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2089        M 0x80000710 sub     a5, a2, a5             #; a2  = 24, a5  = 20, (wrb) a5  <-- 4
       0     2091        M 0x80000714 fcvt.d.wu ft3, a5              #; ac1  = 4
       0     2092        M 0x8000071c addi    a3, a3, -1             #; a3  = 76, (wrb) a3  <-- 75
                         M                                           #; (f:fpu) ft3  <-- 4.0
       0     2093        M 0x80000720 addi    a2, a2, 1              #; a2  = 24, (wrb) a2  <-- 25
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
       0     2094        M 0x80000724 bnez    a3, pc - 32            #; a3  = 75, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 4.0
       0     2095        M 0x80000704 mulhu   a5, a2, a4             #; a2  = 25, a4  = 0xcccccccd
       0     2098        M                                           #; (acc) a5  <-- 0x0037d793
       0     2099        M 0x80000708 srli    a5, a5, 3              #; a5  = 20, (wrb) a5  <-- 2
       0     2100        M 0x8000070c mul     a5, a5, a6             #; a5  = 2, a6  = 10
       0     2103        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2104        M 0x80000710 sub     a5, a2, a5             #; a2  = 25, a5  = 20, (wrb) a5  <-- 5
       0     2106        M 0x80000714 fcvt.d.wu ft3, a5              #; ac1  = 5
       0     2107        M 0x8000071c addi    a3, a3, -1             #; a3  = 75, (wrb) a3  <-- 74
                         M                                           #; (f:fpu) ft3  <-- 5.0
       0     2108        M 0x80000720 addi    a2, a2, 1              #; a2  = 25, (wrb) a2  <-- 26
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
       0     2109        M 0x80000724 bnez    a3, pc - 32            #; a3  = 74, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 5.0
       0     2110        M 0x80000704 mulhu   a5, a2, a4             #; a2  = 26, a4  = 0xcccccccd
       0     2113        M                                           #; (acc) a5  <-- 0x0037d793
       0     2114        M 0x80000708 srli    a5, a5, 3              #; a5  = 20, (wrb) a5  <-- 2
       0     2115        M 0x8000070c mul     a5, a5, a6             #; a5  = 2, a6  = 10
       0     2118        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2119        M 0x80000710 sub     a5, a2, a5             #; a2  = 26, a5  = 20, (wrb) a5  <-- 6
       0     2121        M 0x80000714 fcvt.d.wu ft3, a5              #; ac1  = 6
       0     2122        M 0x8000071c addi    a3, a3, -1             #; a3  = 74, (wrb) a3  <-- 73
                         M                                           #; (f:fpu) ft3  <-- 6.0
       0     2123        M 0x80000720 addi    a2, a2, 1              #; a2  = 26, (wrb) a2  <-- 27
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
       0     2124        M 0x80000724 bnez    a3, pc - 32            #; a3  = 73, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 6.0
       0     2125        M 0x80000704 mulhu   a5, a2, a4             #; a2  = 27, a4  = 0xcccccccd
       0     2128        M                                           #; (acc) a5  <-- 0x0037d793
       0     2129        M 0x80000708 srli    a5, a5, 3              #; a5  = 21, (wrb) a5  <-- 2
       0     2130        M 0x8000070c mul     a5, a5, a6             #; a5  = 2, a6  = 10
       0     2133        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2134        M 0x80000710 sub     a5, a2, a5             #; a2  = 27, a5  = 20, (wrb) a5  <-- 7
       0     2136        M 0x80000714 fcvt.d.wu ft3, a5              #; ac1  = 7
       0     2137        M 0x8000071c addi    a3, a3, -1             #; a3  = 73, (wrb) a3  <-- 72
                         M                                           #; (f:fpu) ft3  <-- 7.0
       0     2138        M 0x80000720 addi    a2, a2, 1              #; a2  = 27, (wrb) a2  <-- 28
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
       0     2139        M 0x80000724 bnez    a3, pc - 32            #; a3  = 72, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 7.0
       0     2140        M 0x80000704 mulhu   a5, a2, a4             #; a2  = 28, a4  = 0xcccccccd
       0     2143        M                                           #; (acc) a5  <-- 0x0037d793
       0     2144        M 0x80000708 srli    a5, a5, 3              #; a5  = 22, (wrb) a5  <-- 2
       0     2145        M 0x8000070c mul     a5, a5, a6             #; a5  = 2, a6  = 10
       0     2148        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2149        M 0x80000710 sub     a5, a2, a5             #; a2  = 28, a5  = 20, (wrb) a5  <-- 8
       0     2151        M 0x80000714 fcvt.d.wu ft3, a5              #; ac1  = 8
       0     2152        M 0x8000071c addi    a3, a3, -1             #; a3  = 72, (wrb) a3  <-- 71
                         M                                           #; (f:fpu) ft3  <-- 8.0
       0     2153        M 0x80000720 addi    a2, a2, 1              #; a2  = 28, (wrb) a2  <-- 29
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
       0     2154        M 0x80000724 bnez    a3, pc - 32            #; a3  = 71, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 8.0
       0     2155        M 0x80000704 mulhu   a5, a2, a4             #; a2  = 29, a4  = 0xcccccccd
       0     2158        M                                           #; (acc) a5  <-- 0x0037d793
       0     2159        M 0x80000708 srli    a5, a5, 3              #; a5  = 23, (wrb) a5  <-- 2
       0     2160        M 0x8000070c mul     a5, a5, a6             #; a5  = 2, a6  = 10
       0     2163        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2164        M 0x80000710 sub     a5, a2, a5             #; a2  = 29, a5  = 20, (wrb) a5  <-- 9
       0     2166        M 0x80000714 fcvt.d.wu ft3, a5              #; ac1  = 9
       0     2167        M 0x8000071c addi    a3, a3, -1             #; a3  = 71, (wrb) a3  <-- 70
                         M                                           #; (f:fpu) ft3  <-- 9.0
       0     2168        M 0x80000720 addi    a2, a2, 1              #; a2  = 29, (wrb) a2  <-- 30
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
       0     2169        M 0x80000724 bnez    a3, pc - 32            #; a3  = 70, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 9.0
       0     2170        M 0x80000704 mulhu   a5, a2, a4             #; a2  = 30, a4  = 0xcccccccd
       0     2173        M                                           #; (acc) a5  <-- 0x0037d793
       0     2174        M 0x80000708 srli    a5, a5, 3              #; a5  = 24, (wrb) a5  <-- 3
       0     2175        M 0x8000070c mul     a5, a5, a6             #; a5  = 3, a6  = 10
       0     2178        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2179        M 0x80000710 sub     a5, a2, a5             #; a2  = 30, a5  = 30, (wrb) a5  <-- 0
       0     2181        M 0x80000714 fcvt.d.wu ft3, a5              #; ac1  = 0
       0     2182        M 0x8000071c addi    a3, a3, -1             #; a3  = 70, (wrb) a3  <-- 69
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     2183        M 0x80000720 addi    a2, a2, 1              #; a2  = 30, (wrb) a2  <-- 31
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     2184        M 0x80000724 bnez    a3, pc - 32            #; a3  = 69, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     2185        M 0x80000704 mulhu   a5, a2, a4             #; a2  = 31, a4  = 0xcccccccd
       0     2188        M                                           #; (acc) a5  <-- 0x0037d793
       0     2189        M 0x80000708 srli    a5, a5, 3              #; a5  = 24, (wrb) a5  <-- 3
       0     2190        M 0x8000070c mul     a5, a5, a6             #; a5  = 3, a6  = 10
       0     2193        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2194        M 0x80000710 sub     a5, a2, a5             #; a2  = 31, a5  = 30, (wrb) a5  <-- 1
       0     2196        M 0x80000714 fcvt.d.wu ft3, a5              #; ac1  = 1
       0     2197        M 0x8000071c addi    a3, a3, -1             #; a3  = 69, (wrb) a3  <-- 68
                         M                                           #; (f:fpu) ft3  <-- 1.0
       0     2198        M 0x80000720 addi    a2, a2, 1              #; a2  = 31, (wrb) a2  <-- 32
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
       0     2199        M 0x80000724 bnez    a3, pc - 32            #; a3  = 68, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 1.0
       0     2200        M 0x80000704 mulhu   a5, a2, a4             #; a2  = 32, a4  = 0xcccccccd
       0     2203        M                                           #; (acc) a5  <-- 0x0037d793
       0     2204        M 0x80000708 srli    a5, a5, 3              #; a5  = 25, (wrb) a5  <-- 3
       0     2205        M 0x8000070c mul     a5, a5, a6             #; a5  = 3, a6  = 10
       0     2208        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2209        M 0x80000710 sub     a5, a2, a5             #; a2  = 32, a5  = 30, (wrb) a5  <-- 2
       0     2211        M 0x80000714 fcvt.d.wu ft3, a5              #; ac1  = 2
       0     2212        M 0x8000071c addi    a3, a3, -1             #; a3  = 68, (wrb) a3  <-- 67
                         M                                           #; (f:fpu) ft3  <-- 2.0
       0     2213        M 0x80000720 addi    a2, a2, 1              #; a2  = 32, (wrb) a2  <-- 33
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
       0     2214        M 0x80000724 bnez    a3, pc - 32            #; a3  = 67, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 2.0
       0     2215        M 0x80000704 mulhu   a5, a2, a4             #; a2  = 33, a4  = 0xcccccccd
       0     2218        M                                           #; (acc) a5  <-- 0x0037d793
       0     2219        M 0x80000708 srli    a5, a5, 3              #; a5  = 26, (wrb) a5  <-- 3
       0     2220        M 0x8000070c mul     a5, a5, a6             #; a5  = 3, a6  = 10
       0     2223        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2224        M 0x80000710 sub     a5, a2, a5             #; a2  = 33, a5  = 30, (wrb) a5  <-- 3
       0     2226        M 0x80000714 fcvt.d.wu ft3, a5              #; ac1  = 3
       0     2227        M 0x8000071c addi    a3, a3, -1             #; a3  = 67, (wrb) a3  <-- 66
                         M                                           #; (f:fpu) ft3  <-- 3.0
       0     2228        M 0x80000720 addi    a2, a2, 1              #; a2  = 33, (wrb) a2  <-- 34
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
       0     2229        M 0x80000724 bnez    a3, pc - 32            #; a3  = 66, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 3.0
       0     2230        M 0x80000704 mulhu   a5, a2, a4             #; a2  = 34, a4  = 0xcccccccd
       0     2233        M                                           #; (acc) a5  <-- 0x0037d793
       0     2234        M 0x80000708 srli    a5, a5, 3              #; a5  = 27, (wrb) a5  <-- 3
       0     2235        M 0x8000070c mul     a5, a5, a6             #; a5  = 3, a6  = 10
       0     2238        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2239        M 0x80000710 sub     a5, a2, a5             #; a2  = 34, a5  = 30, (wrb) a5  <-- 4
       0     2241        M 0x80000714 fcvt.d.wu ft3, a5              #; ac1  = 4
       0     2242        M 0x8000071c addi    a3, a3, -1             #; a3  = 66, (wrb) a3  <-- 65
                         M                                           #; (f:fpu) ft3  <-- 4.0
       0     2243        M 0x80000720 addi    a2, a2, 1              #; a2  = 34, (wrb) a2  <-- 35
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
       0     2244        M 0x80000724 bnez    a3, pc - 32            #; a3  = 65, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 4.0
       0     2245        M 0x80000704 mulhu   a5, a2, a4             #; a2  = 35, a4  = 0xcccccccd
       0     2248        M                                           #; (acc) a5  <-- 0x0037d793
       0     2249        M 0x80000708 srli    a5, a5, 3              #; a5  = 28, (wrb) a5  <-- 3
       0     2250        M 0x8000070c mul     a5, a5, a6             #; a5  = 3, a6  = 10
       0     2253        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2254        M 0x80000710 sub     a5, a2, a5             #; a2  = 35, a5  = 30, (wrb) a5  <-- 5
       0     2256        M 0x80000714 fcvt.d.wu ft3, a5              #; ac1  = 5
       0     2257        M 0x8000071c addi    a3, a3, -1             #; a3  = 65, (wrb) a3  <-- 64
                         M                                           #; (f:fpu) ft3  <-- 5.0
       0     2258        M 0x80000720 addi    a2, a2, 1              #; a2  = 35, (wrb) a2  <-- 36
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
       0     2259        M 0x80000724 bnez    a3, pc - 32            #; a3  = 64, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 5.0
       0     2260        M 0x80000704 mulhu   a5, a2, a4             #; a2  = 36, a4  = 0xcccccccd
       0     2263        M                                           #; (acc) a5  <-- 0x0037d793
       0     2264        M 0x80000708 srli    a5, a5, 3              #; a5  = 28, (wrb) a5  <-- 3
       0     2265        M 0x8000070c mul     a5, a5, a6             #; a5  = 3, a6  = 10
       0     2268        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2269        M 0x80000710 sub     a5, a2, a5             #; a2  = 36, a5  = 30, (wrb) a5  <-- 6
       0     2271        M 0x80000714 fcvt.d.wu ft3, a5              #; ac1  = 6
       0     2272        M 0x8000071c addi    a3, a3, -1             #; a3  = 64, (wrb) a3  <-- 63
                         M                                           #; (f:fpu) ft3  <-- 6.0
       0     2273        M 0x80000720 addi    a2, a2, 1              #; a2  = 36, (wrb) a2  <-- 37
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
       0     2274        M 0x80000724 bnez    a3, pc - 32            #; a3  = 63, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 6.0
       0     2275        M 0x80000704 mulhu   a5, a2, a4             #; a2  = 37, a4  = 0xcccccccd
       0     2278        M                                           #; (acc) a5  <-- 0x0037d793
       0     2279        M 0x80000708 srli    a5, a5, 3              #; a5  = 29, (wrb) a5  <-- 3
       0     2280        M 0x8000070c mul     a5, a5, a6             #; a5  = 3, a6  = 10
       0     2283        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2284        M 0x80000710 sub     a5, a2, a5             #; a2  = 37, a5  = 30, (wrb) a5  <-- 7
       0     2286        M 0x80000714 fcvt.d.wu ft3, a5              #; ac1  = 7
       0     2287        M 0x8000071c addi    a3, a3, -1             #; a3  = 63, (wrb) a3  <-- 62
                         M                                           #; (f:fpu) ft3  <-- 7.0
       0     2288        M 0x80000720 addi    a2, a2, 1              #; a2  = 37, (wrb) a2  <-- 38
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
       0     2289        M 0x80000724 bnez    a3, pc - 32            #; a3  = 62, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 7.0
       0     2290        M 0x80000704 mulhu   a5, a2, a4             #; a2  = 38, a4  = 0xcccccccd
       0     2293        M                                           #; (acc) a5  <-- 0x0037d793
       0     2294        M 0x80000708 srli    a5, a5, 3              #; a5  = 30, (wrb) a5  <-- 3
       0     2295        M 0x8000070c mul     a5, a5, a6             #; a5  = 3, a6  = 10
       0     2298        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2299        M 0x80000710 sub     a5, a2, a5             #; a2  = 38, a5  = 30, (wrb) a5  <-- 8
       0     2301        M 0x80000714 fcvt.d.wu ft3, a5              #; ac1  = 8
       0     2302        M 0x8000071c addi    a3, a3, -1             #; a3  = 62, (wrb) a3  <-- 61
                         M                                           #; (f:fpu) ft3  <-- 8.0
       0     2303        M 0x80000720 addi    a2, a2, 1              #; a2  = 38, (wrb) a2  <-- 39
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
       0     2304        M 0x80000724 bnez    a3, pc - 32            #; a3  = 61, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 8.0
       0     2305        M 0x80000704 mulhu   a5, a2, a4             #; a2  = 39, a4  = 0xcccccccd
       0     2308        M                                           #; (acc) a5  <-- 0x0037d793
       0     2309        M 0x80000708 srli    a5, a5, 3              #; a5  = 31, (wrb) a5  <-- 3
       0     2310        M 0x8000070c mul     a5, a5, a6             #; a5  = 3, a6  = 10
       0     2313        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2314        M 0x80000710 sub     a5, a2, a5             #; a2  = 39, a5  = 30, (wrb) a5  <-- 9
       0     2316        M 0x80000714 fcvt.d.wu ft3, a5              #; ac1  = 9
       0     2317        M 0x8000071c addi    a3, a3, -1             #; a3  = 61, (wrb) a3  <-- 60
                         M                                           #; (f:fpu) ft3  <-- 9.0
       0     2318        M 0x80000720 addi    a2, a2, 1              #; a2  = 39, (wrb) a2  <-- 40
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
       0     2319        M 0x80000724 bnez    a3, pc - 32            #; a3  = 60, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 9.0
       0     2320        M 0x80000704 mulhu   a5, a2, a4             #; a2  = 40, a4  = 0xcccccccd
       0     2323        M                                           #; (acc) a5  <-- 0x0037d793
       0     2324        M 0x80000708 srli    a5, a5, 3              #; a5  = 32, (wrb) a5  <-- 4
       0     2325        M 0x8000070c mul     a5, a5, a6             #; a5  = 4, a6  = 10
       0     2328        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2329        M 0x80000710 sub     a5, a2, a5             #; a2  = 40, a5  = 40, (wrb) a5  <-- 0
       0     2331        M 0x80000714 fcvt.d.wu ft3, a5              #; ac1  = 0
       0     2332        M 0x8000071c addi    a3, a3, -1             #; a3  = 60, (wrb) a3  <-- 59
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     2333        M 0x80000720 addi    a2, a2, 1              #; a2  = 40, (wrb) a2  <-- 41
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     2334        M 0x80000724 bnez    a3, pc - 32            #; a3  = 59, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     2335        M 0x80000704 mulhu   a5, a2, a4             #; a2  = 41, a4  = 0xcccccccd
       0     2338        M                                           #; (acc) a5  <-- 0x0037d793
       0     2339        M 0x80000708 srli    a5, a5, 3              #; a5  = 32, (wrb) a5  <-- 4
       0     2340        M 0x8000070c mul     a5, a5, a6             #; a5  = 4, a6  = 10
       0     2343        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2344        M 0x80000710 sub     a5, a2, a5             #; a2  = 41, a5  = 40, (wrb) a5  <-- 1
       0     2346        M 0x80000714 fcvt.d.wu ft3, a5              #; ac1  = 1
       0     2347        M 0x8000071c addi    a3, a3, -1             #; a3  = 59, (wrb) a3  <-- 58
                         M                                           #; (f:fpu) ft3  <-- 1.0
       0     2348        M 0x80000720 addi    a2, a2, 1              #; a2  = 41, (wrb) a2  <-- 42
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
       0     2349        M 0x80000724 bnez    a3, pc - 32            #; a3  = 58, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 1.0
       0     2350        M 0x80000704 mulhu   a5, a2, a4             #; a2  = 42, a4  = 0xcccccccd
       0     2353        M                                           #; (acc) a5  <-- 0x0037d793
       0     2354        M 0x80000708 srli    a5, a5, 3              #; a5  = 33, (wrb) a5  <-- 4
       0     2355        M 0x8000070c mul     a5, a5, a6             #; a5  = 4, a6  = 10
       0     2358        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2359        M 0x80000710 sub     a5, a2, a5             #; a2  = 42, a5  = 40, (wrb) a5  <-- 2
       0     2361        M 0x80000714 fcvt.d.wu ft3, a5              #; ac1  = 2
       0     2362        M 0x8000071c addi    a3, a3, -1             #; a3  = 58, (wrb) a3  <-- 57
                         M                                           #; (f:fpu) ft3  <-- 2.0
       0     2363        M 0x80000720 addi    a2, a2, 1              #; a2  = 42, (wrb) a2  <-- 43
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
       0     2364        M 0x80000724 bnez    a3, pc - 32            #; a3  = 57, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 2.0
       0     2365        M 0x80000704 mulhu   a5, a2, a4             #; a2  = 43, a4  = 0xcccccccd
       0     2368        M                                           #; (acc) a5  <-- 0x0037d793
       0     2369        M 0x80000708 srli    a5, a5, 3              #; a5  = 34, (wrb) a5  <-- 4
       0     2370        M 0x8000070c mul     a5, a5, a6             #; a5  = 4, a6  = 10
       0     2373        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2374        M 0x80000710 sub     a5, a2, a5             #; a2  = 43, a5  = 40, (wrb) a5  <-- 3
       0     2376        M 0x80000714 fcvt.d.wu ft3, a5              #; ac1  = 3
       0     2377        M 0x8000071c addi    a3, a3, -1             #; a3  = 57, (wrb) a3  <-- 56
                         M                                           #; (f:fpu) ft3  <-- 3.0
       0     2378        M 0x80000720 addi    a2, a2, 1              #; a2  = 43, (wrb) a2  <-- 44
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
       0     2379        M 0x80000724 bnez    a3, pc - 32            #; a3  = 56, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 3.0
       0     2380        M 0x80000704 mulhu   a5, a2, a4             #; a2  = 44, a4  = 0xcccccccd
       0     2383        M                                           #; (acc) a5  <-- 0x0037d793
       0     2384        M 0x80000708 srli    a5, a5, 3              #; a5  = 35, (wrb) a5  <-- 4
       0     2385        M 0x8000070c mul     a5, a5, a6             #; a5  = 4, a6  = 10
       0     2388        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2389        M 0x80000710 sub     a5, a2, a5             #; a2  = 44, a5  = 40, (wrb) a5  <-- 4
       0     2391        M 0x80000714 fcvt.d.wu ft3, a5              #; ac1  = 4
       0     2392        M 0x8000071c addi    a3, a3, -1             #; a3  = 56, (wrb) a3  <-- 55
                         M                                           #; (f:fpu) ft3  <-- 4.0
       0     2393        M 0x80000720 addi    a2, a2, 1              #; a2  = 44, (wrb) a2  <-- 45
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
       0     2394        M 0x80000724 bnez    a3, pc - 32            #; a3  = 55, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 4.0
       0     2395        M 0x80000704 mulhu   a5, a2, a4             #; a2  = 45, a4  = 0xcccccccd
       0     2398        M                                           #; (acc) a5  <-- 0x0037d793
       0     2399        M 0x80000708 srli    a5, a5, 3              #; a5  = 36, (wrb) a5  <-- 4
       0     2400        M 0x8000070c mul     a5, a5, a6             #; a5  = 4, a6  = 10
       0     2403        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2404        M 0x80000710 sub     a5, a2, a5             #; a2  = 45, a5  = 40, (wrb) a5  <-- 5
       0     2406        M 0x80000714 fcvt.d.wu ft3, a5              #; ac1  = 5
       0     2407        M 0x8000071c addi    a3, a3, -1             #; a3  = 55, (wrb) a3  <-- 54
                         M                                           #; (f:fpu) ft3  <-- 5.0
       0     2408        M 0x80000720 addi    a2, a2, 1              #; a2  = 45, (wrb) a2  <-- 46
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
       0     2409        M 0x80000724 bnez    a3, pc - 32            #; a3  = 54, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 5.0
       0     2410        M 0x80000704 mulhu   a5, a2, a4             #; a2  = 46, a4  = 0xcccccccd
       0     2413        M                                           #; (acc) a5  <-- 0x0037d793
       0     2414        M 0x80000708 srli    a5, a5, 3              #; a5  = 36, (wrb) a5  <-- 4
       0     2415        M 0x8000070c mul     a5, a5, a6             #; a5  = 4, a6  = 10
       0     2418        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2419        M 0x80000710 sub     a5, a2, a5             #; a2  = 46, a5  = 40, (wrb) a5  <-- 6
       0     2421        M 0x80000714 fcvt.d.wu ft3, a5              #; ac1  = 6
       0     2422        M 0x8000071c addi    a3, a3, -1             #; a3  = 54, (wrb) a3  <-- 53
                         M                                           #; (f:fpu) ft3  <-- 6.0
       0     2423        M 0x80000720 addi    a2, a2, 1              #; a2  = 46, (wrb) a2  <-- 47
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
       0     2424        M 0x80000724 bnez    a3, pc - 32            #; a3  = 53, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 6.0
       0     2425        M 0x80000704 mulhu   a5, a2, a4             #; a2  = 47, a4  = 0xcccccccd
       0     2428        M                                           #; (acc) a5  <-- 0x0037d793
       0     2429        M 0x80000708 srli    a5, a5, 3              #; a5  = 37, (wrb) a5  <-- 4
       0     2430        M 0x8000070c mul     a5, a5, a6             #; a5  = 4, a6  = 10
       0     2433        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2434        M 0x80000710 sub     a5, a2, a5             #; a2  = 47, a5  = 40, (wrb) a5  <-- 7
       0     2436        M 0x80000714 fcvt.d.wu ft3, a5              #; ac1  = 7
       0     2437        M 0x8000071c addi    a3, a3, -1             #; a3  = 53, (wrb) a3  <-- 52
                         M                                           #; (f:fpu) ft3  <-- 7.0
       0     2438        M 0x80000720 addi    a2, a2, 1              #; a2  = 47, (wrb) a2  <-- 48
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
       0     2439        M 0x80000724 bnez    a3, pc - 32            #; a3  = 52, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 7.0
       0     2440        M 0x80000704 mulhu   a5, a2, a4             #; a2  = 48, a4  = 0xcccccccd
       0     2443        M                                           #; (acc) a5  <-- 0x0037d793
       0     2444        M 0x80000708 srli    a5, a5, 3              #; a5  = 38, (wrb) a5  <-- 4
       0     2445        M 0x8000070c mul     a5, a5, a6             #; a5  = 4, a6  = 10
       0     2448        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2449        M 0x80000710 sub     a5, a2, a5             #; a2  = 48, a5  = 40, (wrb) a5  <-- 8
       0     2451        M 0x80000714 fcvt.d.wu ft3, a5              #; ac1  = 8
       0     2452        M 0x8000071c addi    a3, a3, -1             #; a3  = 52, (wrb) a3  <-- 51
                         M                                           #; (f:fpu) ft3  <-- 8.0
       0     2453        M 0x80000720 addi    a2, a2, 1              #; a2  = 48, (wrb) a2  <-- 49
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
       0     2454        M 0x80000724 bnez    a3, pc - 32            #; a3  = 51, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 8.0
       0     2455        M 0x80000704 mulhu   a5, a2, a4             #; a2  = 49, a4  = 0xcccccccd
       0     2458        M                                           #; (acc) a5  <-- 0x0037d793
       0     2459        M 0x80000708 srli    a5, a5, 3              #; a5  = 39, (wrb) a5  <-- 4
       0     2460        M 0x8000070c mul     a5, a5, a6             #; a5  = 4, a6  = 10
       0     2463        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2464        M 0x80000710 sub     a5, a2, a5             #; a2  = 49, a5  = 40, (wrb) a5  <-- 9
       0     2466        M 0x80000714 fcvt.d.wu ft3, a5              #; ac1  = 9
       0     2467        M 0x8000071c addi    a3, a3, -1             #; a3  = 51, (wrb) a3  <-- 50
                         M                                           #; (f:fpu) ft3  <-- 9.0
       0     2468        M 0x80000720 addi    a2, a2, 1              #; a2  = 49, (wrb) a2  <-- 50
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
       0     2469        M 0x80000724 bnez    a3, pc - 32            #; a3  = 50, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 9.0
       0     2470        M 0x80000704 mulhu   a5, a2, a4             #; a2  = 50, a4  = 0xcccccccd
       0     2473        M                                           #; (acc) a5  <-- 0x0037d793
       0     2474        M 0x80000708 srli    a5, a5, 3              #; a5  = 40, (wrb) a5  <-- 5
       0     2475        M 0x8000070c mul     a5, a5, a6             #; a5  = 5, a6  = 10
       0     2478        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2479        M 0x80000710 sub     a5, a2, a5             #; a2  = 50, a5  = 50, (wrb) a5  <-- 0
       0     2481        M 0x80000714 fcvt.d.wu ft3, a5              #; ac1  = 0
       0     2482        M 0x8000071c addi    a3, a3, -1             #; a3  = 50, (wrb) a3  <-- 49
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     2483        M 0x80000720 addi    a2, a2, 1              #; a2  = 50, (wrb) a2  <-- 51
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     2484        M 0x80000724 bnez    a3, pc - 32            #; a3  = 49, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     2485        M 0x80000704 mulhu   a5, a2, a4             #; a2  = 51, a4  = 0xcccccccd
       0     2488        M                                           #; (acc) a5  <-- 0x0037d793
       0     2489        M 0x80000708 srli    a5, a5, 3              #; a5  = 40, (wrb) a5  <-- 5
       0     2490        M 0x8000070c mul     a5, a5, a6             #; a5  = 5, a6  = 10
       0     2493        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2494        M 0x80000710 sub     a5, a2, a5             #; a2  = 51, a5  = 50, (wrb) a5  <-- 1
       0     2496        M 0x80000714 fcvt.d.wu ft3, a5              #; ac1  = 1
       0     2497        M 0x8000071c addi    a3, a3, -1             #; a3  = 49, (wrb) a3  <-- 48
                         M                                           #; (f:fpu) ft3  <-- 1.0
       0     2498        M 0x80000720 addi    a2, a2, 1              #; a2  = 51, (wrb) a2  <-- 52
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
       0     2499        M 0x80000724 bnez    a3, pc - 32            #; a3  = 48, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 1.0
       0     2500        M 0x80000704 mulhu   a5, a2, a4             #; a2  = 52, a4  = 0xcccccccd
       0     2503        M                                           #; (acc) a5  <-- 0x0037d793
       0     2504        M 0x80000708 srli    a5, a5, 3              #; a5  = 41, (wrb) a5  <-- 5
       0     2505        M 0x8000070c mul     a5, a5, a6             #; a5  = 5, a6  = 10
       0     2508        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2509        M 0x80000710 sub     a5, a2, a5             #; a2  = 52, a5  = 50, (wrb) a5  <-- 2
       0     2511        M 0x80000714 fcvt.d.wu ft3, a5              #; ac1  = 2
       0     2512        M 0x8000071c addi    a3, a3, -1             #; a3  = 48, (wrb) a3  <-- 47
                         M                                           #; (f:fpu) ft3  <-- 2.0
       0     2513        M 0x80000720 addi    a2, a2, 1              #; a2  = 52, (wrb) a2  <-- 53
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
       0     2514        M 0x80000724 bnez    a3, pc - 32            #; a3  = 47, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 2.0
       0     2515        M 0x80000704 mulhu   a5, a2, a4             #; a2  = 53, a4  = 0xcccccccd
       0     2518        M                                           #; (acc) a5  <-- 0x0037d793
       0     2519        M 0x80000708 srli    a5, a5, 3              #; a5  = 42, (wrb) a5  <-- 5
       0     2520        M 0x8000070c mul     a5, a5, a6             #; a5  = 5, a6  = 10
       0     2523        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2524        M 0x80000710 sub     a5, a2, a5             #; a2  = 53, a5  = 50, (wrb) a5  <-- 3
       0     2526        M 0x80000714 fcvt.d.wu ft3, a5              #; ac1  = 3
       0     2527        M 0x8000071c addi    a3, a3, -1             #; a3  = 47, (wrb) a3  <-- 46
                         M                                           #; (f:fpu) ft3  <-- 3.0
       0     2528        M 0x80000720 addi    a2, a2, 1              #; a2  = 53, (wrb) a2  <-- 54
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
       0     2529        M 0x80000724 bnez    a3, pc - 32            #; a3  = 46, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 3.0
       0     2530        M 0x80000704 mulhu   a5, a2, a4             #; a2  = 54, a4  = 0xcccccccd
       0     2533        M                                           #; (acc) a5  <-- 0x0037d793
       0     2534        M 0x80000708 srli    a5, a5, 3              #; a5  = 43, (wrb) a5  <-- 5
       0     2535        M 0x8000070c mul     a5, a5, a6             #; a5  = 5, a6  = 10
       0     2538        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2539        M 0x80000710 sub     a5, a2, a5             #; a2  = 54, a5  = 50, (wrb) a5  <-- 4
       0     2541        M 0x80000714 fcvt.d.wu ft3, a5              #; ac1  = 4
       0     2542        M 0x8000071c addi    a3, a3, -1             #; a3  = 46, (wrb) a3  <-- 45
                         M                                           #; (f:fpu) ft3  <-- 4.0
       0     2543        M 0x80000720 addi    a2, a2, 1              #; a2  = 54, (wrb) a2  <-- 55
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
       0     2544        M 0x80000724 bnez    a3, pc - 32            #; a3  = 45, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 4.0
       0     2545        M 0x80000704 mulhu   a5, a2, a4             #; a2  = 55, a4  = 0xcccccccd
       0     2548        M                                           #; (acc) a5  <-- 0x0037d793
       0     2549        M 0x80000708 srli    a5, a5, 3              #; a5  = 44, (wrb) a5  <-- 5
       0     2550        M 0x8000070c mul     a5, a5, a6             #; a5  = 5, a6  = 10
       0     2553        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2554        M 0x80000710 sub     a5, a2, a5             #; a2  = 55, a5  = 50, (wrb) a5  <-- 5
       0     2556        M 0x80000714 fcvt.d.wu ft3, a5              #; ac1  = 5
       0     2557        M 0x8000071c addi    a3, a3, -1             #; a3  = 45, (wrb) a3  <-- 44
                         M                                           #; (f:fpu) ft3  <-- 5.0
       0     2558        M 0x80000720 addi    a2, a2, 1              #; a2  = 55, (wrb) a2  <-- 56
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
       0     2559        M 0x80000724 bnez    a3, pc - 32            #; a3  = 44, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 5.0
       0     2560        M 0x80000704 mulhu   a5, a2, a4             #; a2  = 56, a4  = 0xcccccccd
       0     2563        M                                           #; (acc) a5  <-- 0x0037d793
       0     2564        M 0x80000708 srli    a5, a5, 3              #; a5  = 44, (wrb) a5  <-- 5
       0     2565        M 0x8000070c mul     a5, a5, a6             #; a5  = 5, a6  = 10
       0     2568        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2569        M 0x80000710 sub     a5, a2, a5             #; a2  = 56, a5  = 50, (wrb) a5  <-- 6
       0     2571        M 0x80000714 fcvt.d.wu ft3, a5              #; ac1  = 6
       0     2572        M 0x8000071c addi    a3, a3, -1             #; a3  = 44, (wrb) a3  <-- 43
                         M                                           #; (f:fpu) ft3  <-- 6.0
       0     2573        M 0x80000720 addi    a2, a2, 1              #; a2  = 56, (wrb) a2  <-- 57
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
       0     2574        M 0x80000724 bnez    a3, pc - 32            #; a3  = 43, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 6.0
       0     2575        M 0x80000704 mulhu   a5, a2, a4             #; a2  = 57, a4  = 0xcccccccd
       0     2578        M                                           #; (acc) a5  <-- 0x0037d793
       0     2579        M 0x80000708 srli    a5, a5, 3              #; a5  = 45, (wrb) a5  <-- 5
       0     2580        M 0x8000070c mul     a5, a5, a6             #; a5  = 5, a6  = 10
       0     2583        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2584        M 0x80000710 sub     a5, a2, a5             #; a2  = 57, a5  = 50, (wrb) a5  <-- 7
       0     2586        M 0x80000714 fcvt.d.wu ft3, a5              #; ac1  = 7
       0     2587        M 0x8000071c addi    a3, a3, -1             #; a3  = 43, (wrb) a3  <-- 42
                         M                                           #; (f:fpu) ft3  <-- 7.0
       0     2588        M 0x80000720 addi    a2, a2, 1              #; a2  = 57, (wrb) a2  <-- 58
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
       0     2589        M 0x80000724 bnez    a3, pc - 32            #; a3  = 42, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 7.0
       0     2590        M 0x80000704 mulhu   a5, a2, a4             #; a2  = 58, a4  = 0xcccccccd
       0     2593        M                                           #; (acc) a5  <-- 0x0037d793
       0     2594        M 0x80000708 srli    a5, a5, 3              #; a5  = 46, (wrb) a5  <-- 5
       0     2595        M 0x8000070c mul     a5, a5, a6             #; a5  = 5, a6  = 10
       0     2598        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2599        M 0x80000710 sub     a5, a2, a5             #; a2  = 58, a5  = 50, (wrb) a5  <-- 8
       0     2601        M 0x80000714 fcvt.d.wu ft3, a5              #; ac1  = 8
       0     2602        M 0x8000071c addi    a3, a3, -1             #; a3  = 42, (wrb) a3  <-- 41
                         M                                           #; (f:fpu) ft3  <-- 8.0
       0     2603        M 0x80000720 addi    a2, a2, 1              #; a2  = 58, (wrb) a2  <-- 59
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
       0     2604        M 0x80000724 bnez    a3, pc - 32            #; a3  = 41, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 8.0
       0     2605        M 0x80000704 mulhu   a5, a2, a4             #; a2  = 59, a4  = 0xcccccccd
       0     2608        M                                           #; (acc) a5  <-- 0x0037d793
       0     2609        M 0x80000708 srli    a5, a5, 3              #; a5  = 47, (wrb) a5  <-- 5
       0     2610        M 0x8000070c mul     a5, a5, a6             #; a5  = 5, a6  = 10
       0     2613        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2614        M 0x80000710 sub     a5, a2, a5             #; a2  = 59, a5  = 50, (wrb) a5  <-- 9
       0     2616        M 0x80000714 fcvt.d.wu ft3, a5              #; ac1  = 9
       0     2617        M 0x8000071c addi    a3, a3, -1             #; a3  = 41, (wrb) a3  <-- 40
                         M                                           #; (f:fpu) ft3  <-- 9.0
       0     2618        M 0x80000720 addi    a2, a2, 1              #; a2  = 59, (wrb) a2  <-- 60
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
       0     2619        M 0x80000724 bnez    a3, pc - 32            #; a3  = 40, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 9.0
       0     2620        M 0x80000704 mulhu   a5, a2, a4             #; a2  = 60, a4  = 0xcccccccd
       0     2623        M                                           #; (acc) a5  <-- 0x0037d793
       0     2624        M 0x80000708 srli    a5, a5, 3              #; a5  = 48, (wrb) a5  <-- 6
       0     2625        M 0x8000070c mul     a5, a5, a6             #; a5  = 6, a6  = 10
       0     2628        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2629        M 0x80000710 sub     a5, a2, a5             #; a2  = 60, a5  = 60, (wrb) a5  <-- 0
       0     2631        M 0x80000714 fcvt.d.wu ft3, a5              #; ac1  = 0
       0     2632        M 0x8000071c addi    a3, a3, -1             #; a3  = 40, (wrb) a3  <-- 39
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     2633        M 0x80000720 addi    a2, a2, 1              #; a2  = 60, (wrb) a2  <-- 61
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     2634        M 0x80000724 bnez    a3, pc - 32            #; a3  = 39, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     2635        M 0x80000704 mulhu   a5, a2, a4             #; a2  = 61, a4  = 0xcccccccd
       0     2638        M                                           #; (acc) a5  <-- 0x0037d793
       0     2639        M 0x80000708 srli    a5, a5, 3              #; a5  = 48, (wrb) a5  <-- 6
       0     2640        M 0x8000070c mul     a5, a5, a6             #; a5  = 6, a6  = 10
       0     2643        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2644        M 0x80000710 sub     a5, a2, a5             #; a2  = 61, a5  = 60, (wrb) a5  <-- 1
       0     2646        M 0x80000714 fcvt.d.wu ft3, a5              #; ac1  = 1
       0     2647        M 0x8000071c addi    a3, a3, -1             #; a3  = 39, (wrb) a3  <-- 38
                         M                                           #; (f:fpu) ft3  <-- 1.0
       0     2648        M 0x80000720 addi    a2, a2, 1              #; a2  = 61, (wrb) a2  <-- 62
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
       0     2649        M 0x80000724 bnez    a3, pc - 32            #; a3  = 38, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 1.0
       0     2650        M 0x80000704 mulhu   a5, a2, a4             #; a2  = 62, a4  = 0xcccccccd
       0     2653        M                                           #; (acc) a5  <-- 0x0037d793
       0     2654        M 0x80000708 srli    a5, a5, 3              #; a5  = 49, (wrb) a5  <-- 6
       0     2655        M 0x8000070c mul     a5, a5, a6             #; a5  = 6, a6  = 10
       0     2658        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2659        M 0x80000710 sub     a5, a2, a5             #; a2  = 62, a5  = 60, (wrb) a5  <-- 2
       0     2661        M 0x80000714 fcvt.d.wu ft3, a5              #; ac1  = 2
       0     2662        M 0x8000071c addi    a3, a3, -1             #; a3  = 38, (wrb) a3  <-- 37
                         M                                           #; (f:fpu) ft3  <-- 2.0
       0     2663        M 0x80000720 addi    a2, a2, 1              #; a2  = 62, (wrb) a2  <-- 63
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
       0     2664        M 0x80000724 bnez    a3, pc - 32            #; a3  = 37, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 2.0
       0     2665        M 0x80000704 mulhu   a5, a2, a4             #; a2  = 63, a4  = 0xcccccccd
       0     2668        M                                           #; (acc) a5  <-- 0x0037d793
       0     2669        M 0x80000708 srli    a5, a5, 3              #; a5  = 50, (wrb) a5  <-- 6
       0     2670        M 0x8000070c mul     a5, a5, a6             #; a5  = 6, a6  = 10
       0     2673        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2674        M 0x80000710 sub     a5, a2, a5             #; a2  = 63, a5  = 60, (wrb) a5  <-- 3
       0     2676        M 0x80000714 fcvt.d.wu ft3, a5              #; ac1  = 3
       0     2677        M 0x8000071c addi    a3, a3, -1             #; a3  = 37, (wrb) a3  <-- 36
                         M                                           #; (f:fpu) ft3  <-- 3.0
       0     2678        M 0x80000720 addi    a2, a2, 1              #; a2  = 63, (wrb) a2  <-- 64
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
       0     2679        M 0x80000724 bnez    a3, pc - 32            #; a3  = 36, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 3.0
       0     2680        M 0x80000704 mulhu   a5, a2, a4             #; a2  = 64, a4  = 0xcccccccd
       0     2683        M                                           #; (acc) a5  <-- 0x0037d793
       0     2684        M 0x80000708 srli    a5, a5, 3              #; a5  = 51, (wrb) a5  <-- 6
       0     2685        M 0x8000070c mul     a5, a5, a6             #; a5  = 6, a6  = 10
       0     2688        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2689        M 0x80000710 sub     a5, a2, a5             #; a2  = 64, a5  = 60, (wrb) a5  <-- 4
       0     2691        M 0x80000714 fcvt.d.wu ft3, a5              #; ac1  = 4
       0     2692        M 0x8000071c addi    a3, a3, -1             #; a3  = 36, (wrb) a3  <-- 35
                         M                                           #; (f:fpu) ft3  <-- 4.0
       0     2693        M 0x80000720 addi    a2, a2, 1              #; a2  = 64, (wrb) a2  <-- 65
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
       0     2694        M 0x80000724 bnez    a3, pc - 32            #; a3  = 35, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 4.0
       0     2695        M 0x80000704 mulhu   a5, a2, a4             #; a2  = 65, a4  = 0xcccccccd
       0     2698        M                                           #; (acc) a5  <-- 0x0037d793
       0     2699        M 0x80000708 srli    a5, a5, 3              #; a5  = 52, (wrb) a5  <-- 6
       0     2700        M 0x8000070c mul     a5, a5, a6             #; a5  = 6, a6  = 10
       0     2703        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2704        M 0x80000710 sub     a5, a2, a5             #; a2  = 65, a5  = 60, (wrb) a5  <-- 5
       0     2706        M 0x80000714 fcvt.d.wu ft3, a5              #; ac1  = 5
       0     2707        M 0x8000071c addi    a3, a3, -1             #; a3  = 35, (wrb) a3  <-- 34
                         M                                           #; (f:fpu) ft3  <-- 5.0
       0     2708        M 0x80000720 addi    a2, a2, 1              #; a2  = 65, (wrb) a2  <-- 66
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
       0     2709        M 0x80000724 bnez    a3, pc - 32            #; a3  = 34, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 5.0
       0     2710        M 0x80000704 mulhu   a5, a2, a4             #; a2  = 66, a4  = 0xcccccccd
       0     2713        M                                           #; (acc) a5  <-- 0x0037d793
       0     2714        M 0x80000708 srli    a5, a5, 3              #; a5  = 52, (wrb) a5  <-- 6
       0     2715        M 0x8000070c mul     a5, a5, a6             #; a5  = 6, a6  = 10
       0     2718        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2719        M 0x80000710 sub     a5, a2, a5             #; a2  = 66, a5  = 60, (wrb) a5  <-- 6
       0     2721        M 0x80000714 fcvt.d.wu ft3, a5              #; ac1  = 6
       0     2722        M 0x8000071c addi    a3, a3, -1             #; a3  = 34, (wrb) a3  <-- 33
                         M                                           #; (f:fpu) ft3  <-- 6.0
       0     2723        M 0x80000720 addi    a2, a2, 1              #; a2  = 66, (wrb) a2  <-- 67
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
       0     2724        M 0x80000724 bnez    a3, pc - 32            #; a3  = 33, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 6.0
       0     2725        M 0x80000704 mulhu   a5, a2, a4             #; a2  = 67, a4  = 0xcccccccd
       0     2728        M                                           #; (acc) a5  <-- 0x0037d793
       0     2729        M 0x80000708 srli    a5, a5, 3              #; a5  = 53, (wrb) a5  <-- 6
       0     2730        M 0x8000070c mul     a5, a5, a6             #; a5  = 6, a6  = 10
       0     2733        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2734        M 0x80000710 sub     a5, a2, a5             #; a2  = 67, a5  = 60, (wrb) a5  <-- 7
       0     2736        M 0x80000714 fcvt.d.wu ft3, a5              #; ac1  = 7
       0     2737        M 0x8000071c addi    a3, a3, -1             #; a3  = 33, (wrb) a3  <-- 32
                         M                                           #; (f:fpu) ft3  <-- 7.0
       0     2738        M 0x80000720 addi    a2, a2, 1              #; a2  = 67, (wrb) a2  <-- 68
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
       0     2739        M 0x80000724 bnez    a3, pc - 32            #; a3  = 32, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 7.0
       0     2740        M 0x80000704 mulhu   a5, a2, a4             #; a2  = 68, a4  = 0xcccccccd
       0     2743        M                                           #; (acc) a5  <-- 0x0037d793
       0     2744        M 0x80000708 srli    a5, a5, 3              #; a5  = 54, (wrb) a5  <-- 6
       0     2745        M 0x8000070c mul     a5, a5, a6             #; a5  = 6, a6  = 10
       0     2748        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2749        M 0x80000710 sub     a5, a2, a5             #; a2  = 68, a5  = 60, (wrb) a5  <-- 8
       0     2751        M 0x80000714 fcvt.d.wu ft3, a5              #; ac1  = 8
       0     2752        M 0x8000071c addi    a3, a3, -1             #; a3  = 32, (wrb) a3  <-- 31
                         M                                           #; (f:fpu) ft3  <-- 8.0
       0     2753        M 0x80000720 addi    a2, a2, 1              #; a2  = 68, (wrb) a2  <-- 69
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
       0     2754        M 0x80000724 bnez    a3, pc - 32            #; a3  = 31, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 8.0
       0     2755        M 0x80000704 mulhu   a5, a2, a4             #; a2  = 69, a4  = 0xcccccccd
       0     2758        M                                           #; (acc) a5  <-- 0x0037d793
       0     2759        M 0x80000708 srli    a5, a5, 3              #; a5  = 55, (wrb) a5  <-- 6
       0     2760        M 0x8000070c mul     a5, a5, a6             #; a5  = 6, a6  = 10
       0     2763        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2764        M 0x80000710 sub     a5, a2, a5             #; a2  = 69, a5  = 60, (wrb) a5  <-- 9
       0     2766        M 0x80000714 fcvt.d.wu ft3, a5              #; ac1  = 9
       0     2767        M 0x8000071c addi    a3, a3, -1             #; a3  = 31, (wrb) a3  <-- 30
                         M                                           #; (f:fpu) ft3  <-- 9.0
       0     2768        M 0x80000720 addi    a2, a2, 1              #; a2  = 69, (wrb) a2  <-- 70
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
       0     2769        M 0x80000724 bnez    a3, pc - 32            #; a3  = 30, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 9.0
       0     2770        M 0x80000704 mulhu   a5, a2, a4             #; a2  = 70, a4  = 0xcccccccd
       0     2773        M                                           #; (acc) a5  <-- 0x0037d793
       0     2774        M 0x80000708 srli    a5, a5, 3              #; a5  = 56, (wrb) a5  <-- 7
       0     2775        M 0x8000070c mul     a5, a5, a6             #; a5  = 7, a6  = 10
       0     2778        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2779        M 0x80000710 sub     a5, a2, a5             #; a2  = 70, a5  = 70, (wrb) a5  <-- 0
       0     2781        M 0x80000714 fcvt.d.wu ft3, a5              #; ac1  = 0
       0     2782        M 0x8000071c addi    a3, a3, -1             #; a3  = 30, (wrb) a3  <-- 29
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     2783        M 0x80000720 addi    a2, a2, 1              #; a2  = 70, (wrb) a2  <-- 71
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     2784        M 0x80000724 bnez    a3, pc - 32            #; a3  = 29, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     2785        M 0x80000704 mulhu   a5, a2, a4             #; a2  = 71, a4  = 0xcccccccd
       0     2788        M                                           #; (acc) a5  <-- 0x0037d793
       0     2789        M 0x80000708 srli    a5, a5, 3              #; a5  = 56, (wrb) a5  <-- 7
       0     2790        M 0x8000070c mul     a5, a5, a6             #; a5  = 7, a6  = 10
       0     2793        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2794        M 0x80000710 sub     a5, a2, a5             #; a2  = 71, a5  = 70, (wrb) a5  <-- 1
       0     2796        M 0x80000714 fcvt.d.wu ft3, a5              #; ac1  = 1
       0     2797        M 0x8000071c addi    a3, a3, -1             #; a3  = 29, (wrb) a3  <-- 28
                         M                                           #; (f:fpu) ft3  <-- 1.0
       0     2798        M 0x80000720 addi    a2, a2, 1              #; a2  = 71, (wrb) a2  <-- 72
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
       0     2799        M 0x80000724 bnez    a3, pc - 32            #; a3  = 28, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 1.0
       0     2800        M 0x80000704 mulhu   a5, a2, a4             #; a2  = 72, a4  = 0xcccccccd
       0     2803        M                                           #; (acc) a5  <-- 0x0037d793
       0     2804        M 0x80000708 srli    a5, a5, 3              #; a5  = 57, (wrb) a5  <-- 7
       0     2805        M 0x8000070c mul     a5, a5, a6             #; a5  = 7, a6  = 10
       0     2808        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2809        M 0x80000710 sub     a5, a2, a5             #; a2  = 72, a5  = 70, (wrb) a5  <-- 2
       0     2811        M 0x80000714 fcvt.d.wu ft3, a5              #; ac1  = 2
       0     2812        M 0x8000071c addi    a3, a3, -1             #; a3  = 28, (wrb) a3  <-- 27
                         M                                           #; (f:fpu) ft3  <-- 2.0
       0     2813        M 0x80000720 addi    a2, a2, 1              #; a2  = 72, (wrb) a2  <-- 73
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
       0     2814        M 0x80000724 bnez    a3, pc - 32            #; a3  = 27, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 2.0
       0     2815        M 0x80000704 mulhu   a5, a2, a4             #; a2  = 73, a4  = 0xcccccccd
       0     2818        M                                           #; (acc) a5  <-- 0x0037d793
       0     2819        M 0x80000708 srli    a5, a5, 3              #; a5  = 58, (wrb) a5  <-- 7
       0     2820        M 0x8000070c mul     a5, a5, a6             #; a5  = 7, a6  = 10
       0     2823        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2824        M 0x80000710 sub     a5, a2, a5             #; a2  = 73, a5  = 70, (wrb) a5  <-- 3
       0     2826        M 0x80000714 fcvt.d.wu ft3, a5              #; ac1  = 3
       0     2827        M 0x8000071c addi    a3, a3, -1             #; a3  = 27, (wrb) a3  <-- 26
                         M                                           #; (f:fpu) ft3  <-- 3.0
       0     2828        M 0x80000720 addi    a2, a2, 1              #; a2  = 73, (wrb) a2  <-- 74
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
       0     2829        M 0x80000724 bnez    a3, pc - 32            #; a3  = 26, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 3.0
       0     2830        M 0x80000704 mulhu   a5, a2, a4             #; a2  = 74, a4  = 0xcccccccd
       0     2833        M                                           #; (acc) a5  <-- 0x0037d793
       0     2834        M 0x80000708 srli    a5, a5, 3              #; a5  = 59, (wrb) a5  <-- 7
       0     2835        M 0x8000070c mul     a5, a5, a6             #; a5  = 7, a6  = 10
       0     2838        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2839        M 0x80000710 sub     a5, a2, a5             #; a2  = 74, a5  = 70, (wrb) a5  <-- 4
       0     2841        M 0x80000714 fcvt.d.wu ft3, a5              #; ac1  = 4
       0     2842        M 0x8000071c addi    a3, a3, -1             #; a3  = 26, (wrb) a3  <-- 25
                         M                                           #; (f:fpu) ft3  <-- 4.0
       0     2843        M 0x80000720 addi    a2, a2, 1              #; a2  = 74, (wrb) a2  <-- 75
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
       0     2844        M 0x80000724 bnez    a3, pc - 32            #; a3  = 25, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 4.0
       0     2845        M 0x80000704 mulhu   a5, a2, a4             #; a2  = 75, a4  = 0xcccccccd
       0     2848        M                                           #; (acc) a5  <-- 0x0037d793
       0     2849        M 0x80000708 srli    a5, a5, 3              #; a5  = 60, (wrb) a5  <-- 7
       0     2850        M 0x8000070c mul     a5, a5, a6             #; a5  = 7, a6  = 10
       0     2853        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2854        M 0x80000710 sub     a5, a2, a5             #; a2  = 75, a5  = 70, (wrb) a5  <-- 5
       0     2856        M 0x80000714 fcvt.d.wu ft3, a5              #; ac1  = 5
       0     2857        M 0x8000071c addi    a3, a3, -1             #; a3  = 25, (wrb) a3  <-- 24
                         M                                           #; (f:fpu) ft3  <-- 5.0
       0     2858        M 0x80000720 addi    a2, a2, 1              #; a2  = 75, (wrb) a2  <-- 76
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
       0     2859        M 0x80000724 bnez    a3, pc - 32            #; a3  = 24, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 5.0
       0     2860        M 0x80000704 mulhu   a5, a2, a4             #; a2  = 76, a4  = 0xcccccccd
       0     2863        M                                           #; (acc) a5  <-- 0x0037d793
       0     2864        M 0x80000708 srli    a5, a5, 3              #; a5  = 60, (wrb) a5  <-- 7
       0     2865        M 0x8000070c mul     a5, a5, a6             #; a5  = 7, a6  = 10
       0     2868        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2869        M 0x80000710 sub     a5, a2, a5             #; a2  = 76, a5  = 70, (wrb) a5  <-- 6
       0     2871        M 0x80000714 fcvt.d.wu ft3, a5              #; ac1  = 6
       0     2872        M 0x8000071c addi    a3, a3, -1             #; a3  = 24, (wrb) a3  <-- 23
                         M                                           #; (f:fpu) ft3  <-- 6.0
       0     2873        M 0x80000720 addi    a2, a2, 1              #; a2  = 76, (wrb) a2  <-- 77
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
       0     2874        M 0x80000724 bnez    a3, pc - 32            #; a3  = 23, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 6.0
       0     2875        M 0x80000704 mulhu   a5, a2, a4             #; a2  = 77, a4  = 0xcccccccd
       0     2878        M                                           #; (acc) a5  <-- 0x0037d793
       0     2879        M 0x80000708 srli    a5, a5, 3              #; a5  = 61, (wrb) a5  <-- 7
       0     2880        M 0x8000070c mul     a5, a5, a6             #; a5  = 7, a6  = 10
       0     2883        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2884        M 0x80000710 sub     a5, a2, a5             #; a2  = 77, a5  = 70, (wrb) a5  <-- 7
       0     2886        M 0x80000714 fcvt.d.wu ft3, a5              #; ac1  = 7
       0     2887        M 0x8000071c addi    a3, a3, -1             #; a3  = 23, (wrb) a3  <-- 22
                         M                                           #; (f:fpu) ft3  <-- 7.0
       0     2888        M 0x80000720 addi    a2, a2, 1              #; a2  = 77, (wrb) a2  <-- 78
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
       0     2889        M 0x80000724 bnez    a3, pc - 32            #; a3  = 22, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 7.0
       0     2890        M 0x80000704 mulhu   a5, a2, a4             #; a2  = 78, a4  = 0xcccccccd
       0     2893        M                                           #; (acc) a5  <-- 0x0037d793
       0     2894        M 0x80000708 srli    a5, a5, 3              #; a5  = 62, (wrb) a5  <-- 7
       0     2895        M 0x8000070c mul     a5, a5, a6             #; a5  = 7, a6  = 10
       0     2898        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2899        M 0x80000710 sub     a5, a2, a5             #; a2  = 78, a5  = 70, (wrb) a5  <-- 8
       0     2901        M 0x80000714 fcvt.d.wu ft3, a5              #; ac1  = 8
       0     2902        M 0x8000071c addi    a3, a3, -1             #; a3  = 22, (wrb) a3  <-- 21
                         M                                           #; (f:fpu) ft3  <-- 8.0
       0     2903        M 0x80000720 addi    a2, a2, 1              #; a2  = 78, (wrb) a2  <-- 79
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
       0     2904        M 0x80000724 bnez    a3, pc - 32            #; a3  = 21, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 8.0
       0     2905        M 0x80000704 mulhu   a5, a2, a4             #; a2  = 79, a4  = 0xcccccccd
       0     2908        M                                           #; (acc) a5  <-- 0x0037d793
       0     2909        M 0x80000708 srli    a5, a5, 3              #; a5  = 63, (wrb) a5  <-- 7
       0     2910        M 0x8000070c mul     a5, a5, a6             #; a5  = 7, a6  = 10
       0     2913        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2914        M 0x80000710 sub     a5, a2, a5             #; a2  = 79, a5  = 70, (wrb) a5  <-- 9
       0     2916        M 0x80000714 fcvt.d.wu ft3, a5              #; ac1  = 9
       0     2917        M 0x8000071c addi    a3, a3, -1             #; a3  = 21, (wrb) a3  <-- 20
                         M                                           #; (f:fpu) ft3  <-- 9.0
       0     2918        M 0x80000720 addi    a2, a2, 1              #; a2  = 79, (wrb) a2  <-- 80
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
       0     2919        M 0x80000724 bnez    a3, pc - 32            #; a3  = 20, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 9.0
       0     2920        M 0x80000704 mulhu   a5, a2, a4             #; a2  = 80, a4  = 0xcccccccd
       0     2923        M                                           #; (acc) a5  <-- 0x0037d793
       0     2924        M 0x80000708 srli    a5, a5, 3              #; a5  = 64, (wrb) a5  <-- 8
       0     2925        M 0x8000070c mul     a5, a5, a6             #; a5  = 8, a6  = 10
       0     2928        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2929        M 0x80000710 sub     a5, a2, a5             #; a2  = 80, a5  = 80, (wrb) a5  <-- 0
       0     2931        M 0x80000714 fcvt.d.wu ft3, a5              #; ac1  = 0
       0     2932        M 0x8000071c addi    a3, a3, -1             #; a3  = 20, (wrb) a3  <-- 19
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     2933        M 0x80000720 addi    a2, a2, 1              #; a2  = 80, (wrb) a2  <-- 81
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     2934        M 0x80000724 bnez    a3, pc - 32            #; a3  = 19, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     2935        M 0x80000704 mulhu   a5, a2, a4             #; a2  = 81, a4  = 0xcccccccd
       0     2938        M                                           #; (acc) a5  <-- 0x0037d793
       0     2939        M 0x80000708 srli    a5, a5, 3              #; a5  = 64, (wrb) a5  <-- 8
       0     2940        M 0x8000070c mul     a5, a5, a6             #; a5  = 8, a6  = 10
       0     2943        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2944        M 0x80000710 sub     a5, a2, a5             #; a2  = 81, a5  = 80, (wrb) a5  <-- 1
       0     2946        M 0x80000714 fcvt.d.wu ft3, a5              #; ac1  = 1
       0     2947        M 0x8000071c addi    a3, a3, -1             #; a3  = 19, (wrb) a3  <-- 18
                         M                                           #; (f:fpu) ft3  <-- 1.0
       0     2948        M 0x80000720 addi    a2, a2, 1              #; a2  = 81, (wrb) a2  <-- 82
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
       0     2949        M 0x80000724 bnez    a3, pc - 32            #; a3  = 18, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 1.0
       0     2950        M 0x80000704 mulhu   a5, a2, a4             #; a2  = 82, a4  = 0xcccccccd
       0     2953        M                                           #; (acc) a5  <-- 0x0037d793
       0     2954        M 0x80000708 srli    a5, a5, 3              #; a5  = 65, (wrb) a5  <-- 8
       0     2955        M 0x8000070c mul     a5, a5, a6             #; a5  = 8, a6  = 10
       0     2958        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2959        M 0x80000710 sub     a5, a2, a5             #; a2  = 82, a5  = 80, (wrb) a5  <-- 2
       0     2961        M 0x80000714 fcvt.d.wu ft3, a5              #; ac1  = 2
       0     2962        M 0x8000071c addi    a3, a3, -1             #; a3  = 18, (wrb) a3  <-- 17
                         M                                           #; (f:fpu) ft3  <-- 2.0
       0     2963        M 0x80000720 addi    a2, a2, 1              #; a2  = 82, (wrb) a2  <-- 83
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
       0     2964        M 0x80000724 bnez    a3, pc - 32            #; a3  = 17, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 2.0
       0     2965        M 0x80000704 mulhu   a5, a2, a4             #; a2  = 83, a4  = 0xcccccccd
       0     2968        M                                           #; (acc) a5  <-- 0x0037d793
       0     2969        M 0x80000708 srli    a5, a5, 3              #; a5  = 66, (wrb) a5  <-- 8
       0     2970        M 0x8000070c mul     a5, a5, a6             #; a5  = 8, a6  = 10
       0     2973        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2974        M 0x80000710 sub     a5, a2, a5             #; a2  = 83, a5  = 80, (wrb) a5  <-- 3
       0     2976        M 0x80000714 fcvt.d.wu ft3, a5              #; ac1  = 3
       0     2977        M 0x8000071c addi    a3, a3, -1             #; a3  = 17, (wrb) a3  <-- 16
                         M                                           #; (f:fpu) ft3  <-- 3.0
       0     2978        M 0x80000720 addi    a2, a2, 1              #; a2  = 83, (wrb) a2  <-- 84
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
       0     2979        M 0x80000724 bnez    a3, pc - 32            #; a3  = 16, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 3.0
       0     2980        M 0x80000704 mulhu   a5, a2, a4             #; a2  = 84, a4  = 0xcccccccd
       0     2983        M                                           #; (acc) a5  <-- 0x0037d793
       0     2984        M 0x80000708 srli    a5, a5, 3              #; a5  = 67, (wrb) a5  <-- 8
       0     2985        M 0x8000070c mul     a5, a5, a6             #; a5  = 8, a6  = 10
       0     2988        M                                           #; (acc) a5  <-- 0x40f607b3
       0     2989        M 0x80000710 sub     a5, a2, a5             #; a2  = 84, a5  = 80, (wrb) a5  <-- 4
       0     2991        M 0x80000714 fcvt.d.wu ft3, a5              #; ac1  = 4
       0     2992        M 0x8000071c addi    a3, a3, -1             #; a3  = 16, (wrb) a3  <-- 15
                         M                                           #; (f:fpu) ft3  <-- 4.0
       0     2993        M 0x80000720 addi    a2, a2, 1              #; a2  = 84, (wrb) a2  <-- 85
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
       0     2994        M 0x80000724 bnez    a3, pc - 32            #; a3  = 15, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 4.0
       0     2995        M 0x80000704 mulhu   a5, a2, a4             #; a2  = 85, a4  = 0xcccccccd
       0     2998        M                                           #; (acc) a5  <-- 0x0037d793
       0     2999        M 0x80000708 srli    a5, a5, 3              #; a5  = 68, (wrb) a5  <-- 8
       0     3000        M 0x8000070c mul     a5, a5, a6             #; a5  = 8, a6  = 10
       0     3003        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3004        M 0x80000710 sub     a5, a2, a5             #; a2  = 85, a5  = 80, (wrb) a5  <-- 5
       0     3006        M 0x80000714 fcvt.d.wu ft3, a5              #; ac1  = 5
       0     3007        M 0x8000071c addi    a3, a3, -1             #; a3  = 15, (wrb) a3  <-- 14
                         M                                           #; (f:fpu) ft3  <-- 5.0
       0     3008        M 0x80000720 addi    a2, a2, 1              #; a2  = 85, (wrb) a2  <-- 86
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
       0     3009        M 0x80000724 bnez    a3, pc - 32            #; a3  = 14, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 5.0
       0     3010        M 0x80000704 mulhu   a5, a2, a4             #; a2  = 86, a4  = 0xcccccccd
       0     3013        M                                           #; (acc) a5  <-- 0x0037d793
       0     3014        M 0x80000708 srli    a5, a5, 3              #; a5  = 68, (wrb) a5  <-- 8
       0     3015        M 0x8000070c mul     a5, a5, a6             #; a5  = 8, a6  = 10
       0     3018        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3019        M 0x80000710 sub     a5, a2, a5             #; a2  = 86, a5  = 80, (wrb) a5  <-- 6
       0     3021        M 0x80000714 fcvt.d.wu ft3, a5              #; ac1  = 6
       0     3022        M 0x8000071c addi    a3, a3, -1             #; a3  = 14, (wrb) a3  <-- 13
                         M                                           #; (f:fpu) ft3  <-- 6.0
       0     3023        M 0x80000720 addi    a2, a2, 1              #; a2  = 86, (wrb) a2  <-- 87
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
       0     3024        M 0x80000724 bnez    a3, pc - 32            #; a3  = 13, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 6.0
       0     3025        M 0x80000704 mulhu   a5, a2, a4             #; a2  = 87, a4  = 0xcccccccd
       0     3028        M                                           #; (acc) a5  <-- 0x0037d793
       0     3029        M 0x80000708 srli    a5, a5, 3              #; a5  = 69, (wrb) a5  <-- 8
       0     3030        M 0x8000070c mul     a5, a5, a6             #; a5  = 8, a6  = 10
       0     3033        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3034        M 0x80000710 sub     a5, a2, a5             #; a2  = 87, a5  = 80, (wrb) a5  <-- 7
       0     3036        M 0x80000714 fcvt.d.wu ft3, a5              #; ac1  = 7
       0     3037        M 0x8000071c addi    a3, a3, -1             #; a3  = 13, (wrb) a3  <-- 12
                         M                                           #; (f:fpu) ft3  <-- 7.0
       0     3038        M 0x80000720 addi    a2, a2, 1              #; a2  = 87, (wrb) a2  <-- 88
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
       0     3039        M 0x80000724 bnez    a3, pc - 32            #; a3  = 12, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 7.0
       0     3040        M 0x80000704 mulhu   a5, a2, a4             #; a2  = 88, a4  = 0xcccccccd
       0     3043        M                                           #; (acc) a5  <-- 0x0037d793
       0     3044        M 0x80000708 srli    a5, a5, 3              #; a5  = 70, (wrb) a5  <-- 8
       0     3045        M 0x8000070c mul     a5, a5, a6             #; a5  = 8, a6  = 10
       0     3048        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3049        M 0x80000710 sub     a5, a2, a5             #; a2  = 88, a5  = 80, (wrb) a5  <-- 8
       0     3051        M 0x80000714 fcvt.d.wu ft3, a5              #; ac1  = 8
       0     3052        M 0x8000071c addi    a3, a3, -1             #; a3  = 12, (wrb) a3  <-- 11
                         M                                           #; (f:fpu) ft3  <-- 8.0
       0     3053        M 0x80000720 addi    a2, a2, 1              #; a2  = 88, (wrb) a2  <-- 89
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
       0     3054        M 0x80000724 bnez    a3, pc - 32            #; a3  = 11, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 8.0
       0     3055        M 0x80000704 mulhu   a5, a2, a4             #; a2  = 89, a4  = 0xcccccccd
       0     3058        M                                           #; (acc) a5  <-- 0x0037d793
       0     3059        M 0x80000708 srli    a5, a5, 3              #; a5  = 71, (wrb) a5  <-- 8
       0     3060        M 0x8000070c mul     a5, a5, a6             #; a5  = 8, a6  = 10
       0     3063        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3064        M 0x80000710 sub     a5, a2, a5             #; a2  = 89, a5  = 80, (wrb) a5  <-- 9
       0     3066        M 0x80000714 fcvt.d.wu ft3, a5              #; ac1  = 9
       0     3067        M 0x8000071c addi    a3, a3, -1             #; a3  = 11, (wrb) a3  <-- 10
                         M                                           #; (f:fpu) ft3  <-- 9.0
       0     3068        M 0x80000720 addi    a2, a2, 1              #; a2  = 89, (wrb) a2  <-- 90
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
       0     3069        M 0x80000724 bnez    a3, pc - 32            #; a3  = 10, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 9.0
       0     3070        M 0x80000704 mulhu   a5, a2, a4             #; a2  = 90, a4  = 0xcccccccd
       0     3073        M                                           #; (acc) a5  <-- 0x0037d793
       0     3074        M 0x80000708 srli    a5, a5, 3              #; a5  = 72, (wrb) a5  <-- 9
       0     3075        M 0x8000070c mul     a5, a5, a6             #; a5  = 9, a6  = 10
       0     3078        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3079        M 0x80000710 sub     a5, a2, a5             #; a2  = 90, a5  = 90, (wrb) a5  <-- 0
       0     3081        M 0x80000714 fcvt.d.wu ft3, a5              #; ac1  = 0
       0     3082        M 0x8000071c addi    a3, a3, -1             #; a3  = 10, (wrb) a3  <-- 9
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     3083        M 0x80000720 addi    a2, a2, 1              #; a2  = 90, (wrb) a2  <-- 91
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     3084        M 0x80000724 bnez    a3, pc - 32            #; a3  = 9, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     3085        M 0x80000704 mulhu   a5, a2, a4             #; a2  = 91, a4  = 0xcccccccd
       0     3088        M                                           #; (acc) a5  <-- 0x0037d793
       0     3089        M 0x80000708 srli    a5, a5, 3              #; a5  = 72, (wrb) a5  <-- 9
       0     3090        M 0x8000070c mul     a5, a5, a6             #; a5  = 9, a6  = 10
       0     3093        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3094        M 0x80000710 sub     a5, a2, a5             #; a2  = 91, a5  = 90, (wrb) a5  <-- 1
       0     3096        M 0x80000714 fcvt.d.wu ft3, a5              #; ac1  = 1
       0     3097        M 0x8000071c addi    a3, a3, -1             #; a3  = 9, (wrb) a3  <-- 8
                         M                                           #; (f:fpu) ft3  <-- 1.0
       0     3098        M 0x80000720 addi    a2, a2, 1              #; a2  = 91, (wrb) a2  <-- 92
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
       0     3099        M 0x80000724 bnez    a3, pc - 32            #; a3  = 8, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 1.0
       0     3100        M 0x80000704 mulhu   a5, a2, a4             #; a2  = 92, a4  = 0xcccccccd
       0     3103        M                                           #; (acc) a5  <-- 0x0037d793
       0     3104        M 0x80000708 srli    a5, a5, 3              #; a5  = 73, (wrb) a5  <-- 9
       0     3105        M 0x8000070c mul     a5, a5, a6             #; a5  = 9, a6  = 10
       0     3108        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3109        M 0x80000710 sub     a5, a2, a5             #; a2  = 92, a5  = 90, (wrb) a5  <-- 2
       0     3111        M 0x80000714 fcvt.d.wu ft3, a5              #; ac1  = 2
       0     3112        M 0x8000071c addi    a3, a3, -1             #; a3  = 8, (wrb) a3  <-- 7
                         M                                           #; (f:fpu) ft3  <-- 2.0
       0     3113        M 0x80000720 addi    a2, a2, 1              #; a2  = 92, (wrb) a2  <-- 93
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
       0     3114        M 0x80000724 bnez    a3, pc - 32            #; a3  = 7, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 2.0
       0     3115        M 0x80000704 mulhu   a5, a2, a4             #; a2  = 93, a4  = 0xcccccccd
       0     3118        M                                           #; (acc) a5  <-- 0x0037d793
       0     3119        M 0x80000708 srli    a5, a5, 3              #; a5  = 74, (wrb) a5  <-- 9
       0     3120        M 0x8000070c mul     a5, a5, a6             #; a5  = 9, a6  = 10
       0     3123        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3124        M 0x80000710 sub     a5, a2, a5             #; a2  = 93, a5  = 90, (wrb) a5  <-- 3
       0     3126        M 0x80000714 fcvt.d.wu ft3, a5              #; ac1  = 3
       0     3127        M 0x8000071c addi    a3, a3, -1             #; a3  = 7, (wrb) a3  <-- 6
                         M                                           #; (f:fpu) ft3  <-- 3.0
       0     3128        M 0x80000720 addi    a2, a2, 1              #; a2  = 93, (wrb) a2  <-- 94
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
       0     3129        M 0x80000724 bnez    a3, pc - 32            #; a3  = 6, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 3.0
       0     3130        M 0x80000704 mulhu   a5, a2, a4             #; a2  = 94, a4  = 0xcccccccd
       0     3133        M                                           #; (acc) a5  <-- 0x0037d793
       0     3134        M 0x80000708 srli    a5, a5, 3              #; a5  = 75, (wrb) a5  <-- 9
       0     3135        M 0x8000070c mul     a5, a5, a6             #; a5  = 9, a6  = 10
       0     3138        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3139        M 0x80000710 sub     a5, a2, a5             #; a2  = 94, a5  = 90, (wrb) a5  <-- 4
       0     3141        M 0x80000714 fcvt.d.wu ft3, a5              #; ac1  = 4
       0     3142        M 0x8000071c addi    a3, a3, -1             #; a3  = 6, (wrb) a3  <-- 5
                         M                                           #; (f:fpu) ft3  <-- 4.0
       0     3143        M 0x80000720 addi    a2, a2, 1              #; a2  = 94, (wrb) a2  <-- 95
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
       0     3144        M 0x80000724 bnez    a3, pc - 32            #; a3  = 5, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 4.0
       0     3145        M 0x80000704 mulhu   a5, a2, a4             #; a2  = 95, a4  = 0xcccccccd
       0     3148        M                                           #; (acc) a5  <-- 0x0037d793
       0     3149        M 0x80000708 srli    a5, a5, 3              #; a5  = 76, (wrb) a5  <-- 9
       0     3150        M 0x8000070c mul     a5, a5, a6             #; a5  = 9, a6  = 10
       0     3153        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3154        M 0x80000710 sub     a5, a2, a5             #; a2  = 95, a5  = 90, (wrb) a5  <-- 5
       0     3156        M 0x80000714 fcvt.d.wu ft3, a5              #; ac1  = 5
       0     3157        M 0x8000071c addi    a3, a3, -1             #; a3  = 5, (wrb) a3  <-- 4
                         M                                           #; (f:fpu) ft3  <-- 5.0
       0     3158        M 0x80000720 addi    a2, a2, 1              #; a2  = 95, (wrb) a2  <-- 96
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
       0     3159        M 0x80000724 bnez    a3, pc - 32            #; a3  = 4, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 5.0
       0     3160        M 0x80000704 mulhu   a5, a2, a4             #; a2  = 96, a4  = 0xcccccccd
       0     3163        M                                           #; (acc) a5  <-- 0x0037d793
       0     3164        M 0x80000708 srli    a5, a5, 3              #; a5  = 76, (wrb) a5  <-- 9
       0     3165        M 0x8000070c mul     a5, a5, a6             #; a5  = 9, a6  = 10
       0     3168        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3169        M 0x80000710 sub     a5, a2, a5             #; a2  = 96, a5  = 90, (wrb) a5  <-- 6
       0     3171        M 0x80000714 fcvt.d.wu ft3, a5              #; ac1  = 6
       0     3172        M 0x8000071c addi    a3, a3, -1             #; a3  = 4, (wrb) a3  <-- 3
                         M                                           #; (f:fpu) ft3  <-- 6.0
       0     3173        M 0x80000720 addi    a2, a2, 1              #; a2  = 96, (wrb) a2  <-- 97
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
       0     3174        M 0x80000724 bnez    a3, pc - 32            #; a3  = 3, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 6.0
       0     3175        M 0x80000704 mulhu   a5, a2, a4             #; a2  = 97, a4  = 0xcccccccd
       0     3178        M                                           #; (acc) a5  <-- 0x0037d793
       0     3179        M 0x80000708 srli    a5, a5, 3              #; a5  = 77, (wrb) a5  <-- 9
       0     3180        M 0x8000070c mul     a5, a5, a6             #; a5  = 9, a6  = 10
       0     3183        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3184        M 0x80000710 sub     a5, a2, a5             #; a2  = 97, a5  = 90, (wrb) a5  <-- 7
       0     3186        M 0x80000714 fcvt.d.wu ft3, a5              #; ac1  = 7
       0     3187        M 0x8000071c addi    a3, a3, -1             #; a3  = 3, (wrb) a3  <-- 2
                         M                                           #; (f:fpu) ft3  <-- 7.0
       0     3188        M 0x80000720 addi    a2, a2, 1              #; a2  = 97, (wrb) a2  <-- 98
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
       0     3189        M 0x80000724 bnez    a3, pc - 32            #; a3  = 2, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 7.0
       0     3190        M 0x80000704 mulhu   a5, a2, a4             #; a2  = 98, a4  = 0xcccccccd
       0     3193        M                                           #; (acc) a5  <-- 0x0037d793
       0     3194        M 0x80000708 srli    a5, a5, 3              #; a5  = 78, (wrb) a5  <-- 9
       0     3195        M 0x8000070c mul     a5, a5, a6             #; a5  = 9, a6  = 10
       0     3198        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3199        M 0x80000710 sub     a5, a2, a5             #; a2  = 98, a5  = 90, (wrb) a5  <-- 8
       0     3201        M 0x80000714 fcvt.d.wu ft3, a5              #; ac1  = 8
       0     3202        M 0x8000071c addi    a3, a3, -1             #; a3  = 2, (wrb) a3  <-- 1
                         M                                           #; (f:fpu) ft3  <-- 8.0
       0     3203        M 0x80000720 addi    a2, a2, 1              #; a2  = 98, (wrb) a2  <-- 99
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
       0     3204        M 0x80000724 bnez    a3, pc - 32            #; a3  = 1, taken, goto 0x80000704
                         M                                           #; (f:fpu) ft0  <-- 8.0
       0     3205        M 0x80000704 mulhu   a5, a2, a4             #; a2  = 99, a4  = 0xcccccccd
       0     3208        M                                           #; (acc) a5  <-- 0x0037d793
       0     3209        M 0x80000708 srli    a5, a5, 3              #; a5  = 79, (wrb) a5  <-- 9
       0     3210        M 0x8000070c mul     a5, a5, a6             #; a5  = 9, a6  = 10
       0     3213        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3214        M 0x80000710 sub     a5, a2, a5             #; a2  = 99, a5  = 90, (wrb) a5  <-- 9
       0     3216        M 0x80000714 fcvt.d.wu ft3, a5              #; ac1  = 9
       0     3217        M 0x8000071c addi    a3, a3, -1             #; a3  = 1, (wrb) a3  <-- 0
                         M                                           #; (f:fpu) ft3  <-- 9.0
       0     3218        M 0x80000720 addi    a2, a2, 1              #; a2  = 99, (wrb) a2  <-- 100
                         M 0x80000718 fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
       0     3219        M 0x80000724 bnez    a3, pc - 32            #; a3  = 0, not taken
                         M                                           #; (f:fpu) ft0  <-- 9.0
       0     3221        M 0x8000072c j       pc + 0x44              #; goto 0x80000770
                         M 0x80000728 csrrci  a2, ssr, 1             #; 
       0     3232        M 0x80000770 srli    a2, a1, 20             #; a1  = 0x00100320, (wrb) a2  <-- 1
       0     3233        M 0x80000774 snez    a2, a2                 #; a2  = 1, (wrb) a2  <-- 1
       0     3234        M 0x80000778 lui     a3, 0x120              #; (wrb) a3  <-- 0x00120000
       0     3235        M 0x8000077c addi    a3, a3, -791           #; a3  = 0x00120000, (wrb) a3  <-- 0x0011fce9
       0     3244        M 0x80000780 sltu    a3, a1, a3             #; a1  = 0x00100320, a3  = 0x0011fce9, (wrb) a3  <-- 1
       0     3245        M 0x80000784 and     a2, a2, a3             #; a2  = 1, a3  = 1, (wrb) a2  <-- 1
       0     3246        M 0x80000788 beqz    a2, pc + 108           #; a2  = 1, not taken
       0     3247        M 0x8000078c li      a2, 0                  #; (wrb) a2  <-- 0
       0     3256        M 0x80000790 li      a3, 8                  #; (wrb) a3  <-- 8
       0     3257        M 0x80000794 li      a4, 99                 #; (wrb) a4  <-- 99
       0     3258        M 0x80000798 li      a5, 64                 #; (wrb) a5  <-- 64
       0     3259        M 0x8000079c scfgw   a4, a5                 #; a4  = 99, a5  = 64
       0     3268        M 0x800007a0 li      a4, 192                #; (wrb) a4  <-- 192
       0     3269        M 0x800007a4 scfgw   a3, a4                 #; a3  = 8, a4  = 192
       0     3270        M 0x800007a8 li      a3, 32                 #; (wrb) a3  <-- 32
       0     3271        M 0x800007ac scfgw   zero, a3               #; a3  = 32
       0     3280        M 0x800007b0 scfgwi  a1, 896                #; a1  = 0x00100320
       0     3282        M 0x800007b8 li      a3, 100                #; (wrb) a3  <-- 100
                         M 0x800007b4 csrrsi  a3, ssr, 1             #; 
       0     3283        M 0x800007bc lui     a4, 0xccccd            #; (wrb) a4  <-- 0xccccd000
       0     3292        M 0x800007c0 addi    a4, a4, -819           #; a4  = 0xccccd000, (wrb) a4  <-- 0xcccccccd
       0     3293        M 0x800007c4 li      a6, 10                 #; (wrb) a6  <-- 10
       0     3294        M 0x800007c8 mulhu   a5, a2, a4             #; a2  = 0, a4  = 0xcccccccd
       0     3297        M                                           #; (acc) a5  <-- 0x0037d793
       0     3298        M 0x800007cc srli    a5, a5, 3              #; a5  = 0, (wrb) a5  <-- 0
       0     3304        M 0x800007d0 mul     a5, a5, a6             #; a5  = 0, a6  = 10
       0     3307        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3308        M 0x800007d4 sub     a5, a2, a5             #; a2  = 0, a5  = 0, (wrb) a5  <-- 0
       0     3310        M 0x800007d8 fcvt.d.wu ft3, a5              #; ac1  = 0
       0     3311        M                                           #; (f:fpu) ft3  <-- 0.0
       0     3312        M 0x800007dc fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     3313        M                                           #; (f:fpu) ft0  <-- 0.0
       0     3316        M 0x800007e0 addi    a3, a3, -1             #; a3  = 100, (wrb) a3  <-- 99
       0     3317        M 0x800007e4 addi    a2, a2, 1              #; a2  = 0, (wrb) a2  <-- 1
       0     3318        M 0x800007e8 bnez    a3, pc - 32            #; a3  = 99, taken, goto 0x800007c8
       0     3319        M 0x800007c8 mulhu   a5, a2, a4             #; a2  = 1, a4  = 0xcccccccd
       0     3322        M                                           #; (acc) a5  <-- 0x0037d793
       0     3323        M 0x800007cc srli    a5, a5, 3              #; a5  = 0, (wrb) a5  <-- 0
       0     3324        M 0x800007d0 mul     a5, a5, a6             #; a5  = 0, a6  = 10
       0     3327        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3328        M 0x800007d4 sub     a5, a2, a5             #; a2  = 1, a5  = 0, (wrb) a5  <-- 1
       0     3330        M 0x800007d8 fcvt.d.wu ft3, a5              #; ac1  = 1
       0     3331        M 0x800007e0 addi    a3, a3, -1             #; a3  = 99, (wrb) a3  <-- 98
                         M                                           #; (f:fpu) ft3  <-- 1.0
       0     3332        M 0x800007e4 addi    a2, a2, 1              #; a2  = 1, (wrb) a2  <-- 2
                         M 0x800007dc fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
       0     3333        M 0x800007e8 bnez    a3, pc - 32            #; a3  = 98, taken, goto 0x800007c8
                         M                                           #; (f:fpu) ft0  <-- 1.0
       0     3334        M 0x800007c8 mulhu   a5, a2, a4             #; a2  = 2, a4  = 0xcccccccd
       0     3337        M                                           #; (acc) a5  <-- 0x0037d793
       0     3338        M 0x800007cc srli    a5, a5, 3              #; a5  = 1, (wrb) a5  <-- 0
       0     3339        M 0x800007d0 mul     a5, a5, a6             #; a5  = 0, a6  = 10
       0     3342        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3343        M 0x800007d4 sub     a5, a2, a5             #; a2  = 2, a5  = 0, (wrb) a5  <-- 2
       0     3345        M 0x800007d8 fcvt.d.wu ft3, a5              #; ac1  = 2
       0     3346        M 0x800007e0 addi    a3, a3, -1             #; a3  = 98, (wrb) a3  <-- 97
                         M                                           #; (f:fpu) ft3  <-- 2.0
       0     3347        M 0x800007e4 addi    a2, a2, 1              #; a2  = 2, (wrb) a2  <-- 3
                         M 0x800007dc fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
       0     3348        M 0x800007e8 bnez    a3, pc - 32            #; a3  = 97, taken, goto 0x800007c8
                         M                                           #; (f:fpu) ft0  <-- 2.0
       0     3349        M 0x800007c8 mulhu   a5, a2, a4             #; a2  = 3, a4  = 0xcccccccd
       0     3352        M                                           #; (acc) a5  <-- 0x0037d793
       0     3353        M 0x800007cc srli    a5, a5, 3              #; a5  = 2, (wrb) a5  <-- 0
       0     3354        M 0x800007d0 mul     a5, a5, a6             #; a5  = 0, a6  = 10
       0     3357        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3358        M 0x800007d4 sub     a5, a2, a5             #; a2  = 3, a5  = 0, (wrb) a5  <-- 3
       0     3360        M 0x800007d8 fcvt.d.wu ft3, a5              #; ac1  = 3
       0     3361        M 0x800007e0 addi    a3, a3, -1             #; a3  = 97, (wrb) a3  <-- 96
                         M                                           #; (f:fpu) ft3  <-- 3.0
       0     3362        M 0x800007e4 addi    a2, a2, 1              #; a2  = 3, (wrb) a2  <-- 4
                         M 0x800007dc fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
       0     3363        M 0x800007e8 bnez    a3, pc - 32            #; a3  = 96, taken, goto 0x800007c8
                         M                                           #; (f:fpu) ft0  <-- 3.0
       0     3364        M 0x800007c8 mulhu   a5, a2, a4             #; a2  = 4, a4  = 0xcccccccd
       0     3367        M                                           #; (acc) a5  <-- 0x0037d793
       0     3368        M 0x800007cc srli    a5, a5, 3              #; a5  = 3, (wrb) a5  <-- 0
       0     3369        M 0x800007d0 mul     a5, a5, a6             #; a5  = 0, a6  = 10
       0     3372        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3373        M 0x800007d4 sub     a5, a2, a5             #; a2  = 4, a5  = 0, (wrb) a5  <-- 4
       0     3375        M 0x800007d8 fcvt.d.wu ft3, a5              #; ac1  = 4
       0     3376        M 0x800007e0 addi    a3, a3, -1             #; a3  = 96, (wrb) a3  <-- 95
                         M                                           #; (f:fpu) ft3  <-- 4.0
       0     3377        M 0x800007e4 addi    a2, a2, 1              #; a2  = 4, (wrb) a2  <-- 5
                         M 0x800007dc fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
       0     3378        M 0x800007e8 bnez    a3, pc - 32            #; a3  = 95, taken, goto 0x800007c8
                         M                                           #; (f:fpu) ft0  <-- 4.0
       0     3379        M 0x800007c8 mulhu   a5, a2, a4             #; a2  = 5, a4  = 0xcccccccd
       0     3382        M                                           #; (acc) a5  <-- 0x0037d793
       0     3383        M 0x800007cc srli    a5, a5, 3              #; a5  = 4, (wrb) a5  <-- 0
       0     3384        M 0x800007d0 mul     a5, a5, a6             #; a5  = 0, a6  = 10
       0     3387        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3388        M 0x800007d4 sub     a5, a2, a5             #; a2  = 5, a5  = 0, (wrb) a5  <-- 5
       0     3390        M 0x800007d8 fcvt.d.wu ft3, a5              #; ac1  = 5
       0     3391        M 0x800007e0 addi    a3, a3, -1             #; a3  = 95, (wrb) a3  <-- 94
                         M                                           #; (f:fpu) ft3  <-- 5.0
       0     3392        M 0x800007e4 addi    a2, a2, 1              #; a2  = 5, (wrb) a2  <-- 6
                         M 0x800007dc fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
       0     3393        M 0x800007e8 bnez    a3, pc - 32            #; a3  = 94, taken, goto 0x800007c8
                         M                                           #; (f:fpu) ft0  <-- 5.0
       0     3394        M 0x800007c8 mulhu   a5, a2, a4             #; a2  = 6, a4  = 0xcccccccd
       0     3397        M                                           #; (acc) a5  <-- 0x0037d793
       0     3398        M 0x800007cc srli    a5, a5, 3              #; a5  = 4, (wrb) a5  <-- 0
       0     3399        M 0x800007d0 mul     a5, a5, a6             #; a5  = 0, a6  = 10
       0     3402        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3403        M 0x800007d4 sub     a5, a2, a5             #; a2  = 6, a5  = 0, (wrb) a5  <-- 6
       0     3405        M 0x800007d8 fcvt.d.wu ft3, a5              #; ac1  = 6
       0     3406        M 0x800007e0 addi    a3, a3, -1             #; a3  = 94, (wrb) a3  <-- 93
                         M                                           #; (f:fpu) ft3  <-- 6.0
       0     3407        M 0x800007e4 addi    a2, a2, 1              #; a2  = 6, (wrb) a2  <-- 7
                         M 0x800007dc fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
       0     3408        M 0x800007e8 bnez    a3, pc - 32            #; a3  = 93, taken, goto 0x800007c8
                         M                                           #; (f:fpu) ft0  <-- 6.0
       0     3409        M 0x800007c8 mulhu   a5, a2, a4             #; a2  = 7, a4  = 0xcccccccd
       0     3412        M                                           #; (acc) a5  <-- 0x0037d793
       0     3413        M 0x800007cc srli    a5, a5, 3              #; a5  = 5, (wrb) a5  <-- 0
       0     3414        M 0x800007d0 mul     a5, a5, a6             #; a5  = 0, a6  = 10
       0     3417        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3418        M 0x800007d4 sub     a5, a2, a5             #; a2  = 7, a5  = 0, (wrb) a5  <-- 7
       0     3420        M 0x800007d8 fcvt.d.wu ft3, a5              #; ac1  = 7
       0     3421        M 0x800007e0 addi    a3, a3, -1             #; a3  = 93, (wrb) a3  <-- 92
                         M                                           #; (f:fpu) ft3  <-- 7.0
       0     3422        M 0x800007e4 addi    a2, a2, 1              #; a2  = 7, (wrb) a2  <-- 8
                         M 0x800007dc fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
       0     3423        M 0x800007e8 bnez    a3, pc - 32            #; a3  = 92, taken, goto 0x800007c8
                         M                                           #; (f:fpu) ft0  <-- 7.0
       0     3424        M 0x800007c8 mulhu   a5, a2, a4             #; a2  = 8, a4  = 0xcccccccd
       0     3427        M                                           #; (acc) a5  <-- 0x0037d793
       0     3428        M 0x800007cc srli    a5, a5, 3              #; a5  = 6, (wrb) a5  <-- 0
       0     3429        M 0x800007d0 mul     a5, a5, a6             #; a5  = 0, a6  = 10
       0     3432        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3433        M 0x800007d4 sub     a5, a2, a5             #; a2  = 8, a5  = 0, (wrb) a5  <-- 8
       0     3435        M 0x800007d8 fcvt.d.wu ft3, a5              #; ac1  = 8
       0     3436        M 0x800007e0 addi    a3, a3, -1             #; a3  = 92, (wrb) a3  <-- 91
                         M                                           #; (f:fpu) ft3  <-- 8.0
       0     3437        M 0x800007e4 addi    a2, a2, 1              #; a2  = 8, (wrb) a2  <-- 9
                         M 0x800007dc fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
       0     3438        M 0x800007e8 bnez    a3, pc - 32            #; a3  = 91, taken, goto 0x800007c8
                         M                                           #; (f:fpu) ft0  <-- 8.0
       0     3439        M 0x800007c8 mulhu   a5, a2, a4             #; a2  = 9, a4  = 0xcccccccd
       0     3442        M                                           #; (acc) a5  <-- 0x0037d793
       0     3443        M 0x800007cc srli    a5, a5, 3              #; a5  = 7, (wrb) a5  <-- 0
       0     3444        M 0x800007d0 mul     a5, a5, a6             #; a5  = 0, a6  = 10
       0     3447        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3448        M 0x800007d4 sub     a5, a2, a5             #; a2  = 9, a5  = 0, (wrb) a5  <-- 9
       0     3450        M 0x800007d8 fcvt.d.wu ft3, a5              #; ac1  = 9
       0     3451        M 0x800007e0 addi    a3, a3, -1             #; a3  = 91, (wrb) a3  <-- 90
                         M                                           #; (f:fpu) ft3  <-- 9.0
       0     3452        M 0x800007e4 addi    a2, a2, 1              #; a2  = 9, (wrb) a2  <-- 10
                         M 0x800007dc fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
       0     3453        M 0x800007e8 bnez    a3, pc - 32            #; a3  = 90, taken, goto 0x800007c8
                         M                                           #; (f:fpu) ft0  <-- 9.0
       0     3454        M 0x800007c8 mulhu   a5, a2, a4             #; a2  = 10, a4  = 0xcccccccd
       0     3457        M                                           #; (acc) a5  <-- 0x0037d793
       0     3458        M 0x800007cc srli    a5, a5, 3              #; a5  = 8, (wrb) a5  <-- 1
       0     3459        M 0x800007d0 mul     a5, a5, a6             #; a5  = 1, a6  = 10
       0     3462        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3463        M 0x800007d4 sub     a5, a2, a5             #; a2  = 10, a5  = 10, (wrb) a5  <-- 0
       0     3465        M 0x800007d8 fcvt.d.wu ft3, a5              #; ac1  = 0
       0     3466        M 0x800007e0 addi    a3, a3, -1             #; a3  = 90, (wrb) a3  <-- 89
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     3467        M 0x800007e4 addi    a2, a2, 1              #; a2  = 10, (wrb) a2  <-- 11
                         M 0x800007dc fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     3468        M 0x800007e8 bnez    a3, pc - 32            #; a3  = 89, taken, goto 0x800007c8
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     3469        M 0x800007c8 mulhu   a5, a2, a4             #; a2  = 11, a4  = 0xcccccccd
       0     3472        M                                           #; (acc) a5  <-- 0x0037d793
       0     3473        M 0x800007cc srli    a5, a5, 3              #; a5  = 8, (wrb) a5  <-- 1
       0     3474        M 0x800007d0 mul     a5, a5, a6             #; a5  = 1, a6  = 10
       0     3477        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3478        M 0x800007d4 sub     a5, a2, a5             #; a2  = 11, a5  = 10, (wrb) a5  <-- 1
       0     3480        M 0x800007d8 fcvt.d.wu ft3, a5              #; ac1  = 1
       0     3481        M 0x800007e0 addi    a3, a3, -1             #; a3  = 89, (wrb) a3  <-- 88
                         M                                           #; (f:fpu) ft3  <-- 1.0
       0     3482        M 0x800007e4 addi    a2, a2, 1              #; a2  = 11, (wrb) a2  <-- 12
                         M 0x800007dc fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
       0     3483        M 0x800007e8 bnez    a3, pc - 32            #; a3  = 88, taken, goto 0x800007c8
                         M                                           #; (f:fpu) ft0  <-- 1.0
       0     3484        M 0x800007c8 mulhu   a5, a2, a4             #; a2  = 12, a4  = 0xcccccccd
       0     3487        M                                           #; (acc) a5  <-- 0x0037d793
       0     3488        M 0x800007cc srli    a5, a5, 3              #; a5  = 9, (wrb) a5  <-- 1
       0     3489        M 0x800007d0 mul     a5, a5, a6             #; a5  = 1, a6  = 10
       0     3492        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3493        M 0x800007d4 sub     a5, a2, a5             #; a2  = 12, a5  = 10, (wrb) a5  <-- 2
       0     3495        M 0x800007d8 fcvt.d.wu ft3, a5              #; ac1  = 2
       0     3496        M 0x800007e0 addi    a3, a3, -1             #; a3  = 88, (wrb) a3  <-- 87
                         M                                           #; (f:fpu) ft3  <-- 2.0
       0     3497        M 0x800007e4 addi    a2, a2, 1              #; a2  = 12, (wrb) a2  <-- 13
                         M 0x800007dc fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
       0     3498        M 0x800007e8 bnez    a3, pc - 32            #; a3  = 87, taken, goto 0x800007c8
                         M                                           #; (f:fpu) ft0  <-- 2.0
       0     3499        M 0x800007c8 mulhu   a5, a2, a4             #; a2  = 13, a4  = 0xcccccccd
       0     3502        M                                           #; (acc) a5  <-- 0x0037d793
       0     3503        M 0x800007cc srli    a5, a5, 3              #; a5  = 10, (wrb) a5  <-- 1
       0     3504        M 0x800007d0 mul     a5, a5, a6             #; a5  = 1, a6  = 10
       0     3507        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3508        M 0x800007d4 sub     a5, a2, a5             #; a2  = 13, a5  = 10, (wrb) a5  <-- 3
       0     3510        M 0x800007d8 fcvt.d.wu ft3, a5              #; ac1  = 3
       0     3511        M 0x800007e0 addi    a3, a3, -1             #; a3  = 87, (wrb) a3  <-- 86
                         M                                           #; (f:fpu) ft3  <-- 3.0
       0     3512        M 0x800007e4 addi    a2, a2, 1              #; a2  = 13, (wrb) a2  <-- 14
                         M 0x800007dc fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
       0     3513        M 0x800007e8 bnez    a3, pc - 32            #; a3  = 86, taken, goto 0x800007c8
                         M                                           #; (f:fpu) ft0  <-- 3.0
       0     3514        M 0x800007c8 mulhu   a5, a2, a4             #; a2  = 14, a4  = 0xcccccccd
       0     3517        M                                           #; (acc) a5  <-- 0x0037d793
       0     3518        M 0x800007cc srli    a5, a5, 3              #; a5  = 11, (wrb) a5  <-- 1
       0     3519        M 0x800007d0 mul     a5, a5, a6             #; a5  = 1, a6  = 10
       0     3522        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3523        M 0x800007d4 sub     a5, a2, a5             #; a2  = 14, a5  = 10, (wrb) a5  <-- 4
       0     3525        M 0x800007d8 fcvt.d.wu ft3, a5              #; ac1  = 4
       0     3526        M 0x800007e0 addi    a3, a3, -1             #; a3  = 86, (wrb) a3  <-- 85
                         M                                           #; (f:fpu) ft3  <-- 4.0
       0     3527        M 0x800007e4 addi    a2, a2, 1              #; a2  = 14, (wrb) a2  <-- 15
                         M 0x800007dc fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
       0     3528        M 0x800007e8 bnez    a3, pc - 32            #; a3  = 85, taken, goto 0x800007c8
                         M                                           #; (f:fpu) ft0  <-- 4.0
       0     3529        M 0x800007c8 mulhu   a5, a2, a4             #; a2  = 15, a4  = 0xcccccccd
       0     3532        M                                           #; (acc) a5  <-- 0x0037d793
       0     3533        M 0x800007cc srli    a5, a5, 3              #; a5  = 12, (wrb) a5  <-- 1
       0     3534        M 0x800007d0 mul     a5, a5, a6             #; a5  = 1, a6  = 10
       0     3537        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3538        M 0x800007d4 sub     a5, a2, a5             #; a2  = 15, a5  = 10, (wrb) a5  <-- 5
       0     3540        M 0x800007d8 fcvt.d.wu ft3, a5              #; ac1  = 5
       0     3541        M 0x800007e0 addi    a3, a3, -1             #; a3  = 85, (wrb) a3  <-- 84
                         M                                           #; (f:fpu) ft3  <-- 5.0
       0     3542        M 0x800007e4 addi    a2, a2, 1              #; a2  = 15, (wrb) a2  <-- 16
                         M 0x800007dc fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
       0     3543        M 0x800007e8 bnez    a3, pc - 32            #; a3  = 84, taken, goto 0x800007c8
                         M                                           #; (f:fpu) ft0  <-- 5.0
       0     3544        M 0x800007c8 mulhu   a5, a2, a4             #; a2  = 16, a4  = 0xcccccccd
       0     3547        M                                           #; (acc) a5  <-- 0x0037d793
       0     3548        M 0x800007cc srli    a5, a5, 3              #; a5  = 12, (wrb) a5  <-- 1
       0     3549        M 0x800007d0 mul     a5, a5, a6             #; a5  = 1, a6  = 10
       0     3552        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3553        M 0x800007d4 sub     a5, a2, a5             #; a2  = 16, a5  = 10, (wrb) a5  <-- 6
       0     3555        M 0x800007d8 fcvt.d.wu ft3, a5              #; ac1  = 6
       0     3556        M 0x800007e0 addi    a3, a3, -1             #; a3  = 84, (wrb) a3  <-- 83
                         M                                           #; (f:fpu) ft3  <-- 6.0
       0     3557        M 0x800007e4 addi    a2, a2, 1              #; a2  = 16, (wrb) a2  <-- 17
                         M 0x800007dc fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
       0     3558        M 0x800007e8 bnez    a3, pc - 32            #; a3  = 83, taken, goto 0x800007c8
                         M                                           #; (f:fpu) ft0  <-- 6.0
       0     3559        M 0x800007c8 mulhu   a5, a2, a4             #; a2  = 17, a4  = 0xcccccccd
       0     3562        M                                           #; (acc) a5  <-- 0x0037d793
       0     3563        M 0x800007cc srli    a5, a5, 3              #; a5  = 13, (wrb) a5  <-- 1
       0     3564        M 0x800007d0 mul     a5, a5, a6             #; a5  = 1, a6  = 10
       0     3567        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3568        M 0x800007d4 sub     a5, a2, a5             #; a2  = 17, a5  = 10, (wrb) a5  <-- 7
       0     3570        M 0x800007d8 fcvt.d.wu ft3, a5              #; ac1  = 7
       0     3571        M 0x800007e0 addi    a3, a3, -1             #; a3  = 83, (wrb) a3  <-- 82
                         M                                           #; (f:fpu) ft3  <-- 7.0
       0     3572        M 0x800007e4 addi    a2, a2, 1              #; a2  = 17, (wrb) a2  <-- 18
                         M 0x800007dc fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
       0     3573        M 0x800007e8 bnez    a3, pc - 32            #; a3  = 82, taken, goto 0x800007c8
                         M                                           #; (f:fpu) ft0  <-- 7.0
       0     3574        M 0x800007c8 mulhu   a5, a2, a4             #; a2  = 18, a4  = 0xcccccccd
       0     3577        M                                           #; (acc) a5  <-- 0x0037d793
       0     3578        M 0x800007cc srli    a5, a5, 3              #; a5  = 14, (wrb) a5  <-- 1
       0     3579        M 0x800007d0 mul     a5, a5, a6             #; a5  = 1, a6  = 10
       0     3582        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3583        M 0x800007d4 sub     a5, a2, a5             #; a2  = 18, a5  = 10, (wrb) a5  <-- 8
       0     3585        M 0x800007d8 fcvt.d.wu ft3, a5              #; ac1  = 8
       0     3586        M 0x800007e0 addi    a3, a3, -1             #; a3  = 82, (wrb) a3  <-- 81
                         M                                           #; (f:fpu) ft3  <-- 8.0
       0     3587        M 0x800007e4 addi    a2, a2, 1              #; a2  = 18, (wrb) a2  <-- 19
                         M 0x800007dc fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
       0     3588        M 0x800007e8 bnez    a3, pc - 32            #; a3  = 81, taken, goto 0x800007c8
                         M                                           #; (f:fpu) ft0  <-- 8.0
       0     3589        M 0x800007c8 mulhu   a5, a2, a4             #; a2  = 19, a4  = 0xcccccccd
       0     3592        M                                           #; (acc) a5  <-- 0x0037d793
       0     3593        M 0x800007cc srli    a5, a5, 3              #; a5  = 15, (wrb) a5  <-- 1
       0     3594        M 0x800007d0 mul     a5, a5, a6             #; a5  = 1, a6  = 10
       0     3597        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3598        M 0x800007d4 sub     a5, a2, a5             #; a2  = 19, a5  = 10, (wrb) a5  <-- 9
       0     3600        M 0x800007d8 fcvt.d.wu ft3, a5              #; ac1  = 9
       0     3601        M 0x800007e0 addi    a3, a3, -1             #; a3  = 81, (wrb) a3  <-- 80
                         M                                           #; (f:fpu) ft3  <-- 9.0
       0     3602        M 0x800007e4 addi    a2, a2, 1              #; a2  = 19, (wrb) a2  <-- 20
                         M 0x800007dc fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
       0     3603        M 0x800007e8 bnez    a3, pc - 32            #; a3  = 80, taken, goto 0x800007c8
                         M                                           #; (f:fpu) ft0  <-- 9.0
       0     3604        M 0x800007c8 mulhu   a5, a2, a4             #; a2  = 20, a4  = 0xcccccccd
       0     3607        M                                           #; (acc) a5  <-- 0x0037d793
       0     3608        M 0x800007cc srli    a5, a5, 3              #; a5  = 16, (wrb) a5  <-- 2
       0     3609        M 0x800007d0 mul     a5, a5, a6             #; a5  = 2, a6  = 10
       0     3612        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3613        M 0x800007d4 sub     a5, a2, a5             #; a2  = 20, a5  = 20, (wrb) a5  <-- 0
       0     3615        M 0x800007d8 fcvt.d.wu ft3, a5              #; ac1  = 0
       0     3616        M 0x800007e0 addi    a3, a3, -1             #; a3  = 80, (wrb) a3  <-- 79
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     3617        M 0x800007e4 addi    a2, a2, 1              #; a2  = 20, (wrb) a2  <-- 21
                         M 0x800007dc fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     3618        M 0x800007e8 bnez    a3, pc - 32            #; a3  = 79, taken, goto 0x800007c8
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     3619        M 0x800007c8 mulhu   a5, a2, a4             #; a2  = 21, a4  = 0xcccccccd
       0     3622        M                                           #; (acc) a5  <-- 0x0037d793
       0     3623        M 0x800007cc srli    a5, a5, 3              #; a5  = 16, (wrb) a5  <-- 2
       0     3624        M 0x800007d0 mul     a5, a5, a6             #; a5  = 2, a6  = 10
       0     3627        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3628        M 0x800007d4 sub     a5, a2, a5             #; a2  = 21, a5  = 20, (wrb) a5  <-- 1
       0     3630        M 0x800007d8 fcvt.d.wu ft3, a5              #; ac1  = 1
       0     3631        M 0x800007e0 addi    a3, a3, -1             #; a3  = 79, (wrb) a3  <-- 78
                         M                                           #; (f:fpu) ft3  <-- 1.0
       0     3632        M 0x800007e4 addi    a2, a2, 1              #; a2  = 21, (wrb) a2  <-- 22
                         M 0x800007dc fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
       0     3633        M 0x800007e8 bnez    a3, pc - 32            #; a3  = 78, taken, goto 0x800007c8
                         M                                           #; (f:fpu) ft0  <-- 1.0
       0     3634        M 0x800007c8 mulhu   a5, a2, a4             #; a2  = 22, a4  = 0xcccccccd
       0     3637        M                                           #; (acc) a5  <-- 0x0037d793
       0     3638        M 0x800007cc srli    a5, a5, 3              #; a5  = 17, (wrb) a5  <-- 2
       0     3639        M 0x800007d0 mul     a5, a5, a6             #; a5  = 2, a6  = 10
       0     3642        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3643        M 0x800007d4 sub     a5, a2, a5             #; a2  = 22, a5  = 20, (wrb) a5  <-- 2
       0     3645        M 0x800007d8 fcvt.d.wu ft3, a5              #; ac1  = 2
       0     3646        M 0x800007e0 addi    a3, a3, -1             #; a3  = 78, (wrb) a3  <-- 77
                         M                                           #; (f:fpu) ft3  <-- 2.0
       0     3647        M 0x800007e4 addi    a2, a2, 1              #; a2  = 22, (wrb) a2  <-- 23
                         M 0x800007dc fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
       0     3648        M 0x800007e8 bnez    a3, pc - 32            #; a3  = 77, taken, goto 0x800007c8
                         M                                           #; (f:fpu) ft0  <-- 2.0
       0     3649        M 0x800007c8 mulhu   a5, a2, a4             #; a2  = 23, a4  = 0xcccccccd
       0     3652        M                                           #; (acc) a5  <-- 0x0037d793
       0     3653        M 0x800007cc srli    a5, a5, 3              #; a5  = 18, (wrb) a5  <-- 2
       0     3654        M 0x800007d0 mul     a5, a5, a6             #; a5  = 2, a6  = 10
       0     3657        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3658        M 0x800007d4 sub     a5, a2, a5             #; a2  = 23, a5  = 20, (wrb) a5  <-- 3
       0     3660        M 0x800007d8 fcvt.d.wu ft3, a5              #; ac1  = 3
       0     3661        M 0x800007e0 addi    a3, a3, -1             #; a3  = 77, (wrb) a3  <-- 76
                         M                                           #; (f:fpu) ft3  <-- 3.0
       0     3662        M 0x800007e4 addi    a2, a2, 1              #; a2  = 23, (wrb) a2  <-- 24
                         M 0x800007dc fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
       0     3663        M 0x800007e8 bnez    a3, pc - 32            #; a3  = 76, taken, goto 0x800007c8
                         M                                           #; (f:fpu) ft0  <-- 3.0
       0     3664        M 0x800007c8 mulhu   a5, a2, a4             #; a2  = 24, a4  = 0xcccccccd
       0     3667        M                                           #; (acc) a5  <-- 0x0037d793
       0     3668        M 0x800007cc srli    a5, a5, 3              #; a5  = 19, (wrb) a5  <-- 2
       0     3669        M 0x800007d0 mul     a5, a5, a6             #; a5  = 2, a6  = 10
       0     3672        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3673        M 0x800007d4 sub     a5, a2, a5             #; a2  = 24, a5  = 20, (wrb) a5  <-- 4
       0     3675        M 0x800007d8 fcvt.d.wu ft3, a5              #; ac1  = 4
       0     3676        M 0x800007e0 addi    a3, a3, -1             #; a3  = 76, (wrb) a3  <-- 75
                         M                                           #; (f:fpu) ft3  <-- 4.0
       0     3677        M 0x800007e4 addi    a2, a2, 1              #; a2  = 24, (wrb) a2  <-- 25
                         M 0x800007dc fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
       0     3678        M 0x800007e8 bnez    a3, pc - 32            #; a3  = 75, taken, goto 0x800007c8
                         M                                           #; (f:fpu) ft0  <-- 4.0
       0     3679        M 0x800007c8 mulhu   a5, a2, a4             #; a2  = 25, a4  = 0xcccccccd
       0     3682        M                                           #; (acc) a5  <-- 0x0037d793
       0     3683        M 0x800007cc srli    a5, a5, 3              #; a5  = 20, (wrb) a5  <-- 2
       0     3684        M 0x800007d0 mul     a5, a5, a6             #; a5  = 2, a6  = 10
       0     3687        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3688        M 0x800007d4 sub     a5, a2, a5             #; a2  = 25, a5  = 20, (wrb) a5  <-- 5
       0     3690        M 0x800007d8 fcvt.d.wu ft3, a5              #; ac1  = 5
       0     3691        M 0x800007e0 addi    a3, a3, -1             #; a3  = 75, (wrb) a3  <-- 74
                         M                                           #; (f:fpu) ft3  <-- 5.0
       0     3692        M 0x800007e4 addi    a2, a2, 1              #; a2  = 25, (wrb) a2  <-- 26
                         M 0x800007dc fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
       0     3693        M 0x800007e8 bnez    a3, pc - 32            #; a3  = 74, taken, goto 0x800007c8
                         M                                           #; (f:fpu) ft0  <-- 5.0
       0     3694        M 0x800007c8 mulhu   a5, a2, a4             #; a2  = 26, a4  = 0xcccccccd
       0     3697        M                                           #; (acc) a5  <-- 0x0037d793
       0     3698        M 0x800007cc srli    a5, a5, 3              #; a5  = 20, (wrb) a5  <-- 2
       0     3699        M 0x800007d0 mul     a5, a5, a6             #; a5  = 2, a6  = 10
       0     3702        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3703        M 0x800007d4 sub     a5, a2, a5             #; a2  = 26, a5  = 20, (wrb) a5  <-- 6
       0     3705        M 0x800007d8 fcvt.d.wu ft3, a5              #; ac1  = 6
       0     3706        M 0x800007e0 addi    a3, a3, -1             #; a3  = 74, (wrb) a3  <-- 73
                         M                                           #; (f:fpu) ft3  <-- 6.0
       0     3707        M 0x800007e4 addi    a2, a2, 1              #; a2  = 26, (wrb) a2  <-- 27
                         M 0x800007dc fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
       0     3708        M 0x800007e8 bnez    a3, pc - 32            #; a3  = 73, taken, goto 0x800007c8
                         M                                           #; (f:fpu) ft0  <-- 6.0
       0     3709        M 0x800007c8 mulhu   a5, a2, a4             #; a2  = 27, a4  = 0xcccccccd
       0     3712        M                                           #; (acc) a5  <-- 0x0037d793
       0     3713        M 0x800007cc srli    a5, a5, 3              #; a5  = 21, (wrb) a5  <-- 2
       0     3714        M 0x800007d0 mul     a5, a5, a6             #; a5  = 2, a6  = 10
       0     3717        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3718        M 0x800007d4 sub     a5, a2, a5             #; a2  = 27, a5  = 20, (wrb) a5  <-- 7
       0     3720        M 0x800007d8 fcvt.d.wu ft3, a5              #; ac1  = 7
       0     3721        M 0x800007e0 addi    a3, a3, -1             #; a3  = 73, (wrb) a3  <-- 72
                         M                                           #; (f:fpu) ft3  <-- 7.0
       0     3722        M 0x800007e4 addi    a2, a2, 1              #; a2  = 27, (wrb) a2  <-- 28
                         M 0x800007dc fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
       0     3723        M 0x800007e8 bnez    a3, pc - 32            #; a3  = 72, taken, goto 0x800007c8
                         M                                           #; (f:fpu) ft0  <-- 7.0
       0     3724        M 0x800007c8 mulhu   a5, a2, a4             #; a2  = 28, a4  = 0xcccccccd
       0     3727        M                                           #; (acc) a5  <-- 0x0037d793
       0     3728        M 0x800007cc srli    a5, a5, 3              #; a5  = 22, (wrb) a5  <-- 2
       0     3729        M 0x800007d0 mul     a5, a5, a6             #; a5  = 2, a6  = 10
       0     3732        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3733        M 0x800007d4 sub     a5, a2, a5             #; a2  = 28, a5  = 20, (wrb) a5  <-- 8
       0     3735        M 0x800007d8 fcvt.d.wu ft3, a5              #; ac1  = 8
       0     3736        M 0x800007e0 addi    a3, a3, -1             #; a3  = 72, (wrb) a3  <-- 71
                         M                                           #; (f:fpu) ft3  <-- 8.0
       0     3737        M 0x800007e4 addi    a2, a2, 1              #; a2  = 28, (wrb) a2  <-- 29
                         M 0x800007dc fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
       0     3738        M 0x800007e8 bnez    a3, pc - 32            #; a3  = 71, taken, goto 0x800007c8
                         M                                           #; (f:fpu) ft0  <-- 8.0
       0     3739        M 0x800007c8 mulhu   a5, a2, a4             #; a2  = 29, a4  = 0xcccccccd
       0     3742        M                                           #; (acc) a5  <-- 0x0037d793
       0     3743        M 0x800007cc srli    a5, a5, 3              #; a5  = 23, (wrb) a5  <-- 2
       0     3744        M 0x800007d0 mul     a5, a5, a6             #; a5  = 2, a6  = 10
       0     3747        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3748        M 0x800007d4 sub     a5, a2, a5             #; a2  = 29, a5  = 20, (wrb) a5  <-- 9
       0     3750        M 0x800007d8 fcvt.d.wu ft3, a5              #; ac1  = 9
       0     3751        M 0x800007e0 addi    a3, a3, -1             #; a3  = 71, (wrb) a3  <-- 70
                         M                                           #; (f:fpu) ft3  <-- 9.0
       0     3752        M 0x800007e4 addi    a2, a2, 1              #; a2  = 29, (wrb) a2  <-- 30
                         M 0x800007dc fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
       0     3753        M 0x800007e8 bnez    a3, pc - 32            #; a3  = 70, taken, goto 0x800007c8
                         M                                           #; (f:fpu) ft0  <-- 9.0
       0     3754        M 0x800007c8 mulhu   a5, a2, a4             #; a2  = 30, a4  = 0xcccccccd
       0     3757        M                                           #; (acc) a5  <-- 0x0037d793
       0     3758        M 0x800007cc srli    a5, a5, 3              #; a5  = 24, (wrb) a5  <-- 3
       0     3759        M 0x800007d0 mul     a5, a5, a6             #; a5  = 3, a6  = 10
       0     3762        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3763        M 0x800007d4 sub     a5, a2, a5             #; a2  = 30, a5  = 30, (wrb) a5  <-- 0
       0     3765        M 0x800007d8 fcvt.d.wu ft3, a5              #; ac1  = 0
       0     3766        M 0x800007e0 addi    a3, a3, -1             #; a3  = 70, (wrb) a3  <-- 69
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     3767        M 0x800007e4 addi    a2, a2, 1              #; a2  = 30, (wrb) a2  <-- 31
                         M 0x800007dc fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     3768        M 0x800007e8 bnez    a3, pc - 32            #; a3  = 69, taken, goto 0x800007c8
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     3769        M 0x800007c8 mulhu   a5, a2, a4             #; a2  = 31, a4  = 0xcccccccd
       0     3772        M                                           #; (acc) a5  <-- 0x0037d793
       0     3773        M 0x800007cc srli    a5, a5, 3              #; a5  = 24, (wrb) a5  <-- 3
       0     3774        M 0x800007d0 mul     a5, a5, a6             #; a5  = 3, a6  = 10
       0     3777        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3778        M 0x800007d4 sub     a5, a2, a5             #; a2  = 31, a5  = 30, (wrb) a5  <-- 1
       0     3780        M 0x800007d8 fcvt.d.wu ft3, a5              #; ac1  = 1
       0     3781        M 0x800007e0 addi    a3, a3, -1             #; a3  = 69, (wrb) a3  <-- 68
                         M                                           #; (f:fpu) ft3  <-- 1.0
       0     3782        M 0x800007e4 addi    a2, a2, 1              #; a2  = 31, (wrb) a2  <-- 32
                         M 0x800007dc fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
       0     3783        M 0x800007e8 bnez    a3, pc - 32            #; a3  = 68, taken, goto 0x800007c8
                         M                                           #; (f:fpu) ft0  <-- 1.0
       0     3784        M 0x800007c8 mulhu   a5, a2, a4             #; a2  = 32, a4  = 0xcccccccd
       0     3787        M                                           #; (acc) a5  <-- 0x0037d793
       0     3788        M 0x800007cc srli    a5, a5, 3              #; a5  = 25, (wrb) a5  <-- 3
       0     3789        M 0x800007d0 mul     a5, a5, a6             #; a5  = 3, a6  = 10
       0     3792        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3793        M 0x800007d4 sub     a5, a2, a5             #; a2  = 32, a5  = 30, (wrb) a5  <-- 2
       0     3795        M 0x800007d8 fcvt.d.wu ft3, a5              #; ac1  = 2
       0     3796        M 0x800007e0 addi    a3, a3, -1             #; a3  = 68, (wrb) a3  <-- 67
                         M                                           #; (f:fpu) ft3  <-- 2.0
       0     3797        M 0x800007e4 addi    a2, a2, 1              #; a2  = 32, (wrb) a2  <-- 33
                         M 0x800007dc fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
       0     3798        M 0x800007e8 bnez    a3, pc - 32            #; a3  = 67, taken, goto 0x800007c8
                         M                                           #; (f:fpu) ft0  <-- 2.0
       0     3799        M 0x800007c8 mulhu   a5, a2, a4             #; a2  = 33, a4  = 0xcccccccd
       0     3802        M                                           #; (acc) a5  <-- 0x0037d793
       0     3803        M 0x800007cc srli    a5, a5, 3              #; a5  = 26, (wrb) a5  <-- 3
       0     3804        M 0x800007d0 mul     a5, a5, a6             #; a5  = 3, a6  = 10
       0     3807        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3808        M 0x800007d4 sub     a5, a2, a5             #; a2  = 33, a5  = 30, (wrb) a5  <-- 3
       0     3810        M 0x800007d8 fcvt.d.wu ft3, a5              #; ac1  = 3
       0     3811        M 0x800007e0 addi    a3, a3, -1             #; a3  = 67, (wrb) a3  <-- 66
                         M                                           #; (f:fpu) ft3  <-- 3.0
       0     3812        M 0x800007e4 addi    a2, a2, 1              #; a2  = 33, (wrb) a2  <-- 34
                         M 0x800007dc fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
       0     3813        M 0x800007e8 bnez    a3, pc - 32            #; a3  = 66, taken, goto 0x800007c8
                         M                                           #; (f:fpu) ft0  <-- 3.0
       0     3814        M 0x800007c8 mulhu   a5, a2, a4             #; a2  = 34, a4  = 0xcccccccd
       0     3817        M                                           #; (acc) a5  <-- 0x0037d793
       0     3818        M 0x800007cc srli    a5, a5, 3              #; a5  = 27, (wrb) a5  <-- 3
       0     3819        M 0x800007d0 mul     a5, a5, a6             #; a5  = 3, a6  = 10
       0     3822        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3823        M 0x800007d4 sub     a5, a2, a5             #; a2  = 34, a5  = 30, (wrb) a5  <-- 4
       0     3825        M 0x800007d8 fcvt.d.wu ft3, a5              #; ac1  = 4
       0     3826        M 0x800007e0 addi    a3, a3, -1             #; a3  = 66, (wrb) a3  <-- 65
                         M                                           #; (f:fpu) ft3  <-- 4.0
       0     3827        M 0x800007e4 addi    a2, a2, 1              #; a2  = 34, (wrb) a2  <-- 35
                         M 0x800007dc fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
       0     3828        M 0x800007e8 bnez    a3, pc - 32            #; a3  = 65, taken, goto 0x800007c8
                         M                                           #; (f:fpu) ft0  <-- 4.0
       0     3829        M 0x800007c8 mulhu   a5, a2, a4             #; a2  = 35, a4  = 0xcccccccd
       0     3832        M                                           #; (acc) a5  <-- 0x0037d793
       0     3833        M 0x800007cc srli    a5, a5, 3              #; a5  = 28, (wrb) a5  <-- 3
       0     3834        M 0x800007d0 mul     a5, a5, a6             #; a5  = 3, a6  = 10
       0     3837        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3838        M 0x800007d4 sub     a5, a2, a5             #; a2  = 35, a5  = 30, (wrb) a5  <-- 5
       0     3840        M 0x800007d8 fcvt.d.wu ft3, a5              #; ac1  = 5
       0     3841        M 0x800007e0 addi    a3, a3, -1             #; a3  = 65, (wrb) a3  <-- 64
                         M                                           #; (f:fpu) ft3  <-- 5.0
       0     3842        M 0x800007e4 addi    a2, a2, 1              #; a2  = 35, (wrb) a2  <-- 36
                         M 0x800007dc fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
       0     3843        M 0x800007e8 bnez    a3, pc - 32            #; a3  = 64, taken, goto 0x800007c8
                         M                                           #; (f:fpu) ft0  <-- 5.0
       0     3844        M 0x800007c8 mulhu   a5, a2, a4             #; a2  = 36, a4  = 0xcccccccd
       0     3847        M                                           #; (acc) a5  <-- 0x0037d793
       0     3848        M 0x800007cc srli    a5, a5, 3              #; a5  = 28, (wrb) a5  <-- 3
       0     3849        M 0x800007d0 mul     a5, a5, a6             #; a5  = 3, a6  = 10
       0     3852        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3853        M 0x800007d4 sub     a5, a2, a5             #; a2  = 36, a5  = 30, (wrb) a5  <-- 6
       0     3855        M 0x800007d8 fcvt.d.wu ft3, a5              #; ac1  = 6
       0     3856        M 0x800007e0 addi    a3, a3, -1             #; a3  = 64, (wrb) a3  <-- 63
                         M                                           #; (f:fpu) ft3  <-- 6.0
       0     3857        M 0x800007e4 addi    a2, a2, 1              #; a2  = 36, (wrb) a2  <-- 37
                         M 0x800007dc fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
       0     3858        M 0x800007e8 bnez    a3, pc - 32            #; a3  = 63, taken, goto 0x800007c8
                         M                                           #; (f:fpu) ft0  <-- 6.0
       0     3859        M 0x800007c8 mulhu   a5, a2, a4             #; a2  = 37, a4  = 0xcccccccd
       0     3862        M                                           #; (acc) a5  <-- 0x0037d793
       0     3863        M 0x800007cc srli    a5, a5, 3              #; a5  = 29, (wrb) a5  <-- 3
       0     3864        M 0x800007d0 mul     a5, a5, a6             #; a5  = 3, a6  = 10
       0     3867        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3868        M 0x800007d4 sub     a5, a2, a5             #; a2  = 37, a5  = 30, (wrb) a5  <-- 7
       0     3870        M 0x800007d8 fcvt.d.wu ft3, a5              #; ac1  = 7
       0     3871        M 0x800007e0 addi    a3, a3, -1             #; a3  = 63, (wrb) a3  <-- 62
                         M                                           #; (f:fpu) ft3  <-- 7.0
       0     3872        M 0x800007e4 addi    a2, a2, 1              #; a2  = 37, (wrb) a2  <-- 38
                         M 0x800007dc fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
       0     3873        M 0x800007e8 bnez    a3, pc - 32            #; a3  = 62, taken, goto 0x800007c8
                         M                                           #; (f:fpu) ft0  <-- 7.0
       0     3874        M 0x800007c8 mulhu   a5, a2, a4             #; a2  = 38, a4  = 0xcccccccd
       0     3877        M                                           #; (acc) a5  <-- 0x0037d793
       0     3878        M 0x800007cc srli    a5, a5, 3              #; a5  = 30, (wrb) a5  <-- 3
       0     3879        M 0x800007d0 mul     a5, a5, a6             #; a5  = 3, a6  = 10
       0     3882        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3883        M 0x800007d4 sub     a5, a2, a5             #; a2  = 38, a5  = 30, (wrb) a5  <-- 8
       0     3885        M 0x800007d8 fcvt.d.wu ft3, a5              #; ac1  = 8
       0     3886        M 0x800007e0 addi    a3, a3, -1             #; a3  = 62, (wrb) a3  <-- 61
                         M                                           #; (f:fpu) ft3  <-- 8.0
       0     3887        M 0x800007e4 addi    a2, a2, 1              #; a2  = 38, (wrb) a2  <-- 39
                         M 0x800007dc fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
       0     3888        M 0x800007e8 bnez    a3, pc - 32            #; a3  = 61, taken, goto 0x800007c8
                         M                                           #; (f:fpu) ft0  <-- 8.0
       0     3889        M 0x800007c8 mulhu   a5, a2, a4             #; a2  = 39, a4  = 0xcccccccd
       0     3892        M                                           #; (acc) a5  <-- 0x0037d793
       0     3893        M 0x800007cc srli    a5, a5, 3              #; a5  = 31, (wrb) a5  <-- 3
       0     3894        M 0x800007d0 mul     a5, a5, a6             #; a5  = 3, a6  = 10
       0     3897        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3898        M 0x800007d4 sub     a5, a2, a5             #; a2  = 39, a5  = 30, (wrb) a5  <-- 9
       0     3900        M 0x800007d8 fcvt.d.wu ft3, a5              #; ac1  = 9
       0     3901        M 0x800007e0 addi    a3, a3, -1             #; a3  = 61, (wrb) a3  <-- 60
                         M                                           #; (f:fpu) ft3  <-- 9.0
       0     3902        M 0x800007e4 addi    a2, a2, 1              #; a2  = 39, (wrb) a2  <-- 40
                         M 0x800007dc fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
       0     3903        M 0x800007e8 bnez    a3, pc - 32            #; a3  = 60, taken, goto 0x800007c8
                         M                                           #; (f:fpu) ft0  <-- 9.0
       0     3904        M 0x800007c8 mulhu   a5, a2, a4             #; a2  = 40, a4  = 0xcccccccd
       0     3907        M                                           #; (acc) a5  <-- 0x0037d793
       0     3908        M 0x800007cc srli    a5, a5, 3              #; a5  = 32, (wrb) a5  <-- 4
       0     3909        M 0x800007d0 mul     a5, a5, a6             #; a5  = 4, a6  = 10
       0     3912        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3913        M 0x800007d4 sub     a5, a2, a5             #; a2  = 40, a5  = 40, (wrb) a5  <-- 0
       0     3915        M 0x800007d8 fcvt.d.wu ft3, a5              #; ac1  = 0
       0     3916        M 0x800007e0 addi    a3, a3, -1             #; a3  = 60, (wrb) a3  <-- 59
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     3917        M 0x800007e4 addi    a2, a2, 1              #; a2  = 40, (wrb) a2  <-- 41
                         M 0x800007dc fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     3918        M 0x800007e8 bnez    a3, pc - 32            #; a3  = 59, taken, goto 0x800007c8
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     3919        M 0x800007c8 mulhu   a5, a2, a4             #; a2  = 41, a4  = 0xcccccccd
       0     3922        M                                           #; (acc) a5  <-- 0x0037d793
       0     3923        M 0x800007cc srli    a5, a5, 3              #; a5  = 32, (wrb) a5  <-- 4
       0     3924        M 0x800007d0 mul     a5, a5, a6             #; a5  = 4, a6  = 10
       0     3927        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3928        M 0x800007d4 sub     a5, a2, a5             #; a2  = 41, a5  = 40, (wrb) a5  <-- 1
       0     3930        M 0x800007d8 fcvt.d.wu ft3, a5              #; ac1  = 1
       0     3931        M 0x800007e0 addi    a3, a3, -1             #; a3  = 59, (wrb) a3  <-- 58
                         M                                           #; (f:fpu) ft3  <-- 1.0
       0     3932        M 0x800007e4 addi    a2, a2, 1              #; a2  = 41, (wrb) a2  <-- 42
                         M 0x800007dc fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
       0     3933        M 0x800007e8 bnez    a3, pc - 32            #; a3  = 58, taken, goto 0x800007c8
                         M                                           #; (f:fpu) ft0  <-- 1.0
       0     3934        M 0x800007c8 mulhu   a5, a2, a4             #; a2  = 42, a4  = 0xcccccccd
       0     3937        M                                           #; (acc) a5  <-- 0x0037d793
       0     3938        M 0x800007cc srli    a5, a5, 3              #; a5  = 33, (wrb) a5  <-- 4
       0     3939        M 0x800007d0 mul     a5, a5, a6             #; a5  = 4, a6  = 10
       0     3942        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3943        M 0x800007d4 sub     a5, a2, a5             #; a2  = 42, a5  = 40, (wrb) a5  <-- 2
       0     3945        M 0x800007d8 fcvt.d.wu ft3, a5              #; ac1  = 2
       0     3946        M 0x800007e0 addi    a3, a3, -1             #; a3  = 58, (wrb) a3  <-- 57
                         M                                           #; (f:fpu) ft3  <-- 2.0
       0     3947        M 0x800007e4 addi    a2, a2, 1              #; a2  = 42, (wrb) a2  <-- 43
                         M 0x800007dc fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
       0     3948        M 0x800007e8 bnez    a3, pc - 32            #; a3  = 57, taken, goto 0x800007c8
                         M                                           #; (f:fpu) ft0  <-- 2.0
       0     3949        M 0x800007c8 mulhu   a5, a2, a4             #; a2  = 43, a4  = 0xcccccccd
       0     3952        M                                           #; (acc) a5  <-- 0x0037d793
       0     3953        M 0x800007cc srli    a5, a5, 3              #; a5  = 34, (wrb) a5  <-- 4
       0     3954        M 0x800007d0 mul     a5, a5, a6             #; a5  = 4, a6  = 10
       0     3957        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3958        M 0x800007d4 sub     a5, a2, a5             #; a2  = 43, a5  = 40, (wrb) a5  <-- 3
       0     3960        M 0x800007d8 fcvt.d.wu ft3, a5              #; ac1  = 3
       0     3961        M 0x800007e0 addi    a3, a3, -1             #; a3  = 57, (wrb) a3  <-- 56
                         M                                           #; (f:fpu) ft3  <-- 3.0
       0     3962        M 0x800007e4 addi    a2, a2, 1              #; a2  = 43, (wrb) a2  <-- 44
                         M 0x800007dc fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
       0     3963        M 0x800007e8 bnez    a3, pc - 32            #; a3  = 56, taken, goto 0x800007c8
                         M                                           #; (f:fpu) ft0  <-- 3.0
       0     3964        M 0x800007c8 mulhu   a5, a2, a4             #; a2  = 44, a4  = 0xcccccccd
       0     3967        M                                           #; (acc) a5  <-- 0x0037d793
       0     3968        M 0x800007cc srli    a5, a5, 3              #; a5  = 35, (wrb) a5  <-- 4
       0     3969        M 0x800007d0 mul     a5, a5, a6             #; a5  = 4, a6  = 10
       0     3972        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3973        M 0x800007d4 sub     a5, a2, a5             #; a2  = 44, a5  = 40, (wrb) a5  <-- 4
       0     3975        M 0x800007d8 fcvt.d.wu ft3, a5              #; ac1  = 4
       0     3976        M 0x800007e0 addi    a3, a3, -1             #; a3  = 56, (wrb) a3  <-- 55
                         M                                           #; (f:fpu) ft3  <-- 4.0
       0     3977        M 0x800007e4 addi    a2, a2, 1              #; a2  = 44, (wrb) a2  <-- 45
                         M 0x800007dc fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
       0     3978        M 0x800007e8 bnez    a3, pc - 32            #; a3  = 55, taken, goto 0x800007c8
                         M                                           #; (f:fpu) ft0  <-- 4.0
       0     3979        M 0x800007c8 mulhu   a5, a2, a4             #; a2  = 45, a4  = 0xcccccccd
       0     3982        M                                           #; (acc) a5  <-- 0x0037d793
       0     3983        M 0x800007cc srli    a5, a5, 3              #; a5  = 36, (wrb) a5  <-- 4
       0     3984        M 0x800007d0 mul     a5, a5, a6             #; a5  = 4, a6  = 10
       0     3987        M                                           #; (acc) a5  <-- 0x40f607b3
       0     3988        M 0x800007d4 sub     a5, a2, a5             #; a2  = 45, a5  = 40, (wrb) a5  <-- 5
       0     3990        M 0x800007d8 fcvt.d.wu ft3, a5              #; ac1  = 5
       0     3991        M 0x800007e0 addi    a3, a3, -1             #; a3  = 55, (wrb) a3  <-- 54
                         M                                           #; (f:fpu) ft3  <-- 5.0
       0     3992        M 0x800007e4 addi    a2, a2, 1              #; a2  = 45, (wrb) a2  <-- 46
                         M 0x800007dc fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
       0     3993        M 0x800007e8 bnez    a3, pc - 32            #; a3  = 54, taken, goto 0x800007c8
                         M                                           #; (f:fpu) ft0  <-- 5.0
       0     3994        M 0x800007c8 mulhu   a5, a2, a4             #; a2  = 46, a4  = 0xcccccccd
       0     3997        M                                           #; (acc) a5  <-- 0x0037d793
       0     3998        M 0x800007cc srli    a5, a5, 3              #; a5  = 36, (wrb) a5  <-- 4
       0     3999        M 0x800007d0 mul     a5, a5, a6             #; a5  = 4, a6  = 10
       0     4002        M                                           #; (acc) a5  <-- 0x40f607b3
       0     4003        M 0x800007d4 sub     a5, a2, a5             #; a2  = 46, a5  = 40, (wrb) a5  <-- 6
       0     4005        M 0x800007d8 fcvt.d.wu ft3, a5              #; ac1  = 6
       0     4006        M 0x800007e0 addi    a3, a3, -1             #; a3  = 54, (wrb) a3  <-- 53
                         M                                           #; (f:fpu) ft3  <-- 6.0
       0     4007        M 0x800007e4 addi    a2, a2, 1              #; a2  = 46, (wrb) a2  <-- 47
                         M 0x800007dc fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
       0     4008        M 0x800007e8 bnez    a3, pc - 32            #; a3  = 53, taken, goto 0x800007c8
                         M                                           #; (f:fpu) ft0  <-- 6.0
       0     4009        M 0x800007c8 mulhu   a5, a2, a4             #; a2  = 47, a4  = 0xcccccccd
       0     4012        M                                           #; (acc) a5  <-- 0x0037d793
       0     4013        M 0x800007cc srli    a5, a5, 3              #; a5  = 37, (wrb) a5  <-- 4
       0     4014        M 0x800007d0 mul     a5, a5, a6             #; a5  = 4, a6  = 10
       0     4017        M                                           #; (acc) a5  <-- 0x40f607b3
       0     4018        M 0x800007d4 sub     a5, a2, a5             #; a2  = 47, a5  = 40, (wrb) a5  <-- 7
       0     4020        M 0x800007d8 fcvt.d.wu ft3, a5              #; ac1  = 7
       0     4021        M 0x800007e0 addi    a3, a3, -1             #; a3  = 53, (wrb) a3  <-- 52
                         M                                           #; (f:fpu) ft3  <-- 7.0
       0     4022        M 0x800007e4 addi    a2, a2, 1              #; a2  = 47, (wrb) a2  <-- 48
                         M 0x800007dc fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
       0     4023        M 0x800007e8 bnez    a3, pc - 32            #; a3  = 52, taken, goto 0x800007c8
                         M                                           #; (f:fpu) ft0  <-- 7.0
       0     4024        M 0x800007c8 mulhu   a5, a2, a4             #; a2  = 48, a4  = 0xcccccccd
       0     4027        M                                           #; (acc) a5  <-- 0x0037d793
       0     4028        M 0x800007cc srli    a5, a5, 3              #; a5  = 38, (wrb) a5  <-- 4
       0     4029        M 0x800007d0 mul     a5, a5, a6             #; a5  = 4, a6  = 10
       0     4032        M                                           #; (acc) a5  <-- 0x40f607b3
       0     4033        M 0x800007d4 sub     a5, a2, a5             #; a2  = 48, a5  = 40, (wrb) a5  <-- 8
       0     4035        M 0x800007d8 fcvt.d.wu ft3, a5              #; ac1  = 8
       0     4036        M 0x800007e0 addi    a3, a3, -1             #; a3  = 52, (wrb) a3  <-- 51
                         M                                           #; (f:fpu) ft3  <-- 8.0
       0     4037        M 0x800007e4 addi    a2, a2, 1              #; a2  = 48, (wrb) a2  <-- 49
                         M 0x800007dc fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
       0     4038        M 0x800007e8 bnez    a3, pc - 32            #; a3  = 51, taken, goto 0x800007c8
                         M                                           #; (f:fpu) ft0  <-- 8.0
       0     4039        M 0x800007c8 mulhu   a5, a2, a4             #; a2  = 49, a4  = 0xcccccccd
       0     4042        M                                           #; (acc) a5  <-- 0x0037d793
       0     4043        M 0x800007cc srli    a5, a5, 3              #; a5  = 39, (wrb) a5  <-- 4
       0     4044        M 0x800007d0 mul     a5, a5, a6             #; a5  = 4, a6  = 10
       0     4047        M                                           #; (acc) a5  <-- 0x40f607b3
       0     4048        M 0x800007d4 sub     a5, a2, a5             #; a2  = 49, a5  = 40, (wrb) a5  <-- 9
       0     4050        M 0x800007d8 fcvt.d.wu ft3, a5              #; ac1  = 9
       0     4051        M 0x800007e0 addi    a3, a3, -1             #; a3  = 51, (wrb) a3  <-- 50
                         M                                           #; (f:fpu) ft3  <-- 9.0
       0     4052        M 0x800007e4 addi    a2, a2, 1              #; a2  = 49, (wrb) a2  <-- 50
                         M 0x800007dc fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
       0     4053        M 0x800007e8 bnez    a3, pc - 32            #; a3  = 50, taken, goto 0x800007c8
                         M                                           #; (f:fpu) ft0  <-- 9.0
       0     4054        M 0x800007c8 mulhu   a5, a2, a4             #; a2  = 50, a4  = 0xcccccccd
       0     4057        M                                           #; (acc) a5  <-- 0x0037d793
       0     4058        M 0x800007cc srli    a5, a5, 3              #; a5  = 40, (wrb) a5  <-- 5
       0     4059        M 0x800007d0 mul     a5, a5, a6             #; a5  = 5, a6  = 10
       0     4062        M                                           #; (acc) a5  <-- 0x40f607b3
       0     4063        M 0x800007d4 sub     a5, a2, a5             #; a2  = 50, a5  = 50, (wrb) a5  <-- 0
       0     4065        M 0x800007d8 fcvt.d.wu ft3, a5              #; ac1  = 0
       0     4066        M 0x800007e0 addi    a3, a3, -1             #; a3  = 50, (wrb) a3  <-- 49
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     4067        M 0x800007e4 addi    a2, a2, 1              #; a2  = 50, (wrb) a2  <-- 51
                         M 0x800007dc fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4068        M 0x800007e8 bnez    a3, pc - 32            #; a3  = 49, taken, goto 0x800007c8
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     4069        M 0x800007c8 mulhu   a5, a2, a4             #; a2  = 51, a4  = 0xcccccccd
       0     4072        M                                           #; (acc) a5  <-- 0x0037d793
       0     4073        M 0x800007cc srli    a5, a5, 3              #; a5  = 40, (wrb) a5  <-- 5
       0     4074        M 0x800007d0 mul     a5, a5, a6             #; a5  = 5, a6  = 10
       0     4077        M                                           #; (acc) a5  <-- 0x40f607b3
       0     4078        M 0x800007d4 sub     a5, a2, a5             #; a2  = 51, a5  = 50, (wrb) a5  <-- 1
       0     4080        M 0x800007d8 fcvt.d.wu ft3, a5              #; ac1  = 1
       0     4081        M 0x800007e0 addi    a3, a3, -1             #; a3  = 49, (wrb) a3  <-- 48
                         M                                           #; (f:fpu) ft3  <-- 1.0
       0     4082        M 0x800007e4 addi    a2, a2, 1              #; a2  = 51, (wrb) a2  <-- 52
                         M 0x800007dc fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
       0     4083        M 0x800007e8 bnez    a3, pc - 32            #; a3  = 48, taken, goto 0x800007c8
                         M                                           #; (f:fpu) ft0  <-- 1.0
       0     4084        M 0x800007c8 mulhu   a5, a2, a4             #; a2  = 52, a4  = 0xcccccccd
       0     4087        M                                           #; (acc) a5  <-- 0x0037d793
       0     4088        M 0x800007cc srli    a5, a5, 3              #; a5  = 41, (wrb) a5  <-- 5
       0     4089        M 0x800007d0 mul     a5, a5, a6             #; a5  = 5, a6  = 10
       0     4092        M                                           #; (acc) a5  <-- 0x40f607b3
       0     4093        M 0x800007d4 sub     a5, a2, a5             #; a2  = 52, a5  = 50, (wrb) a5  <-- 2
       0     4095        M 0x800007d8 fcvt.d.wu ft3, a5              #; ac1  = 2
       0     4096        M 0x800007e0 addi    a3, a3, -1             #; a3  = 48, (wrb) a3  <-- 47
                         M                                           #; (f:fpu) ft3  <-- 2.0
       0     4097        M 0x800007e4 addi    a2, a2, 1              #; a2  = 52, (wrb) a2  <-- 53
                         M 0x800007dc fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
       0     4098        M 0x800007e8 bnez    a3, pc - 32            #; a3  = 47, taken, goto 0x800007c8
                         M                                           #; (f:fpu) ft0  <-- 2.0
       0     4099        M 0x800007c8 mulhu   a5, a2, a4             #; a2  = 53, a4  = 0xcccccccd
       0     4102        M                                           #; (acc) a5  <-- 0x0037d793
       0     4103        M 0x800007cc srli    a5, a5, 3              #; a5  = 42, (wrb) a5  <-- 5
       0     4104        M 0x800007d0 mul     a5, a5, a6             #; a5  = 5, a6  = 10
       0     4107        M                                           #; (acc) a5  <-- 0x40f607b3
       0     4108        M 0x800007d4 sub     a5, a2, a5             #; a2  = 53, a5  = 50, (wrb) a5  <-- 3
       0     4110        M 0x800007d8 fcvt.d.wu ft3, a5              #; ac1  = 3
       0     4111        M 0x800007e0 addi    a3, a3, -1             #; a3  = 47, (wrb) a3  <-- 46
                         M                                           #; (f:fpu) ft3  <-- 3.0
       0     4112        M 0x800007e4 addi    a2, a2, 1              #; a2  = 53, (wrb) a2  <-- 54
                         M 0x800007dc fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
       0     4113        M 0x800007e8 bnez    a3, pc - 32            #; a3  = 46, taken, goto 0x800007c8
                         M                                           #; (f:fpu) ft0  <-- 3.0
       0     4114        M 0x800007c8 mulhu   a5, a2, a4             #; a2  = 54, a4  = 0xcccccccd
       0     4117        M                                           #; (acc) a5  <-- 0x0037d793
       0     4118        M 0x800007cc srli    a5, a5, 3              #; a5  = 43, (wrb) a5  <-- 5
       0     4119        M 0x800007d0 mul     a5, a5, a6             #; a5  = 5, a6  = 10
       0     4122        M                                           #; (acc) a5  <-- 0x40f607b3
       0     4123        M 0x800007d4 sub     a5, a2, a5             #; a2  = 54, a5  = 50, (wrb) a5  <-- 4
       0     4125        M 0x800007d8 fcvt.d.wu ft3, a5              #; ac1  = 4
       0     4126        M 0x800007e0 addi    a3, a3, -1             #; a3  = 46, (wrb) a3  <-- 45
                         M                                           #; (f:fpu) ft3  <-- 4.0
       0     4127        M 0x800007e4 addi    a2, a2, 1              #; a2  = 54, (wrb) a2  <-- 55
                         M 0x800007dc fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
       0     4128        M 0x800007e8 bnez    a3, pc - 32            #; a3  = 45, taken, goto 0x800007c8
                         M                                           #; (f:fpu) ft0  <-- 4.0
       0     4129        M 0x800007c8 mulhu   a5, a2, a4             #; a2  = 55, a4  = 0xcccccccd
       0     4132        M                                           #; (acc) a5  <-- 0x0037d793
       0     4133        M 0x800007cc srli    a5, a5, 3              #; a5  = 44, (wrb) a5  <-- 5
       0     4134        M 0x800007d0 mul     a5, a5, a6             #; a5  = 5, a6  = 10
       0     4137        M                                           #; (acc) a5  <-- 0x40f607b3
       0     4138        M 0x800007d4 sub     a5, a2, a5             #; a2  = 55, a5  = 50, (wrb) a5  <-- 5
       0     4140        M 0x800007d8 fcvt.d.wu ft3, a5              #; ac1  = 5
       0     4141        M 0x800007e0 addi    a3, a3, -1             #; a3  = 45, (wrb) a3  <-- 44
                         M                                           #; (f:fpu) ft3  <-- 5.0
       0     4142        M 0x800007e4 addi    a2, a2, 1              #; a2  = 55, (wrb) a2  <-- 56
                         M 0x800007dc fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
       0     4143        M 0x800007e8 bnez    a3, pc - 32            #; a3  = 44, taken, goto 0x800007c8
                         M                                           #; (f:fpu) ft0  <-- 5.0
       0     4144        M 0x800007c8 mulhu   a5, a2, a4             #; a2  = 56, a4  = 0xcccccccd
       0     4147        M                                           #; (acc) a5  <-- 0x0037d793
       0     4148        M 0x800007cc srli    a5, a5, 3              #; a5  = 44, (wrb) a5  <-- 5
       0     4149        M 0x800007d0 mul     a5, a5, a6             #; a5  = 5, a6  = 10
       0     4152        M                                           #; (acc) a5  <-- 0x40f607b3
       0     4153        M 0x800007d4 sub     a5, a2, a5             #; a2  = 56, a5  = 50, (wrb) a5  <-- 6
       0     4155        M 0x800007d8 fcvt.d.wu ft3, a5              #; ac1  = 6
       0     4156        M 0x800007e0 addi    a3, a3, -1             #; a3  = 44, (wrb) a3  <-- 43
                         M                                           #; (f:fpu) ft3  <-- 6.0
       0     4157        M 0x800007e4 addi    a2, a2, 1              #; a2  = 56, (wrb) a2  <-- 57
                         M 0x800007dc fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
       0     4158        M 0x800007e8 bnez    a3, pc - 32            #; a3  = 43, taken, goto 0x800007c8
                         M                                           #; (f:fpu) ft0  <-- 6.0
       0     4159        M 0x800007c8 mulhu   a5, a2, a4             #; a2  = 57, a4  = 0xcccccccd
       0     4162        M                                           #; (acc) a5  <-- 0x0037d793
       0     4163        M 0x800007cc srli    a5, a5, 3              #; a5  = 45, (wrb) a5  <-- 5
       0     4164        M 0x800007d0 mul     a5, a5, a6             #; a5  = 5, a6  = 10
       0     4167        M                                           #; (acc) a5  <-- 0x40f607b3
       0     4168        M 0x800007d4 sub     a5, a2, a5             #; a2  = 57, a5  = 50, (wrb) a5  <-- 7
       0     4170        M 0x800007d8 fcvt.d.wu ft3, a5              #; ac1  = 7
       0     4171        M 0x800007e0 addi    a3, a3, -1             #; a3  = 43, (wrb) a3  <-- 42
                         M                                           #; (f:fpu) ft3  <-- 7.0
       0     4172        M 0x800007e4 addi    a2, a2, 1              #; a2  = 57, (wrb) a2  <-- 58
                         M 0x800007dc fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
       0     4173        M 0x800007e8 bnez    a3, pc - 32            #; a3  = 42, taken, goto 0x800007c8
                         M                                           #; (f:fpu) ft0  <-- 7.0
       0     4174        M 0x800007c8 mulhu   a5, a2, a4             #; a2  = 58, a4  = 0xcccccccd
       0     4177        M                                           #; (acc) a5  <-- 0x0037d793
       0     4178        M 0x800007cc srli    a5, a5, 3              #; a5  = 46, (wrb) a5  <-- 5
       0     4179        M 0x800007d0 mul     a5, a5, a6             #; a5  = 5, a6  = 10
       0     4182        M                                           #; (acc) a5  <-- 0x40f607b3
       0     4183        M 0x800007d4 sub     a5, a2, a5             #; a2  = 58, a5  = 50, (wrb) a5  <-- 8
       0     4185        M 0x800007d8 fcvt.d.wu ft3, a5              #; ac1  = 8
       0     4186        M 0x800007e0 addi    a3, a3, -1             #; a3  = 42, (wrb) a3  <-- 41
                         M                                           #; (f:fpu) ft3  <-- 8.0
       0     4187        M 0x800007e4 addi    a2, a2, 1              #; a2  = 58, (wrb) a2  <-- 59
                         M 0x800007dc fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
       0     4188        M 0x800007e8 bnez    a3, pc - 32            #; a3  = 41, taken, goto 0x800007c8
                         M                                           #; (f:fpu) ft0  <-- 8.0
       0     4189        M 0x800007c8 mulhu   a5, a2, a4             #; a2  = 59, a4  = 0xcccccccd
       0     4192        M                                           #; (acc) a5  <-- 0x0037d793
       0     4193        M 0x800007cc srli    a5, a5, 3              #; a5  = 47, (wrb) a5  <-- 5
       0     4194        M 0x800007d0 mul     a5, a5, a6             #; a5  = 5, a6  = 10
       0     4197        M                                           #; (acc) a5  <-- 0x40f607b3
       0     4198        M 0x800007d4 sub     a5, a2, a5             #; a2  = 59, a5  = 50, (wrb) a5  <-- 9
       0     4200        M 0x800007d8 fcvt.d.wu ft3, a5              #; ac1  = 9
       0     4201        M 0x800007e0 addi    a3, a3, -1             #; a3  = 41, (wrb) a3  <-- 40
                         M                                           #; (f:fpu) ft3  <-- 9.0
       0     4202        M 0x800007e4 addi    a2, a2, 1              #; a2  = 59, (wrb) a2  <-- 60
                         M 0x800007dc fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
       0     4203        M 0x800007e8 bnez    a3, pc - 32            #; a3  = 40, taken, goto 0x800007c8
                         M                                           #; (f:fpu) ft0  <-- 9.0
       0     4204        M 0x800007c8 mulhu   a5, a2, a4             #; a2  = 60, a4  = 0xcccccccd
       0     4207        M                                           #; (acc) a5  <-- 0x0037d793
       0     4208        M 0x800007cc srli    a5, a5, 3              #; a5  = 48, (wrb) a5  <-- 6
       0     4209        M 0x800007d0 mul     a5, a5, a6             #; a5  = 6, a6  = 10
       0     4212        M                                           #; (acc) a5  <-- 0x40f607b3
       0     4213        M 0x800007d4 sub     a5, a2, a5             #; a2  = 60, a5  = 60, (wrb) a5  <-- 0
       0     4215        M 0x800007d8 fcvt.d.wu ft3, a5              #; ac1  = 0
       0     4216        M 0x800007e0 addi    a3, a3, -1             #; a3  = 40, (wrb) a3  <-- 39
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     4217        M 0x800007e4 addi    a2, a2, 1              #; a2  = 60, (wrb) a2  <-- 61
                         M 0x800007dc fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4218        M 0x800007e8 bnez    a3, pc - 32            #; a3  = 39, taken, goto 0x800007c8
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     4219        M 0x800007c8 mulhu   a5, a2, a4             #; a2  = 61, a4  = 0xcccccccd
       0     4222        M                                           #; (acc) a5  <-- 0x0037d793
       0     4223        M 0x800007cc srli    a5, a5, 3              #; a5  = 48, (wrb) a5  <-- 6
       0     4224        M 0x800007d0 mul     a5, a5, a6             #; a5  = 6, a6  = 10
       0     4227        M                                           #; (acc) a5  <-- 0x40f607b3
       0     4228        M 0x800007d4 sub     a5, a2, a5             #; a2  = 61, a5  = 60, (wrb) a5  <-- 1
       0     4230        M 0x800007d8 fcvt.d.wu ft3, a5              #; ac1  = 1
       0     4231        M 0x800007e0 addi    a3, a3, -1             #; a3  = 39, (wrb) a3  <-- 38
                         M                                           #; (f:fpu) ft3  <-- 1.0
       0     4232        M 0x800007e4 addi    a2, a2, 1              #; a2  = 61, (wrb) a2  <-- 62
                         M 0x800007dc fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
       0     4233        M 0x800007e8 bnez    a3, pc - 32            #; a3  = 38, taken, goto 0x800007c8
                         M                                           #; (f:fpu) ft0  <-- 1.0
       0     4234        M 0x800007c8 mulhu   a5, a2, a4             #; a2  = 62, a4  = 0xcccccccd
       0     4237        M                                           #; (acc) a5  <-- 0x0037d793
       0     4238        M 0x800007cc srli    a5, a5, 3              #; a5  = 49, (wrb) a5  <-- 6
       0     4239        M 0x800007d0 mul     a5, a5, a6             #; a5  = 6, a6  = 10
       0     4242        M                                           #; (acc) a5  <-- 0x40f607b3
       0     4243        M 0x800007d4 sub     a5, a2, a5             #; a2  = 62, a5  = 60, (wrb) a5  <-- 2
       0     4245        M 0x800007d8 fcvt.d.wu ft3, a5              #; ac1  = 2
       0     4246        M 0x800007e0 addi    a3, a3, -1             #; a3  = 38, (wrb) a3  <-- 37
                         M                                           #; (f:fpu) ft3  <-- 2.0
       0     4247        M 0x800007e4 addi    a2, a2, 1              #; a2  = 62, (wrb) a2  <-- 63
                         M 0x800007dc fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
       0     4248        M 0x800007e8 bnez    a3, pc - 32            #; a3  = 37, taken, goto 0x800007c8
                         M                                           #; (f:fpu) ft0  <-- 2.0
       0     4249        M 0x800007c8 mulhu   a5, a2, a4             #; a2  = 63, a4  = 0xcccccccd
       0     4252        M                                           #; (acc) a5  <-- 0x0037d793
       0     4253        M 0x800007cc srli    a5, a5, 3              #; a5  = 50, (wrb) a5  <-- 6
       0     4254        M 0x800007d0 mul     a5, a5, a6             #; a5  = 6, a6  = 10
       0     4257        M                                           #; (acc) a5  <-- 0x40f607b3
       0     4258        M 0x800007d4 sub     a5, a2, a5             #; a2  = 63, a5  = 60, (wrb) a5  <-- 3
       0     4260        M 0x800007d8 fcvt.d.wu ft3, a5              #; ac1  = 3
       0     4261        M 0x800007e0 addi    a3, a3, -1             #; a3  = 37, (wrb) a3  <-- 36
                         M                                           #; (f:fpu) ft3  <-- 3.0
       0     4262        M 0x800007e4 addi    a2, a2, 1              #; a2  = 63, (wrb) a2  <-- 64
                         M 0x800007dc fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
       0     4263        M 0x800007e8 bnez    a3, pc - 32            #; a3  = 36, taken, goto 0x800007c8
                         M                                           #; (f:fpu) ft0  <-- 3.0
       0     4264        M 0x800007c8 mulhu   a5, a2, a4             #; a2  = 64, a4  = 0xcccccccd
       0     4267        M                                           #; (acc) a5  <-- 0x0037d793
       0     4268        M 0x800007cc srli    a5, a5, 3              #; a5  = 51, (wrb) a5  <-- 6
       0     4269        M 0x800007d0 mul     a5, a5, a6             #; a5  = 6, a6  = 10
       0     4272        M                                           #; (acc) a5  <-- 0x40f607b3
       0     4273        M 0x800007d4 sub     a5, a2, a5             #; a2  = 64, a5  = 60, (wrb) a5  <-- 4
       0     4275        M 0x800007d8 fcvt.d.wu ft3, a5              #; ac1  = 4
       0     4276        M 0x800007e0 addi    a3, a3, -1             #; a3  = 36, (wrb) a3  <-- 35
                         M                                           #; (f:fpu) ft3  <-- 4.0
       0     4277        M 0x800007e4 addi    a2, a2, 1              #; a2  = 64, (wrb) a2  <-- 65
                         M 0x800007dc fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
       0     4278        M 0x800007e8 bnez    a3, pc - 32            #; a3  = 35, taken, goto 0x800007c8
                         M                                           #; (f:fpu) ft0  <-- 4.0
       0     4279        M 0x800007c8 mulhu   a5, a2, a4             #; a2  = 65, a4  = 0xcccccccd
       0     4282        M                                           #; (acc) a5  <-- 0x0037d793
       0     4283        M 0x800007cc srli    a5, a5, 3              #; a5  = 52, (wrb) a5  <-- 6
       0     4284        M 0x800007d0 mul     a5, a5, a6             #; a5  = 6, a6  = 10
       0     4287        M                                           #; (acc) a5  <-- 0x40f607b3
       0     4288        M 0x800007d4 sub     a5, a2, a5             #; a2  = 65, a5  = 60, (wrb) a5  <-- 5
       0     4290        M 0x800007d8 fcvt.d.wu ft3, a5              #; ac1  = 5
       0     4291        M 0x800007e0 addi    a3, a3, -1             #; a3  = 35, (wrb) a3  <-- 34
                         M                                           #; (f:fpu) ft3  <-- 5.0
       0     4292        M 0x800007e4 addi    a2, a2, 1              #; a2  = 65, (wrb) a2  <-- 66
                         M 0x800007dc fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
       0     4293        M 0x800007e8 bnez    a3, pc - 32            #; a3  = 34, taken, goto 0x800007c8
                         M                                           #; (f:fpu) ft0  <-- 5.0
       0     4294        M 0x800007c8 mulhu   a5, a2, a4             #; a2  = 66, a4  = 0xcccccccd
       0     4297        M                                           #; (acc) a5  <-- 0x0037d793
       0     4298        M 0x800007cc srli    a5, a5, 3              #; a5  = 52, (wrb) a5  <-- 6
       0     4299        M 0x800007d0 mul     a5, a5, a6             #; a5  = 6, a6  = 10
       0     4302        M                                           #; (acc) a5  <-- 0x40f607b3
       0     4303        M 0x800007d4 sub     a5, a2, a5             #; a2  = 66, a5  = 60, (wrb) a5  <-- 6
       0     4305        M 0x800007d8 fcvt.d.wu ft3, a5              #; ac1  = 6
       0     4306        M 0x800007e0 addi    a3, a3, -1             #; a3  = 34, (wrb) a3  <-- 33
                         M                                           #; (f:fpu) ft3  <-- 6.0
       0     4307        M 0x800007e4 addi    a2, a2, 1              #; a2  = 66, (wrb) a2  <-- 67
                         M 0x800007dc fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
       0     4308        M 0x800007e8 bnez    a3, pc - 32            #; a3  = 33, taken, goto 0x800007c8
                         M                                           #; (f:fpu) ft0  <-- 6.0
       0     4309        M 0x800007c8 mulhu   a5, a2, a4             #; a2  = 67, a4  = 0xcccccccd
       0     4312        M                                           #; (acc) a5  <-- 0x0037d793
       0     4313        M 0x800007cc srli    a5, a5, 3              #; a5  = 53, (wrb) a5  <-- 6
       0     4314        M 0x800007d0 mul     a5, a5, a6             #; a5  = 6, a6  = 10
       0     4317        M                                           #; (acc) a5  <-- 0x40f607b3
       0     4318        M 0x800007d4 sub     a5, a2, a5             #; a2  = 67, a5  = 60, (wrb) a5  <-- 7
       0     4320        M 0x800007d8 fcvt.d.wu ft3, a5              #; ac1  = 7
       0     4321        M 0x800007e0 addi    a3, a3, -1             #; a3  = 33, (wrb) a3  <-- 32
                         M                                           #; (f:fpu) ft3  <-- 7.0
       0     4322        M 0x800007e4 addi    a2, a2, 1              #; a2  = 67, (wrb) a2  <-- 68
                         M 0x800007dc fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
       0     4323        M 0x800007e8 bnez    a3, pc - 32            #; a3  = 32, taken, goto 0x800007c8
                         M                                           #; (f:fpu) ft0  <-- 7.0
       0     4324        M 0x800007c8 mulhu   a5, a2, a4             #; a2  = 68, a4  = 0xcccccccd
       0     4327        M                                           #; (acc) a5  <-- 0x0037d793
       0     4328        M 0x800007cc srli    a5, a5, 3              #; a5  = 54, (wrb) a5  <-- 6
       0     4329        M 0x800007d0 mul     a5, a5, a6             #; a5  = 6, a6  = 10
       0     4332        M                                           #; (acc) a5  <-- 0x40f607b3
       0     4333        M 0x800007d4 sub     a5, a2, a5             #; a2  = 68, a5  = 60, (wrb) a5  <-- 8
       0     4335        M 0x800007d8 fcvt.d.wu ft3, a5              #; ac1  = 8
       0     4336        M 0x800007e0 addi    a3, a3, -1             #; a3  = 32, (wrb) a3  <-- 31
                         M                                           #; (f:fpu) ft3  <-- 8.0
       0     4337        M 0x800007e4 addi    a2, a2, 1              #; a2  = 68, (wrb) a2  <-- 69
                         M 0x800007dc fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
       0     4338        M 0x800007e8 bnez    a3, pc - 32            #; a3  = 31, taken, goto 0x800007c8
                         M                                           #; (f:fpu) ft0  <-- 8.0
       0     4339        M 0x800007c8 mulhu   a5, a2, a4             #; a2  = 69, a4  = 0xcccccccd
       0     4342        M                                           #; (acc) a5  <-- 0x0037d793
       0     4343        M 0x800007cc srli    a5, a5, 3              #; a5  = 55, (wrb) a5  <-- 6
       0     4344        M 0x800007d0 mul     a5, a5, a6             #; a5  = 6, a6  = 10
       0     4347        M                                           #; (acc) a5  <-- 0x40f607b3
       0     4348        M 0x800007d4 sub     a5, a2, a5             #; a2  = 69, a5  = 60, (wrb) a5  <-- 9
       0     4350        M 0x800007d8 fcvt.d.wu ft3, a5              #; ac1  = 9
       0     4351        M 0x800007e0 addi    a3, a3, -1             #; a3  = 31, (wrb) a3  <-- 30
                         M                                           #; (f:fpu) ft3  <-- 9.0
       0     4352        M 0x800007e4 addi    a2, a2, 1              #; a2  = 69, (wrb) a2  <-- 70
                         M 0x800007dc fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
       0     4353        M 0x800007e8 bnez    a3, pc - 32            #; a3  = 30, taken, goto 0x800007c8
                         M                                           #; (f:fpu) ft0  <-- 9.0
       0     4354        M 0x800007c8 mulhu   a5, a2, a4             #; a2  = 70, a4  = 0xcccccccd
       0     4357        M                                           #; (acc) a5  <-- 0x0037d793
       0     4358        M 0x800007cc srli    a5, a5, 3              #; a5  = 56, (wrb) a5  <-- 7
       0     4359        M 0x800007d0 mul     a5, a5, a6             #; a5  = 7, a6  = 10
       0     4362        M                                           #; (acc) a5  <-- 0x40f607b3
       0     4363        M 0x800007d4 sub     a5, a2, a5             #; a2  = 70, a5  = 70, (wrb) a5  <-- 0
       0     4365        M 0x800007d8 fcvt.d.wu ft3, a5              #; ac1  = 0
       0     4366        M 0x800007e0 addi    a3, a3, -1             #; a3  = 30, (wrb) a3  <-- 29
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     4367        M 0x800007e4 addi    a2, a2, 1              #; a2  = 70, (wrb) a2  <-- 71
                         M 0x800007dc fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4368        M 0x800007e8 bnez    a3, pc - 32            #; a3  = 29, taken, goto 0x800007c8
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     4369        M 0x800007c8 mulhu   a5, a2, a4             #; a2  = 71, a4  = 0xcccccccd
       0     4372        M                                           #; (acc) a5  <-- 0x0037d793
       0     4373        M 0x800007cc srli    a5, a5, 3              #; a5  = 56, (wrb) a5  <-- 7
       0     4374        M 0x800007d0 mul     a5, a5, a6             #; a5  = 7, a6  = 10
       0     4377        M                                           #; (acc) a5  <-- 0x40f607b3
       0     4378        M 0x800007d4 sub     a5, a2, a5             #; a2  = 71, a5  = 70, (wrb) a5  <-- 1
       0     4380        M 0x800007d8 fcvt.d.wu ft3, a5              #; ac1  = 1
       0     4381        M 0x800007e0 addi    a3, a3, -1             #; a3  = 29, (wrb) a3  <-- 28
                         M                                           #; (f:fpu) ft3  <-- 1.0
       0     4382        M 0x800007e4 addi    a2, a2, 1              #; a2  = 71, (wrb) a2  <-- 72
                         M 0x800007dc fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
       0     4383        M 0x800007e8 bnez    a3, pc - 32            #; a3  = 28, taken, goto 0x800007c8
                         M                                           #; (f:fpu) ft0  <-- 1.0
       0     4384        M 0x800007c8 mulhu   a5, a2, a4             #; a2  = 72, a4  = 0xcccccccd
       0     4387        M                                           #; (acc) a5  <-- 0x0037d793
       0     4388        M 0x800007cc srli    a5, a5, 3              #; a5  = 57, (wrb) a5  <-- 7
       0     4389        M 0x800007d0 mul     a5, a5, a6             #; a5  = 7, a6  = 10
       0     4392        M                                           #; (acc) a5  <-- 0x40f607b3
       0     4393        M 0x800007d4 sub     a5, a2, a5             #; a2  = 72, a5  = 70, (wrb) a5  <-- 2
       0     4395        M 0x800007d8 fcvt.d.wu ft3, a5              #; ac1  = 2
       0     4396        M 0x800007e0 addi    a3, a3, -1             #; a3  = 28, (wrb) a3  <-- 27
                         M                                           #; (f:fpu) ft3  <-- 2.0
       0     4397        M 0x800007e4 addi    a2, a2, 1              #; a2  = 72, (wrb) a2  <-- 73
                         M 0x800007dc fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
       0     4398        M 0x800007e8 bnez    a3, pc - 32            #; a3  = 27, taken, goto 0x800007c8
                         M                                           #; (f:fpu) ft0  <-- 2.0
       0     4399        M 0x800007c8 mulhu   a5, a2, a4             #; a2  = 73, a4  = 0xcccccccd
       0     4402        M                                           #; (acc) a5  <-- 0x0037d793
       0     4403        M 0x800007cc srli    a5, a5, 3              #; a5  = 58, (wrb) a5  <-- 7
       0     4404        M 0x800007d0 mul     a5, a5, a6             #; a5  = 7, a6  = 10
       0     4407        M                                           #; (acc) a5  <-- 0x40f607b3
       0     4408        M 0x800007d4 sub     a5, a2, a5             #; a2  = 73, a5  = 70, (wrb) a5  <-- 3
       0     4410        M 0x800007d8 fcvt.d.wu ft3, a5              #; ac1  = 3
       0     4411        M 0x800007e0 addi    a3, a3, -1             #; a3  = 27, (wrb) a3  <-- 26
                         M                                           #; (f:fpu) ft3  <-- 3.0
       0     4412        M 0x800007e4 addi    a2, a2, 1              #; a2  = 73, (wrb) a2  <-- 74
                         M 0x800007dc fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
       0     4413        M 0x800007e8 bnez    a3, pc - 32            #; a3  = 26, taken, goto 0x800007c8
                         M                                           #; (f:fpu) ft0  <-- 3.0
       0     4414        M 0x800007c8 mulhu   a5, a2, a4             #; a2  = 74, a4  = 0xcccccccd
       0     4417        M                                           #; (acc) a5  <-- 0x0037d793
       0     4418        M 0x800007cc srli    a5, a5, 3              #; a5  = 59, (wrb) a5  <-- 7
       0     4419        M 0x800007d0 mul     a5, a5, a6             #; a5  = 7, a6  = 10
       0     4422        M                                           #; (acc) a5  <-- 0x40f607b3
       0     4423        M 0x800007d4 sub     a5, a2, a5             #; a2  = 74, a5  = 70, (wrb) a5  <-- 4
       0     4425        M 0x800007d8 fcvt.d.wu ft3, a5              #; ac1  = 4
       0     4426        M 0x800007e0 addi    a3, a3, -1             #; a3  = 26, (wrb) a3  <-- 25
                         M                                           #; (f:fpu) ft3  <-- 4.0
       0     4427        M 0x800007e4 addi    a2, a2, 1              #; a2  = 74, (wrb) a2  <-- 75
                         M 0x800007dc fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
       0     4428        M 0x800007e8 bnez    a3, pc - 32            #; a3  = 25, taken, goto 0x800007c8
                         M                                           #; (f:fpu) ft0  <-- 4.0
       0     4429        M 0x800007c8 mulhu   a5, a2, a4             #; a2  = 75, a4  = 0xcccccccd
       0     4432        M                                           #; (acc) a5  <-- 0x0037d793
       0     4433        M 0x800007cc srli    a5, a5, 3              #; a5  = 60, (wrb) a5  <-- 7
       0     4434        M 0x800007d0 mul     a5, a5, a6             #; a5  = 7, a6  = 10
       0     4437        M                                           #; (acc) a5  <-- 0x40f607b3
       0     4438        M 0x800007d4 sub     a5, a2, a5             #; a2  = 75, a5  = 70, (wrb) a5  <-- 5
       0     4440        M 0x800007d8 fcvt.d.wu ft3, a5              #; ac1  = 5
       0     4441        M 0x800007e0 addi    a3, a3, -1             #; a3  = 25, (wrb) a3  <-- 24
                         M                                           #; (f:fpu) ft3  <-- 5.0
       0     4442        M 0x800007e4 addi    a2, a2, 1              #; a2  = 75, (wrb) a2  <-- 76
                         M 0x800007dc fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
       0     4443        M 0x800007e8 bnez    a3, pc - 32            #; a3  = 24, taken, goto 0x800007c8
                         M                                           #; (f:fpu) ft0  <-- 5.0
       0     4444        M 0x800007c8 mulhu   a5, a2, a4             #; a2  = 76, a4  = 0xcccccccd
       0     4447        M                                           #; (acc) a5  <-- 0x0037d793
       0     4448        M 0x800007cc srli    a5, a5, 3              #; a5  = 60, (wrb) a5  <-- 7
       0     4449        M 0x800007d0 mul     a5, a5, a6             #; a5  = 7, a6  = 10
       0     4452        M                                           #; (acc) a5  <-- 0x40f607b3
       0     4453        M 0x800007d4 sub     a5, a2, a5             #; a2  = 76, a5  = 70, (wrb) a5  <-- 6
       0     4455        M 0x800007d8 fcvt.d.wu ft3, a5              #; ac1  = 6
       0     4456        M 0x800007e0 addi    a3, a3, -1             #; a3  = 24, (wrb) a3  <-- 23
                         M                                           #; (f:fpu) ft3  <-- 6.0
       0     4457        M 0x800007e4 addi    a2, a2, 1              #; a2  = 76, (wrb) a2  <-- 77
                         M 0x800007dc fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
       0     4458        M 0x800007e8 bnez    a3, pc - 32            #; a3  = 23, taken, goto 0x800007c8
                         M                                           #; (f:fpu) ft0  <-- 6.0
       0     4459        M 0x800007c8 mulhu   a5, a2, a4             #; a2  = 77, a4  = 0xcccccccd
       0     4462        M                                           #; (acc) a5  <-- 0x0037d793
       0     4463        M 0x800007cc srli    a5, a5, 3              #; a5  = 61, (wrb) a5  <-- 7
       0     4464        M 0x800007d0 mul     a5, a5, a6             #; a5  = 7, a6  = 10
       0     4467        M                                           #; (acc) a5  <-- 0x40f607b3
       0     4468        M 0x800007d4 sub     a5, a2, a5             #; a2  = 77, a5  = 70, (wrb) a5  <-- 7
       0     4470        M 0x800007d8 fcvt.d.wu ft3, a5              #; ac1  = 7
       0     4471        M 0x800007e0 addi    a3, a3, -1             #; a3  = 23, (wrb) a3  <-- 22
                         M                                           #; (f:fpu) ft3  <-- 7.0
       0     4472        M 0x800007e4 addi    a2, a2, 1              #; a2  = 77, (wrb) a2  <-- 78
                         M 0x800007dc fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
       0     4473        M 0x800007e8 bnez    a3, pc - 32            #; a3  = 22, taken, goto 0x800007c8
                         M                                           #; (f:fpu) ft0  <-- 7.0
       0     4474        M 0x800007c8 mulhu   a5, a2, a4             #; a2  = 78, a4  = 0xcccccccd
       0     4477        M                                           #; (acc) a5  <-- 0x0037d793
       0     4478        M 0x800007cc srli    a5, a5, 3              #; a5  = 62, (wrb) a5  <-- 7
       0     4479        M 0x800007d0 mul     a5, a5, a6             #; a5  = 7, a6  = 10
       0     4482        M                                           #; (acc) a5  <-- 0x40f607b3
       0     4483        M 0x800007d4 sub     a5, a2, a5             #; a2  = 78, a5  = 70, (wrb) a5  <-- 8
       0     4485        M 0x800007d8 fcvt.d.wu ft3, a5              #; ac1  = 8
       0     4486        M 0x800007e0 addi    a3, a3, -1             #; a3  = 22, (wrb) a3  <-- 21
                         M                                           #; (f:fpu) ft3  <-- 8.0
       0     4487        M 0x800007e4 addi    a2, a2, 1              #; a2  = 78, (wrb) a2  <-- 79
                         M 0x800007dc fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
       0     4488        M 0x800007e8 bnez    a3, pc - 32            #; a3  = 21, taken, goto 0x800007c8
                         M                                           #; (f:fpu) ft0  <-- 8.0
       0     4489        M 0x800007c8 mulhu   a5, a2, a4             #; a2  = 79, a4  = 0xcccccccd
       0     4492        M                                           #; (acc) a5  <-- 0x0037d793
       0     4493        M 0x800007cc srli    a5, a5, 3              #; a5  = 63, (wrb) a5  <-- 7
       0     4494        M 0x800007d0 mul     a5, a5, a6             #; a5  = 7, a6  = 10
       0     4497        M                                           #; (acc) a5  <-- 0x40f607b3
       0     4498        M 0x800007d4 sub     a5, a2, a5             #; a2  = 79, a5  = 70, (wrb) a5  <-- 9
       0     4500        M 0x800007d8 fcvt.d.wu ft3, a5              #; ac1  = 9
       0     4501        M 0x800007e0 addi    a3, a3, -1             #; a3  = 21, (wrb) a3  <-- 20
                         M                                           #; (f:fpu) ft3  <-- 9.0
       0     4502        M 0x800007e4 addi    a2, a2, 1              #; a2  = 79, (wrb) a2  <-- 80
                         M 0x800007dc fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
       0     4503        M 0x800007e8 bnez    a3, pc - 32            #; a3  = 20, taken, goto 0x800007c8
                         M                                           #; (f:fpu) ft0  <-- 9.0
       0     4504        M 0x800007c8 mulhu   a5, a2, a4             #; a2  = 80, a4  = 0xcccccccd
       0     4507        M                                           #; (acc) a5  <-- 0x0037d793
       0     4508        M 0x800007cc srli    a5, a5, 3              #; a5  = 64, (wrb) a5  <-- 8
       0     4509        M 0x800007d0 mul     a5, a5, a6             #; a5  = 8, a6  = 10
       0     4512        M                                           #; (acc) a5  <-- 0x40f607b3
       0     4513        M 0x800007d4 sub     a5, a2, a5             #; a2  = 80, a5  = 80, (wrb) a5  <-- 0
       0     4515        M 0x800007d8 fcvt.d.wu ft3, a5              #; ac1  = 0
       0     4516        M 0x800007e0 addi    a3, a3, -1             #; a3  = 20, (wrb) a3  <-- 19
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     4517        M 0x800007e4 addi    a2, a2, 1              #; a2  = 80, (wrb) a2  <-- 81
                         M 0x800007dc fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4518        M 0x800007e8 bnez    a3, pc - 32            #; a3  = 19, taken, goto 0x800007c8
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     4519        M 0x800007c8 mulhu   a5, a2, a4             #; a2  = 81, a4  = 0xcccccccd
       0     4522        M                                           #; (acc) a5  <-- 0x0037d793
       0     4523        M 0x800007cc srli    a5, a5, 3              #; a5  = 64, (wrb) a5  <-- 8
       0     4524        M 0x800007d0 mul     a5, a5, a6             #; a5  = 8, a6  = 10
       0     4527        M                                           #; (acc) a5  <-- 0x40f607b3
       0     4528        M 0x800007d4 sub     a5, a2, a5             #; a2  = 81, a5  = 80, (wrb) a5  <-- 1
       0     4530        M 0x800007d8 fcvt.d.wu ft3, a5              #; ac1  = 1
       0     4531        M 0x800007e0 addi    a3, a3, -1             #; a3  = 19, (wrb) a3  <-- 18
                         M                                           #; (f:fpu) ft3  <-- 1.0
       0     4532        M 0x800007e4 addi    a2, a2, 1              #; a2  = 81, (wrb) a2  <-- 82
                         M 0x800007dc fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
       0     4533        M 0x800007e8 bnez    a3, pc - 32            #; a3  = 18, taken, goto 0x800007c8
                         M                                           #; (f:fpu) ft0  <-- 1.0
       0     4534        M 0x800007c8 mulhu   a5, a2, a4             #; a2  = 82, a4  = 0xcccccccd
       0     4537        M                                           #; (acc) a5  <-- 0x0037d793
       0     4538        M 0x800007cc srli    a5, a5, 3              #; a5  = 65, (wrb) a5  <-- 8
       0     4539        M 0x800007d0 mul     a5, a5, a6             #; a5  = 8, a6  = 10
       0     4542        M                                           #; (acc) a5  <-- 0x40f607b3
       0     4543        M 0x800007d4 sub     a5, a2, a5             #; a2  = 82, a5  = 80, (wrb) a5  <-- 2
       0     4545        M 0x800007d8 fcvt.d.wu ft3, a5              #; ac1  = 2
       0     4546        M 0x800007e0 addi    a3, a3, -1             #; a3  = 18, (wrb) a3  <-- 17
                         M                                           #; (f:fpu) ft3  <-- 2.0
       0     4547        M 0x800007e4 addi    a2, a2, 1              #; a2  = 82, (wrb) a2  <-- 83
                         M 0x800007dc fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
       0     4548        M 0x800007e8 bnez    a3, pc - 32            #; a3  = 17, taken, goto 0x800007c8
                         M                                           #; (f:fpu) ft0  <-- 2.0
       0     4549        M 0x800007c8 mulhu   a5, a2, a4             #; a2  = 83, a4  = 0xcccccccd
       0     4552        M                                           #; (acc) a5  <-- 0x0037d793
       0     4553        M 0x800007cc srli    a5, a5, 3              #; a5  = 66, (wrb) a5  <-- 8
       0     4554        M 0x800007d0 mul     a5, a5, a6             #; a5  = 8, a6  = 10
       0     4557        M                                           #; (acc) a5  <-- 0x40f607b3
       0     4558        M 0x800007d4 sub     a5, a2, a5             #; a2  = 83, a5  = 80, (wrb) a5  <-- 3
       0     4560        M 0x800007d8 fcvt.d.wu ft3, a5              #; ac1  = 3
       0     4561        M 0x800007e0 addi    a3, a3, -1             #; a3  = 17, (wrb) a3  <-- 16
                         M                                           #; (f:fpu) ft3  <-- 3.0
       0     4562        M 0x800007e4 addi    a2, a2, 1              #; a2  = 83, (wrb) a2  <-- 84
                         M 0x800007dc fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
       0     4563        M 0x800007e8 bnez    a3, pc - 32            #; a3  = 16, taken, goto 0x800007c8
                         M                                           #; (f:fpu) ft0  <-- 3.0
       0     4564        M 0x800007c8 mulhu   a5, a2, a4             #; a2  = 84, a4  = 0xcccccccd
       0     4567        M                                           #; (acc) a5  <-- 0x0037d793
       0     4568        M 0x800007cc srli    a5, a5, 3              #; a5  = 67, (wrb) a5  <-- 8
       0     4569        M 0x800007d0 mul     a5, a5, a6             #; a5  = 8, a6  = 10
       0     4572        M                                           #; (acc) a5  <-- 0x40f607b3
       0     4573        M 0x800007d4 sub     a5, a2, a5             #; a2  = 84, a5  = 80, (wrb) a5  <-- 4
       0     4575        M 0x800007d8 fcvt.d.wu ft3, a5              #; ac1  = 4
       0     4576        M 0x800007e0 addi    a3, a3, -1             #; a3  = 16, (wrb) a3  <-- 15
                         M                                           #; (f:fpu) ft3  <-- 4.0
       0     4577        M 0x800007e4 addi    a2, a2, 1              #; a2  = 84, (wrb) a2  <-- 85
                         M 0x800007dc fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
       0     4578        M 0x800007e8 bnez    a3, pc - 32            #; a3  = 15, taken, goto 0x800007c8
                         M                                           #; (f:fpu) ft0  <-- 4.0
       0     4579        M 0x800007c8 mulhu   a5, a2, a4             #; a2  = 85, a4  = 0xcccccccd
       0     4582        M                                           #; (acc) a5  <-- 0x0037d793
       0     4583        M 0x800007cc srli    a5, a5, 3              #; a5  = 68, (wrb) a5  <-- 8
       0     4584        M 0x800007d0 mul     a5, a5, a6             #; a5  = 8, a6  = 10
       0     4587        M                                           #; (acc) a5  <-- 0x40f607b3
       0     4588        M 0x800007d4 sub     a5, a2, a5             #; a2  = 85, a5  = 80, (wrb) a5  <-- 5
       0     4590        M 0x800007d8 fcvt.d.wu ft3, a5              #; ac1  = 5
       0     4591        M 0x800007e0 addi    a3, a3, -1             #; a3  = 15, (wrb) a3  <-- 14
                         M                                           #; (f:fpu) ft3  <-- 5.0
       0     4592        M 0x800007e4 addi    a2, a2, 1              #; a2  = 85, (wrb) a2  <-- 86
                         M 0x800007dc fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
       0     4593        M 0x800007e8 bnez    a3, pc - 32            #; a3  = 14, taken, goto 0x800007c8
                         M                                           #; (f:fpu) ft0  <-- 5.0
       0     4594        M 0x800007c8 mulhu   a5, a2, a4             #; a2  = 86, a4  = 0xcccccccd
       0     4597        M                                           #; (acc) a5  <-- 0x0037d793
       0     4598        M 0x800007cc srli    a5, a5, 3              #; a5  = 68, (wrb) a5  <-- 8
       0     4599        M 0x800007d0 mul     a5, a5, a6             #; a5  = 8, a6  = 10
       0     4602        M                                           #; (acc) a5  <-- 0x40f607b3
       0     4603        M 0x800007d4 sub     a5, a2, a5             #; a2  = 86, a5  = 80, (wrb) a5  <-- 6
       0     4605        M 0x800007d8 fcvt.d.wu ft3, a5              #; ac1  = 6
       0     4606        M 0x800007e0 addi    a3, a3, -1             #; a3  = 14, (wrb) a3  <-- 13
                         M                                           #; (f:fpu) ft3  <-- 6.0
       0     4607        M 0x800007e4 addi    a2, a2, 1              #; a2  = 86, (wrb) a2  <-- 87
                         M 0x800007dc fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
       0     4608        M 0x800007e8 bnez    a3, pc - 32            #; a3  = 13, taken, goto 0x800007c8
                         M                                           #; (f:fpu) ft0  <-- 6.0
       0     4609        M 0x800007c8 mulhu   a5, a2, a4             #; a2  = 87, a4  = 0xcccccccd
       0     4612        M                                           #; (acc) a5  <-- 0x0037d793
       0     4613        M 0x800007cc srli    a5, a5, 3              #; a5  = 69, (wrb) a5  <-- 8
       0     4614        M 0x800007d0 mul     a5, a5, a6             #; a5  = 8, a6  = 10
       0     4617        M                                           #; (acc) a5  <-- 0x40f607b3
       0     4618        M 0x800007d4 sub     a5, a2, a5             #; a2  = 87, a5  = 80, (wrb) a5  <-- 7
       0     4620        M 0x800007d8 fcvt.d.wu ft3, a5              #; ac1  = 7
       0     4621        M 0x800007e0 addi    a3, a3, -1             #; a3  = 13, (wrb) a3  <-- 12
                         M                                           #; (f:fpu) ft3  <-- 7.0
       0     4622        M 0x800007e4 addi    a2, a2, 1              #; a2  = 87, (wrb) a2  <-- 88
                         M 0x800007dc fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
       0     4623        M 0x800007e8 bnez    a3, pc - 32            #; a3  = 12, taken, goto 0x800007c8
                         M                                           #; (f:fpu) ft0  <-- 7.0
       0     4624        M 0x800007c8 mulhu   a5, a2, a4             #; a2  = 88, a4  = 0xcccccccd
       0     4627        M                                           #; (acc) a5  <-- 0x0037d793
       0     4628        M 0x800007cc srli    a5, a5, 3              #; a5  = 70, (wrb) a5  <-- 8
       0     4629        M 0x800007d0 mul     a5, a5, a6             #; a5  = 8, a6  = 10
       0     4632        M                                           #; (acc) a5  <-- 0x40f607b3
       0     4633        M 0x800007d4 sub     a5, a2, a5             #; a2  = 88, a5  = 80, (wrb) a5  <-- 8
       0     4635        M 0x800007d8 fcvt.d.wu ft3, a5              #; ac1  = 8
       0     4636        M 0x800007e0 addi    a3, a3, -1             #; a3  = 12, (wrb) a3  <-- 11
                         M                                           #; (f:fpu) ft3  <-- 8.0
       0     4637        M 0x800007e4 addi    a2, a2, 1              #; a2  = 88, (wrb) a2  <-- 89
                         M 0x800007dc fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
       0     4638        M 0x800007e8 bnez    a3, pc - 32            #; a3  = 11, taken, goto 0x800007c8
                         M                                           #; (f:fpu) ft0  <-- 8.0
       0     4639        M 0x800007c8 mulhu   a5, a2, a4             #; a2  = 89, a4  = 0xcccccccd
       0     4642        M                                           #; (acc) a5  <-- 0x0037d793
       0     4643        M 0x800007cc srli    a5, a5, 3              #; a5  = 71, (wrb) a5  <-- 8
       0     4644        M 0x800007d0 mul     a5, a5, a6             #; a5  = 8, a6  = 10
       0     4647        M                                           #; (acc) a5  <-- 0x40f607b3
       0     4648        M 0x800007d4 sub     a5, a2, a5             #; a2  = 89, a5  = 80, (wrb) a5  <-- 9
       0     4650        M 0x800007d8 fcvt.d.wu ft3, a5              #; ac1  = 9
       0     4651        M 0x800007e0 addi    a3, a3, -1             #; a3  = 11, (wrb) a3  <-- 10
                         M                                           #; (f:fpu) ft3  <-- 9.0
       0     4652        M 0x800007e4 addi    a2, a2, 1              #; a2  = 89, (wrb) a2  <-- 90
                         M 0x800007dc fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
       0     4653        M 0x800007e8 bnez    a3, pc - 32            #; a3  = 10, taken, goto 0x800007c8
                         M                                           #; (f:fpu) ft0  <-- 9.0
       0     4654        M 0x800007c8 mulhu   a5, a2, a4             #; a2  = 90, a4  = 0xcccccccd
       0     4657        M                                           #; (acc) a5  <-- 0x0037d793
       0     4658        M 0x800007cc srli    a5, a5, 3              #; a5  = 72, (wrb) a5  <-- 9
       0     4659        M 0x800007d0 mul     a5, a5, a6             #; a5  = 9, a6  = 10
       0     4662        M                                           #; (acc) a5  <-- 0x40f607b3
       0     4663        M 0x800007d4 sub     a5, a2, a5             #; a2  = 90, a5  = 90, (wrb) a5  <-- 0
       0     4665        M 0x800007d8 fcvt.d.wu ft3, a5              #; ac1  = 0
       0     4666        M 0x800007e0 addi    a3, a3, -1             #; a3  = 10, (wrb) a3  <-- 9
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     4667        M 0x800007e4 addi    a2, a2, 1              #; a2  = 90, (wrb) a2  <-- 91
                         M 0x800007dc fsgnj.d ft0, ft3, ft3          #; ft3  = 0.0, ft3  = 0.0
       0     4668        M 0x800007e8 bnez    a3, pc - 32            #; a3  = 9, taken, goto 0x800007c8
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     4669        M 0x800007c8 mulhu   a5, a2, a4             #; a2  = 91, a4  = 0xcccccccd
       0     4672        M                                           #; (acc) a5  <-- 0x0037d793
       0     4673        M 0x800007cc srli    a5, a5, 3              #; a5  = 72, (wrb) a5  <-- 9
       0     4674        M 0x800007d0 mul     a5, a5, a6             #; a5  = 9, a6  = 10
       0     4677        M                                           #; (acc) a5  <-- 0x40f607b3
       0     4678        M 0x800007d4 sub     a5, a2, a5             #; a2  = 91, a5  = 90, (wrb) a5  <-- 1
       0     4680        M 0x800007d8 fcvt.d.wu ft3, a5              #; ac1  = 1
       0     4681        M 0x800007e0 addi    a3, a3, -1             #; a3  = 9, (wrb) a3  <-- 8
                         M                                           #; (f:fpu) ft3  <-- 1.0
       0     4682        M 0x800007e4 addi    a2, a2, 1              #; a2  = 91, (wrb) a2  <-- 92
                         M 0x800007dc fsgnj.d ft0, ft3, ft3          #; ft3  = 1.0, ft3  = 1.0
       0     4683        M 0x800007e8 bnez    a3, pc - 32            #; a3  = 8, taken, goto 0x800007c8
                         M                                           #; (f:fpu) ft0  <-- 1.0
       0     4684        M 0x800007c8 mulhu   a5, a2, a4             #; a2  = 92, a4  = 0xcccccccd
       0     4687        M                                           #; (acc) a5  <-- 0x0037d793
       0     4688        M 0x800007cc srli    a5, a5, 3              #; a5  = 73, (wrb) a5  <-- 9
       0     4689        M 0x800007d0 mul     a5, a5, a6             #; a5  = 9, a6  = 10
       0     4692        M                                           #; (acc) a5  <-- 0x40f607b3
       0     4693        M 0x800007d4 sub     a5, a2, a5             #; a2  = 92, a5  = 90, (wrb) a5  <-- 2
       0     4695        M 0x800007d8 fcvt.d.wu ft3, a5              #; ac1  = 2
       0     4696        M 0x800007e0 addi    a3, a3, -1             #; a3  = 8, (wrb) a3  <-- 7
                         M                                           #; (f:fpu) ft3  <-- 2.0
       0     4697        M 0x800007e4 addi    a2, a2, 1              #; a2  = 92, (wrb) a2  <-- 93
                         M 0x800007dc fsgnj.d ft0, ft3, ft3          #; ft3  = 2.0, ft3  = 2.0
       0     4698        M 0x800007e8 bnez    a3, pc - 32            #; a3  = 7, taken, goto 0x800007c8
                         M                                           #; (f:fpu) ft0  <-- 2.0
       0     4699        M 0x800007c8 mulhu   a5, a2, a4             #; a2  = 93, a4  = 0xcccccccd
       0     4702        M                                           #; (acc) a5  <-- 0x0037d793
       0     4703        M 0x800007cc srli    a5, a5, 3              #; a5  = 74, (wrb) a5  <-- 9
       0     4704        M 0x800007d0 mul     a5, a5, a6             #; a5  = 9, a6  = 10
       0     4707        M                                           #; (acc) a5  <-- 0x40f607b3
       0     4708        M 0x800007d4 sub     a5, a2, a5             #; a2  = 93, a5  = 90, (wrb) a5  <-- 3
       0     4710        M 0x800007d8 fcvt.d.wu ft3, a5              #; ac1  = 3
       0     4711        M 0x800007e0 addi    a3, a3, -1             #; a3  = 7, (wrb) a3  <-- 6
                         M                                           #; (f:fpu) ft3  <-- 3.0
       0     4712        M 0x800007e4 addi    a2, a2, 1              #; a2  = 93, (wrb) a2  <-- 94
                         M 0x800007dc fsgnj.d ft0, ft3, ft3          #; ft3  = 3.0, ft3  = 3.0
       0     4713        M 0x800007e8 bnez    a3, pc - 32            #; a3  = 6, taken, goto 0x800007c8
                         M                                           #; (f:fpu) ft0  <-- 3.0
       0     4714        M 0x800007c8 mulhu   a5, a2, a4             #; a2  = 94, a4  = 0xcccccccd
       0     4717        M                                           #; (acc) a5  <-- 0x0037d793
       0     4718        M 0x800007cc srli    a5, a5, 3              #; a5  = 75, (wrb) a5  <-- 9
       0     4719        M 0x800007d0 mul     a5, a5, a6             #; a5  = 9, a6  = 10
       0     4722        M                                           #; (acc) a5  <-- 0x40f607b3
       0     4723        M 0x800007d4 sub     a5, a2, a5             #; a2  = 94, a5  = 90, (wrb) a5  <-- 4
       0     4725        M 0x800007d8 fcvt.d.wu ft3, a5              #; ac1  = 4
       0     4726        M 0x800007e0 addi    a3, a3, -1             #; a3  = 6, (wrb) a3  <-- 5
                         M                                           #; (f:fpu) ft3  <-- 4.0
       0     4727        M 0x800007e4 addi    a2, a2, 1              #; a2  = 94, (wrb) a2  <-- 95
                         M 0x800007dc fsgnj.d ft0, ft3, ft3          #; ft3  = 4.0, ft3  = 4.0
       0     4728        M 0x800007e8 bnez    a3, pc - 32            #; a3  = 5, taken, goto 0x800007c8
                         M                                           #; (f:fpu) ft0  <-- 4.0
       0     4729        M 0x800007c8 mulhu   a5, a2, a4             #; a2  = 95, a4  = 0xcccccccd
       0     4732        M                                           #; (acc) a5  <-- 0x0037d793
       0     4733        M 0x800007cc srli    a5, a5, 3              #; a5  = 76, (wrb) a5  <-- 9
       0     4734        M 0x800007d0 mul     a5, a5, a6             #; a5  = 9, a6  = 10
       0     4737        M                                           #; (acc) a5  <-- 0x40f607b3
       0     4738        M 0x800007d4 sub     a5, a2, a5             #; a2  = 95, a5  = 90, (wrb) a5  <-- 5
       0     4740        M 0x800007d8 fcvt.d.wu ft3, a5              #; ac1  = 5
       0     4741        M 0x800007e0 addi    a3, a3, -1             #; a3  = 5, (wrb) a3  <-- 4
                         M                                           #; (f:fpu) ft3  <-- 5.0
       0     4742        M 0x800007e4 addi    a2, a2, 1              #; a2  = 95, (wrb) a2  <-- 96
                         M 0x800007dc fsgnj.d ft0, ft3, ft3          #; ft3  = 5.0, ft3  = 5.0
       0     4743        M 0x800007e8 bnez    a3, pc - 32            #; a3  = 4, taken, goto 0x800007c8
                         M                                           #; (f:fpu) ft0  <-- 5.0
       0     4744        M 0x800007c8 mulhu   a5, a2, a4             #; a2  = 96, a4  = 0xcccccccd
       0     4747        M                                           #; (acc) a5  <-- 0x0037d793
       0     4748        M 0x800007cc srli    a5, a5, 3              #; a5  = 76, (wrb) a5  <-- 9
       0     4749        M 0x800007d0 mul     a5, a5, a6             #; a5  = 9, a6  = 10
       0     4752        M                                           #; (acc) a5  <-- 0x40f607b3
       0     4753        M 0x800007d4 sub     a5, a2, a5             #; a2  = 96, a5  = 90, (wrb) a5  <-- 6
       0     4755        M 0x800007d8 fcvt.d.wu ft3, a5              #; ac1  = 6
       0     4756        M 0x800007e0 addi    a3, a3, -1             #; a3  = 4, (wrb) a3  <-- 3
                         M                                           #; (f:fpu) ft3  <-- 6.0
       0     4757        M 0x800007e4 addi    a2, a2, 1              #; a2  = 96, (wrb) a2  <-- 97
                         M 0x800007dc fsgnj.d ft0, ft3, ft3          #; ft3  = 6.0, ft3  = 6.0
       0     4758        M 0x800007e8 bnez    a3, pc - 32            #; a3  = 3, taken, goto 0x800007c8
                         M                                           #; (f:fpu) ft0  <-- 6.0
       0     4759        M 0x800007c8 mulhu   a5, a2, a4             #; a2  = 97, a4  = 0xcccccccd
       0     4762        M                                           #; (acc) a5  <-- 0x0037d793
       0     4763        M 0x800007cc srli    a5, a5, 3              #; a5  = 77, (wrb) a5  <-- 9
       0     4764        M 0x800007d0 mul     a5, a5, a6             #; a5  = 9, a6  = 10
       0     4767        M                                           #; (acc) a5  <-- 0x40f607b3
       0     4768        M 0x800007d4 sub     a5, a2, a5             #; a2  = 97, a5  = 90, (wrb) a5  <-- 7
       0     4770        M 0x800007d8 fcvt.d.wu ft3, a5              #; ac1  = 7
       0     4771        M 0x800007e0 addi    a3, a3, -1             #; a3  = 3, (wrb) a3  <-- 2
                         M                                           #; (f:fpu) ft3  <-- 7.0
       0     4772        M 0x800007e4 addi    a2, a2, 1              #; a2  = 97, (wrb) a2  <-- 98
                         M 0x800007dc fsgnj.d ft0, ft3, ft3          #; ft3  = 7.0, ft3  = 7.0
       0     4773        M 0x800007e8 bnez    a3, pc - 32            #; a3  = 2, taken, goto 0x800007c8
                         M                                           #; (f:fpu) ft0  <-- 7.0
       0     4774        M 0x800007c8 mulhu   a5, a2, a4             #; a2  = 98, a4  = 0xcccccccd
       0     4777        M                                           #; (acc) a5  <-- 0x0037d793
       0     4778        M 0x800007cc srli    a5, a5, 3              #; a5  = 78, (wrb) a5  <-- 9
       0     4779        M 0x800007d0 mul     a5, a5, a6             #; a5  = 9, a6  = 10
       0     4782        M                                           #; (acc) a5  <-- 0x40f607b3
       0     4783        M 0x800007d4 sub     a5, a2, a5             #; a2  = 98, a5  = 90, (wrb) a5  <-- 8
       0     4785        M 0x800007d8 fcvt.d.wu ft3, a5              #; ac1  = 8
       0     4786        M 0x800007e0 addi    a3, a3, -1             #; a3  = 2, (wrb) a3  <-- 1
                         M                                           #; (f:fpu) ft3  <-- 8.0
       0     4787        M 0x800007e4 addi    a2, a2, 1              #; a2  = 98, (wrb) a2  <-- 99
                         M 0x800007dc fsgnj.d ft0, ft3, ft3          #; ft3  = 8.0, ft3  = 8.0
       0     4788        M 0x800007e8 bnez    a3, pc - 32            #; a3  = 1, taken, goto 0x800007c8
                         M                                           #; (f:fpu) ft0  <-- 8.0
       0     4789        M 0x800007c8 mulhu   a5, a2, a4             #; a2  = 99, a4  = 0xcccccccd
       0     4792        M                                           #; (acc) a5  <-- 0x0037d793
       0     4793        M 0x800007cc srli    a5, a5, 3              #; a5  = 79, (wrb) a5  <-- 9
       0     4794        M 0x800007d0 mul     a5, a5, a6             #; a5  = 9, a6  = 10
       0     4797        M                                           #; (acc) a5  <-- 0x40f607b3
       0     4798        M 0x800007d4 sub     a5, a2, a5             #; a2  = 99, a5  = 90, (wrb) a5  <-- 9
       0     4800        M 0x800007d8 fcvt.d.wu ft3, a5              #; ac1  = 9
       0     4801        M 0x800007e0 addi    a3, a3, -1             #; a3  = 1, (wrb) a3  <-- 0
                         M                                           #; (f:fpu) ft3  <-- 9.0
       0     4802        M 0x800007e4 addi    a2, a2, 1              #; a2  = 99, (wrb) a2  <-- 100
                         M 0x800007dc fsgnj.d ft0, ft3, ft3          #; ft3  = 9.0, ft3  = 9.0
       0     4803        M 0x800007e8 bnez    a3, pc - 32            #; a3  = 0, not taken
                         M                                           #; (f:fpu) ft0  <-- 9.0
       0     4805        M 0x800007ec csrrci  a2, ssr, 1             #; 
       0     4816        M 0x800007f0 j       pc + 0x44              #; goto 0x80000834
       0     4828        M 0x80000834 csrr    s0, mcycle             #; mcycle = 4827, (wrb) s0  <-- 4827
       0     4829        M 0x80000838 li      a2, 100                #; (wrb) a2  <-- 100
       0     4830        M 0x8000083c auipc   ra, 0x2                #; (wrb) ra  <-- 0x8000283c
       0     4840        M 0x80000840 jalr    ra, ra, -204           #; ra  = 0x8000283c, (wrb) ra  <-- 0x80000844, goto 0x80002770
       0     4863        M 0x80002770 li      a3, 1                  #; (wrb) a3  <-- 1
       0     4864        M 0x80002774 blt     a2, a3, pc + 48        #; a2  = 100, a3  = 1, not taken
       0     4865        M 0x80002778 addi    a6, a2, -1             #; a2  = 100, (wrb) a6  <-- 99
       0     4866        M 0x8000277c slli    a3, a6, 3              #; a6  = 99, (wrb) a3  <-- 792
       0     4875        M 0x80002780 add     a4, a3, a0             #; a3  = 792, a0  = 0x00100000, (wrb) a4  <-- 0x00100318
       0     4876        M 0x80002784 add     t1, a3, a1             #; a3  = 792, a1  = 0x00100320, (wrb) t1  <-- 0x00100638
       0     4877        M 0x80002788 srli    a5, a0, 20             #; a0  = 0x00100000, (wrb) a5  <-- 1
       0     4878        M 0x8000278c snez    t0, a5                 #; a5  = 1, (wrb) t0  <-- 1
       0     4887        M 0x80002790 lui     a5, 0x120              #; (wrb) a5  <-- 0x00120000
       0     4888        M 0x80002794 addi    a7, a5, 1              #; a5  = 0x00120000, (wrb) a7  <-- 0x00120001
       0     4889        M 0x80002798 bgeu    a4, a3, pc + 20        #; a4  = 0x00100318, a3  = 792, taken, goto 0x800027ac
       0     4899        M 0x800027ac sltu    a4, a4, a7             #; a4  = 0x00100318, a7  = 0x00120001, (wrb) a4  <-- 1
       0     4911        M 0x800027b0 and     t0, t0, a4             #; t0  = 1, a4  = 1, (wrb) t0  <-- 1
       0     4912        M 0x800027b4 srli    a4, a1, 20             #; a1  = 0x00100320, (wrb) a4  <-- 1
       0     4913        M 0x800027b8 snez    a4, a4                 #; a4  = 1, (wrb) a4  <-- 1
       0     4914        M 0x800027bc bgeu    t1, a3, pc + 12        #; t1  = 0x00100638, a3  = 792, taken, goto 0x800027c8
       0     4923        M 0x800027c8 sltu    a3, t1, a7             #; t1  = 0x00100638, a7  = 0x00120001, (wrb) a3  <-- 1
       0     4924        M 0x800027cc and     a3, a4, a3             #; a4  = 1, a3  = 1, (wrb) a3  <-- 1
       0     4935        M 0x800027d0 and     a3, t0, a3             #; t0  = 1, a3  = 1, (wrb) a3  <-- 1
       0     4936        M 0x800027d4 beqz    a3, pc + 92            #; a3  = 1, not taken
       0     4937        M 0x800027d8 li      a3, 8                  #; (wrb) a3  <-- 8
       0     4938        M 0x800027dc li      a4, 64                 #; (wrb) a4  <-- 64
       0     4947        M 0x800027e0 li      a5, 192                #; (wrb) a5  <-- 192
       0     4948        M 0x800027e4 scfgw   a6, a4                 #; a6  = 99, a4  = 64
       0     4949        M 0x800027e8 scfgw   a3, a5                 #; a3  = 8, a5  = 192
       0     4950        M 0x800027ec li      a4, 32                 #; (wrb) a4  <-- 32
       0     4959        M 0x800027f0 scfgw   zero, a4               #; a4  = 32
       0     4960        M 0x800027f4 scfgwi  a0, 768                #; a0  = 0x00100000
       0     4961        M 0x800027f8 li      a0, 1                  #; (wrb) a0  <-- 1
       0     4962        M 0x800027fc addi    a4, a0, 64             #; a0  = 1, (wrb) a4  <-- 65
       0     4971        M 0x80002800 addi    a5, a0, 192            #; a0  = 1, (wrb) a5  <-- 193
       0     4972        M 0x80002804 scfgw   a6, a4                 #; a6  = 99, a4  = 65
       0     4973        M 0x80002808 scfgw   a3, a5                 #; a3  = 8, a5  = 193
       0     4974        M 0x8000280c addi    a0, a0, 32             #; a0  = 1, (wrb) a0  <-- 33
       0     4983        M 0x80002810 scfgw   zero, a0               #; a0  = 33
       0     4984        M 0x80002814 scfgwi  a1, 769                #; a1  = 0x00100320
       0     4986        M 0x8000281c li      a1, 15                 #; (wrb) a1  <-- 15
                         M 0x80002818 csrrsi  a0, ssr, 1             #; 
       0     4995        M 0x80002820 andi    a0, a2, 15             #; a2  = 100, (wrb) a0  <-- 4
       0     4996        M 0x80002824 bgeu    a6, a1, pc + 36        #; a6  = 99, a1  = 15, taken, goto 0x80002848
       0     5018        M 0x80002848 andi    a1, a2, -16            #; a2  = 100, (wrb) a1  <-- 96
       0     5019        M 0x8000284c sub     a1, zero, a1           #; a1  = 96, (wrb) a1  <-- -96
       0     5031        M 0x80002850 fcvt.d.w fa0, zero             #; ac1  = 0
       0     5032        M                                           #; (f:fpu) fa0  <-- 0.0
       0     5033        M 0x80002854 fmadd.d ft3, ft1, ft0, fa0     #; ft1  = 0.0, ft0  = 0.0, fa0  = 0.0
       0     5034        M 0x80002858 fcvt.d.w ft4, zero             #; ac1  = 0
       0     5035        M 0x8000285c fcvt.d.w ft5, zero             #; ac1  = 0, (f:fpu) ft4  <-- 0.0
       0     5036        M                                           #; (f:fpu) ft5  <-- 0.0
       0     5037        M                                           #; (f:fpu) ft3  <-- 0.0
       0     5043        M 0x80002864 li      a2, 13                 #; (wrb) a2  <-- 13
                         M 0x80002860 fcvt.d.w ft6, zero             #; ac1  = 0
       0     5044        M                                           #; (f:fpu) ft6  <-- 0.0
       0     5045        M 0x80002868 frep    14, 1, 0b1001, 4       #; outer, 14 issues
       0     5047        M 0x8000286c fmadd.d ft3, ft1, ft0, ft3     #; [2868 0:0], ft1  = 1.0, ft0  = 1.0, ft3  = 0.0
       0     5048        M 0x8000286c fmadd.d ft4, ft1, ft0, ft4     #; [2868 1:0], ft1  = 2.0, ft0  = 2.0, ft4  = 0.0
       0     5049        M 0x8000286c fmadd.d ft5, ft1, ft0, ft5     #; [2868 2:0], ft1  = 3.0, ft0  = 3.0, ft5  = 0.0
       0     5050        M 0x8000286c fmadd.d ft6, ft1, ft0, ft6     #; [2868 3:0], ft1  = 4.0, ft0  = 4.0, ft6  = 0.0, (f:fpu) ft3  <-- 1.0
       0     5051        M 0x8000286c fmadd.d ft3, ft1, ft0, ft3     #; [2868 4:0], ft1  = 5.0, ft0  = 5.0, ft3  = 1.0, (f:fpu) ft4  <-- 4.0
       0     5052        M 0x8000286c fmadd.d ft4, ft1, ft0, ft4     #; [2868 5:0], ft1  = 6.0, ft0  = 6.0, ft4  = 4.0, (f:fpu) ft5  <-- 9.0
       0     5053        M 0x8000286c fmadd.d ft5, ft1, ft0, ft5     #; [2868 6:0], ft1  = 7.0, ft0  = 7.0, ft5  = 9.0, (f:fpu) ft6  <-- 16.0
       0     5054        M 0x8000286c fmadd.d ft6, ft1, ft0, ft6     #; [2868 7:0], ft1  = 8.0, ft0  = 8.0, ft6  = 16.0, (f:fpu) ft3  <-- 26.0
       0     5055        M 0x8000286c fmadd.d ft3, ft1, ft0, ft3     #; [2868 8:0], ft1  = 9.0, ft0  = 9.0, ft3  = 26.0, (f:fpu) ft4  <-- 40.0
       0     5056        M 0x8000286c fmadd.d ft4, ft1, ft0, ft4     #; [2868 9:0], ft1  = 0.0, ft0  = 0.0, ft4  = 40.0, (f:fpu) ft5  <-- 58.0
       0     5057        M 0x8000287c addi    a1, a1, 16             #; a1  = -96, (wrb) a1  <-- -80
                         M 0x8000286c fmadd.d ft5, ft1, ft0, ft5     #; [2868 10:0], ft1  = 1.0, ft0  = 1.0, ft5  = 58.0, (f:fpu) ft6  <-- 80.0
       0     5058        M 0x8000286c fmadd.d ft6, ft1, ft0, ft6     #; [2868 11:0], ft1  = 2.0, ft0  = 2.0, ft6  = 80.0, (f:fpu) ft3  <-- 107.0
       0     5059        M 0x80002884 bnez    a1, pc - 48            #; a1  = -80, taken, goto 0x80002854
                         M 0x8000286c fmadd.d ft3, ft1, ft0, ft3     #; [2868 12:0], ft1  = 3.0, ft0  = 3.0, ft3  = 107.0, (f:fpu) ft4  <-- 40.0
       0     5060        M 0x8000286c fmadd.d ft4, ft1, ft0, ft4     #; [2868 13:0], ft1  = 4.0, ft0  = 4.0, ft4  = 40.0, (f:fpu) ft5  <-- 59.0
       0     5061        M                                           #; (f:fpu) ft6  <-- 84.0
       0     5062        M                                           #; (f:fpu) ft3  <-- 116.0
       0     5063        M                                           #; (f:fpu) ft4  <-- 56.0
       0     5064        M 0x80002870 fadd.d  ft3, ft3, ft4          #; ft3  = 116.0, ft4  = 56.0
       0     5065        M 0x80002874 fadd.d  ft5, ft5, ft6          #; ft5  = 59.0, ft6  = 84.0
       0     5067        M                                           #; (f:fpu) ft3  <-- 172.0
       0     5068        M                                           #; (f:fpu) ft5  <-- 143.0
       0     5069        M 0x80002878 fadd.d  ft3, ft3, ft5          #; ft3  = 172.0, ft5  = 143.0
       0     5072        M                                           #; (f:fpu) ft3  <-- 315.0
       0     5073        M 0x80002880 fmadd.d fa0, ft1, ft0, ft3     #; ft1  = 5.0, ft0  = 5.0, ft3  = 315.0
       0     5076        M                                           #; (f:fpu) fa0  <-- 340.0
       0     5077        M 0x80002854 fmadd.d ft3, ft1, ft0, fa0     #; ft1  = 6.0, ft0  = 6.0, fa0  = 340.0
       0     5078        M 0x80002858 fcvt.d.w ft4, zero             #; ac1  = 0
       0     5079        M 0x8000285c fcvt.d.w ft5, zero             #; ac1  = 0, (f:fpu) ft4  <-- 0.0
       0     5080        M 0x80002864 li      a2, 13                 #; (wrb) a2  <-- 13
                         M 0x80002860 fcvt.d.w ft6, zero             #; ac1  = 0, (f:fpu) ft5  <-- 0.0
       0     5081        M                                           #; (f:fpu) ft3  <-- 376.0
       0     5082        M                                           #; (f:fpu) ft6  <-- 0.0
                         M 0x80002868 frep    14, 1, 0b1001, 4       #; outer, 14 issues
       0     5084        M 0x8000286c fmadd.d ft3, ft1, ft0, ft3     #; [2868 0:0], ft1  = 7.0, ft0  = 7.0, ft3  = 376.0
       0     5085        M 0x8000286c fmadd.d ft4, ft1, ft0, ft4     #; [2868 1:0], ft1  = 8.0, ft0  = 8.0, ft4  = 0.0
       0     5086        M 0x8000287c addi    a1, a1, 16             #; a1  = -80, (wrb) a1  <-- -64
                         M 0x8000286c fmadd.d ft5, ft1, ft0, ft5     #; [2868 2:0], ft1  = 9.0, ft0  = 9.0, ft5  = 0.0
       0     5087        M 0x8000286c fmadd.d ft6, ft1, ft0, ft6     #; [2868 3:0], ft1  = 0.0, ft0  = 0.0, ft6  = 0.0, (f:fpu) ft3  <-- 425.0
       0     5088        M 0x80002884 bnez    a1, pc - 48            #; a1  = -64, taken, goto 0x80002854
                         M 0x8000286c fmadd.d ft3, ft1, ft0, ft3     #; [2868 4:0], ft1  = 1.0, ft0  = 1.0, ft3  = 425.0, (f:fpu) ft4  <-- 64.0
       0     5089        M 0x8000286c fmadd.d ft4, ft1, ft0, ft4     #; [2868 5:0], ft1  = 2.0, ft0  = 2.0, ft4  = 64.0, (f:fpu) ft5  <-- 81.0
       0     5090        M 0x8000286c fmadd.d ft5, ft1, ft0, ft5     #; [2868 6:0], ft1  = 3.0, ft0  = 3.0, ft5  = 81.0, (f:fpu) ft6  <-- 0.0
       0     5091        M 0x8000286c fmadd.d ft6, ft1, ft0, ft6     #; [2868 7:0], ft1  = 4.0, ft0  = 4.0, ft6  = 0.0, (f:fpu) ft3  <-- 426.0
       0     5092        M 0x8000286c fmadd.d ft3, ft1, ft0, ft3     #; [2868 8:0], ft1  = 5.0, ft0  = 5.0, ft3  = 426.0, (f:fpu) ft4  <-- 68.0
       0     5093        M 0x8000286c fmadd.d ft4, ft1, ft0, ft4     #; [2868 9:0], ft1  = 6.0, ft0  = 6.0, ft4  = 68.0, (f:fpu) ft5  <-- 90.0
       0     5094        M 0x8000286c fmadd.d ft5, ft1, ft0, ft5     #; [2868 10:0], ft1  = 7.0, ft0  = 7.0, ft5  = 90.0, (f:fpu) ft6  <-- 16.0
       0     5095        M 0x8000286c fmadd.d ft6, ft1, ft0, ft6     #; [2868 11:0], ft1  = 8.0, ft0  = 8.0, ft6  = 16.0, (f:fpu) ft3  <-- 451.0
       0     5096        M 0x8000286c fmadd.d ft3, ft1, ft0, ft3     #; [2868 12:0], ft1  = 9.0, ft0  = 9.0, ft3  = 451.0, (f:fpu) ft4  <-- 104.0
       0     5097        M 0x8000286c fmadd.d ft4, ft1, ft0, ft4     #; [2868 13:0], ft1  = 0.0, ft0  = 0.0, ft4  = 104.0, (f:fpu) ft5  <-- 139.0
       0     5098        M                                           #; (f:fpu) ft6  <-- 80.0
       0     5099        M                                           #; (f:fpu) ft3  <-- 532.0
       0     5100        M                                           #; (f:fpu) ft4  <-- 104.0
       0     5101        M 0x80002870 fadd.d  ft3, ft3, ft4          #; ft3  = 532.0, ft4  = 104.0
       0     5102        M 0x80002874 fadd.d  ft5, ft5, ft6          #; ft5  = 139.0, ft6  = 80.0
       0     5104        M                                           #; (f:fpu) ft3  <-- 636.0
       0     5105        M                                           #; (f:fpu) ft5  <-- 219.0
       0     5106        M 0x80002878 fadd.d  ft3, ft3, ft5          #; ft3  = 636.0, ft5  = 219.0
       0     5109        M                                           #; (f:fpu) ft3  <-- 855.0
       0     5110        M 0x80002880 fmadd.d fa0, ft1, ft0, ft3     #; ft1  = 1.0, ft0  = 1.0, ft3  = 855.0
       0     5113        M                                           #; (f:fpu) fa0  <-- 856.0
       0     5114        M 0x80002854 fmadd.d ft3, ft1, ft0, fa0     #; ft1  = 2.0, ft0  = 2.0, fa0  = 856.0
       0     5115        M 0x80002858 fcvt.d.w ft4, zero             #; ac1  = 0
       0     5116        M 0x8000285c fcvt.d.w ft5, zero             #; ac1  = 0, (f:fpu) ft4  <-- 0.0
       0     5117        M 0x80002864 li      a2, 13                 #; (wrb) a2  <-- 13
                         M 0x80002860 fcvt.d.w ft6, zero             #; ac1  = 0, (f:fpu) ft5  <-- 0.0
       0     5118        M                                           #; (f:fpu) ft3  <-- 860.0
       0     5119        M                                           #; (f:fpu) ft6  <-- 0.0
                         M 0x80002868 frep    14, 1, 0b1001, 4       #; outer, 14 issues
       0     5121        M 0x8000286c fmadd.d ft3, ft1, ft0, ft3     #; [2868 0:0], ft1  = 3.0, ft0  = 3.0, ft3  = 860.0
       0     5122        M 0x8000286c fmadd.d ft4, ft1, ft0, ft4     #; [2868 1:0], ft1  = 4.0, ft0  = 4.0, ft4  = 0.0
       0     5123        M 0x8000287c addi    a1, a1, 16             #; a1  = -64, (wrb) a1  <-- -48
                         M 0x8000286c fmadd.d ft5, ft1, ft0, ft5     #; [2868 2:0], ft1  = 5.0, ft0  = 5.0, ft5  = 0.0
       0     5124        M 0x8000286c fmadd.d ft6, ft1, ft0, ft6     #; [2868 3:0], ft1  = 6.0, ft0  = 6.0, ft6  = 0.0, (f:fpu) ft3  <-- 869.0
       0     5125        M 0x80002884 bnez    a1, pc - 48            #; a1  = -48, taken, goto 0x80002854
                         M 0x8000286c fmadd.d ft3, ft1, ft0, ft3     #; [2868 4:0], ft1  = 7.0, ft0  = 7.0, ft3  = 869.0, (f:fpu) ft4  <-- 16.0
       0     5126        M 0x8000286c fmadd.d ft4, ft1, ft0, ft4     #; [2868 5:0], ft1  = 8.0, ft0  = 8.0, ft4  = 16.0, (f:fpu) ft5  <-- 25.0
       0     5127        M 0x8000286c fmadd.d ft5, ft1, ft0, ft5     #; [2868 6:0], ft1  = 9.0, ft0  = 9.0, ft5  = 25.0, (f:fpu) ft6  <-- 36.0
       0     5128        M 0x8000286c fmadd.d ft6, ft1, ft0, ft6     #; [2868 7:0], ft1  = 0.0, ft0  = 0.0, ft6  = 36.0, (f:fpu) ft3  <-- 918.0
       0     5129        M 0x8000286c fmadd.d ft3, ft1, ft0, ft3     #; [2868 8:0], ft1  = 1.0, ft0  = 1.0, ft3  = 918.0, (f:fpu) ft4  <-- 80.0
       0     5130        M 0x8000286c fmadd.d ft4, ft1, ft0, ft4     #; [2868 9:0], ft1  = 2.0, ft0  = 2.0, ft4  = 80.0, (f:fpu) ft5  <-- 106.0
       0     5131        M 0x8000286c fmadd.d ft5, ft1, ft0, ft5     #; [2868 10:0], ft1  = 3.0, ft0  = 3.0, ft5  = 106.0, (f:fpu) ft6  <-- 36.0
       0     5132        M 0x8000286c fmadd.d ft6, ft1, ft0, ft6     #; [2868 11:0], ft1  = 4.0, ft0  = 4.0, ft6  = 36.0, (f:fpu) ft3  <-- 919.0
       0     5133        M 0x8000286c fmadd.d ft3, ft1, ft0, ft3     #; [2868 12:0], ft1  = 5.0, ft0  = 5.0, ft3  = 919.0, (f:fpu) ft4  <-- 84.0
       0     5134        M 0x8000286c fmadd.d ft4, ft1, ft0, ft4     #; [2868 13:0], ft1  = 6.0, ft0  = 6.0, ft4  = 84.0, (f:fpu) ft5  <-- 115.0
       0     5135        M                                           #; (f:fpu) ft6  <-- 52.0
       0     5136        M                                           #; (f:fpu) ft3  <-- 944.0
       0     5137        M                                           #; (f:fpu) ft4  <-- 120.0
       0     5138        M 0x80002870 fadd.d  ft3, ft3, ft4          #; ft3  = 944.0, ft4  = 120.0
       0     5139        M 0x80002874 fadd.d  ft5, ft5, ft6          #; ft5  = 115.0, ft6  = 52.0
       0     5141        M                                           #; (f:fpu) ft3  <-- 1064.0
       0     5142        M                                           #; (f:fpu) ft5  <-- 167.0
       0     5143        M 0x80002878 fadd.d  ft3, ft3, ft5          #; ft3  = 1064.0, ft5  = 167.0
       0     5146        M                                           #; (f:fpu) ft3  <-- 1231.0
       0     5147        M 0x80002880 fmadd.d fa0, ft1, ft0, ft3     #; ft1  = 7.0, ft0  = 7.0, ft3  = 1231.0
       0     5150        M                                           #; (f:fpu) fa0  <-- 1280.0
       0     5151        M 0x80002854 fmadd.d ft3, ft1, ft0, fa0     #; ft1  = 8.0, ft0  = 8.0, fa0  = 1280.0
       0     5152        M 0x80002858 fcvt.d.w ft4, zero             #; ac1  = 0
       0     5153        M 0x8000285c fcvt.d.w ft5, zero             #; ac1  = 0, (f:fpu) ft4  <-- 0.0
       0     5154        M 0x80002864 li      a2, 13                 #; (wrb) a2  <-- 13
                         M 0x80002860 fcvt.d.w ft6, zero             #; ac1  = 0, (f:fpu) ft5  <-- 0.0
       0     5155        M                                           #; (f:fpu) ft3  <-- 1344.0
       0     5156        M                                           #; (f:fpu) ft6  <-- 0.0
                         M 0x80002868 frep    14, 1, 0b1001, 4       #; outer, 14 issues
       0     5158        M 0x8000286c fmadd.d ft3, ft1, ft0, ft3     #; [2868 0:0], ft1  = 9.0, ft0  = 9.0, ft3  = 1344.0
       0     5159        M 0x8000286c fmadd.d ft4, ft1, ft0, ft4     #; [2868 1:0], ft1  = 0.0, ft0  = 0.0, ft4  = 0.0
       0     5160        M 0x8000287c addi    a1, a1, 16             #; a1  = -48, (wrb) a1  <-- -32
                         M 0x8000286c fmadd.d ft5, ft1, ft0, ft5     #; [2868 2:0], ft1  = 1.0, ft0  = 1.0, ft5  = 0.0
       0     5161        M 0x8000286c fmadd.d ft6, ft1, ft0, ft6     #; [2868 3:0], ft1  = 2.0, ft0  = 2.0, ft6  = 0.0, (f:fpu) ft3  <-- 1425.0
       0     5162        M 0x80002884 bnez    a1, pc - 48            #; a1  = -32, taken, goto 0x80002854
                         M 0x8000286c fmadd.d ft3, ft1, ft0, ft3     #; [2868 4:0], ft1  = 3.0, ft0  = 3.0, ft3  = 1425.0, (f:fpu) ft4  <-- 0.0
       0     5163        M 0x8000286c fmadd.d ft4, ft1, ft0, ft4     #; [2868 5:0], ft1  = 4.0, ft0  = 4.0, ft4  = 0.0, (f:fpu) ft5  <-- 1.0
       0     5164        M 0x8000286c fmadd.d ft5, ft1, ft0, ft5     #; [2868 6:0], ft1  = 5.0, ft0  = 5.0, ft5  = 1.0, (f:fpu) ft6  <-- 4.0
       0     5165        M 0x8000286c fmadd.d ft6, ft1, ft0, ft6     #; [2868 7:0], ft1  = 6.0, ft0  = 6.0, ft6  = 4.0, (f:fpu) ft3  <-- 1434.0
       0     5166        M 0x8000286c fmadd.d ft3, ft1, ft0, ft3     #; [2868 8:0], ft1  = 7.0, ft0  = 7.0, ft3  = 1434.0, (f:fpu) ft4  <-- 16.0
       0     5167        M 0x8000286c fmadd.d ft4, ft1, ft0, ft4     #; [2868 9:0], ft1  = 8.0, ft0  = 8.0, ft4  = 16.0, (f:fpu) ft5  <-- 26.0
       0     5168        M 0x8000286c fmadd.d ft5, ft1, ft0, ft5     #; [2868 10:0], ft1  = 9.0, ft0  = 9.0, ft5  = 26.0, (f:fpu) ft6  <-- 40.0
       0     5169        M 0x8000286c fmadd.d ft6, ft1, ft0, ft6     #; [2868 11:0], ft1  = 0.0, ft0  = 0.0, ft6  = 40.0, (f:fpu) ft3  <-- 1483.0
       0     5170        M 0x8000286c fmadd.d ft3, ft1, ft0, ft3     #; [2868 12:0], ft1  = 1.0, ft0  = 1.0, ft3  = 1483.0, (f:fpu) ft4  <-- 80.0
       0     5171        M 0x8000286c fmadd.d ft4, ft1, ft0, ft4     #; [2868 13:0], ft1  = 2.0, ft0  = 2.0, ft4  = 80.0, (f:fpu) ft5  <-- 107.0
       0     5172        M                                           #; (f:fpu) ft6  <-- 40.0
       0     5173        M                                           #; (f:fpu) ft3  <-- 1484.0
       0     5174        M                                           #; (f:fpu) ft4  <-- 84.0
       0     5175        M 0x80002870 fadd.d  ft3, ft3, ft4          #; ft3  = 1484.0, ft4  = 84.0
       0     5176        M 0x80002874 fadd.d  ft5, ft5, ft6          #; ft5  = 107.0, ft6  = 40.0
       0     5178        M                                           #; (f:fpu) ft3  <-- 1568.0
       0     5179        M                                           #; (f:fpu) ft5  <-- 147.0
       0     5180        M 0x80002878 fadd.d  ft3, ft3, ft5          #; ft3  = 1568.0, ft5  = 147.0
       0     5183        M                                           #; (f:fpu) ft3  <-- 1715.0
       0     5184        M 0x80002880 fmadd.d fa0, ft1, ft0, ft3     #; ft1  = 3.0, ft0  = 3.0, ft3  = 1715.0
       0     5187        M                                           #; (f:fpu) fa0  <-- 1724.0
       0     5188        M 0x80002854 fmadd.d ft3, ft1, ft0, fa0     #; ft1  = 4.0, ft0  = 4.0, fa0  = 1724.0
       0     5189        M 0x80002858 fcvt.d.w ft4, zero             #; ac1  = 0
       0     5190        M 0x8000285c fcvt.d.w ft5, zero             #; ac1  = 0, (f:fpu) ft4  <-- 0.0
       0     5191        M 0x80002864 li      a2, 13                 #; (wrb) a2  <-- 13
                         M 0x80002860 fcvt.d.w ft6, zero             #; ac1  = 0, (f:fpu) ft5  <-- 0.0
       0     5192        M                                           #; (f:fpu) ft3  <-- 1740.0
       0     5193        M                                           #; (f:fpu) ft6  <-- 0.0
                         M 0x80002868 frep    14, 1, 0b1001, 4       #; outer, 14 issues
       0     5195        M 0x8000286c fmadd.d ft3, ft1, ft0, ft3     #; [2868 0:0], ft1  = 5.0, ft0  = 5.0, ft3  = 1740.0
       0     5196        M 0x8000286c fmadd.d ft4, ft1, ft0, ft4     #; [2868 1:0], ft1  = 6.0, ft0  = 6.0, ft4  = 0.0
       0     5197        M 0x8000287c addi    a1, a1, 16             #; a1  = -32, (wrb) a1  <-- -16
                         M 0x8000286c fmadd.d ft5, ft1, ft0, ft5     #; [2868 2:0], ft1  = 7.0, ft0  = 7.0, ft5  = 0.0
       0     5198        M 0x8000286c fmadd.d ft6, ft1, ft0, ft6     #; [2868 3:0], ft1  = 8.0, ft0  = 8.0, ft6  = 0.0, (f:fpu) ft3  <-- 1765.0
       0     5199        M 0x80002884 bnez    a1, pc - 48            #; a1  = -16, taken, goto 0x80002854
                         M 0x8000286c fmadd.d ft3, ft1, ft0, ft3     #; [2868 4:0], ft1  = 9.0, ft0  = 9.0, ft3  = 1765.0, (f:fpu) ft4  <-- 36.0
       0     5200        M 0x8000286c fmadd.d ft4, ft1, ft0, ft4     #; [2868 5:0], ft1  = 0.0, ft0  = 0.0, ft4  = 36.0, (f:fpu) ft5  <-- 49.0
       0     5201        M 0x8000286c fmadd.d ft5, ft1, ft0, ft5     #; [2868 6:0], ft1  = 1.0, ft0  = 1.0, ft5  = 49.0, (f:fpu) ft6  <-- 64.0
       0     5202        M 0x8000286c fmadd.d ft6, ft1, ft0, ft6     #; [2868 7:0], ft1  = 2.0, ft0  = 2.0, ft6  = 64.0, (f:fpu) ft3  <-- 1846.0
       0     5203        M 0x8000286c fmadd.d ft3, ft1, ft0, ft3     #; [2868 8:0], ft1  = 3.0, ft0  = 3.0, ft3  = 1846.0, (f:fpu) ft4  <-- 36.0
       0     5204        M 0x8000286c fmadd.d ft4, ft1, ft0, ft4     #; [2868 9:0], ft1  = 4.0, ft0  = 4.0, ft4  = 36.0, (f:fpu) ft5  <-- 50.0
       0     5205        M 0x8000286c fmadd.d ft5, ft1, ft0, ft5     #; [2868 10:0], ft1  = 5.0, ft0  = 5.0, ft5  = 50.0, (f:fpu) ft6  <-- 68.0
       0     5206        M 0x8000286c fmadd.d ft6, ft1, ft0, ft6     #; [2868 11:0], ft1  = 6.0, ft0  = 6.0, ft6  = 68.0, (f:fpu) ft3  <-- 1855.0
       0     5207        M 0x8000286c fmadd.d ft3, ft1, ft0, ft3     #; [2868 12:0], ft1  = 7.0, ft0  = 7.0, ft3  = 1855.0, (f:fpu) ft4  <-- 52.0
       0     5208        M 0x8000286c fmadd.d ft4, ft1, ft0, ft4     #; [2868 13:0], ft1  = 8.0, ft0  = 8.0, ft4  = 52.0, (f:fpu) ft5  <-- 75.0
       0     5209        M                                           #; (f:fpu) ft6  <-- 104.0
       0     5210        M                                           #; (f:fpu) ft3  <-- 1904.0
       0     5211        M                                           #; (f:fpu) ft4  <-- 116.0
       0     5212        M 0x80002870 fadd.d  ft3, ft3, ft4          #; ft3  = 1904.0, ft4  = 116.0
       0     5213        M 0x80002874 fadd.d  ft5, ft5, ft6          #; ft5  = 75.0, ft6  = 104.0
       0     5215        M                                           #; (f:fpu) ft3  <-- 2020.0
       0     5216        M                                           #; (f:fpu) ft5  <-- 179.0
       0     5217        M 0x80002878 fadd.d  ft3, ft3, ft5          #; ft3  = 2020.0, ft5  = 179.0
       0     5220        M                                           #; (f:fpu) ft3  <-- 2199.0
       0     5221        M 0x80002880 fmadd.d fa0, ft1, ft0, ft3     #; ft1  = 9.0, ft0  = 9.0, ft3  = 2199.0
       0     5224        M                                           #; (f:fpu) fa0  <-- 2280.0
       0     5225        M 0x80002854 fmadd.d ft3, ft1, ft0, fa0     #; ft1  = 0.0, ft0  = 0.0, fa0  = 2280.0
       0     5226        M 0x80002858 fcvt.d.w ft4, zero             #; ac1  = 0
       0     5227        M 0x8000285c fcvt.d.w ft5, zero             #; ac1  = 0, (f:fpu) ft4  <-- 0.0
       0     5228        M 0x80002864 li      a2, 13                 #; (wrb) a2  <-- 13
                         M 0x80002860 fcvt.d.w ft6, zero             #; ac1  = 0, (f:fpu) ft5  <-- 0.0
       0     5229        M                                           #; (f:fpu) ft3  <-- 2280.0
       0     5230        M                                           #; (f:fpu) ft6  <-- 0.0
                         M 0x80002868 frep    14, 1, 0b1001, 4       #; outer, 14 issues
       0     5232        M 0x8000286c fmadd.d ft3, ft1, ft0, ft3     #; [2868 0:0], ft1  = 1.0, ft0  = 1.0, ft3  = 2280.0
       0     5233        M 0x8000286c fmadd.d ft4, ft1, ft0, ft4     #; [2868 1:0], ft1  = 2.0, ft0  = 2.0, ft4  = 0.0
       0     5234        M 0x8000287c addi    a1, a1, 16             #; a1  = -16, (wrb) a1  <-- 0
                         M 0x8000286c fmadd.d ft5, ft1, ft0, ft5     #; [2868 2:0], ft1  = 3.0, ft0  = 3.0, ft5  = 0.0
       0     5235        M 0x8000286c fmadd.d ft6, ft1, ft0, ft6     #; [2868 3:0], ft1  = 4.0, ft0  = 4.0, ft6  = 0.0, (f:fpu) ft3  <-- 2281.0
       0     5236        M 0x80002884 bnez    a1, pc - 48            #; a1  = 0, not taken
                         M 0x8000286c fmadd.d ft3, ft1, ft0, ft3     #; [2868 4:0], ft1  = 5.0, ft0  = 5.0, ft3  = 2281.0, (f:fpu) ft4  <-- 4.0
       0     5237        M 0x80002888 beqz    a0, pc + 16            #; a0  = 4, not taken
                         M 0x8000286c fmadd.d ft4, ft1, ft0, ft4     #; [2868 5:0], ft1  = 6.0, ft0  = 6.0, ft4  = 4.0, (f:fpu) ft5  <-- 9.0
       0     5238        M 0x8000288c addi    a0, a0, -1             #; a0  = 4, (wrb) a0  <-- 3
                         M 0x8000286c fmadd.d ft5, ft1, ft0, ft5     #; [2868 6:0], ft1  = 7.0, ft0  = 7.0, ft5  = 9.0, (f:fpu) ft6  <-- 16.0
       0     5239        M 0x8000286c fmadd.d ft6, ft1, ft0, ft6     #; [2868 7:0], ft1  = 8.0, ft0  = 8.0, ft6  = 16.0, (f:fpu) ft3  <-- 2306.0
       0     5240        M 0x8000286c fmadd.d ft3, ft1, ft0, ft3     #; [2868 8:0], ft1  = 9.0, ft0  = 9.0, ft3  = 2306.0, (f:fpu) ft4  <-- 40.0
       0     5241        M 0x8000286c fmadd.d ft4, ft1, ft0, ft4     #; [2868 9:0], ft1  = 0.0, ft0  = 0.0, ft4  = 40.0, (f:fpu) ft5  <-- 58.0
       0     5242        M 0x8000286c fmadd.d ft5, ft1, ft0, ft5     #; [2868 10:0], ft1  = 1.0, ft0  = 1.0, ft5  = 58.0, (f:fpu) ft6  <-- 80.0
       0     5243        M 0x8000286c fmadd.d ft6, ft1, ft0, ft6     #; [2868 11:0], ft1  = 2.0, ft0  = 2.0, ft6  = 80.0, (f:fpu) ft3  <-- 2387.0
       0     5244        M 0x8000286c fmadd.d ft3, ft1, ft0, ft3     #; [2868 12:0], ft1  = 3.0, ft0  = 3.0, ft3  = 2387.0, (f:fpu) ft4  <-- 40.0
       0     5245        M 0x8000286c fmadd.d ft4, ft1, ft0, ft4     #; [2868 13:0], ft1  = 4.0, ft0  = 4.0, ft4  = 40.0, (f:fpu) ft5  <-- 59.0
       0     5246        M                                           #; (f:fpu) ft6  <-- 84.0
       0     5247        M                                           #; (f:fpu) ft3  <-- 2396.0
       0     5248        M                                           #; (f:fpu) ft4  <-- 56.0
       0     5249        M 0x80002870 fadd.d  ft3, ft3, ft4          #; ft3  = 2396.0, ft4  = 56.0
       0     5250        M 0x80002894 bnez    a0, pc - 8             #; a0  = 3, taken, goto 0x8000288c
                         M 0x80002874 fadd.d  ft5, ft5, ft6          #; ft5  = 59.0, ft6  = 84.0
       0     5251        M 0x8000288c addi    a0, a0, -1             #; a0  = 3, (wrb) a0  <-- 2
       0     5252        M                                           #; (f:fpu) ft3  <-- 2452.0
       0     5253        M 0x80002894 bnez    a0, pc - 8             #; a0  = 2, taken, goto 0x8000288c
                         M                                           #; (f:fpu) ft5  <-- 143.0
       0     5254        M 0x8000288c addi    a0, a0, -1             #; a0  = 2, (wrb) a0  <-- 1
                         M 0x80002878 fadd.d  ft3, ft3, ft5          #; ft3  = 2452.0, ft5  = 143.0
       0     5256        M 0x80002894 bnez    a0, pc - 8             #; a0  = 1, taken, goto 0x8000288c
       0     5257        M 0x8000288c addi    a0, a0, -1             #; a0  = 1, (wrb) a0  <-- 0
                         M                                           #; (f:fpu) ft3  <-- 2595.0
       0     5258        M 0x80002880 fmadd.d fa0, ft1, ft0, ft3     #; ft1  = 5.0, ft0  = 5.0, ft3  = 2595.0
       0     5259        M 0x80002894 bnez    a0, pc - 8             #; a0  = 0, not taken
       0     5261        M 0x8000289c j       pc + 0x114             #; goto 0x800029b0
                         M                                           #; (f:fpu) fa0  <-- 2620.0
       0     5262        M 0x80002890 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 6.0, ft0  = 6.0, fa0  = 2620.0
       0     5265        M                                           #; (f:fpu) fa0  <-- 2656.0
       0     5266        M 0x80002890 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 7.0, ft0  = 7.0, fa0  = 2656.0
       0     5269        M                                           #; (f:fpu) fa0  <-- 2705.0
       0     5270        M 0x80002890 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 8.0, ft0  = 8.0, fa0  = 2705.0
       0     5272        M 0x800029b0 ret                            #; ra  = 0x80000844, goto 0x80000844
       0     5273        M                                           #; (f:fpu) fa0  <-- 2769.0
       0     5274        M 0x80002890 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 9.0, ft0  = 9.0, fa0  = 2769.0
       0     5275        M 0x80002898 csrrci  a0, ssr, 1             #; 
       0     5277        M                                           #; (f:fpu) fa0  <-- 2850.0
       0     5279        M 0x80000848 csrr    a0, mcycle             #; mcycle = 5278, (wrb) a0  <-- 5278
       0     5280        M 0x8000084c sub     a1, a0, s0             #; a0  = 5278, s0  = 4827, (wrb) a1  <-- 451
                         M 0x80000844 fsgnj.d fs0, fa0, fa0          #; fa0  = 2850.0, fa0  = 2850.0
       0     5281        M                                           #; (f:fpu) fs0  <-- 2850.0
       0     5282        M 0x80000850 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002850
       0     5283        M 0x80000854 addi    a0, a0, 1521           #; a0  = 0x80002850, (wrb) a0  <-- 0x80002e41
       0     5284        M 0x80000858 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000858
       0     5285        M 0x8000085c jalr    ra, ra, 92             #; ra  = 0x80000858, (wrb) ra  <-- 0x80000860, goto 0x800008b4
       0     5296        M 0x800008b4 addi    sp, sp, -48            #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff10
       0     5297        M 0x800008b8 sw      ra, 12(sp)             #; sp  = 0x0011ff10, 0x80000860 ~~> Word[0x0011ff1c]
       0     5298        M 0x800008bc mv      t0, a0                 #; a0  = 0x80002e41, (wrb) t0  <-- 0x80002e41
       0     5299        M 0x800008c0 sw      a7, 44(sp)             #; sp  = 0x0011ff10, 0x00120001 ~~> Word[0x0011ff3c]
       0     5300        M 0x800008c4 sw      a6, 40(sp)             #; sp  = 0x0011ff10, 99 ~~> Word[0x0011ff38]
       0     5301        M 0x800008c8 sw      a5, 36(sp)             #; sp  = 0x0011ff10, 193 ~~> Word[0x0011ff34]
       0     5302        M 0x800008cc sw      a4, 32(sp)             #; sp  = 0x0011ff10, 65 ~~> Word[0x0011ff30]
       0     5311        M 0x800008d0 sw      a3, 28(sp)             #; sp  = 0x0011ff10, 8 ~~> Word[0x0011ff2c]
       0     5312        M 0x800008d4 sw      a2, 24(sp)             #; sp  = 0x0011ff10, 13 ~~> Word[0x0011ff28]
       0     5313        M 0x800008d8 sw      a1, 20(sp)             #; sp  = 0x0011ff10, 451 ~~> Word[0x0011ff24]
       0     5314        M 0x800008dc addi    a0, sp, 20             #; sp  = 0x0011ff10, (wrb) a0  <-- 0x0011ff24
       0     5323        M 0x800008e0 sw      a0, 8(sp)              #; sp  = 0x0011ff10, 0x0011ff24 ~~> Word[0x0011ff18]
       0     5324        M 0x800008e4 auipc   a0, 0x1                #; (wrb) a0  <-- 0x800018e4
       0     5325        M 0x800008e8 addi    a0, a0, -988           #; a0  = 0x800018e4, (wrb) a0  <-- 0x80001508
       0     5326        M 0x800008ec addi    a1, sp, 7              #; sp  = 0x0011ff10, (wrb) a1  <-- 0x0011ff17
       0     5335        M 0x800008f0 li      a2, -1                 #; (wrb) a2  <-- -1
       0     5336        M 0x800008f4 addi    a4, sp, 20             #; sp  = 0x0011ff10, (wrb) a4  <-- 0x0011ff24
       0     5337        M 0x800008f8 mv      a3, t0                 #; t0  = 0x80002e41, (wrb) a3  <-- 0x80002e41
       0     5338        M 0x800008fc auipc   ra, 0x0                #; (wrb) ra  <-- 0x800008fc
       0     5347        M 0x80000900 jalr    ra, ra, 20             #; ra  = 0x800008fc, (wrb) ra  <-- 0x80000904, goto 0x80000910
       0     5359        M 0x80000910 addi    sp, sp, -112           #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011fea0
       0     5360        M 0x80000914 sw      ra, 108(sp)            #; sp  = 0x0011fea0, 0x80000904 ~~> Word[0x0011ff0c]
       0     5361        M 0x80000918 sw      s0, 104(sp)            #; sp  = 0x0011fea0, 4827 ~~> Word[0x0011ff08]
       0     5362        M 0x8000091c sw      s1, 100(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff04]
       0     5371        M 0x80000920 sw      s2, 96(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff00]
       0     5372        M 0x80000924 sw      s3, 92(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fefc]
       0     5373        M 0x80000928 sw      s4, 88(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef8]
       0     5374        M 0x8000092c sw      s5, 84(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef4]
       0     5383        M 0x80000930 sw      s6, 80(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef0]
       0     5384        M 0x80000934 sw      s7, 76(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011feec]
       0     5385        M 0x80000938 sw      s8, 72(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee8]
       0     5386        M 0x8000093c sw      s9, 68(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee4]
       0     5395        M 0x80000940 sw      s10, 64(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee0]
       0     5396        M 0x80000944 sw      s11, 60(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fedc]
       0     5397        M 0x80000948 mv      s3, a4                 #; a4  = 0x0011ff24, (wrb) s3  <-- 0x0011ff24
       0     5398        M 0x8000094c mv      s0, a3                 #; a3  = 0x80002e41, (wrb) s0  <-- 0x80002e41
       0     5407        M 0x80000950 mv      s5, a2                 #; a2  = -1, (wrb) s5  <-- -1
       0     5408        M 0x80000954 mv      s4, a1                 #; a1  = 0x0011ff17, (wrb) s4  <-- 0x0011ff17
       0     5409        M 0x80000958 beqz    a1, pc + 12            #; a1  = 0x0011ff17, not taken
       0     5410        M 0x8000095c mv      s2, a0                 #; a0  = 0x80001508, (wrb) s2  <-- 0x80001508
       0     5419        M 0x80000960 j       pc + 0xc               #; goto 0x8000096c
       0     5420        M 0x8000096c li      s8, 0                  #; (wrb) s8  <-- 0
       0     5432        M 0x80000970 li      s6, 37                 #; (wrb) s6  <-- 37
       0     5433        M 0x80000974 li      s11, 16                #; (wrb) s11 <-- 16
       0     5434        M 0x80000978 li      s7, 46                 #; (wrb) s7  <-- 46
       0     5435        M 0x8000097c lui     a0, 0x1                #; (wrb) a0  <-- 4096
       0     5444        M 0x80000980 addi    a0, a0, -2048          #; a0  = 4096, (wrb) a0  <-- 2048
       0     5445        M 0x80000984 sw      a0, 24(sp)             #; sp  = 0x0011fea0, 2048 ~~> Word[0x0011feb8]
       0     5446        M 0x80000988 lui     a0, 0x10               #; (wrb) a0  <-- 0x00010000
       0     5447        M 0x8000098c addi    a0, a0, -1             #; a0  = 0x00010000, (wrb) a0  <-- 65535
       0     5456        M 0x80000990 sw      a0, 16(sp)             #; sp  = 0x0011fea0, 65535 ~~> Word[0x0011feb0]
       0     5457        M 0x80000994 addi    s10, s0, 2             #; s0  = 0x80002e41, (wrb) s10 <-- 0x80002e43
       0     5458        M 0x80000998 mv      s9, s8                 #; s8  = 0, (wrb) s9  <-- 0
       0     5459        M 0x8000099c li      s8, 10                 #; (wrb) s8  <-- 10
       0     5468        M 0x800009a0 lbu     a0, 0(s0)              #; s0  = 0x80002e41, a0  <~~ Byte[0x80002e41]
       0     5479        M                                           #; (lsu) a0  <-- 99
       0     5480        M 0x800009a4 beqz    a0, pc + 2824          #; a0  = 99, not taken
       0     5481        M 0x800009a8 beq     a0, s6, pc + 48        #; a0  = 99, s6  = 37, not taken
       0     5482        M 0x800009ac addi    s1, s9, 1              #; s9  = 0, (wrb) s1  <-- 1
       0     5483        M 0x800009b0 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5484        M 0x800009b4 mv      a2, s9                 #; s9  = 0, (wrb) a2  <-- 0
       0     5485        M 0x800009b8 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5486        M 0x800009bc jalr    s2                     #; s2  = 0x80001508, (wrb) ra  <-- 0x800009c0, goto 0x80001508
       0     5506        M 0x80001508 beqz    a0, pc + 168           #; a0  = 99, not taken
       0     5507        M 0x8000150c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5518        M 0x80001510 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5519        M 0x80001514 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5520        M 0x80001518 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003518
       0     5521        M 0x8000151c addi    a3, a3, -900           #; a3  = 0x80003518, (wrb) a3  <-- 0x80003194
       0     5530        M 0x80001520 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003194, (wrb) a1  <-- 0x80003194
       0     5531        M 0x80001524 lw      a4, 0(a1)              #; a1  = 0x80003194, a4  <~~ Word[0x80003194]
       0     5542        M                                           #; (lsu) a4  <-- 0
       0     5543        M 0x80001528 addi    a5, a4, 1              #; a4  = 0, (wrb) a5  <-- 1
       0     5544        M 0x8000152c sw      a5, 0(a1)              #; a1  = 0x80003194, 1 ~~> Word[0x80003194]
       0     5545        M 0x80001530 add     a4, a1, a4             #; a1  = 0x80003194, a4  = 0, (wrb) a4  <-- 0x80003194
       0     5546        M 0x80001534 sb      a0, 72(a4)             #; a4  = 0x80003194, 99 ~~> Byte[0x800031dc]
       0     5547        M 0x80001538 lw      a4, 0(a1)              #; a1  = 0x80003194, a4  <~~ Word[0x80003194]
       0     5568        M                                           #; (lsu) a4  <-- 1
       0     5569        M 0x8000153c addi    a4, a4, -1020          #; a4  = 1, (wrb) a4  <-- -1019
       0     5570        M 0x80001540 snez    a4, a4                 #; a4  = -1019, (wrb) a4  <-- 1
       0     5571        M 0x80001544 addi    a0, a0, -10            #; a0  = 99, (wrb) a0  <-- 89
       0     5572        M 0x80001548 snez    a0, a0                 #; a0  = 89, (wrb) a0  <-- 1
       0     5573        M 0x8000154c and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5582        M 0x80001550 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015b0
       0     5605        M 0x800015b0 ret                            #; ra  = 0x800009c0, goto 0x800009c0
       0     5619        M 0x800009c0 addi    s0, s0, 1              #; s0  = 0x80002e41, (wrb) s0  <-- 0x80002e42
       0     5620        M 0x800009c4 addi    s10, s10, 1            #; s10 = 0x80002e43, (wrb) s10 <-- 0x80002e44
       0     5621        M 0x800009c8 mv      s9, s1                 #; s1  = 1, (wrb) s9  <-- 1
       0     5622        M 0x800009cc lbu     a0, 0(s0)              #; s0  = 0x80002e42, a0  <~~ Byte[0x80002e42]
       0     5633        M                                           #; (lsu) a0  <-- 121
       0     5634        M 0x800009d0 bnez    a0, pc - 40            #; a0  = 121, taken, goto 0x800009a8
       0     5635        M 0x800009a8 beq     a0, s6, pc + 48        #; a0  = 121, s6  = 37, not taken
       0     5636        M 0x800009ac addi    s1, s9, 1              #; s9  = 1, (wrb) s1  <-- 2
       0     5638        M 0x800009b0 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5639        M 0x800009b4 mv      a2, s9                 #; s9  = 1, (wrb) a2  <-- 1
       0     5640        M 0x800009b8 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5641        M 0x800009bc jalr    s2                     #; s2  = 0x80001508, (wrb) ra  <-- 0x800009c0, goto 0x80001508
       0     5644        M 0x80001508 beqz    a0, pc + 168           #; a0  = 121, not taken
       0     5645        M 0x8000150c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5647        M 0x80001510 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5648        M 0x80001514 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5649        M 0x80001518 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003518
       0     5650        M 0x8000151c addi    a3, a3, -900           #; a3  = 0x80003518, (wrb) a3  <-- 0x80003194
       0     5651        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5652        M 0x80001520 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003194, (wrb) a1  <-- 0x80003194
       0     5653        M 0x80001524 lw      a4, 0(a1)              #; a1  = 0x80003194, a4  <~~ Word[0x80003194]
       0     5664        M                                           #; (lsu) a4  <-- 1
       0     5665        M 0x80001528 addi    a5, a4, 1              #; a4  = 1, (wrb) a5  <-- 2
       0     5666        M 0x8000152c sw      a5, 0(a1)              #; a1  = 0x80003194, 2 ~~> Word[0x80003194]
       0     5667        M 0x80001530 add     a4, a1, a4             #; a1  = 0x80003194, a4  = 1, (wrb) a4  <-- 0x80003195
       0     5668        M 0x80001534 sb      a0, 72(a4)             #; a4  = 0x80003195, 121 ~~> Byte[0x800031dd]
       0     5669        M 0x80001538 lw      a4, 0(a1)              #; a1  = 0x80003194, a4  <~~ Word[0x80003194]
       0     5690        M                                           #; (lsu) a4  <-- 2
       0     5691        M 0x8000153c addi    a4, a4, -1020          #; a4  = 2, (wrb) a4  <-- -1018
       0     5692        M 0x80001540 snez    a4, a4                 #; a4  = -1018, (wrb) a4  <-- 1
       0     5693        M 0x80001544 addi    a0, a0, -10            #; a0  = 121, (wrb) a0  <-- 111
       0     5694        M 0x80001548 snez    a0, a0                 #; a0  = 111, (wrb) a0  <-- 1
       0     5695        M 0x8000154c and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5696        M 0x80001550 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015b0
       0     5701        M 0x800015b0 ret                            #; ra  = 0x800009c0, goto 0x800009c0
       0     5706        M 0x800009c0 addi    s0, s0, 1              #; s0  = 0x80002e42, (wrb) s0  <-- 0x80002e43
       0     5707        M 0x800009c4 addi    s10, s10, 1            #; s10 = 0x80002e44, (wrb) s10 <-- 0x80002e45
       0     5708        M 0x800009c8 mv      s9, s1                 #; s1  = 2, (wrb) s9  <-- 2
       0     5709        M 0x800009cc lbu     a0, 0(s0)              #; s0  = 0x80002e43, a0  <~~ Byte[0x80002e43]
       0     5720        M                                           #; (lsu) a0  <-- 99
       0     5721        M 0x800009d0 bnez    a0, pc - 40            #; a0  = 99, taken, goto 0x800009a8
       0     5722        M 0x800009a8 beq     a0, s6, pc + 48        #; a0  = 99, s6  = 37, not taken
       0     5723        M 0x800009ac addi    s1, s9, 1              #; s9  = 2, (wrb) s1  <-- 3
       0     5725        M 0x800009b0 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5726        M 0x800009b4 mv      a2, s9                 #; s9  = 2, (wrb) a2  <-- 2
       0     5727        M 0x800009b8 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5728        M 0x800009bc jalr    s2                     #; s2  = 0x80001508, (wrb) ra  <-- 0x800009c0, goto 0x80001508
       0     5731        M 0x80001508 beqz    a0, pc + 168           #; a0  = 99, not taken
       0     5732        M 0x8000150c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5734        M 0x80001510 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5735        M 0x80001514 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5736        M 0x80001518 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003518
       0     5737        M 0x8000151c addi    a3, a3, -900           #; a3  = 0x80003518, (wrb) a3  <-- 0x80003194
       0     5738        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5739        M 0x80001520 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003194, (wrb) a1  <-- 0x80003194
       0     5740        M 0x80001524 lw      a4, 0(a1)              #; a1  = 0x80003194, a4  <~~ Word[0x80003194]
       0     5751        M                                           #; (lsu) a4  <-- 2
       0     5752        M 0x80001528 addi    a5, a4, 1              #; a4  = 2, (wrb) a5  <-- 3
       0     5753        M 0x8000152c sw      a5, 0(a1)              #; a1  = 0x80003194, 3 ~~> Word[0x80003194]
       0     5754        M 0x80001530 add     a4, a1, a4             #; a1  = 0x80003194, a4  = 2, (wrb) a4  <-- 0x80003196
       0     5755        M 0x80001534 sb      a0, 72(a4)             #; a4  = 0x80003196, 99 ~~> Byte[0x800031de]
       0     5756        M 0x80001538 lw      a4, 0(a1)              #; a1  = 0x80003194, a4  <~~ Word[0x80003194]
       0     5777        M                                           #; (lsu) a4  <-- 3
       0     5778        M 0x8000153c addi    a4, a4, -1020          #; a4  = 3, (wrb) a4  <-- -1017
       0     5779        M 0x80001540 snez    a4, a4                 #; a4  = -1017, (wrb) a4  <-- 1
       0     5780        M 0x80001544 addi    a0, a0, -10            #; a0  = 99, (wrb) a0  <-- 89
       0     5781        M 0x80001548 snez    a0, a0                 #; a0  = 89, (wrb) a0  <-- 1
       0     5782        M 0x8000154c and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5783        M 0x80001550 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015b0
       0     5788        M 0x800015b0 ret                            #; ra  = 0x800009c0, goto 0x800009c0
       0     5793        M 0x800009c0 addi    s0, s0, 1              #; s0  = 0x80002e43, (wrb) s0  <-- 0x80002e44
       0     5794        M 0x800009c4 addi    s10, s10, 1            #; s10 = 0x80002e45, (wrb) s10 <-- 0x80002e46
       0     5795        M 0x800009c8 mv      s9, s1                 #; s1  = 3, (wrb) s9  <-- 3
       0     5796        M 0x800009cc lbu     a0, 0(s0)              #; s0  = 0x80002e44, a0  <~~ Byte[0x80002e44]
       0     5807        M                                           #; (lsu) a0  <-- 108
       0     5808        M 0x800009d0 bnez    a0, pc - 40            #; a0  = 108, taken, goto 0x800009a8
       0     5809        M 0x800009a8 beq     a0, s6, pc + 48        #; a0  = 108, s6  = 37, not taken
       0     5810        M 0x800009ac addi    s1, s9, 1              #; s9  = 3, (wrb) s1  <-- 4
       0     5812        M 0x800009b0 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5813        M 0x800009b4 mv      a2, s9                 #; s9  = 3, (wrb) a2  <-- 3
       0     5814        M 0x800009b8 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5815        M 0x800009bc jalr    s2                     #; s2  = 0x80001508, (wrb) ra  <-- 0x800009c0, goto 0x80001508
       0     5818        M 0x80001508 beqz    a0, pc + 168           #; a0  = 108, not taken
       0     5819        M 0x8000150c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5821        M 0x80001510 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5822        M 0x80001514 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5823        M 0x80001518 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003518
       0     5824        M 0x8000151c addi    a3, a3, -900           #; a3  = 0x80003518, (wrb) a3  <-- 0x80003194
       0     5825        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5826        M 0x80001520 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003194, (wrb) a1  <-- 0x80003194
       0     5827        M 0x80001524 lw      a4, 0(a1)              #; a1  = 0x80003194, a4  <~~ Word[0x80003194]
       0     5838        M                                           #; (lsu) a4  <-- 3
       0     5839        M 0x80001528 addi    a5, a4, 1              #; a4  = 3, (wrb) a5  <-- 4
       0     5840        M 0x8000152c sw      a5, 0(a1)              #; a1  = 0x80003194, 4 ~~> Word[0x80003194]
       0     5841        M 0x80001530 add     a4, a1, a4             #; a1  = 0x80003194, a4  = 3, (wrb) a4  <-- 0x80003197
       0     5842        M 0x80001534 sb      a0, 72(a4)             #; a4  = 0x80003197, 108 ~~> Byte[0x800031df]
       0     5843        M 0x80001538 lw      a4, 0(a1)              #; a1  = 0x80003194, a4  <~~ Word[0x80003194]
       0     5864        M                                           #; (lsu) a4  <-- 4
       0     5865        M 0x8000153c addi    a4, a4, -1020          #; a4  = 4, (wrb) a4  <-- -1016
       0     5866        M 0x80001540 snez    a4, a4                 #; a4  = -1016, (wrb) a4  <-- 1
       0     5867        M 0x80001544 addi    a0, a0, -10            #; a0  = 108, (wrb) a0  <-- 98
       0     5868        M 0x80001548 snez    a0, a0                 #; a0  = 98, (wrb) a0  <-- 1
       0     5869        M 0x8000154c and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5870        M 0x80001550 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015b0
       0     5875        M 0x800015b0 ret                            #; ra  = 0x800009c0, goto 0x800009c0
       0     5880        M 0x800009c0 addi    s0, s0, 1              #; s0  = 0x80002e44, (wrb) s0  <-- 0x80002e45
       0     5881        M 0x800009c4 addi    s10, s10, 1            #; s10 = 0x80002e46, (wrb) s10 <-- 0x80002e47
       0     5882        M 0x800009c8 mv      s9, s1                 #; s1  = 4, (wrb) s9  <-- 4
       0     5883        M 0x800009cc lbu     a0, 0(s0)              #; s0  = 0x80002e45, a0  <~~ Byte[0x80002e45]
       0     5894        M                                           #; (lsu) a0  <-- 101
       0     5895        M 0x800009d0 bnez    a0, pc - 40            #; a0  = 101, taken, goto 0x800009a8
       0     5896        M 0x800009a8 beq     a0, s6, pc + 48        #; a0  = 101, s6  = 37, not taken
       0     5897        M 0x800009ac addi    s1, s9, 1              #; s9  = 4, (wrb) s1  <-- 5
       0     5899        M 0x800009b0 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5900        M 0x800009b4 mv      a2, s9                 #; s9  = 4, (wrb) a2  <-- 4
       0     5901        M 0x800009b8 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5902        M 0x800009bc jalr    s2                     #; s2  = 0x80001508, (wrb) ra  <-- 0x800009c0, goto 0x80001508
       0     5905        M 0x80001508 beqz    a0, pc + 168           #; a0  = 101, not taken
       0     5906        M 0x8000150c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5908        M 0x80001510 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5909        M 0x80001514 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5910        M 0x80001518 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003518
       0     5911        M 0x8000151c addi    a3, a3, -900           #; a3  = 0x80003518, (wrb) a3  <-- 0x80003194
       0     5912        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5913        M 0x80001520 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003194, (wrb) a1  <-- 0x80003194
       0     5914        M 0x80001524 lw      a4, 0(a1)              #; a1  = 0x80003194, a4  <~~ Word[0x80003194]
       0     5925        M                                           #; (lsu) a4  <-- 4
       0     5926        M 0x80001528 addi    a5, a4, 1              #; a4  = 4, (wrb) a5  <-- 5
       0     5927        M 0x8000152c sw      a5, 0(a1)              #; a1  = 0x80003194, 5 ~~> Word[0x80003194]
       0     5928        M 0x80001530 add     a4, a1, a4             #; a1  = 0x80003194, a4  = 4, (wrb) a4  <-- 0x80003198
       0     5929        M 0x80001534 sb      a0, 72(a4)             #; a4  = 0x80003198, 101 ~~> Byte[0x800031e0]
       0     5930        M 0x80001538 lw      a4, 0(a1)              #; a1  = 0x80003194, a4  <~~ Word[0x80003194]
       0     5951        M                                           #; (lsu) a4  <-- 5
       0     5952        M 0x8000153c addi    a4, a4, -1020          #; a4  = 5, (wrb) a4  <-- -1015
       0     5953        M 0x80001540 snez    a4, a4                 #; a4  = -1015, (wrb) a4  <-- 1
       0     5954        M 0x80001544 addi    a0, a0, -10            #; a0  = 101, (wrb) a0  <-- 91
       0     5955        M 0x80001548 snez    a0, a0                 #; a0  = 91, (wrb) a0  <-- 1
       0     5956        M 0x8000154c and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5957        M 0x80001550 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015b0
       0     5962        M 0x800015b0 ret                            #; ra  = 0x800009c0, goto 0x800009c0
       0     5967        M 0x800009c0 addi    s0, s0, 1              #; s0  = 0x80002e45, (wrb) s0  <-- 0x80002e46
       0     5968        M 0x800009c4 addi    s10, s10, 1            #; s10 = 0x80002e47, (wrb) s10 <-- 0x80002e48
       0     5969        M 0x800009c8 mv      s9, s1                 #; s1  = 5, (wrb) s9  <-- 5
       0     5970        M 0x800009cc lbu     a0, 0(s0)              #; s0  = 0x80002e46, a0  <~~ Byte[0x80002e46]
       0     5981        M                                           #; (lsu) a0  <-- 115
       0     5982        M 0x800009d0 bnez    a0, pc - 40            #; a0  = 115, taken, goto 0x800009a8
       0     5983        M 0x800009a8 beq     a0, s6, pc + 48        #; a0  = 115, s6  = 37, not taken
       0     5984        M 0x800009ac addi    s1, s9, 1              #; s9  = 5, (wrb) s1  <-- 6
       0     5986        M 0x800009b0 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5987        M 0x800009b4 mv      a2, s9                 #; s9  = 5, (wrb) a2  <-- 5
       0     5988        M 0x800009b8 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5989        M 0x800009bc jalr    s2                     #; s2  = 0x80001508, (wrb) ra  <-- 0x800009c0, goto 0x80001508
       0     5992        M 0x80001508 beqz    a0, pc + 168           #; a0  = 115, not taken
       0     5993        M 0x8000150c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5995        M 0x80001510 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5996        M 0x80001514 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5997        M 0x80001518 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003518
       0     5998        M 0x8000151c addi    a3, a3, -900           #; a3  = 0x80003518, (wrb) a3  <-- 0x80003194
       0     5999        M                                           #; (acc) a1  <-- 0x00d605b3
       0     6000        M 0x80001520 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003194, (wrb) a1  <-- 0x80003194
       0     6001        M 0x80001524 lw      a4, 0(a1)              #; a1  = 0x80003194, a4  <~~ Word[0x80003194]
       0     6012        M                                           #; (lsu) a4  <-- 5
       0     6013        M 0x80001528 addi    a5, a4, 1              #; a4  = 5, (wrb) a5  <-- 6
       0     6014        M 0x8000152c sw      a5, 0(a1)              #; a1  = 0x80003194, 6 ~~> Word[0x80003194]
       0     6015        M 0x80001530 add     a4, a1, a4             #; a1  = 0x80003194, a4  = 5, (wrb) a4  <-- 0x80003199
       0     6016        M 0x80001534 sb      a0, 72(a4)             #; a4  = 0x80003199, 115 ~~> Byte[0x800031e1]
       0     6017        M 0x80001538 lw      a4, 0(a1)              #; a1  = 0x80003194, a4  <~~ Word[0x80003194]
       0     6038        M                                           #; (lsu) a4  <-- 6
       0     6039        M 0x8000153c addi    a4, a4, -1020          #; a4  = 6, (wrb) a4  <-- -1014
       0     6040        M 0x80001540 snez    a4, a4                 #; a4  = -1014, (wrb) a4  <-- 1
       0     6041        M 0x80001544 addi    a0, a0, -10            #; a0  = 115, (wrb) a0  <-- 105
       0     6042        M 0x80001548 snez    a0, a0                 #; a0  = 105, (wrb) a0  <-- 1
       0     6043        M 0x8000154c and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     6044        M 0x80001550 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015b0
       0     6049        M 0x800015b0 ret                            #; ra  = 0x800009c0, goto 0x800009c0
       0     6054        M 0x800009c0 addi    s0, s0, 1              #; s0  = 0x80002e46, (wrb) s0  <-- 0x80002e47
       0     6055        M 0x800009c4 addi    s10, s10, 1            #; s10 = 0x80002e48, (wrb) s10 <-- 0x80002e49
       0     6056        M 0x800009c8 mv      s9, s1                 #; s1  = 6, (wrb) s9  <-- 6
       0     6057        M 0x800009cc lbu     a0, 0(s0)              #; s0  = 0x80002e47, a0  <~~ Byte[0x80002e47]
       0     6068        M                                           #; (lsu) a0  <-- 32
       0     6069        M 0x800009d0 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x800009a8
       0     6070        M 0x800009a8 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     6071        M 0x800009ac addi    s1, s9, 1              #; s9  = 6, (wrb) s1  <-- 7
       0     6073        M 0x800009b0 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     6074        M 0x800009b4 mv      a2, s9                 #; s9  = 6, (wrb) a2  <-- 6
       0     6075        M 0x800009b8 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     6076        M 0x800009bc jalr    s2                     #; s2  = 0x80001508, (wrb) ra  <-- 0x800009c0, goto 0x80001508
       0     6079        M 0x80001508 beqz    a0, pc + 168           #; a0  = 32, not taken
       0     6080        M 0x8000150c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6082        M 0x80001510 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     6083        M 0x80001514 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     6084        M 0x80001518 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003518
       0     6085        M 0x8000151c addi    a3, a3, -900           #; a3  = 0x80003518, (wrb) a3  <-- 0x80003194
       0     6086        M                                           #; (acc) a1  <-- 0x00d605b3
       0     6087        M 0x80001520 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003194, (wrb) a1  <-- 0x80003194
       0     6088        M 0x80001524 lw      a4, 0(a1)              #; a1  = 0x80003194, a4  <~~ Word[0x80003194]
       0     6099        M                                           #; (lsu) a4  <-- 6
       0     6100        M 0x80001528 addi    a5, a4, 1              #; a4  = 6, (wrb) a5  <-- 7
       0     6101        M 0x8000152c sw      a5, 0(a1)              #; a1  = 0x80003194, 7 ~~> Word[0x80003194]
       0     6102        M 0x80001530 add     a4, a1, a4             #; a1  = 0x80003194, a4  = 6, (wrb) a4  <-- 0x8000319a
       0     6103        M 0x80001534 sb      a0, 72(a4)             #; a4  = 0x8000319a, 32 ~~> Byte[0x800031e2]
       0     6104        M 0x80001538 lw      a4, 0(a1)              #; a1  = 0x80003194, a4  <~~ Word[0x80003194]
       0     6125        M                                           #; (lsu) a4  <-- 7
       0     6126        M 0x8000153c addi    a4, a4, -1020          #; a4  = 7, (wrb) a4  <-- -1013
       0     6127        M 0x80001540 snez    a4, a4                 #; a4  = -1013, (wrb) a4  <-- 1
       0     6128        M 0x80001544 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
       0     6129        M 0x80001548 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
       0     6130        M 0x8000154c and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     6131        M 0x80001550 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015b0
       0     6136        M 0x800015b0 ret                            #; ra  = 0x800009c0, goto 0x800009c0
       0     6141        M 0x800009c0 addi    s0, s0, 1              #; s0  = 0x80002e47, (wrb) s0  <-- 0x80002e48
       0     6142        M 0x800009c4 addi    s10, s10, 1            #; s10 = 0x80002e49, (wrb) s10 <-- 0x80002e4a
       0     6143        M 0x800009c8 mv      s9, s1                 #; s1  = 7, (wrb) s9  <-- 7
       0     6144        M 0x800009cc lbu     a0, 0(s0)              #; s0  = 0x80002e48, a0  <~~ Byte[0x80002e48]
       0     6155        M                                           #; (lsu) a0  <-- 61
       0     6156        M 0x800009d0 bnez    a0, pc - 40            #; a0  = 61, taken, goto 0x800009a8
       0     6157        M 0x800009a8 beq     a0, s6, pc + 48        #; a0  = 61, s6  = 37, not taken
       0     6158        M 0x800009ac addi    s1, s9, 1              #; s9  = 7, (wrb) s1  <-- 8
       0     6160        M 0x800009b0 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     6161        M 0x800009b4 mv      a2, s9                 #; s9  = 7, (wrb) a2  <-- 7
       0     6162        M 0x800009b8 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     6163        M 0x800009bc jalr    s2                     #; s2  = 0x80001508, (wrb) ra  <-- 0x800009c0, goto 0x80001508
       0     6166        M 0x80001508 beqz    a0, pc + 168           #; a0  = 61, not taken
       0     6167        M 0x8000150c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6169        M 0x80001510 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     6170        M 0x80001514 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     6171        M 0x80001518 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003518
       0     6172        M 0x8000151c addi    a3, a3, -900           #; a3  = 0x80003518, (wrb) a3  <-- 0x80003194
       0     6173        M                                           #; (acc) a1  <-- 0x00d605b3
       0     6174        M 0x80001520 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003194, (wrb) a1  <-- 0x80003194
       0     6175        M 0x80001524 lw      a4, 0(a1)              #; a1  = 0x80003194, a4  <~~ Word[0x80003194]
       0     6186        M                                           #; (lsu) a4  <-- 7
       0     6187        M 0x80001528 addi    a5, a4, 1              #; a4  = 7, (wrb) a5  <-- 8
       0     6188        M 0x8000152c sw      a5, 0(a1)              #; a1  = 0x80003194, 8 ~~> Word[0x80003194]
       0     6189        M 0x80001530 add     a4, a1, a4             #; a1  = 0x80003194, a4  = 7, (wrb) a4  <-- 0x8000319b
       0     6190        M 0x80001534 sb      a0, 72(a4)             #; a4  = 0x8000319b, 61 ~~> Byte[0x800031e3]
       0     6191        M 0x80001538 lw      a4, 0(a1)              #; a1  = 0x80003194, a4  <~~ Word[0x80003194]
       0     6212        M                                           #; (lsu) a4  <-- 8
       0     6213        M 0x8000153c addi    a4, a4, -1020          #; a4  = 8, (wrb) a4  <-- -1012
       0     6214        M 0x80001540 snez    a4, a4                 #; a4  = -1012, (wrb) a4  <-- 1
       0     6215        M 0x80001544 addi    a0, a0, -10            #; a0  = 61, (wrb) a0  <-- 51
       0     6216        M 0x80001548 snez    a0, a0                 #; a0  = 51, (wrb) a0  <-- 1
       0     6217        M 0x8000154c and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     6218        M 0x80001550 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015b0
       0     6223        M 0x800015b0 ret                            #; ra  = 0x800009c0, goto 0x800009c0
       0     6228        M 0x800009c0 addi    s0, s0, 1              #; s0  = 0x80002e48, (wrb) s0  <-- 0x80002e49
       0     6229        M 0x800009c4 addi    s10, s10, 1            #; s10 = 0x80002e4a, (wrb) s10 <-- 0x80002e4b
       0     6230        M 0x800009c8 mv      s9, s1                 #; s1  = 8, (wrb) s9  <-- 8
       0     6231        M 0x800009cc lbu     a0, 0(s0)              #; s0  = 0x80002e49, a0  <~~ Byte[0x80002e49]
       0     6242        M                                           #; (lsu) a0  <-- 32
       0     6243        M 0x800009d0 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x800009a8
       0     6244        M 0x800009a8 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     6245        M 0x800009ac addi    s1, s9, 1              #; s9  = 8, (wrb) s1  <-- 9
       0     6247        M 0x800009b0 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     6248        M 0x800009b4 mv      a2, s9                 #; s9  = 8, (wrb) a2  <-- 8
       0     6249        M 0x800009b8 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     6250        M 0x800009bc jalr    s2                     #; s2  = 0x80001508, (wrb) ra  <-- 0x800009c0, goto 0x80001508
       0     6253        M 0x80001508 beqz    a0, pc + 168           #; a0  = 32, not taken
       0     6254        M 0x8000150c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6256        M 0x80001510 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     6257        M 0x80001514 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     6258        M 0x80001518 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003518
       0     6259        M 0x8000151c addi    a3, a3, -900           #; a3  = 0x80003518, (wrb) a3  <-- 0x80003194
       0     6260        M                                           #; (acc) a1  <-- 0x00d605b3
       0     6261        M 0x80001520 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003194, (wrb) a1  <-- 0x80003194
       0     6262        M 0x80001524 lw      a4, 0(a1)              #; a1  = 0x80003194, a4  <~~ Word[0x80003194]
       0     6273        M                                           #; (lsu) a4  <-- 8
       0     6274        M 0x80001528 addi    a5, a4, 1              #; a4  = 8, (wrb) a5  <-- 9
       0     6275        M 0x8000152c sw      a5, 0(a1)              #; a1  = 0x80003194, 9 ~~> Word[0x80003194]
       0     6276        M 0x80001530 add     a4, a1, a4             #; a1  = 0x80003194, a4  = 8, (wrb) a4  <-- 0x8000319c
       0     6277        M 0x80001534 sb      a0, 72(a4)             #; a4  = 0x8000319c, 32 ~~> Byte[0x800031e4]
       0     6278        M 0x80001538 lw      a4, 0(a1)              #; a1  = 0x80003194, a4  <~~ Word[0x80003194]
       0     6299        M                                           #; (lsu) a4  <-- 9
       0     6300        M 0x8000153c addi    a4, a4, -1020          #; a4  = 9, (wrb) a4  <-- -1011
       0     6301        M 0x80001540 snez    a4, a4                 #; a4  = -1011, (wrb) a4  <-- 1
       0     6302        M 0x80001544 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
       0     6303        M 0x80001548 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
       0     6304        M 0x8000154c and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     6305        M 0x80001550 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015b0
       0     6310        M 0x800015b0 ret                            #; ra  = 0x800009c0, goto 0x800009c0
       0     6315        M 0x800009c0 addi    s0, s0, 1              #; s0  = 0x80002e49, (wrb) s0  <-- 0x80002e4a
       0     6316        M 0x800009c4 addi    s10, s10, 1            #; s10 = 0x80002e4b, (wrb) s10 <-- 0x80002e4c
       0     6317        M 0x800009c8 mv      s9, s1                 #; s1  = 9, (wrb) s9  <-- 9
       0     6318        M 0x800009cc lbu     a0, 0(s0)              #; s0  = 0x80002e4a, a0  <~~ Byte[0x80002e4a]
       0     6329        M                                           #; (lsu) a0  <-- 37
       0     6330        M 0x800009d0 bnez    a0, pc - 40            #; a0  = 37, taken, goto 0x800009a8
       0     6331        M 0x800009a8 beq     a0, s6, pc + 48        #; a0  = 37, s6  = 37, taken, goto 0x800009d8
       0     6332        M 0x800009d8 li      s0, 0                  #; (wrb) s0  <-- 0
       0     6333        M 0x800009dc j       pc + 0x10              #; goto 0x800009ec
       0     6345        M 0x800009ec lbu     a0, -1(s10)            #; s10 = 0x80002e4c, a0  <~~ Byte[0x80002e4b]
       0     6356        M                                           #; (lsu) a0  <-- 108
       0     6357        M 0x800009f0 addi    a1, a0, -32            #; a0  = 108, (wrb) a1  <-- 76
       0     6358        M 0x800009f4 bltu    s11, a1, pc + 56       #; s11 = 16, a1  = 76, taken, goto 0x80000a2c
       0     6380        M 0x80000a2c addi    a1, a0, -48            #; a0  = 108, (wrb) a1  <-- 60
       0     6392        M 0x80000a30 andi    a2, a1, 255            #; a1  = 60, (wrb) a2  <-- 60
       0     6393        M 0x80000a34 addi    a1, s10, -1            #; s10 = 0x80002e4c, (wrb) a1  <-- 0x80002e4b
       0     6394        M 0x80000a38 li      a3, 9                  #; (wrb) a3  <-- 9
       0     6395        M 0x80000a3c bltu    a3, a2, pc + 124       #; a3  = 9, a2  = 60, taken, goto 0x80000ab8
       0     6415        M 0x80000ab8 li      a2, 42                 #; (wrb) a2  <-- 42
       0     6416        M 0x80000abc bne     a0, a2, pc + 80        #; a0  = 108, a2  = 42, taken, goto 0x80000b0c
       0     6438        M 0x80000b0c li      s6, 0                  #; (wrb) s6  <-- 0
       0     6450        M 0x80000b10 mv      s10, a1                #; a1  = 0x80002e4b, (wrb) s10 <-- 0x80002e4b
       0     6451        M 0x80000b14 beq     a0, s7, pc - 164       #; a0  = 108, s7  = 46, not taken
       0     6452        M 0x80000b18 li      s7, 0                  #; (wrb) s7  <-- 0
       0     6453        M 0x80000b1c j       pc + 0xc               #; goto 0x80000b28
       0     6473        M 0x80000b28 addi    a1, a0, -104           #; a0  = 108, (wrb) a1  <-- 4
       0     6474        M 0x80000b2c srli    a2, a1, 1              #; a1  = 4, (wrb) a2  <-- 2
       0     6485        M 0x80000b30 slli    a1, a1, 31             #; a1  = 4, (wrb) a1  <-- 0
       0     6486        M 0x80000b34 or      a1, a1, a2             #; a1  = 0, a2  = 2, (wrb) a1  <-- 2
       0     6487        M 0x80000b38 li      a2, 9                  #; (wrb) a2  <-- 9
       0     6488        M 0x80000b3c bltu    a2, a1, pc + 100       #; a2  = 9, a1  = 2, not taken
       0     6497        M 0x80000b40 slli    a1, a1, 2              #; a1  = 2, (wrb) a1  <-- 8
       0     6498        M 0x80000b44 auipc   a2, 0x2                #; (wrb) a2  <-- 0x80002b44
       0     6499        M 0x80000b48 addi    a2, a2, 852            #; a2  = 0x80002b44, (wrb) a2  <-- 0x80002e98
       0     6500        M 0x80000b4c add     a1, a1, a2             #; a1  = 8, a2  = 0x80002e98, (wrb) a1  <-- 0x80002ea0
       0     6509        M 0x80000b50 lw      a3, 0(a1)              #; a1  = 0x80002ea0, a3  <~~ Word[0x80002ea0]
       0     6510        M 0x80000b54 li      a1, 1                  #; (wrb) a1  <-- 1
       0     6511        M 0x80000b58 li      a2, 256                #; (wrb) a2  <-- 256
       0     6520        M                                           #; (lsu) a3  <-- 0x80000b80
       0     6521        M 0x80000b5c jr      a3                     #; a3  = 0x80000b80, goto 0x80000b80
       0     6533        M 0x80000b80 lbu     a0, 1(s10)             #; s10 = 0x80002e4b, a0  <~~ Byte[0x80002e4c]
       0     6534        M 0x80000b84 li      a1, 108                #; (wrb) a1  <-- 108
       0     6544        M                                           #; (lsu) a0  <-- 117
       0     6545        M 0x80000b88 bne     a0, a1, pc + 272       #; a0  = 117, a1  = 108, taken, goto 0x80000c98
       0     6557        M 0x80000c98 ori     s0, s0, 256            #; s0  = 0, (wrb) s0  <-- 256
       0     6558        M 0x80000c9c addi    s10, s10, 1            #; s10 = 0x80002e4b, (wrb) s10 <-- 0x80002e4c
       0     6569        M 0x80000ca0 j       pc - 0x100             #; goto 0x80000ba0
       0     6581        M 0x80000ba0 addi    a1, a0, -37            #; a0  = 117, (wrb) a1  <-- 80
       0     6582        M 0x80000ba4 li      a2, 83                 #; (wrb) a2  <-- 83
       0     6583        M 0x80000ba8 bltu    a2, a1, pc + 264       #; a2  = 83, a1  = 80, not taken
       0     6584        M 0x80000bac slli    a1, a1, 2              #; a1  = 80, (wrb) a1  <-- 320
       0     6593        M 0x80000bb0 auipc   a2, 0x2                #; (wrb) a2  <-- 0x80002bb0
       0     6594        M 0x80000bb4 addi    a2, a2, 784            #; a2  = 0x80002bb0, (wrb) a2  <-- 0x80002ec0
       0     6595        M 0x80000bb8 add     a1, a1, a2             #; a1  = 320, a2  = 0x80002ec0, (wrb) a1  <-- 0x80003000
       0     6596        M 0x80000bbc lw      a2, 0(a1)              #; a1  = 0x80003000, a2  <~~ Word[0x80003000]
       0     6605        M 0x80000bc0 li      a1, 8                  #; (wrb) a1  <-- 8
       0     6606        M 0x80000bc4 li      s8, 16                 #; (wrb) s8  <-- 16
       0     6607        M                                           #; (lsu) a2  <-- 0x80000bcc
       0     6608        M 0x80000bc8 jr      a2                     #; a2  = 0x80000bcc
       0     6609        M 0x80000bcc andi    s0, s0, -17            #; s0  = 256, (wrb) s0  <-- 256
       0     6617        M 0x80000bd0 li      s8, 10                 #; (wrb) s8  <-- 10
       0     6618        M 0x80000bd4 li      a1, 88                 #; (wrb) a1  <-- 88
       0     6619        M 0x80000bd8 bne     a0, a1, pc + 8         #; a0  = 117, a1  = 88, taken, goto 0x80000be0
       0     6629        M 0x80000be0 li      a1, 100                #; (wrb) a1  <-- 100
       0     6630        M 0x80000be4 beq     a0, a1, pc + 240       #; a0  = 117, a1  = 100, not taken
       0     6631        M 0x80000be8 mv      a1, s8                 #; s8  = 10, (wrb) a1  <-- 10
       0     6632        M 0x80000bec li      a2, 105                #; (wrb) a2  <-- 105
       0     6641        M 0x80000bf0 beq     a0, a2, pc + 228       #; a0  = 117, a2  = 105, not taken
       0     6642        M 0x80000bf4 j       pc + 0xd8              #; goto 0x80000ccc
       0     6653        M 0x80000ccc andi    s0, s0, -13            #; s0  = 256, (wrb) s0  <-- 256
       0     6665        M 0x80000cd0 mv      s8, a1                 #; a1  = 10, (wrb) s8  <-- 10
       0     6666        M 0x80000cd4 andi    a1, s0, 1024           #; s0  = 256, (wrb) a1  <-- 0
       0     6667        M 0x80000cd8 beqz    a1, pc + 8             #; a1  = 0, taken, goto 0x80000ce0
       0     6677        M 0x80000ce0 li      a1, 105                #; (wrb) a1  <-- 105
       0     6678        M 0x80000ce4 beq     a0, a1, pc + 12        #; a0  = 117, a1  = 105, not taken
       0     6679        M 0x80000ce8 li      a1, 100                #; (wrb) a1  <-- 100
       0     6680        M 0x80000cec bne     a0, a1, pc + 312       #; a0  = 117, a1  = 100, taken, goto 0x80000e24
       0     6700        M 0x80000e24 andi    a0, s0, 512            #; s0  = 256, (wrb) a0  <-- 0
       0     6701        M 0x80000e28 bnez    a0, pc + 196           #; a0  = 0, not taken
       0     6702        M 0x80000e2c andi    a0, s0, 256            #; s0  = 256, (wrb) a0  <-- 256
       0     6712        M 0x80000e30 bnez    a0, pc + 1148          #; a0  = 256, taken, goto 0x800012ac
       0     6735        M 0x800012ac lw      a0, 0(s3)              #; s3  = 0x0011ff24, a0  <~~ Word[0x0011ff24]
       0     6738        M                                           #; (lsu) a0  <-- 451
       0     6747        M 0x800012b0 bnez    a0, pc + 8             #; a0  = 451, taken, goto 0x800012b8
       0     6748        M 0x800012b8 seqz    a1, a0                 #; a0  = 451, (wrb) a1  <-- 0
       0     6749        M 0x800012bc andi    a2, s0, 1024           #; s0  = 256, (wrb) a2  <-- 0
       0     6759        M 0x800012c0 srli    a2, a2, 10             #; a2  = 0, (wrb) a2  <-- 0
       0     6760        M 0x800012c4 and     a1, a1, a2             #; a1  = 0, a2  = 0, (wrb) a1  <-- 0
       0     6761        M 0x800012c8 li      a5, 0                  #; (wrb) a5  <-- 0
       0     6762        M 0x800012cc bnez    a1, pc + 248           #; a1  = 0, not taken
       0     6771        M 0x800012d0 li      a2, 0                  #; (wrb) a2  <-- 0
       0     6772        M 0x800012d4 andi    a1, s0, 32             #; s0  = 256, (wrb) a1  <-- 0
       0     6773        M 0x800012d8 xori    a1, a1, 97             #; a1  = 0, (wrb) a1  <-- 97
       0     6774        M 0x800012dc addi    a6, a1, 246            #; a1  = 97, (wrb) a6  <-- 343
       0     6783        M 0x800012e0 j       pc + 0x34              #; goto 0x80001314
       0     6795        M 0x80001314 divu    a3, a0, s8             #; a0  = 451, s8  = 10
       0     6804        M                                           #; (acc) a4  <-- 0x03868733
       0     6805        M 0x80001318 mul     a4, a3, s8             #; a3  = 45, s8  = 10
       0     6808        M                                           #; (acc) a4  <-- 0x40e50733
       0     6809        M 0x8000131c sub     a4, a0, a4             #; a0  = 451, a4  = 450, (wrb) a4  <-- 1
       0     6810        M 0x80001320 andi    s1, a4, 254            #; a4  = 1, (wrb) s1  <-- 0
       0     6811        M 0x80001324 li      a5, 48                 #; (wrb) a5  <-- 48
       0     6812        M 0x80001328 li      a1, 10                 #; (wrb) a1  <-- 10
       0     6813        M 0x8000132c bltu    s1, a1, pc - 72        #; s1  = 0, a1  = 10, taken, goto 0x800012e4
       0     6814        M 0x800012e4 add     a4, a5, a4             #; a5  = 48, a4  = 1, (wrb) a4  <-- 49
       0     6815        M 0x800012e8 addi    a5, a2, 1              #; a2  = 0, (wrb) a5  <-- 1
       0     6816        M 0x800012ec addi    a1, sp, 28             #; sp  = 0x0011fea0, (wrb) a1  <-- 0x0011febc
       0     6826        M 0x800012f0 add     s1, a1, a2             #; a1  = 0x0011febc, a2  = 0, (wrb) s1  <-- 0x0011febc
       0     6827        M 0x800012f4 sltu    a0, a0, s8             #; a0  = 451, s8  = 10, (wrb) a0  <-- 0
       0     6828        M 0x800012f8 xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0     6829        M 0x800012fc sltiu   a2, a2, 31             #; a2  = 0, (wrb) a2  <-- 1
       0     6838        M 0x80001300 and     a1, a2, a0             #; a2  = 1, a0  = 1, (wrb) a1  <-- 1
       0     6839        M 0x80001304 sb      a4, 0(s1)              #; s1  = 0x0011febc, 49 ~~> Byte[0x0011febc]
       0     6840        M 0x80001308 mv      a2, a5                 #; a5  = 1, (wrb) a2  <-- 1
       0     6841        M 0x8000130c mv      a0, a3                 #; a3  = 45, (wrb) a0  <-- 45
       0     6842        M 0x80001310 beqz    a1, pc + 180           #; a1  = 1, not taken
       0     6843        M 0x80001314 divu    a3, a0, s8             #; a0  = 45, s8  = 10
       0     6849        M                                           #; (acc) a4  <-- 0x03868733
       0     6850        M 0x80001318 mul     a4, a3, s8             #; a3  = 4, s8  = 10
       0     6853        M                                           #; (acc) a4  <-- 0x40e50733
       0     6854        M 0x8000131c sub     a4, a0, a4             #; a0  = 45, a4  = 40, (wrb) a4  <-- 5
       0     6855        M 0x80001320 andi    s1, a4, 254            #; a4  = 5, (wrb) s1  <-- 4
       0     6856        M 0x80001324 li      a5, 48                 #; (wrb) a5  <-- 48
       0     6857        M 0x80001328 li      a1, 10                 #; (wrb) a1  <-- 10
       0     6858        M 0x8000132c bltu    s1, a1, pc - 72        #; s1  = 4, a1  = 10, taken, goto 0x800012e4
       0     6859        M 0x800012e4 add     a4, a5, a4             #; a5  = 48, a4  = 5, (wrb) a4  <-- 53
       0     6860        M 0x800012e8 addi    a5, a2, 1              #; a2  = 1, (wrb) a5  <-- 2
       0     6861        M 0x800012ec addi    a1, sp, 28             #; sp  = 0x0011fea0, (wrb) a1  <-- 0x0011febc
       0     6862        M 0x800012f0 add     s1, a1, a2             #; a1  = 0x0011febc, a2  = 1, (wrb) s1  <-- 0x0011febd
       0     6863        M 0x800012f4 sltu    a0, a0, s8             #; a0  = 45, s8  = 10, (wrb) a0  <-- 0
       0     6864        M 0x800012f8 xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0     6865        M 0x800012fc sltiu   a2, a2, 31             #; a2  = 1, (wrb) a2  <-- 1
       0     6866        M 0x80001300 and     a1, a2, a0             #; a2  = 1, a0  = 1, (wrb) a1  <-- 1
       0     6867        M 0x80001304 sb      a4, 0(s1)              #; s1  = 0x0011febd, 53 ~~> Byte[0x0011febd]
       0     6868        M 0x80001308 mv      a2, a5                 #; a5  = 2, (wrb) a2  <-- 2
       0     6869        M 0x8000130c mv      a0, a3                 #; a3  = 4, (wrb) a0  <-- 4
       0     6870        M 0x80001310 beqz    a1, pc + 180           #; a1  = 1, not taken
       0     6871        M 0x80001314 divu    a3, a0, s8             #; a0  = 4, s8  = 10
       0     6874        M                                           #; (acc) a4  <-- 0x03868733
       0     6875        M 0x80001318 mul     a4, a3, s8             #; a3  = 0, s8  = 10
       0     6878        M                                           #; (acc) a4  <-- 0x40e50733
       0     6879        M 0x8000131c sub     a4, a0, a4             #; a0  = 4, a4  = 0, (wrb) a4  <-- 4
       0     6880        M 0x80001320 andi    s1, a4, 254            #; a4  = 4, (wrb) s1  <-- 4
       0     6881        M 0x80001324 li      a5, 48                 #; (wrb) a5  <-- 48
       0     6882        M 0x80001328 li      a1, 10                 #; (wrb) a1  <-- 10
       0     6883        M 0x8000132c bltu    s1, a1, pc - 72        #; s1  = 4, a1  = 10, taken, goto 0x800012e4
       0     6884        M 0x800012e4 add     a4, a5, a4             #; a5  = 48, a4  = 4, (wrb) a4  <-- 52
       0     6885        M 0x800012e8 addi    a5, a2, 1              #; a2  = 2, (wrb) a5  <-- 3
       0     6886        M 0x800012ec addi    a1, sp, 28             #; sp  = 0x0011fea0, (wrb) a1  <-- 0x0011febc
       0     6887        M 0x800012f0 add     s1, a1, a2             #; a1  = 0x0011febc, a2  = 2, (wrb) s1  <-- 0x0011febe
       0     6888        M 0x800012f4 sltu    a0, a0, s8             #; a0  = 4, s8  = 10, (wrb) a0  <-- 1
       0     6889        M 0x800012f8 xori    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 0
       0     6890        M 0x800012fc sltiu   a2, a2, 31             #; a2  = 2, (wrb) a2  <-- 1
       0     6891        M 0x80001300 and     a1, a2, a0             #; a2  = 1, a0  = 0, (wrb) a1  <-- 0
       0     6892        M 0x80001304 sb      a4, 0(s1)              #; s1  = 0x0011febe, 52 ~~> Byte[0x0011febe]
       0     6893        M 0x80001308 mv      a2, a5                 #; a5  = 3, (wrb) a2  <-- 3
       0     6894        M 0x8000130c mv      a0, a3                 #; a3  = 0, (wrb) a0  <-- 0
       0     6895        M 0x80001310 beqz    a1, pc + 180           #; a1  = 0, taken, goto 0x800013c4
       0     6907        M 0x800013c4 addi    s3, s3, 4              #; s3  = 0x0011ff24, (wrb) s3  <-- 0x0011ff28
       0     6908        M 0x800013c8 addi    a4, sp, 28             #; sp  = 0x0011fea0, (wrb) a4  <-- 0x0011febc
       0     6909        M 0x800013cc mv      a0, s2                 #; s2  = 0x80001508, (wrb) a0  <-- 0x80001508
       0     6919        M 0x800013d0 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     6920        M 0x800013d4 mv      a2, s9                 #; s9  = 9, (wrb) a2  <-- 9
       0     6921        M 0x800013d8 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     6922        M 0x800013dc li      a6, 0                  #; (wrb) a6  <-- 0
       0     6931        M 0x800013e0 mv      a7, s8                 #; s8  = 10, (wrb) a7  <-- 10
       0     6932        M 0x800013e4 mv      t2, s7                 #; s7  = 0, (wrb) t2  <-- 0
       0     6933        M 0x800013e8 mv      t3, s6                 #; s6  = 0, (wrb) t3  <-- 0
       0     6934        M 0x800013ec mv      t4, s0                 #; s0  = 256, (wrb) t4  <-- 256
       0     6943        M 0x800013f0 auipc   ra, 0x1                #; (wrb) ra  <-- 0x800023f0
       0     6944        M 0x800013f4 jalr    ra, ra, -620           #; ra  = 0x800023f0, (wrb) ra  <-- 0x800013f8, goto 0x80002184
       0     6966        M 0x80002184 addi    sp, sp, -64            #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011fe60
       0     6967        M 0x80002188 sw      ra, 60(sp)             #; sp  = 0x0011fe60, 0x800013f8 ~~> Word[0x0011fe9c]
       0     6968        M 0x8000218c sw      s0, 56(sp)             #; sp  = 0x0011fe60, 256 ~~> Word[0x0011fe98]
       0     6978        M 0x80002190 sw      s1, 52(sp)             #; sp  = 0x0011fe60, 0x0011febe ~~> Word[0x0011fe94]
       0     6979        M 0x80002194 sw      s2, 48(sp)             #; sp  = 0x0011fe60, 0x80001508 ~~> Word[0x0011fe90]
       0     6980        M 0x80002198 sw      s3, 44(sp)             #; sp  = 0x0011fe60, 0x0011ff28 ~~> Word[0x0011fe8c]
       0     6981        M 0x8000219c sw      s4, 40(sp)             #; sp  = 0x0011fe60, 0x0011ff17 ~~> Word[0x0011fe88]
       0     6990        M 0x800021a0 sw      s5, 36(sp)             #; sp  = 0x0011fe60, -1 ~~> Word[0x0011fe84]
       0     6991        M 0x800021a4 sw      s6, 32(sp)             #; sp  = 0x0011fe60, 0 ~~> Word[0x0011fe80]
       0     6992        M 0x800021a8 sw      s7, 28(sp)             #; sp  = 0x0011fe60, 0 ~~> Word[0x0011fe7c]
       0     6993        M 0x800021ac sw      s8, 24(sp)             #; sp  = 0x0011fe60, 10 ~~> Word[0x0011fe78]
       0     7002        M 0x800021b0 sw      s9, 20(sp)             #; sp  = 0x0011fe60, 9 ~~> Word[0x0011fe74]
       0     7003        M 0x800021b4 sw      s10, 16(sp)            #; sp  = 0x0011fe60, 0x80002e4c ~~> Word[0x0011fe70]
       0     7004        M 0x800021b8 sw      s11, 12(sp)            #; sp  = 0x0011fe60, 16 ~~> Word[0x0011fe6c]
       0     7005        M 0x800021bc mv      s7, t4                 #; t4  = 256, (wrb) s7  <-- 256
       0     7014        M 0x800021c0 andi    s5, t4, 2              #; t4  = 256, (wrb) s5  <-- 0
       0     7015        M 0x800021c4 mv      s2, t3                 #; t3  = 0, (wrb) s2  <-- 0
       0     7016        M 0x800021c8 mv      s10, t2                #; t2  = 0, (wrb) s10 <-- 0
       0     7017        M 0x800021cc mv      s9, a7                 #; a7  = 10, (wrb) s9  <-- 10
       0     7026        M 0x800021d0 mv      s8, a5                 #; a5  = 3, (wrb) s8  <-- 3
       0     7027        M 0x800021d4 mv      s3, a3                 #; a3  = -1, (wrb) s3  <-- -1
       0     7028        M 0x800021d8 mv      s4, a2                 #; a2  = 9, (wrb) s4  <-- 9
       0     7029        M 0x800021dc mv      s6, a1                 #; a1  = 0x0011ff17, (wrb) s6  <-- 0x0011ff17
       0     7038        M 0x800021e0 mv      s11, a0                #; a0  = 0x80001508, (wrb) s11 <-- 0x80001508
       0     7039        M 0x800021e4 sw      a4, 8(sp)              #; sp  = 0x0011fe60, 0x0011febc ~~> Word[0x0011fe68]
       0     7040        M 0x800021e8 bnez    s5, pc + 220           #; s5  = 0, not taken
       0     7041        M 0x800021ec andi    s0, s7, 1              #; s7  = 256, (wrb) s0  <-- 0
       0     7050        M 0x800021f0 beqz    s2, pc + 28            #; s2  = 0, taken, goto 0x8000220c
       0     7062        M 0x8000220c li      s2, 0                  #; (wrb) s2  <-- 0
       0     7074        M 0x80002210 sltu    a0, s8, s10            #; s8  = 3, s10 = 0, (wrb) a0  <-- 0
       0     7075        M 0x80002214 xori    a1, a0, 1              #; a0  = 0, (wrb) a1  <-- 1
       0     7076        M 0x80002218 li      a0, 31                 #; (wrb) a0  <-- 31
       0     7077        M 0x8000221c sltu    a2, a0, s8             #; a0  = 31, s8  = 3, (wrb) a2  <-- 0
       0     7086        M 0x80002220 or      a1, a2, a1             #; a2  = 0, a1  = 1, (wrb) a1  <-- 1
       0     7087        M 0x80002224 bnez    a1, pc + 72            #; a1  = 1, taken, goto 0x8000226c
       0     7109        M 0x8000226c beqz    s0, pc + 88            #; s0  = 0, taken, goto 0x800022c4
       0     7132        M 0x800022c4 andi    a0, s7, 16             #; s7  = 256, (wrb) a0  <-- 0
       0     7133        M 0x800022c8 beqz    a0, pc + 228           #; a0  = 0, taken, goto 0x800023ac
       0     7155        M 0x800023ac li      a0, 31                 #; (wrb) a0  <-- 31
       0     7167        M 0x800023b0 bltu    a0, s8, pc + 72        #; a0  = 31, s8  = 3, not taken
       0     7168        M 0x800023b4 beqz    a6, pc + 20            #; a6  = 0, taken, goto 0x800023c8
       0     7179        M 0x800023c8 andi    a0, s7, 4              #; s7  = 256, (wrb) a0  <-- 0
       0     7180        M 0x800023cc bnez    a0, pc + 28            #; a0  = 0, not taken
       0     7191        M 0x800023d0 andi    a0, s7, 8              #; s7  = 256, (wrb) a0  <-- 0
       0     7192        M 0x800023d4 beqz    a0, pc + 36            #; a0  = 0, taken, goto 0x800023f8
       0     7214        M 0x800023f8 andi    a0, s7, 3              #; s7  = 256, (wrb) a0  <-- 0
       0     7215        M 0x800023fc snez    a0, a0                 #; a0  = 0, (wrb) a0  <-- 0
       0     7226        M 0x80002400 sltu    a1, s8, s2             #; s8  = 3, s2  = 0, (wrb) a1  <-- 0
       0     7227        M 0x80002404 xori    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
       0     7228        M 0x80002408 or      a0, a0, a1             #; a0  = 0, a1  = 1, (wrb) a0  <-- 1
       0     7229        M 0x8000240c mv      s0, s4                 #; s4  = 9, (wrb) s0  <-- 9
       0     7238        M 0x80002410 bnez    a0, pc + 44            #; a0  = 1, taken, goto 0x8000243c
       0     7261        M 0x8000243c snez    s5, s5                 #; s5  = 0, (wrb) s5  <-- 0
       0     7273        M 0x80002440 beqz    s8, pc + 60            #; s8  = 3, not taken
       0     7274        M 0x80002444 lw      a0, 8(sp)              #; sp  = 0x0011fe60, a0  <~~ Word[0x0011fe68]
       0     7277        M                                           #; (lsu) a0  <-- 0x0011febc
       0     7278        M 0x80002448 addi    s7, a0, -1             #; a0  = 0x0011febc, (wrb) s7  <-- 0x0011febb
       0     7279        M 0x8000244c add     a0, s7, s8             #; s7  = 0x0011febb, s8  = 3, (wrb) a0  <-- 0x0011febe
       0     7285        M 0x80002450 lbu     a0, 0(a0)              #; a0  = 0x0011febe, a0  <~~ Byte[0x0011febe]
       0     7286        M 0x80002454 addi    s9, s8, -1             #; s8  = 3, (wrb) s9  <-- 2
       0     7287        M 0x80002458 addi    s1, s0, 1              #; s0  = 9, (wrb) s1  <-- 10
       0     7288        M 0x8000245c mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     7289        M                                           #; (lsu) a0  <-- 52
       0     7297        M 0x80002460 mv      a2, s0                 #; s0  = 9, (wrb) a2  <-- 9
       0     7298        M 0x80002464 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     7299        M 0x80002468 jalr    s11                    #; s11 = 0x80001508, (wrb) ra  <-- 0x8000246c, goto 0x80001508
       0     7311        M 0x80001508 beqz    a0, pc + 168           #; a0  = 52, not taken
       0     7312        M 0x8000150c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     7314        M 0x80001510 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     7315        M 0x80001514 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     7316        M 0x80001518 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003518
       0     7317        M 0x8000151c addi    a3, a3, -900           #; a3  = 0x80003518, (wrb) a3  <-- 0x80003194
       0     7318        M                                           #; (acc) a1  <-- 0x00d605b3
       0     7319        M 0x80001520 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003194, (wrb) a1  <-- 0x80003194
       0     7320        M 0x80001524 lw      a4, 0(a1)              #; a1  = 0x80003194, a4  <~~ Word[0x80003194]
       0     7331        M                                           #; (lsu) a4  <-- 9
       0     7332        M 0x80001528 addi    a5, a4, 1              #; a4  = 9, (wrb) a5  <-- 10
       0     7333        M 0x8000152c sw      a5, 0(a1)              #; a1  = 0x80003194, 10 ~~> Word[0x80003194]
       0     7334        M 0x80001530 add     a4, a1, a4             #; a1  = 0x80003194, a4  = 9, (wrb) a4  <-- 0x8000319d
       0     7335        M 0x80001534 sb      a0, 72(a4)             #; a4  = 0x8000319d, 52 ~~> Byte[0x800031e5]
       0     7336        M 0x80001538 lw      a4, 0(a1)              #; a1  = 0x80003194, a4  <~~ Word[0x80003194]
       0     7357        M                                           #; (lsu) a4  <-- 10
       0     7358        M 0x8000153c addi    a4, a4, -1020          #; a4  = 10, (wrb) a4  <-- -1010
       0     7359        M 0x80001540 snez    a4, a4                 #; a4  = -1010, (wrb) a4  <-- 1
       0     7360        M 0x80001544 addi    a0, a0, -10            #; a0  = 52, (wrb) a0  <-- 42
       0     7361        M 0x80001548 snez    a0, a0                 #; a0  = 42, (wrb) a0  <-- 1
       0     7362        M 0x8000154c and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     7363        M 0x80001550 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015b0
       0     7368        M 0x800015b0 ret                            #; ra  = 0x8000246c, goto 0x8000246c
       0     7373        M 0x8000246c mv      s0, s1                 #; s1  = 10, (wrb) s0  <-- 10
       0     7376        M 0x80002470 mv      s8, s9                 #; s9  = 2, (wrb) s8  <-- 2
       0     7377        M 0x80002474 bnez    s9, pc - 40            #; s9  = 2, taken, goto 0x8000244c
       0     7379        M 0x8000244c add     a0, s7, s8             #; s7  = 0x0011febb, s8  = 2, (wrb) a0  <-- 0x0011febd
       0     7382        M 0x80002450 lbu     a0, 0(a0)              #; a0  = 0x0011febd, a0  <~~ Byte[0x0011febd]
       0     7383        M 0x80002454 addi    s9, s8, -1             #; s8  = 2, (wrb) s9  <-- 1
       0     7384        M 0x80002458 addi    s1, s0, 1              #; s0  = 10, (wrb) s1  <-- 11
       0     7385        M 0x8000245c mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     7386        M 0x80002460 mv      a2, s0                 #; s0  = 10, (wrb) a2  <-- 10
       0     7387        M 0x80002464 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     7388        M 0x80002468 jalr    s11                    #; s11 = 0x80001508, (wrb) ra  <-- 0x8000246c, goto 0x80001508
       0     7389        M                                           #; (lsu) a0  <-- 53
       0     7391        M 0x80001508 beqz    a0, pc + 168           #; a0  = 53, not taken
       0     7392        M 0x8000150c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     7394        M 0x80001510 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     7395        M 0x80001514 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     7396        M 0x80001518 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003518
       0     7397        M 0x8000151c addi    a3, a3, -900           #; a3  = 0x80003518, (wrb) a3  <-- 0x80003194
       0     7398        M                                           #; (acc) a1  <-- 0x00d605b3
       0     7399        M 0x80001520 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003194, (wrb) a1  <-- 0x80003194
       0     7400        M 0x80001524 lw      a4, 0(a1)              #; a1  = 0x80003194, a4  <~~ Word[0x80003194]
       0     7411        M                                           #; (lsu) a4  <-- 10
       0     7412        M 0x80001528 addi    a5, a4, 1              #; a4  = 10, (wrb) a5  <-- 11
       0     7413        M 0x8000152c sw      a5, 0(a1)              #; a1  = 0x80003194, 11 ~~> Word[0x80003194]
       0     7414        M 0x80001530 add     a4, a1, a4             #; a1  = 0x80003194, a4  = 10, (wrb) a4  <-- 0x8000319e
       0     7415        M 0x80001534 sb      a0, 72(a4)             #; a4  = 0x8000319e, 53 ~~> Byte[0x800031e6]
       0     7416        M 0x80001538 lw      a4, 0(a1)              #; a1  = 0x80003194, a4  <~~ Word[0x80003194]
       0     7437        M                                           #; (lsu) a4  <-- 11
       0     7438        M 0x8000153c addi    a4, a4, -1020          #; a4  = 11, (wrb) a4  <-- -1009
       0     7439        M 0x80001540 snez    a4, a4                 #; a4  = -1009, (wrb) a4  <-- 1
       0     7440        M 0x80001544 addi    a0, a0, -10            #; a0  = 53, (wrb) a0  <-- 43
       0     7441        M 0x80001548 snez    a0, a0                 #; a0  = 43, (wrb) a0  <-- 1
       0     7442        M 0x8000154c and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     7443        M 0x80001550 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015b0
       0     7448        M 0x800015b0 ret                            #; ra  = 0x8000246c, goto 0x8000246c
       0     7453        M 0x8000246c mv      s0, s1                 #; s1  = 11, (wrb) s0  <-- 11
       0     7456        M 0x80002470 mv      s8, s9                 #; s9  = 1, (wrb) s8  <-- 1
       0     7457        M 0x80002474 bnez    s9, pc - 40            #; s9  = 1, taken, goto 0x8000244c
       0     7459        M 0x8000244c add     a0, s7, s8             #; s7  = 0x0011febb, s8  = 1, (wrb) a0  <-- 0x0011febc
       0     7462        M 0x80002450 lbu     a0, 0(a0)              #; a0  = 0x0011febc, a0  <~~ Byte[0x0011febc]
       0     7463        M 0x80002454 addi    s9, s8, -1             #; s8  = 1, (wrb) s9  <-- 0
       0     7464        M 0x80002458 addi    s1, s0, 1              #; s0  = 11, (wrb) s1  <-- 12
       0     7465        M 0x8000245c mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     7466        M 0x80002460 mv      a2, s0                 #; s0  = 11, (wrb) a2  <-- 11
       0     7467        M 0x80002464 mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     7468        M 0x80002468 jalr    s11                    #; s11 = 0x80001508, (wrb) ra  <-- 0x8000246c, goto 0x80001508
       0     7469        M                                           #; (lsu) a0  <-- 49
       0     7471        M 0x80001508 beqz    a0, pc + 168           #; a0  = 49, not taken
       0     7472        M 0x8000150c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     7474        M 0x80001510 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     7475        M 0x80001514 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     7476        M 0x80001518 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003518
       0     7477        M 0x8000151c addi    a3, a3, -900           #; a3  = 0x80003518, (wrb) a3  <-- 0x80003194
       0     7478        M                                           #; (acc) a1  <-- 0x00d605b3
       0     7479        M 0x80001520 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003194, (wrb) a1  <-- 0x80003194
       0     7480        M 0x80001524 lw      a4, 0(a1)              #; a1  = 0x80003194, a4  <~~ Word[0x80003194]
       0     7491        M                                           #; (lsu) a4  <-- 11
       0     7492        M 0x80001528 addi    a5, a4, 1              #; a4  = 11, (wrb) a5  <-- 12
       0     7493        M 0x8000152c sw      a5, 0(a1)              #; a1  = 0x80003194, 12 ~~> Word[0x80003194]
       0     7494        M 0x80001530 add     a4, a1, a4             #; a1  = 0x80003194, a4  = 11, (wrb) a4  <-- 0x8000319f
       0     7495        M 0x80001534 sb      a0, 72(a4)             #; a4  = 0x8000319f, 49 ~~> Byte[0x800031e7]
       0     7496        M 0x80001538 lw      a4, 0(a1)              #; a1  = 0x80003194, a4  <~~ Word[0x80003194]
       0     7517        M                                           #; (lsu) a4  <-- 12
       0     7518        M 0x8000153c addi    a4, a4, -1020          #; a4  = 12, (wrb) a4  <-- -1008
       0     7519        M 0x80001540 snez    a4, a4                 #; a4  = -1008, (wrb) a4  <-- 1
       0     7520        M 0x80001544 addi    a0, a0, -10            #; a0  = 49, (wrb) a0  <-- 39
       0     7521        M 0x80001548 snez    a0, a0                 #; a0  = 39, (wrb) a0  <-- 1
       0     7522        M 0x8000154c and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     7523        M 0x80001550 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015b0
       0     7528        M 0x800015b0 ret                            #; ra  = 0x8000246c, goto 0x8000246c
       0     7533        M 0x8000246c mv      s0, s1                 #; s1  = 12, (wrb) s0  <-- 12
       0     7536        M 0x80002470 mv      s8, s9                 #; s9  = 0, (wrb) s8  <-- 0
       0     7537        M 0x80002474 bnez    s9, pc - 40            #; s9  = 0, not taken
       0     7538        M 0x80002478 j       pc + 0x8               #; goto 0x80002480
       0     7550        M 0x80002480 sub     a0, s1, s4             #; s1  = 12, s4  = 9, (wrb) a0  <-- 3
       0     7551        M 0x80002484 sltu    a0, a0, s2             #; a0  = 3, s2  = 0, (wrb) a0  <-- 0
       0     7552        M 0x80002488 xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0     7553        M 0x8000248c xori    a1, s5, 1              #; s5  = 0, (wrb) a1  <-- 1
       0     7562        M 0x80002490 or      a0, a1, a0             #; a1  = 1, a0  = 1, (wrb) a0  <-- 1
       0     7563        M 0x80002494 bnez    a0, pc + 48            #; a0  = 1, taken, goto 0x800024c4
       0     7585        M 0x800024c4 mv      s0, s1                 #; s1  = 12, (wrb) s0  <-- 12
       0     7586        M 0x800024c8 mv      a0, s0                 #; s0  = 12, (wrb) a0  <-- 12
       0     7587        M 0x800024cc lw      s11, 12(sp)            #; sp  = 0x0011fe60, s11 <~~ Word[0x0011fe6c]
       0     7590        M                                           #; (lsu) s11 <-- 16
       0     7597        M 0x800024d0 lw      s10, 16(sp)            #; sp  = 0x0011fe60, s10 <~~ Word[0x0011fe70]
       0     7600        M                                           #; (lsu) s10 <-- 0x80002e4c
       0     7601        M 0x800024d4 lw      s9, 20(sp)             #; sp  = 0x0011fe60, s9  <~~ Word[0x0011fe74]
       0     7604        M                                           #; (lsu) s9  <-- 9
       0     7605        M 0x800024d8 lw      s8, 24(sp)             #; sp  = 0x0011fe60, s8  <~~ Word[0x0011fe78]
       0     7608        M                                           #; (lsu) s8  <-- 10
       0     7609        M 0x800024dc lw      s7, 28(sp)             #; sp  = 0x0011fe60, s7  <~~ Word[0x0011fe7c]
       0     7612        M                                           #; (lsu) s7  <-- 0
       0     7613        M 0x800024e0 lw      s6, 32(sp)             #; sp  = 0x0011fe60, s6  <~~ Word[0x0011fe80]
       0     7616        M                                           #; (lsu) s6  <-- 0
       0     7617        M 0x800024e4 lw      s5, 36(sp)             #; sp  = 0x0011fe60, s5  <~~ Word[0x0011fe84]
       0     7620        M                                           #; (lsu) s5  <-- -1
       0     7621        M 0x800024e8 lw      s4, 40(sp)             #; sp  = 0x0011fe60, s4  <~~ Word[0x0011fe88]
       0     7624        M                                           #; (lsu) s4  <-- 0x0011ff17
       0     7625        M 0x800024ec lw      s3, 44(sp)             #; sp  = 0x0011fe60, s3  <~~ Word[0x0011fe8c]
       0     7628        M                                           #; (lsu) s3  <-- 0x0011ff28
       0     7629        M 0x800024f0 lw      s2, 48(sp)             #; sp  = 0x0011fe60, s2  <~~ Word[0x0011fe90]
       0     7632        M                                           #; (lsu) s2  <-- 0x80001508
       0     7633        M 0x800024f4 lw      s1, 52(sp)             #; sp  = 0x0011fe60, s1  <~~ Word[0x0011fe94]
       0     7636        M                                           #; (lsu) s1  <-- 0x0011febe
       0     7637        M 0x800024f8 lw      s0, 56(sp)             #; sp  = 0x0011fe60, s0  <~~ Word[0x0011fe98]
       0     7640        M                                           #; (lsu) s0  <-- 256
       0     7641        M 0x800024fc lw      ra, 60(sp)             #; sp  = 0x0011fe60, ra  <~~ Word[0x0011fe9c]
       0     7642        M 0x80002500 addi    sp, sp, 64             #; sp  = 0x0011fe60, (wrb) sp  <-- 0x0011fea0
       0     7644        M                                           #; (lsu) ra  <-- 0x800013f8
       0     7645        M 0x80002504 ret                            #; ra  = 0x800013f8, goto 0x800013f8
       0     7656        M 0x800013f8 mv      s8, a0                 #; a0  = 12, (wrb) s8  <-- 12
       0     7657        M 0x800013fc li      s6, 37                 #; (wrb) s6  <-- 37
       0     7659        M 0x80001400 li      s7, 46                 #; (wrb) s7  <-- 46
       0     7660        M 0x80001404 addi    s0, s10, 1             #; s10 = 0x80002e4c, (wrb) s0  <-- 0x80002e4d
       0     7661        M 0x80001408 j       pc - 0xa74             #; goto 0x80000994
       0     7662        M 0x80000994 addi    s10, s0, 2             #; s0  = 0x80002e4d, (wrb) s10 <-- 0x80002e4f
       0     7663        M 0x80000998 mv      s9, s8                 #; s8  = 12, (wrb) s9  <-- 12
       0     7664        M 0x8000099c li      s8, 10                 #; (wrb) s8  <-- 10
       0     7665        M 0x800009a0 lbu     a0, 0(s0)              #; s0  = 0x80002e4d, a0  <~~ Byte[0x80002e4d]
       0     7676        M                                           #; (lsu) a0  <-- 10
       0     7677        M 0x800009a4 beqz    a0, pc + 2824          #; a0  = 10, not taken
       0     7678        M 0x800009a8 beq     a0, s6, pc + 48        #; a0  = 10, s6  = 37, not taken
       0     7679        M 0x800009ac addi    s1, s9, 1              #; s9  = 12, (wrb) s1  <-- 13
       0     7680        M 0x800009b0 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     7681        M 0x800009b4 mv      a2, s9                 #; s9  = 12, (wrb) a2  <-- 12
       0     7682        M 0x800009b8 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     7683        M 0x800009bc jalr    s2                     #; s2  = 0x80001508, (wrb) ra  <-- 0x800009c0, goto 0x80001508
       0     7696        M 0x80001508 beqz    a0, pc + 168           #; a0  = 10, not taken
       0     7697        M 0x8000150c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     7708        M 0x80001510 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     7709        M 0x80001514 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     7710        M 0x80001518 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003518
       0     7711        M 0x8000151c addi    a3, a3, -900           #; a3  = 0x80003518, (wrb) a3  <-- 0x80003194
       0     7712        M                                           #; (acc) a1  <-- 0x00d605b3
       0     7713        M 0x80001520 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003194, (wrb) a1  <-- 0x80003194
       0     7714        M 0x80001524 lw      a4, 0(a1)              #; a1  = 0x80003194, a4  <~~ Word[0x80003194]
       0     7725        M                                           #; (lsu) a4  <-- 12
       0     7726        M 0x80001528 addi    a5, a4, 1              #; a4  = 12, (wrb) a5  <-- 13
       0     7727        M 0x8000152c sw      a5, 0(a1)              #; a1  = 0x80003194, 13 ~~> Word[0x80003194]
       0     7728        M 0x80001530 add     a4, a1, a4             #; a1  = 0x80003194, a4  = 12, (wrb) a4  <-- 0x800031a0
       0     7729        M 0x80001534 sb      a0, 72(a4)             #; a4  = 0x800031a0, 10 ~~> Byte[0x800031e8]
       0     7730        M 0x80001538 lw      a4, 0(a1)              #; a1  = 0x80003194, a4  <~~ Word[0x80003194]
       0     7751        M                                           #; (lsu) a4  <-- 13
       0     7752        M 0x8000153c addi    a4, a4, -1020          #; a4  = 13, (wrb) a4  <-- -1007
       0     7753        M 0x80001540 snez    a4, a4                 #; a4  = -1007, (wrb) a4  <-- 1
       0     7754        M 0x80001544 addi    a0, a0, -10            #; a0  = 10, (wrb) a0  <-- 0
       0     7755        M 0x80001548 snez    a0, a0                 #; a0  = 0, (wrb) a0  <-- 0
       0     7756        M 0x8000154c and     a0, a0, a4             #; a0  = 0, a4  = 1, (wrb) a0  <-- 0
       0     7757        M 0x80001550 bnez    a0, pc + 96            #; a0  = 0, not taken
       0     7758        M 0x80001554 add     a0, a3, a2             #; a3  = 0x80003194, a2  = 0, (wrb) a0  <-- 0x80003194
       0     7759        M 0x80001558 addi    a2, a0, 72             #; a0  = 0x80003194, (wrb) a2  <-- 0x800031dc
       0     7760        M 0x8000155c sw      zero, 12(a0)           #; a0  = 0x80003194, 0 ~~> Word[0x800031a0]
       0     7761        M 0x80001560 li      a3, 64                 #; (wrb) a3  <-- 64
       0     7762        M 0x80001564 sw      a3, 8(a0)              #; a0  = 0x80003194, 64 ~~> Word[0x8000319c]
       0     7763        M 0x80001568 sw      zero, 20(a0)           #; a0  = 0x80003194, 0 ~~> Word[0x800031a8]
       0     7764        M 0x8000156c li      a3, 1                  #; (wrb) a3  <-- 1
       0     7773        M 0x80001570 sw      a3, 16(a0)             #; a0  = 0x80003194, 1 ~~> Word[0x800031a4]
       0     7774        M 0x80001574 sw      zero, 28(a0)           #; a0  = 0x80003194, 0 ~~> Word[0x800031b0]
       0     7776        M 0x80001578 sw      a2, 24(a0)             #; a0  = 0x80003194, 0x800031dc ~~> Word[0x800031ac]
       0     7786        M 0x8000157c lw      a2, 0(a1)              #; a1  = 0x80003194, a2  <~~ Word[0x80003194]
       0     7787        M 0x80001580 addi    a3, a0, 8              #; a0  = 0x80003194, (wrb) a3  <-- 0x8000319c
       0     7788        M 0x80001584 sw      zero, 36(a0)           #; a0  = 0x80003194, 0 ~~> Word[0x800031b8]
       0     7808        M                                           #; (lsu) a2  <-- 13
       0     7809        M 0x80001588 sw      a2, 32(a0)             #; a0  = 0x80003194, 13 ~~> Word[0x800031b4]
       0     7810        M 0x8000158c auipc   a0, 0x2                #; (wrb) a0  <-- 0x8000358c
       0     7811        M 0x80001590 addi    a0, a0, -1292          #; a0  = 0x8000358c, (wrb) a0  <-- 0x80003080
       0     7812        M 0x80001594 sw      a3, 0(a0)              #; a0  = 0x80003080, 0x8000319c ~~> Word[0x80003080]
       0     7813        M 0x80001598 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003598
       0     7814        M 0x8000159c addi    a0, a0, -1240          #; a0  = 0x80003598, (wrb) a0  <-- 0x800030c0
       0     7823        M 0x800015a0 lw      a2, 0(a0)              #; a0  = 0x800030c0, a2  <~~ Word[0x800030c0]
       0     7838        M                                           #; (lsu) a2  <-- 0
       0     7839        M 0x800015a4 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x800015a0
       0     7840        M 0x800015a0 lw      a2, 0(a0)              #; a0  = 0x800030c0, a2  <~~ Word[0x800030c0]
       0     7851        M                                           #; (lsu) a2  <-- 0
       0     7852        M 0x800015a4 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x800015a0
       0     7853        M 0x800015a0 lw      a2, 0(a0)              #; a0  = 0x800030c0, a2  <~~ Word[0x800030c0]
       0     7864        M                                           #; (lsu) a2  <-- 0
       0     7865        M 0x800015a4 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x800015a0
       0     7866        M 0x800015a0 lw      a2, 0(a0)              #; a0  = 0x800030c0, a2  <~~ Word[0x800030c0]
       0     7877        M                                           #; (lsu) a2  <-- 0
       0     7878        M 0x800015a4 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x800015a0
       0     7879        M 0x800015a0 lw      a2, 0(a0)              #; a0  = 0x800030c0, a2  <~~ Word[0x800030c0]
       0     7890        M                                           #; (lsu) a2  <-- 0
       0     7891        M 0x800015a4 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x800015a0
       0     7892        M 0x800015a0 lw      a2, 0(a0)              #; a0  = 0x800030c0, a2  <~~ Word[0x800030c0]
       0     7903        M                                           #; (lsu) a2  <-- 0
       0     7904        M 0x800015a4 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x800015a0
       0     7905        M 0x800015a0 lw      a2, 0(a0)              #; a0  = 0x800030c0, a2  <~~ Word[0x800030c0]
       0     7916        M                                           #; (lsu) a2  <-- 1
       0     7917        M 0x800015a4 beqz    a2, pc - 4             #; a2  = 1, not taken
       0     7918        M 0x800015a8 sw      zero, 0(a0)            #; a0  = 0x800030c0, 0 ~~> Word[0x800030c0]
       0     7919        M 0x800015ac sw      zero, 0(a1)            #; a1  = 0x80003194, 0 ~~> Word[0x80003194]
       0     7921        M 0x800015b0 ret                            #; ra  = 0x800009c0, goto 0x800009c0
       0     7926        M 0x800009c0 addi    s0, s0, 1              #; s0  = 0x80002e4d, (wrb) s0  <-- 0x80002e4e
       0     7927        M 0x800009c4 addi    s10, s10, 1            #; s10 = 0x80002e4f, (wrb) s10 <-- 0x80002e50
       0     7928        M 0x800009c8 mv      s9, s1                 #; s1  = 13, (wrb) s9  <-- 13
       0     7929        M 0x800009cc lbu     a0, 0(s0)              #; s0  = 0x80002e4e, a0  <~~ Byte[0x80002e4e]
       0     7941        M                                           #; (lsu) a0  <-- 0
       0     7942        M 0x800009d0 bnez    a0, pc - 40            #; a0  = 0, not taken
       0     7943        M 0x800009d4 j       pc + 0xad8             #; goto 0x800014ac
       0     7955        M 0x800014ac mv      a2, s9                 #; s9  = 13, (wrb) a2  <-- 13
       0     7967        M 0x800014b0 bltu    s9, s5, pc + 8         #; s9  = 13, s5  = -1, taken, goto 0x800014b8
       0     7968        M 0x800014b8 li      a0, 0                  #; (wrb) a0  <-- 0
       0     7969        M 0x800014bc mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     7979        M 0x800014c0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     7980        M 0x800014c4 jalr    s2                     #; s2  = 0x80001508, (wrb) ra  <-- 0x800014c8, goto 0x80001508
       0     7993        M 0x80001508 beqz    a0, pc + 168           #; a0  = 0, taken, goto 0x800015b0
       0     7998        M 0x800015b0 ret                            #; ra  = 0x800014c8, goto 0x800014c8
       0     7999        M 0x800014c8 mv      a0, s9                 #; s9  = 13, (wrb) a0  <-- 13
       0     8000        M 0x800014cc lw      s11, 60(sp)            #; sp  = 0x0011fea0, s11 <~~ Word[0x0011fedc]
       0     8003        M                                           #; (lsu) s11 <-- 0
       0     8004        M 0x800014d0 lw      s10, 64(sp)            #; sp  = 0x0011fea0, s10 <~~ Word[0x0011fee0]
       0     8007        M                                           #; (lsu) s10 <-- 0
       0     8008        M 0x800014d4 lw      s9, 68(sp)             #; sp  = 0x0011fea0, s9  <~~ Word[0x0011fee4]
       0     8011        M                                           #; (lsu) s9  <-- 0
       0     8012        M 0x800014d8 lw      s8, 72(sp)             #; sp  = 0x0011fea0, s8  <~~ Word[0x0011fee8]
       0     8015        M                                           #; (lsu) s8  <-- 0
       0     8016        M 0x800014dc lw      s7, 76(sp)             #; sp  = 0x0011fea0, s7  <~~ Word[0x0011feec]
       0     8019        M                                           #; (lsu) s7  <-- 0
       0     8020        M 0x800014e0 lw      s6, 80(sp)             #; sp  = 0x0011fea0, s6  <~~ Word[0x0011fef0]
       0     8023        M                                           #; (lsu) s6  <-- 0
       0     8024        M 0x800014e4 lw      s5, 84(sp)             #; sp  = 0x0011fea0, s5  <~~ Word[0x0011fef4]
       0     8027        M                                           #; (lsu) s5  <-- 0
       0     8028        M 0x800014e8 lw      s4, 88(sp)             #; sp  = 0x0011fea0, s4  <~~ Word[0x0011fef8]
       0     8031        M                                           #; (lsu) s4  <-- 0
       0     8032        M 0x800014ec lw      s3, 92(sp)             #; sp  = 0x0011fea0, s3  <~~ Word[0x0011fefc]
       0     8035        M                                           #; (lsu) s3  <-- 0
       0     8036        M 0x800014f0 lw      s2, 96(sp)             #; sp  = 0x0011fea0, s2  <~~ Word[0x0011ff00]
       0     8039        M                                           #; (lsu) s2  <-- 0
       0     8040        M 0x800014f4 lw      s1, 100(sp)            #; sp  = 0x0011fea0, s1  <~~ Word[0x0011ff04]
       0     8043        M                                           #; (lsu) s1  <-- 0
       0     8044        M 0x800014f8 lw      s0, 104(sp)            #; sp  = 0x0011fea0, s0  <~~ Word[0x0011ff08]
       0     8047        M                                           #; (lsu) s0  <-- 4827
       0     8048        M 0x800014fc lw      ra, 108(sp)            #; sp  = 0x0011fea0, ra  <~~ Word[0x0011ff0c]
       0     8049        M 0x80001500 addi    sp, sp, 112            #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011ff10
       0     8051        M                                           #; (lsu) ra  <-- 0x80000904
       0     8052        M 0x80001504 ret                            #; ra  = 0x80000904, goto 0x80000904
       0     8055        M 0x80000904 lw      ra, 12(sp)             #; sp  = 0x0011ff10, ra  <~~ Word[0x0011ff1c]
       0     8056        M 0x80000908 addi    sp, sp, 48             #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011ff40
       0     8058        M                                           #; (lsu) ra  <-- 0x80000860
       0     8059        M 0x8000090c ret                            #; ra  = 0x80000860, goto 0x80000860
       0     8062        M 0x80000860 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003860
       0     8063        M 0x80000864 addi    a0, a0, -1928          #; a0  = 0x80003860, (wrb) a0  <-- 0x800030d8
       0     8066        M 0x80000868 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x800030d8]
       0     8075        M                                           #; (f:lsu) ft3  <-- -2850.0
       0     8076        M 0x80000878 lw      a2, 8(sp)              #; sp  = 0x0011ff40, a2  <~~ Word[0x0011ff48]
                         M 0x8000086c fadd.d  ft3, fs0, ft3          #; fs0  = 2850.0, ft3  = -2850.0
       0     8079        M                                           #; (lsu) a2  <-- 0
                         M                                           #; (f:fpu) ft3  <-- 0.0
       0     8080        M 0x8000087c lw      a3, 12(sp)             #; sp  = 0x0011ff40, a3  <~~ Word[0x0011ff4c]
                         M 0x80000870 fsgnjx.d fs0, ft3, ft3         #; ft3  = 0.0, ft3  = 0.0
       0     8081        M                                           #; (f:fpu) fs0  <-- 0.0
       0     8082        M 0x80000874 fsd     fs0, 8(sp)             #; 0.0 ~~> Doub[0x0011ff48]
       0     8083        M                                           #; (lsu) a3  <-- 0
       0     8086        M 0x80000880 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002880
       0     8087        M 0x80000884 addi    a0, a0, 1461           #; a0  = 0x80002880, (wrb) a0  <-- 0x80002e35
       0     8088        M 0x80000888 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000888
       0     8089        M 0x8000088c jalr    ra, ra, 44             #; ra  = 0x80000888, (wrb) ra  <-- 0x80000890, goto 0x800008b4
       0     8100        M 0x800008b4 addi    sp, sp, -48            #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff10
       0     8101        M 0x800008b8 sw      ra, 12(sp)             #; sp  = 0x0011ff10, 0x80000890 ~~> Word[0x0011ff1c]
       0     8102        M 0x800008bc mv      t0, a0                 #; a0  = 0x80002e35, (wrb) t0  <-- 0x80002e35
       0     8103        M 0x800008c0 sw      a7, 44(sp)             #; sp  = 0x0011ff10, 10 ~~> Word[0x0011ff3c]
       0     8104        M 0x800008c4 sw      a6, 40(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff38]
       0     8105        M 0x800008c8 sw      a5, 36(sp)             #; sp  = 0x0011ff10, 13 ~~> Word[0x0011ff34]
       0     8106        M 0x800008cc sw      a4, 32(sp)             #; sp  = 0x0011ff10, 1 ~~> Word[0x0011ff30]
       0     8107        M 0x800008d0 sw      a3, 28(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff2c]
       0     8108        M 0x800008d4 sw      a2, 24(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff28]
       0     8109        M 0x800008d8 sw      a1, 20(sp)             #; sp  = 0x0011ff10, 0x0011ff17 ~~> Word[0x0011ff24]
       0     8110        M 0x800008dc addi    a0, sp, 20             #; sp  = 0x0011ff10, (wrb) a0  <-- 0x0011ff24
       0     8111        M 0x800008e0 sw      a0, 8(sp)              #; sp  = 0x0011ff10, 0x0011ff24 ~~> Word[0x0011ff18]
       0     8112        M 0x800008e4 auipc   a0, 0x1                #; (wrb) a0  <-- 0x800018e4
       0     8113        M 0x800008e8 addi    a0, a0, -988           #; a0  = 0x800018e4, (wrb) a0  <-- 0x80001508
       0     8114        M 0x800008ec addi    a1, sp, 7              #; sp  = 0x0011ff10, (wrb) a1  <-- 0x0011ff17
       0     8115        M 0x800008f0 li      a2, -1                 #; (wrb) a2  <-- -1
       0     8116        M 0x800008f4 addi    a4, sp, 20             #; sp  = 0x0011ff10, (wrb) a4  <-- 0x0011ff24
       0     8117        M 0x800008f8 mv      a3, t0                 #; t0  = 0x80002e35, (wrb) a3  <-- 0x80002e35
       0     8118        M 0x800008fc auipc   ra, 0x0                #; (wrb) ra  <-- 0x800008fc
       0     8119        M 0x80000900 jalr    ra, ra, 20             #; ra  = 0x800008fc, (wrb) ra  <-- 0x80000904, goto 0x80000910
       0     8122        M 0x80000910 addi    sp, sp, -112           #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011fea0
       0     8123        M 0x80000914 sw      ra, 108(sp)            #; sp  = 0x0011fea0, 0x80000904 ~~> Word[0x0011ff0c]
       0     8124        M 0x80000918 sw      s0, 104(sp)            #; sp  = 0x0011fea0, 4827 ~~> Word[0x0011ff08]
       0     8125        M 0x8000091c sw      s1, 100(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff04]
       0     8126        M 0x80000920 sw      s2, 96(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011ff00]
       0     8127        M 0x80000924 sw      s3, 92(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fefc]
       0     8128        M 0x80000928 sw      s4, 88(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef8]
       0     8129        M 0x8000092c sw      s5, 84(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef4]
       0     8130        M 0x80000930 sw      s6, 80(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef0]
       0     8131        M 0x80000934 sw      s7, 76(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011feec]
       0     8132        M 0x80000938 sw      s8, 72(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee8]
       0     8133        M 0x8000093c sw      s9, 68(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee4]
       0     8134        M 0x80000940 sw      s10, 64(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee0]
       0     8135        M 0x80000944 sw      s11, 60(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fedc]
       0     8136        M 0x80000948 mv      s3, a4                 #; a4  = 0x0011ff24, (wrb) s3  <-- 0x0011ff24
       0     8137        M 0x8000094c mv      s0, a3                 #; a3  = 0x80002e35, (wrb) s0  <-- 0x80002e35
       0     8138        M 0x80000950 mv      s5, a2                 #; a2  = -1, (wrb) s5  <-- -1
       0     8139        M 0x80000954 mv      s4, a1                 #; a1  = 0x0011ff17, (wrb) s4  <-- 0x0011ff17
       0     8140        M 0x80000958 beqz    a1, pc + 12            #; a1  = 0x0011ff17, not taken
       0     8141        M 0x8000095c mv      s2, a0                 #; a0  = 0x80001508, (wrb) s2  <-- 0x80001508
       0     8142        M 0x80000960 j       pc + 0xc               #; goto 0x8000096c
       0     8143        M 0x8000096c li      s8, 0                  #; (wrb) s8  <-- 0
       0     8146        M 0x80000970 li      s6, 37                 #; (wrb) s6  <-- 37
       0     8147        M 0x80000974 li      s11, 16                #; (wrb) s11 <-- 16
       0     8148        M 0x80000978 li      s7, 46                 #; (wrb) s7  <-- 46
       0     8149        M 0x8000097c lui     a0, 0x1                #; (wrb) a0  <-- 4096
       0     8150        M 0x80000980 addi    a0, a0, -2048          #; a0  = 4096, (wrb) a0  <-- 2048
       0     8151        M 0x80000984 sw      a0, 24(sp)             #; sp  = 0x0011fea0, 2048 ~~> Word[0x0011feb8]
       0     8152        M 0x80000988 lui     a0, 0x10               #; (wrb) a0  <-- 0x00010000
       0     8153        M 0x8000098c addi    a0, a0, -1             #; a0  = 0x00010000, (wrb) a0  <-- 65535
       0     8154        M 0x80000990 sw      a0, 16(sp)             #; sp  = 0x0011fea0, 65535 ~~> Word[0x0011feb0]
       0     8155        M 0x80000994 addi    s10, s0, 2             #; s0  = 0x80002e35, (wrb) s10 <-- 0x80002e37
       0     8156        M 0x80000998 mv      s9, s8                 #; s8  = 0, (wrb) s9  <-- 0
       0     8157        M 0x8000099c li      s8, 10                 #; (wrb) s8  <-- 10
       0     8158        M 0x800009a0 lbu     a0, 0(s0)              #; s0  = 0x80002e35, a0  <~~ Byte[0x80002e35]
       0     8169        M                                           #; (lsu) a0  <-- 101
       0     8170        M 0x800009a4 beqz    a0, pc + 2824          #; a0  = 101, not taken
       0     8171        M 0x800009a8 beq     a0, s6, pc + 48        #; a0  = 101, s6  = 37, not taken
       0     8172        M 0x800009ac addi    s1, s9, 1              #; s9  = 0, (wrb) s1  <-- 1
       0     8173        M 0x800009b0 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     8174        M 0x800009b4 mv      a2, s9                 #; s9  = 0, (wrb) a2  <-- 0
       0     8175        M 0x800009b8 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     8176        M 0x800009bc jalr    s2                     #; s2  = 0x80001508, (wrb) ra  <-- 0x800009c0, goto 0x80001508
       0     8179        M 0x80001508 beqz    a0, pc + 168           #; a0  = 101, not taken
       0     8180        M 0x8000150c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     8182        M 0x80001510 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     8183        M 0x80001514 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     8184        M 0x80001518 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003518
       0     8185        M 0x8000151c addi    a3, a3, -900           #; a3  = 0x80003518, (wrb) a3  <-- 0x80003194
       0     8186        M                                           #; (acc) a1  <-- 0x00d605b3
       0     8187        M 0x80001520 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003194, (wrb) a1  <-- 0x80003194
       0     8188        M 0x80001524 lw      a4, 0(a1)              #; a1  = 0x80003194, a4  <~~ Word[0x80003194]
       0     8199        M                                           #; (lsu) a4  <-- 0
       0     8200        M 0x80001528 addi    a5, a4, 1              #; a4  = 0, (wrb) a5  <-- 1
       0     8201        M 0x8000152c sw      a5, 0(a1)              #; a1  = 0x80003194, 1 ~~> Word[0x80003194]
       0     8202        M 0x80001530 add     a4, a1, a4             #; a1  = 0x80003194, a4  = 0, (wrb) a4  <-- 0x80003194
       0     8203        M 0x80001534 sb      a0, 72(a4)             #; a4  = 0x80003194, 101 ~~> Byte[0x800031dc]
       0     8204        M 0x80001538 lw      a4, 0(a1)              #; a1  = 0x80003194, a4  <~~ Word[0x80003194]
       0     8225        M                                           #; (lsu) a4  <-- 1
       0     8226        M 0x8000153c addi    a4, a4, -1020          #; a4  = 1, (wrb) a4  <-- -1019
       0     8227        M 0x80001540 snez    a4, a4                 #; a4  = -1019, (wrb) a4  <-- 1
       0     8228        M 0x80001544 addi    a0, a0, -10            #; a0  = 101, (wrb) a0  <-- 91
       0     8229        M 0x80001548 snez    a0, a0                 #; a0  = 91, (wrb) a0  <-- 1
       0     8230        M 0x8000154c and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     8231        M 0x80001550 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015b0
       0     8236        M 0x800015b0 ret                            #; ra  = 0x800009c0, goto 0x800009c0
       0     8241        M 0x800009c0 addi    s0, s0, 1              #; s0  = 0x80002e35, (wrb) s0  <-- 0x80002e36
       0     8242        M 0x800009c4 addi    s10, s10, 1            #; s10 = 0x80002e37, (wrb) s10 <-- 0x80002e38
       0     8243        M 0x800009c8 mv      s9, s1                 #; s1  = 1, (wrb) s9  <-- 1
       0     8244        M 0x800009cc lbu     a0, 0(s0)              #; s0  = 0x80002e36, a0  <~~ Byte[0x80002e36]
       0     8255        M                                           #; (lsu) a0  <-- 114
       0     8256        M 0x800009d0 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x800009a8
       0     8257        M 0x800009a8 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     8258        M 0x800009ac addi    s1, s9, 1              #; s9  = 1, (wrb) s1  <-- 2
       0     8260        M 0x800009b0 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     8261        M 0x800009b4 mv      a2, s9                 #; s9  = 1, (wrb) a2  <-- 1
       0     8262        M 0x800009b8 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     8263        M 0x800009bc jalr    s2                     #; s2  = 0x80001508, (wrb) ra  <-- 0x800009c0, goto 0x80001508
       0     8266        M 0x80001508 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     8267        M 0x8000150c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     8269        M 0x80001510 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     8270        M 0x80001514 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     8271        M 0x80001518 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003518
       0     8272        M 0x8000151c addi    a3, a3, -900           #; a3  = 0x80003518, (wrb) a3  <-- 0x80003194
       0     8273        M                                           #; (acc) a1  <-- 0x00d605b3
       0     8274        M 0x80001520 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003194, (wrb) a1  <-- 0x80003194
       0     8275        M 0x80001524 lw      a4, 0(a1)              #; a1  = 0x80003194, a4  <~~ Word[0x80003194]
       0     8286        M                                           #; (lsu) a4  <-- 1
       0     8287        M 0x80001528 addi    a5, a4, 1              #; a4  = 1, (wrb) a5  <-- 2
       0     8288        M 0x8000152c sw      a5, 0(a1)              #; a1  = 0x80003194, 2 ~~> Word[0x80003194]
       0     8289        M 0x80001530 add     a4, a1, a4             #; a1  = 0x80003194, a4  = 1, (wrb) a4  <-- 0x80003195
       0     8290        M 0x80001534 sb      a0, 72(a4)             #; a4  = 0x80003195, 114 ~~> Byte[0x800031dd]
       0     8291        M 0x80001538 lw      a4, 0(a1)              #; a1  = 0x80003194, a4  <~~ Word[0x80003194]
       0     8312        M                                           #; (lsu) a4  <-- 2
       0     8313        M 0x8000153c addi    a4, a4, -1020          #; a4  = 2, (wrb) a4  <-- -1018
       0     8314        M 0x80001540 snez    a4, a4                 #; a4  = -1018, (wrb) a4  <-- 1
       0     8315        M 0x80001544 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     8316        M 0x80001548 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     8317        M 0x8000154c and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     8318        M 0x80001550 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015b0
       0     8323        M 0x800015b0 ret                            #; ra  = 0x800009c0, goto 0x800009c0
       0     8328        M 0x800009c0 addi    s0, s0, 1              #; s0  = 0x80002e36, (wrb) s0  <-- 0x80002e37
       0     8329        M 0x800009c4 addi    s10, s10, 1            #; s10 = 0x80002e38, (wrb) s10 <-- 0x80002e39
       0     8330        M 0x800009c8 mv      s9, s1                 #; s1  = 2, (wrb) s9  <-- 2
       0     8331        M 0x800009cc lbu     a0, 0(s0)              #; s0  = 0x80002e37, a0  <~~ Byte[0x80002e37]
       0     8342        M                                           #; (lsu) a0  <-- 114
       0     8343        M 0x800009d0 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x800009a8
       0     8344        M 0x800009a8 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     8345        M 0x800009ac addi    s1, s9, 1              #; s9  = 2, (wrb) s1  <-- 3
       0     8347        M 0x800009b0 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     8348        M 0x800009b4 mv      a2, s9                 #; s9  = 2, (wrb) a2  <-- 2
       0     8349        M 0x800009b8 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     8350        M 0x800009bc jalr    s2                     #; s2  = 0x80001508, (wrb) ra  <-- 0x800009c0, goto 0x80001508
       0     8353        M 0x80001508 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     8354        M 0x8000150c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     8356        M 0x80001510 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     8357        M 0x80001514 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     8358        M 0x80001518 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003518
       0     8359        M 0x8000151c addi    a3, a3, -900           #; a3  = 0x80003518, (wrb) a3  <-- 0x80003194
       0     8360        M                                           #; (acc) a1  <-- 0x00d605b3
       0     8361        M 0x80001520 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003194, (wrb) a1  <-- 0x80003194
       0     8362        M 0x80001524 lw      a4, 0(a1)              #; a1  = 0x80003194, a4  <~~ Word[0x80003194]
       0     8373        M                                           #; (lsu) a4  <-- 2
       0     8374        M 0x80001528 addi    a5, a4, 1              #; a4  = 2, (wrb) a5  <-- 3
       0     8375        M 0x8000152c sw      a5, 0(a1)              #; a1  = 0x80003194, 3 ~~> Word[0x80003194]
       0     8376        M 0x80001530 add     a4, a1, a4             #; a1  = 0x80003194, a4  = 2, (wrb) a4  <-- 0x80003196
       0     8377        M 0x80001534 sb      a0, 72(a4)             #; a4  = 0x80003196, 114 ~~> Byte[0x800031de]
       0     8378        M 0x80001538 lw      a4, 0(a1)              #; a1  = 0x80003194, a4  <~~ Word[0x80003194]
       0     8399        M                                           #; (lsu) a4  <-- 3
       0     8400        M 0x8000153c addi    a4, a4, -1020          #; a4  = 3, (wrb) a4  <-- -1017
       0     8401        M 0x80001540 snez    a4, a4                 #; a4  = -1017, (wrb) a4  <-- 1
       0     8402        M 0x80001544 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     8403        M 0x80001548 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     8404        M 0x8000154c and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     8405        M 0x80001550 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015b0
       0     8410        M 0x800015b0 ret                            #; ra  = 0x800009c0, goto 0x800009c0
       0     8415        M 0x800009c0 addi    s0, s0, 1              #; s0  = 0x80002e37, (wrb) s0  <-- 0x80002e38
       0     8416        M 0x800009c4 addi    s10, s10, 1            #; s10 = 0x80002e39, (wrb) s10 <-- 0x80002e3a
       0     8417        M 0x800009c8 mv      s9, s1                 #; s1  = 3, (wrb) s9  <-- 3
       0     8418        M 0x800009cc lbu     a0, 0(s0)              #; s0  = 0x80002e38, a0  <~~ Byte[0x80002e38]
       0     8429        M                                           #; (lsu) a0  <-- 111
       0     8430        M 0x800009d0 bnez    a0, pc - 40            #; a0  = 111, taken, goto 0x800009a8
       0     8431        M 0x800009a8 beq     a0, s6, pc + 48        #; a0  = 111, s6  = 37, not taken
       0     8432        M 0x800009ac addi    s1, s9, 1              #; s9  = 3, (wrb) s1  <-- 4
       0     8434        M 0x800009b0 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     8435        M 0x800009b4 mv      a2, s9                 #; s9  = 3, (wrb) a2  <-- 3
       0     8436        M 0x800009b8 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     8437        M 0x800009bc jalr    s2                     #; s2  = 0x80001508, (wrb) ra  <-- 0x800009c0, goto 0x80001508
       0     8440        M 0x80001508 beqz    a0, pc + 168           #; a0  = 111, not taken
       0     8441        M 0x8000150c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     8443        M 0x80001510 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     8444        M 0x80001514 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     8445        M 0x80001518 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003518
       0     8446        M 0x8000151c addi    a3, a3, -900           #; a3  = 0x80003518, (wrb) a3  <-- 0x80003194
       0     8447        M                                           #; (acc) a1  <-- 0x00d605b3
       0     8448        M 0x80001520 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003194, (wrb) a1  <-- 0x80003194
       0     8449        M 0x80001524 lw      a4, 0(a1)              #; a1  = 0x80003194, a4  <~~ Word[0x80003194]
       0     8460        M                                           #; (lsu) a4  <-- 3
       0     8461        M 0x80001528 addi    a5, a4, 1              #; a4  = 3, (wrb) a5  <-- 4
       0     8462        M 0x8000152c sw      a5, 0(a1)              #; a1  = 0x80003194, 4 ~~> Word[0x80003194]
       0     8463        M 0x80001530 add     a4, a1, a4             #; a1  = 0x80003194, a4  = 3, (wrb) a4  <-- 0x80003197
       0     8464        M 0x80001534 sb      a0, 72(a4)             #; a4  = 0x80003197, 111 ~~> Byte[0x800031df]
       0     8465        M 0x80001538 lw      a4, 0(a1)              #; a1  = 0x80003194, a4  <~~ Word[0x80003194]
       0     8486        M                                           #; (lsu) a4  <-- 4
       0     8487        M 0x8000153c addi    a4, a4, -1020          #; a4  = 4, (wrb) a4  <-- -1016
       0     8488        M 0x80001540 snez    a4, a4                 #; a4  = -1016, (wrb) a4  <-- 1
       0     8489        M 0x80001544 addi    a0, a0, -10            #; a0  = 111, (wrb) a0  <-- 101
       0     8490        M 0x80001548 snez    a0, a0                 #; a0  = 101, (wrb) a0  <-- 1
       0     8491        M 0x8000154c and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     8492        M 0x80001550 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015b0
       0     8497        M 0x800015b0 ret                            #; ra  = 0x800009c0, goto 0x800009c0
       0     8502        M 0x800009c0 addi    s0, s0, 1              #; s0  = 0x80002e38, (wrb) s0  <-- 0x80002e39
       0     8503        M 0x800009c4 addi    s10, s10, 1            #; s10 = 0x80002e3a, (wrb) s10 <-- 0x80002e3b
       0     8504        M 0x800009c8 mv      s9, s1                 #; s1  = 4, (wrb) s9  <-- 4
       0     8505        M 0x800009cc lbu     a0, 0(s0)              #; s0  = 0x80002e39, a0  <~~ Byte[0x80002e39]
       0     8516        M                                           #; (lsu) a0  <-- 114
       0     8517        M 0x800009d0 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x800009a8
       0     8518        M 0x800009a8 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     8519        M 0x800009ac addi    s1, s9, 1              #; s9  = 4, (wrb) s1  <-- 5
       0     8521        M 0x800009b0 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     8522        M 0x800009b4 mv      a2, s9                 #; s9  = 4, (wrb) a2  <-- 4
       0     8523        M 0x800009b8 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     8524        M 0x800009bc jalr    s2                     #; s2  = 0x80001508, (wrb) ra  <-- 0x800009c0, goto 0x80001508
       0     8527        M 0x80001508 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     8528        M 0x8000150c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     8530        M 0x80001510 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     8531        M 0x80001514 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     8532        M 0x80001518 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003518
       0     8533        M 0x8000151c addi    a3, a3, -900           #; a3  = 0x80003518, (wrb) a3  <-- 0x80003194
       0     8534        M                                           #; (acc) a1  <-- 0x00d605b3
       0     8535        M 0x80001520 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003194, (wrb) a1  <-- 0x80003194
       0     8536        M 0x80001524 lw      a4, 0(a1)              #; a1  = 0x80003194, a4  <~~ Word[0x80003194]
       0     8547        M                                           #; (lsu) a4  <-- 4
       0     8548        M 0x80001528 addi    a5, a4, 1              #; a4  = 4, (wrb) a5  <-- 5
       0     8549        M 0x8000152c sw      a5, 0(a1)              #; a1  = 0x80003194, 5 ~~> Word[0x80003194]
       0     8550        M 0x80001530 add     a4, a1, a4             #; a1  = 0x80003194, a4  = 4, (wrb) a4  <-- 0x80003198
       0     8551        M 0x80001534 sb      a0, 72(a4)             #; a4  = 0x80003198, 114 ~~> Byte[0x800031e0]
       0     8552        M 0x80001538 lw      a4, 0(a1)              #; a1  = 0x80003194, a4  <~~ Word[0x80003194]
       0     8573        M                                           #; (lsu) a4  <-- 5
       0     8574        M 0x8000153c addi    a4, a4, -1020          #; a4  = 5, (wrb) a4  <-- -1015
       0     8575        M 0x80001540 snez    a4, a4                 #; a4  = -1015, (wrb) a4  <-- 1
       0     8576        M 0x80001544 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     8577        M 0x80001548 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     8578        M 0x8000154c and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     8579        M 0x80001550 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015b0
       0     8584        M 0x800015b0 ret                            #; ra  = 0x800009c0, goto 0x800009c0
       0     8589        M 0x800009c0 addi    s0, s0, 1              #; s0  = 0x80002e39, (wrb) s0  <-- 0x80002e3a
       0     8590        M 0x800009c4 addi    s10, s10, 1            #; s10 = 0x80002e3b, (wrb) s10 <-- 0x80002e3c
       0     8591        M 0x800009c8 mv      s9, s1                 #; s1  = 5, (wrb) s9  <-- 5
       0     8592        M 0x800009cc lbu     a0, 0(s0)              #; s0  = 0x80002e3a, a0  <~~ Byte[0x80002e3a]
       0     8603        M                                           #; (lsu) a0  <-- 32
       0     8604        M 0x800009d0 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x800009a8
       0     8605        M 0x800009a8 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     8606        M 0x800009ac addi    s1, s9, 1              #; s9  = 5, (wrb) s1  <-- 6
       0     8608        M 0x800009b0 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     8609        M 0x800009b4 mv      a2, s9                 #; s9  = 5, (wrb) a2  <-- 5
       0     8610        M 0x800009b8 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     8611        M 0x800009bc jalr    s2                     #; s2  = 0x80001508, (wrb) ra  <-- 0x800009c0, goto 0x80001508
       0     8614        M 0x80001508 beqz    a0, pc + 168           #; a0  = 32, not taken
       0     8615        M 0x8000150c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     8617        M 0x80001510 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     8618        M 0x80001514 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     8619        M 0x80001518 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003518
       0     8620        M 0x8000151c addi    a3, a3, -900           #; a3  = 0x80003518, (wrb) a3  <-- 0x80003194
       0     8621        M                                           #; (acc) a1  <-- 0x00d605b3
       0     8622        M 0x80001520 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003194, (wrb) a1  <-- 0x80003194
       0     8623        M 0x80001524 lw      a4, 0(a1)              #; a1  = 0x80003194, a4  <~~ Word[0x80003194]
       0     8634        M                                           #; (lsu) a4  <-- 5
       0     8635        M 0x80001528 addi    a5, a4, 1              #; a4  = 5, (wrb) a5  <-- 6
       0     8636        M 0x8000152c sw      a5, 0(a1)              #; a1  = 0x80003194, 6 ~~> Word[0x80003194]
       0     8637        M 0x80001530 add     a4, a1, a4             #; a1  = 0x80003194, a4  = 5, (wrb) a4  <-- 0x80003199
       0     8638        M 0x80001534 sb      a0, 72(a4)             #; a4  = 0x80003199, 32 ~~> Byte[0x800031e1]
       0     8639        M 0x80001538 lw      a4, 0(a1)              #; a1  = 0x80003194, a4  <~~ Word[0x80003194]
       0     8660        M                                           #; (lsu) a4  <-- 6
       0     8661        M 0x8000153c addi    a4, a4, -1020          #; a4  = 6, (wrb) a4  <-- -1014
       0     8662        M 0x80001540 snez    a4, a4                 #; a4  = -1014, (wrb) a4  <-- 1
       0     8663        M 0x80001544 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
       0     8664        M 0x80001548 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
       0     8665        M 0x8000154c and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     8666        M 0x80001550 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015b0
       0     8671        M 0x800015b0 ret                            #; ra  = 0x800009c0, goto 0x800009c0
       0     8676        M 0x800009c0 addi    s0, s0, 1              #; s0  = 0x80002e3a, (wrb) s0  <-- 0x80002e3b
       0     8677        M 0x800009c4 addi    s10, s10, 1            #; s10 = 0x80002e3c, (wrb) s10 <-- 0x80002e3d
       0     8678        M 0x800009c8 mv      s9, s1                 #; s1  = 6, (wrb) s9  <-- 6
       0     8679        M 0x800009cc lbu     a0, 0(s0)              #; s0  = 0x80002e3b, a0  <~~ Byte[0x80002e3b]
       0     8690        M                                           #; (lsu) a0  <-- 61
       0     8691        M 0x800009d0 bnez    a0, pc - 40            #; a0  = 61, taken, goto 0x800009a8
       0     8692        M 0x800009a8 beq     a0, s6, pc + 48        #; a0  = 61, s6  = 37, not taken
       0     8693        M 0x800009ac addi    s1, s9, 1              #; s9  = 6, (wrb) s1  <-- 7
       0     8695        M 0x800009b0 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     8696        M 0x800009b4 mv      a2, s9                 #; s9  = 6, (wrb) a2  <-- 6
       0     8697        M 0x800009b8 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     8698        M 0x800009bc jalr    s2                     #; s2  = 0x80001508, (wrb) ra  <-- 0x800009c0, goto 0x80001508
       0     8701        M 0x80001508 beqz    a0, pc + 168           #; a0  = 61, not taken
       0     8702        M 0x8000150c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     8704        M 0x80001510 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     8705        M 0x80001514 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     8706        M 0x80001518 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003518
       0     8707        M 0x8000151c addi    a3, a3, -900           #; a3  = 0x80003518, (wrb) a3  <-- 0x80003194
       0     8708        M                                           #; (acc) a1  <-- 0x00d605b3
       0     8709        M 0x80001520 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003194, (wrb) a1  <-- 0x80003194
       0     8710        M 0x80001524 lw      a4, 0(a1)              #; a1  = 0x80003194, a4  <~~ Word[0x80003194]
       0     8721        M                                           #; (lsu) a4  <-- 6
       0     8722        M 0x80001528 addi    a5, a4, 1              #; a4  = 6, (wrb) a5  <-- 7
       0     8723        M 0x8000152c sw      a5, 0(a1)              #; a1  = 0x80003194, 7 ~~> Word[0x80003194]
       0     8724        M 0x80001530 add     a4, a1, a4             #; a1  = 0x80003194, a4  = 6, (wrb) a4  <-- 0x8000319a
       0     8725        M 0x80001534 sb      a0, 72(a4)             #; a4  = 0x8000319a, 61 ~~> Byte[0x800031e2]
       0     8726        M 0x80001538 lw      a4, 0(a1)              #; a1  = 0x80003194, a4  <~~ Word[0x80003194]
       0     8747        M                                           #; (lsu) a4  <-- 7
       0     8748        M 0x8000153c addi    a4, a4, -1020          #; a4  = 7, (wrb) a4  <-- -1013
       0     8749        M 0x80001540 snez    a4, a4                 #; a4  = -1013, (wrb) a4  <-- 1
       0     8750        M 0x80001544 addi    a0, a0, -10            #; a0  = 61, (wrb) a0  <-- 51
       0     8751        M 0x80001548 snez    a0, a0                 #; a0  = 51, (wrb) a0  <-- 1
       0     8752        M 0x8000154c and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     8753        M 0x80001550 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015b0
       0     8758        M 0x800015b0 ret                            #; ra  = 0x800009c0, goto 0x800009c0
       0     8763        M 0x800009c0 addi    s0, s0, 1              #; s0  = 0x80002e3b, (wrb) s0  <-- 0x80002e3c
       0     8764        M 0x800009c4 addi    s10, s10, 1            #; s10 = 0x80002e3d, (wrb) s10 <-- 0x80002e3e
       0     8765        M 0x800009c8 mv      s9, s1                 #; s1  = 7, (wrb) s9  <-- 7
       0     8766        M 0x800009cc lbu     a0, 0(s0)              #; s0  = 0x80002e3c, a0  <~~ Byte[0x80002e3c]
       0     8777        M                                           #; (lsu) a0  <-- 32
       0     8778        M 0x800009d0 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x800009a8
       0     8779        M 0x800009a8 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     8780        M 0x800009ac addi    s1, s9, 1              #; s9  = 7, (wrb) s1  <-- 8
       0     8782        M 0x800009b0 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     8783        M 0x800009b4 mv      a2, s9                 #; s9  = 7, (wrb) a2  <-- 7
       0     8784        M 0x800009b8 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     8785        M 0x800009bc jalr    s2                     #; s2  = 0x80001508, (wrb) ra  <-- 0x800009c0, goto 0x80001508
       0     8788        M 0x80001508 beqz    a0, pc + 168           #; a0  = 32, not taken
       0     8789        M 0x8000150c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     8791        M 0x80001510 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     8792        M 0x80001514 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     8793        M 0x80001518 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003518
       0     8794        M 0x8000151c addi    a3, a3, -900           #; a3  = 0x80003518, (wrb) a3  <-- 0x80003194
       0     8795        M                                           #; (acc) a1  <-- 0x00d605b3
       0     8796        M 0x80001520 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003194, (wrb) a1  <-- 0x80003194
       0     8797        M 0x80001524 lw      a4, 0(a1)              #; a1  = 0x80003194, a4  <~~ Word[0x80003194]
       0     8808        M                                           #; (lsu) a4  <-- 7
       0     8809        M 0x80001528 addi    a5, a4, 1              #; a4  = 7, (wrb) a5  <-- 8
       0     8810        M 0x8000152c sw      a5, 0(a1)              #; a1  = 0x80003194, 8 ~~> Word[0x80003194]
       0     8811        M 0x80001530 add     a4, a1, a4             #; a1  = 0x80003194, a4  = 7, (wrb) a4  <-- 0x8000319b
       0     8812        M 0x80001534 sb      a0, 72(a4)             #; a4  = 0x8000319b, 32 ~~> Byte[0x800031e3]
       0     8813        M 0x80001538 lw      a4, 0(a1)              #; a1  = 0x80003194, a4  <~~ Word[0x80003194]
       0     8834        M                                           #; (lsu) a4  <-- 8
       0     8835        M 0x8000153c addi    a4, a4, -1020          #; a4  = 8, (wrb) a4  <-- -1012
       0     8836        M 0x80001540 snez    a4, a4                 #; a4  = -1012, (wrb) a4  <-- 1
       0     8837        M 0x80001544 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
       0     8838        M 0x80001548 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
       0     8839        M 0x8000154c and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     8840        M 0x80001550 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015b0
       0     8845        M 0x800015b0 ret                            #; ra  = 0x800009c0, goto 0x800009c0
       0     8850        M 0x800009c0 addi    s0, s0, 1              #; s0  = 0x80002e3c, (wrb) s0  <-- 0x80002e3d
       0     8851        M 0x800009c4 addi    s10, s10, 1            #; s10 = 0x80002e3e, (wrb) s10 <-- 0x80002e3f
       0     8852        M 0x800009c8 mv      s9, s1                 #; s1  = 8, (wrb) s9  <-- 8
       0     8853        M 0x800009cc lbu     a0, 0(s0)              #; s0  = 0x80002e3d, a0  <~~ Byte[0x80002e3d]
       0     8864        M                                           #; (lsu) a0  <-- 37
       0     8865        M 0x800009d0 bnez    a0, pc - 40            #; a0  = 37, taken, goto 0x800009a8
       0     8866        M 0x800009a8 beq     a0, s6, pc + 48        #; a0  = 37, s6  = 37, taken, goto 0x800009d8
       0     8867        M 0x800009d8 li      s0, 0                  #; (wrb) s0  <-- 0
       0     8868        M 0x800009dc j       pc + 0x10              #; goto 0x800009ec
       0     8871        M 0x800009ec lbu     a0, -1(s10)            #; s10 = 0x80002e3f, a0  <~~ Byte[0x80002e3e]
       0     8882        M                                           #; (lsu) a0  <-- 102
       0     8883        M 0x800009f0 addi    a1, a0, -32            #; a0  = 102, (wrb) a1  <-- 70
       0     8884        M 0x800009f4 bltu    s11, a1, pc + 56       #; s11 = 16, a1  = 70, taken, goto 0x80000a2c
       0     8887        M 0x80000a2c addi    a1, a0, -48            #; a0  = 102, (wrb) a1  <-- 54
       0     8890        M 0x80000a30 andi    a2, a1, 255            #; a1  = 54, (wrb) a2  <-- 54
       0     8891        M 0x80000a34 addi    a1, s10, -1            #; s10 = 0x80002e3f, (wrb) a1  <-- 0x80002e3e
       0     8892        M 0x80000a38 li      a3, 9                  #; (wrb) a3  <-- 9
       0     8893        M 0x80000a3c bltu    a3, a2, pc + 124       #; a3  = 9, a2  = 54, taken, goto 0x80000ab8
       0     8896        M 0x80000ab8 li      a2, 42                 #; (wrb) a2  <-- 42
       0     8897        M 0x80000abc bne     a0, a2, pc + 80        #; a0  = 102, a2  = 42, taken, goto 0x80000b0c
       0     8901        M 0x80000b0c li      s6, 0                  #; (wrb) s6  <-- 0
       0     8904        M 0x80000b10 mv      s10, a1                #; a1  = 0x80002e3e, (wrb) s10 <-- 0x80002e3e
       0     8905        M 0x80000b14 beq     a0, s7, pc - 164       #; a0  = 102, s7  = 46, not taken
       0     8906        M 0x80000b18 li      s7, 0                  #; (wrb) s7  <-- 0
       0     8907        M 0x80000b1c j       pc + 0xc               #; goto 0x80000b28
       0     8910        M 0x80000b28 addi    a1, a0, -104           #; a0  = 102, (wrb) a1  <-- -2
       0     8911        M 0x80000b2c srli    a2, a1, 1              #; a1  = -2, (wrb) a2  <-- 0x7fffffff
       0     8913        M 0x80000b30 slli    a1, a1, 31             #; a1  = -2, (wrb) a1  <-- 0
       0     8914        M 0x80000b34 or      a1, a1, a2             #; a1  = 0, a2  = 0x7fffffff, (wrb) a1  <-- 0x7fffffff
       0     8915        M 0x80000b38 li      a2, 9                  #; (wrb) a2  <-- 9
       0     8916        M 0x80000b3c bltu    a2, a1, pc + 100       #; a2  = 9, a1  = 0x7fffffff, taken, goto 0x80000ba0
       0     8919        M 0x80000ba0 addi    a1, a0, -37            #; a0  = 102, (wrb) a1  <-- 65
       0     8920        M 0x80000ba4 li      a2, 83                 #; (wrb) a2  <-- 83
       0     8921        M 0x80000ba8 bltu    a2, a1, pc + 264       #; a2  = 83, a1  = 65, not taken
       0     8922        M 0x80000bac slli    a1, a1, 2              #; a1  = 65, (wrb) a1  <-- 260
       0     8923        M 0x80000bb0 auipc   a2, 0x2                #; (wrb) a2  <-- 0x80002bb0
       0     8924        M 0x80000bb4 addi    a2, a2, 784            #; a2  = 0x80002bb0, (wrb) a2  <-- 0x80002ec0
       0     8925        M 0x80000bb8 add     a1, a1, a2             #; a1  = 260, a2  = 0x80002ec0, (wrb) a1  <-- 0x80002fc4
       0     8926        M 0x80000bbc lw      a2, 0(a1)              #; a1  = 0x80002fc4, a2  <~~ Word[0x80002fc4]
       0     8927        M 0x80000bc0 li      a1, 8                  #; (wrb) a1  <-- 8
       0     8928        M 0x80000bc4 li      s8, 16                 #; (wrb) s8  <-- 16
       0     8937        M                                           #; (lsu) a2  <-- 0x80000bf8
       0     8938        M 0x80000bc8 jr      a2                     #; a2  = 0x80000bf8, goto 0x80000bf8
       0     8941        M 0x80000bf8 li      a1, 70                 #; (wrb) a1  <-- 70
       0     8942        M 0x80000bfc bne     a0, a1, pc + 8         #; a0  = 102, a1  = 70, taken, goto 0x80000c04
       0     8953        M 0x80000c04 addi    a0, s3, 7              #; s3  = 0x0011ff24, (wrb) a0  <-- 0x0011ff2b
       0     8954        M 0x80000c08 andi    a0, a0, -8             #; a0  = 0x0011ff2b, (wrb) a0  <-- 0x0011ff28
       0     8957        M 0x80000c0c fld     fa0, 0(a0)             #; fa0  <~~ Doub[0x0011ff28]
       0     8958        M                                           #; (f:lsu) fa0  <-- 0.0
       0     8965        M 0x80000c10 addi    s3, a0, 8              #; a0  = 0x0011ff28, (wrb) s3  <-- 0x0011ff30
       0     8966        M 0x80000c14 mv      a0, s2                 #; s2  = 0x80001508, (wrb) a0  <-- 0x80001508
       0     8967        M 0x80000c18 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     8968        M 0x80000c1c mv      a2, s9                 #; s9  = 8, (wrb) a2  <-- 8
       0     8977        M 0x80000c20 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     8978        M 0x80000c24 mv      a4, s7                 #; s7  = 0, (wrb) a4  <-- 0
       0     8979        M 0x80000c28 mv      a5, s6                 #; s6  = 0, (wrb) a5  <-- 0
       0     8980        M 0x80000c2c mv      a6, s0                 #; s0  = 0, (wrb) a6  <-- 0
       0     8989        M 0x80000c30 auipc   ra, 0x1                #; (wrb) ra  <-- 0x80001c30
       0     8990        M 0x80000c34 jalr    ra, ra, -1656          #; ra  = 0x80001c30, (wrb) ra  <-- 0x80000c38, goto 0x800015b8
       0     8994        M 0x800015b8 addi    sp, sp, -112           #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011fe30
       0     8995        M 0x800015bc sw      ra, 108(sp)            #; sp  = 0x0011fe30, 0x80000c38 ~~> Word[0x0011fe9c]
       0     8997        M 0x800015c0 sw      s0, 104(sp)            #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe98]
       0     8998        M 0x800015c4 sw      s1, 100(sp)            #; sp  = 0x0011fe30, 8 ~~> Word[0x0011fe94]
       0     8999        M 0x800015c8 sw      s2, 96(sp)             #; sp  = 0x0011fe30, 0x80001508 ~~> Word[0x0011fe90]
       0     9000        M 0x800015cc sw      s3, 92(sp)             #; sp  = 0x0011fe30, 0x0011ff30 ~~> Word[0x0011fe8c]
       0     9009        M 0x800015d0 sw      s4, 88(sp)             #; sp  = 0x0011fe30, 0x0011ff17 ~~> Word[0x0011fe88]
       0     9010        M 0x800015d4 sw      s5, 84(sp)             #; sp  = 0x0011fe30, -1 ~~> Word[0x0011fe84]
       0     9011        M 0x800015d8 sw      s6, 80(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe80]
       0     9012        M 0x800015dc sw      s7, 76(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe7c]
       0     9021        M 0x800015e0 sw      s8, 72(sp)             #; sp  = 0x0011fe30, 16 ~~> Word[0x0011fe78]
       0     9022        M 0x800015e4 sw      s9, 68(sp)             #; sp  = 0x0011fe30, 8 ~~> Word[0x0011fe74]
       0     9023        M 0x800015e8 sw      s10, 64(sp)            #; sp  = 0x0011fe30, 0x80002e3e ~~> Word[0x0011fe70]
       0     9026        M 0x800015ec fsd     fs0, 56(sp)            #; 0.0 ~~> Doub[0x0011fe68]
       0     9035        M 0x800015f8 auipc   s1, 0x2                #; (wrb) s1  <-- 0x800035f8
                         M 0x800015f0 fsd     fs1, 48(sp)            #; 0.0 ~~> Doub[0x0011fe60]
       0     9036        M 0x800015fc addi    s1, s1, -1296          #; s1  = 0x800035f8, (wrb) s1  <-- 0x800030e8
                         M 0x800015f4 fsd     fs2, 40(sp)            #; 0.0 ~~> Doub[0x0011fe58]
       0     9047        M 0x80001608 mv      s5, a6                 #; a6  = 0, (wrb) s5  <-- 0
                         M 0x80001600 fld     ft0, 0(s1)             #; ft0  <~~ Doub[0x800030e8]
       0     9048        M 0x8000160c mv      s2, a5                 #; a5  = 0, (wrb) s2  <-- 0
       0     9056        M                                           #; (f:lsu) ft0  <-- -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     9057        M 0x80001610 mv      s3, a3                 #; a3  = -1, (wrb) s3  <-- -1
                         M 0x80001604 fle.d   s1, ft0, fa0           #; ft0  = -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000, fa0  = 0.0
       0     9058        M 0x80001614 mv      s4, a2                 #; a2  = 8, (wrb) s4  <-- 8
       0     9059        M 0x80001618 mv      s6, a1                 #; a1  = 0x0011ff17, (wrb) s6  <-- 0x0011ff17
       0     9060        M 0x8000161c mv      s7, a0                 #; a0  = 0x80001508, (wrb) s7  <-- 0x80001508
       0     9069        M 0x80001620 bnez    s1, pc + 240           #; s1  = 1, taken, goto 0x80001710
       0     9093        M 0x80001714 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003714
       0     9094        M 0x80001718 addi    a0, a0, -1572          #; a0  = 0x80003714, (wrb) a0  <-- 0x800030f0
                         M 0x80001710 fsgnj.d fs0, fa0, fa0          #; fa0  = 0.0, fa0  = 0.0
       0     9095        M                                           #; (f:fpu) fs0  <-- 0.0
       0     9097        M 0x8000171c fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x800030f0]
       0     9106        M                                           #; (f:lsu) ft0  <-- 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     9107        M 0x80001720 fle.d   a0, fa0, ft0           #; fa0  = 0.0, ft0  = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     9109        M                                           #; (acc) t3  <-- 0x00051e63
       0     9110        M 0x80001724 bnez    a0, pc + 28            #; a0  = 1, taken, goto 0x80001740
       0     9127        M 0x80001740 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003740
       0     9128        M 0x80001744 addi    a0, a0, -1608          #; a0  = 0x80003740, (wrb) a0  <-- 0x800030f8
       0     9130        M 0x8000174c auipc   a0, 0x2                #; (wrb) a0  <-- 0x8000374c
       0     9131        M 0x80001748 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x800030f8]
       0     9139        M 0x80001750 addi    a0, a0, -1612          #; a0  = 0x8000374c, (wrb) a0  <-- 0x80003100
       0     9140        M                                           #; (f:lsu) ft0  <-- 1000000000.0000000
       0     9142        M 0x80001754 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80003100]
       0     9143        M 0x80001758 fle.d   a0, fs0, ft0           #; fs0  = 0.0, ft0  = 1000000000.0000000
       0     9151        M                                           #; (f:lsu) ft1  <-- -1000000000.0000000
       0     9152        M 0x8000175c fle.d   a1, ft1, fs0           #; ft1  = -1000000000.0000000, fs0  = 0.0
       0     9154        M                                           #; (acc) a0  <-- 0x00b57533
       0     9155        M 0x80001760 and     a0, a0, a1             #; a0  = 1, a1  = 1, (wrb) a0  <-- 1
       0     9156        M 0x80001764 bnez    a0, pc + 252           #; a0  = 1, taken, goto 0x80001860
       0     9174        M 0x80001860 andi    a0, s5, 1024           #; s5  = 0, (wrb) a0  <-- 0
       0     9175        M 0x80001864 li      s8, 6                  #; (wrb) s8  <-- 6
       0     9176        M 0x80001868 beqz    a0, pc + 8             #; a0  = 0, taken, goto 0x80001870
       0     9186        M 0x80001870 li      a0, 10                 #; (wrb) a0  <-- 10
       0     9188        M 0x80001878 bltu    s8, a0, pc + 56        #; s8  = 6, a0  = 10, taken, goto 0x800018b0
       0     9189        M 0x80001874 fsgnjx.d fs2, fs0, fs0         #; fs0  = 0.0, fs0  = 0.0
       0     9190        M                                           #; (f:fpu) fs2  <-- 0.0
       0     9209        M 0x800018b0 li      s0, 0                  #; (wrb) s0  <-- 0
       0     9210        M 0x800018b4 slli    a0, s8, 3              #; s8  = 6, (wrb) a0  <-- 48
       0     9211        M 0x800018b8 auipc   a1, 0x1                #; (wrb) a1  <-- 0x800028b8
       0     9212        M 0x800018bc addi    a1, a1, 1880           #; a1  = 0x800028b8, (wrb) a1  <-- 0x80003010
       0     9221        M 0x800018c0 add     a0, a0, a1             #; a0  = 48, a1  = 0x80003010, (wrb) a0  <-- 0x80003040
       0     9224        M 0x800018c4 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80003040]
       0     9225        M 0x800018c8 fcvt.w.d s1, fs2               #; fs2  = 0.0
       0     9229        M 0x800018cc fcvt.d.w ft0, s1               #; ac1  = 0
       0     9230        M                                           #; (f:fpu) ft0  <-- 0.0
       0     9233        M                                           #; (f:lsu) ft1  <-- 1000000.0000000
       0     9235        M 0x800018d8 auipc   a0, 0x2                #; (wrb) a0  <-- 0x800038d8
                         M 0x800018d0 fsub.d  ft0, fs2, ft0          #; fs2  = 0.0, ft0  = 0.0
       0     9236        M 0x800018dc addi    a0, a0, -2000          #; a0  = 0x800038d8, (wrb) a0  <-- 0x80003108
       0     9238        M                                           #; (f:fpu) ft0  <-- 0.0
       0     9239        M 0x800018d4 fmul.d  ft2, ft1, ft0          #; ft1  = 1000000.0000000, ft0  = 0.0
       0     9242        M                                           #; (f:fpu) ft2  <-- 0.0
       0     9247        M 0x800018e0 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003108]
       0     9248        M 0x800018e4 fcvt.wu.d a0, ft2              #; ft2  = 0.0
       0     9250        M                                           #; (acc) gp  <-- 0xd21501d3
       0     9252        M 0x800018e8 fcvt.d.wu ft3, a0              #; ac1  = 0
       0     9253        M                                           #; (f:fpu) ft3  <-- 0.0
       0     9254        M 0x800018ec fsub.d  ft2, ft2, ft3          #; ft2  = 0.0, ft3  = 0.0
       0     9256        M                                           #; (f:lsu) ft0  <-- 0.5
       0     9257        M                                           #; (f:fpu) ft2  <-- 0.0
       0     9258        M 0x800018f0 fle.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
       0     9261        M 0x800018f4 bnez    a1, pc + 32            #; a1  = 1, taken, goto 0x80001914
       0     9281        M 0x80001914 flt.d   a1, ft2, ft0           #; ft2  = 0.0, ft0  = 0.5
       0     9283        M                                           #; (acc) s4  <-- 0x00059a63
       0     9284        M 0x80001918 bnez    a1, pc + 20            #; a1  = 1, taken, goto 0x8000192c
       0     9293        M 0x8000192c fcvt.d.w fs1, zero             #; ac1  = 0
       0     9294        M                                           #; (f:fpu) fs1  <-- 0.0
       0     9304        M 0x80001930 beqz    s8, pc + 216           #; s8  = 6, not taken
       0     9305        M 0x80001934 li      a2, 0                  #; (wrb) a2  <-- 0
       0     9306        M 0x80001938 addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
       0     9307        M 0x8000193c add     t1, a1, s0             #; a1  = 0x0011fe38, s0  = 0, (wrb) t1  <-- 0x0011fe38
       0     9316        M 0x80001940 li      t0, 32                 #; (wrb) t0  <-- 32
       0     9317        M 0x80001944 sub     a4, t0, s0             #; t0  = 32, s0  = 0, (wrb) a4  <-- 32
       0     9318        M 0x80001948 lui     a1, 0xccccd            #; (wrb) a1  <-- 0xccccd000
       0     9319        M 0x8000194c addi    t2, a1, -819           #; a1  = 0xccccd000, (wrb) t2  <-- 0xcccccccd
       0     9328        M 0x80001950 li      a6, 10                 #; (wrb) a6  <-- 10
       0     9329        M 0x80001954 li      a7, 9                  #; (wrb) a7  <-- 9
       0     9330        M 0x80001958 beq     a4, a2, pc + 200       #; a4  = 32, a2  = 0, not taken
       0     9331        M 0x8000195c mv      a1, a0                 #; a0  = 0, (wrb) a1  <-- 0
       0     9340        M 0x80001960 mulhu   a0, a0, t2             #; a0  = 0, t2  = 0xcccccccd
       0     9343        M                                           #; (acc) a0  <-- 0x00355513
       0     9344        M 0x80001964 srli    a0, a0, 3              #; a0  = 0, (wrb) a0  <-- 0
       0     9345        M 0x80001968 mul     a3, a0, a6             #; a0  = 0, a6  = 10
       0     9348        M                                           #; (acc) a3  <-- 0x40d586b3
       0     9349        M 0x8000196c sub     a3, a1, a3             #; a1  = 0, a3  = 0, (wrb) a3  <-- 0
       0     9352        M 0x80001970 ori     a3, a3, 48             #; a3  = 0, (wrb) a3  <-- 48
       0     9353        M 0x80001974 add     a5, t1, a2             #; t1  = 0x0011fe38, a2  = 0, (wrb) a5  <-- 0x0011fe38
       0     9354        M 0x80001978 sb      a3, 0(a5)              #; a5  = 0x0011fe38, 48 ~~> Byte[0x0011fe38]
       0     9355        M 0x8000197c addi    a2, a2, 1              #; a2  = 0, (wrb) a2  <-- 1
       0     9364        M 0x80001980 bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 0, not taken
       0     9365        M 0x80001984 add     a0, s0, a2             #; s0  = 0, a2  = 1, (wrb) a0  <-- 1
       0     9366        M 0x80001988 addi    a1, a0, -1             #; a0  = 1, (wrb) a1  <-- 0
       0     9367        M 0x8000198c li      a3, 30                 #; (wrb) a3  <-- 30
       0     9377        M 0x80001990 sltu    a3, a3, a1             #; a3  = 30, a1  = 0, (wrb) a3  <-- 0
       0     9378        M 0x80001994 xor     a4, s8, a2             #; s8  = 6, a2  = 1, (wrb) a4  <-- 7
       0     9379        M 0x80001998 seqz    a4, a4                 #; a4  = 7, (wrb) a4  <-- 0
       0     9380        M 0x8000199c or      a3, a3, a4             #; a3  = 0, a4  = 0, (wrb) a3  <-- 0
       0     9389        M 0x800019a0 bnez    a3, pc + 136           #; a3  = 0, not taken
       0     9390        M 0x800019a4 addi    a0, sp, 8              #; sp  = 0x0011fe30, (wrb) a0  <-- 0x0011fe38
       0     9391        M 0x800019a8 add     a0, a0, s0             #; a0  = 0x0011fe38, s0  = 0, (wrb) a0  <-- 0x0011fe38
       0     9392        M 0x800019ac not     a1, a2                 #; a2  = 1, (wrb) a1  <-- -2
       0     9401        M 0x800019b0 add     s8, a1, s8             #; a1  = -2, s8  = 6, (wrb) s8  <-- 4
       0     9402        M 0x800019b4 add     s0, s0, a2             #; s0  = 0, a2  = 1, (wrb) s0  <-- 1
       0     9403        M 0x800019b8 li      a1, 31                 #; (wrb) a1  <-- 31
       0     9404        M 0x800019bc sub     a3, a1, s0             #; a1  = 31, s0  = 1, (wrb) a3  <-- 30
       0     9413        M 0x800019c0 add     a0, a0, a2             #; a0  = 0x0011fe38, a2  = 1, (wrb) a0  <-- 0x0011fe39
       0     9414        M 0x800019c4 mv      a1, s8                 #; s8  = 4, (wrb) a1  <-- 4
       0     9415        M 0x800019c8 bltu    s8, a3, pc + 8         #; s8  = 4, a3  = 30, taken, goto 0x800019d0
       0     9425        M 0x800019d0 addi    a2, a1, 1              #; a1  = 4, (wrb) a2  <-- 5
       0     9426        M 0x800019d4 li      a1, 48                 #; (wrb) a1  <-- 48
       0     9427        M 0x800019d8 auipc   ra, 0xfffff            #; (wrb) ra  <-- 0x800009d8
       0     9428        M 0x800019dc jalr    ra, ra, -1152          #; ra  = 0x800009d8, (wrb) ra  <-- 0x800019e0, goto 0x80000558
       0     9448        M 0x80000558 li      t1, 15                 #; (wrb) t1  <-- 15
       0     9449        M 0x8000055c mv      a4, a0                 #; a0  = 0x0011fe39, (wrb) a4  <-- 0x0011fe39
       0     9460        M 0x80000560 bgeu    t1, a2, pc + 60        #; t1  = 15, a2  = 5, taken, goto 0x8000059c
       0     9483        M 0x8000059c sub     a3, t1, a2             #; t1  = 15, a2  = 5, (wrb) a3  <-- 10
       0     9495        M 0x800005a0 slli    a3, a3, 2              #; a3  = 10, (wrb) a3  <-- 40
       0     9496        M 0x800005a4 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800005a4
       0     9497        M 0x800005a8 add     a3, a3, t0             #; a3  = 40, t0  = 0x800005a4, (wrb) a3  <-- 0x800005cc
       0     9498        M 0x800005ac jalr    zero, a3, 12           #; a3  = 0x800005cc, goto 0x800005d8
       0     9518        M 0x800005d8 sb      a1, 4(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3d]
       0     9519        M 0x800005dc sb      a1, 3(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3c]
       0     9530        M 0x800005e0 sb      a1, 2(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3b]
       0     9531        M 0x800005e4 sb      a1, 1(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe3a]
       0     9532        M 0x800005e8 sb      a1, 0(a4)              #; a4  = 0x0011fe39, 48 ~~> Byte[0x0011fe39]
       0     9533        M 0x800005ec ret                            #; ra  = 0x800019e0, goto 0x800019e0
       0     9544        M 0x800019e0 li      a0, 0                  #; (wrb) a0  <-- 0
       0     9545        M 0x800019e4 add     a1, s0, a0             #; s0  = 1, a0  = 0, (wrb) a1  <-- 1
       0     9546        M 0x800019e8 sltiu   a1, a1, 31             #; a1  = 1, (wrb) a1  <-- 1
       0     9547        M 0x800019ec xor     a2, s8, a0             #; s8  = 4, a0  = 0, (wrb) a2  <-- 4
       0     9556        M 0x800019f0 snez    a2, a2                 #; a2  = 4, (wrb) a2  <-- 1
       0     9557        M 0x800019f4 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     9558        M 0x800019f8 addi    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0     9559        M 0x800019fc bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x800019e4
       0     9560        M 0x800019e4 add     a1, s0, a0             #; s0  = 1, a0  = 1, (wrb) a1  <-- 2
       0     9561        M 0x800019e8 sltiu   a1, a1, 31             #; a1  = 2, (wrb) a1  <-- 1
       0     9562        M 0x800019ec xor     a2, s8, a0             #; s8  = 4, a0  = 1, (wrb) a2  <-- 5
       0     9563        M 0x800019f0 snez    a2, a2                 #; a2  = 5, (wrb) a2  <-- 1
       0     9564        M 0x800019f4 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     9565        M 0x800019f8 addi    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 2
       0     9566        M 0x800019fc bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x800019e4
       0     9567        M 0x800019e4 add     a1, s0, a0             #; s0  = 1, a0  = 2, (wrb) a1  <-- 3
       0     9568        M 0x800019e8 sltiu   a1, a1, 31             #; a1  = 3, (wrb) a1  <-- 1
       0     9569        M 0x800019ec xor     a2, s8, a0             #; s8  = 4, a0  = 2, (wrb) a2  <-- 6
       0     9570        M 0x800019f0 snez    a2, a2                 #; a2  = 6, (wrb) a2  <-- 1
       0     9571        M 0x800019f4 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     9572        M 0x800019f8 addi    a0, a0, 1              #; a0  = 2, (wrb) a0  <-- 3
       0     9573        M 0x800019fc bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x800019e4
       0     9574        M 0x800019e4 add     a1, s0, a0             #; s0  = 1, a0  = 3, (wrb) a1  <-- 4
       0     9575        M 0x800019e8 sltiu   a1, a1, 31             #; a1  = 4, (wrb) a1  <-- 1
       0     9576        M 0x800019ec xor     a2, s8, a0             #; s8  = 4, a0  = 3, (wrb) a2  <-- 7
       0     9577        M 0x800019f0 snez    a2, a2                 #; a2  = 7, (wrb) a2  <-- 1
       0     9578        M 0x800019f4 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     9579        M 0x800019f8 addi    a0, a0, 1              #; a0  = 3, (wrb) a0  <-- 4
       0     9580        M 0x800019fc bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x800019e4
       0     9581        M 0x800019e4 add     a1, s0, a0             #; s0  = 1, a0  = 4, (wrb) a1  <-- 5
       0     9582        M 0x800019e8 sltiu   a1, a1, 31             #; a1  = 5, (wrb) a1  <-- 1
       0     9583        M 0x800019ec xor     a2, s8, a0             #; s8  = 4, a0  = 4, (wrb) a2  <-- 0
       0     9584        M 0x800019f0 snez    a2, a2                 #; a2  = 0, (wrb) a2  <-- 0
       0     9585        M 0x800019f4 and     a2, a1, a2             #; a1  = 1, a2  = 0, (wrb) a2  <-- 0
       0     9586        M 0x800019f8 addi    a0, a0, 1              #; a0  = 4, (wrb) a0  <-- 5
       0     9587        M 0x800019fc bnez    a2, pc - 24            #; a2  = 0, not taken
       0     9599        M 0x80001a00 add     a0, s0, a0             #; s0  = 1, a0  = 5, (wrb) a0  <-- 6
       0     9600        M 0x80001a04 j       pc + 0x28              #; goto 0x80001a2c
       0     9611        M 0x80001a2c beqz    a1, pc + 28            #; a1  = 1, not taken
       0     9623        M 0x80001a30 addi    s0, a0, 1              #; a0  = 6, (wrb) s0  <-- 7
       0     9624        M 0x80001a34 addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
       0     9625        M 0x80001a38 add     a0, a1, a0             #; a1  = 0x0011fe38, a0  = 6, (wrb) a0  <-- 0x0011fe3e
       0     9626        M 0x80001a3c li      a1, 46                 #; (wrb) a1  <-- 46
       0     9635        M 0x80001a40 sb      a1, 0(a0)              #; a0  = 0x0011fe3e, 46 ~~> Byte[0x0011fe3e]
       0     9636        M 0x80001a44 j       pc + 0x8               #; goto 0x80001a4c
       0     9637        M 0x80001a4c li      a0, 32                 #; (wrb) a0  <-- 32
       0     9649        M 0x80001a50 mv      t0, s0                 #; s0  = 7, (wrb) t0  <-- 7
       0     9650        M 0x80001a54 bltu    a0, s0, pc + 8         #; a0  = 32, s0  = 7, not taken
       0     9651        M 0x80001a58 li      t0, 32                 #; (wrb) t0  <-- 32
       0     9653        M 0x80001a5c flt.d   s9, fs0, fs1           #; fs0  = 0.0, fs1  = 0.0
       0     9661        M 0x80001a60 lui     a0, 0x66666            #; (wrb) a0  <-- 0x66666000
       0     9662        M 0x80001a64 addi    a1, a0, 1639           #; a0  = 0x66666000, (wrb) a1  <-- 0x66666667
       0     9663        M 0x80001a68 li      a6, 10                 #; (wrb) a6  <-- 10
       0     9664        M 0x80001a6c addi    a3, sp, 8              #; sp  = 0x0011fe30, (wrb) a3  <-- 0x0011fe38
       0     9673        M 0x80001a70 li      a4, 18                 #; (wrb) a4  <-- 18
       0     9674        M 0x80001a74 beq     t0, s0, pc + 64        #; t0  = 32, s0  = 7, not taken
       0     9675        M 0x80001a78 mulh    a0, s1, a1             #; s1  = 0, a1  = 0x66666667
       0     9678        M                                           #; (acc) a5  <-- 0x01f55793
       0     9679        M 0x80001a7c srli    a5, a0, 31             #; a0  = 0, (wrb) a5  <-- 0
       0     9685        M 0x80001a80 srai    a0, a0, 2              #; a0  = 0, (wrb) a0  <-- 0
       0     9686        M 0x80001a84 add     a0, a0, a5             #; a0  = 0, a5  = 0, (wrb) a0  <-- 0
       0     9687        M 0x80001a88 mul     a5, a0, a6             #; a0  = 0, a6  = 10
       0     9690        M                                           #; (acc) a5  <-- 0x40f487b3
       0     9691        M 0x80001a8c sub     a5, s1, a5             #; s1  = 0, a5  = 0, (wrb) a5  <-- 0
       0     9697        M 0x80001a90 addi    a5, a5, 48             #; a5  = 0, (wrb) a5  <-- 48
       0     9698        M 0x80001a94 addi    s8, s0, 1              #; s0  = 7, (wrb) s8  <-- 8
       0     9699        M 0x80001a98 add     s0, a3, s0             #; a3  = 0x0011fe38, s0  = 7, (wrb) s0  <-- 0x0011fe3f
       0     9700        M 0x80001a9c addi    a2, s1, 9              #; s1  = 0, (wrb) a2  <-- 9
       0     9709        M 0x80001aa0 sb      a5, 0(s0)              #; s0  = 0x0011fe3f, 48 ~~> Byte[0x0011fe3f]
       0     9710        M 0x80001aa4 mv      s0, s8                 #; s8  = 8, (wrb) s0  <-- 8
       0     9711        M 0x80001aa8 mv      s1, a0                 #; a0  = 0, (wrb) s1  <-- 0
       0     9712        M 0x80001aac bltu    a4, a2, pc - 56        #; a4  = 18, a2  = 9, not taken
       0     9724        M 0x80001ab0 j       pc + 0x8               #; goto 0x80001ab8
       0     9725        M 0x80001ab8 andi    s1, s5, 3              #; s5  = 0, (wrb) s1  <-- 0
       0     9726        M 0x80001abc li      a0, 1                  #; (wrb) a0  <-- 1
       0     9737        M 0x80001ac0 bne     s1, a0, pc + 108       #; s1  = 0, a0  = 1, taken, goto 0x80001b2c
       0     9760        M 0x80001b2c li      a0, 31                 #; (wrb) a0  <-- 31
       0     9772        M 0x80001b30 bltu    a0, s8, pc + 84        #; a0  = 31, s8  = 8, not taken
       0     9773        M 0x80001b34 beqz    s9, pc + 24            #; s9  = 0, taken, goto 0x80001b4c
       0     9784        M 0x80001b4c andi    a0, s5, 4              #; s5  = 0, (wrb) a0  <-- 0
       0     9796        M 0x80001b50 bnez    a0, pc + 32            #; a0  = 0, not taken
       0     9797        M 0x80001b54 andi    a0, s5, 8              #; s5  = 0, (wrb) a0  <-- 0
       0     9798        M 0x80001b58 beqz    a0, pc + 44            #; a0  = 0, taken, goto 0x80001b84
       0     9819        M 0x80001b84 snez    a0, s1                 #; s1  = 0, (wrb) a0  <-- 0
       0     9820        M 0x80001b88 sltu    a1, s8, s2             #; s8  = 8, s2  = 0, (wrb) a1  <-- 0
       0     9821        M 0x80001b8c xori    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
       0     9831        M 0x80001b90 or      a0, a0, a1             #; a0  = 0, a1  = 1, (wrb) a0  <-- 1
       0     9832        M 0x80001b94 andi    s5, s5, 2              #; s5  = 0, (wrb) s5  <-- 0
       0     9833        M 0x80001b98 mv      s0, s4                 #; s4  = 8, (wrb) s0  <-- 8
       0     9834        M 0x80001b9c bnez    a0, pc + 44            #; a0  = 1, taken, goto 0x80001bc8
       0     9854        M 0x80001bc8 srli    s5, s5, 1              #; s5  = 0, (wrb) s5  <-- 0
       0     9855        M 0x80001bcc beqz    s8, pc + 56            #; s8  = 8, not taken
       0     9866        M 0x80001bd0 addi    s9, sp, 7              #; sp  = 0x0011fe30, (wrb) s9  <-- 0x0011fe37
       0     9867        M 0x80001bd4 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 8, (wrb) a0  <-- 0x0011fe3f
       0     9868        M 0x80001bd8 lbu     a0, 0(a0)              #; a0  = 0x0011fe3f, a0  <~~ Byte[0x0011fe3f]
       0     9869        M 0x80001bdc addi    s10, s8, -1            #; s8  = 8, (wrb) s10 <-- 7
       0     9871        M                                           #; (lsu) a0  <-- 48
       0     9878        M 0x80001be0 addi    s1, s0, 1              #; s0  = 8, (wrb) s1  <-- 9
       0     9879        M 0x80001be4 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     9880        M 0x80001be8 mv      a2, s0                 #; s0  = 8, (wrb) a2  <-- 8
       0     9881        M 0x80001bec mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     9890        M 0x80001bf0 jalr    s7                     #; s7  = 0x80001508, (wrb) ra  <-- 0x80001bf4, goto 0x80001508
       0     9893        M 0x80001508 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     9894        M 0x8000150c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     9896        M 0x80001510 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     9897        M 0x80001514 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     9898        M 0x80001518 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003518
       0     9899        M 0x8000151c addi    a3, a3, -900           #; a3  = 0x80003518, (wrb) a3  <-- 0x80003194
       0     9900        M                                           #; (acc) a1  <-- 0x00d605b3
       0     9901        M 0x80001520 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003194, (wrb) a1  <-- 0x80003194
       0     9902        M 0x80001524 lw      a4, 0(a1)              #; a1  = 0x80003194, a4  <~~ Word[0x80003194]
       0     9913        M                                           #; (lsu) a4  <-- 8
       0     9914        M 0x80001528 addi    a5, a4, 1              #; a4  = 8, (wrb) a5  <-- 9
       0     9915        M 0x8000152c sw      a5, 0(a1)              #; a1  = 0x80003194, 9 ~~> Word[0x80003194]
       0     9916        M 0x80001530 add     a4, a1, a4             #; a1  = 0x80003194, a4  = 8, (wrb) a4  <-- 0x8000319c
       0     9917        M 0x80001534 sb      a0, 72(a4)             #; a4  = 0x8000319c, 48 ~~> Byte[0x800031e4]
       0     9918        M 0x80001538 lw      a4, 0(a1)              #; a1  = 0x80003194, a4  <~~ Word[0x80003194]
       0     9939        M                                           #; (lsu) a4  <-- 9
       0     9940        M 0x8000153c addi    a4, a4, -1020          #; a4  = 9, (wrb) a4  <-- -1011
       0     9941        M 0x80001540 snez    a4, a4                 #; a4  = -1011, (wrb) a4  <-- 1
       0     9942        M 0x80001544 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     9943        M 0x80001548 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     9944        M 0x8000154c and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     9945        M 0x80001550 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015b0
       0     9959        M 0x800015b0 ret                            #; ra  = 0x80001bf4, goto 0x80001bf4
       0     9964        M 0x80001bf4 mv      s0, s1                 #; s1  = 9, (wrb) s0  <-- 9
       0     9965        M 0x80001bf8 mv      s8, s10                #; s10 = 7, (wrb) s8  <-- 7
       0     9966        M 0x80001bfc bnez    s10, pc - 40           #; s10 = 7, taken, goto 0x80001bd4
       0     9967        M 0x80001bd4 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 7, (wrb) a0  <-- 0x0011fe3e
       0     9968        M 0x80001bd8 lbu     a0, 0(a0)              #; a0  = 0x0011fe3e, a0  <~~ Byte[0x0011fe3e]
       0     9969        M 0x80001bdc addi    s10, s8, -1            #; s8  = 7, (wrb) s10 <-- 6
       0     9970        M 0x80001be0 addi    s1, s0, 1              #; s0  = 9, (wrb) s1  <-- 10
       0     9971        M 0x80001be4 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     9972        M 0x80001be8 mv      a2, s0                 #; s0  = 9, (wrb) a2  <-- 9
       0     9973        M 0x80001bec mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     9974        M 0x80001bf0 jalr    s7                     #; s7  = 0x80001508, (wrb) ra  <-- 0x80001bf4, goto 0x80001508
       0     9975        M                                           #; (lsu) a0  <-- 46
       0     9977        M 0x80001508 beqz    a0, pc + 168           #; a0  = 46, not taken
       0     9978        M 0x8000150c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     9980        M 0x80001510 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     9981        M 0x80001514 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     9982        M 0x80001518 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003518
       0     9983        M 0x8000151c addi    a3, a3, -900           #; a3  = 0x80003518, (wrb) a3  <-- 0x80003194
       0     9984        M                                           #; (acc) a1  <-- 0x00d605b3
       0     9985        M 0x80001520 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003194, (wrb) a1  <-- 0x80003194
       0     9986        M 0x80001524 lw      a4, 0(a1)              #; a1  = 0x80003194, a4  <~~ Word[0x80003194]
       0     9997        M                                           #; (lsu) a4  <-- 9
       0     9998        M 0x80001528 addi    a5, a4, 1              #; a4  = 9, (wrb) a5  <-- 10
       0     9999        M 0x8000152c sw      a5, 0(a1)              #; a1  = 0x80003194, 10 ~~> Word[0x80003194]
       0    10000        M 0x80001530 add     a4, a1, a4             #; a1  = 0x80003194, a4  = 9, (wrb) a4  <-- 0x8000319d
       0    10001        M 0x80001534 sb      a0, 72(a4)             #; a4  = 0x8000319d, 46 ~~> Byte[0x800031e5]
       0    10002        M 0x80001538 lw      a4, 0(a1)              #; a1  = 0x80003194, a4  <~~ Word[0x80003194]
       0    10023        M                                           #; (lsu) a4  <-- 10
       0    10024        M 0x8000153c addi    a4, a4, -1020          #; a4  = 10, (wrb) a4  <-- -1010
       0    10025        M 0x80001540 snez    a4, a4                 #; a4  = -1010, (wrb) a4  <-- 1
       0    10026        M 0x80001544 addi    a0, a0, -10            #; a0  = 46, (wrb) a0  <-- 36
       0    10027        M 0x80001548 snez    a0, a0                 #; a0  = 36, (wrb) a0  <-- 1
       0    10028        M 0x8000154c and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0    10029        M 0x80001550 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015b0
       0    10034        M 0x800015b0 ret                            #; ra  = 0x80001bf4, goto 0x80001bf4
       0    10039        M 0x80001bf4 mv      s0, s1                 #; s1  = 10, (wrb) s0  <-- 10
       0    10040        M 0x80001bf8 mv      s8, s10                #; s10 = 6, (wrb) s8  <-- 6
       0    10041        M 0x80001bfc bnez    s10, pc - 40           #; s10 = 6, taken, goto 0x80001bd4
       0    10042        M 0x80001bd4 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 6, (wrb) a0  <-- 0x0011fe3d
       0    10043        M 0x80001bd8 lbu     a0, 0(a0)              #; a0  = 0x0011fe3d, a0  <~~ Byte[0x0011fe3d]
       0    10044        M 0x80001bdc addi    s10, s8, -1            #; s8  = 6, (wrb) s10 <-- 5
       0    10045        M 0x80001be0 addi    s1, s0, 1              #; s0  = 10, (wrb) s1  <-- 11
       0    10046        M 0x80001be4 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0    10047        M 0x80001be8 mv      a2, s0                 #; s0  = 10, (wrb) a2  <-- 10
       0    10048        M 0x80001bec mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0    10049        M 0x80001bf0 jalr    s7                     #; s7  = 0x80001508, (wrb) ra  <-- 0x80001bf4, goto 0x80001508
       0    10050        M                                           #; (lsu) a0  <-- 48
       0    10052        M 0x80001508 beqz    a0, pc + 168           #; a0  = 48, not taken
       0    10053        M 0x8000150c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0    10055        M 0x80001510 li      a2, 1096               #; (wrb) a2  <-- 1096
       0    10056        M 0x80001514 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0    10057        M 0x80001518 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003518
       0    10058        M 0x8000151c addi    a3, a3, -900           #; a3  = 0x80003518, (wrb) a3  <-- 0x80003194
       0    10059        M                                           #; (acc) a1  <-- 0x00d605b3
       0    10060        M 0x80001520 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003194, (wrb) a1  <-- 0x80003194
       0    10061        M 0x80001524 lw      a4, 0(a1)              #; a1  = 0x80003194, a4  <~~ Word[0x80003194]
       0    10072        M                                           #; (lsu) a4  <-- 10
       0    10073        M 0x80001528 addi    a5, a4, 1              #; a4  = 10, (wrb) a5  <-- 11
       0    10074        M 0x8000152c sw      a5, 0(a1)              #; a1  = 0x80003194, 11 ~~> Word[0x80003194]
       0    10075        M 0x80001530 add     a4, a1, a4             #; a1  = 0x80003194, a4  = 10, (wrb) a4  <-- 0x8000319e
       0    10076        M 0x80001534 sb      a0, 72(a4)             #; a4  = 0x8000319e, 48 ~~> Byte[0x800031e6]
       0    10077        M 0x80001538 lw      a4, 0(a1)              #; a1  = 0x80003194, a4  <~~ Word[0x80003194]
       0    10098        M                                           #; (lsu) a4  <-- 11
       0    10099        M 0x8000153c addi    a4, a4, -1020          #; a4  = 11, (wrb) a4  <-- -1009
       0    10100        M 0x80001540 snez    a4, a4                 #; a4  = -1009, (wrb) a4  <-- 1
       0    10101        M 0x80001544 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0    10102        M 0x80001548 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0    10103        M 0x8000154c and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0    10104        M 0x80001550 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015b0
       0    10109        M 0x800015b0 ret                            #; ra  = 0x80001bf4, goto 0x80001bf4
       0    10114        M 0x80001bf4 mv      s0, s1                 #; s1  = 11, (wrb) s0  <-- 11
       0    10115        M 0x80001bf8 mv      s8, s10                #; s10 = 5, (wrb) s8  <-- 5
       0    10116        M 0x80001bfc bnez    s10, pc - 40           #; s10 = 5, taken, goto 0x80001bd4
       0    10117        M 0x80001bd4 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 5, (wrb) a0  <-- 0x0011fe3c
       0    10118        M 0x80001bd8 lbu     a0, 0(a0)              #; a0  = 0x0011fe3c, a0  <~~ Byte[0x0011fe3c]
       0    10119        M 0x80001bdc addi    s10, s8, -1            #; s8  = 5, (wrb) s10 <-- 4
       0    10120        M 0x80001be0 addi    s1, s0, 1              #; s0  = 11, (wrb) s1  <-- 12
       0    10121        M 0x80001be4 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0    10122        M 0x80001be8 mv      a2, s0                 #; s0  = 11, (wrb) a2  <-- 11
       0    10123        M 0x80001bec mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0    10124        M 0x80001bf0 jalr    s7                     #; s7  = 0x80001508, (wrb) ra  <-- 0x80001bf4, goto 0x80001508
       0    10125        M                                           #; (lsu) a0  <-- 48
       0    10127        M 0x80001508 beqz    a0, pc + 168           #; a0  = 48, not taken
       0    10128        M 0x8000150c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0    10130        M 0x80001510 li      a2, 1096               #; (wrb) a2  <-- 1096
       0    10131        M 0x80001514 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0    10132        M 0x80001518 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003518
       0    10133        M 0x8000151c addi    a3, a3, -900           #; a3  = 0x80003518, (wrb) a3  <-- 0x80003194
       0    10134        M                                           #; (acc) a1  <-- 0x00d605b3
       0    10135        M 0x80001520 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003194, (wrb) a1  <-- 0x80003194
       0    10136        M 0x80001524 lw      a4, 0(a1)              #; a1  = 0x80003194, a4  <~~ Word[0x80003194]
       0    10147        M                                           #; (lsu) a4  <-- 11
       0    10148        M 0x80001528 addi    a5, a4, 1              #; a4  = 11, (wrb) a5  <-- 12
       0    10149        M 0x8000152c sw      a5, 0(a1)              #; a1  = 0x80003194, 12 ~~> Word[0x80003194]
       0    10150        M 0x80001530 add     a4, a1, a4             #; a1  = 0x80003194, a4  = 11, (wrb) a4  <-- 0x8000319f
       0    10151        M 0x80001534 sb      a0, 72(a4)             #; a4  = 0x8000319f, 48 ~~> Byte[0x800031e7]
       0    10152        M 0x80001538 lw      a4, 0(a1)              #; a1  = 0x80003194, a4  <~~ Word[0x80003194]
       0    10173        M                                           #; (lsu) a4  <-- 12
       0    10174        M 0x8000153c addi    a4, a4, -1020          #; a4  = 12, (wrb) a4  <-- -1008
       0    10175        M 0x80001540 snez    a4, a4                 #; a4  = -1008, (wrb) a4  <-- 1
       0    10176        M 0x80001544 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0    10177        M 0x80001548 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0    10178        M 0x8000154c and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0    10179        M 0x80001550 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015b0
       0    10184        M 0x800015b0 ret                            #; ra  = 0x80001bf4, goto 0x80001bf4
       0    10189        M 0x80001bf4 mv      s0, s1                 #; s1  = 12, (wrb) s0  <-- 12
       0    10190        M 0x80001bf8 mv      s8, s10                #; s10 = 4, (wrb) s8  <-- 4
       0    10191        M 0x80001bfc bnez    s10, pc - 40           #; s10 = 4, taken, goto 0x80001bd4
       0    10192        M 0x80001bd4 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 4, (wrb) a0  <-- 0x0011fe3b
       0    10193        M 0x80001bd8 lbu     a0, 0(a0)              #; a0  = 0x0011fe3b, a0  <~~ Byte[0x0011fe3b]
       0    10194        M 0x80001bdc addi    s10, s8, -1            #; s8  = 4, (wrb) s10 <-- 3
       0    10195        M 0x80001be0 addi    s1, s0, 1              #; s0  = 12, (wrb) s1  <-- 13
       0    10196        M 0x80001be4 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0    10197        M 0x80001be8 mv      a2, s0                 #; s0  = 12, (wrb) a2  <-- 12
       0    10198        M 0x80001bec mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0    10199        M 0x80001bf0 jalr    s7                     #; s7  = 0x80001508, (wrb) ra  <-- 0x80001bf4, goto 0x80001508
       0    10200        M                                           #; (lsu) a0  <-- 48
       0    10202        M 0x80001508 beqz    a0, pc + 168           #; a0  = 48, not taken
       0    10203        M 0x8000150c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0    10205        M 0x80001510 li      a2, 1096               #; (wrb) a2  <-- 1096
       0    10206        M 0x80001514 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0    10207        M 0x80001518 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003518
       0    10208        M 0x8000151c addi    a3, a3, -900           #; a3  = 0x80003518, (wrb) a3  <-- 0x80003194
       0    10209        M                                           #; (acc) a1  <-- 0x00d605b3
       0    10210        M 0x80001520 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003194, (wrb) a1  <-- 0x80003194
       0    10211        M 0x80001524 lw      a4, 0(a1)              #; a1  = 0x80003194, a4  <~~ Word[0x80003194]
       0    10222        M                                           #; (lsu) a4  <-- 12
       0    10223        M 0x80001528 addi    a5, a4, 1              #; a4  = 12, (wrb) a5  <-- 13
       0    10224        M 0x8000152c sw      a5, 0(a1)              #; a1  = 0x80003194, 13 ~~> Word[0x80003194]
       0    10225        M 0x80001530 add     a4, a1, a4             #; a1  = 0x80003194, a4  = 12, (wrb) a4  <-- 0x800031a0
       0    10226        M 0x80001534 sb      a0, 72(a4)             #; a4  = 0x800031a0, 48 ~~> Byte[0x800031e8]
       0    10227        M 0x80001538 lw      a4, 0(a1)              #; a1  = 0x80003194, a4  <~~ Word[0x80003194]
       0    10248        M                                           #; (lsu) a4  <-- 13
       0    10249        M 0x8000153c addi    a4, a4, -1020          #; a4  = 13, (wrb) a4  <-- -1007
       0    10250        M 0x80001540 snez    a4, a4                 #; a4  = -1007, (wrb) a4  <-- 1
       0    10251        M 0x80001544 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0    10252        M 0x80001548 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0    10253        M 0x8000154c and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0    10254        M 0x80001550 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015b0
       0    10259        M 0x800015b0 ret                            #; ra  = 0x80001bf4, goto 0x80001bf4
       0    10264        M 0x80001bf4 mv      s0, s1                 #; s1  = 13, (wrb) s0  <-- 13
       0    10265        M 0x80001bf8 mv      s8, s10                #; s10 = 3, (wrb) s8  <-- 3
       0    10266        M 0x80001bfc bnez    s10, pc - 40           #; s10 = 3, taken, goto 0x80001bd4
       0    10267        M 0x80001bd4 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 3, (wrb) a0  <-- 0x0011fe3a
       0    10268        M 0x80001bd8 lbu     a0, 0(a0)              #; a0  = 0x0011fe3a, a0  <~~ Byte[0x0011fe3a]
       0    10269        M 0x80001bdc addi    s10, s8, -1            #; s8  = 3, (wrb) s10 <-- 2
       0    10270        M 0x80001be0 addi    s1, s0, 1              #; s0  = 13, (wrb) s1  <-- 14
       0    10271        M 0x80001be4 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0    10272        M 0x80001be8 mv      a2, s0                 #; s0  = 13, (wrb) a2  <-- 13
       0    10273        M 0x80001bec mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0    10274        M 0x80001bf0 jalr    s7                     #; s7  = 0x80001508, (wrb) ra  <-- 0x80001bf4, goto 0x80001508
       0    10275        M                                           #; (lsu) a0  <-- 48
       0    10277        M 0x80001508 beqz    a0, pc + 168           #; a0  = 48, not taken
       0    10278        M 0x8000150c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0    10280        M 0x80001510 li      a2, 1096               #; (wrb) a2  <-- 1096
       0    10281        M 0x80001514 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0    10282        M 0x80001518 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003518
       0    10283        M 0x8000151c addi    a3, a3, -900           #; a3  = 0x80003518, (wrb) a3  <-- 0x80003194
       0    10284        M                                           #; (acc) a1  <-- 0x00d605b3
       0    10285        M 0x80001520 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003194, (wrb) a1  <-- 0x80003194
       0    10286        M 0x80001524 lw      a4, 0(a1)              #; a1  = 0x80003194, a4  <~~ Word[0x80003194]
       0    10297        M                                           #; (lsu) a4  <-- 13
       0    10298        M 0x80001528 addi    a5, a4, 1              #; a4  = 13, (wrb) a5  <-- 14
       0    10299        M 0x8000152c sw      a5, 0(a1)              #; a1  = 0x80003194, 14 ~~> Word[0x80003194]
       0    10300        M 0x80001530 add     a4, a1, a4             #; a1  = 0x80003194, a4  = 13, (wrb) a4  <-- 0x800031a1
       0    10301        M 0x80001534 sb      a0, 72(a4)             #; a4  = 0x800031a1, 48 ~~> Byte[0x800031e9]
       0    10302        M 0x80001538 lw      a4, 0(a1)              #; a1  = 0x80003194, a4  <~~ Word[0x80003194]
       0    10323        M                                           #; (lsu) a4  <-- 14
       0    10324        M 0x8000153c addi    a4, a4, -1020          #; a4  = 14, (wrb) a4  <-- -1006
       0    10325        M 0x80001540 snez    a4, a4                 #; a4  = -1006, (wrb) a4  <-- 1
       0    10326        M 0x80001544 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0    10327        M 0x80001548 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0    10328        M 0x8000154c and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0    10329        M 0x80001550 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015b0
       0    10334        M 0x800015b0 ret                            #; ra  = 0x80001bf4, goto 0x80001bf4
       0    10339        M 0x80001bf4 mv      s0, s1                 #; s1  = 14, (wrb) s0  <-- 14
       0    10340        M 0x80001bf8 mv      s8, s10                #; s10 = 2, (wrb) s8  <-- 2
       0    10341        M 0x80001bfc bnez    s10, pc - 40           #; s10 = 2, taken, goto 0x80001bd4
       0    10342        M 0x80001bd4 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 2, (wrb) a0  <-- 0x0011fe39
       0    10343        M 0x80001bd8 lbu     a0, 0(a0)              #; a0  = 0x0011fe39, a0  <~~ Byte[0x0011fe39]
       0    10344        M 0x80001bdc addi    s10, s8, -1            #; s8  = 2, (wrb) s10 <-- 1
       0    10345        M 0x80001be0 addi    s1, s0, 1              #; s0  = 14, (wrb) s1  <-- 15
       0    10346        M 0x80001be4 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0    10347        M 0x80001be8 mv      a2, s0                 #; s0  = 14, (wrb) a2  <-- 14
       0    10348        M 0x80001bec mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0    10349        M 0x80001bf0 jalr    s7                     #; s7  = 0x80001508, (wrb) ra  <-- 0x80001bf4, goto 0x80001508
       0    10350        M                                           #; (lsu) a0  <-- 48
       0    10352        M 0x80001508 beqz    a0, pc + 168           #; a0  = 48, not taken
       0    10353        M 0x8000150c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0    10355        M 0x80001510 li      a2, 1096               #; (wrb) a2  <-- 1096
       0    10356        M 0x80001514 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0    10357        M 0x80001518 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003518
       0    10358        M 0x8000151c addi    a3, a3, -900           #; a3  = 0x80003518, (wrb) a3  <-- 0x80003194
       0    10359        M                                           #; (acc) a1  <-- 0x00d605b3
       0    10360        M 0x80001520 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003194, (wrb) a1  <-- 0x80003194
       0    10361        M 0x80001524 lw      a4, 0(a1)              #; a1  = 0x80003194, a4  <~~ Word[0x80003194]
       0    10372        M                                           #; (lsu) a4  <-- 14
       0    10373        M 0x80001528 addi    a5, a4, 1              #; a4  = 14, (wrb) a5  <-- 15
       0    10374        M 0x8000152c sw      a5, 0(a1)              #; a1  = 0x80003194, 15 ~~> Word[0x80003194]
       0    10375        M 0x80001530 add     a4, a1, a4             #; a1  = 0x80003194, a4  = 14, (wrb) a4  <-- 0x800031a2
       0    10376        M 0x80001534 sb      a0, 72(a4)             #; a4  = 0x800031a2, 48 ~~> Byte[0x800031ea]
       0    10377        M 0x80001538 lw      a4, 0(a1)              #; a1  = 0x80003194, a4  <~~ Word[0x80003194]
       0    10398        M                                           #; (lsu) a4  <-- 15
       0    10399        M 0x8000153c addi    a4, a4, -1020          #; a4  = 15, (wrb) a4  <-- -1005
       0    10400        M 0x80001540 snez    a4, a4                 #; a4  = -1005, (wrb) a4  <-- 1
       0    10401        M 0x80001544 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0    10402        M 0x80001548 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0    10403        M 0x8000154c and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0    10404        M 0x80001550 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015b0
       0    10409        M 0x800015b0 ret                            #; ra  = 0x80001bf4, goto 0x80001bf4
       0    10414        M 0x80001bf4 mv      s0, s1                 #; s1  = 15, (wrb) s0  <-- 15
       0    10415        M 0x80001bf8 mv      s8, s10                #; s10 = 1, (wrb) s8  <-- 1
       0    10416        M 0x80001bfc bnez    s10, pc - 40           #; s10 = 1, taken, goto 0x80001bd4
       0    10417        M 0x80001bd4 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 1, (wrb) a0  <-- 0x0011fe38
       0    10418        M 0x80001bd8 lbu     a0, 0(a0)              #; a0  = 0x0011fe38, a0  <~~ Byte[0x0011fe38]
       0    10419        M 0x80001bdc addi    s10, s8, -1            #; s8  = 1, (wrb) s10 <-- 0
       0    10420        M 0x80001be0 addi    s1, s0, 1              #; s0  = 15, (wrb) s1  <-- 16
       0    10421        M 0x80001be4 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0    10422        M 0x80001be8 mv      a2, s0                 #; s0  = 15, (wrb) a2  <-- 15
       0    10423        M 0x80001bec mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0    10424        M 0x80001bf0 jalr    s7                     #; s7  = 0x80001508, (wrb) ra  <-- 0x80001bf4, goto 0x80001508
       0    10425        M                                           #; (lsu) a0  <-- 48
       0    10427        M 0x80001508 beqz    a0, pc + 168           #; a0  = 48, not taken
       0    10428        M 0x8000150c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0    10430        M 0x80001510 li      a2, 1096               #; (wrb) a2  <-- 1096
       0    10431        M 0x80001514 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0    10432        M 0x80001518 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003518
       0    10433        M 0x8000151c addi    a3, a3, -900           #; a3  = 0x80003518, (wrb) a3  <-- 0x80003194
       0    10434        M                                           #; (acc) a1  <-- 0x00d605b3
       0    10435        M 0x80001520 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003194, (wrb) a1  <-- 0x80003194
       0    10436        M 0x80001524 lw      a4, 0(a1)              #; a1  = 0x80003194, a4  <~~ Word[0x80003194]
       0    10447        M                                           #; (lsu) a4  <-- 15
       0    10448        M 0x80001528 addi    a5, a4, 1              #; a4  = 15, (wrb) a5  <-- 16
       0    10449        M 0x8000152c sw      a5, 0(a1)              #; a1  = 0x80003194, 16 ~~> Word[0x80003194]
       0    10450        M 0x80001530 add     a4, a1, a4             #; a1  = 0x80003194, a4  = 15, (wrb) a4  <-- 0x800031a3
       0    10451        M 0x80001534 sb      a0, 72(a4)             #; a4  = 0x800031a3, 48 ~~> Byte[0x800031eb]
       0    10452        M 0x80001538 lw      a4, 0(a1)              #; a1  = 0x80003194, a4  <~~ Word[0x80003194]
       0    10473        M                                           #; (lsu) a4  <-- 16
       0    10474        M 0x8000153c addi    a4, a4, -1020          #; a4  = 16, (wrb) a4  <-- -1004
       0    10475        M 0x80001540 snez    a4, a4                 #; a4  = -1004, (wrb) a4  <-- 1
       0    10476        M 0x80001544 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0    10477        M 0x80001548 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0    10478        M 0x8000154c and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0    10479        M 0x80001550 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x800015b0
       0    10484        M 0x800015b0 ret                            #; ra  = 0x80001bf4, goto 0x80001bf4
       0    10489        M 0x80001bf4 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
       0    10490        M 0x80001bf8 mv      s8, s10                #; s10 = 0, (wrb) s8  <-- 0
       0    10491        M 0x80001bfc bnez    s10, pc - 40           #; s10 = 0, not taken
       0    10503        M 0x80001c00 j       pc + 0x8               #; goto 0x80001c08
       0    10504        M 0x80001c08 sub     a0, s1, s4             #; s1  = 16, s4  = 8, (wrb) a0  <-- 8
       0    10505        M 0x80001c0c sltu    a0, a0, s2             #; a0  = 8, s2  = 0, (wrb) a0  <-- 0
       0    10516        M 0x80001c10 xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0    10517        M 0x80001c14 xori    a1, s5, 1              #; s5  = 0, (wrb) a1  <-- 1
       0    10518        M 0x80001c18 or      a0, a1, a0             #; a1  = 1, a0  = 1, (wrb) a0  <-- 1
       0    10519        M 0x80001c1c bnez    a0, pc + 48            #; a0  = 1, taken, goto 0x80001c4c
       0    10539        M 0x80001c4c mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
       0    10551        M 0x80001c50 mv      a0, s0                 #; s0  = 16, (wrb) a0  <-- 16
       0    10554        M 0x80001c54 fld     fs2, 40(sp)            #; fs2  <~~ Doub[0x0011fe58]
       0    10555        M 0x80001c58 fld     fs1, 48(sp)            #; fs1  <~~ Doub[0x0011fe60], (f:lsu) fs2  <-- 0.0
       0    10556        M 0x80001c5c fld     fs0, 56(sp)            #; fs0  <~~ Doub[0x0011fe68], (f:lsu) fs1  <-- 0.0
       0    10557        M                                           #; (f:lsu) fs0  <-- 0.0
       0    10563        M 0x80001c60 lw      s10, 64(sp)            #; sp  = 0x0011fe30, s10 <~~ Word[0x0011fe70]
       0    10566        M                                           #; (lsu) s10 <-- 0x80002e3e
       0    10567        M 0x80001c64 lw      s9, 68(sp)             #; sp  = 0x0011fe30, s9  <~~ Word[0x0011fe74]
       0    10570        M                                           #; (lsu) s9  <-- 8
       0    10571        M 0x80001c68 lw      s8, 72(sp)             #; sp  = 0x0011fe30, s8  <~~ Word[0x0011fe78]
       0    10574        M                                           #; (lsu) s8  <-- 16
       0    10575        M 0x80001c6c lw      s7, 76(sp)             #; sp  = 0x0011fe30, s7  <~~ Word[0x0011fe7c]
       0    10578        M                                           #; (lsu) s7  <-- 0
       0    10579        M 0x80001c70 lw      s6, 80(sp)             #; sp  = 0x0011fe30, s6  <~~ Word[0x0011fe80]
       0    10582        M                                           #; (lsu) s6  <-- 0
       0    10583        M 0x80001c74 lw      s5, 84(sp)             #; sp  = 0x0011fe30, s5  <~~ Word[0x0011fe84]
       0    10586        M                                           #; (lsu) s5  <-- -1
       0    10587        M 0x80001c78 lw      s4, 88(sp)             #; sp  = 0x0011fe30, s4  <~~ Word[0x0011fe88]
       0    10590        M                                           #; (lsu) s4  <-- 0x0011ff17
       0    10591        M 0x80001c7c lw      s3, 92(sp)             #; sp  = 0x0011fe30, s3  <~~ Word[0x0011fe8c]
       0    10594        M                                           #; (lsu) s3  <-- 0x0011ff30
       0    10595        M 0x80001c80 lw      s2, 96(sp)             #; sp  = 0x0011fe30, s2  <~~ Word[0x0011fe90]
       0    10598        M                                           #; (lsu) s2  <-- 0x80001508
       0    10599        M 0x80001c84 lw      s1, 100(sp)            #; sp  = 0x0011fe30, s1  <~~ Word[0x0011fe94]
       0    10602        M                                           #; (lsu) s1  <-- 8
       0    10603        M 0x80001c88 lw      s0, 104(sp)            #; sp  = 0x0011fe30, s0  <~~ Word[0x0011fe98]
       0    10606        M                                           #; (lsu) s0  <-- 0
       0    10607        M 0x80001c8c lw      ra, 108(sp)            #; sp  = 0x0011fe30, ra  <~~ Word[0x0011fe9c]
       0    10608        M 0x80001c90 addi    sp, sp, 112            #; sp  = 0x0011fe30, (wrb) sp  <-- 0x0011fea0
       0    10610        M                                           #; (lsu) ra  <-- 0x80000c38
       0    10611        M 0x80001c94 ret                            #; ra  = 0x80000c38, goto 0x80000c38
       0    10622        M 0x80000c38 j       pc + 0x7c0             #; goto 0x800013f8
       0    10625        M 0x800013f8 mv      s8, a0                 #; a0  = 16, (wrb) s8  <-- 16
       0    10626        M 0x800013fc li      s6, 37                 #; (wrb) s6  <-- 37
       0    10628        M 0x80001400 li      s7, 46                 #; (wrb) s7  <-- 46
       0    10629        M 0x80001404 addi    s0, s10, 1             #; s10 = 0x80002e3e, (wrb) s0  <-- 0x80002e3f
       0    10630        M 0x80001408 j       pc - 0xa74             #; goto 0x80000994
       0    10640        M 0x80000994 addi    s10, s0, 2             #; s0  = 0x80002e3f, (wrb) s10 <-- 0x80002e41
       0    10641        M 0x80000998 mv      s9, s8                 #; s8  = 16, (wrb) s9  <-- 16
       0    10642        M 0x8000099c li      s8, 10                 #; (wrb) s8  <-- 10
       0    10652        M 0x800009a0 lbu     a0, 0(s0)              #; s0  = 0x80002e3f, a0  <~~ Byte[0x80002e3f]
       0    10663        M                                           #; (lsu) a0  <-- 10
       0    10664        M 0x800009a4 beqz    a0, pc + 2824          #; a0  = 10, not taken
       0    10665        M 0x800009a8 beq     a0, s6, pc + 48        #; a0  = 10, s6  = 37, not taken
       0    10666        M 0x800009ac addi    s1, s9, 1              #; s9  = 16, (wrb) s1  <-- 17
       0    10667        M 0x800009b0 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0    10668        M 0x800009b4 mv      a2, s9                 #; s9  = 16, (wrb) a2  <-- 16
       0    10669        M 0x800009b8 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0    10670        M 0x800009bc jalr    s2                     #; s2  = 0x80001508, (wrb) ra  <-- 0x800009c0, goto 0x80001508
       0    10681        M 0x80001508 beqz    a0, pc + 168           #; a0  = 10, not taken
       0    10682        M 0x8000150c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0    10684        M 0x80001510 li      a2, 1096               #; (wrb) a2  <-- 1096
       0    10685        M 0x80001514 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0    10686        M 0x80001518 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003518
       0    10687        M 0x8000151c addi    a3, a3, -900           #; a3  = 0x80003518, (wrb) a3  <-- 0x80003194
       0    10688        M                                           #; (acc) a1  <-- 0x00d605b3
       0    10689        M 0x80001520 add     a1, a2, a3             #; a2  = 0, a3  = 0x80003194, (wrb) a1  <-- 0x80003194
       0    10690        M 0x80001524 lw      a4, 0(a1)              #; a1  = 0x80003194, a4  <~~ Word[0x80003194]
       0    10701        M                                           #; (lsu) a4  <-- 16
       0    10702        M 0x80001528 addi    a5, a4, 1              #; a4  = 16, (wrb) a5  <-- 17
       0    10703        M 0x8000152c sw      a5, 0(a1)              #; a1  = 0x80003194, 17 ~~> Word[0x80003194]
       0    10704        M 0x80001530 add     a4, a1, a4             #; a1  = 0x80003194, a4  = 16, (wrb) a4  <-- 0x800031a4
       0    10705        M 0x80001534 sb      a0, 72(a4)             #; a4  = 0x800031a4, 10 ~~> Byte[0x800031ec]
       0    10706        M 0x80001538 lw      a4, 0(a1)              #; a1  = 0x80003194, a4  <~~ Word[0x80003194]
       0    10727        M                                           #; (lsu) a4  <-- 17
       0    10728        M 0x8000153c addi    a4, a4, -1020          #; a4  = 17, (wrb) a4  <-- -1003
       0    10729        M 0x80001540 snez    a4, a4                 #; a4  = -1003, (wrb) a4  <-- 1
       0    10730        M 0x80001544 addi    a0, a0, -10            #; a0  = 10, (wrb) a0  <-- 0
       0    10731        M 0x80001548 snez    a0, a0                 #; a0  = 0, (wrb) a0  <-- 0
       0    10732        M 0x8000154c and     a0, a0, a4             #; a0  = 0, a4  = 1, (wrb) a0  <-- 0
       0    10733        M 0x80001550 bnez    a0, pc + 96            #; a0  = 0, not taken
       0    10734        M 0x80001554 add     a0, a3, a2             #; a3  = 0x80003194, a2  = 0, (wrb) a0  <-- 0x80003194
       0    10735        M 0x80001558 addi    a2, a0, 72             #; a0  = 0x80003194, (wrb) a2  <-- 0x800031dc
       0    10736        M 0x8000155c sw      zero, 12(a0)           #; a0  = 0x80003194, 0 ~~> Word[0x800031a0]
       0    10737        M 0x80001560 li      a3, 64                 #; (wrb) a3  <-- 64
       0    10738        M 0x80001564 sw      a3, 8(a0)              #; a0  = 0x80003194, 64 ~~> Word[0x8000319c]
       0    10739        M 0x80001568 sw      zero, 20(a0)           #; a0  = 0x80003194, 0 ~~> Word[0x800031a8]
       0    10740        M 0x8000156c li      a3, 1                  #; (wrb) a3  <-- 1
       0    10749        M 0x80001570 sw      a3, 16(a0)             #; a0  = 0x80003194, 1 ~~> Word[0x800031a4]
       0    10750        M 0x80001574 sw      zero, 28(a0)           #; a0  = 0x80003194, 0 ~~> Word[0x800031b0]
       0    10752        M 0x80001578 sw      a2, 24(a0)             #; a0  = 0x80003194, 0x800031dc ~~> Word[0x800031ac]
       0    10762        M 0x8000157c lw      a2, 0(a1)              #; a1  = 0x80003194, a2  <~~ Word[0x80003194]
       0    10763        M 0x80001580 addi    a3, a0, 8              #; a0  = 0x80003194, (wrb) a3  <-- 0x8000319c
       0    10764        M 0x80001584 sw      zero, 36(a0)           #; a0  = 0x80003194, 0 ~~> Word[0x800031b8]
       0    10784        M                                           #; (lsu) a2  <-- 17
       0    10785        M 0x80001588 sw      a2, 32(a0)             #; a0  = 0x80003194, 17 ~~> Word[0x800031b4]
       0    10786        M 0x8000158c auipc   a0, 0x2                #; (wrb) a0  <-- 0x8000358c
       0    10787        M 0x80001590 addi    a0, a0, -1292          #; a0  = 0x8000358c, (wrb) a0  <-- 0x80003080
       0    10788        M 0x80001594 sw      a3, 0(a0)              #; a0  = 0x80003080, 0x8000319c ~~> Word[0x80003080]
       0    10789        M 0x80001598 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003598
       0    10790        M 0x8000159c addi    a0, a0, -1240          #; a0  = 0x80003598, (wrb) a0  <-- 0x800030c0
       0    10791        M 0x800015a0 lw      a2, 0(a0)              #; a0  = 0x800030c0, a2  <~~ Word[0x800030c0]
       0    10814        M                                           #; (lsu) a2  <-- 0
       0    10815        M 0x800015a4 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x800015a0
       0    10816        M 0x800015a0 lw      a2, 0(a0)              #; a0  = 0x800030c0, a2  <~~ Word[0x800030c0]
       0    10827        M                                           #; (lsu) a2  <-- 0
       0    10828        M 0x800015a4 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x800015a0
       0    10829        M 0x800015a0 lw      a2, 0(a0)              #; a0  = 0x800030c0, a2  <~~ Word[0x800030c0]
       0    10840        M                                           #; (lsu) a2  <-- 0
       0    10841        M 0x800015a4 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x800015a0
       0    10842        M 0x800015a0 lw      a2, 0(a0)              #; a0  = 0x800030c0, a2  <~~ Word[0x800030c0]
       0    10853        M                                           #; (lsu) a2  <-- 0
       0    10854        M 0x800015a4 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x800015a0
       0    10855        M 0x800015a0 lw      a2, 0(a0)              #; a0  = 0x800030c0, a2  <~~ Word[0x800030c0]
       0    10866        M                                           #; (lsu) a2  <-- 0
       0    10867        M 0x800015a4 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x800015a0
       0    10868        M 0x800015a0 lw      a2, 0(a0)              #; a0  = 0x800030c0, a2  <~~ Word[0x800030c0]
       0    10879        M                                           #; (lsu) a2  <-- 0
       0    10880        M 0x800015a4 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x800015a0
       0    10881        M 0x800015a0 lw      a2, 0(a0)              #; a0  = 0x800030c0, a2  <~~ Word[0x800030c0]
       0    10892        M                                           #; (lsu) a2  <-- 0
       0    10893        M 0x800015a4 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x800015a0
       0    10894        M 0x800015a0 lw      a2, 0(a0)              #; a0  = 0x800030c0, a2  <~~ Word[0x800030c0]
       0    10905        M                                           #; (lsu) a2  <-- 1
       0    10906        M 0x800015a4 beqz    a2, pc - 4             #; a2  = 1, not taken
       0    10907        M 0x800015a8 sw      zero, 0(a0)            #; a0  = 0x800030c0, 0 ~~> Word[0x800030c0]
       0    10908        M 0x800015ac sw      zero, 0(a1)            #; a1  = 0x80003194, 0 ~~> Word[0x80003194]
       0    10910        M 0x800015b0 ret                            #; ra  = 0x800009c0, goto 0x800009c0
       0    10915        M 0x800009c0 addi    s0, s0, 1              #; s0  = 0x80002e3f, (wrb) s0  <-- 0x80002e40
       0    10916        M 0x800009c4 addi    s10, s10, 1            #; s10 = 0x80002e41, (wrb) s10 <-- 0x80002e42
       0    10917        M 0x800009c8 mv      s9, s1                 #; s1  = 17, (wrb) s9  <-- 17
       0    10918        M 0x800009cc lbu     a0, 0(s0)              #; s0  = 0x80002e40, a0  <~~ Byte[0x80002e40]
       0    10930        M                                           #; (lsu) a0  <-- 0
       0    10931        M 0x800009d0 bnez    a0, pc - 40            #; a0  = 0, not taken
       0    10932        M 0x800009d4 j       pc + 0xad8             #; goto 0x800014ac
       0    10935        M 0x800014ac mv      a2, s9                 #; s9  = 17, (wrb) a2  <-- 17
       0    10938        M 0x800014b0 bltu    s9, s5, pc + 8         #; s9  = 17, s5  = -1, taken, goto 0x800014b8
       0    10939        M 0x800014b8 li      a0, 0                  #; (wrb) a0  <-- 0
       0    10940        M 0x800014bc mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0    10941        M 0x800014c0 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0    10942        M 0x800014c4 jalr    s2                     #; s2  = 0x80001508, (wrb) ra  <-- 0x800014c8, goto 0x80001508
       0    10946        M 0x80001508 beqz    a0, pc + 168           #; a0  = 0, taken, goto 0x800015b0
       0    10951        M 0x800015b0 ret                            #; ra  = 0x800014c8, goto 0x800014c8
       0    10952        M 0x800014c8 mv      a0, s9                 #; s9  = 17, (wrb) a0  <-- 17
       0    10953        M 0x800014cc lw      s11, 60(sp)            #; sp  = 0x0011fea0, s11 <~~ Word[0x0011fedc]
       0    10956        M                                           #; (lsu) s11 <-- 0
       0    10957        M 0x800014d0 lw      s10, 64(sp)            #; sp  = 0x0011fea0, s10 <~~ Word[0x0011fee0]
       0    10960        M                                           #; (lsu) s10 <-- 0
       0    10961        M 0x800014d4 lw      s9, 68(sp)             #; sp  = 0x0011fea0, s9  <~~ Word[0x0011fee4]
       0    10964        M                                           #; (lsu) s9  <-- 0
       0    10965        M 0x800014d8 lw      s8, 72(sp)             #; sp  = 0x0011fea0, s8  <~~ Word[0x0011fee8]
       0    10968        M                                           #; (lsu) s8  <-- 0
       0    10969        M 0x800014dc lw      s7, 76(sp)             #; sp  = 0x0011fea0, s7  <~~ Word[0x0011feec]
       0    10972        M                                           #; (lsu) s7  <-- 0
       0    10973        M 0x800014e0 lw      s6, 80(sp)             #; sp  = 0x0011fea0, s6  <~~ Word[0x0011fef0]
       0    10976        M                                           #; (lsu) s6  <-- 0
       0    10977        M 0x800014e4 lw      s5, 84(sp)             #; sp  = 0x0011fea0, s5  <~~ Word[0x0011fef4]
       0    10980        M                                           #; (lsu) s5  <-- 0
       0    10981        M 0x800014e8 lw      s4, 88(sp)             #; sp  = 0x0011fea0, s4  <~~ Word[0x0011fef8]
       0    10984        M                                           #; (lsu) s4  <-- 0
       0    10985        M 0x800014ec lw      s3, 92(sp)             #; sp  = 0x0011fea0, s3  <~~ Word[0x0011fefc]
       0    10988        M                                           #; (lsu) s3  <-- 0
       0    10989        M 0x800014f0 lw      s2, 96(sp)             #; sp  = 0x0011fea0, s2  <~~ Word[0x0011ff00]
       0    10992        M                                           #; (lsu) s2  <-- 0
       0    10993        M 0x800014f4 lw      s1, 100(sp)            #; sp  = 0x0011fea0, s1  <~~ Word[0x0011ff04]
       0    10996        M                                           #; (lsu) s1  <-- 0
       0    10997        M 0x800014f8 lw      s0, 104(sp)            #; sp  = 0x0011fea0, s0  <~~ Word[0x0011ff08]
       0    11000        M                                           #; (lsu) s0  <-- 4827
       0    11001        M 0x800014fc lw      ra, 108(sp)            #; sp  = 0x0011fea0, ra  <~~ Word[0x0011ff0c]
       0    11002        M 0x80001500 addi    sp, sp, 112            #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011ff10
       0    11004        M                                           #; (lsu) ra  <-- 0x80000904
       0    11005        M 0x80001504 ret                            #; ra  = 0x80000904, goto 0x80000904
       0    11017        M 0x80000904 lw      ra, 12(sp)             #; sp  = 0x0011ff10, ra  <~~ Word[0x0011ff1c]
       0    11018        M 0x80000908 addi    sp, sp, 48             #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011ff40
       0    11020        M                                           #; (lsu) ra  <-- 0x80000890
       0    11021        M 0x8000090c ret                            #; ra  = 0x80000890, goto 0x80000890
       0    11031        M 0x80000890 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003890
       0    11032        M 0x80000894 addi    a0, a0, -1968          #; a0  = 0x80003890, (wrb) a0  <-- 0x800030e0
       0    11035        M 0x80000898 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x800030e0]
       0    11036        M 0x800008a4 lw      s0, 24(sp)             #; sp  = 0x0011ff40, s0  <~~ Word[0x0011ff58]
       0    11044        M                                           #; (f:lsu) ft3  <-- 0.0001
       0    11045        M 0x8000089c flt.d   a0, ft3, fs0           #; ft3  = 0.0001, fs0  = 0.0
       0    11046        M                                           #; (lsu) s0  <-- 0
       0    11047        M 0x800008a8 lw      ra, 28(sp)             #; sp  = 0x0011ff40, ra  <~~ Word[0x0011ff5c], (acc) ra  <-- 0x01c12083
                         M 0x800008a0 fld     fs0, 16(sp)            #; fs0  <~~ Doub[0x0011ff50]
       0    11048        M 0x800008ac addi    sp, sp, 32             #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff60
                         M                                           #; (f:lsu) fs0  <-- 0.0
       0    11050        M                                           #; (lsu) ra  <-- 0x80002bb0
       0    11051        M 0x800008b0 ret                            #; ra  = 0x80002bb0, goto 0x80002bb0
       0    11063        M 0x80002bb0 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
       0    11064        M 0x80002bb4 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002bb4
       0    11065        M 0x80002bb8 jalr    ra, ra, 524            #; ra  = 0x80002bb4, (wrb) ra  <-- 0x80002bbc, goto 0x80002dc0
       0    11077        M 0x80002dc0 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
       0    11078        M 0x80002dc4 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x80002bbc ~~> Word[0x0011ff5c]
       0    11079        M 0x80002dc8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002dc8
       0    11080        M 0x80002dcc jalr    ra, ra, -1848          #; ra  = 0x80002dc8, (wrb) ra  <-- 0x80002dd0, goto 0x80002690
       0    11092        M 0x80002690 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0    11093        M 0x80002694 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0    11094        M 0x80002698 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0    11097        M                                           #; (lsu) a0  <-- 0x0011ff70
       0    11098        M 0x8000269c lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0    11101        M                                           #; (lsu) a0  <-- 0x0011ff70
       0    11104        M 0x800026a0 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
       0    11105        M 0x800026a4 ret                            #; ra  = 0x80002dd0, goto 0x80002dd0
       0    11107        M                                           #; (lsu) a0  <-- 0x00120190
       0    11108        M 0x80002dd0 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
       0    11118        M                                           #; (lsu) a0  <-- 0
       0    11119        M 0x80002dd4 mv      zero, a0               #; a0  = 0
       0    11120        M 0x80002dd8 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
       0    11121        M 0x80002ddc addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
       0    11123        M                                           #; (lsu) ra  <-- 0x80002bbc
       0    11124        M 0x80002de0 ret                            #; ra  = 0x80002bbc, goto 0x80002bbc
       0    11127        M 0x80002bbc mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
       0    11131        M 0x80002bc0 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002bc0
       0    11132        M 0x80002bc4 jalr    ra, ra, 556            #; ra  = 0x80002bc0, (wrb) ra  <-- 0x80002bc8, goto 0x80002dec
       0    11133        M 0x80002dec addi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff58
       0    11134        M 0x80002df0 sw      a0, 0(sp)              #; sp  = 0x0011ff58, 0 ~~> Word[0x0011ff58]
       0    11135        M 0x80002df4 sw      ra, 4(sp)              #; sp  = 0x0011ff58, 0x80002bc8 ~~> Word[0x0011ff5c]
       0    11136        M 0x80002df8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002df8
       0    11137        M 0x80002dfc jalr    ra, ra, -1928          #; ra  = 0x80002df8, (wrb) ra  <-- 0x80002e00, goto 0x80002670
       0    11150        M 0x80002670 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0    11151        M 0x80002674 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0    11152        M 0x80002678 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0    11155        M                                           #; (lsu) a0  <-- 0x0011ff70
       0    11156        M 0x8000267c lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0    11159        M                                           #; (lsu) a0  <-- 0x0011ff70
       0    11162        M 0x80002680 lw      a0, 8(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff78]
       0    11163        M 0x80002684 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0    11165        M                                           #; (lsu) a0  <-- 0
       0    11166        M 0x80002688 sub     a0, a1, a0             #; a1  = 0, a0  = 0, (wrb) a0  <-- 0
       0    11167        M 0x8000268c ret                            #; ra  = 0x80002e00, goto 0x80002e00
       0    11168        M 0x80002e00 lw      t0, 0(sp)              #; sp  = 0x0011ff58, t0  <~~ Word[0x0011ff58]
       0    11171        M                                           #; (lsu) t0  <-- 0
       0    11172        M 0x80002e04 lw      ra, 4(sp)              #; sp  = 0x0011ff58, ra  <~~ Word[0x0011ff5c]
       0    11173        M 0x80002e08 addi    sp, sp, 8              #; sp  = 0x0011ff58, (wrb) sp  <-- 0x0011ff60
       0    11174        M 0x80002e0c bnez    a0, pc + 24            #; a0  = 0, not taken
       0    11175        M                                           #; (lsu) ra  <-- 0x80002bc8
       0    11181        M 0x80002e10 slli    t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 0
       0    11182        M 0x80002e14 ori     t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 1
       0    11183        M 0x80002e18 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002e18
       0    11184        M 0x80002e1c addi    t1, t1, 616            #; t1  = 0x80002e18, (wrb) t1  <-- 0x80003080
       0    11192        M 0x80002e20 sw      t0, 0(t1)              #; t1  = 0x80003080, 1 ~~> Word[0x80003080]
       0    11193        M 0x80002e24 ret                            #; ra  = 0x80002bc8, goto 0x80002bc8
       0    11194        M 0x80002bc8 wfi                            #; 

## Performance metrics

Performance metrics for section 0 @ (12, 4827):
snitch_loads                                    38
snitch_stores                                   51
fpss_stores                                      1
fpss_loads                                       0
snitch_avg_load_latency                    17.6053
snitch_occupancy                            0.3493
snitch_fseq_rel_offloads                    0.2062
fseq_yield                                     1.0
fseq_fpu_yield                                 1.0
fpss_section_latency                             0
fpss_avg_fpu_latency                           1.0
fpss_avg_load_latency                            0
fpss_occupancy                              0.0907
fpss_fpu_occupancy                          0.0897
fpss_fpu_rel_occupancy                      0.9886
cycles                                        4816
total_ipc                                   0.4400

Performance metrics for section 1 @ (4829, 5278):
snitch_loads                                     0
fpss_loads                                       0
snitch_avg_load_latency                          0
snitch_occupancy                            0.1637
snitch_fseq_rel_offloads                    0.4789
fseq_yield                                  2.0588
fseq_fpu_yield                              2.0588
fpss_section_latency                             2
fpss_avg_fpu_latency                        2.8102
fpss_avg_load_latency                            0
fpss_occupancy                              0.3097
fpss_fpu_occupancy                          0.3031
fpss_fpu_rel_occupancy                      0.9786
cycles                                         452
total_ipc                                   0.4735

Performance metrics for section 2 @ (5280, 11194):
snitch_stores                                  171
snitch_loads                                   186
fpss_loads                                      13
fpss_stores                                      4
snitch_avg_load_latency                     9.6613
snitch_occupancy                            0.2965
snitch_fseq_rel_offloads                    0.0207
fseq_yield                                     1.0
fseq_fpu_yield                                 1.0
fpss_section_latency                             0
fpss_avg_fpu_latency                        0.8571
fpss_avg_load_latency                       5.9231
fpss_occupancy                              0.0063
fpss_fpu_occupancy                          0.0036
fpss_fpu_rel_occupancy                      0.5676
cycles                                        5915
total_ipc                                   0.3028
