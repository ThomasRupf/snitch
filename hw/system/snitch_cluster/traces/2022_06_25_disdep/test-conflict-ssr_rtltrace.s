       0       12        M 0x00001000 csrr    a0, mhartid            #; mhartid = 0, (wrb) a0  <-- 0
       0       32        M 0x00001004 auipc   a1, 0x0                #; (wrb) a1  <-- 4100
       0       56        M 0x00001008 addi    a1, a1, 32             #; a1  = 4100, (wrb) a1  <-- 4132
       0       84        M 0x0000100c auipc   t0, 0x0                #; (wrb) t0  <-- 4108
       0      104        M 0x00001010 lw      t0, 20(t0)             #; t0  = 4108, t0  <~~ Word[0x00001020]
       0      115        M                                           #; (lsu) t0  <-- 0x800029d0
       0      128        M 0x00001014 jalr    t0                     #; t0  = 0x800029d0, (wrb) ra  <-- 4120, goto 0x800029d0
       0      269        M 0x800029d0 auipc   gp, 0x1                #; (wrb) gp  <-- 0x800039d0
       0      270        M 0x800029d4 addi    gp, gp, -264           #; gp  = 0x800039d0, (wrb) gp  <-- 0x800038c8
       0      271        M 0x800029d8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800029d8
       0      272        M 0x800029dc jalr    ra, ra, 964            #; ra  = 0x800029d8, (wrb) ra  <-- 0x800029e0, goto 0x80002d9c
       0      292        M 0x80002d9c mv      a4, a1                 #; a1  = 4132, (wrb) a4  <-- 4132
       0      304        M 0x80002da0 lw      a1, 4(a4)              #; a4  = 4132, a1  <~~ Word[0x00001028]
       0      334        M                                           #; (lsu) a1  <-- 8
       0      335        M 0x80002da4 lw      t0, 8(a4)              #; a4  = 4132, t0  <~~ Word[0x0000102c]
       0      374        M                                           #; (lsu) t0  <-- 0
       0      375        M 0x80002da8 lw      a2, 12(a4)             #; a4  = 4132, a2  <~~ Word[0x00001030]
       0      414        M                                           #; (lsu) a2  <-- 0x00100000
       0      415        M 0x80002dac lw      t1, 16(a4)             #; a4  = 4132, t1  <~~ Word[0x00001034]
       0      454        M                                           #; (lsu) t1  <-- 0x00020000
       0      455        M 0x80002db0 lw      t2, 20(a4)             #; a4  = 4132, t2  <~~ Word[0x00001038]
       0      456        M 0x80002db4 sub     a0, a0, t0             #; a0  = 0, t0  = 0, (wrb) a0  <-- 0
       0      457        M 0x80002db8 div     t3, a0, a1             #; a0  = 0, a1  = 8
       0      460        M                                           #; (acc) t4  <-- 0x027e0eb3
       0      494        M                                           #; (lsu) t2  <-- 0
       0      495        M 0x80002dbc mul     t4, t3, t2             #; t3  = 0, t2  = 0
       0      498        M                                           #; (acc) a2  <-- 0x01d60633
       0      499        M 0x80002dc0 add     a2, a2, t4             #; a2  = 0x00100000, t4  = 0, (wrb) a2  <-- 0x00100000
       0      500        M 0x80002dc4 add     a3, a2, t1             #; a2  = 0x00100000, t1  = 0x00020000, (wrb) a3  <-- 0x00120000
       0      501        M 0x80002dc8 remu    a0, a0, a1             #; a0  = 0, a1  = 8
       0      502        M 0x80002dcc ret                            #; ra  = 0x800029e0, goto 0x800029e0
       0      504        M                                           #; (acc) s0  <-- 0x00050413
       0      505        M 0x800029e0 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
       0      506        M 0x800029e4 mv      a0, a4                 #; a4  = 4132, (wrb) a0  <-- 4132
       0      507        M 0x800029e8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800029e8
       0      508        M 0x800029ec jalr    ra, ra, 1036           #; ra  = 0x800029e8, (wrb) ra  <-- 0x800029f0, goto 0x80002df4
       0      523        M 0x80002df4 lw      a0, 8(a0)              #; a0  = 4132, a0  <~~ Word[0x0000102c]
       0      524        M 0x80002df8 ret                            #; ra  = 0x800029f0, goto 0x800029f0
       0      543        M                                           #; (lsu) a0  <-- 0
       0      544        M 0x800029f0 mv      t0, a0                 #; a0  = 0, (wrb) t0  <-- 0
       0      545        M 0x800029f4 mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
       0      546        M 0x800029f8 csrr    t1, mhartid            #; mhartid = 0, (wrb) t1  <-- 0
       0      547        M 0x800029fc sub     t0, t1, t0             #; t1  = 0, t0  = 0, (wrb) t0  <-- 0
       0      549        M 0x80002a00 bnez    t0, pc + 36            #; t0  = 0, not taken
       0      550        M 0x80002a04 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002a04
       0      551        M 0x80002a08 addi    t0, t0, 1940           #; t0  = 0x80002a04, (wrb) t0  <-- 0x80003198
       0      552        M 0x80002a0c auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002a0c
       0      562        M 0x80002a10 addi    t1, t1, 1936           #; t1  = 0x80002a0c, (wrb) t1  <-- 0x8000319c
       0      563        M 0x80002a14 bge     t0, t1, pc + 16        #; t0  = 0x80003198, t1  = 0x8000319c, not taken
       0      564        M 0x80002a18 sw      zero, 0(t0)            #; t0  = 0x80003198, 0 ~~> Word[0x80003198]
       0      565        M 0x80002a1c addi    t0, t0, 4              #; t0  = 0x80003198, (wrb) t0  <-- 0x8000319c
       0      573        M 0x80002a20 blt     t0, t1, pc - 8         #; t0  = 0x8000319c, t1  = 0x8000319c, not taken
       0      574        M 0x80002a24 csrr    t0, misa               #; misa = 0x40801129, (wrb) t0  <-- 0x40801129
       0      575        M 0x80002a28 andi    t0, t0, 40             #; t0  = 0x40801129, (wrb) t0  <-- 40
       0      576        M 0x80002a2c beqz    t0, pc + 132           #; t0  = 40, not taken
       0      586        M 0x80002a30 fcvt.d.w ft0, zero             #; ac1  = 0
       0      587        M 0x80002a34 fcvt.d.w ft1, zero             #; ac1  = 0, (f:fpu) ft0  <-- 0.0
       0      588        M 0x80002a38 fcvt.d.w ft2, zero             #; ac1  = 0, (f:fpu) ft1  <-- 0.0
       0      589        M 0x80002a3c fcvt.d.w ft3, zero             #; ac1  = 0, (f:fpu) ft2  <-- 0.0
       0      590        M                                           #; (f:fpu) ft3  <-- 0.0
       0      598        M 0x80002a40 fcvt.d.w ft4, zero             #; ac1  = 0
       0      599        M 0x80002a44 fcvt.d.w ft5, zero             #; ac1  = 0, (f:fpu) ft4  <-- 0.0
       0      600        M 0x80002a48 fcvt.d.w ft6, zero             #; ac1  = 0, (f:fpu) ft5  <-- 0.0
       0      601        M 0x80002a4c fcvt.d.w ft7, zero             #; ac1  = 0, (f:fpu) ft6  <-- 0.0
       0      602        M                                           #; (f:fpu) ft7  <-- 0.0
       0      610        M 0x80002a50 fcvt.d.w fs0, zero             #; ac1  = 0
       0      611        M 0x80002a54 fcvt.d.w fs1, zero             #; ac1  = 0, (f:fpu) fs0  <-- 0.0
       0      612        M 0x80002a58 fcvt.d.w fa0, zero             #; ac1  = 0, (f:fpu) fs1  <-- 0.0
       0      613        M 0x80002a5c fcvt.d.w fa1, zero             #; ac1  = 0, (f:fpu) fa0  <-- 0.0
       0      614        M                                           #; (f:fpu) fa1  <-- 0.0
       0      622        M 0x80002a60 fcvt.d.w fa2, zero             #; ac1  = 0
       0      623        M 0x80002a64 fcvt.d.w fa3, zero             #; ac1  = 0, (f:fpu) fa2  <-- 0.0
       0      624        M 0x80002a68 fcvt.d.w fa4, zero             #; ac1  = 0, (f:fpu) fa3  <-- 0.0
       0      625        M 0x80002a6c fcvt.d.w fa5, zero             #; ac1  = 0, (f:fpu) fa4  <-- 0.0
       0      626        M                                           #; (f:fpu) fa5  <-- 0.0
       0      634        M 0x80002a70 fcvt.d.w fa6, zero             #; ac1  = 0
       0      635        M 0x80002a74 fcvt.d.w fa7, zero             #; ac1  = 0, (f:fpu) fa6  <-- 0.0
       0      636        M 0x80002a78 fcvt.d.w fs2, zero             #; ac1  = 0, (f:fpu) fa7  <-- 0.0
       0      637        M 0x80002a7c fcvt.d.w fs3, zero             #; ac1  = 0, (f:fpu) fs2  <-- 0.0
       0      638        M                                           #; (f:fpu) fs3  <-- 0.0
       0      646        M 0x80002a80 fcvt.d.w fs4, zero             #; ac1  = 0
       0      647        M 0x80002a84 fcvt.d.w fs5, zero             #; ac1  = 0, (f:fpu) fs4  <-- 0.0
       0      648        M 0x80002a88 fcvt.d.w fs6, zero             #; ac1  = 0, (f:fpu) fs5  <-- 0.0
       0      649        M 0x80002a8c fcvt.d.w fs7, zero             #; ac1  = 0, (f:fpu) fs6  <-- 0.0
       0      650        M                                           #; (f:fpu) fs7  <-- 0.0
       0      658        M 0x80002a90 fcvt.d.w fs8, zero             #; ac1  = 0
       0      659        M 0x80002a94 fcvt.d.w fs9, zero             #; ac1  = 0, (f:fpu) fs8  <-- 0.0
       0      660        M 0x80002a98 fcvt.d.w fs10, zero            #; ac1  = 0, (f:fpu) fs9  <-- 0.0
       0      661        M 0x80002a9c fcvt.d.w fs11, zero            #; ac1  = 0, (f:fpu) fs10 <-- 0.0
       0      662        M                                           #; (f:fpu) fs11 <-- 0.0
       0      670        M 0x80002aa0 fcvt.d.w ft8, zero             #; ac1  = 0
       0      671        M 0x80002aa4 fcvt.d.w ft9, zero             #; ac1  = 0, (f:fpu) ft8  <-- 0.0
       0      672        M 0x80002aa8 fcvt.d.w ft10, zero            #; ac1  = 0, (f:fpu) ft9  <-- 0.0
       0      673        M 0x80002aac fcvt.d.w ft11, zero            #; ac1  = 0, (f:fpu) ft10 <-- 0.0
       0      674        M                                           #; (f:fpu) ft11 <-- 0.0
       0      681        M 0x80002ab0 addi    a3, a3, -8             #; a3  = 0x00120000, (wrb) a3  <-- 0x0011fff8
       0      682        M 0x80002ab4 sw      zero, 0(a3)            #; a3  = 0x0011fff8, 0 ~~> Word[0x0011fff8]
       0      683        M 0x80002ab8 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002ab8
       0      684        M 0x80002abc lw      t0, 900(t0)            #; t0  = 0x80002ab8, t0  <~~ Word[0x80002e3c]
       0      704        M                                           #; (lsu) t0  <-- 136
       0      705        M 0x80002ac0 sub     a3, a3, t0             #; a3  = 0x0011fff8, t0  = 136, (wrb) a3  <-- 0x0011ff70
       0      706        M 0x80002ac4 mv      a5, a3                 #; a3  = 0x0011ff70, (wrb) a5  <-- 0x0011ff70
       0      707        M 0x80002ac8 auipc   t2, 0x0                #; (wrb) t2  <-- 0x80002ac8
       0      708        M 0x80002acc lw      t2, 880(t2)            #; t2  = 0x80002ac8, t2  <~~ Word[0x80002e38]
       0      744        M                                           #; (lsu) t2  <-- 10
       0      745        M 0x80002ad0 sll     t0, a0, t2             #; a0  = 0, t2  = 10, (wrb) t0  <-- 0
       0      746        M 0x80002ad4 sll     t1, a1, t2             #; a1  = 8, t2  = 10, (wrb) t1  <-- 8192
       0      747        M 0x80002ad8 sub     sp, a3, t0             #; a3  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
       0      748        M 0x80002adc sub     a3, a3, t1             #; a3  = 0x0011ff70, t1  = 8192, (wrb) a3  <-- 0x0011df70
       0      749        M 0x80002ae0 slli    t0, a0, 3              #; a0  = 0, (wrb) t0  <-- 0
       0      750        M 0x80002ae4 slli    t1, a1, 3              #; a1  = 8, (wrb) t1  <-- 64
       0      751        M 0x80002ae8 sub     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
       0      752        M 0x80002aec sub     a3, a3, t1             #; a3  = 0x0011df70, t1  = 64, (wrb) a3  <-- 0x0011df30
       0      761        M 0x80002af0 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002af0
       0      762        M 0x80002af4 addi    t0, t0, 1496           #; t0  = 0x80002af0, (wrb) t0  <-- 0x800030c8
       0      763        M 0x80002af8 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002af8
       0      764        M 0x80002afc addi    t1, t1, 1488           #; t1  = 0x80002af8, (wrb) t1  <-- 0x800030c8
       0      775        M 0x80002b00 auipc   t2, 0x0                #; (wrb) t2  <-- 0x80002b00
       0      776        M 0x80002b04 addi    t2, t2, 1480           #; t2  = 0x80002b00, (wrb) t2  <-- 0x800030c8
       0      777        M 0x80002b08 auipc   t3, 0x0                #; (wrb) t3  <-- 0x80002b08
       0      778        M 0x80002b0c addi    t3, t3, 1488           #; t3  = 0x80002b08, (wrb) t3  <-- 0x800030d8
       0      787        M 0x80002b10 add     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0x800030c8, (wrb) sp  <-- 0x80123038
       0      788        M 0x80002b14 sub     sp, sp, t1             #; sp  = 0x80123038, t1  = 0x800030c8, (wrb) sp  <-- 0x0011ff70
       0      789        M 0x80002b18 add     sp, sp, t2             #; sp  = 0x0011ff70, t2  = 0x800030c8, (wrb) sp  <-- 0x80123038
       0      790        M 0x80002b1c sub     sp, sp, t3             #; sp  = 0x80123038, t3  = 0x800030d8, (wrb) sp  <-- 0x0011ff60
       0      799        M 0x80002b20 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
       0      800        M 0x80002b24 mv      tp, sp                 #; sp  = 0x0011ff60, (wrb) tp  <-- 0x0011ff60
       0      801        M 0x80002b28 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
       0      802        M 0x80002b2c mv      t4, tp                 #; tp  = 0x0011ff60, (wrb) t4  <-- 0x0011ff60
       0      811        M 0x80002b30 bge     t0, t1, pc + 24        #; t0  = 0x800030c8, t1  = 0x800030c8, taken, goto 0x80002b48
       0      823        M 0x80002b48 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002b48
       0      824        M 0x80002b4c addi    t0, t0, 1408           #; t0  = 0x80002b48, (wrb) t0  <-- 0x800030c8
       0      835        M 0x80002b50 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002b50
       0      836        M 0x80002b54 addi    t1, t1, 1416           #; t1  = 0x80002b50, (wrb) t1  <-- 0x800030d8
       0      837        M 0x80002b58 bge     t0, t1, pc + 20        #; t0  = 0x800030c8, t1  = 0x800030d8, not taken
       0      838        M 0x80002b5c sw      zero, 0(t4)            #; t4  = 0x0011ff60, 0 ~~> Word[0x0011ff60]
       0      847        M 0x80002b60 addi    t0, t0, 4              #; t0  = 0x800030c8, (wrb) t0  <-- 0x800030cc
       0      848        M 0x80002b64 addi    t4, t4, 4              #; t4  = 0x0011ff60, (wrb) t4  <-- 0x0011ff64
       0      849        M 0x80002b68 blt     t0, t2, pc - 12        #; t0  = 0x800030cc, t2  = 0x800030c8, not taken
       0      850        M 0x80002b6c addi    sp, sp, -20            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff4c
       0      862        M 0x80002b70 sw      a0, 0(sp)              #; sp  = 0x0011ff4c, 0 ~~> Word[0x0011ff4c]
       0      863        M 0x80002b74 sw      a1, 4(sp)              #; sp  = 0x0011ff4c, 8 ~~> Word[0x0011ff50]
       0      864        M 0x80002b78 sw      a2, 8(sp)              #; sp  = 0x0011ff4c, 0x00100000 ~~> Word[0x0011ff54]
       0      865        M 0x80002b7c sw      a3, 12(sp)             #; sp  = 0x0011ff4c, 0x0011df30 ~~> Word[0x0011ff58]
       0      875        M 0x80002b80 sw      a4, 16(sp)             #; sp  = 0x0011ff4c, 4132 ~~> Word[0x0011ff5c]
       0      876        M 0x80002b84 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002b84
       0      877        M 0x80002b88 jalr    ra, ra, -1052          #; ra  = 0x80002b84, (wrb) ra  <-- 0x80002b8c, goto 0x80002768
       0      899        M 0x80002768 sw      a5, 0(a5)              #; a5  = 0x0011ff70, 0x0011ff70 ~~> Word[0x0011ff70]
       0      900        M 0x8000276c sw      a4, 4(a5)              #; a5  = 0x0011ff70, 4132 ~~> Word[0x0011ff74]
       0      911        M 0x80002770 lw      t1, 8(a4)              #; a4  = 4132, t1  <~~ Word[0x0000102c]
       0      949        M                                           #; (lsu) t1  <-- 0
       0      950        M 0x80002774 sw      t1, 8(a5)              #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff78]
       0      951        M 0x80002778 lw      a6, 40(a4)             #; a4  = 4132, a6  <~~ Word[0x0000104c]
       0      989        M                                           #; (lsu) a6  <-- 1
       0      990        M 0x8000277c lw      a7, 44(a4)             #; a4  = 4132, a7  <~~ Word[0x00001050]
       0     1020        M                                           #; (lsu) a7  <-- 1
       0     1021        M 0x80002780 lw      t0, 4(a4)              #; a4  = 4132, t0  <~~ Word[0x00001028]
       0     1022        M 0x80002784 mul     a6, a7, a6             #; a7  = 1, a6  = 1
       0     1025        M                                           #; (acc) a0  <-- 0x02580533
       0     1060        M                                           #; (lsu) t0  <-- 8
       0     1061        M 0x80002788 mul     a0, a6, t0             #; a6  = 1, t0  = 8
       0     1064        M                                           #; (acc) a2  <-- 0x00a7a623
       0     1065        M 0x8000278c sw      a0, 12(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff7c]
       0     1066        M 0x80002790 csrr    a7, mhartid            #; mhartid = 0, (wrb) a7  <-- 0
       0     1067        M 0x80002794 sub     a0, a7, t1             #; a7  = 0, t1  = 0, (wrb) a0  <-- 0
       0     1068        M 0x80002798 divu    a0, a0, t0             #; a0  = 0, t0  = 8
       0     1071        M                                           #; (acc) a6  <-- 0x00a7a823
       0     1072        M 0x8000279c sw      a0, 16(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff80]
       0     1078        M 0x800027a0 sw      a6, 20(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff84]
       0     1079        M 0x800027a4 sw      t1, 24(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff88]
       0     1080        M 0x800027a8 sw      a1, 28(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff8c]
       0     1081        M 0x800027ac lw      a0, 24(a4)             #; a4  = 4132, a0  <~~ Word[0x0000103c]
       0     1090        M 0x800027b0 lui     a1, 0x10000            #; (wrb) a1  <-- 0x10000000
       0     1100        M                                           #; (lsu) a0  <-- 0x80000000
       0     1101        M 0x800027b4 add     a0, a0, a1             #; a0  = 0x80000000, a1  = 0x10000000, (wrb) a0  <-- 0x90000000
       0     1102        M 0x800027b8 sw      zero, 36(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff94]
       0     1103        M 0x800027bc sw      a0, 32(a5)             #; a5  = 0x0011ff70, 0x90000000 ~~> Word[0x0011ff90]
       0     1104        M 0x800027c0 lw      a0, 32(a4)             #; a4  = 4132, a0  <~~ Word[0x00001044]
       0     1140        M                                           #; (lsu) a0  <-- 0
       0     1141        M 0x800027c4 lw      a1, 36(a4)             #; a4  = 4132, a1  <~~ Word[0x00001048]
       0     1142        M 0x800027c8 sw      a0, 40(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff98]
       0     1179        M                                           #; (lsu) a1  <-- 1
       0     1180        M 0x800027cc sw      a1, 44(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff9c]
       0     1181        M 0x800027d0 sw      a2, 48(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffa0]
       0     1182        M 0x800027d4 sw      zero, 52(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffa4]
       0     1183        M 0x800027d8 sw      a3, 56(a5)             #; a5  = 0x0011ff70, 0x0011df30 ~~> Word[0x0011ffa8]
       0     1184        M 0x800027dc sw      zero, 60(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffac]
       0     1193        M 0x800027e0 lw      a0, 16(a4)             #; a4  = 4132, a0  <~~ Word[0x00001034]
       0     1205        M                                           #; (lsu) a0  <-- 0x00020000
       0     1206        M 0x800027e4 add     a6, a2, a0             #; a2  = 0x00100000, a0  = 0x00020000, (wrb) a6  <-- 0x00120000
       0     1207        M 0x800027e8 addi    a1, a6, 400            #; a6  = 0x00120000, (wrb) a1  <-- 0x00120190
       0     1208        M 0x800027ec sw      a1, 112(a5)            #; a5  = 0x0011ff70, 0x00120190 ~~> Word[0x0011ffe0]
       0     1209        M 0x800027f0 sltu    t0, a6, a0             #; a6  = 0x00120000, a0  = 0x00020000, (wrb) t0  <-- 0
       0     1210        M 0x800027f4 srli    a1, a0, 1              #; a0  = 0x00020000, (wrb) a1  <-- 0x00010000
       0     1211        M 0x800027f8 add     t1, a6, a1             #; a6  = 0x00120000, a1  = 0x00010000, (wrb) t1  <-- 0x00130000
       0     1212        M 0x800027fc sltu    a1, t1, a6             #; t1  = 0x00130000, a6  = 0x00120000, (wrb) a1  <-- 0
       0     1220        M 0x80002800 add     a1, t0, a1             #; t0  = 0, a1  = 0, (wrb) a1  <-- 0
       0     1221        M 0x80002804 sw      t1, 64(a5)             #; a5  = 0x0011ff70, 0x00130000 ~~> Word[0x0011ffb0]
       0     1222        M 0x80002808 sw      a1, 68(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffb4]
       0     1223        M 0x8000280c slli    a0, a0, 1              #; a0  = 0x00020000, (wrb) a0  <-- 0x00040000
       0     1233        M 0x80002810 add     a1, a0, a2             #; a0  = 0x00040000, a2  = 0x00100000, (wrb) a1  <-- 0x00140000
       0     1234        M 0x80002814 sltu    a0, a1, a0             #; a1  = 0x00140000, a0  = 0x00040000, (wrb) a0  <-- 0
       0     1235        M 0x80002818 sw      a1, 72(a5)             #; a5  = 0x0011ff70, 0x00140000 ~~> Word[0x0011ffb8]
       0     1236        M 0x8000281c sw      a0, 76(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffbc]
       0     1245        M 0x80002820 sw      zero, 104(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd8]
       0     1246        M 0x80002824 sw      zero, 108(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffdc]
       0     1247        M 0x80002828 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1248        M 0x8000282c add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1257        M 0x80002830 sw      a5, 0(a0)              #; a0  = 0x0011ff60, 0x0011ff70 ~~> Word[0x0011ff60]
       0     1258        M 0x80002834 lw      a0, 0(a5)              #; a5  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1262        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1263        M 0x80002838 lw      a1, 24(a0)             #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ff88]
       0     1266        M                                           #; (lsu) a1  <-- 0
       0     1267        M 0x8000283c lw      a0, 28(a0)             #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff8c]
       0     1269        M 0x80002840 sub     a1, a7, a1             #; a7  = 0, a1  = 0, (wrb) a1  <-- 0
       0     1270        M                                           #; (lsu) a0  <-- 8
       0     1271        M 0x80002844 remu    a0, a1, a0             #; a1  = 0, a0  = 8
       0     1272        M 0x80002848 lui     a1, 0x0                #; (wrb) a1  <-- 0
       0     1273        M 0x8000284c add     a1, a1, tp             #; a1  = 0, tp  = 0x0011ff60, (wrb) a1  <-- 0x0011ff60
       0     1281        M 0x80002850 sw      a0, 4(a1)              #; a1  = 0x0011ff60, 0 ~~> Word[0x0011ff64]
       0     1282        M 0x80002854 li      a0, 1096               #; (wrb) a0  <-- 1096
       0     1283        M 0x80002858 mul     a0, a7, a0             #; a7  = 0, a0  = 1096
       0     1284        M 0x8000285c auipc   a1, 0x1                #; (wrb) a1  <-- 0x8000385c
       0     1293        M 0x80002860 addi    a1, a1, -1728          #; a1  = 0x8000385c, (wrb) a1  <-- 0x8000319c
       0     1294        M 0x80002864 add     a0, a0, a1             #; a0  = 0, a1  = 0x8000319c, (wrb) a0  <-- 0x8000319c
       0     1295        M 0x80002868 sw      zero, 0(a0)            #; a0  = 0x8000319c, 0 ~~> Word[0x8000319c]
       0     1296        M 0x8000286c lw      a7, 48(a4)             #; a4  = 4132, a7  <~~ Word[0x00001054]
       0     1344        M                                           #; (lsu) a7  <-- 0xffff0000
       0     1345        M 0x80002870 sw      a7, 116(a5)            #; a5  = 0x0011ff70, 0xffff0000 ~~> Word[0x0011ffe4]
       0     1346        M 0x80002874 sw      a6, 124(a5)            #; a5  = 0x0011ff70, 0x00120000 ~~> Word[0x0011ffec]
       0     1347        M 0x80002878 sw      zero, 120(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffe8]
       0     1348        M 0x8000287c addi    a4, a6, 384            #; a6  = 0x00120000, (wrb) a4  <-- 0x00120180
       0     1349        M 0x80002880 sw      a4, 128(a5)            #; a5  = 0x0011ff70, 0x00120180 ~~> Word[0x0011fff0]
       0     1350        M 0x80002884 addi    a0, a2, 7              #; a2  = 0x00100000, (wrb) a0  <-- 0x00100007
       0     1351        M 0x80002888 andi    a0, a0, -8             #; a0  = 0x00100007, (wrb) a0  <-- 0x00100000
       0     1352        M 0x8000288c sw      a0, 80(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc0]
       0     1362        M 0x80002890 sub     a2, a3, a2             #; a3  = 0x0011df30, a2  = 0x00100000, (wrb) a2  <-- 0x0001df30
       0     1363        M 0x80002894 sw      a2, 84(a5)             #; a5  = 0x0011ff70, 0x0001df30 ~~> Word[0x0011ffc4]
       0     1364        M 0x80002898 sw      a0, 88(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc8]
       0     1366        M 0x8000289c lw      a0, 0(a1)              #; a1  = 0x8000319c, a0  <~~ Word[0x8000319c]
       0     1377        M                                           #; (lsu) a0  <-- 0
       0     1378        M 0x800028a0 addi    a0, a0, 1103           #; a0  = 0, (wrb) a0  <-- 1103
       0     1379        M 0x800028a4 andi    a0, a0, -8             #; a0  = 1103, (wrb) a0  <-- 1096
       0     1380        M 0x800028a8 sw      a0, 92(a5)             #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffcc]
       0     1381        M 0x800028ac sw      zero, 96(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd0]
       0     1387        M 0x800028b0 sw      a0, 100(a5)            #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffd4]
       0     1388        M 0x800028b4 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1389        M 0x800028b8 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1390        M 0x800028bc sw      a7, 8(a0)              #; a0  = 0x0011ff60, 0xffff0000 ~~> Word[0x0011ff68]
       0     1399        M 0x800028c0 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1400        M 0x800028c4 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1401        M 0x800028c8 sw      a4, 12(a0)             #; a0  = 0x0011ff60, 0x00120180 ~~> Word[0x0011ff6c]
       0     1402        M 0x800028cc ret                            #; ra  = 0x80002b8c, goto 0x80002b8c
       0     1415        M 0x80002b8c lw      a0, 0(sp)              #; sp  = 0x0011ff4c, a0  <~~ Word[0x0011ff4c]
       0     1418        M                                           #; (lsu) a0  <-- 0
       0     1419        M 0x80002b90 lw      a1, 4(sp)              #; sp  = 0x0011ff4c, a1  <~~ Word[0x0011ff50]
       0     1422        M                                           #; (lsu) a1  <-- 8
       0     1423        M 0x80002b94 lw      a2, 8(sp)              #; sp  = 0x0011ff4c, a2  <~~ Word[0x0011ff54]
       0     1426        M                                           #; (lsu) a2  <-- 0x00100000
       0     1427        M 0x80002b98 lw      a3, 12(sp)             #; sp  = 0x0011ff4c, a3  <~~ Word[0x0011ff58]
       0     1430        M                                           #; (lsu) a3  <-- 0x0011df30
       0     1431        M 0x80002b9c lw      a4, 16(sp)             #; sp  = 0x0011ff4c, a4  <~~ Word[0x0011ff5c]
       0     1432        M 0x80002ba0 addi    sp, sp, 20             #; sp  = 0x0011ff4c, (wrb) sp  <-- 0x0011ff60
       0     1433        M 0x80002ba4 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002ba4
       0     1434        M 0x80002ba8 addi    t0, t0, 60             #; t0  = 0x80002ba4, (wrb) t0  <-- 0x80002be0
       0     1435        M 0x80002bac csrw    mtvec, t0              #; t0  = 0x80002be0, (lsu) a4  <-- 4132
       0     1442        M 0x80002bb0 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002bb0
       0     1443        M 0x80002bb4 jalr    ra, ra, 544            #; ra  = 0x80002bb0, (wrb) ra  <-- 0x80002bb8, goto 0x80002dd0
       0     1456        M 0x80002dd0 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
       0     1457        M 0x80002dd4 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x80002bb8 ~~> Word[0x0011ff5c]
       0     1458        M 0x80002dd8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002dd8
       0     1459        M 0x80002ddc jalr    ra, ra, -1256          #; ra  = 0x80002dd8, (wrb) ra  <-- 0x80002de0, goto 0x800028f0
       0     1480        M 0x800028f0 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1481        M 0x800028f4 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1482        M 0x800028f8 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     1485        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1486        M 0x800028fc lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1490        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1492        M 0x80002900 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
       0     1493        M 0x80002904 ret                            #; ra  = 0x80002de0, goto 0x80002de0
       0     1496        M                                           #; (lsu) a0  <-- 0x00120190
       0     1497        M 0x80002de0 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
       0     1526        M                                           #; (lsu) a0  <-- 0
       0     1527        M 0x80002de4 mv      zero, a0               #; a0  = 0
       0     1528        M 0x80002de8 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
       0     1529        M 0x80002dec addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
       0     1531        M                                           #; (lsu) ra  <-- 0x80002bb8
       0     1532        M 0x80002df0 ret                            #; ra  = 0x80002bb8, goto 0x80002bb8
       0     1536        M 0x80002bb8 auipc   ra, 0xffffe            #; (wrb) ra  <-- 0x80000bb8
       0     1537        M 0x80002bbc jalr    ra, ra, -892           #; ra  = 0x80000bb8, (wrb) ra  <-- 0x80002bc0, goto 0x8000083c
       0     1542        M 0x8000083c addi    sp, sp, -32            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff40
       0     1545        M 0x80000840 sw      ra, 28(sp)             #; sp  = 0x0011ff40, 0x80002bc0 ~~> Word[0x0011ff5c]
       0     1546        M 0x80000844 sw      s0, 24(sp)             #; sp  = 0x0011ff40, 0 ~~> Word[0x0011ff58]
       0     1547        M 0x80000848 sw      s1, 20(sp)             #; sp  = 0x0011ff40, 0 ~~> Word[0x0011ff54]
       0     1548        M 0x8000084c sw      s2, 16(sp)             #; sp  = 0x0011ff40, 0 ~~> Word[0x0011ff50]
       0     1559        M 0x80000854 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1560        M 0x80000858 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
                         M 0x80000850 fsd     fs0, 8(sp)             #; 0.0 ~~> Doub[0x0011ff48]
       0     1561        M 0x8000085c lw      a1, 4(a0)              #; a0  = 0x0011ff60, a1  <~~ Word[0x0011ff64]
       0     1564        M                                           #; (lsu) a1  <-- 0
       0     1570        M 0x80000860 li      a0, 0                  #; (wrb) a0  <-- 0
       0     1571        M 0x80000864 bnez    a1, pc + 640           #; a1  = 0, not taken
       0     1572        M 0x80000868 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1573        M 0x8000086c add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1582        M 0x80000870 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     1585        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1586        M 0x80000874 lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1589        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1590        M 0x80000878 lw      s0, 88(a0)             #; a0  = 0x0011ff70, s0  <~~ Word[0x0011ffc8]
       0     1593        M                                           #; (lsu) s0  <-- 0x00100000
       0     1594        M 0x8000087c lw      a1, 80(a0)             #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ffc0]
       0     1597        M                                           #; (lsu) a1  <-- 0x00100000
       0     1598        M 0x80000880 lw      a2, 84(a0)             #; a0  = 0x0011ff70, a2  <~~ Word[0x0011ffc4]
       0     1599        M 0x80000884 addi    a3, s0, 80             #; s0  = 0x00100000, (wrb) a3  <-- 0x00100050
       0     1601        M                                           #; (lsu) a2  <-- 0x0001df30
       0     1602        M 0x80000888 add     a1, a2, a1             #; a2  = 0x0001df30, a1  = 0x00100000, (wrb) a1  <-- 0x0011df30
       0     1603        M 0x8000088c bgeu    a1, a3, pc + 44        #; a1  = 0x0011df30, a3  = 0x00100050, taken, goto 0x800008b8
       0     1624        M 0x800008b8 sw      a3, 88(a0)             #; a0  = 0x0011ff70, 0x00100050 ~~> Word[0x0011ffc8]
       0     1625        M 0x800008bc mv      s2, s0                 #; s0  = 0x00100000, (wrb) s2  <-- 0x00100000
       0     1648        M 0x800008c0 addi    a2, s0, 160            #; s0  = 0x00100000, (wrb) a2  <-- 0x001000a0
       0     1649        M 0x800008c4 mv      s0, a3                 #; a3  = 0x00100050, (wrb) s0  <-- 0x00100050
       0     1650        M 0x800008c8 bgeu    a1, a2, pc - 44        #; a1  = 0x0011df30, a2  = 0x001000a0, taken, goto 0x8000089c
       0     1651        M 0x8000089c sw      a2, 88(a0)             #; a0  = 0x0011ff70, 0x001000a0 ~~> Word[0x0011ffc8]
       0     1664        M 0x800008a0 mv      s1, s0                 #; s0  = 0x00100050, (wrb) s1  <-- 0x00100050
       0     1665        M 0x800008a4 addi    a3, a2, 80             #; a2  = 0x001000a0, (wrb) a3  <-- 0x001000f0
       0     1666        M 0x800008a8 mv      s0, a2                 #; a2  = 0x001000a0, (wrb) s0  <-- 0x001000a0
       0     1667        M 0x800008ac bltu    a1, a3, pc + 44        #; a1  = 0x0011df30, a3  = 0x001000f0, not taken
       0     1668        M 0x800008b0 sw      a3, 88(a0)             #; a0  = 0x0011ff70, 0x001000f0 ~~> Word[0x0011ffc8]
       0     1669        M 0x800008b4 j       pc + 0x28              #; goto 0x800008dc
       0     1680        M 0x800008dc li      a1, 1                  #; (wrb) a1  <-- 1
       0     1692        M 0x800008e0 mv      a0, s2                 #; s2  = 0x00100000, (wrb) a0  <-- 0x00100000
       0     1693        M 0x800008e4 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800008e4
       0     1694        M 0x800008e8 jalr    ra, ra, -688           #; ra  = 0x800008e4, (wrb) ra  <-- 0x800008ec, goto 0x80000634
       0     1715        M 0x80000634 addi    sp, sp, -96            #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011fee0
       0     1718        M 0x80000638 fsd     fs0, 88(sp)            #; 0.0 ~~> Doub[0x0011ff38]
       0     1719        M 0x8000063c fsd     fs1, 80(sp)            #; 0.0 ~~> Doub[0x0011ff30]
       0     1729        M 0x80000640 fsd     fs2, 72(sp)            #; 0.0 ~~> Doub[0x0011ff28]
       0     1730        M 0x80000644 fsd     fs3, 64(sp)            #; 0.0 ~~> Doub[0x0011ff20]
       0     1731        M 0x80000648 fsd     fs4, 56(sp)            #; 0.0 ~~> Doub[0x0011ff18]
       0     1732        M 0x8000064c fsd     fs5, 48(sp)            #; 0.0 ~~> Doub[0x0011ff10]
       0     1741        M 0x80000650 fsd     fs6, 40(sp)            #; 0.0 ~~> Doub[0x0011ff08]
       0     1742        M 0x80000654 fsd     fs7, 32(sp)            #; 0.0 ~~> Doub[0x0011ff00]
       0     1743        M 0x80000658 fsd     fs8, 24(sp)            #; 0.0 ~~> Doub[0x0011fef8]
       0     1744        M 0x8000065c fsd     fs9, 16(sp)            #; 0.0 ~~> Doub[0x0011fef0]
       0     1753        M 0x80000668 srli    a2, a0, 20             #; a0  = 0x00100000, (wrb) a2  <-- 1
                         M 0x80000660 fsd     fs10, 8(sp)            #; 0.0 ~~> Doub[0x0011fee8]
       0     1754        M 0x8000066c snez    a2, a2                 #; a2  = 1, (wrb) a2  <-- 1
                         M 0x80000664 fsd     fs11, 0(sp)            #; 0.0 ~~> Doub[0x0011fee0]
       0     1763        M 0x80000670 lui     a3, 0x120              #; (wrb) a3  <-- 0x00120000
       0     1764        M 0x80000674 addi    a3, a3, -71            #; a3  = 0x00120000, (wrb) a3  <-- 0x0011ffb9
       0     1765        M 0x80000678 sltu    a3, a0, a3             #; a0  = 0x00100000, a3  = 0x0011ffb9, (wrb) a3  <-- 1
       0     1766        M 0x8000067c and     a2, a2, a3             #; a2  = 1, a3  = 1, (wrb) a2  <-- 1
       0     1775        M 0x80000680 beqz    a2, pc + 220           #; a2  = 1, not taken
       0     1776        M 0x80000684 li      a2, 8                  #; (wrb) a2  <-- 8
       0     1777        M 0x80000688 li      a3, 9                  #; (wrb) a3  <-- 9
       0     1778        M 0x8000068c li      a4, 64                 #; (wrb) a4  <-- 64
       0     1787        M 0x80000690 li      a5, 192                #; (wrb) a5  <-- 192
       0     1788        M 0x80000694 scfgw   a3, a4                 #; a3  = 9, a4  = 64
       0     1789        M 0x80000698 scfgw   a2, a5                 #; a2  = 8, a5  = 192
       0     1790        M 0x8000069c li      a2, 32                 #; (wrb) a2  <-- 32
       0     1799        M 0x800006a0 scfgw   zero, a2               #; a2  = 32
       0     1800        M 0x800006a4 auipc   a2, 0x3                #; (wrb) a2  <-- 0x800036a4
       0     1801        M 0x800006a8 addi    a2, a2, -1484          #; a2  = 0x800036a4, (wrb) a2  <-- 0x800030d8
       0     1802        M                                           #; (acc) gp  <-- 0x00063187
       0     1804        M 0x800006ac fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x800030d8]
       0     1811        M 0x800006b0 scfgwi  a0, 896                #; a0  = 0x00100000
       0     1813        M 0x800006b4 csrrsi  a0, ssr, 1             #; (f:lsu) ft3  <-- 1.4142
       0     1814        M                                           #; (acc) tp  <-- 0x12327253
                         M 0x800006b8 fcvt.d.wu ft4, a1              #; ac1  = 1
       0     1815        M                                           #; (f:fpu) ft4  <-- 1.0
       0     1816        M 0x800006bc fmul.d  ft4, ft4, ft3          #; ft4  = 1.0, ft3  = 1.4142
       0     1819        M                                           #; (f:fpu) ft4  <-- 1.4142
       0     1824        M 0x800006c4 addi    a0, a1, 1              #; a1  = 1, (wrb) a0  <-- 2
       0     1825        M 0x800006c0 fsgnj.d ft0, ft4, ft4          #; ft4  = 1.4142, ft4  = 1.4142
       0     1826        M 0x800006c8 fcvt.d.wu ft4, a0              #; ac1  = 2, (f:fpu) ft0  <-- 1.4142
       0     1827        M                                           #; (f:fpu) ft4  <-- 2.0
       0     1828        M 0x800006cc fmul.d  ft4, ft4, ft3          #; ft4  = 2.0, ft3  = 1.4142
       0     1831        M                                           #; (f:fpu) ft4  <-- 2.8284
       0     1836        M 0x800006d4 addi    a0, a1, 2              #; a1  = 1, (wrb) a0  <-- 3
       0     1837        M 0x800006d0 fsgnj.d ft0, ft4, ft4          #; ft4  = 2.8284, ft4  = 2.8284
       0     1838        M 0x800006d8 fcvt.d.wu ft4, a0              #; ac1  = 3, (f:fpu) ft0  <-- 2.8284
       0     1839        M                                           #; (f:fpu) ft4  <-- 3.0
       0     1840        M 0x800006dc fmul.d  ft4, ft4, ft3          #; ft4  = 3.0, ft3  = 1.4142
       0     1843        M                                           #; (f:fpu) ft4  <-- 4.2426000
       0     1848        M 0x800006e4 addi    a0, a1, 3              #; a1  = 1, (wrb) a0  <-- 4
       0     1849        M 0x800006e0 fsgnj.d ft0, ft4, ft4          #; ft4  = 4.2426000, ft4  = 4.2426000
       0     1850        M 0x800006e8 fcvt.d.wu ft4, a0              #; ac1  = 4, (f:fpu) ft0  <-- 4.2426000
       0     1851        M                                           #; (f:fpu) ft4  <-- 4.0
       0     1852        M 0x800006ec fmul.d  ft4, ft4, ft3          #; ft4  = 4.0, ft3  = 1.4142
       0     1855        M                                           #; (f:fpu) ft4  <-- 5.6568
       0     1860        M 0x800006f4 addi    a0, a1, 4              #; a1  = 1, (wrb) a0  <-- 5
       0     1861        M 0x800006f0 fsgnj.d ft0, ft4, ft4          #; ft4  = 5.6568, ft4  = 5.6568
       0     1862        M 0x800006f8 fcvt.d.wu ft4, a0              #; ac1  = 5, (f:fpu) ft0  <-- 5.6568
       0     1863        M                                           #; (f:fpu) ft4  <-- 5.0
       0     1864        M 0x800006fc fmul.d  ft4, ft4, ft3          #; ft4  = 5.0, ft3  = 1.4142
       0     1867        M                                           #; (f:fpu) ft4  <-- 7.071
       0     1872        M 0x80000704 addi    a0, a1, 5              #; a1  = 1, (wrb) a0  <-- 6
       0     1873        M 0x80000700 fsgnj.d ft0, ft4, ft4          #; ft4  = 7.071, ft4  = 7.071
       0     1874        M 0x80000708 fcvt.d.wu ft4, a0              #; ac1  = 6, (f:fpu) ft0  <-- 7.071
       0     1875        M                                           #; (f:fpu) ft4  <-- 6.0
       0     1876        M 0x8000070c fmul.d  ft4, ft4, ft3          #; ft4  = 6.0, ft3  = 1.4142
       0     1879        M                                           #; (f:fpu) ft4  <-- 8.4852000
       0     1884        M 0x80000714 addi    a0, a1, 6              #; a1  = 1, (wrb) a0  <-- 7
       0     1885        M 0x80000710 fsgnj.d ft0, ft4, ft4          #; ft4  = 8.4852000, ft4  = 8.4852000
       0     1886        M 0x80000718 fcvt.d.wu ft4, a0              #; ac1  = 7, (f:fpu) ft0  <-- 8.4852000
       0     1887        M                                           #; (f:fpu) ft4  <-- 7.0
       0     1888        M 0x8000071c fmul.d  ft4, ft4, ft3          #; ft4  = 7.0, ft3  = 1.4142
       0     1891        M                                           #; (f:fpu) ft4  <-- 9.8994
       0     1896        M 0x80000724 addi    a0, a1, 7              #; a1  = 1, (wrb) a0  <-- 8
       0     1897        M 0x80000720 fsgnj.d ft0, ft4, ft4          #; ft4  = 9.8994, ft4  = 9.8994
       0     1898        M 0x80000728 fcvt.d.wu ft4, a0              #; ac1  = 8, (f:fpu) ft0  <-- 9.8994
       0     1899        M                                           #; (f:fpu) ft4  <-- 8.0
       0     1900        M 0x8000072c fmul.d  ft4, ft4, ft3          #; ft4  = 8.0, ft3  = 1.4142
       0     1903        M                                           #; (f:fpu) ft4  <-- 11.3136
       0     1908        M 0x80000734 addi    a0, a1, 8              #; a1  = 1, (wrb) a0  <-- 9
       0     1909        M 0x80000730 fsgnj.d ft0, ft4, ft4          #; ft4  = 11.3136, ft4  = 11.3136
       0     1910        M 0x80000738 fcvt.d.wu ft4, a0              #; ac1  = 9, (f:fpu) ft0  <-- 11.3136
       0     1911        M                                           #; (f:fpu) ft4  <-- 9.0
       0     1912        M 0x8000073c fmul.d  ft4, ft4, ft3          #; ft4  = 9.0, ft3  = 1.4142
       0     1915        M                                           #; (f:fpu) ft4  <-- 12.7278000
       0     1920        M 0x80000744 addi    a0, a1, 9              #; a1  = 1, (wrb) a0  <-- 10
       0     1921        M 0x80000740 fsgnj.d ft0, ft4, ft4          #; ft4  = 12.7278000, ft4  = 12.7278000
       0     1922        M 0x80000748 fcvt.d.wu ft4, a0              #; ac1  = 10, (f:fpu) ft0  <-- 12.7278000
       0     1923        M                                           #; (f:fpu) ft4  <-- 10.0
       0     1924        M 0x8000074c fmul.d  ft3, ft4, ft3          #; ft4  = 10.0, ft3  = 1.4142
       0     1927        M                                           #; (f:fpu) ft3  <-- 14.142
       0     1933        M 0x80000758 j       pc + 0xac              #; goto 0x80000804
                         M 0x80000750 fsgnj.d ft0, ft3, ft3          #; ft3  = 14.142, ft3  = 14.142
       0     1934        M 0x80000754 csrrci  a0, ssr, 1             #; (f:fpu) ft0  <-- 14.142
       0     1945        M 0x80000804 fld     fs11, 0(sp)            #; fs11 <~~ Doub[0x0011fee0]
       0     1946        M 0x80000808 fld     fs10, 8(sp)            #; fs10 <~~ Doub[0x0011fee8], (f:lsu) fs11 <-- 0.0
       0     1947        M 0x8000080c fld     fs9, 16(sp)            #; fs9  <~~ Doub[0x0011fef0], (f:lsu) fs10 <-- 0.0
       0     1948        M                                           #; (f:lsu) fs9  <-- 0.0
       0     1957        M 0x80000810 fld     fs8, 24(sp)            #; fs8  <~~ Doub[0x0011fef8]
       0     1958        M 0x80000814 fld     fs7, 32(sp)            #; fs7  <~~ Doub[0x0011ff00], (f:lsu) fs8  <-- 0.0
       0     1959        M 0x80000818 fld     fs6, 40(sp)            #; fs6  <~~ Doub[0x0011ff08], (f:lsu) fs7  <-- 0.0
       0     1960        M 0x8000081c fld     fs5, 48(sp)            #; fs5  <~~ Doub[0x0011ff10], (f:lsu) fs6  <-- 0.0
       0     1961        M                                           #; (f:lsu) fs5  <-- 0.0
       0     1969        M 0x80000820 fld     fs4, 56(sp)            #; fs4  <~~ Doub[0x0011ff18]
       0     1970        M 0x80000824 fld     fs3, 64(sp)            #; fs3  <~~ Doub[0x0011ff20], (f:lsu) fs4  <-- 0.0
       0     1971        M 0x80000828 fld     fs2, 72(sp)            #; fs2  <~~ Doub[0x0011ff28], (f:lsu) fs3  <-- 0.0
       0     1972        M 0x80000834 addi    sp, sp, 96             #; sp  = 0x0011fee0, (wrb) sp  <-- 0x0011ff40
                         M 0x8000082c fld     fs1, 80(sp)            #; fs1  <~~ Doub[0x0011ff30], (f:lsu) fs2  <-- 0.0
       0     1973        M 0x80000838 ret                            #; ra  = 0x800008ec, goto 0x800008ec
                         M 0x80000830 fld     fs0, 88(sp)            #; fs0  <~~ Doub[0x0011ff38], (f:lsu) fs1  <-- 0.0
       0     1974        M                                           #; (f:lsu) fs0  <-- 0.0
       0     1976        M 0x800008ec li      a1, 2                  #; (wrb) a1  <-- 2
       0     1979        M 0x800008f0 mv      a0, s1                 #; s1  = 0x00100050, (wrb) a0  <-- 0x00100050
       0     1980        M 0x800008f4 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800008f4
       0     1981        M 0x800008f8 jalr    ra, ra, -704           #; ra  = 0x800008f4, (wrb) ra  <-- 0x800008fc, goto 0x80000634
       0     1993        M 0x80000634 addi    sp, sp, -96            #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011fee0
       0     1996        M 0x80000638 fsd     fs0, 88(sp)            #; 0.0 ~~> Doub[0x0011ff38]
       0     1997        M 0x8000063c fsd     fs1, 80(sp)            #; 0.0 ~~> Doub[0x0011ff30]
       0     1998        M 0x80000640 fsd     fs2, 72(sp)            #; 0.0 ~~> Doub[0x0011ff28]
       0     1999        M 0x80000644 fsd     fs3, 64(sp)            #; 0.0 ~~> Doub[0x0011ff20]
       0     2000        M 0x80000648 fsd     fs4, 56(sp)            #; 0.0 ~~> Doub[0x0011ff18]
       0     2001        M 0x8000064c fsd     fs5, 48(sp)            #; 0.0 ~~> Doub[0x0011ff10]
       0     2002        M 0x80000650 fsd     fs6, 40(sp)            #; 0.0 ~~> Doub[0x0011ff08]
       0     2003        M 0x80000654 fsd     fs7, 32(sp)            #; 0.0 ~~> Doub[0x0011ff00]
       0     2004        M 0x80000658 fsd     fs8, 24(sp)            #; 0.0 ~~> Doub[0x0011fef8]
       0     2005        M 0x8000065c fsd     fs9, 16(sp)            #; 0.0 ~~> Doub[0x0011fef0]
       0     2006        M 0x80000668 srli    a2, a0, 20             #; a0  = 0x00100050, (wrb) a2  <-- 1
                         M 0x80000660 fsd     fs10, 8(sp)            #; 0.0 ~~> Doub[0x0011fee8]
       0     2007        M 0x8000066c snez    a2, a2                 #; a2  = 1, (wrb) a2  <-- 1
                         M 0x80000664 fsd     fs11, 0(sp)            #; 0.0 ~~> Doub[0x0011fee0]
       0     2008        M 0x80000670 lui     a3, 0x120              #; (wrb) a3  <-- 0x00120000
       0     2009        M 0x80000674 addi    a3, a3, -71            #; a3  = 0x00120000, (wrb) a3  <-- 0x0011ffb9
       0     2010        M 0x80000678 sltu    a3, a0, a3             #; a0  = 0x00100050, a3  = 0x0011ffb9, (wrb) a3  <-- 1
       0     2011        M 0x8000067c and     a2, a2, a3             #; a2  = 1, a3  = 1, (wrb) a2  <-- 1
       0     2012        M 0x80000680 beqz    a2, pc + 220           #; a2  = 1, not taken
       0     2013        M 0x80000684 li      a2, 8                  #; (wrb) a2  <-- 8
       0     2014        M 0x80000688 li      a3, 9                  #; (wrb) a3  <-- 9
       0     2015        M 0x8000068c li      a4, 64                 #; (wrb) a4  <-- 64
       0     2016        M 0x80000690 li      a5, 192                #; (wrb) a5  <-- 192
       0     2017        M 0x80000694 scfgw   a3, a4                 #; a3  = 9, a4  = 64
       0     2018        M 0x80000698 scfgw   a2, a5                 #; a2  = 8, a5  = 192
       0     2019        M 0x8000069c li      a2, 32                 #; (wrb) a2  <-- 32
       0     2020        M 0x800006a0 scfgw   zero, a2               #; a2  = 32, (acc) ra  <-- 0x00c020ab
       0     2021        M 0x800006a4 auipc   a2, 0x3                #; (wrb) a2  <-- 0x800036a4
       0     2022        M 0x800006a8 addi    a2, a2, -1484          #; a2  = 0x800036a4, (wrb) a2  <-- 0x800030d8
       0     2023        M                                           #; (acc) gp  <-- 0x00063187
       0     2024        M 0x800006b0 scfgwi  a0, 896                #; a0  = 0x00100050
       0     2025        M 0x800006ac fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x800030d8]
       0     2026        M 0x800006b4 csrrsi  a0, ssr, 1             #; 
       0     2027        M                                           #; (acc) tp  <-- 0x12327253
                         M 0x800006b8 fcvt.d.wu ft4, a1              #; ac1  = 2
       0     2028        M                                           #; (f:fpu) ft4  <-- 2.0
       0     2029        M 0x800006c4 addi    a0, a1, 1              #; a1  = 2, (wrb) a0  <-- 3
       0     2034        M                                           #; (f:lsu) ft3  <-- 1.4142
       0     2035        M 0x800006bc fmul.d  ft4, ft4, ft3          #; ft4  = 2.0, ft3  = 1.4142
       0     2038        M                                           #; (f:fpu) ft4  <-- 2.8284
       0     2039        M 0x800006c0 fsgnj.d ft0, ft4, ft4          #; ft4  = 2.8284, ft4  = 2.8284
       0     2040        M 0x800006c8 fcvt.d.wu ft4, a0              #; ac1  = 3, (f:fpu) ft0  <-- 2.8284
       0     2041        M                                           #; (f:fpu) ft4  <-- 3.0
       0     2042        M 0x800006d4 addi    a0, a1, 2              #; a1  = 2, (wrb) a0  <-- 4
                         M 0x800006cc fmul.d  ft4, ft4, ft3          #; ft4  = 3.0, ft3  = 1.4142
       0     2045        M                                           #; (f:fpu) ft4  <-- 4.2426000
       0     2046        M 0x800006d0 fsgnj.d ft0, ft4, ft4          #; ft4  = 4.2426000, ft4  = 4.2426000
       0     2047        M 0x800006d8 fcvt.d.wu ft4, a0              #; ac1  = 4, (f:fpu) ft0  <-- 4.2426000
       0     2048        M                                           #; (f:fpu) ft4  <-- 4.0
       0     2049        M 0x800006e4 addi    a0, a1, 3              #; a1  = 2, (wrb) a0  <-- 5
                         M 0x800006dc fmul.d  ft4, ft4, ft3          #; ft4  = 4.0, ft3  = 1.4142
       0     2052        M                                           #; (f:fpu) ft4  <-- 5.6568
       0     2053        M 0x800006e0 fsgnj.d ft0, ft4, ft4          #; ft4  = 5.6568, ft4  = 5.6568
       0     2054        M 0x800006e8 fcvt.d.wu ft4, a0              #; ac1  = 5, (f:fpu) ft0  <-- 5.6568
       0     2055        M                                           #; (f:fpu) ft4  <-- 5.0
       0     2056        M 0x800006f4 addi    a0, a1, 4              #; a1  = 2, (wrb) a0  <-- 6
                         M 0x800006ec fmul.d  ft4, ft4, ft3          #; ft4  = 5.0, ft3  = 1.4142
       0     2059        M                                           #; (f:fpu) ft4  <-- 7.071
       0     2060        M 0x800006f0 fsgnj.d ft0, ft4, ft4          #; ft4  = 7.071, ft4  = 7.071
       0     2061        M 0x800006f8 fcvt.d.wu ft4, a0              #; ac1  = 6, (f:fpu) ft0  <-- 7.071
       0     2062        M                                           #; (f:fpu) ft4  <-- 6.0
       0     2063        M 0x80000704 addi    a0, a1, 5              #; a1  = 2, (wrb) a0  <-- 7
                         M 0x800006fc fmul.d  ft4, ft4, ft3          #; ft4  = 6.0, ft3  = 1.4142
       0     2066        M                                           #; (f:fpu) ft4  <-- 8.4852000
       0     2067        M 0x80000700 fsgnj.d ft0, ft4, ft4          #; ft4  = 8.4852000, ft4  = 8.4852000
       0     2068        M 0x80000708 fcvt.d.wu ft4, a0              #; ac1  = 7, (f:fpu) ft0  <-- 8.4852000
       0     2069        M                                           #; (f:fpu) ft4  <-- 7.0
       0     2070        M 0x80000714 addi    a0, a1, 6              #; a1  = 2, (wrb) a0  <-- 8
                         M 0x8000070c fmul.d  ft4, ft4, ft3          #; ft4  = 7.0, ft3  = 1.4142
       0     2073        M                                           #; (f:fpu) ft4  <-- 9.8994
       0     2074        M 0x80000710 fsgnj.d ft0, ft4, ft4          #; ft4  = 9.8994, ft4  = 9.8994
       0     2075        M 0x80000718 fcvt.d.wu ft4, a0              #; ac1  = 8, (f:fpu) ft0  <-- 9.8994
       0     2076        M                                           #; (f:fpu) ft4  <-- 8.0
       0     2077        M 0x80000724 addi    a0, a1, 7              #; a1  = 2, (wrb) a0  <-- 9
                         M 0x8000071c fmul.d  ft4, ft4, ft3          #; ft4  = 8.0, ft3  = 1.4142
       0     2080        M                                           #; (f:fpu) ft4  <-- 11.3136
       0     2081        M 0x80000720 fsgnj.d ft0, ft4, ft4          #; ft4  = 11.3136, ft4  = 11.3136
       0     2082        M 0x80000728 fcvt.d.wu ft4, a0              #; ac1  = 9, (f:fpu) ft0  <-- 11.3136
       0     2083        M                                           #; (f:fpu) ft4  <-- 9.0
       0     2084        M 0x80000734 addi    a0, a1, 8              #; a1  = 2, (wrb) a0  <-- 10
                         M 0x8000072c fmul.d  ft4, ft4, ft3          #; ft4  = 9.0, ft3  = 1.4142
       0     2087        M                                           #; (f:fpu) ft4  <-- 12.7278000
       0     2088        M 0x80000730 fsgnj.d ft0, ft4, ft4          #; ft4  = 12.7278000, ft4  = 12.7278000
       0     2089        M 0x80000738 fcvt.d.wu ft4, a0              #; ac1  = 10, (f:fpu) ft0  <-- 12.7278000
       0     2090        M                                           #; (f:fpu) ft4  <-- 10.0
       0     2091        M 0x80000744 addi    a0, a1, 9              #; a1  = 2, (wrb) a0  <-- 11
                         M 0x8000073c fmul.d  ft4, ft4, ft3          #; ft4  = 10.0, ft3  = 1.4142
       0     2094        M                                           #; (f:fpu) ft4  <-- 14.142
       0     2095        M 0x80000740 fsgnj.d ft0, ft4, ft4          #; ft4  = 14.142, ft4  = 14.142
       0     2096        M 0x80000748 fcvt.d.wu ft4, a0              #; ac1  = 11, (f:fpu) ft0  <-- 14.142
       0     2097        M                                           #; (f:fpu) ft4  <-- 11.0
       0     2098        M 0x8000074c fmul.d  ft3, ft4, ft3          #; ft4  = 11.0, ft3  = 1.4142
       0     2099        M 0x80000758 j       pc + 0xac              #; goto 0x80000804
       0     2101        M                                           #; (f:fpu) ft3  <-- 15.5562000
       0     2102        M 0x80000750 fsgnj.d ft0, ft3, ft3          #; ft3  = 15.5562000, ft3  = 15.5562000
       0     2103        M 0x80000754 csrrci  a0, ssr, 1             #; (f:fpu) ft0  <-- 15.5562000
       0     2105        M 0x80000804 fld     fs11, 0(sp)            #; fs11 <~~ Doub[0x0011fee0]
       0     2106        M 0x80000808 fld     fs10, 8(sp)            #; fs10 <~~ Doub[0x0011fee8], (f:lsu) fs11 <-- 0.0
       0     2107        M 0x8000080c fld     fs9, 16(sp)            #; fs9  <~~ Doub[0x0011fef0], (f:lsu) fs10 <-- 0.0
       0     2108        M 0x80000810 fld     fs8, 24(sp)            #; fs8  <~~ Doub[0x0011fef8], (f:lsu) fs9  <-- 0.0
       0     2109        M 0x80000814 fld     fs7, 32(sp)            #; fs7  <~~ Doub[0x0011ff00], (f:lsu) fs8  <-- 0.0
       0     2110        M 0x80000818 fld     fs6, 40(sp)            #; fs6  <~~ Doub[0x0011ff08], (f:lsu) fs7  <-- 0.0
       0     2111        M 0x8000081c fld     fs5, 48(sp)            #; fs5  <~~ Doub[0x0011ff10], (f:lsu) fs6  <-- 0.0
       0     2112        M 0x80000820 fld     fs4, 56(sp)            #; fs4  <~~ Doub[0x0011ff18], (f:lsu) fs5  <-- 0.0
       0     2113        M 0x80000824 fld     fs3, 64(sp)            #; fs3  <~~ Doub[0x0011ff20], (f:lsu) fs4  <-- 0.0
       0     2114        M 0x80000828 fld     fs2, 72(sp)            #; fs2  <~~ Doub[0x0011ff28], (f:lsu) fs3  <-- 0.0
       0     2115        M 0x80000834 addi    sp, sp, 96             #; sp  = 0x0011fee0, (wrb) sp  <-- 0x0011ff40
                         M 0x8000082c fld     fs1, 80(sp)            #; fs1  <~~ Doub[0x0011ff30], (f:lsu) fs2  <-- 0.0
       0     2116        M 0x80000838 ret                            #; ra  = 0x800008fc, goto 0x800008fc
                         M 0x80000830 fld     fs0, 88(sp)            #; fs0  <~~ Doub[0x0011ff38], (f:lsu) fs1  <-- 0.0
       0     2117        M                                           #; (f:lsu) fs0  <-- 0.0
       0     2119        M 0x800008fc li      a1, 3                  #; (wrb) a1  <-- 3
       0     2122        M 0x80000900 mv      a0, s0                 #; s0  = 0x001000a0, (wrb) a0  <-- 0x001000a0
       0     2123        M 0x80000904 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000904
       0     2124        M 0x80000908 jalr    ra, ra, -720           #; ra  = 0x80000904, (wrb) ra  <-- 0x8000090c, goto 0x80000634
       0     2136        M 0x80000634 addi    sp, sp, -96            #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011fee0
       0     2139        M 0x80000638 fsd     fs0, 88(sp)            #; 0.0 ~~> Doub[0x0011ff38]
       0     2140        M 0x8000063c fsd     fs1, 80(sp)            #; 0.0 ~~> Doub[0x0011ff30]
       0     2141        M 0x80000640 fsd     fs2, 72(sp)            #; 0.0 ~~> Doub[0x0011ff28]
       0     2142        M 0x80000644 fsd     fs3, 64(sp)            #; 0.0 ~~> Doub[0x0011ff20]
       0     2143        M 0x80000648 fsd     fs4, 56(sp)            #; 0.0 ~~> Doub[0x0011ff18]
       0     2144        M 0x8000064c fsd     fs5, 48(sp)            #; 0.0 ~~> Doub[0x0011ff10]
       0     2145        M 0x80000650 fsd     fs6, 40(sp)            #; 0.0 ~~> Doub[0x0011ff08]
       0     2146        M 0x80000654 fsd     fs7, 32(sp)            #; 0.0 ~~> Doub[0x0011ff00]
       0     2147        M 0x80000658 fsd     fs8, 24(sp)            #; 0.0 ~~> Doub[0x0011fef8]
       0     2148        M 0x8000065c fsd     fs9, 16(sp)            #; 0.0 ~~> Doub[0x0011fef0]
       0     2149        M 0x80000668 srli    a2, a0, 20             #; a0  = 0x001000a0, (wrb) a2  <-- 1
                         M 0x80000660 fsd     fs10, 8(sp)            #; 0.0 ~~> Doub[0x0011fee8]
       0     2150        M 0x8000066c snez    a2, a2                 #; a2  = 1, (wrb) a2  <-- 1
                         M 0x80000664 fsd     fs11, 0(sp)            #; 0.0 ~~> Doub[0x0011fee0]
       0     2151        M 0x80000670 lui     a3, 0x120              #; (wrb) a3  <-- 0x00120000
       0     2152        M 0x80000674 addi    a3, a3, -71            #; a3  = 0x00120000, (wrb) a3  <-- 0x0011ffb9
       0     2153        M 0x80000678 sltu    a3, a0, a3             #; a0  = 0x001000a0, a3  = 0x0011ffb9, (wrb) a3  <-- 1
       0     2154        M 0x8000067c and     a2, a2, a3             #; a2  = 1, a3  = 1, (wrb) a2  <-- 1
       0     2155        M 0x80000680 beqz    a2, pc + 220           #; a2  = 1, not taken
       0     2156        M 0x80000684 li      a2, 8                  #; (wrb) a2  <-- 8
       0     2157        M 0x80000688 li      a3, 9                  #; (wrb) a3  <-- 9
       0     2158        M 0x8000068c li      a4, 64                 #; (wrb) a4  <-- 64
       0     2159        M 0x80000690 li      a5, 192                #; (wrb) a5  <-- 192
       0     2160        M 0x80000694 scfgw   a3, a4                 #; a3  = 9, a4  = 64
       0     2161        M 0x80000698 scfgw   a2, a5                 #; a2  = 8, a5  = 192
       0     2162        M 0x8000069c li      a2, 32                 #; (wrb) a2  <-- 32
       0     2163        M 0x800006a0 scfgw   zero, a2               #; a2  = 32, (acc) ra  <-- 0x00c020ab
       0     2164        M 0x800006a4 auipc   a2, 0x3                #; (wrb) a2  <-- 0x800036a4
       0     2165        M 0x800006a8 addi    a2, a2, -1484          #; a2  = 0x800036a4, (wrb) a2  <-- 0x800030d8
       0     2166        M                                           #; (acc) gp  <-- 0x00063187
       0     2167        M 0x800006b0 scfgwi  a0, 896                #; a0  = 0x001000a0
       0     2168        M 0x800006ac fld     ft3, 0(a2)             #; ft3  <~~ Doub[0x800030d8]
       0     2169        M 0x800006b4 csrrsi  a0, ssr, 1             #; 
       0     2170        M                                           #; (acc) tp  <-- 0x12327253
                         M 0x800006b8 fcvt.d.wu ft4, a1              #; ac1  = 3
       0     2171        M                                           #; (f:fpu) ft4  <-- 3.0
       0     2172        M 0x800006c4 addi    a0, a1, 1              #; a1  = 3, (wrb) a0  <-- 4
       0     2177        M                                           #; (f:lsu) ft3  <-- 1.4142
       0     2178        M 0x800006bc fmul.d  ft4, ft4, ft3          #; ft4  = 3.0, ft3  = 1.4142
       0     2181        M                                           #; (f:fpu) ft4  <-- 4.2426000
       0     2182        M 0x800006c0 fsgnj.d ft0, ft4, ft4          #; ft4  = 4.2426000, ft4  = 4.2426000
       0     2183        M 0x800006c8 fcvt.d.wu ft4, a0              #; ac1  = 4, (f:fpu) ft0  <-- 4.2426000
       0     2184        M                                           #; (f:fpu) ft4  <-- 4.0
       0     2185        M 0x800006d4 addi    a0, a1, 2              #; a1  = 3, (wrb) a0  <-- 5
                         M 0x800006cc fmul.d  ft4, ft4, ft3          #; ft4  = 4.0, ft3  = 1.4142
       0     2188        M                                           #; (f:fpu) ft4  <-- 5.6568
       0     2189        M 0x800006d0 fsgnj.d ft0, ft4, ft4          #; ft4  = 5.6568, ft4  = 5.6568
       0     2190        M 0x800006d8 fcvt.d.wu ft4, a0              #; ac1  = 5, (f:fpu) ft0  <-- 5.6568
       0     2191        M                                           #; (f:fpu) ft4  <-- 5.0
       0     2192        M 0x800006e4 addi    a0, a1, 3              #; a1  = 3, (wrb) a0  <-- 6
                         M 0x800006dc fmul.d  ft4, ft4, ft3          #; ft4  = 5.0, ft3  = 1.4142
       0     2195        M                                           #; (f:fpu) ft4  <-- 7.071
       0     2196        M 0x800006e0 fsgnj.d ft0, ft4, ft4          #; ft4  = 7.071, ft4  = 7.071
       0     2197        M 0x800006e8 fcvt.d.wu ft4, a0              #; ac1  = 6, (f:fpu) ft0  <-- 7.071
       0     2198        M                                           #; (f:fpu) ft4  <-- 6.0
       0     2199        M 0x800006f4 addi    a0, a1, 4              #; a1  = 3, (wrb) a0  <-- 7
                         M 0x800006ec fmul.d  ft4, ft4, ft3          #; ft4  = 6.0, ft3  = 1.4142
       0     2202        M                                           #; (f:fpu) ft4  <-- 8.4852000
       0     2203        M 0x800006f0 fsgnj.d ft0, ft4, ft4          #; ft4  = 8.4852000, ft4  = 8.4852000
       0     2204        M 0x800006f8 fcvt.d.wu ft4, a0              #; ac1  = 7, (f:fpu) ft0  <-- 8.4852000
       0     2205        M                                           #; (f:fpu) ft4  <-- 7.0
       0     2206        M 0x80000704 addi    a0, a1, 5              #; a1  = 3, (wrb) a0  <-- 8
                         M 0x800006fc fmul.d  ft4, ft4, ft3          #; ft4  = 7.0, ft3  = 1.4142
       0     2209        M                                           #; (f:fpu) ft4  <-- 9.8994
       0     2210        M 0x80000700 fsgnj.d ft0, ft4, ft4          #; ft4  = 9.8994, ft4  = 9.8994
       0     2211        M 0x80000708 fcvt.d.wu ft4, a0              #; ac1  = 8, (f:fpu) ft0  <-- 9.8994
       0     2212        M                                           #; (f:fpu) ft4  <-- 8.0
       0     2213        M 0x80000714 addi    a0, a1, 6              #; a1  = 3, (wrb) a0  <-- 9
                         M 0x8000070c fmul.d  ft4, ft4, ft3          #; ft4  = 8.0, ft3  = 1.4142
       0     2216        M                                           #; (f:fpu) ft4  <-- 11.3136
       0     2217        M 0x80000710 fsgnj.d ft0, ft4, ft4          #; ft4  = 11.3136, ft4  = 11.3136
       0     2218        M 0x80000718 fcvt.d.wu ft4, a0              #; ac1  = 9, (f:fpu) ft0  <-- 11.3136
       0     2219        M                                           #; (f:fpu) ft4  <-- 9.0
       0     2220        M 0x80000724 addi    a0, a1, 7              #; a1  = 3, (wrb) a0  <-- 10
                         M 0x8000071c fmul.d  ft4, ft4, ft3          #; ft4  = 9.0, ft3  = 1.4142
       0     2223        M                                           #; (f:fpu) ft4  <-- 12.7278000
       0     2224        M 0x80000720 fsgnj.d ft0, ft4, ft4          #; ft4  = 12.7278000, ft4  = 12.7278000
       0     2225        M 0x80000728 fcvt.d.wu ft4, a0              #; ac1  = 10, (f:fpu) ft0  <-- 12.7278000
       0     2226        M                                           #; (f:fpu) ft4  <-- 10.0
       0     2227        M 0x80000734 addi    a0, a1, 8              #; a1  = 3, (wrb) a0  <-- 11
                         M 0x8000072c fmul.d  ft4, ft4, ft3          #; ft4  = 10.0, ft3  = 1.4142
       0     2230        M                                           #; (f:fpu) ft4  <-- 14.142
       0     2231        M 0x80000730 fsgnj.d ft0, ft4, ft4          #; ft4  = 14.142, ft4  = 14.142
       0     2232        M 0x80000738 fcvt.d.wu ft4, a0              #; ac1  = 11, (f:fpu) ft0  <-- 14.142
       0     2233        M                                           #; (f:fpu) ft4  <-- 11.0
       0     2234        M 0x80000744 addi    a0, a1, 9              #; a1  = 3, (wrb) a0  <-- 12
                         M 0x8000073c fmul.d  ft4, ft4, ft3          #; ft4  = 11.0, ft3  = 1.4142
       0     2237        M                                           #; (f:fpu) ft4  <-- 15.5562000
       0     2238        M 0x80000740 fsgnj.d ft0, ft4, ft4          #; ft4  = 15.5562000, ft4  = 15.5562000
       0     2239        M 0x80000748 fcvt.d.wu ft4, a0              #; ac1  = 12, (f:fpu) ft0  <-- 15.5562000
       0     2240        M                                           #; (f:fpu) ft4  <-- 12.0
       0     2241        M 0x8000074c fmul.d  ft3, ft4, ft3          #; ft4  = 12.0, ft3  = 1.4142
       0     2242        M 0x80000758 j       pc + 0xac              #; goto 0x80000804
       0     2244        M                                           #; (f:fpu) ft3  <-- 16.9704000
       0     2245        M 0x80000750 fsgnj.d ft0, ft3, ft3          #; ft3  = 16.9704000, ft3  = 16.9704000
       0     2246        M 0x80000754 csrrci  a0, ssr, 1             #; (f:fpu) ft0  <-- 16.9704000
       0     2248        M 0x80000804 fld     fs11, 0(sp)            #; fs11 <~~ Doub[0x0011fee0]
       0     2249        M 0x80000808 fld     fs10, 8(sp)            #; fs10 <~~ Doub[0x0011fee8], (f:lsu) fs11 <-- 0.0
       0     2250        M 0x8000080c fld     fs9, 16(sp)            #; fs9  <~~ Doub[0x0011fef0], (f:lsu) fs10 <-- 0.0
       0     2251        M 0x80000810 fld     fs8, 24(sp)            #; fs8  <~~ Doub[0x0011fef8], (f:lsu) fs9  <-- 0.0
       0     2252        M 0x80000814 fld     fs7, 32(sp)            #; fs7  <~~ Doub[0x0011ff00], (f:lsu) fs8  <-- 0.0
       0     2253        M 0x80000818 fld     fs6, 40(sp)            #; fs6  <~~ Doub[0x0011ff08], (f:lsu) fs7  <-- 0.0
       0     2254        M 0x8000081c fld     fs5, 48(sp)            #; fs5  <~~ Doub[0x0011ff10], (f:lsu) fs6  <-- 0.0
       0     2255        M 0x80000820 fld     fs4, 56(sp)            #; fs4  <~~ Doub[0x0011ff18], (f:lsu) fs5  <-- 0.0
       0     2256        M 0x80000824 fld     fs3, 64(sp)            #; fs3  <~~ Doub[0x0011ff20], (f:lsu) fs4  <-- 0.0
       0     2257        M 0x80000828 fld     fs2, 72(sp)            #; fs2  <~~ Doub[0x0011ff28], (f:lsu) fs3  <-- 0.0
       0     2258        M 0x80000834 addi    sp, sp, 96             #; sp  = 0x0011fee0, (wrb) sp  <-- 0x0011ff40
                         M 0x8000082c fld     fs1, 80(sp)            #; fs1  <~~ Doub[0x0011ff30], (f:lsu) fs2  <-- 0.0
       0     2259        M 0x80000838 ret                            #; ra  = 0x8000090c, goto 0x8000090c
                         M 0x80000830 fld     fs0, 88(sp)            #; fs0  <~~ Doub[0x0011ff38], (f:lsu) fs1  <-- 0.0
       0     2260        M                                           #; (f:lsu) fs0  <-- 0.0
       0     2262        M 0x8000090c mv      a0, s0                 #; s0  = 0x001000a0, (wrb) a0  <-- 0x001000a0
       0     2265        M 0x80000910 li      a1, 0                  #; (wrb) a1  <-- 0
       0     2266        M 0x80000914 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000914
       0     2267        M 0x80000918 jalr    ra, ra, 492            #; ra  = 0x80000914, (wrb) ra  <-- 0x8000091c, goto 0x80000b00
       0     2279        M 0x80000b00 slli    a1, a1, 3              #; a1  = 0, (wrb) a1  <-- 0
       0     2280        M 0x80000b04 add     a0, a0, a1             #; a0  = 0x001000a0, a1  = 0, (wrb) a0  <-- 0x001000a0
       0     2281        M 0x80000b08 sw      zero, 4(a0)            #; a0  = 0x001000a0, 0 ~~> Word[0x001000a4]
       0     2282        M 0x80000b0c sw      zero, 0(a0)            #; a0  = 0x001000a0, 0 ~~> Word[0x001000a0]
       0     2291        M 0x80000b10 ret                            #; ra  = 0x8000091c, goto 0x8000091c
       0     2294        M 0x8000091c fld     ft0, 0(s2)             #; ft0  <~~ Doub[0x00100000]
       0     2295        M 0x80000920 fld     ft1, 0(s1)             #; ft1  <~~ Doub[0x00100050], (f:lsu) ft0  <-- 1.4142
       0     2296        M 0x80000924 fld     ft2, 0(s0)             #; ft2  <~~ Doub[0x001000a0], (f:lsu) ft1  <-- 2.8284
       0     2297        M 0x80000928 fadd.d  ft0, ft0, ft1          #; ft0  = 1.4142, ft1  = 2.8284, (f:lsu) ft2  <-- 0.0
       0     2300        M                                           #; (f:fpu) ft0  <-- 4.2426000
       0     2301        M 0x8000092c fadd.d  fs0, ft0, ft2          #; ft0  = 4.2426000, ft2  = 0.0
       0     2304        M                                           #; (f:fpu) fs0  <-- 4.2426000
       0     2314        M 0x80000930 li      a1, 1                  #; (wrb) a1  <-- 1
       0     2315        M 0x80000934 mv      a0, s0                 #; s0  = 0x001000a0, (wrb) a0  <-- 0x001000a0
       0     2316        M 0x80000938 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000938
       0     2317        M 0x8000093c jalr    ra, ra, 456            #; ra  = 0x80000938, (wrb) ra  <-- 0x80000940, goto 0x80000b00
       0     2318        M 0x80000b00 slli    a1, a1, 3              #; a1  = 1, (wrb) a1  <-- 8
       0     2319        M 0x80000b04 add     a0, a0, a1             #; a0  = 0x001000a0, a1  = 8, (wrb) a0  <-- 0x001000a8
       0     2320        M 0x80000b08 sw      zero, 4(a0)            #; a0  = 0x001000a8, 0 ~~> Word[0x001000ac]
       0     2321        M 0x80000b0c sw      zero, 0(a0)            #; a0  = 0x001000a8, 0 ~~> Word[0x001000a8]
       0     2322        M 0x80000b10 ret                            #; ra  = 0x80000940, goto 0x80000940
       0     2328        M 0x80000940 fld     ft0, 8(s2)             #; ft0  <~~ Doub[0x00100008]
       0     2329        M 0x80000944 fld     ft1, 8(s1)             #; ft1  <~~ Doub[0x00100058], (f:lsu) ft0  <-- 2.8284
       0     2330        M 0x80000948 fld     ft2, 8(s0)             #; ft2  <~~ Doub[0x001000a8], (f:lsu) ft1  <-- 4.2426000
       0     2331        M 0x8000094c fadd.d  ft0, ft0, fs0          #; ft0  = 2.8284, fs0  = 4.2426000, (f:lsu) ft2  <-- 0.0
       0     2334        M                                           #; (f:fpu) ft0  <-- 7.071
       0     2340        M 0x80000958 li      a1, 2                  #; (wrb) a1  <-- 2
                         M 0x80000950 fadd.d  ft0, ft0, ft1          #; ft0  = 7.071, ft1  = 4.2426000
       0     2341        M 0x8000095c mv      a0, s0                 #; s0  = 0x001000a0, (wrb) a0  <-- 0x001000a0
       0     2343        M                                           #; (f:fpu) ft0  <-- 11.3136
       0     2344        M 0x80000954 fadd.d  fs0, ft0, ft2          #; ft0  = 11.3136, ft2  = 0.0
       0     2347        M                                           #; (f:fpu) fs0  <-- 11.3136
       0     2350        M 0x80000960 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000960
       0     2351        M 0x80000964 jalr    ra, ra, 416            #; ra  = 0x80000960, (wrb) ra  <-- 0x80000968, goto 0x80000b00
       0     2352        M 0x80000b00 slli    a1, a1, 3              #; a1  = 2, (wrb) a1  <-- 16
       0     2353        M 0x80000b04 add     a0, a0, a1             #; a0  = 0x001000a0, a1  = 16, (wrb) a0  <-- 0x001000b0
       0     2354        M 0x80000b08 sw      zero, 4(a0)            #; a0  = 0x001000b0, 0 ~~> Word[0x001000b4]
       0     2355        M 0x80000b0c sw      zero, 0(a0)            #; a0  = 0x001000b0, 0 ~~> Word[0x001000b0]
       0     2356        M 0x80000b10 ret                            #; ra  = 0x80000968, goto 0x80000968
       0     2359        M 0x80000968 fld     ft0, 16(s2)            #; ft0  <~~ Doub[0x00100010]
       0     2360        M 0x8000096c fld     ft1, 16(s1)            #; ft1  <~~ Doub[0x00100060], (f:lsu) ft0  <-- 4.2426000
       0     2361        M                                           #; (f:lsu) ft1  <-- 5.6568
       0     2364        M 0x80000970 fld     ft2, 16(s0)            #; ft2  <~~ Doub[0x001000b0]
       0     2365        M 0x80000974 fadd.d  ft0, ft0, fs0          #; ft0  = 4.2426000, fs0  = 11.3136, (f:lsu) ft2  <-- 0.0
       0     2368        M                                           #; (f:fpu) ft0  <-- 15.5562000
       0     2369        M 0x80000978 fadd.d  ft0, ft0, ft1          #; ft0  = 15.5562000, ft1  = 5.6568
       0     2372        M                                           #; (f:fpu) ft0  <-- 21.2130000
       0     2373        M 0x8000097c fadd.d  fs0, ft0, ft2          #; ft0  = 21.2130000, ft2  = 0.0
       0     2374        M 0x80000980 li      a1, 3                  #; (wrb) a1  <-- 3
       0     2375        M 0x80000984 mv      a0, s0                 #; s0  = 0x001000a0, (wrb) a0  <-- 0x001000a0
       0     2376        M 0x80000988 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000988
                         M                                           #; (f:fpu) fs0  <-- 21.2130000
       0     2377        M 0x8000098c jalr    ra, ra, 376            #; ra  = 0x80000988, (wrb) ra  <-- 0x80000990, goto 0x80000b00
       0     2388        M 0x80000b00 slli    a1, a1, 3              #; a1  = 3, (wrb) a1  <-- 24
       0     2389        M 0x80000b04 add     a0, a0, a1             #; a0  = 0x001000a0, a1  = 24, (wrb) a0  <-- 0x001000b8
       0     2390        M 0x80000b08 sw      zero, 4(a0)            #; a0  = 0x001000b8, 0 ~~> Word[0x001000bc]
       0     2391        M 0x80000b0c sw      zero, 0(a0)            #; a0  = 0x001000b8, 0 ~~> Word[0x001000b8]
       0     2392        M 0x80000b10 ret                            #; ra  = 0x80000990, goto 0x80000990
       0     2395        M 0x80000990 fld     ft0, 24(s2)            #; ft0  <~~ Doub[0x00100018]
       0     2396        M 0x80000994 fld     ft1, 24(s1)            #; ft1  <~~ Doub[0x00100068], (f:lsu) ft0  <-- 5.6568
       0     2397        M 0x80000998 fld     ft2, 24(s0)            #; ft2  <~~ Doub[0x001000b8], (f:lsu) ft1  <-- 7.071
       0     2398        M 0x8000099c fadd.d  ft0, ft0, fs0          #; ft0  = 5.6568, fs0  = 21.2130000, (f:lsu) ft2  <-- 0.0
       0     2401        M                                           #; (f:fpu) ft0  <-- 26.8698000
       0     2409        M 0x800009a8 li      a1, 4                  #; (wrb) a1  <-- 4
                         M 0x800009a0 fadd.d  ft0, ft0, ft1          #; ft0  = 26.8698000, ft1  = 7.071
       0     2410        M 0x800009ac mv      a0, s0                 #; s0  = 0x001000a0, (wrb) a0  <-- 0x001000a0
       0     2412        M                                           #; (f:fpu) ft0  <-- 33.9408000
       0     2413        M 0x800009a4 fadd.d  fs0, ft0, ft2          #; ft0  = 33.9408000, ft2  = 0.0
       0     2416        M                                           #; (f:fpu) fs0  <-- 33.9408000
       0     2419        M 0x800009b0 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800009b0
       0     2420        M 0x800009b4 jalr    ra, ra, 336            #; ra  = 0x800009b0, (wrb) ra  <-- 0x800009b8, goto 0x80000b00
       0     2421        M 0x80000b00 slli    a1, a1, 3              #; a1  = 4, (wrb) a1  <-- 32
       0     2422        M 0x80000b04 add     a0, a0, a1             #; a0  = 0x001000a0, a1  = 32, (wrb) a0  <-- 0x001000c0
       0     2423        M 0x80000b08 sw      zero, 4(a0)            #; a0  = 0x001000c0, 0 ~~> Word[0x001000c4]
       0     2424        M 0x80000b0c sw      zero, 0(a0)            #; a0  = 0x001000c0, 0 ~~> Word[0x001000c0]
       0     2425        M 0x80000b10 ret                            #; ra  = 0x800009b8, goto 0x800009b8
       0     2428        M 0x800009b8 fld     ft0, 32(s2)            #; ft0  <~~ Doub[0x00100020]
       0     2429        M 0x800009bc fld     ft1, 32(s1)            #; ft1  <~~ Doub[0x00100070], (f:lsu) ft0  <-- 7.071
       0     2430        M                                           #; (f:lsu) ft1  <-- 8.4852000
       0     2433        M 0x800009c0 fld     ft2, 32(s0)            #; ft2  <~~ Doub[0x001000c0]
       0     2434        M 0x800009c4 fadd.d  ft0, ft0, fs0          #; ft0  = 7.071, fs0  = 33.9408000, (f:lsu) ft2  <-- 0.0
       0     2437        M                                           #; (f:fpu) ft0  <-- 41.0118000
       0     2438        M 0x800009c8 fadd.d  ft0, ft0, ft1          #; ft0  = 41.0118000, ft1  = 8.4852000
       0     2441        M                                           #; (f:fpu) ft0  <-- 49.4970000
       0     2442        M 0x800009cc fadd.d  fs0, ft0, ft2          #; ft0  = 49.4970000, ft2  = 0.0
       0     2443        M 0x800009d0 li      a1, 5                  #; (wrb) a1  <-- 5
       0     2444        M 0x800009d4 mv      a0, s0                 #; s0  = 0x001000a0, (wrb) a0  <-- 0x001000a0
       0     2445        M 0x800009d8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800009d8
                         M                                           #; (f:fpu) fs0  <-- 49.4970000
       0     2446        M 0x800009dc jalr    ra, ra, 296            #; ra  = 0x800009d8, (wrb) ra  <-- 0x800009e0, goto 0x80000b00
       0     2447        M 0x80000b00 slli    a1, a1, 3              #; a1  = 5, (wrb) a1  <-- 40
       0     2448        M 0x80000b04 add     a0, a0, a1             #; a0  = 0x001000a0, a1  = 40, (wrb) a0  <-- 0x001000c8
       0     2449        M 0x80000b08 sw      zero, 4(a0)            #; a0  = 0x001000c8, 0 ~~> Word[0x001000cc]
       0     2450        M 0x80000b0c sw      zero, 0(a0)            #; a0  = 0x001000c8, 0 ~~> Word[0x001000c8]
       0     2451        M 0x80000b10 ret                            #; ra  = 0x800009e0, goto 0x800009e0
       0     2457        M 0x800009e0 fld     ft0, 40(s2)            #; ft0  <~~ Doub[0x00100028]
       0     2458        M 0x800009e4 fld     ft1, 40(s1)            #; ft1  <~~ Doub[0x00100078], (f:lsu) ft0  <-- 8.4852000
       0     2459        M 0x800009e8 fld     ft2, 40(s0)            #; ft2  <~~ Doub[0x001000c8], (f:lsu) ft1  <-- 9.8994
       0     2460        M 0x800009ec fadd.d  ft0, ft0, fs0          #; ft0  = 8.4852000, fs0  = 49.4970000, (f:lsu) ft2  <-- 0.0
       0     2463        M                                           #; (f:fpu) ft0  <-- 57.9822000
       0     2469        M 0x800009f8 li      a1, 6                  #; (wrb) a1  <-- 6
                         M 0x800009f0 fadd.d  ft0, ft0, ft1          #; ft0  = 57.9822000, ft1  = 9.8994
       0     2470        M 0x800009fc mv      a0, s0                 #; s0  = 0x001000a0, (wrb) a0  <-- 0x001000a0
       0     2472        M                                           #; (f:fpu) ft0  <-- 67.8816000
       0     2473        M 0x800009f4 fadd.d  fs0, ft0, ft2          #; ft0  = 67.8816000, ft2  = 0.0
       0     2476        M                                           #; (f:fpu) fs0  <-- 67.8816000
       0     2479        M 0x80000a00 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000a00
       0     2480        M 0x80000a04 jalr    ra, ra, 256            #; ra  = 0x80000a00, (wrb) ra  <-- 0x80000a08, goto 0x80000b00
       0     2493        M 0x80000b00 slli    a1, a1, 3              #; a1  = 6, (wrb) a1  <-- 48
       0     2494        M 0x80000b04 add     a0, a0, a1             #; a0  = 0x001000a0, a1  = 48, (wrb) a0  <-- 0x001000d0
       0     2495        M 0x80000b08 sw      zero, 4(a0)            #; a0  = 0x001000d0, 0 ~~> Word[0x001000d4]
       0     2496        M 0x80000b0c sw      zero, 0(a0)            #; a0  = 0x001000d0, 0 ~~> Word[0x001000d0]
       0     2497        M 0x80000b10 ret                            #; ra  = 0x80000a08, goto 0x80000a08
       0     2500        M 0x80000a08 fld     ft0, 48(s2)            #; ft0  <~~ Doub[0x00100030]
       0     2501        M 0x80000a0c fld     ft1, 48(s1)            #; ft1  <~~ Doub[0x00100080], (f:lsu) ft0  <-- 9.8994
       0     2502        M 0x80000a10 fld     ft2, 48(s0)            #; ft2  <~~ Doub[0x001000d0], (f:lsu) ft1  <-- 11.3136
       0     2503        M 0x80000a14 fadd.d  ft0, ft0, fs0          #; ft0  = 9.8994, fs0  = 67.8816000, (f:lsu) ft2  <-- 0.0
       0     2506        M                                           #; (f:fpu) ft0  <-- 77.7810000
       0     2507        M 0x80000a18 fadd.d  ft0, ft0, ft1          #; ft0  = 77.7810000, ft1  = 11.3136
       0     2510        M                                           #; (f:fpu) ft0  <-- 89.0946000
       0     2511        M 0x80000a1c fadd.d  fs0, ft0, ft2          #; ft0  = 89.0946000, ft2  = 0.0
       0     2512        M 0x80000a20 li      a1, 7                  #; (wrb) a1  <-- 7
       0     2513        M 0x80000a24 mv      a0, s0                 #; s0  = 0x001000a0, (wrb) a0  <-- 0x001000a0
       0     2514        M 0x80000a28 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000a28
                         M                                           #; (f:fpu) fs0  <-- 89.0946000
       0     2515        M 0x80000a2c jalr    ra, ra, 216            #; ra  = 0x80000a28, (wrb) ra  <-- 0x80000a30, goto 0x80000b00
       0     2516        M 0x80000b00 slli    a1, a1, 3              #; a1  = 7, (wrb) a1  <-- 56
       0     2517        M 0x80000b04 add     a0, a0, a1             #; a0  = 0x001000a0, a1  = 56, (wrb) a0  <-- 0x001000d8
       0     2518        M 0x80000b08 sw      zero, 4(a0)            #; a0  = 0x001000d8, 0 ~~> Word[0x001000dc]
       0     2519        M 0x80000b0c sw      zero, 0(a0)            #; a0  = 0x001000d8, 0 ~~> Word[0x001000d8]
       0     2520        M 0x80000b10 ret                            #; ra  = 0x80000a30, goto 0x80000a30
       0     2526        M 0x80000a30 fld     ft0, 56(s2)            #; ft0  <~~ Doub[0x00100038]
       0     2527        M 0x80000a34 fld     ft1, 56(s1)            #; ft1  <~~ Doub[0x00100088], (f:lsu) ft0  <-- 11.3136
       0     2528        M 0x80000a38 fld     ft2, 56(s0)            #; ft2  <~~ Doub[0x001000d8], (f:lsu) ft1  <-- 12.7278000
       0     2529        M 0x80000a3c fadd.d  ft0, ft0, fs0          #; ft0  = 11.3136, fs0  = 89.0946000, (f:lsu) ft2  <-- 0.0
       0     2532        M                                           #; (f:fpu) ft0  <-- 100.4082000
       0     2538        M 0x80000a48 li      a1, 8                  #; (wrb) a1  <-- 8
                         M 0x80000a40 fadd.d  ft0, ft0, ft1          #; ft0  = 100.4082000, ft1  = 12.7278000
       0     2539        M 0x80000a4c mv      a0, s0                 #; s0  = 0x001000a0, (wrb) a0  <-- 0x001000a0
       0     2541        M                                           #; (f:fpu) ft0  <-- 113.1360000
       0     2542        M 0x80000a44 fadd.d  fs0, ft0, ft2          #; ft0  = 113.1360000, ft2  = 0.0
       0     2545        M                                           #; (f:fpu) fs0  <-- 113.1360000
       0     2548        M 0x80000a50 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000a50
       0     2549        M 0x80000a54 jalr    ra, ra, 176            #; ra  = 0x80000a50, (wrb) ra  <-- 0x80000a58, goto 0x80000b00
       0     2550        M 0x80000b00 slli    a1, a1, 3              #; a1  = 8, (wrb) a1  <-- 64
       0     2551        M 0x80000b04 add     a0, a0, a1             #; a0  = 0x001000a0, a1  = 64, (wrb) a0  <-- 0x001000e0
       0     2552        M 0x80000b08 sw      zero, 4(a0)            #; a0  = 0x001000e0, 0 ~~> Word[0x001000e4]
       0     2553        M 0x80000b0c sw      zero, 0(a0)            #; a0  = 0x001000e0, 0 ~~> Word[0x001000e0]
       0     2554        M 0x80000b10 ret                            #; ra  = 0x80000a58, goto 0x80000a58
       0     2557        M 0x80000a58 fld     ft0, 64(s2)            #; ft0  <~~ Doub[0x00100040]
       0     2558        M 0x80000a5c fld     ft1, 64(s1)            #; ft1  <~~ Doub[0x00100090], (f:lsu) ft0  <-- 12.7278000
       0     2559        M                                           #; (f:lsu) ft1  <-- 14.142
       0     2562        M 0x80000a60 fld     ft2, 64(s0)            #; ft2  <~~ Doub[0x001000e0]
       0     2563        M 0x80000a64 fadd.d  ft0, ft0, fs0          #; ft0  = 12.7278000, fs0  = 113.1360000, (f:lsu) ft2  <-- 0.0
       0     2566        M                                           #; (f:fpu) ft0  <-- 125.8638000
       0     2567        M 0x80000a68 fadd.d  ft0, ft0, ft1          #; ft0  = 125.8638000, ft1  = 14.142
       0     2570        M                                           #; (f:fpu) ft0  <-- 140.0058
       0     2571        M 0x80000a6c fadd.d  fs0, ft0, ft2          #; ft0  = 140.0058, ft2  = 0.0
       0     2572        M 0x80000a70 li      a1, 9                  #; (wrb) a1  <-- 9
       0     2573        M 0x80000a74 mv      a0, s0                 #; s0  = 0x001000a0, (wrb) a0  <-- 0x001000a0
       0     2574        M 0x80000a78 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000a78
                         M                                           #; (f:fpu) fs0  <-- 140.0058
       0     2575        M 0x80000a7c jalr    ra, ra, 136            #; ra  = 0x80000a78, (wrb) ra  <-- 0x80000a80, goto 0x80000b00
       0     2586        M 0x80000b00 slli    a1, a1, 3              #; a1  = 9, (wrb) a1  <-- 72
       0     2587        M 0x80000b04 add     a0, a0, a1             #; a0  = 0x001000a0, a1  = 72, (wrb) a0  <-- 0x001000e8
       0     2588        M 0x80000b08 sw      zero, 4(a0)            #; a0  = 0x001000e8, 0 ~~> Word[0x001000ec]
       0     2589        M 0x80000b0c sw      zero, 0(a0)            #; a0  = 0x001000e8, 0 ~~> Word[0x001000e8]
       0     2590        M 0x80000b10 ret                            #; ra  = 0x80000a80, goto 0x80000a80
       0     2593        M 0x80000a80 fld     ft0, 72(s2)            #; ft0  <~~ Doub[0x00100048]
       0     2594        M 0x80000a8c auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002a8c
                         M 0x80000a84 fld     ft1, 72(s1)            #; ft1  <~~ Doub[0x00100098], (f:lsu) ft0  <-- 14.142
       0     2595        M 0x80000a88 fld     ft2, 72(s0)            #; ft2  <~~ Doub[0x001000e8], (f:lsu) ft1  <-- 15.5562000
       0     2596        M                                           #; (f:lsu) ft2  <-- 0.0
       0     2605        M 0x80000a90 addi    a0, a0, 1620           #; a0  = 0x80002a8c, (wrb) a0  <-- 0x800030e0
       0     2608        M 0x80000a94 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x800030e0]
       0     2609        M 0x80000a98 fadd.d  ft0, ft0, fs0          #; ft0  = 14.142, fs0  = 140.0058
       0     2612        M                                           #; (f:fpu) ft0  <-- 154.1478
       0     2613        M 0x80000a9c fadd.d  ft0, ft0, ft1          #; ft0  = 154.1478, ft1  = 15.5562000
       0     2616        M                                           #; (f:fpu) ft0  <-- 169.7040000
       0     2617        M                                           #; (f:lsu) ft3  <-- -169.704
       0     2619        M 0x80000aa0 fadd.d  ft0, ft0, ft2          #; ft0  = 169.7040000, ft2  = 0.0
       0     2622        M                                           #; (f:fpu) ft0  <-- 169.7040000
       0     2623        M 0x80000aa4 fadd.d  ft1, ft0, ft3          #; ft0  = 169.7040000, ft3  = -169.704
       0     2626        M                                           #; (f:fpu) ft1  <-- -0.0000000
       0     2627        M 0x80000aa8 fsgnjx.d fs0, ft1, ft1         #; ft1  = -0.0000000, ft1  = -0.0000000
       0     2628        M 0x80000aac fsd     ft0, 0(sp)             #; 169.7040000 ~~> Doub[0x0011ff40], (f:fpu) fs0  <-- 0.0000000
       0     2629        M 0x80000ab0 lw      a2, 0(sp)              #; sp  = 0x0011ff40, a2  <~~ Word[0x0011ff40]
       0     2632        M                                           #; (lsu) a2  <-- 0x2b020c49
       0     2633        M 0x80000ab4 lw      a3, 4(sp)              #; sp  = 0x0011ff40, a3  <~~ Word[0x0011ff44]
       0     2636        M                                           #; (lsu) a3  <-- 0x40653687
                         M 0x80000ab8 fsd     fs0, 0(sp)             #; 0.0000000 ~~> Doub[0x0011ff40]
       0     2637        M 0x80000abc lw      a4, 0(sp)              #; sp  = 0x0011ff40, a4  <~~ Word[0x0011ff40]
       0     2640        M                                           #; (lsu) a4  <-- 0
       0     2641        M 0x80000ac0 lw      a5, 4(sp)              #; sp  = 0x0011ff40, a5  <~~ Word[0x0011ff44]
       0     2642        M 0x80000ac4 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002ac4
       0     2643        M 0x80000ac8 addi    a0, a0, 897            #; a0  = 0x80002ac4, (wrb) a0  <-- 0x80002e45
       0     2644        M 0x80000acc auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000acc
       0     2645        M                                           #; (lsu) a5  <-- 0x3d200000
       0     2653        M 0x80000ad0 jalr    ra, ra, 72             #; ra  = 0x80000acc, (wrb) ra  <-- 0x80000ad4, goto 0x80000b14
       0     2654        M 0x80000b14 addi    sp, sp, -48            #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff10
       0     2655        M 0x80000b18 sw      ra, 12(sp)             #; sp  = 0x0011ff10, 0x80000ad4 ~~> Word[0x0011ff1c]
       0     2656        M 0x80000b1c mv      t0, a0                 #; a0  = 0x80002e45, (wrb) t0  <-- 0x80002e45
       0     2657        M 0x80000b20 sw      a7, 44(sp)             #; sp  = 0x0011ff10, 0xffff0000 ~~> Word[0x0011ff3c]
       0     2658        M 0x80000b24 sw      a6, 40(sp)             #; sp  = 0x0011ff10, 0x00120000 ~~> Word[0x0011ff38]
       0     2659        M 0x80000b28 sw      a5, 36(sp)             #; sp  = 0x0011ff10, 0x3d200000 ~~> Word[0x0011ff34]
       0     2660        M 0x80000b2c sw      a4, 32(sp)             #; sp  = 0x0011ff10, 0 ~~> Word[0x0011ff30]
       0     2669        M 0x80000b30 sw      a3, 28(sp)             #; sp  = 0x0011ff10, 0x40653687 ~~> Word[0x0011ff2c]
       0     2670        M 0x80000b34 sw      a2, 24(sp)             #; sp  = 0x0011ff10, 0x2b020c49 ~~> Word[0x0011ff28]
       0     2671        M 0x80000b38 sw      a1, 20(sp)             #; sp  = 0x0011ff10, 72 ~~> Word[0x0011ff24]
       0     2672        M 0x80000b3c addi    a0, sp, 20             #; sp  = 0x0011ff10, (wrb) a0  <-- 0x0011ff24
       0     2681        M 0x80000b40 sw      a0, 8(sp)              #; sp  = 0x0011ff10, 0x0011ff24 ~~> Word[0x0011ff18]
       0     2682        M 0x80000b44 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80001b44
       0     2683        M 0x80000b48 addi    a0, a0, -988           #; a0  = 0x80001b44, (wrb) a0  <-- 0x80001768
       0     2684        M 0x80000b4c addi    a1, sp, 7              #; sp  = 0x0011ff10, (wrb) a1  <-- 0x0011ff17
       0     2693        M 0x80000b50 li      a2, -1                 #; (wrb) a2  <-- -1
       0     2694        M 0x80000b54 addi    a4, sp, 20             #; sp  = 0x0011ff10, (wrb) a4  <-- 0x0011ff24
       0     2695        M 0x80000b58 mv      a3, t0                 #; t0  = 0x80002e45, (wrb) a3  <-- 0x80002e45
       0     2696        M 0x80000b5c auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000b5c
       0     2705        M 0x80000b60 jalr    ra, ra, 20             #; ra  = 0x80000b5c, (wrb) ra  <-- 0x80000b64, goto 0x80000b70
       0     2717        M 0x80000b70 addi    sp, sp, -112           #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011fea0
       0     2718        M 0x80000b74 sw      ra, 108(sp)            #; sp  = 0x0011fea0, 0x80000b64 ~~> Word[0x0011ff0c]
       0     2719        M 0x80000b78 sw      s0, 104(sp)            #; sp  = 0x0011fea0, 0x001000a0 ~~> Word[0x0011ff08]
       0     2720        M 0x80000b7c sw      s1, 100(sp)            #; sp  = 0x0011fea0, 0x00100050 ~~> Word[0x0011ff04]
       0     2729        M 0x80000b80 sw      s2, 96(sp)             #; sp  = 0x0011fea0, 0x00100000 ~~> Word[0x0011ff00]
       0     2730        M 0x80000b84 sw      s3, 92(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fefc]
       0     2731        M 0x80000b88 sw      s4, 88(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef8]
       0     2732        M 0x80000b8c sw      s5, 84(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef4]
       0     2741        M 0x80000b90 sw      s6, 80(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fef0]
       0     2742        M 0x80000b94 sw      s7, 76(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011feec]
       0     2743        M 0x80000b98 sw      s8, 72(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee8]
       0     2744        M 0x80000b9c sw      s9, 68(sp)             #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee4]
       0     2753        M 0x80000ba0 sw      s10, 64(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fee0]
       0     2754        M 0x80000ba4 sw      s11, 60(sp)            #; sp  = 0x0011fea0, 0 ~~> Word[0x0011fedc]
       0     2755        M 0x80000ba8 mv      s3, a4                 #; a4  = 0x0011ff24, (wrb) s3  <-- 0x0011ff24
       0     2756        M 0x80000bac mv      s0, a3                 #; a3  = 0x80002e45, (wrb) s0  <-- 0x80002e45
       0     2765        M 0x80000bb0 mv      s5, a2                 #; a2  = -1, (wrb) s5  <-- -1
       0     2766        M 0x80000bb4 mv      s4, a1                 #; a1  = 0x0011ff17, (wrb) s4  <-- 0x0011ff17
       0     2767        M 0x80000bb8 beqz    a1, pc + 12            #; a1  = 0x0011ff17, not taken
       0     2768        M 0x80000bbc mv      s2, a0                 #; a0  = 0x80001768, (wrb) s2  <-- 0x80001768
       0     2777        M 0x80000bc0 j       pc + 0xc               #; goto 0x80000bcc
       0     2778        M 0x80000bcc li      s8, 0                  #; (wrb) s8  <-- 0
       0     2790        M 0x80000bd0 li      s6, 37                 #; (wrb) s6  <-- 37
       0     2791        M 0x80000bd4 li      s11, 16                #; (wrb) s11 <-- 16
       0     2792        M 0x80000bd8 li      s7, 46                 #; (wrb) s7  <-- 46
       0     2793        M 0x80000bdc lui     a0, 0x1                #; (wrb) a0  <-- 4096
       0     2802        M 0x80000be0 addi    a0, a0, -2048          #; a0  = 4096, (wrb) a0  <-- 2048
       0     2803        M 0x80000be4 sw      a0, 24(sp)             #; sp  = 0x0011fea0, 2048 ~~> Word[0x0011feb8]
       0     2804        M 0x80000be8 lui     a0, 0x10               #; (wrb) a0  <-- 0x00010000
       0     2805        M 0x80000bec addi    a0, a0, -1             #; a0  = 0x00010000, (wrb) a0  <-- 65535
       0     2814        M 0x80000bf0 sw      a0, 16(sp)             #; sp  = 0x0011fea0, 65535 ~~> Word[0x0011feb0]
       0     2815        M 0x80000bf4 addi    s10, s0, 2             #; s0  = 0x80002e45, (wrb) s10 <-- 0x80002e47
       0     2816        M 0x80000bf8 mv      s9, s8                 #; s8  = 0, (wrb) s9  <-- 0
       0     2817        M 0x80000bfc li      s8, 10                 #; (wrb) s8  <-- 10
       0     2826        M 0x80000c00 lbu     a0, 0(s0)              #; s0  = 0x80002e45, a0  <~~ Byte[0x80002e45]
       0     2837        M                                           #; (lsu) a0  <-- 101
       0     2838        M 0x80000c04 beqz    a0, pc + 2824          #; a0  = 101, not taken
       0     2839        M 0x80000c08 beq     a0, s6, pc + 48        #; a0  = 101, s6  = 37, not taken
       0     2840        M 0x80000c0c addi    s1, s9, 1              #; s9  = 0, (wrb) s1  <-- 1
       0     2841        M 0x80000c10 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     2842        M 0x80000c14 mv      a2, s9                 #; s9  = 0, (wrb) a2  <-- 0
       0     2843        M 0x80000c18 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2844        M 0x80000c1c jalr    s2                     #; s2  = 0x80001768, (wrb) ra  <-- 0x80000c20, goto 0x80001768
       0     2864        M 0x80001768 beqz    a0, pc + 168           #; a0  = 101, not taken
       0     2865        M 0x8000176c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     2876        M 0x80001770 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     2877        M 0x80001774 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     2878        M 0x80001778 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003778
       0     2879        M 0x8000177c addi    a3, a3, -1500          #; a3  = 0x80003778, (wrb) a3  <-- 0x8000319c
       0     2888        M 0x80001780 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
       0     2889        M 0x80001784 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     2900        M                                           #; (lsu) a4  <-- 0
       0     2901        M 0x80001788 addi    a5, a4, 1              #; a4  = 0, (wrb) a5  <-- 1
       0     2902        M 0x8000178c sw      a5, 0(a1)              #; a1  = 0x8000319c, 1 ~~> Word[0x8000319c]
       0     2903        M 0x80001790 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 0, (wrb) a4  <-- 0x8000319c
       0     2904        M 0x80001794 sb      a0, 72(a4)             #; a4  = 0x8000319c, 101 ~~> Byte[0x800031e4]
       0     2905        M 0x80001798 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     2926        M                                           #; (lsu) a4  <-- 1
       0     2927        M 0x8000179c addi    a4, a4, -1020          #; a4  = 1, (wrb) a4  <-- -1019
       0     2928        M 0x800017a0 snez    a4, a4                 #; a4  = -1019, (wrb) a4  <-- 1
       0     2929        M 0x800017a4 addi    a0, a0, -10            #; a0  = 101, (wrb) a0  <-- 91
       0     2930        M 0x800017a8 snez    a0, a0                 #; a0  = 91, (wrb) a0  <-- 1
       0     2931        M 0x800017ac and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     2940        M 0x800017b0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001810
       0     2963        M 0x80001810 ret                            #; ra  = 0x80000c20, goto 0x80000c20
       0     2977        M 0x80000c20 addi    s0, s0, 1              #; s0  = 0x80002e45, (wrb) s0  <-- 0x80002e46
       0     2978        M 0x80000c24 addi    s10, s10, 1            #; s10 = 0x80002e47, (wrb) s10 <-- 0x80002e48
       0     2979        M 0x80000c28 mv      s9, s1                 #; s1  = 1, (wrb) s9  <-- 1
       0     2980        M 0x80000c2c lbu     a0, 0(s0)              #; s0  = 0x80002e46, a0  <~~ Byte[0x80002e46]
       0     2991        M                                           #; (lsu) a0  <-- 114
       0     2992        M 0x80000c30 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000c08
       0     2993        M 0x80000c08 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     2994        M 0x80000c0c addi    s1, s9, 1              #; s9  = 1, (wrb) s1  <-- 2
       0     2996        M 0x80000c10 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     2997        M 0x80000c14 mv      a2, s9                 #; s9  = 1, (wrb) a2  <-- 1
       0     2998        M 0x80000c18 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     2999        M 0x80000c1c jalr    s2                     #; s2  = 0x80001768, (wrb) ra  <-- 0x80000c20, goto 0x80001768
       0     3002        M 0x80001768 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     3003        M 0x8000176c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     3005        M 0x80001770 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     3006        M 0x80001774 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     3007        M 0x80001778 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003778
       0     3008        M 0x8000177c addi    a3, a3, -1500          #; a3  = 0x80003778, (wrb) a3  <-- 0x8000319c
       0     3009        M                                           #; (acc) a1  <-- 0x00d605b3
       0     3010        M 0x80001780 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
       0     3011        M 0x80001784 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     3022        M                                           #; (lsu) a4  <-- 1
       0     3023        M 0x80001788 addi    a5, a4, 1              #; a4  = 1, (wrb) a5  <-- 2
       0     3024        M 0x8000178c sw      a5, 0(a1)              #; a1  = 0x8000319c, 2 ~~> Word[0x8000319c]
       0     3025        M 0x80001790 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 1, (wrb) a4  <-- 0x8000319d
       0     3026        M 0x80001794 sb      a0, 72(a4)             #; a4  = 0x8000319d, 114 ~~> Byte[0x800031e5]
       0     3027        M 0x80001798 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     3048        M                                           #; (lsu) a4  <-- 2
       0     3049        M 0x8000179c addi    a4, a4, -1020          #; a4  = 2, (wrb) a4  <-- -1018
       0     3050        M 0x800017a0 snez    a4, a4                 #; a4  = -1018, (wrb) a4  <-- 1
       0     3051        M 0x800017a4 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     3052        M 0x800017a8 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     3053        M 0x800017ac and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     3054        M 0x800017b0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001810
       0     3059        M 0x80001810 ret                            #; ra  = 0x80000c20, goto 0x80000c20
       0     3064        M 0x80000c20 addi    s0, s0, 1              #; s0  = 0x80002e46, (wrb) s0  <-- 0x80002e47
       0     3065        M 0x80000c24 addi    s10, s10, 1            #; s10 = 0x80002e48, (wrb) s10 <-- 0x80002e49
       0     3066        M 0x80000c28 mv      s9, s1                 #; s1  = 2, (wrb) s9  <-- 2
       0     3067        M 0x80000c2c lbu     a0, 0(s0)              #; s0  = 0x80002e47, a0  <~~ Byte[0x80002e47]
       0     3078        M                                           #; (lsu) a0  <-- 114
       0     3079        M 0x80000c30 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000c08
       0     3080        M 0x80000c08 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     3081        M 0x80000c0c addi    s1, s9, 1              #; s9  = 2, (wrb) s1  <-- 3
       0     3083        M 0x80000c10 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     3084        M 0x80000c14 mv      a2, s9                 #; s9  = 2, (wrb) a2  <-- 2
       0     3085        M 0x80000c18 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3086        M 0x80000c1c jalr    s2                     #; s2  = 0x80001768, (wrb) ra  <-- 0x80000c20, goto 0x80001768
       0     3089        M 0x80001768 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     3090        M 0x8000176c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     3092        M 0x80001770 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     3093        M 0x80001774 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     3094        M 0x80001778 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003778
       0     3095        M 0x8000177c addi    a3, a3, -1500          #; a3  = 0x80003778, (wrb) a3  <-- 0x8000319c
       0     3096        M                                           #; (acc) a1  <-- 0x00d605b3
       0     3097        M 0x80001780 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
       0     3098        M 0x80001784 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     3109        M                                           #; (lsu) a4  <-- 2
       0     3110        M 0x80001788 addi    a5, a4, 1              #; a4  = 2, (wrb) a5  <-- 3
       0     3111        M 0x8000178c sw      a5, 0(a1)              #; a1  = 0x8000319c, 3 ~~> Word[0x8000319c]
       0     3112        M 0x80001790 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 2, (wrb) a4  <-- 0x8000319e
       0     3113        M 0x80001794 sb      a0, 72(a4)             #; a4  = 0x8000319e, 114 ~~> Byte[0x800031e6]
       0     3114        M 0x80001798 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     3135        M                                           #; (lsu) a4  <-- 3
       0     3136        M 0x8000179c addi    a4, a4, -1020          #; a4  = 3, (wrb) a4  <-- -1017
       0     3137        M 0x800017a0 snez    a4, a4                 #; a4  = -1017, (wrb) a4  <-- 1
       0     3138        M 0x800017a4 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     3139        M 0x800017a8 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     3140        M 0x800017ac and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     3141        M 0x800017b0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001810
       0     3146        M 0x80001810 ret                            #; ra  = 0x80000c20, goto 0x80000c20
       0     3151        M 0x80000c20 addi    s0, s0, 1              #; s0  = 0x80002e47, (wrb) s0  <-- 0x80002e48
       0     3152        M 0x80000c24 addi    s10, s10, 1            #; s10 = 0x80002e49, (wrb) s10 <-- 0x80002e4a
       0     3153        M 0x80000c28 mv      s9, s1                 #; s1  = 3, (wrb) s9  <-- 3
       0     3154        M 0x80000c2c lbu     a0, 0(s0)              #; s0  = 0x80002e48, a0  <~~ Byte[0x80002e48]
       0     3165        M                                           #; (lsu) a0  <-- 111
       0     3166        M 0x80000c30 bnez    a0, pc - 40            #; a0  = 111, taken, goto 0x80000c08
       0     3167        M 0x80000c08 beq     a0, s6, pc + 48        #; a0  = 111, s6  = 37, not taken
       0     3168        M 0x80000c0c addi    s1, s9, 1              #; s9  = 3, (wrb) s1  <-- 4
       0     3170        M 0x80000c10 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     3171        M 0x80000c14 mv      a2, s9                 #; s9  = 3, (wrb) a2  <-- 3
       0     3172        M 0x80000c18 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3173        M 0x80000c1c jalr    s2                     #; s2  = 0x80001768, (wrb) ra  <-- 0x80000c20, goto 0x80001768
       0     3176        M 0x80001768 beqz    a0, pc + 168           #; a0  = 111, not taken
       0     3177        M 0x8000176c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     3179        M 0x80001770 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     3180        M 0x80001774 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     3181        M 0x80001778 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003778
       0     3182        M 0x8000177c addi    a3, a3, -1500          #; a3  = 0x80003778, (wrb) a3  <-- 0x8000319c
       0     3183        M                                           #; (acc) a1  <-- 0x00d605b3
       0     3184        M 0x80001780 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
       0     3185        M 0x80001784 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     3196        M                                           #; (lsu) a4  <-- 3
       0     3197        M 0x80001788 addi    a5, a4, 1              #; a4  = 3, (wrb) a5  <-- 4
       0     3198        M 0x8000178c sw      a5, 0(a1)              #; a1  = 0x8000319c, 4 ~~> Word[0x8000319c]
       0     3199        M 0x80001790 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 3, (wrb) a4  <-- 0x8000319f
       0     3200        M 0x80001794 sb      a0, 72(a4)             #; a4  = 0x8000319f, 111 ~~> Byte[0x800031e7]
       0     3201        M 0x80001798 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     3222        M                                           #; (lsu) a4  <-- 4
       0     3223        M 0x8000179c addi    a4, a4, -1020          #; a4  = 4, (wrb) a4  <-- -1016
       0     3224        M 0x800017a0 snez    a4, a4                 #; a4  = -1016, (wrb) a4  <-- 1
       0     3225        M 0x800017a4 addi    a0, a0, -10            #; a0  = 111, (wrb) a0  <-- 101
       0     3226        M 0x800017a8 snez    a0, a0                 #; a0  = 101, (wrb) a0  <-- 1
       0     3227        M 0x800017ac and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     3228        M 0x800017b0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001810
       0     3233        M 0x80001810 ret                            #; ra  = 0x80000c20, goto 0x80000c20
       0     3238        M 0x80000c20 addi    s0, s0, 1              #; s0  = 0x80002e48, (wrb) s0  <-- 0x80002e49
       0     3239        M 0x80000c24 addi    s10, s10, 1            #; s10 = 0x80002e4a, (wrb) s10 <-- 0x80002e4b
       0     3240        M 0x80000c28 mv      s9, s1                 #; s1  = 4, (wrb) s9  <-- 4
       0     3241        M 0x80000c2c lbu     a0, 0(s0)              #; s0  = 0x80002e49, a0  <~~ Byte[0x80002e49]
       0     3252        M                                           #; (lsu) a0  <-- 114
       0     3253        M 0x80000c30 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000c08
       0     3254        M 0x80000c08 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     3255        M 0x80000c0c addi    s1, s9, 1              #; s9  = 4, (wrb) s1  <-- 5
       0     3257        M 0x80000c10 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     3258        M 0x80000c14 mv      a2, s9                 #; s9  = 4, (wrb) a2  <-- 4
       0     3259        M 0x80000c18 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3260        M 0x80000c1c jalr    s2                     #; s2  = 0x80001768, (wrb) ra  <-- 0x80000c20, goto 0x80001768
       0     3263        M 0x80001768 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     3264        M 0x8000176c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     3266        M 0x80001770 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     3267        M 0x80001774 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     3268        M 0x80001778 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003778
       0     3269        M 0x8000177c addi    a3, a3, -1500          #; a3  = 0x80003778, (wrb) a3  <-- 0x8000319c
       0     3270        M                                           #; (acc) a1  <-- 0x00d605b3
       0     3271        M 0x80001780 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
       0     3272        M 0x80001784 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     3283        M                                           #; (lsu) a4  <-- 4
       0     3284        M 0x80001788 addi    a5, a4, 1              #; a4  = 4, (wrb) a5  <-- 5
       0     3285        M 0x8000178c sw      a5, 0(a1)              #; a1  = 0x8000319c, 5 ~~> Word[0x8000319c]
       0     3286        M 0x80001790 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 4, (wrb) a4  <-- 0x800031a0
       0     3287        M 0x80001794 sb      a0, 72(a4)             #; a4  = 0x800031a0, 114 ~~> Byte[0x800031e8]
       0     3288        M 0x80001798 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     3309        M                                           #; (lsu) a4  <-- 5
       0     3310        M 0x8000179c addi    a4, a4, -1020          #; a4  = 5, (wrb) a4  <-- -1015
       0     3311        M 0x800017a0 snez    a4, a4                 #; a4  = -1015, (wrb) a4  <-- 1
       0     3312        M 0x800017a4 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     3313        M 0x800017a8 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     3314        M 0x800017ac and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     3315        M 0x800017b0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001810
       0     3320        M 0x80001810 ret                            #; ra  = 0x80000c20, goto 0x80000c20
       0     3325        M 0x80000c20 addi    s0, s0, 1              #; s0  = 0x80002e49, (wrb) s0  <-- 0x80002e4a
       0     3326        M 0x80000c24 addi    s10, s10, 1            #; s10 = 0x80002e4b, (wrb) s10 <-- 0x80002e4c
       0     3327        M 0x80000c28 mv      s9, s1                 #; s1  = 5, (wrb) s9  <-- 5
       0     3328        M 0x80000c2c lbu     a0, 0(s0)              #; s0  = 0x80002e4a, a0  <~~ Byte[0x80002e4a]
       0     3339        M                                           #; (lsu) a0  <-- 32
       0     3340        M 0x80000c30 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000c08
       0     3341        M 0x80000c08 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     3342        M 0x80000c0c addi    s1, s9, 1              #; s9  = 5, (wrb) s1  <-- 6
       0     3344        M 0x80000c10 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     3345        M 0x80000c14 mv      a2, s9                 #; s9  = 5, (wrb) a2  <-- 5
       0     3346        M 0x80000c18 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3347        M 0x80000c1c jalr    s2                     #; s2  = 0x80001768, (wrb) ra  <-- 0x80000c20, goto 0x80001768
       0     3350        M 0x80001768 beqz    a0, pc + 168           #; a0  = 32, not taken
       0     3351        M 0x8000176c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     3353        M 0x80001770 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     3354        M 0x80001774 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     3355        M 0x80001778 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003778
       0     3356        M 0x8000177c addi    a3, a3, -1500          #; a3  = 0x80003778, (wrb) a3  <-- 0x8000319c
       0     3357        M                                           #; (acc) a1  <-- 0x00d605b3
       0     3358        M 0x80001780 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
       0     3359        M 0x80001784 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     3370        M                                           #; (lsu) a4  <-- 5
       0     3371        M 0x80001788 addi    a5, a4, 1              #; a4  = 5, (wrb) a5  <-- 6
       0     3372        M 0x8000178c sw      a5, 0(a1)              #; a1  = 0x8000319c, 6 ~~> Word[0x8000319c]
       0     3373        M 0x80001790 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 5, (wrb) a4  <-- 0x800031a1
       0     3374        M 0x80001794 sb      a0, 72(a4)             #; a4  = 0x800031a1, 32 ~~> Byte[0x800031e9]
       0     3375        M 0x80001798 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     3396        M                                           #; (lsu) a4  <-- 6
       0     3397        M 0x8000179c addi    a4, a4, -1020          #; a4  = 6, (wrb) a4  <-- -1014
       0     3398        M 0x800017a0 snez    a4, a4                 #; a4  = -1014, (wrb) a4  <-- 1
       0     3399        M 0x800017a4 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
       0     3400        M 0x800017a8 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
       0     3401        M 0x800017ac and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     3402        M 0x800017b0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001810
       0     3407        M 0x80001810 ret                            #; ra  = 0x80000c20, goto 0x80000c20
       0     3412        M 0x80000c20 addi    s0, s0, 1              #; s0  = 0x80002e4a, (wrb) s0  <-- 0x80002e4b
       0     3413        M 0x80000c24 addi    s10, s10, 1            #; s10 = 0x80002e4c, (wrb) s10 <-- 0x80002e4d
       0     3414        M 0x80000c28 mv      s9, s1                 #; s1  = 6, (wrb) s9  <-- 6
       0     3415        M 0x80000c2c lbu     a0, 0(s0)              #; s0  = 0x80002e4b, a0  <~~ Byte[0x80002e4b]
       0     3426        M                                           #; (lsu) a0  <-- 61
       0     3427        M 0x80000c30 bnez    a0, pc - 40            #; a0  = 61, taken, goto 0x80000c08
       0     3428        M 0x80000c08 beq     a0, s6, pc + 48        #; a0  = 61, s6  = 37, not taken
       0     3429        M 0x80000c0c addi    s1, s9, 1              #; s9  = 6, (wrb) s1  <-- 7
       0     3431        M 0x80000c10 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     3432        M 0x80000c14 mv      a2, s9                 #; s9  = 6, (wrb) a2  <-- 6
       0     3433        M 0x80000c18 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3434        M 0x80000c1c jalr    s2                     #; s2  = 0x80001768, (wrb) ra  <-- 0x80000c20, goto 0x80001768
       0     3437        M 0x80001768 beqz    a0, pc + 168           #; a0  = 61, not taken
       0     3438        M 0x8000176c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     3440        M 0x80001770 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     3441        M 0x80001774 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     3442        M 0x80001778 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003778
       0     3443        M 0x8000177c addi    a3, a3, -1500          #; a3  = 0x80003778, (wrb) a3  <-- 0x8000319c
       0     3444        M                                           #; (acc) a1  <-- 0x00d605b3
       0     3445        M 0x80001780 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
       0     3446        M 0x80001784 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     3457        M                                           #; (lsu) a4  <-- 6
       0     3458        M 0x80001788 addi    a5, a4, 1              #; a4  = 6, (wrb) a5  <-- 7
       0     3459        M 0x8000178c sw      a5, 0(a1)              #; a1  = 0x8000319c, 7 ~~> Word[0x8000319c]
       0     3460        M 0x80001790 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 6, (wrb) a4  <-- 0x800031a2
       0     3461        M 0x80001794 sb      a0, 72(a4)             #; a4  = 0x800031a2, 61 ~~> Byte[0x800031ea]
       0     3462        M 0x80001798 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     3483        M                                           #; (lsu) a4  <-- 7
       0     3484        M 0x8000179c addi    a4, a4, -1020          #; a4  = 7, (wrb) a4  <-- -1013
       0     3485        M 0x800017a0 snez    a4, a4                 #; a4  = -1013, (wrb) a4  <-- 1
       0     3486        M 0x800017a4 addi    a0, a0, -10            #; a0  = 61, (wrb) a0  <-- 51
       0     3487        M 0x800017a8 snez    a0, a0                 #; a0  = 51, (wrb) a0  <-- 1
       0     3488        M 0x800017ac and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     3489        M 0x800017b0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001810
       0     3494        M 0x80001810 ret                            #; ra  = 0x80000c20, goto 0x80000c20
       0     3499        M 0x80000c20 addi    s0, s0, 1              #; s0  = 0x80002e4b, (wrb) s0  <-- 0x80002e4c
       0     3500        M 0x80000c24 addi    s10, s10, 1            #; s10 = 0x80002e4d, (wrb) s10 <-- 0x80002e4e
       0     3501        M 0x80000c28 mv      s9, s1                 #; s1  = 7, (wrb) s9  <-- 7
       0     3502        M 0x80000c2c lbu     a0, 0(s0)              #; s0  = 0x80002e4c, a0  <~~ Byte[0x80002e4c]
       0     3513        M                                           #; (lsu) a0  <-- 32
       0     3514        M 0x80000c30 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000c08
       0     3515        M 0x80000c08 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     3516        M 0x80000c0c addi    s1, s9, 1              #; s9  = 7, (wrb) s1  <-- 8
       0     3518        M 0x80000c10 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     3519        M 0x80000c14 mv      a2, s9                 #; s9  = 7, (wrb) a2  <-- 7
       0     3520        M 0x80000c18 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3521        M 0x80000c1c jalr    s2                     #; s2  = 0x80001768, (wrb) ra  <-- 0x80000c20, goto 0x80001768
       0     3524        M 0x80001768 beqz    a0, pc + 168           #; a0  = 32, not taken
       0     3525        M 0x8000176c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     3527        M 0x80001770 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     3528        M 0x80001774 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     3529        M 0x80001778 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003778
       0     3530        M 0x8000177c addi    a3, a3, -1500          #; a3  = 0x80003778, (wrb) a3  <-- 0x8000319c
       0     3531        M                                           #; (acc) a1  <-- 0x00d605b3
       0     3532        M 0x80001780 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
       0     3533        M 0x80001784 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     3544        M                                           #; (lsu) a4  <-- 7
       0     3545        M 0x80001788 addi    a5, a4, 1              #; a4  = 7, (wrb) a5  <-- 8
       0     3546        M 0x8000178c sw      a5, 0(a1)              #; a1  = 0x8000319c, 8 ~~> Word[0x8000319c]
       0     3547        M 0x80001790 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 7, (wrb) a4  <-- 0x800031a3
       0     3548        M 0x80001794 sb      a0, 72(a4)             #; a4  = 0x800031a3, 32 ~~> Byte[0x800031eb]
       0     3549        M 0x80001798 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     3570        M                                           #; (lsu) a4  <-- 8
       0     3571        M 0x8000179c addi    a4, a4, -1020          #; a4  = 8, (wrb) a4  <-- -1012
       0     3572        M 0x800017a0 snez    a4, a4                 #; a4  = -1012, (wrb) a4  <-- 1
       0     3573        M 0x800017a4 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
       0     3574        M 0x800017a8 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
       0     3575        M 0x800017ac and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     3576        M 0x800017b0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001810
       0     3581        M 0x80001810 ret                            #; ra  = 0x80000c20, goto 0x80000c20
       0     3586        M 0x80000c20 addi    s0, s0, 1              #; s0  = 0x80002e4c, (wrb) s0  <-- 0x80002e4d
       0     3587        M 0x80000c24 addi    s10, s10, 1            #; s10 = 0x80002e4e, (wrb) s10 <-- 0x80002e4f
       0     3588        M 0x80000c28 mv      s9, s1                 #; s1  = 8, (wrb) s9  <-- 8
       0     3589        M 0x80000c2c lbu     a0, 0(s0)              #; s0  = 0x80002e4d, a0  <~~ Byte[0x80002e4d]
       0     3600        M                                           #; (lsu) a0  <-- 37
       0     3601        M 0x80000c30 bnez    a0, pc - 40            #; a0  = 37, taken, goto 0x80000c08
       0     3602        M 0x80000c08 beq     a0, s6, pc + 48        #; a0  = 37, s6  = 37, taken, goto 0x80000c38
       0     3603        M 0x80000c38 li      s0, 0                  #; (wrb) s0  <-- 0
       0     3604        M 0x80000c3c j       pc + 0x10              #; goto 0x80000c4c
       0     3616        M 0x80000c4c lbu     a0, -1(s10)            #; s10 = 0x80002e4f, a0  <~~ Byte[0x80002e4e]
       0     3627        M                                           #; (lsu) a0  <-- 102
       0     3628        M 0x80000c50 addi    a1, a0, -32            #; a0  = 102, (wrb) a1  <-- 70
       0     3629        M 0x80000c54 bltu    s11, a1, pc + 56       #; s11 = 16, a1  = 70, taken, goto 0x80000c8c
       0     3651        M 0x80000c8c addi    a1, a0, -48            #; a0  = 102, (wrb) a1  <-- 54
       0     3663        M 0x80000c90 andi    a2, a1, 255            #; a1  = 54, (wrb) a2  <-- 54
       0     3664        M 0x80000c94 addi    a1, s10, -1            #; s10 = 0x80002e4f, (wrb) a1  <-- 0x80002e4e
       0     3665        M 0x80000c98 li      a3, 9                  #; (wrb) a3  <-- 9
       0     3666        M 0x80000c9c bltu    a3, a2, pc + 124       #; a3  = 9, a2  = 54, taken, goto 0x80000d18
       0     3686        M 0x80000d18 li      a2, 42                 #; (wrb) a2  <-- 42
       0     3687        M 0x80000d1c bne     a0, a2, pc + 80        #; a0  = 102, a2  = 42, taken, goto 0x80000d6c
       0     3709        M 0x80000d6c li      s6, 0                  #; (wrb) s6  <-- 0
       0     3721        M 0x80000d70 mv      s10, a1                #; a1  = 0x80002e4e, (wrb) s10 <-- 0x80002e4e
       0     3722        M 0x80000d74 beq     a0, s7, pc - 164       #; a0  = 102, s7  = 46, not taken
       0     3723        M 0x80000d78 li      s7, 0                  #; (wrb) s7  <-- 0
       0     3724        M 0x80000d7c j       pc + 0xc               #; goto 0x80000d88
       0     3744        M 0x80000d88 addi    a1, a0, -104           #; a0  = 102, (wrb) a1  <-- -2
       0     3745        M 0x80000d8c srli    a2, a1, 1              #; a1  = -2, (wrb) a2  <-- 0x7fffffff
       0     3756        M 0x80000d90 slli    a1, a1, 31             #; a1  = -2, (wrb) a1  <-- 0
       0     3757        M 0x80000d94 or      a1, a1, a2             #; a1  = 0, a2  = 0x7fffffff, (wrb) a1  <-- 0x7fffffff
       0     3758        M 0x80000d98 li      a2, 9                  #; (wrb) a2  <-- 9
       0     3759        M 0x80000d9c bltu    a2, a1, pc + 100       #; a2  = 9, a1  = 0x7fffffff, taken, goto 0x80000e00
       0     3779        M 0x80000e00 addi    a1, a0, -37            #; a0  = 102, (wrb) a1  <-- 65
       0     3780        M 0x80000e04 li      a2, 83                 #; (wrb) a2  <-- 83
       0     3781        M 0x80000e08 bltu    a2, a1, pc + 264       #; a2  = 83, a1  = 65, not taken
       0     3782        M 0x80000e0c slli    a1, a1, 2              #; a1  = 65, (wrb) a1  <-- 260
       0     3791        M 0x80000e10 auipc   a2, 0x2                #; (wrb) a2  <-- 0x80002e10
       0     3792        M 0x80000e14 addi    a2, a2, 180            #; a2  = 0x80002e10, (wrb) a2  <-- 0x80002ec4
       0     3793        M 0x80000e18 add     a1, a1, a2             #; a1  = 260, a2  = 0x80002ec4, (wrb) a1  <-- 0x80002fc8
       0     3794        M 0x80000e1c lw      a2, 0(a1)              #; a1  = 0x80002fc8, a2  <~~ Word[0x80002fc8]
       0     3803        M 0x80000e20 li      a1, 8                  #; (wrb) a1  <-- 8
       0     3804        M 0x80000e24 li      s8, 16                 #; (wrb) s8  <-- 16
       0     3805        M                                           #; (lsu) a2  <-- 0x80000e58
       0     3806        M 0x80000e28 jr      a2                     #; a2  = 0x80000e58, goto 0x80000e58
       0     3826        M 0x80000e58 li      a1, 70                 #; (wrb) a1  <-- 70
       0     3827        M 0x80000e5c bne     a0, a1, pc + 8         #; a0  = 102, a1  = 70, taken, goto 0x80000e64
       0     3838        M 0x80000e64 addi    a0, s3, 7              #; s3  = 0x0011ff24, (wrb) a0  <-- 0x0011ff2b
       0     3839        M 0x80000e68 andi    a0, a0, -8             #; a0  = 0x0011ff2b, (wrb) a0  <-- 0x0011ff28
       0     3842        M 0x80000e6c fld     fa0, 0(a0)             #; fa0  <~~ Doub[0x0011ff28]
       0     3843        M                                           #; (f:lsu) fa0  <-- 169.7040000
       0     3850        M 0x80000e70 addi    s3, a0, 8              #; a0  = 0x0011ff28, (wrb) s3  <-- 0x0011ff30
       0     3851        M 0x80000e74 mv      a0, s2                 #; s2  = 0x80001768, (wrb) a0  <-- 0x80001768
       0     3852        M 0x80000e78 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     3853        M 0x80000e7c mv      a2, s9                 #; s9  = 8, (wrb) a2  <-- 8
       0     3862        M 0x80000e80 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3863        M 0x80000e84 mv      a4, s7                 #; s7  = 0, (wrb) a4  <-- 0
       0     3864        M 0x80000e88 mv      a5, s6                 #; s6  = 0, (wrb) a5  <-- 0
       0     3865        M 0x80000e8c mv      a6, s0                 #; s0  = 0, (wrb) a6  <-- 0
       0     3874        M 0x80000e90 auipc   ra, 0x1                #; (wrb) ra  <-- 0x80001e90
       0     3875        M 0x80000e94 jalr    ra, ra, -1656          #; ra  = 0x80001e90, (wrb) ra  <-- 0x80000e98, goto 0x80001818
       0     3888        M 0x80001818 addi    sp, sp, -112           #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011fe30
       0     3889        M 0x8000181c sw      ra, 108(sp)            #; sp  = 0x0011fe30, 0x80000e98 ~~> Word[0x0011fe9c]
       0     3891        M 0x80001820 sw      s0, 104(sp)            #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe98]
       0     3892        M 0x80001824 sw      s1, 100(sp)            #; sp  = 0x0011fe30, 8 ~~> Word[0x0011fe94]
       0     3893        M 0x80001828 sw      s2, 96(sp)             #; sp  = 0x0011fe30, 0x80001768 ~~> Word[0x0011fe90]
       0     3894        M 0x8000182c sw      s3, 92(sp)             #; sp  = 0x0011fe30, 0x0011ff30 ~~> Word[0x0011fe8c]
       0     3903        M 0x80001830 sw      s4, 88(sp)             #; sp  = 0x0011fe30, 0x0011ff17 ~~> Word[0x0011fe88]
       0     3904        M 0x80001834 sw      s5, 84(sp)             #; sp  = 0x0011fe30, -1 ~~> Word[0x0011fe84]
       0     3905        M 0x80001838 sw      s6, 80(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe80]
       0     3906        M 0x8000183c sw      s7, 76(sp)             #; sp  = 0x0011fe30, 0 ~~> Word[0x0011fe7c]
       0     3915        M 0x80001840 sw      s8, 72(sp)             #; sp  = 0x0011fe30, 16 ~~> Word[0x0011fe78]
       0     3916        M 0x80001844 sw      s9, 68(sp)             #; sp  = 0x0011fe30, 8 ~~> Word[0x0011fe74]
       0     3917        M 0x80001848 sw      s10, 64(sp)            #; sp  = 0x0011fe30, 0x80002e4e ~~> Word[0x0011fe70]
       0     3920        M 0x8000184c fsd     fs0, 56(sp)            #; 0.0000000 ~~> Doub[0x0011fe68]
       0     3929        M 0x80001858 auipc   s1, 0x2                #; (wrb) s1  <-- 0x80003858
                         M 0x80001850 fsd     fs1, 48(sp)            #; 0.0 ~~> Doub[0x0011fe60]
       0     3930        M 0x8000185c addi    s1, s1, -1896          #; s1  = 0x80003858, (wrb) s1  <-- 0x800030f0
                         M 0x80001854 fsd     fs2, 40(sp)            #; 0.0 ~~> Doub[0x0011fe58]
       0     3941        M 0x80001868 mv      s5, a6                 #; a6  = 0, (wrb) s5  <-- 0
                         M 0x80001860 fld     ft0, 0(s1)             #; ft0  <~~ Doub[0x800030f0]
       0     3942        M 0x8000186c mv      s2, a5                 #; a5  = 0, (wrb) s2  <-- 0
       0     3950        M                                           #; (f:lsu) ft0  <-- -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     3951        M 0x80001870 mv      s3, a3                 #; a3  = -1, (wrb) s3  <-- -1
                         M 0x80001864 fle.d   s1, ft0, fa0           #; ft0  = -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000, fa0  = 169.7040000
       0     3952        M 0x80001874 mv      s4, a2                 #; a2  = 8, (wrb) s4  <-- 8
       0     3953        M 0x80001878 mv      s6, a1                 #; a1  = 0x0011ff17, (wrb) s6  <-- 0x0011ff17
       0     3954        M 0x8000187c mv      s7, a0                 #; a0  = 0x80001768, (wrb) s7  <-- 0x80001768
       0     3963        M 0x80001880 bnez    s1, pc + 240           #; s1  = 1, taken, goto 0x80001970
       0     3987        M 0x80001974 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002974
       0     3988        M 0x80001978 addi    a0, a0, 1924           #; a0  = 0x80002974, (wrb) a0  <-- 0x800030f8
                         M 0x80001970 fsgnj.d fs0, fa0, fa0          #; fa0  = 169.7040000, fa0  = 169.7040000
       0     3989        M                                           #; (f:fpu) fs0  <-- 169.7040000
       0     3991        M 0x8000197c fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x800030f8]
       0     4000        M                                           #; (f:lsu) ft0  <-- 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     4001        M 0x80001980 fle.d   a0, fa0, ft0           #; fa0  = 169.7040000, ft0  = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     4003        M                                           #; (acc) t3  <-- 0x00051e63
       0     4004        M 0x80001984 bnez    a0, pc + 28            #; a0  = 1, taken, goto 0x800019a0
       0     4021        M 0x800019a0 auipc   a0, 0x1                #; (wrb) a0  <-- 0x800029a0
       0     4022        M 0x800019a4 addi    a0, a0, 1888           #; a0  = 0x800029a0, (wrb) a0  <-- 0x80003100
       0     4024        M 0x800019ac auipc   a0, 0x1                #; (wrb) a0  <-- 0x800029ac
       0     4025        M 0x800019a8 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003100]
       0     4033        M 0x800019b0 addi    a0, a0, 1884           #; a0  = 0x800029ac, (wrb) a0  <-- 0x80003108
       0     4034        M                                           #; (f:lsu) ft0  <-- 1000000000.0000000
       0     4036        M 0x800019b4 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80003108]
       0     4037        M 0x800019b8 fle.d   a0, fs0, ft0           #; fs0  = 169.7040000, ft0  = 1000000000.0000000
       0     4045        M                                           #; (f:lsu) ft1  <-- -1000000000.0000000
       0     4046        M 0x800019bc fle.d   a1, ft1, fs0           #; ft1  = -1000000000.0000000, fs0  = 169.7040000
       0     4048        M                                           #; (acc) a0  <-- 0x00b57533
       0     4049        M 0x800019c0 and     a0, a0, a1             #; a0  = 1, a1  = 1, (wrb) a0  <-- 1
       0     4050        M 0x800019c4 bnez    a0, pc + 252           #; a0  = 1, taken, goto 0x80001ac0
       0     4068        M 0x80001ac0 andi    a0, s5, 1024           #; s5  = 0, (wrb) a0  <-- 0
       0     4069        M 0x80001ac4 li      s8, 6                  #; (wrb) s8  <-- 6
       0     4070        M 0x80001ac8 beqz    a0, pc + 8             #; a0  = 0, taken, goto 0x80001ad0
       0     4080        M 0x80001ad0 li      a0, 10                 #; (wrb) a0  <-- 10
       0     4082        M 0x80001ad8 bltu    s8, a0, pc + 56        #; s8  = 6, a0  = 10, taken, goto 0x80001b10
       0     4083        M 0x80001ad4 fsgnjx.d fs2, fs0, fs0         #; fs0  = 169.7040000, fs0  = 169.7040000
       0     4084        M                                           #; (f:fpu) fs2  <-- 169.7040000
       0     4103        M 0x80001b10 li      s0, 0                  #; (wrb) s0  <-- 0
       0     4104        M 0x80001b14 slli    a0, s8, 3              #; s8  = 6, (wrb) a0  <-- 48
       0     4105        M 0x80001b18 auipc   a1, 0x1                #; (wrb) a1  <-- 0x80002b18
       0     4106        M 0x80001b1c addi    a1, a1, 1280           #; a1  = 0x80002b18, (wrb) a1  <-- 0x80003018
       0     4115        M 0x80001b20 add     a0, a0, a1             #; a0  = 48, a1  = 0x80003018, (wrb) a0  <-- 0x80003048
       0     4118        M 0x80001b24 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80003048]
       0     4119        M 0x80001b28 fcvt.w.d s1, fs2               #; fs2  = 169.7040000
       0     4123        M 0x80001b2c fcvt.d.w ft0, s1               #; ac1  = 169
       0     4124        M                                           #; (f:fpu) ft0  <-- 169.0
       0     4127        M                                           #; (f:lsu) ft1  <-- 1000000.0000000
       0     4129        M 0x80001b38 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002b38
                         M 0x80001b30 fsub.d  ft0, fs2, ft0          #; fs2  = 169.7040000, ft0  = 169.0
       0     4130        M 0x80001b3c addi    a0, a0, 1496           #; a0  = 0x80002b38, (wrb) a0  <-- 0x80003110
       0     4132        M                                           #; (f:fpu) ft0  <-- 0.7040000
       0     4133        M 0x80001b34 fmul.d  ft2, ft1, ft0          #; ft1  = 1000000.0000000, ft0  = 0.7040000
       0     4136        M                                           #; (f:fpu) ft2  <-- 704000.0000000
       0     4141        M 0x80001b40 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003110]
       0     4142        M 0x80001b44 fcvt.wu.d a0, ft2              #; ft2  = 704000.0000000
       0     4144        M                                           #; (acc) gp  <-- 0xd21501d3
       0     4146        M 0x80001b48 fcvt.d.wu ft3, a0              #; ac1  = 0x000abdff
       0     4147        M                                           #; (f:fpu) ft3  <-- 703999.0
       0     4148        M 0x80001b4c fsub.d  ft2, ft2, ft3          #; ft2  = 704000.0000000, ft3  = 703999.0
       0     4150        M                                           #; (f:lsu) ft0  <-- 0.5
       0     4151        M                                           #; (f:fpu) ft2  <-- 1.0000000
       0     4152        M 0x80001b50 fle.d   a1, ft2, ft0           #; ft2  = 1.0000000, ft0  = 0.5
       0     4155        M 0x80001b54 bnez    a1, pc + 32            #; a1  = 0, not taken
       0     4156        M 0x80001b58 addi    a0, a0, 1              #; a0  = 0x000abdff, (wrb) a0  <-- 0x000abe00
       0     4158        M 0x80001b5c fcvt.d.wu ft2, a0              #; ac1  = 0x000abe00
       0     4159        M                                           #; (f:fpu) ft2  <-- 704000.0
       0     4164        M 0x80001b60 flt.d   a1, ft2, ft1           #; ft2  = 704000.0, ft1  = 1000000.0000000
       0     4166        M                                           #; (acc) s0  <-- 0x02059463
       0     4167        M 0x80001b64 bnez    a1, pc + 40            #; a1  = 1, taken, goto 0x80001b8c
       0     4187        M 0x80001b8c fcvt.d.w fs1, zero             #; ac1  = 0
       0     4188        M                                           #; (f:fpu) fs1  <-- 0.0
       0     4198        M 0x80001b90 beqz    s8, pc + 216           #; s8  = 6, not taken
       0     4199        M 0x80001b94 li      a2, 0                  #; (wrb) a2  <-- 0
       0     4200        M 0x80001b98 addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
       0     4201        M 0x80001b9c add     t1, a1, s0             #; a1  = 0x0011fe38, s0  = 0, (wrb) t1  <-- 0x0011fe38
       0     4210        M 0x80001ba0 li      t0, 32                 #; (wrb) t0  <-- 32
       0     4211        M 0x80001ba4 sub     a4, t0, s0             #; t0  = 32, s0  = 0, (wrb) a4  <-- 32
       0     4212        M 0x80001ba8 lui     a1, 0xccccd            #; (wrb) a1  <-- 0xccccd000
       0     4213        M 0x80001bac addi    t2, a1, -819           #; a1  = 0xccccd000, (wrb) t2  <-- 0xcccccccd
       0     4222        M 0x80001bb0 li      a6, 10                 #; (wrb) a6  <-- 10
       0     4223        M 0x80001bb4 li      a7, 9                  #; (wrb) a7  <-- 9
       0     4224        M 0x80001bb8 beq     a4, a2, pc + 200       #; a4  = 32, a2  = 0, not taken
       0     4225        M 0x80001bbc mv      a1, a0                 #; a0  = 0x000abe00, (wrb) a1  <-- 0x000abe00
       0     4234        M 0x80001bc0 mulhu   a0, a0, t2             #; a0  = 0x000abe00, t2  = 0xcccccccd
       0     4237        M                                           #; (acc) a0  <-- 0x00355513
       0     4238        M 0x80001bc4 srli    a0, a0, 3              #; a0  = 0x00089800, (wrb) a0  <-- 0x00011300
       0     4239        M 0x80001bc8 mul     a3, a0, a6             #; a0  = 0x00011300, a6  = 10
       0     4242        M                                           #; (acc) a3  <-- 0x40d586b3
       0     4243        M 0x80001bcc sub     a3, a1, a3             #; a1  = 0x000abe00, a3  = 0x000abe00, (wrb) a3  <-- 0
       0     4246        M 0x80001bd0 ori     a3, a3, 48             #; a3  = 0, (wrb) a3  <-- 48
       0     4247        M 0x80001bd4 add     a5, t1, a2             #; t1  = 0x0011fe38, a2  = 0, (wrb) a5  <-- 0x0011fe38
       0     4248        M 0x80001bd8 sb      a3, 0(a5)              #; a5  = 0x0011fe38, 48 ~~> Byte[0x0011fe38]
       0     4249        M 0x80001bdc addi    a2, a2, 1              #; a2  = 0, (wrb) a2  <-- 1
       0     4258        M 0x80001be0 bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 0x000abe00, taken, goto 0x80001bb8
       0     4259        M 0x80001bb8 beq     a4, a2, pc + 200       #; a4  = 32, a2  = 1, not taken
       0     4260        M 0x80001bbc mv      a1, a0                 #; a0  = 0x00011300, (wrb) a1  <-- 0x00011300
       0     4261        M 0x80001bc0 mulhu   a0, a0, t2             #; a0  = 0x00011300, t2  = 0xcccccccd
       0     4264        M                                           #; (acc) a0  <-- 0x00355513
       0     4265        M 0x80001bc4 srli    a0, a0, 3              #; a0  = 56320, (wrb) a0  <-- 7040
       0     4266        M 0x80001bc8 mul     a3, a0, a6             #; a0  = 7040, a6  = 10
       0     4269        M                                           #; (acc) a3  <-- 0x40d586b3
       0     4270        M 0x80001bcc sub     a3, a1, a3             #; a1  = 0x00011300, a3  = 0x00011300, (wrb) a3  <-- 0
       0     4271        M 0x80001bd0 ori     a3, a3, 48             #; a3  = 0, (wrb) a3  <-- 48
       0     4272        M 0x80001bd4 add     a5, t1, a2             #; t1  = 0x0011fe38, a2  = 1, (wrb) a5  <-- 0x0011fe39
       0     4273        M 0x80001bd8 sb      a3, 0(a5)              #; a5  = 0x0011fe39, 48 ~~> Byte[0x0011fe39]
       0     4274        M 0x80001bdc addi    a2, a2, 1              #; a2  = 1, (wrb) a2  <-- 2
       0     4275        M 0x80001be0 bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 0x00011300, taken, goto 0x80001bb8
       0     4276        M 0x80001bb8 beq     a4, a2, pc + 200       #; a4  = 32, a2  = 2, not taken
       0     4277        M 0x80001bbc mv      a1, a0                 #; a0  = 7040, (wrb) a1  <-- 7040
       0     4278        M 0x80001bc0 mulhu   a0, a0, t2             #; a0  = 7040, t2  = 0xcccccccd
       0     4281        M                                           #; (acc) a0  <-- 0x00355513
       0     4282        M 0x80001bc4 srli    a0, a0, 3              #; a0  = 5632, (wrb) a0  <-- 704
       0     4283        M 0x80001bc8 mul     a3, a0, a6             #; a0  = 704, a6  = 10
       0     4286        M                                           #; (acc) a3  <-- 0x40d586b3
       0     4287        M 0x80001bcc sub     a3, a1, a3             #; a1  = 7040, a3  = 7040, (wrb) a3  <-- 0
       0     4288        M 0x80001bd0 ori     a3, a3, 48             #; a3  = 0, (wrb) a3  <-- 48
       0     4289        M 0x80001bd4 add     a5, t1, a2             #; t1  = 0x0011fe38, a2  = 2, (wrb) a5  <-- 0x0011fe3a
       0     4290        M 0x80001bd8 sb      a3, 0(a5)              #; a5  = 0x0011fe3a, 48 ~~> Byte[0x0011fe3a]
       0     4291        M 0x80001bdc addi    a2, a2, 1              #; a2  = 2, (wrb) a2  <-- 3
       0     4292        M 0x80001be0 bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 7040, taken, goto 0x80001bb8
       0     4293        M 0x80001bb8 beq     a4, a2, pc + 200       #; a4  = 32, a2  = 3, not taken
       0     4294        M 0x80001bbc mv      a1, a0                 #; a0  = 704, (wrb) a1  <-- 704
       0     4295        M 0x80001bc0 mulhu   a0, a0, t2             #; a0  = 704, t2  = 0xcccccccd
       0     4298        M                                           #; (acc) a0  <-- 0x00355513
       0     4299        M 0x80001bc4 srli    a0, a0, 3              #; a0  = 563, (wrb) a0  <-- 70
       0     4300        M 0x80001bc8 mul     a3, a0, a6             #; a0  = 70, a6  = 10
       0     4303        M                                           #; (acc) a3  <-- 0x40d586b3
       0     4304        M 0x80001bcc sub     a3, a1, a3             #; a1  = 704, a3  = 700, (wrb) a3  <-- 4
       0     4305        M 0x80001bd0 ori     a3, a3, 48             #; a3  = 4, (wrb) a3  <-- 52
       0     4306        M 0x80001bd4 add     a5, t1, a2             #; t1  = 0x0011fe38, a2  = 3, (wrb) a5  <-- 0x0011fe3b
       0     4307        M 0x80001bd8 sb      a3, 0(a5)              #; a5  = 0x0011fe3b, 52 ~~> Byte[0x0011fe3b]
       0     4308        M 0x80001bdc addi    a2, a2, 1              #; a2  = 3, (wrb) a2  <-- 4
       0     4309        M 0x80001be0 bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 704, taken, goto 0x80001bb8
       0     4310        M 0x80001bb8 beq     a4, a2, pc + 200       #; a4  = 32, a2  = 4, not taken
       0     4311        M 0x80001bbc mv      a1, a0                 #; a0  = 70, (wrb) a1  <-- 70
       0     4312        M 0x80001bc0 mulhu   a0, a0, t2             #; a0  = 70, t2  = 0xcccccccd
       0     4315        M                                           #; (acc) a0  <-- 0x00355513
       0     4316        M 0x80001bc4 srli    a0, a0, 3              #; a0  = 56, (wrb) a0  <-- 7
       0     4317        M 0x80001bc8 mul     a3, a0, a6             #; a0  = 7, a6  = 10
       0     4320        M                                           #; (acc) a3  <-- 0x40d586b3
       0     4321        M 0x80001bcc sub     a3, a1, a3             #; a1  = 70, a3  = 70, (wrb) a3  <-- 0
       0     4322        M 0x80001bd0 ori     a3, a3, 48             #; a3  = 0, (wrb) a3  <-- 48
       0     4323        M 0x80001bd4 add     a5, t1, a2             #; t1  = 0x0011fe38, a2  = 4, (wrb) a5  <-- 0x0011fe3c
       0     4324        M 0x80001bd8 sb      a3, 0(a5)              #; a5  = 0x0011fe3c, 48 ~~> Byte[0x0011fe3c]
       0     4325        M 0x80001bdc addi    a2, a2, 1              #; a2  = 4, (wrb) a2  <-- 5
       0     4326        M 0x80001be0 bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 70, taken, goto 0x80001bb8
       0     4327        M 0x80001bb8 beq     a4, a2, pc + 200       #; a4  = 32, a2  = 5, not taken
       0     4328        M 0x80001bbc mv      a1, a0                 #; a0  = 7, (wrb) a1  <-- 7
       0     4329        M 0x80001bc0 mulhu   a0, a0, t2             #; a0  = 7, t2  = 0xcccccccd
       0     4332        M                                           #; (acc) a0  <-- 0x00355513
       0     4333        M 0x80001bc4 srli    a0, a0, 3              #; a0  = 5, (wrb) a0  <-- 0
       0     4334        M 0x80001bc8 mul     a3, a0, a6             #; a0  = 0, a6  = 10
       0     4337        M                                           #; (acc) a3  <-- 0x40d586b3
       0     4338        M 0x80001bcc sub     a3, a1, a3             #; a1  = 7, a3  = 0, (wrb) a3  <-- 7
       0     4339        M 0x80001bd0 ori     a3, a3, 48             #; a3  = 7, (wrb) a3  <-- 55
       0     4340        M 0x80001bd4 add     a5, t1, a2             #; t1  = 0x0011fe38, a2  = 5, (wrb) a5  <-- 0x0011fe3d
       0     4341        M 0x80001bd8 sb      a3, 0(a5)              #; a5  = 0x0011fe3d, 55 ~~> Byte[0x0011fe3d]
       0     4342        M 0x80001bdc addi    a2, a2, 1              #; a2  = 5, (wrb) a2  <-- 6
       0     4343        M 0x80001be0 bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 7, not taken
       0     4344        M 0x80001be4 add     a0, s0, a2             #; s0  = 0, a2  = 6, (wrb) a0  <-- 6
       0     4345        M 0x80001be8 addi    a1, a0, -1             #; a0  = 6, (wrb) a1  <-- 5
       0     4346        M 0x80001bec li      a3, 30                 #; (wrb) a3  <-- 30
       0     4356        M 0x80001bf0 sltu    a3, a3, a1             #; a3  = 30, a1  = 5, (wrb) a3  <-- 0
       0     4357        M 0x80001bf4 xor     a4, s8, a2             #; s8  = 6, a2  = 6, (wrb) a4  <-- 0
       0     4358        M 0x80001bf8 seqz    a4, a4                 #; a4  = 0, (wrb) a4  <-- 1
       0     4359        M 0x80001bfc or      a3, a3, a4             #; a3  = 0, a4  = 1, (wrb) a3  <-- 1
       0     4368        M 0x80001c00 bnez    a3, pc + 136           #; a3  = 1, taken, goto 0x80001c88
       0     4391        M 0x80001c88 sltiu   a1, a1, 31             #; a1  = 5, (wrb) a1  <-- 1
       0     4392        M 0x80001c8c beqz    a1, pc + 28            #; a1  = 1, not taken
       0     4403        M 0x80001c90 addi    s0, a0, 1              #; a0  = 6, (wrb) s0  <-- 7
       0     4404        M 0x80001c94 addi    a1, sp, 8              #; sp  = 0x0011fe30, (wrb) a1  <-- 0x0011fe38
       0     4405        M 0x80001c98 add     a0, a1, a0             #; a1  = 0x0011fe38, a0  = 6, (wrb) a0  <-- 0x0011fe3e
       0     4406        M 0x80001c9c li      a1, 46                 #; (wrb) a1  <-- 46
       0     4415        M 0x80001ca0 sb      a1, 0(a0)              #; a0  = 0x0011fe3e, 46 ~~> Byte[0x0011fe3e]
       0     4416        M 0x80001ca4 j       pc + 0x8               #; goto 0x80001cac
       0     4417        M 0x80001cac li      a0, 32                 #; (wrb) a0  <-- 32
       0     4429        M 0x80001cb0 mv      t0, s0                 #; s0  = 7, (wrb) t0  <-- 7
       0     4430        M 0x80001cb4 bltu    a0, s0, pc + 8         #; a0  = 32, s0  = 7, not taken
       0     4431        M 0x80001cb8 li      t0, 32                 #; (wrb) t0  <-- 32
       0     4433        M 0x80001cbc flt.d   s9, fs0, fs1           #; fs0  = 169.7040000, fs1  = 0.0
       0     4441        M 0x80001cc0 lui     a0, 0x66666            #; (wrb) a0  <-- 0x66666000
       0     4442        M 0x80001cc4 addi    a1, a0, 1639           #; a0  = 0x66666000, (wrb) a1  <-- 0x66666667
       0     4443        M 0x80001cc8 li      a6, 10                 #; (wrb) a6  <-- 10
       0     4444        M 0x80001ccc addi    a3, sp, 8              #; sp  = 0x0011fe30, (wrb) a3  <-- 0x0011fe38
       0     4453        M 0x80001cd0 li      a4, 18                 #; (wrb) a4  <-- 18
       0     4454        M 0x80001cd4 beq     t0, s0, pc + 64        #; t0  = 32, s0  = 7, not taken
       0     4455        M 0x80001cd8 mulh    a0, s1, a1             #; s1  = 169, a1  = 0x66666667
       0     4458        M                                           #; (acc) a5  <-- 0x01f55793
       0     4459        M 0x80001cdc srli    a5, a0, 31             #; a0  = 67, (wrb) a5  <-- 0
       0     4465        M 0x80001ce0 srai    a0, a0, 2              #; a0  = 67, (wrb) a0  <-- 16
       0     4466        M 0x80001ce4 add     a0, a0, a5             #; a0  = 16, a5  = 0, (wrb) a0  <-- 16
       0     4467        M 0x80001ce8 mul     a5, a0, a6             #; a0  = 16, a6  = 10
       0     4470        M                                           #; (acc) a5  <-- 0x40f487b3
       0     4471        M 0x80001cec sub     a5, s1, a5             #; s1  = 169, a5  = 160, (wrb) a5  <-- 9
       0     4477        M 0x80001cf0 addi    a5, a5, 48             #; a5  = 9, (wrb) a5  <-- 57
       0     4478        M 0x80001cf4 addi    s8, s0, 1              #; s0  = 7, (wrb) s8  <-- 8
       0     4479        M 0x80001cf8 add     s0, a3, s0             #; a3  = 0x0011fe38, s0  = 7, (wrb) s0  <-- 0x0011fe3f
       0     4480        M 0x80001cfc addi    a2, s1, 9              #; s1  = 169, (wrb) a2  <-- 178
       0     4489        M 0x80001d00 sb      a5, 0(s0)              #; s0  = 0x0011fe3f, 57 ~~> Byte[0x0011fe3f]
       0     4490        M 0x80001d04 mv      s0, s8                 #; s8  = 8, (wrb) s0  <-- 8
       0     4491        M 0x80001d08 mv      s1, a0                 #; a0  = 16, (wrb) s1  <-- 16
       0     4492        M 0x80001d0c bltu    a4, a2, pc - 56        #; a4  = 18, a2  = 178, taken, goto 0x80001cd4
       0     4493        M 0x80001cd4 beq     t0, s0, pc + 64        #; t0  = 32, s0  = 8, not taken
       0     4494        M 0x80001cd8 mulh    a0, s1, a1             #; s1  = 16, a1  = 0x66666667
       0     4497        M                                           #; (acc) a5  <-- 0x01f55793
       0     4498        M 0x80001cdc srli    a5, a0, 31             #; a0  = 6, (wrb) a5  <-- 0
       0     4499        M 0x80001ce0 srai    a0, a0, 2              #; a0  = 6, (wrb) a0  <-- 1
       0     4500        M 0x80001ce4 add     a0, a0, a5             #; a0  = 1, a5  = 0, (wrb) a0  <-- 1
       0     4501        M 0x80001ce8 mul     a5, a0, a6             #; a0  = 1, a6  = 10
       0     4504        M                                           #; (acc) a5  <-- 0x40f487b3
       0     4505        M 0x80001cec sub     a5, s1, a5             #; s1  = 16, a5  = 10, (wrb) a5  <-- 6
       0     4506        M 0x80001cf0 addi    a5, a5, 48             #; a5  = 6, (wrb) a5  <-- 54
       0     4507        M 0x80001cf4 addi    s8, s0, 1              #; s0  = 8, (wrb) s8  <-- 9
       0     4508        M 0x80001cf8 add     s0, a3, s0             #; a3  = 0x0011fe38, s0  = 8, (wrb) s0  <-- 0x0011fe40
       0     4509        M 0x80001cfc addi    a2, s1, 9              #; s1  = 16, (wrb) a2  <-- 25
       0     4510        M 0x80001d00 sb      a5, 0(s0)              #; s0  = 0x0011fe40, 54 ~~> Byte[0x0011fe40]
       0     4511        M 0x80001d04 mv      s0, s8                 #; s8  = 9, (wrb) s0  <-- 9
       0     4512        M 0x80001d08 mv      s1, a0                 #; a0  = 1, (wrb) s1  <-- 1
       0     4513        M 0x80001d0c bltu    a4, a2, pc - 56        #; a4  = 18, a2  = 25, taken, goto 0x80001cd4
       0     4514        M 0x80001cd4 beq     t0, s0, pc + 64        #; t0  = 32, s0  = 9, not taken
       0     4515        M 0x80001cd8 mulh    a0, s1, a1             #; s1  = 1, a1  = 0x66666667
       0     4518        M                                           #; (acc) a5  <-- 0x01f55793
       0     4519        M 0x80001cdc srli    a5, a0, 31             #; a0  = 0, (wrb) a5  <-- 0
       0     4520        M 0x80001ce0 srai    a0, a0, 2              #; a0  = 0, (wrb) a0  <-- 0
       0     4521        M 0x80001ce4 add     a0, a0, a5             #; a0  = 0, a5  = 0, (wrb) a0  <-- 0
       0     4522        M 0x80001ce8 mul     a5, a0, a6             #; a0  = 0, a6  = 10
       0     4525        M                                           #; (acc) a5  <-- 0x40f487b3
       0     4526        M 0x80001cec sub     a5, s1, a5             #; s1  = 1, a5  = 0, (wrb) a5  <-- 1
       0     4527        M 0x80001cf0 addi    a5, a5, 48             #; a5  = 1, (wrb) a5  <-- 49
       0     4528        M 0x80001cf4 addi    s8, s0, 1              #; s0  = 9, (wrb) s8  <-- 10
       0     4529        M 0x80001cf8 add     s0, a3, s0             #; a3  = 0x0011fe38, s0  = 9, (wrb) s0  <-- 0x0011fe41
       0     4530        M 0x80001cfc addi    a2, s1, 9              #; s1  = 1, (wrb) a2  <-- 10
       0     4531        M 0x80001d00 sb      a5, 0(s0)              #; s0  = 0x0011fe41, 49 ~~> Byte[0x0011fe41]
       0     4532        M 0x80001d04 mv      s0, s8                 #; s8  = 10, (wrb) s0  <-- 10
       0     4533        M 0x80001d08 mv      s1, a0                 #; a0  = 0, (wrb) s1  <-- 0
       0     4534        M 0x80001d0c bltu    a4, a2, pc - 56        #; a4  = 18, a2  = 10, not taken
       0     4546        M 0x80001d10 j       pc + 0x8               #; goto 0x80001d18
       0     4547        M 0x80001d18 andi    s1, s5, 3              #; s5  = 0, (wrb) s1  <-- 0
       0     4548        M 0x80001d1c li      a0, 1                  #; (wrb) a0  <-- 1
       0     4559        M 0x80001d20 bne     s1, a0, pc + 108       #; s1  = 0, a0  = 1, taken, goto 0x80001d8c
       0     4582        M 0x80001d8c li      a0, 31                 #; (wrb) a0  <-- 31
       0     4594        M 0x80001d90 bltu    a0, s8, pc + 84        #; a0  = 31, s8  = 10, not taken
       0     4595        M 0x80001d94 beqz    s9, pc + 24            #; s9  = 0, taken, goto 0x80001dac
       0     4606        M 0x80001dac andi    a0, s5, 4              #; s5  = 0, (wrb) a0  <-- 0
       0     4618        M 0x80001db0 bnez    a0, pc + 32            #; a0  = 0, not taken
       0     4619        M 0x80001db4 andi    a0, s5, 8              #; s5  = 0, (wrb) a0  <-- 0
       0     4620        M 0x80001db8 beqz    a0, pc + 44            #; a0  = 0, taken, goto 0x80001de4
       0     4641        M 0x80001de4 snez    a0, s1                 #; s1  = 0, (wrb) a0  <-- 0
       0     4642        M 0x80001de8 sltu    a1, s8, s2             #; s8  = 10, s2  = 0, (wrb) a1  <-- 0
       0     4643        M 0x80001dec xori    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
       0     4653        M 0x80001df0 or      a0, a0, a1             #; a0  = 0, a1  = 1, (wrb) a0  <-- 1
       0     4654        M 0x80001df4 andi    s5, s5, 2              #; s5  = 0, (wrb) s5  <-- 0
       0     4655        M 0x80001df8 mv      s0, s4                 #; s4  = 8, (wrb) s0  <-- 8
       0     4656        M 0x80001dfc bnez    a0, pc + 44            #; a0  = 1, taken, goto 0x80001e28
       0     4676        M 0x80001e28 srli    s5, s5, 1              #; s5  = 0, (wrb) s5  <-- 0
       0     4677        M 0x80001e2c beqz    s8, pc + 56            #; s8  = 10, not taken
       0     4688        M 0x80001e30 addi    s9, sp, 7              #; sp  = 0x0011fe30, (wrb) s9  <-- 0x0011fe37
       0     4689        M 0x80001e34 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 10, (wrb) a0  <-- 0x0011fe41
       0     4690        M 0x80001e38 lbu     a0, 0(a0)              #; a0  = 0x0011fe41, a0  <~~ Byte[0x0011fe41]
       0     4691        M 0x80001e3c addi    s10, s8, -1            #; s8  = 10, (wrb) s10 <-- 9
       0     4693        M                                           #; (lsu) a0  <-- 49
       0     4700        M 0x80001e40 addi    s1, s0, 1              #; s0  = 8, (wrb) s1  <-- 9
       0     4701        M 0x80001e44 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4702        M 0x80001e48 mv      a2, s0                 #; s0  = 8, (wrb) a2  <-- 8
       0     4703        M 0x80001e4c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4712        M 0x80001e50 jalr    s7                     #; s7  = 0x80001768, (wrb) ra  <-- 0x80001e54, goto 0x80001768
       0     4715        M 0x80001768 beqz    a0, pc + 168           #; a0  = 49, not taken
       0     4716        M 0x8000176c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4718        M 0x80001770 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4719        M 0x80001774 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4720        M 0x80001778 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003778
       0     4721        M 0x8000177c addi    a3, a3, -1500          #; a3  = 0x80003778, (wrb) a3  <-- 0x8000319c
       0     4722        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4723        M 0x80001780 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
       0     4724        M 0x80001784 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     4735        M                                           #; (lsu) a4  <-- 8
       0     4736        M 0x80001788 addi    a5, a4, 1              #; a4  = 8, (wrb) a5  <-- 9
       0     4737        M 0x8000178c sw      a5, 0(a1)              #; a1  = 0x8000319c, 9 ~~> Word[0x8000319c]
       0     4738        M 0x80001790 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 8, (wrb) a4  <-- 0x800031a4
       0     4739        M 0x80001794 sb      a0, 72(a4)             #; a4  = 0x800031a4, 49 ~~> Byte[0x800031ec]
       0     4740        M 0x80001798 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     4761        M                                           #; (lsu) a4  <-- 9
       0     4762        M 0x8000179c addi    a4, a4, -1020          #; a4  = 9, (wrb) a4  <-- -1011
       0     4763        M 0x800017a0 snez    a4, a4                 #; a4  = -1011, (wrb) a4  <-- 1
       0     4764        M 0x800017a4 addi    a0, a0, -10            #; a0  = 49, (wrb) a0  <-- 39
       0     4765        M 0x800017a8 snez    a0, a0                 #; a0  = 39, (wrb) a0  <-- 1
       0     4766        M 0x800017ac and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4767        M 0x800017b0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001810
       0     4772        M 0x80001810 ret                            #; ra  = 0x80001e54, goto 0x80001e54
       0     4777        M 0x80001e54 mv      s0, s1                 #; s1  = 9, (wrb) s0  <-- 9
       0     4778        M 0x80001e58 mv      s8, s10                #; s10 = 9, (wrb) s8  <-- 9
       0     4779        M 0x80001e5c bnez    s10, pc - 40           #; s10 = 9, taken, goto 0x80001e34
       0     4780        M 0x80001e34 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 9, (wrb) a0  <-- 0x0011fe40
       0     4781        M 0x80001e38 lbu     a0, 0(a0)              #; a0  = 0x0011fe40, a0  <~~ Byte[0x0011fe40]
       0     4782        M 0x80001e3c addi    s10, s8, -1            #; s8  = 9, (wrb) s10 <-- 8
       0     4783        M 0x80001e40 addi    s1, s0, 1              #; s0  = 9, (wrb) s1  <-- 10
       0     4784        M 0x80001e44 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4785        M 0x80001e48 mv      a2, s0                 #; s0  = 9, (wrb) a2  <-- 9
       0     4786        M 0x80001e4c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4787        M 0x80001e50 jalr    s7                     #; s7  = 0x80001768, (wrb) ra  <-- 0x80001e54, goto 0x80001768
       0     4788        M                                           #; (lsu) a0  <-- 54
       0     4790        M 0x80001768 beqz    a0, pc + 168           #; a0  = 54, not taken
       0     4791        M 0x8000176c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4793        M 0x80001770 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4794        M 0x80001774 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4795        M 0x80001778 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003778
       0     4796        M 0x8000177c addi    a3, a3, -1500          #; a3  = 0x80003778, (wrb) a3  <-- 0x8000319c
       0     4797        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4798        M 0x80001780 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
       0     4799        M 0x80001784 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     4810        M                                           #; (lsu) a4  <-- 9
       0     4811        M 0x80001788 addi    a5, a4, 1              #; a4  = 9, (wrb) a5  <-- 10
       0     4812        M 0x8000178c sw      a5, 0(a1)              #; a1  = 0x8000319c, 10 ~~> Word[0x8000319c]
       0     4813        M 0x80001790 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 9, (wrb) a4  <-- 0x800031a5
       0     4814        M 0x80001794 sb      a0, 72(a4)             #; a4  = 0x800031a5, 54 ~~> Byte[0x800031ed]
       0     4815        M 0x80001798 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     4836        M                                           #; (lsu) a4  <-- 10
       0     4837        M 0x8000179c addi    a4, a4, -1020          #; a4  = 10, (wrb) a4  <-- -1010
       0     4838        M 0x800017a0 snez    a4, a4                 #; a4  = -1010, (wrb) a4  <-- 1
       0     4839        M 0x800017a4 addi    a0, a0, -10            #; a0  = 54, (wrb) a0  <-- 44
       0     4840        M 0x800017a8 snez    a0, a0                 #; a0  = 44, (wrb) a0  <-- 1
       0     4841        M 0x800017ac and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4842        M 0x800017b0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001810
       0     4847        M 0x80001810 ret                            #; ra  = 0x80001e54, goto 0x80001e54
       0     4852        M 0x80001e54 mv      s0, s1                 #; s1  = 10, (wrb) s0  <-- 10
       0     4853        M 0x80001e58 mv      s8, s10                #; s10 = 8, (wrb) s8  <-- 8
       0     4854        M 0x80001e5c bnez    s10, pc - 40           #; s10 = 8, taken, goto 0x80001e34
       0     4855        M 0x80001e34 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 8, (wrb) a0  <-- 0x0011fe3f
       0     4856        M 0x80001e38 lbu     a0, 0(a0)              #; a0  = 0x0011fe3f, a0  <~~ Byte[0x0011fe3f]
       0     4857        M 0x80001e3c addi    s10, s8, -1            #; s8  = 8, (wrb) s10 <-- 7
       0     4858        M 0x80001e40 addi    s1, s0, 1              #; s0  = 10, (wrb) s1  <-- 11
       0     4859        M 0x80001e44 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4860        M 0x80001e48 mv      a2, s0                 #; s0  = 10, (wrb) a2  <-- 10
       0     4861        M 0x80001e4c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4862        M 0x80001e50 jalr    s7                     #; s7  = 0x80001768, (wrb) ra  <-- 0x80001e54, goto 0x80001768
       0     4863        M                                           #; (lsu) a0  <-- 57
       0     4865        M 0x80001768 beqz    a0, pc + 168           #; a0  = 57, not taken
       0     4866        M 0x8000176c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4868        M 0x80001770 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4869        M 0x80001774 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4870        M 0x80001778 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003778
       0     4871        M 0x8000177c addi    a3, a3, -1500          #; a3  = 0x80003778, (wrb) a3  <-- 0x8000319c
       0     4872        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4873        M 0x80001780 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
       0     4874        M 0x80001784 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     4885        M                                           #; (lsu) a4  <-- 10
       0     4886        M 0x80001788 addi    a5, a4, 1              #; a4  = 10, (wrb) a5  <-- 11
       0     4887        M 0x8000178c sw      a5, 0(a1)              #; a1  = 0x8000319c, 11 ~~> Word[0x8000319c]
       0     4888        M 0x80001790 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 10, (wrb) a4  <-- 0x800031a6
       0     4889        M 0x80001794 sb      a0, 72(a4)             #; a4  = 0x800031a6, 57 ~~> Byte[0x800031ee]
       0     4890        M 0x80001798 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     4911        M                                           #; (lsu) a4  <-- 11
       0     4912        M 0x8000179c addi    a4, a4, -1020          #; a4  = 11, (wrb) a4  <-- -1009
       0     4913        M 0x800017a0 snez    a4, a4                 #; a4  = -1009, (wrb) a4  <-- 1
       0     4914        M 0x800017a4 addi    a0, a0, -10            #; a0  = 57, (wrb) a0  <-- 47
       0     4915        M 0x800017a8 snez    a0, a0                 #; a0  = 47, (wrb) a0  <-- 1
       0     4916        M 0x800017ac and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4917        M 0x800017b0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001810
       0     4922        M 0x80001810 ret                            #; ra  = 0x80001e54, goto 0x80001e54
       0     4927        M 0x80001e54 mv      s0, s1                 #; s1  = 11, (wrb) s0  <-- 11
       0     4928        M 0x80001e58 mv      s8, s10                #; s10 = 7, (wrb) s8  <-- 7
       0     4929        M 0x80001e5c bnez    s10, pc - 40           #; s10 = 7, taken, goto 0x80001e34
       0     4930        M 0x80001e34 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 7, (wrb) a0  <-- 0x0011fe3e
       0     4931        M 0x80001e38 lbu     a0, 0(a0)              #; a0  = 0x0011fe3e, a0  <~~ Byte[0x0011fe3e]
       0     4932        M 0x80001e3c addi    s10, s8, -1            #; s8  = 7, (wrb) s10 <-- 6
       0     4933        M 0x80001e40 addi    s1, s0, 1              #; s0  = 11, (wrb) s1  <-- 12
       0     4934        M 0x80001e44 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     4935        M 0x80001e48 mv      a2, s0                 #; s0  = 11, (wrb) a2  <-- 11
       0     4936        M 0x80001e4c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     4937        M 0x80001e50 jalr    s7                     #; s7  = 0x80001768, (wrb) ra  <-- 0x80001e54, goto 0x80001768
       0     4938        M                                           #; (lsu) a0  <-- 46
       0     4940        M 0x80001768 beqz    a0, pc + 168           #; a0  = 46, not taken
       0     4941        M 0x8000176c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4943        M 0x80001770 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4944        M 0x80001774 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4945        M 0x80001778 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003778
       0     4946        M 0x8000177c addi    a3, a3, -1500          #; a3  = 0x80003778, (wrb) a3  <-- 0x8000319c
       0     4947        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4948        M 0x80001780 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
       0     4949        M 0x80001784 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     4960        M                                           #; (lsu) a4  <-- 11
       0     4961        M 0x80001788 addi    a5, a4, 1              #; a4  = 11, (wrb) a5  <-- 12
       0     4962        M 0x8000178c sw      a5, 0(a1)              #; a1  = 0x8000319c, 12 ~~> Word[0x8000319c]
       0     4963        M 0x80001790 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 11, (wrb) a4  <-- 0x800031a7
       0     4964        M 0x80001794 sb      a0, 72(a4)             #; a4  = 0x800031a7, 46 ~~> Byte[0x800031ef]
       0     4965        M 0x80001798 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     4986        M                                           #; (lsu) a4  <-- 12
       0     4987        M 0x8000179c addi    a4, a4, -1020          #; a4  = 12, (wrb) a4  <-- -1008
       0     4988        M 0x800017a0 snez    a4, a4                 #; a4  = -1008, (wrb) a4  <-- 1
       0     4989        M 0x800017a4 addi    a0, a0, -10            #; a0  = 46, (wrb) a0  <-- 36
       0     4990        M 0x800017a8 snez    a0, a0                 #; a0  = 36, (wrb) a0  <-- 1
       0     4991        M 0x800017ac and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4992        M 0x800017b0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001810
       0     4997        M 0x80001810 ret                            #; ra  = 0x80001e54, goto 0x80001e54
       0     5002        M 0x80001e54 mv      s0, s1                 #; s1  = 12, (wrb) s0  <-- 12
       0     5003        M 0x80001e58 mv      s8, s10                #; s10 = 6, (wrb) s8  <-- 6
       0     5004        M 0x80001e5c bnez    s10, pc - 40           #; s10 = 6, taken, goto 0x80001e34
       0     5005        M 0x80001e34 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 6, (wrb) a0  <-- 0x0011fe3d
       0     5006        M 0x80001e38 lbu     a0, 0(a0)              #; a0  = 0x0011fe3d, a0  <~~ Byte[0x0011fe3d]
       0     5007        M 0x80001e3c addi    s10, s8, -1            #; s8  = 6, (wrb) s10 <-- 5
       0     5008        M 0x80001e40 addi    s1, s0, 1              #; s0  = 12, (wrb) s1  <-- 13
       0     5009        M 0x80001e44 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5010        M 0x80001e48 mv      a2, s0                 #; s0  = 12, (wrb) a2  <-- 12
       0     5011        M 0x80001e4c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     5012        M 0x80001e50 jalr    s7                     #; s7  = 0x80001768, (wrb) ra  <-- 0x80001e54, goto 0x80001768
       0     5013        M                                           #; (lsu) a0  <-- 55
       0     5015        M 0x80001768 beqz    a0, pc + 168           #; a0  = 55, not taken
       0     5016        M 0x8000176c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5018        M 0x80001770 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5019        M 0x80001774 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5020        M 0x80001778 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003778
       0     5021        M 0x8000177c addi    a3, a3, -1500          #; a3  = 0x80003778, (wrb) a3  <-- 0x8000319c
       0     5022        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5023        M 0x80001780 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
       0     5024        M 0x80001784 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     5035        M                                           #; (lsu) a4  <-- 12
       0     5036        M 0x80001788 addi    a5, a4, 1              #; a4  = 12, (wrb) a5  <-- 13
       0     5037        M 0x8000178c sw      a5, 0(a1)              #; a1  = 0x8000319c, 13 ~~> Word[0x8000319c]
       0     5038        M 0x80001790 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 12, (wrb) a4  <-- 0x800031a8
       0     5039        M 0x80001794 sb      a0, 72(a4)             #; a4  = 0x800031a8, 55 ~~> Byte[0x800031f0]
       0     5040        M 0x80001798 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     5061        M                                           #; (lsu) a4  <-- 13
       0     5062        M 0x8000179c addi    a4, a4, -1020          #; a4  = 13, (wrb) a4  <-- -1007
       0     5063        M 0x800017a0 snez    a4, a4                 #; a4  = -1007, (wrb) a4  <-- 1
       0     5064        M 0x800017a4 addi    a0, a0, -10            #; a0  = 55, (wrb) a0  <-- 45
       0     5065        M 0x800017a8 snez    a0, a0                 #; a0  = 45, (wrb) a0  <-- 1
       0     5066        M 0x800017ac and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5067        M 0x800017b0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001810
       0     5072        M 0x80001810 ret                            #; ra  = 0x80001e54, goto 0x80001e54
       0     5077        M 0x80001e54 mv      s0, s1                 #; s1  = 13, (wrb) s0  <-- 13
       0     5078        M 0x80001e58 mv      s8, s10                #; s10 = 5, (wrb) s8  <-- 5
       0     5079        M 0x80001e5c bnez    s10, pc - 40           #; s10 = 5, taken, goto 0x80001e34
       0     5080        M 0x80001e34 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 5, (wrb) a0  <-- 0x0011fe3c
       0     5081        M 0x80001e38 lbu     a0, 0(a0)              #; a0  = 0x0011fe3c, a0  <~~ Byte[0x0011fe3c]
       0     5082        M 0x80001e3c addi    s10, s8, -1            #; s8  = 5, (wrb) s10 <-- 4
       0     5083        M 0x80001e40 addi    s1, s0, 1              #; s0  = 13, (wrb) s1  <-- 14
       0     5084        M 0x80001e44 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5085        M 0x80001e48 mv      a2, s0                 #; s0  = 13, (wrb) a2  <-- 13
       0     5086        M 0x80001e4c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     5087        M 0x80001e50 jalr    s7                     #; s7  = 0x80001768, (wrb) ra  <-- 0x80001e54, goto 0x80001768
       0     5088        M                                           #; (lsu) a0  <-- 48
       0     5090        M 0x80001768 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     5091        M 0x8000176c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5093        M 0x80001770 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5094        M 0x80001774 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5095        M 0x80001778 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003778
       0     5096        M 0x8000177c addi    a3, a3, -1500          #; a3  = 0x80003778, (wrb) a3  <-- 0x8000319c
       0     5097        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5098        M 0x80001780 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
       0     5099        M 0x80001784 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     5110        M                                           #; (lsu) a4  <-- 13
       0     5111        M 0x80001788 addi    a5, a4, 1              #; a4  = 13, (wrb) a5  <-- 14
       0     5112        M 0x8000178c sw      a5, 0(a1)              #; a1  = 0x8000319c, 14 ~~> Word[0x8000319c]
       0     5113        M 0x80001790 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 13, (wrb) a4  <-- 0x800031a9
       0     5114        M 0x80001794 sb      a0, 72(a4)             #; a4  = 0x800031a9, 48 ~~> Byte[0x800031f1]
       0     5115        M 0x80001798 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     5136        M                                           #; (lsu) a4  <-- 14
       0     5137        M 0x8000179c addi    a4, a4, -1020          #; a4  = 14, (wrb) a4  <-- -1006
       0     5138        M 0x800017a0 snez    a4, a4                 #; a4  = -1006, (wrb) a4  <-- 1
       0     5139        M 0x800017a4 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     5140        M 0x800017a8 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     5141        M 0x800017ac and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5142        M 0x800017b0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001810
       0     5147        M 0x80001810 ret                            #; ra  = 0x80001e54, goto 0x80001e54
       0     5152        M 0x80001e54 mv      s0, s1                 #; s1  = 14, (wrb) s0  <-- 14
       0     5153        M 0x80001e58 mv      s8, s10                #; s10 = 4, (wrb) s8  <-- 4
       0     5154        M 0x80001e5c bnez    s10, pc - 40           #; s10 = 4, taken, goto 0x80001e34
       0     5155        M 0x80001e34 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 4, (wrb) a0  <-- 0x0011fe3b
       0     5156        M 0x80001e38 lbu     a0, 0(a0)              #; a0  = 0x0011fe3b, a0  <~~ Byte[0x0011fe3b]
       0     5157        M 0x80001e3c addi    s10, s8, -1            #; s8  = 4, (wrb) s10 <-- 3
       0     5158        M 0x80001e40 addi    s1, s0, 1              #; s0  = 14, (wrb) s1  <-- 15
       0     5159        M 0x80001e44 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5160        M 0x80001e48 mv      a2, s0                 #; s0  = 14, (wrb) a2  <-- 14
       0     5161        M 0x80001e4c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     5162        M 0x80001e50 jalr    s7                     #; s7  = 0x80001768, (wrb) ra  <-- 0x80001e54, goto 0x80001768
       0     5163        M                                           #; (lsu) a0  <-- 52
       0     5165        M 0x80001768 beqz    a0, pc + 168           #; a0  = 52, not taken
       0     5166        M 0x8000176c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5168        M 0x80001770 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5169        M 0x80001774 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5170        M 0x80001778 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003778
       0     5171        M 0x8000177c addi    a3, a3, -1500          #; a3  = 0x80003778, (wrb) a3  <-- 0x8000319c
       0     5172        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5173        M 0x80001780 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
       0     5174        M 0x80001784 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     5185        M                                           #; (lsu) a4  <-- 14
       0     5186        M 0x80001788 addi    a5, a4, 1              #; a4  = 14, (wrb) a5  <-- 15
       0     5187        M 0x8000178c sw      a5, 0(a1)              #; a1  = 0x8000319c, 15 ~~> Word[0x8000319c]
       0     5188        M 0x80001790 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 14, (wrb) a4  <-- 0x800031aa
       0     5189        M 0x80001794 sb      a0, 72(a4)             #; a4  = 0x800031aa, 52 ~~> Byte[0x800031f2]
       0     5190        M 0x80001798 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     5211        M                                           #; (lsu) a4  <-- 15
       0     5212        M 0x8000179c addi    a4, a4, -1020          #; a4  = 15, (wrb) a4  <-- -1005
       0     5213        M 0x800017a0 snez    a4, a4                 #; a4  = -1005, (wrb) a4  <-- 1
       0     5214        M 0x800017a4 addi    a0, a0, -10            #; a0  = 52, (wrb) a0  <-- 42
       0     5215        M 0x800017a8 snez    a0, a0                 #; a0  = 42, (wrb) a0  <-- 1
       0     5216        M 0x800017ac and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5217        M 0x800017b0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001810
       0     5222        M 0x80001810 ret                            #; ra  = 0x80001e54, goto 0x80001e54
       0     5227        M 0x80001e54 mv      s0, s1                 #; s1  = 15, (wrb) s0  <-- 15
       0     5228        M 0x80001e58 mv      s8, s10                #; s10 = 3, (wrb) s8  <-- 3
       0     5229        M 0x80001e5c bnez    s10, pc - 40           #; s10 = 3, taken, goto 0x80001e34
       0     5230        M 0x80001e34 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 3, (wrb) a0  <-- 0x0011fe3a
       0     5231        M 0x80001e38 lbu     a0, 0(a0)              #; a0  = 0x0011fe3a, a0  <~~ Byte[0x0011fe3a]
       0     5232        M 0x80001e3c addi    s10, s8, -1            #; s8  = 3, (wrb) s10 <-- 2
       0     5233        M 0x80001e40 addi    s1, s0, 1              #; s0  = 15, (wrb) s1  <-- 16
       0     5234        M 0x80001e44 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5235        M 0x80001e48 mv      a2, s0                 #; s0  = 15, (wrb) a2  <-- 15
       0     5236        M 0x80001e4c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     5237        M 0x80001e50 jalr    s7                     #; s7  = 0x80001768, (wrb) ra  <-- 0x80001e54, goto 0x80001768
       0     5238        M                                           #; (lsu) a0  <-- 48
       0     5240        M 0x80001768 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     5241        M 0x8000176c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5243        M 0x80001770 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5244        M 0x80001774 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5245        M 0x80001778 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003778
       0     5246        M 0x8000177c addi    a3, a3, -1500          #; a3  = 0x80003778, (wrb) a3  <-- 0x8000319c
       0     5247        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5248        M 0x80001780 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
       0     5249        M 0x80001784 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     5260        M                                           #; (lsu) a4  <-- 15
       0     5261        M 0x80001788 addi    a5, a4, 1              #; a4  = 15, (wrb) a5  <-- 16
       0     5262        M 0x8000178c sw      a5, 0(a1)              #; a1  = 0x8000319c, 16 ~~> Word[0x8000319c]
       0     5263        M 0x80001790 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 15, (wrb) a4  <-- 0x800031ab
       0     5264        M 0x80001794 sb      a0, 72(a4)             #; a4  = 0x800031ab, 48 ~~> Byte[0x800031f3]
       0     5265        M 0x80001798 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     5286        M                                           #; (lsu) a4  <-- 16
       0     5287        M 0x8000179c addi    a4, a4, -1020          #; a4  = 16, (wrb) a4  <-- -1004
       0     5288        M 0x800017a0 snez    a4, a4                 #; a4  = -1004, (wrb) a4  <-- 1
       0     5289        M 0x800017a4 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     5290        M 0x800017a8 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     5291        M 0x800017ac and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5292        M 0x800017b0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001810
       0     5297        M 0x80001810 ret                            #; ra  = 0x80001e54, goto 0x80001e54
       0     5302        M 0x80001e54 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
       0     5303        M 0x80001e58 mv      s8, s10                #; s10 = 2, (wrb) s8  <-- 2
       0     5304        M 0x80001e5c bnez    s10, pc - 40           #; s10 = 2, taken, goto 0x80001e34
       0     5305        M 0x80001e34 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 2, (wrb) a0  <-- 0x0011fe39
       0     5306        M 0x80001e38 lbu     a0, 0(a0)              #; a0  = 0x0011fe39, a0  <~~ Byte[0x0011fe39]
       0     5307        M 0x80001e3c addi    s10, s8, -1            #; s8  = 2, (wrb) s10 <-- 1
       0     5308        M 0x80001e40 addi    s1, s0, 1              #; s0  = 16, (wrb) s1  <-- 17
       0     5309        M 0x80001e44 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5310        M 0x80001e48 mv      a2, s0                 #; s0  = 16, (wrb) a2  <-- 16
       0     5311        M 0x80001e4c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     5312        M 0x80001e50 jalr    s7                     #; s7  = 0x80001768, (wrb) ra  <-- 0x80001e54, goto 0x80001768
       0     5313        M                                           #; (lsu) a0  <-- 48
       0     5315        M 0x80001768 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     5316        M 0x8000176c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5318        M 0x80001770 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5319        M 0x80001774 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5320        M 0x80001778 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003778
       0     5321        M 0x8000177c addi    a3, a3, -1500          #; a3  = 0x80003778, (wrb) a3  <-- 0x8000319c
       0     5322        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5323        M 0x80001780 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
       0     5324        M 0x80001784 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     5335        M                                           #; (lsu) a4  <-- 16
       0     5336        M 0x80001788 addi    a5, a4, 1              #; a4  = 16, (wrb) a5  <-- 17
       0     5337        M 0x8000178c sw      a5, 0(a1)              #; a1  = 0x8000319c, 17 ~~> Word[0x8000319c]
       0     5338        M 0x80001790 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 16, (wrb) a4  <-- 0x800031ac
       0     5339        M 0x80001794 sb      a0, 72(a4)             #; a4  = 0x800031ac, 48 ~~> Byte[0x800031f4]
       0     5340        M 0x80001798 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     5361        M                                           #; (lsu) a4  <-- 17
       0     5362        M 0x8000179c addi    a4, a4, -1020          #; a4  = 17, (wrb) a4  <-- -1003
       0     5363        M 0x800017a0 snez    a4, a4                 #; a4  = -1003, (wrb) a4  <-- 1
       0     5364        M 0x800017a4 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     5365        M 0x800017a8 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     5366        M 0x800017ac and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5367        M 0x800017b0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001810
       0     5372        M 0x80001810 ret                            #; ra  = 0x80001e54, goto 0x80001e54
       0     5377        M 0x80001e54 mv      s0, s1                 #; s1  = 17, (wrb) s0  <-- 17
       0     5378        M 0x80001e58 mv      s8, s10                #; s10 = 1, (wrb) s8  <-- 1
       0     5379        M 0x80001e5c bnez    s10, pc - 40           #; s10 = 1, taken, goto 0x80001e34
       0     5380        M 0x80001e34 add     a0, s9, s8             #; s9  = 0x0011fe37, s8  = 1, (wrb) a0  <-- 0x0011fe38
       0     5381        M 0x80001e38 lbu     a0, 0(a0)              #; a0  = 0x0011fe38, a0  <~~ Byte[0x0011fe38]
       0     5382        M 0x80001e3c addi    s10, s8, -1            #; s8  = 1, (wrb) s10 <-- 0
       0     5383        M 0x80001e40 addi    s1, s0, 1              #; s0  = 17, (wrb) s1  <-- 18
       0     5384        M 0x80001e44 mv      a1, s6                 #; s6  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5385        M 0x80001e48 mv      a2, s0                 #; s0  = 17, (wrb) a2  <-- 17
       0     5386        M 0x80001e4c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     5387        M 0x80001e50 jalr    s7                     #; s7  = 0x80001768, (wrb) ra  <-- 0x80001e54, goto 0x80001768
       0     5388        M                                           #; (lsu) a0  <-- 48
       0     5390        M 0x80001768 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     5391        M 0x8000176c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5393        M 0x80001770 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5394        M 0x80001774 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5395        M 0x80001778 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003778
       0     5396        M 0x8000177c addi    a3, a3, -1500          #; a3  = 0x80003778, (wrb) a3  <-- 0x8000319c
       0     5397        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5398        M 0x80001780 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
       0     5399        M 0x80001784 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     5410        M                                           #; (lsu) a4  <-- 17
       0     5411        M 0x80001788 addi    a5, a4, 1              #; a4  = 17, (wrb) a5  <-- 18
       0     5412        M 0x8000178c sw      a5, 0(a1)              #; a1  = 0x8000319c, 18 ~~> Word[0x8000319c]
       0     5413        M 0x80001790 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 17, (wrb) a4  <-- 0x800031ad
       0     5414        M 0x80001794 sb      a0, 72(a4)             #; a4  = 0x800031ad, 48 ~~> Byte[0x800031f5]
       0     5415        M 0x80001798 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     5436        M                                           #; (lsu) a4  <-- 18
       0     5437        M 0x8000179c addi    a4, a4, -1020          #; a4  = 18, (wrb) a4  <-- -1002
       0     5438        M 0x800017a0 snez    a4, a4                 #; a4  = -1002, (wrb) a4  <-- 1
       0     5439        M 0x800017a4 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     5440        M 0x800017a8 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     5441        M 0x800017ac and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5442        M 0x800017b0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001810
       0     5447        M 0x80001810 ret                            #; ra  = 0x80001e54, goto 0x80001e54
       0     5452        M 0x80001e54 mv      s0, s1                 #; s1  = 18, (wrb) s0  <-- 18
       0     5453        M 0x80001e58 mv      s8, s10                #; s10 = 0, (wrb) s8  <-- 0
       0     5454        M 0x80001e5c bnez    s10, pc - 40           #; s10 = 0, not taken
       0     5466        M 0x80001e60 j       pc + 0x8               #; goto 0x80001e68
       0     5467        M 0x80001e68 sub     a0, s1, s4             #; s1  = 18, s4  = 8, (wrb) a0  <-- 10
       0     5468        M 0x80001e6c sltu    a0, a0, s2             #; a0  = 10, s2  = 0, (wrb) a0  <-- 0
       0     5479        M 0x80001e70 xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0     5480        M 0x80001e74 xori    a1, s5, 1              #; s5  = 0, (wrb) a1  <-- 1
       0     5481        M 0x80001e78 or      a0, a1, a0             #; a1  = 1, a0  = 1, (wrb) a0  <-- 1
       0     5482        M 0x80001e7c bnez    a0, pc + 48            #; a0  = 1, taken, goto 0x80001eac
       0     5502        M 0x80001eac mv      s0, s1                 #; s1  = 18, (wrb) s0  <-- 18
       0     5514        M 0x80001eb0 mv      a0, s0                 #; s0  = 18, (wrb) a0  <-- 18
       0     5517        M 0x80001eb4 fld     fs2, 40(sp)            #; fs2  <~~ Doub[0x0011fe58]
       0     5518        M 0x80001eb8 fld     fs1, 48(sp)            #; fs1  <~~ Doub[0x0011fe60], (f:lsu) fs2  <-- 0.0
       0     5519        M 0x80001ebc fld     fs0, 56(sp)            #; fs0  <~~ Doub[0x0011fe68], (f:lsu) fs1  <-- 0.0
       0     5520        M                                           #; (f:lsu) fs0  <-- 0.0000000
       0     5526        M 0x80001ec0 lw      s10, 64(sp)            #; sp  = 0x0011fe30, s10 <~~ Word[0x0011fe70]
       0     5529        M                                           #; (lsu) s10 <-- 0x80002e4e
       0     5530        M 0x80001ec4 lw      s9, 68(sp)             #; sp  = 0x0011fe30, s9  <~~ Word[0x0011fe74]
       0     5533        M                                           #; (lsu) s9  <-- 8
       0     5534        M 0x80001ec8 lw      s8, 72(sp)             #; sp  = 0x0011fe30, s8  <~~ Word[0x0011fe78]
       0     5537        M                                           #; (lsu) s8  <-- 16
       0     5538        M 0x80001ecc lw      s7, 76(sp)             #; sp  = 0x0011fe30, s7  <~~ Word[0x0011fe7c]
       0     5541        M                                           #; (lsu) s7  <-- 0
       0     5542        M 0x80001ed0 lw      s6, 80(sp)             #; sp  = 0x0011fe30, s6  <~~ Word[0x0011fe80]
       0     5545        M                                           #; (lsu) s6  <-- 0
       0     5546        M 0x80001ed4 lw      s5, 84(sp)             #; sp  = 0x0011fe30, s5  <~~ Word[0x0011fe84]
       0     5549        M                                           #; (lsu) s5  <-- -1
       0     5550        M 0x80001ed8 lw      s4, 88(sp)             #; sp  = 0x0011fe30, s4  <~~ Word[0x0011fe88]
       0     5553        M                                           #; (lsu) s4  <-- 0x0011ff17
       0     5554        M 0x80001edc lw      s3, 92(sp)             #; sp  = 0x0011fe30, s3  <~~ Word[0x0011fe8c]
       0     5557        M                                           #; (lsu) s3  <-- 0x0011ff30
       0     5558        M 0x80001ee0 lw      s2, 96(sp)             #; sp  = 0x0011fe30, s2  <~~ Word[0x0011fe90]
       0     5561        M                                           #; (lsu) s2  <-- 0x80001768
       0     5562        M 0x80001ee4 lw      s1, 100(sp)            #; sp  = 0x0011fe30, s1  <~~ Word[0x0011fe94]
       0     5565        M                                           #; (lsu) s1  <-- 8
       0     5566        M 0x80001ee8 lw      s0, 104(sp)            #; sp  = 0x0011fe30, s0  <~~ Word[0x0011fe98]
       0     5569        M                                           #; (lsu) s0  <-- 0
       0     5570        M 0x80001eec lw      ra, 108(sp)            #; sp  = 0x0011fe30, ra  <~~ Word[0x0011fe9c]
       0     5571        M 0x80001ef0 addi    sp, sp, 112            #; sp  = 0x0011fe30, (wrb) sp  <-- 0x0011fea0
       0     5573        M                                           #; (lsu) ra  <-- 0x80000e98
       0     5574        M 0x80001ef4 ret                            #; ra  = 0x80000e98, goto 0x80000e98
       0     5585        M 0x80000e98 j       pc + 0x7c0             #; goto 0x80001658
       0     5588        M 0x80001658 mv      s8, a0                 #; a0  = 18, (wrb) s8  <-- 18
       0     5589        M 0x8000165c li      s6, 37                 #; (wrb) s6  <-- 37
       0     5600        M 0x80001660 li      s7, 46                 #; (wrb) s7  <-- 46
       0     5601        M 0x80001664 addi    s0, s10, 1             #; s10 = 0x80002e4e, (wrb) s0  <-- 0x80002e4f
       0     5602        M 0x80001668 j       pc - 0xa74             #; goto 0x80000bf4
       0     5603        M 0x80000bf4 addi    s10, s0, 2             #; s0  = 0x80002e4f, (wrb) s10 <-- 0x80002e51
       0     5604        M 0x80000bf8 mv      s9, s8                 #; s8  = 18, (wrb) s9  <-- 18
       0     5605        M 0x80000bfc li      s8, 10                 #; (wrb) s8  <-- 10
       0     5606        M 0x80000c00 lbu     a0, 0(s0)              #; s0  = 0x80002e4f, a0  <~~ Byte[0x80002e4f]
       0     5617        M                                           #; (lsu) a0  <-- 10
       0     5618        M 0x80000c04 beqz    a0, pc + 2824          #; a0  = 10, not taken
       0     5619        M 0x80000c08 beq     a0, s6, pc + 48        #; a0  = 10, s6  = 37, not taken
       0     5620        M 0x80000c0c addi    s1, s9, 1              #; s9  = 18, (wrb) s1  <-- 19
       0     5621        M 0x80000c10 mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5622        M 0x80000c14 mv      a2, s9                 #; s9  = 18, (wrb) a2  <-- 18
       0     5623        M 0x80000c18 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5624        M 0x80000c1c jalr    s2                     #; s2  = 0x80001768, (wrb) ra  <-- 0x80000c20, goto 0x80001768
       0     5627        M 0x80001768 beqz    a0, pc + 168           #; a0  = 10, not taken
       0     5628        M 0x8000176c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5630        M 0x80001770 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5631        M 0x80001774 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5632        M 0x80001778 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003778
       0     5633        M 0x8000177c addi    a3, a3, -1500          #; a3  = 0x80003778, (wrb) a3  <-- 0x8000319c
       0     5634        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5635        M 0x80001780 add     a1, a2, a3             #; a2  = 0, a3  = 0x8000319c, (wrb) a1  <-- 0x8000319c
       0     5636        M 0x80001784 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     5647        M                                           #; (lsu) a4  <-- 18
       0     5648        M 0x80001788 addi    a5, a4, 1              #; a4  = 18, (wrb) a5  <-- 19
       0     5649        M 0x8000178c sw      a5, 0(a1)              #; a1  = 0x8000319c, 19 ~~> Word[0x8000319c]
       0     5650        M 0x80001790 add     a4, a1, a4             #; a1  = 0x8000319c, a4  = 18, (wrb) a4  <-- 0x800031ae
       0     5651        M 0x80001794 sb      a0, 72(a4)             #; a4  = 0x800031ae, 10 ~~> Byte[0x800031f6]
       0     5652        M 0x80001798 lw      a4, 0(a1)              #; a1  = 0x8000319c, a4  <~~ Word[0x8000319c]
       0     5673        M                                           #; (lsu) a4  <-- 19
       0     5674        M 0x8000179c addi    a4, a4, -1020          #; a4  = 19, (wrb) a4  <-- -1001
       0     5675        M 0x800017a0 snez    a4, a4                 #; a4  = -1001, (wrb) a4  <-- 1
       0     5676        M 0x800017a4 addi    a0, a0, -10            #; a0  = 10, (wrb) a0  <-- 0
       0     5677        M 0x800017a8 snez    a0, a0                 #; a0  = 0, (wrb) a0  <-- 0
       0     5678        M 0x800017ac and     a0, a0, a4             #; a0  = 0, a4  = 1, (wrb) a0  <-- 0
       0     5679        M 0x800017b0 bnez    a0, pc + 96            #; a0  = 0, not taken
       0     5680        M 0x800017b4 add     a0, a3, a2             #; a3  = 0x8000319c, a2  = 0, (wrb) a0  <-- 0x8000319c
       0     5681        M 0x800017b8 addi    a2, a0, 72             #; a0  = 0x8000319c, (wrb) a2  <-- 0x800031e4
       0     5682        M 0x800017bc sw      zero, 12(a0)           #; a0  = 0x8000319c, 0 ~~> Word[0x800031a8]
       0     5683        M 0x800017c0 li      a3, 64                 #; (wrb) a3  <-- 64
       0     5684        M 0x800017c4 sw      a3, 8(a0)              #; a0  = 0x8000319c, 64 ~~> Word[0x800031a4]
       0     5685        M 0x800017c8 sw      zero, 20(a0)           #; a0  = 0x8000319c, 0 ~~> Word[0x800031b0]
       0     5686        M 0x800017cc li      a3, 1                  #; (wrb) a3  <-- 1
       0     5695        M 0x800017d0 sw      a3, 16(a0)             #; a0  = 0x8000319c, 1 ~~> Word[0x800031ac]
       0     5696        M 0x800017d4 sw      zero, 28(a0)           #; a0  = 0x8000319c, 0 ~~> Word[0x800031b8]
       0     5698        M 0x800017d8 sw      a2, 24(a0)             #; a0  = 0x8000319c, 0x800031e4 ~~> Word[0x800031b4]
       0     5708        M 0x800017dc lw      a2, 0(a1)              #; a1  = 0x8000319c, a2  <~~ Word[0x8000319c]
       0     5709        M 0x800017e0 addi    a3, a0, 8              #; a0  = 0x8000319c, (wrb) a3  <-- 0x800031a4
       0     5710        M 0x800017e4 sw      zero, 36(a0)           #; a0  = 0x8000319c, 0 ~~> Word[0x800031c0]
       0     5730        M                                           #; (lsu) a2  <-- 19
       0     5731        M 0x800017e8 sw      a2, 32(a0)             #; a0  = 0x8000319c, 19 ~~> Word[0x800031bc]
       0     5732        M 0x800017ec auipc   a0, 0x2                #; (wrb) a0  <-- 0x800037ec
       0     5733        M 0x800017f0 addi    a0, a0, -1900          #; a0  = 0x800037ec, (wrb) a0  <-- 0x80003080
       0     5734        M 0x800017f4 sw      a3, 0(a0)              #; a0  = 0x80003080, 0x800031a4 ~~> Word[0x80003080]
       0     5735        M 0x800017f8 auipc   a0, 0x2                #; (wrb) a0  <-- 0x800037f8
       0     5736        M 0x800017fc addi    a0, a0, -1848          #; a0  = 0x800037f8, (wrb) a0  <-- 0x800030c0
       0     5745        M 0x80001800 lw      a2, 0(a0)              #; a0  = 0x800030c0, a2  <~~ Word[0x800030c0]
       0     5760        M                                           #; (lsu) a2  <-- 0
       0     5761        M 0x80001804 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001800
       0     5762        M 0x80001800 lw      a2, 0(a0)              #; a0  = 0x800030c0, a2  <~~ Word[0x800030c0]
       0     5773        M                                           #; (lsu) a2  <-- 0
       0     5774        M 0x80001804 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001800
       0     5775        M 0x80001800 lw      a2, 0(a0)              #; a0  = 0x800030c0, a2  <~~ Word[0x800030c0]
       0     5786        M                                           #; (lsu) a2  <-- 0
       0     5787        M 0x80001804 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001800
       0     5788        M 0x80001800 lw      a2, 0(a0)              #; a0  = 0x800030c0, a2  <~~ Word[0x800030c0]
       0     5799        M                                           #; (lsu) a2  <-- 0
       0     5800        M 0x80001804 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001800
       0     5801        M 0x80001800 lw      a2, 0(a0)              #; a0  = 0x800030c0, a2  <~~ Word[0x800030c0]
       0     5812        M                                           #; (lsu) a2  <-- 1
       0     5813        M 0x80001804 beqz    a2, pc - 4             #; a2  = 1, not taken
       0     5814        M 0x80001808 sw      zero, 0(a0)            #; a0  = 0x800030c0, 0 ~~> Word[0x800030c0]
       0     5815        M 0x8000180c sw      zero, 0(a1)            #; a1  = 0x8000319c, 0 ~~> Word[0x8000319c]
       0     5817        M 0x80001810 ret                            #; ra  = 0x80000c20, goto 0x80000c20
       0     5822        M 0x80000c20 addi    s0, s0, 1              #; s0  = 0x80002e4f, (wrb) s0  <-- 0x80002e50
       0     5823        M 0x80000c24 addi    s10, s10, 1            #; s10 = 0x80002e51, (wrb) s10 <-- 0x80002e52
       0     5824        M 0x80000c28 mv      s9, s1                 #; s1  = 19, (wrb) s9  <-- 19
       0     5825        M 0x80000c2c lbu     a0, 0(s0)              #; s0  = 0x80002e50, a0  <~~ Byte[0x80002e50]
       0     5837        M                                           #; (lsu) a0  <-- 0
       0     5838        M 0x80000c30 bnez    a0, pc - 40            #; a0  = 0, not taken
       0     5839        M 0x80000c34 j       pc + 0xad8             #; goto 0x8000170c
       0     5851        M 0x8000170c mv      a2, s9                 #; s9  = 19, (wrb) a2  <-- 19
       0     5863        M 0x80001710 bltu    s9, s5, pc + 8         #; s9  = 19, s5  = -1, taken, goto 0x80001718
       0     5864        M 0x80001718 li      a0, 0                  #; (wrb) a0  <-- 0
       0     5865        M 0x8000171c mv      a1, s4                 #; s4  = 0x0011ff17, (wrb) a1  <-- 0x0011ff17
       0     5875        M 0x80001720 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     5876        M 0x80001724 jalr    s2                     #; s2  = 0x80001768, (wrb) ra  <-- 0x80001728, goto 0x80001768
       0     5889        M 0x80001768 beqz    a0, pc + 168           #; a0  = 0, taken, goto 0x80001810
       0     5894        M 0x80001810 ret                            #; ra  = 0x80001728, goto 0x80001728
       0     5895        M 0x80001728 mv      a0, s9                 #; s9  = 19, (wrb) a0  <-- 19
       0     5896        M 0x8000172c lw      s11, 60(sp)            #; sp  = 0x0011fea0, s11 <~~ Word[0x0011fedc]
       0     5899        M                                           #; (lsu) s11 <-- 0
       0     5900        M 0x80001730 lw      s10, 64(sp)            #; sp  = 0x0011fea0, s10 <~~ Word[0x0011fee0]
       0     5903        M                                           #; (lsu) s10 <-- 0
       0     5904        M 0x80001734 lw      s9, 68(sp)             #; sp  = 0x0011fea0, s9  <~~ Word[0x0011fee4]
       0     5907        M                                           #; (lsu) s9  <-- 0
       0     5908        M 0x80001738 lw      s8, 72(sp)             #; sp  = 0x0011fea0, s8  <~~ Word[0x0011fee8]
       0     5911        M                                           #; (lsu) s8  <-- 0
       0     5912        M 0x8000173c lw      s7, 76(sp)             #; sp  = 0x0011fea0, s7  <~~ Word[0x0011feec]
       0     5915        M                                           #; (lsu) s7  <-- 0
       0     5916        M 0x80001740 lw      s6, 80(sp)             #; sp  = 0x0011fea0, s6  <~~ Word[0x0011fef0]
       0     5919        M                                           #; (lsu) s6  <-- 0
       0     5920        M 0x80001744 lw      s5, 84(sp)             #; sp  = 0x0011fea0, s5  <~~ Word[0x0011fef4]
       0     5923        M                                           #; (lsu) s5  <-- 0
       0     5924        M 0x80001748 lw      s4, 88(sp)             #; sp  = 0x0011fea0, s4  <~~ Word[0x0011fef8]
       0     5927        M                                           #; (lsu) s4  <-- 0
       0     5928        M 0x8000174c lw      s3, 92(sp)             #; sp  = 0x0011fea0, s3  <~~ Word[0x0011fefc]
       0     5931        M                                           #; (lsu) s3  <-- 0
       0     5932        M 0x80001750 lw      s2, 96(sp)             #; sp  = 0x0011fea0, s2  <~~ Word[0x0011ff00]
       0     5935        M                                           #; (lsu) s2  <-- 0x00100000
       0     5936        M 0x80001754 lw      s1, 100(sp)            #; sp  = 0x0011fea0, s1  <~~ Word[0x0011ff04]
       0     5939        M                                           #; (lsu) s1  <-- 0x00100050
       0     5940        M 0x80001758 lw      s0, 104(sp)            #; sp  = 0x0011fea0, s0  <~~ Word[0x0011ff08]
       0     5943        M                                           #; (lsu) s0  <-- 0x001000a0
       0     5944        M 0x8000175c lw      ra, 108(sp)            #; sp  = 0x0011fea0, ra  <~~ Word[0x0011ff0c]
       0     5945        M 0x80001760 addi    sp, sp, 112            #; sp  = 0x0011fea0, (wrb) sp  <-- 0x0011ff10
       0     5947        M                                           #; (lsu) ra  <-- 0x80000b64
       0     5948        M 0x80001764 ret                            #; ra  = 0x80000b64, goto 0x80000b64
       0     5951        M 0x80000b64 lw      ra, 12(sp)             #; sp  = 0x0011ff10, ra  <~~ Word[0x0011ff1c]
       0     5952        M 0x80000b68 addi    sp, sp, 48             #; sp  = 0x0011ff10, (wrb) sp  <-- 0x0011ff40
       0     5954        M                                           #; (lsu) ra  <-- 0x80000ad4
       0     5955        M 0x80000b6c ret                            #; ra  = 0x80000ad4, goto 0x80000ad4
       0     5967        M 0x80000ad4 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002ad4
       0     5968        M 0x80000ad8 addi    a0, a0, 1556           #; a0  = 0x80002ad4, (wrb) a0  <-- 0x800030e8
       0     5971        M 0x80000adc fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x800030e8]
       0     5980        M                                           #; (f:lsu) ft0  <-- 0.0001
       0     5981        M 0x80000ae8 lw      s2, 16(sp)             #; sp  = 0x0011ff40, s2  <~~ Word[0x0011ff50]
                         M 0x80000ae0 flt.d   a0, ft0, fs0           #; ft0  = 0.0001, fs0  = 0.0000000
       0     5983        M                                           #; (acc) s1  <-- 0x01412483
                         M 0x80000ae4 fld     fs0, 8(sp)             #; fs0  <~~ Doub[0x0011ff48]
       0     5984        M                                           #; (lsu) s2  <-- 0
                         M                                           #; (f:lsu) fs0  <-- 0.0
       0     5985        M 0x80000aec lw      s1, 20(sp)             #; sp  = 0x0011ff40, s1  <~~ Word[0x0011ff54]
       0     5988        M                                           #; (lsu) s1  <-- 0
       0     5989        M 0x80000af0 lw      s0, 24(sp)             #; sp  = 0x0011ff40, s0  <~~ Word[0x0011ff58]
       0     5992        M                                           #; (lsu) s0  <-- 0
       0     5993        M 0x80000af4 lw      ra, 28(sp)             #; sp  = 0x0011ff40, ra  <~~ Word[0x0011ff5c]
       0     5994        M 0x80000af8 addi    sp, sp, 32             #; sp  = 0x0011ff40, (wrb) sp  <-- 0x0011ff60
       0     5996        M                                           #; (lsu) ra  <-- 0x80002bc0
       0     5997        M 0x80000afc ret                            #; ra  = 0x80002bc0, goto 0x80002bc0
       0     6009        M 0x80002bc0 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
       0     6010        M 0x80002bc4 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002bc4
       0     6011        M 0x80002bc8 jalr    ra, ra, 524            #; ra  = 0x80002bc4, (wrb) ra  <-- 0x80002bcc, goto 0x80002dd0
       0     6023        M 0x80002dd0 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
       0     6024        M 0x80002dd4 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x80002bcc ~~> Word[0x0011ff5c]
       0     6025        M 0x80002dd8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002dd8
       0     6026        M 0x80002ddc jalr    ra, ra, -1256          #; ra  = 0x80002dd8, (wrb) ra  <-- 0x80002de0, goto 0x800028f0
       0     6037        M 0x800028f0 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     6038        M 0x800028f4 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     6039        M 0x800028f8 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     6042        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     6043        M 0x800028fc lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     6046        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     6047        M 0x80002900 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
       0     6048        M 0x80002904 ret                            #; ra  = 0x80002de0, goto 0x80002de0
       0     6050        M                                           #; (lsu) a0  <-- 0x00120190
       0     6051        M 0x80002de0 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
       0     6061        M                                           #; (lsu) a0  <-- 0
       0     6062        M 0x80002de4 mv      zero, a0               #; a0  = 0
       0     6063        M 0x80002de8 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
       0     6064        M 0x80002dec addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
       0     6066        M                                           #; (lsu) ra  <-- 0x80002bcc
       0     6067        M 0x80002df0 ret                            #; ra  = 0x80002bcc, goto 0x80002bcc
       0     6081        M 0x80002bcc mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
       0     6085        M 0x80002bd0 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002bd0
       0     6086        M 0x80002bd4 jalr    ra, ra, 556            #; ra  = 0x80002bd0, (wrb) ra  <-- 0x80002bd8, goto 0x80002dfc
       0     6087        M 0x80002dfc addi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff58
       0     6088        M 0x80002e00 sw      a0, 0(sp)              #; sp  = 0x0011ff58, 0 ~~> Word[0x0011ff58]
       0     6089        M 0x80002e04 sw      ra, 4(sp)              #; sp  = 0x0011ff58, 0x80002bd8 ~~> Word[0x0011ff5c]
       0     6090        M 0x80002e08 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002e08
       0     6091        M 0x80002e0c jalr    ra, ra, -1336          #; ra  = 0x80002e08, (wrb) ra  <-- 0x80002e10, goto 0x800028d0
       0     6110        M 0x800028d0 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     6111        M 0x800028d4 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     6112        M 0x800028d8 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     6115        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     6116        M 0x800028dc lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     6120        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     6122        M 0x800028e0 lw      a0, 8(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff78]
       0     6123        M 0x800028e4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6126        M                                           #; (lsu) a0  <-- 0
       0     6127        M 0x800028e8 sub     a0, a1, a0             #; a1  = 0, a0  = 0, (wrb) a0  <-- 0
       0     6128        M 0x800028ec ret                            #; ra  = 0x80002e10, goto 0x80002e10
       0     6129        M 0x80002e10 lw      t0, 0(sp)              #; sp  = 0x0011ff58, t0  <~~ Word[0x0011ff58]
       0     6132        M                                           #; (lsu) t0  <-- 0
       0     6133        M 0x80002e14 lw      ra, 4(sp)              #; sp  = 0x0011ff58, ra  <~~ Word[0x0011ff5c]
       0     6134        M 0x80002e18 addi    sp, sp, 8              #; sp  = 0x0011ff58, (wrb) sp  <-- 0x0011ff60
       0     6135        M 0x80002e1c bnez    a0, pc + 24            #; a0  = 0, not taken
       0     6136        M                                           #; (lsu) ra  <-- 0x80002bd8
       0     6141        M 0x80002e20 slli    t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 0
       0     6142        M 0x80002e24 ori     t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 1
       0     6143        M 0x80002e28 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002e28
       0     6144        M 0x80002e2c addi    t1, t1, 600            #; t1  = 0x80002e28, (wrb) t1  <-- 0x80003080
       0     6152        M 0x80002e30 sw      t0, 0(t1)              #; t1  = 0x80003080, 1 ~~> Word[0x80003080]
       0     6153        M 0x80002e34 ret                            #; ra  = 0x80002bd8, goto 0x80002bd8
       0     6154        M 0x80002bd8 wfi                            #; 

## Performance metrics

Performance metrics for section 0 @ (12, 6154):
snitch_loads                                   149
snitch_stores                                  173
fpss_stores                                     42
fpss_loads                                      82
snitch_avg_load_latency                    11.4765
snitch_occupancy                            0.2447
snitch_fseq_rel_offloads                    0.1673
fseq_yield                                     1.0
fseq_fpu_yield                                 1.0
fpss_section_latency                             0
fpss_avg_fpu_latency                        1.6744
fpss_avg_load_latency                       2.0732
fpss_occupancy                              0.0492
fpss_fpu_occupancy                          0.0280
fpss_fpu_rel_occupancy                      0.5695
cycles                                        6143
total_ipc                                   0.2938
