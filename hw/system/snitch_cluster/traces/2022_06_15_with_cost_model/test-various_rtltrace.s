       0       12        M 0x00001000 csrr    a0, mhartid            #; mhartid = 0, (wrb) a0  <-- 0
       0       32        M 0x00001004 auipc   a1, 0x0                #; (wrb) a1  <-- 4100
       0       56        M 0x00001008 addi    a1, a1, 32             #; a1  = 4100, (wrb) a1  <-- 4132
       0       84        M 0x0000100c auipc   t0, 0x0                #; (wrb) t0  <-- 4108
       0      104        M 0x00001010 lw      t0, 20(t0)             #; t0  = 4108, t0  <~~ Word[0x00001020]
       0      115        M                                           #; (lsu) t0  <-- 0x800029e0
       0      128        M 0x00001014 jalr    t0                     #; t0  = 0x800029e0, (wrb) ra  <-- 4120, goto 0x800029e0
       0      269        M 0x800029e0 auipc   gp, 0x1                #; (wrb) gp  <-- 0x800039e0
       0      270        M 0x800029e4 addi    gp, gp, -280           #; gp  = 0x800039e0, (wrb) gp  <-- 0x800038c8
       0      271        M 0x800029e8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800029e8
       0      272        M 0x800029ec jalr    ra, ra, 964            #; ra  = 0x800029e8, (wrb) ra  <-- 0x800029f0, goto 0x80002dac
       0      292        M 0x80002dac mv      a4, a1                 #; a1  = 4132, (wrb) a4  <-- 4132
       0      304        M 0x80002db0 lw      a1, 4(a4)              #; a4  = 4132, a1  <~~ Word[0x00001028]
       0      334        M                                           #; (lsu) a1  <-- 8
       0      335        M 0x80002db4 lw      t0, 8(a4)              #; a4  = 4132, t0  <~~ Word[0x0000102c]
       0      374        M                                           #; (lsu) t0  <-- 0
       0      375        M 0x80002db8 lw      a2, 12(a4)             #; a4  = 4132, a2  <~~ Word[0x00001030]
       0      414        M                                           #; (lsu) a2  <-- 0x00100000
       0      415        M 0x80002dbc lw      t1, 16(a4)             #; a4  = 4132, t1  <~~ Word[0x00001034]
       0      454        M                                           #; (lsu) t1  <-- 0x00020000
       0      455        M 0x80002dc0 lw      t2, 20(a4)             #; a4  = 4132, t2  <~~ Word[0x00001038]
       0      456        M 0x80002dc4 sub     a0, a0, t0             #; a0  = 0, t0  = 0, (wrb) a0  <-- 0
       0      457        M 0x80002dc8 div     t3, a0, a1             #; a0  = 0, a1  = 8
       0      460        M                                           #; (acc) t4  <-- 0x027e0eb3
       0      494        M                                           #; (lsu) t2  <-- 0
       0      495        M 0x80002dcc mul     t4, t3, t2             #; t3  = 0, t2  = 0
       0      498        M                                           #; (acc) a2  <-- 0x01d60633
       0      499        M 0x80002dd0 add     a2, a2, t4             #; a2  = 0x00100000, t4  = 0, (wrb) a2  <-- 0x00100000
       0      500        M 0x80002dd4 add     a3, a2, t1             #; a2  = 0x00100000, t1  = 0x00020000, (wrb) a3  <-- 0x00120000
       0      501        M 0x80002dd8 remu    a0, a0, a1             #; a0  = 0, a1  = 8
       0      502        M 0x80002ddc ret                            #; ra  = 0x800029f0, goto 0x800029f0
       0      504        M                                           #; (acc) s0  <-- 0x00050413
       0      505        M 0x800029f0 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
       0      506        M 0x800029f4 mv      a0, a4                 #; a4  = 4132, (wrb) a0  <-- 4132
       0      507        M 0x800029f8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800029f8
       0      508        M 0x800029fc jalr    ra, ra, 1036           #; ra  = 0x800029f8, (wrb) ra  <-- 0x80002a00, goto 0x80002e04
       0      523        M 0x80002e04 lw      a0, 8(a0)              #; a0  = 4132, a0  <~~ Word[0x0000102c]
       0      524        M 0x80002e08 ret                            #; ra  = 0x80002a00, goto 0x80002a00
       0      543        M                                           #; (lsu) a0  <-- 0
       0      544        M 0x80002a00 mv      t0, a0                 #; a0  = 0, (wrb) t0  <-- 0
       0      545        M 0x80002a04 mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
       0      546        M 0x80002a08 csrr    t1, mhartid            #; mhartid = 0, (wrb) t1  <-- 0
       0      547        M 0x80002a0c sub     t0, t1, t0             #; t1  = 0, t0  = 0, (wrb) t0  <-- 0
       0      549        M 0x80002a10 bnez    t0, pc + 36            #; t0  = 0, not taken
       0      550        M 0x80002a14 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002a14
       0      551        M 0x80002a18 addi    t0, t0, 1940           #; t0  = 0x80002a14, (wrb) t0  <-- 0x800031a8
       0      552        M 0x80002a1c auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002a1c
       0      562        M 0x80002a20 addi    t1, t1, 1936           #; t1  = 0x80002a1c, (wrb) t1  <-- 0x800031ac
       0      563        M 0x80002a24 bge     t0, t1, pc + 16        #; t0  = 0x800031a8, t1  = 0x800031ac, not taken
       0      564        M 0x80002a28 sw      zero, 0(t0)            #; t0  = 0x800031a8, 0 ~~> Word[0x800031a8]
       0      565        M 0x80002a2c addi    t0, t0, 4              #; t0  = 0x800031a8, (wrb) t0  <-- 0x800031ac
       0      573        M 0x80002a30 blt     t0, t1, pc - 8         #; t0  = 0x800031ac, t1  = 0x800031ac, not taken
       0      574        M 0x80002a34 csrr    t0, misa               #; misa = 0x40801129, (wrb) t0  <-- 0x40801129
       0      575        M 0x80002a38 andi    t0, t0, 40             #; t0  = 0x40801129, (wrb) t0  <-- 40
       0      576        M 0x80002a3c beqz    t0, pc + 132           #; t0  = 40, not taken
       0      586        M 0x80002a40 fcvt.d.w ft0, zero             #; ac1  = 0
       0      587        M 0x80002a44 fcvt.d.w ft1, zero             #; ac1  = 0, (f:fpu) ft0  <-- 0.0
       0      588        M 0x80002a48 fcvt.d.w ft2, zero             #; ac1  = 0, (f:fpu) ft1  <-- 0.0
       0      589        M 0x80002a4c fcvt.d.w ft3, zero             #; ac1  = 0, (f:fpu) ft2  <-- 0.0
       0      590        M                                           #; (f:fpu) ft3  <-- 0.0
       0      598        M 0x80002a50 fcvt.d.w ft4, zero             #; ac1  = 0
       0      599        M 0x80002a54 fcvt.d.w ft5, zero             #; ac1  = 0, (f:fpu) ft4  <-- 0.0
       0      600        M 0x80002a58 fcvt.d.w ft6, zero             #; ac1  = 0, (f:fpu) ft5  <-- 0.0
       0      601        M 0x80002a5c fcvt.d.w ft7, zero             #; ac1  = 0, (f:fpu) ft6  <-- 0.0
       0      602        M                                           #; (f:fpu) ft7  <-- 0.0
       0      610        M 0x80002a60 fcvt.d.w fs0, zero             #; ac1  = 0
       0      611        M 0x80002a64 fcvt.d.w fs1, zero             #; ac1  = 0, (f:fpu) fs0  <-- 0.0
       0      612        M 0x80002a68 fcvt.d.w fa0, zero             #; ac1  = 0, (f:fpu) fs1  <-- 0.0
       0      613        M 0x80002a6c fcvt.d.w fa1, zero             #; ac1  = 0, (f:fpu) fa0  <-- 0.0
       0      614        M                                           #; (f:fpu) fa1  <-- 0.0
       0      622        M 0x80002a70 fcvt.d.w fa2, zero             #; ac1  = 0
       0      623        M 0x80002a74 fcvt.d.w fa3, zero             #; ac1  = 0, (f:fpu) fa2  <-- 0.0
       0      624        M 0x80002a78 fcvt.d.w fa4, zero             #; ac1  = 0, (f:fpu) fa3  <-- 0.0
       0      625        M 0x80002a7c fcvt.d.w fa5, zero             #; ac1  = 0, (f:fpu) fa4  <-- 0.0
       0      626        M                                           #; (f:fpu) fa5  <-- 0.0
       0      634        M 0x80002a80 fcvt.d.w fa6, zero             #; ac1  = 0
       0      635        M 0x80002a84 fcvt.d.w fa7, zero             #; ac1  = 0, (f:fpu) fa6  <-- 0.0
       0      636        M 0x80002a88 fcvt.d.w fs2, zero             #; ac1  = 0, (f:fpu) fa7  <-- 0.0
       0      637        M 0x80002a8c fcvt.d.w fs3, zero             #; ac1  = 0, (f:fpu) fs2  <-- 0.0
       0      638        M                                           #; (f:fpu) fs3  <-- 0.0
       0      646        M 0x80002a90 fcvt.d.w fs4, zero             #; ac1  = 0
       0      647        M 0x80002a94 fcvt.d.w fs5, zero             #; ac1  = 0, (f:fpu) fs4  <-- 0.0
       0      648        M 0x80002a98 fcvt.d.w fs6, zero             #; ac1  = 0, (f:fpu) fs5  <-- 0.0
       0      649        M 0x80002a9c fcvt.d.w fs7, zero             #; ac1  = 0, (f:fpu) fs6  <-- 0.0
       0      650        M                                           #; (f:fpu) fs7  <-- 0.0
       0      658        M 0x80002aa0 fcvt.d.w fs8, zero             #; ac1  = 0
       0      659        M 0x80002aa4 fcvt.d.w fs9, zero             #; ac1  = 0, (f:fpu) fs8  <-- 0.0
       0      660        M 0x80002aa8 fcvt.d.w fs10, zero            #; ac1  = 0, (f:fpu) fs9  <-- 0.0
       0      661        M 0x80002aac fcvt.d.w fs11, zero            #; ac1  = 0, (f:fpu) fs10 <-- 0.0
       0      662        M                                           #; (f:fpu) fs11 <-- 0.0
       0      670        M 0x80002ab0 fcvt.d.w ft8, zero             #; ac1  = 0
       0      671        M 0x80002ab4 fcvt.d.w ft9, zero             #; ac1  = 0, (f:fpu) ft8  <-- 0.0
       0      672        M 0x80002ab8 fcvt.d.w ft10, zero            #; ac1  = 0, (f:fpu) ft9  <-- 0.0
       0      673        M 0x80002abc fcvt.d.w ft11, zero            #; ac1  = 0, (f:fpu) ft10 <-- 0.0
       0      674        M                                           #; (f:fpu) ft11 <-- 0.0
       0      681        M 0x80002ac0 addi    a3, a3, -8             #; a3  = 0x00120000, (wrb) a3  <-- 0x0011fff8
       0      682        M 0x80002ac4 sw      zero, 0(a3)            #; a3  = 0x0011fff8, 0 ~~> Word[0x0011fff8]
       0      683        M 0x80002ac8 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002ac8
       0      684        M 0x80002acc lw      t0, 900(t0)            #; t0  = 0x80002ac8, t0  <~~ Word[0x80002e4c]
       0      704        M                                           #; (lsu) t0  <-- 136
       0      705        M 0x80002ad0 sub     a3, a3, t0             #; a3  = 0x0011fff8, t0  = 136, (wrb) a3  <-- 0x0011ff70
       0      706        M 0x80002ad4 mv      a5, a3                 #; a3  = 0x0011ff70, (wrb) a5  <-- 0x0011ff70
       0      707        M 0x80002ad8 auipc   t2, 0x0                #; (wrb) t2  <-- 0x80002ad8
       0      708        M 0x80002adc lw      t2, 880(t2)            #; t2  = 0x80002ad8, t2  <~~ Word[0x80002e48]
       0      744        M                                           #; (lsu) t2  <-- 10
       0      745        M 0x80002ae0 sll     t0, a0, t2             #; a0  = 0, t2  = 10, (wrb) t0  <-- 0
       0      746        M 0x80002ae4 sll     t1, a1, t2             #; a1  = 8, t2  = 10, (wrb) t1  <-- 8192
       0      747        M 0x80002ae8 sub     sp, a3, t0             #; a3  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
       0      748        M 0x80002aec sub     a3, a3, t1             #; a3  = 0x0011ff70, t1  = 8192, (wrb) a3  <-- 0x0011df70
       0      749        M 0x80002af0 slli    t0, a0, 3              #; a0  = 0, (wrb) t0  <-- 0
       0      750        M 0x80002af4 slli    t1, a1, 3              #; a1  = 8, (wrb) t1  <-- 64
       0      751        M 0x80002af8 sub     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0, (wrb) sp  <-- 0x0011ff70
       0      752        M 0x80002afc sub     a3, a3, t1             #; a3  = 0x0011df70, t1  = 64, (wrb) a3  <-- 0x0011df30
       0      761        M 0x80002b00 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002b00
       0      762        M 0x80002b04 addi    t0, t0, 1480           #; t0  = 0x80002b00, (wrb) t0  <-- 0x800030c8
       0      763        M 0x80002b08 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002b08
       0      764        M 0x80002b0c addi    t1, t1, 1472           #; t1  = 0x80002b08, (wrb) t1  <-- 0x800030c8
       0      775        M 0x80002b10 auipc   t2, 0x0                #; (wrb) t2  <-- 0x80002b10
       0      776        M 0x80002b14 addi    t2, t2, 1464           #; t2  = 0x80002b10, (wrb) t2  <-- 0x800030c8
       0      777        M 0x80002b18 auipc   t3, 0x0                #; (wrb) t3  <-- 0x80002b18
       0      778        M 0x80002b1c addi    t3, t3, 1472           #; t3  = 0x80002b18, (wrb) t3  <-- 0x800030d8
       0      787        M 0x80002b20 add     sp, sp, t0             #; sp  = 0x0011ff70, t0  = 0x800030c8, (wrb) sp  <-- 0x80123038
       0      788        M 0x80002b24 sub     sp, sp, t1             #; sp  = 0x80123038, t1  = 0x800030c8, (wrb) sp  <-- 0x0011ff70
       0      789        M 0x80002b28 add     sp, sp, t2             #; sp  = 0x0011ff70, t2  = 0x800030c8, (wrb) sp  <-- 0x80123038
       0      790        M 0x80002b2c sub     sp, sp, t3             #; sp  = 0x80123038, t3  = 0x800030d8, (wrb) sp  <-- 0x0011ff60
       0      799        M 0x80002b30 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
       0      800        M 0x80002b34 mv      tp, sp                 #; sp  = 0x0011ff60, (wrb) tp  <-- 0x0011ff60
       0      801        M 0x80002b38 andi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff60
       0      802        M 0x80002b3c mv      t4, tp                 #; tp  = 0x0011ff60, (wrb) t4  <-- 0x0011ff60
       0      811        M 0x80002b40 bge     t0, t1, pc + 24        #; t0  = 0x800030c8, t1  = 0x800030c8, taken, goto 0x80002b58
       0      823        M 0x80002b58 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002b58
       0      824        M 0x80002b5c addi    t0, t0, 1392           #; t0  = 0x80002b58, (wrb) t0  <-- 0x800030c8
       0      835        M 0x80002b60 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002b60
       0      836        M 0x80002b64 addi    t1, t1, 1400           #; t1  = 0x80002b60, (wrb) t1  <-- 0x800030d8
       0      837        M 0x80002b68 bge     t0, t1, pc + 20        #; t0  = 0x800030c8, t1  = 0x800030d8, not taken
       0      838        M 0x80002b6c sw      zero, 0(t4)            #; t4  = 0x0011ff60, 0 ~~> Word[0x0011ff60]
       0      847        M 0x80002b70 addi    t0, t0, 4              #; t0  = 0x800030c8, (wrb) t0  <-- 0x800030cc
       0      848        M 0x80002b74 addi    t4, t4, 4              #; t4  = 0x0011ff60, (wrb) t4  <-- 0x0011ff64
       0      849        M 0x80002b78 blt     t0, t2, pc - 12        #; t0  = 0x800030cc, t2  = 0x800030c8, not taken
       0      850        M 0x80002b7c addi    sp, sp, -20            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff4c
       0      862        M 0x80002b80 sw      a0, 0(sp)              #; sp  = 0x0011ff4c, 0 ~~> Word[0x0011ff4c]
       0      863        M 0x80002b84 sw      a1, 4(sp)              #; sp  = 0x0011ff4c, 8 ~~> Word[0x0011ff50]
       0      864        M 0x80002b88 sw      a2, 8(sp)              #; sp  = 0x0011ff4c, 0x00100000 ~~> Word[0x0011ff54]
       0      865        M 0x80002b8c sw      a3, 12(sp)             #; sp  = 0x0011ff4c, 0x0011df30 ~~> Word[0x0011ff58]
       0      875        M 0x80002b90 sw      a4, 16(sp)             #; sp  = 0x0011ff4c, 4132 ~~> Word[0x0011ff5c]
       0      876        M 0x80002b94 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002b94
       0      877        M 0x80002b98 jalr    ra, ra, -1052          #; ra  = 0x80002b94, (wrb) ra  <-- 0x80002b9c, goto 0x80002778
       0      899        M 0x80002778 sw      a5, 0(a5)              #; a5  = 0x0011ff70, 0x0011ff70 ~~> Word[0x0011ff70]
       0      900        M 0x8000277c sw      a4, 4(a5)              #; a5  = 0x0011ff70, 4132 ~~> Word[0x0011ff74]
       0      911        M 0x80002780 lw      t1, 8(a4)              #; a4  = 4132, t1  <~~ Word[0x0000102c]
       0      949        M                                           #; (lsu) t1  <-- 0
       0      950        M 0x80002784 sw      t1, 8(a5)              #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff78]
       0      951        M 0x80002788 lw      a6, 40(a4)             #; a4  = 4132, a6  <~~ Word[0x0000104c]
       0      989        M                                           #; (lsu) a6  <-- 1
       0      990        M 0x8000278c lw      a7, 44(a4)             #; a4  = 4132, a7  <~~ Word[0x00001050]
       0     1020        M                                           #; (lsu) a7  <-- 1
       0     1021        M 0x80002790 lw      t0, 4(a4)              #; a4  = 4132, t0  <~~ Word[0x00001028]
       0     1022        M 0x80002794 mul     a6, a7, a6             #; a7  = 1, a6  = 1
       0     1025        M                                           #; (acc) a0  <-- 0x02580533
       0     1060        M                                           #; (lsu) t0  <-- 8
       0     1061        M 0x80002798 mul     a0, a6, t0             #; a6  = 1, t0  = 8
       0     1064        M                                           #; (acc) a2  <-- 0x00a7a623
       0     1065        M 0x8000279c sw      a0, 12(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff7c]
       0     1066        M 0x800027a0 csrr    a7, mhartid            #; mhartid = 0, (wrb) a7  <-- 0
       0     1067        M 0x800027a4 sub     a0, a7, t1             #; a7  = 0, t1  = 0, (wrb) a0  <-- 0
       0     1068        M 0x800027a8 divu    a0, a0, t0             #; a0  = 0, t0  = 8
       0     1071        M                                           #; (acc) a6  <-- 0x00a7a823
       0     1072        M 0x800027ac sw      a0, 16(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff80]
       0     1078        M 0x800027b0 sw      a6, 20(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff84]
       0     1079        M 0x800027b4 sw      t1, 24(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff88]
       0     1080        M 0x800027b8 sw      a1, 28(a5)             #; a5  = 0x0011ff70, 8 ~~> Word[0x0011ff8c]
       0     1081        M 0x800027bc lw      a0, 24(a4)             #; a4  = 4132, a0  <~~ Word[0x0000103c]
       0     1090        M 0x800027c0 lui     a1, 0x10000            #; (wrb) a1  <-- 0x10000000
       0     1100        M                                           #; (lsu) a0  <-- 0x80000000
       0     1101        M 0x800027c4 add     a0, a0, a1             #; a0  = 0x80000000, a1  = 0x10000000, (wrb) a0  <-- 0x90000000
       0     1102        M 0x800027c8 sw      zero, 36(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff94]
       0     1103        M 0x800027cc sw      a0, 32(a5)             #; a5  = 0x0011ff70, 0x90000000 ~~> Word[0x0011ff90]
       0     1104        M 0x800027d0 lw      a0, 32(a4)             #; a4  = 4132, a0  <~~ Word[0x00001044]
       0     1140        M                                           #; (lsu) a0  <-- 0
       0     1141        M 0x800027d4 lw      a1, 36(a4)             #; a4  = 4132, a1  <~~ Word[0x00001048]
       0     1142        M 0x800027d8 sw      a0, 40(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ff98]
       0     1179        M                                           #; (lsu) a1  <-- 1
       0     1180        M 0x800027dc sw      a1, 44(a5)             #; a5  = 0x0011ff70, 1 ~~> Word[0x0011ff9c]
       0     1181        M 0x800027e0 sw      a2, 48(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffa0]
       0     1182        M 0x800027e4 sw      zero, 52(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffa4]
       0     1183        M 0x800027e8 sw      a3, 56(a5)             #; a5  = 0x0011ff70, 0x0011df30 ~~> Word[0x0011ffa8]
       0     1184        M 0x800027ec sw      zero, 60(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffac]
       0     1193        M 0x800027f0 lw      a0, 16(a4)             #; a4  = 4132, a0  <~~ Word[0x00001034]
       0     1205        M                                           #; (lsu) a0  <-- 0x00020000
       0     1206        M 0x800027f4 add     a6, a2, a0             #; a2  = 0x00100000, a0  = 0x00020000, (wrb) a6  <-- 0x00120000
       0     1207        M 0x800027f8 addi    a1, a6, 400            #; a6  = 0x00120000, (wrb) a1  <-- 0x00120190
       0     1208        M 0x800027fc sw      a1, 112(a5)            #; a5  = 0x0011ff70, 0x00120190 ~~> Word[0x0011ffe0]
       0     1209        M 0x80002800 sltu    t0, a6, a0             #; a6  = 0x00120000, a0  = 0x00020000, (wrb) t0  <-- 0
       0     1210        M 0x80002804 srli    a1, a0, 1              #; a0  = 0x00020000, (wrb) a1  <-- 0x00010000
       0     1211        M 0x80002808 add     t1, a6, a1             #; a6  = 0x00120000, a1  = 0x00010000, (wrb) t1  <-- 0x00130000
       0     1212        M 0x8000280c sltu    a1, t1, a6             #; t1  = 0x00130000, a6  = 0x00120000, (wrb) a1  <-- 0
       0     1220        M 0x80002810 add     a1, t0, a1             #; t0  = 0, a1  = 0, (wrb) a1  <-- 0
       0     1221        M 0x80002814 sw      t1, 64(a5)             #; a5  = 0x0011ff70, 0x00130000 ~~> Word[0x0011ffb0]
       0     1222        M 0x80002818 sw      a1, 68(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffb4]
       0     1223        M 0x8000281c slli    a0, a0, 1              #; a0  = 0x00020000, (wrb) a0  <-- 0x00040000
       0     1233        M 0x80002820 add     a1, a0, a2             #; a0  = 0x00040000, a2  = 0x00100000, (wrb) a1  <-- 0x00140000
       0     1234        M 0x80002824 sltu    a0, a1, a0             #; a1  = 0x00140000, a0  = 0x00040000, (wrb) a0  <-- 0
       0     1235        M 0x80002828 sw      a1, 72(a5)             #; a5  = 0x0011ff70, 0x00140000 ~~> Word[0x0011ffb8]
       0     1236        M 0x8000282c sw      a0, 76(a5)             #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffbc]
       0     1245        M 0x80002830 sw      zero, 104(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd8]
       0     1246        M 0x80002834 sw      zero, 108(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffdc]
       0     1247        M 0x80002838 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1248        M 0x8000283c add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1257        M 0x80002840 sw      a5, 0(a0)              #; a0  = 0x0011ff60, 0x0011ff70 ~~> Word[0x0011ff60]
       0     1258        M 0x80002844 lw      a0, 0(a5)              #; a5  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1262        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1263        M 0x80002848 lw      a1, 24(a0)             #; a0  = 0x0011ff70, a1  <~~ Word[0x0011ff88]
       0     1266        M                                           #; (lsu) a1  <-- 0
       0     1267        M 0x8000284c lw      a0, 28(a0)             #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff8c]
       0     1269        M 0x80002850 sub     a1, a7, a1             #; a7  = 0, a1  = 0, (wrb) a1  <-- 0
       0     1270        M                                           #; (lsu) a0  <-- 8
       0     1271        M 0x80002854 remu    a0, a1, a0             #; a1  = 0, a0  = 8
       0     1272        M 0x80002858 lui     a1, 0x0                #; (wrb) a1  <-- 0
       0     1273        M 0x8000285c add     a1, a1, tp             #; a1  = 0, tp  = 0x0011ff60, (wrb) a1  <-- 0x0011ff60
       0     1281        M 0x80002860 sw      a0, 4(a1)              #; a1  = 0x0011ff60, 0 ~~> Word[0x0011ff64]
       0     1282        M 0x80002864 li      a0, 1096               #; (wrb) a0  <-- 1096
       0     1283        M 0x80002868 mul     a0, a7, a0             #; a7  = 0, a0  = 1096
       0     1284        M 0x8000286c auipc   a1, 0x1                #; (wrb) a1  <-- 0x8000386c
       0     1293        M 0x80002870 addi    a1, a1, -1728          #; a1  = 0x8000386c, (wrb) a1  <-- 0x800031ac
       0     1294        M 0x80002874 add     a0, a0, a1             #; a0  = 0, a1  = 0x800031ac, (wrb) a0  <-- 0x800031ac
       0     1295        M 0x80002878 sw      zero, 0(a0)            #; a0  = 0x800031ac, 0 ~~> Word[0x800031ac]
       0     1296        M 0x8000287c lw      a7, 48(a4)             #; a4  = 4132, a7  <~~ Word[0x00001054]
       0     1344        M                                           #; (lsu) a7  <-- 0xffff0000
       0     1345        M 0x80002880 sw      a7, 116(a5)            #; a5  = 0x0011ff70, 0xffff0000 ~~> Word[0x0011ffe4]
       0     1346        M 0x80002884 sw      a6, 124(a5)            #; a5  = 0x0011ff70, 0x00120000 ~~> Word[0x0011ffec]
       0     1347        M 0x80002888 sw      zero, 120(a5)          #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffe8]
       0     1348        M 0x8000288c addi    a4, a6, 384            #; a6  = 0x00120000, (wrb) a4  <-- 0x00120180
       0     1349        M 0x80002890 sw      a4, 128(a5)            #; a5  = 0x0011ff70, 0x00120180 ~~> Word[0x0011fff0]
       0     1350        M 0x80002894 addi    a0, a2, 7              #; a2  = 0x00100000, (wrb) a0  <-- 0x00100007
       0     1351        M 0x80002898 andi    a0, a0, -8             #; a0  = 0x00100007, (wrb) a0  <-- 0x00100000
       0     1352        M 0x8000289c sw      a0, 80(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc0]
       0     1362        M 0x800028a0 sub     a2, a3, a2             #; a3  = 0x0011df30, a2  = 0x00100000, (wrb) a2  <-- 0x0001df30
       0     1363        M 0x800028a4 sw      a2, 84(a5)             #; a5  = 0x0011ff70, 0x0001df30 ~~> Word[0x0011ffc4]
       0     1364        M 0x800028a8 sw      a0, 88(a5)             #; a5  = 0x0011ff70, 0x00100000 ~~> Word[0x0011ffc8]
       0     1366        M 0x800028ac lw      a0, 0(a1)              #; a1  = 0x800031ac, a0  <~~ Word[0x800031ac]
       0     1377        M                                           #; (lsu) a0  <-- 0
       0     1378        M 0x800028b0 addi    a0, a0, 1103           #; a0  = 0, (wrb) a0  <-- 1103
       0     1379        M 0x800028b4 andi    a0, a0, -8             #; a0  = 1103, (wrb) a0  <-- 1096
       0     1380        M 0x800028b8 sw      a0, 92(a5)             #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffcc]
       0     1381        M 0x800028bc sw      zero, 96(a5)           #; a5  = 0x0011ff70, 0 ~~> Word[0x0011ffd0]
       0     1387        M 0x800028c0 sw      a0, 100(a5)            #; a5  = 0x0011ff70, 1096 ~~> Word[0x0011ffd4]
       0     1388        M 0x800028c4 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1389        M 0x800028c8 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1390        M 0x800028cc sw      a7, 8(a0)              #; a0  = 0x0011ff60, 0xffff0000 ~~> Word[0x0011ff68]
       0     1399        M 0x800028d0 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1400        M 0x800028d4 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1401        M 0x800028d8 sw      a4, 12(a0)             #; a0  = 0x0011ff60, 0x00120180 ~~> Word[0x0011ff6c]
       0     1402        M 0x800028dc ret                            #; ra  = 0x80002b9c, goto 0x80002b9c
       0     1415        M 0x80002b9c lw      a0, 0(sp)              #; sp  = 0x0011ff4c, a0  <~~ Word[0x0011ff4c]
       0     1418        M                                           #; (lsu) a0  <-- 0
       0     1419        M 0x80002ba0 lw      a1, 4(sp)              #; sp  = 0x0011ff4c, a1  <~~ Word[0x0011ff50]
       0     1422        M                                           #; (lsu) a1  <-- 8
       0     1423        M 0x80002ba4 lw      a2, 8(sp)              #; sp  = 0x0011ff4c, a2  <~~ Word[0x0011ff54]
       0     1426        M                                           #; (lsu) a2  <-- 0x00100000
       0     1427        M 0x80002ba8 lw      a3, 12(sp)             #; sp  = 0x0011ff4c, a3  <~~ Word[0x0011ff58]
       0     1430        M                                           #; (lsu) a3  <-- 0x0011df30
       0     1431        M 0x80002bac lw      a4, 16(sp)             #; sp  = 0x0011ff4c, a4  <~~ Word[0x0011ff5c]
       0     1432        M 0x80002bb0 addi    sp, sp, 20             #; sp  = 0x0011ff4c, (wrb) sp  <-- 0x0011ff60
       0     1433        M 0x80002bb4 auipc   t0, 0x0                #; (wrb) t0  <-- 0x80002bb4
       0     1434        M 0x80002bb8 addi    t0, t0, 60             #; t0  = 0x80002bb4, (wrb) t0  <-- 0x80002bf0
       0     1435        M 0x80002bbc csrw    mtvec, t0              #; t0  = 0x80002bf0, (lsu) a4  <-- 4132
       0     1442        M 0x80002bc0 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002bc0
       0     1443        M 0x80002bc4 jalr    ra, ra, 544            #; ra  = 0x80002bc0, (wrb) ra  <-- 0x80002bc8, goto 0x80002de0
       0     1456        M 0x80002de0 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
       0     1457        M 0x80002de4 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x80002bc8 ~~> Word[0x0011ff5c]
       0     1458        M 0x80002de8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002de8
       0     1459        M 0x80002dec jalr    ra, ra, -1256          #; ra  = 0x80002de8, (wrb) ra  <-- 0x80002df0, goto 0x80002900
       0     1480        M 0x80002900 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1481        M 0x80002904 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1482        M 0x80002908 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     1485        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1486        M 0x8000290c lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     1490        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     1492        M 0x80002910 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
       0     1493        M 0x80002914 ret                            #; ra  = 0x80002df0, goto 0x80002df0
       0     1496        M                                           #; (lsu) a0  <-- 0x00120190
       0     1497        M 0x80002df0 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
       0     1526        M                                           #; (lsu) a0  <-- 0
       0     1527        M 0x80002df4 mv      zero, a0               #; a0  = 0
       0     1528        M 0x80002df8 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
       0     1529        M 0x80002dfc addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
       0     1531        M                                           #; (lsu) ra  <-- 0x80002bc8
       0     1532        M 0x80002e00 ret                            #; ra  = 0x80002bc8, goto 0x80002bc8
       0     1536        M 0x80002bc8 auipc   ra, 0xffffe            #; (wrb) ra  <-- 0x80000bc8
       0     1537        M 0x80002bcc jalr    ra, ra, -1428          #; ra  = 0x80000bc8, (wrb) ra  <-- 0x80002bd0, goto 0x80000634
       0     1542        M 0x80000634 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     1543        M 0x80000638 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     1544        M 0x8000063c lw      a0, 4(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff64]
       0     1547        M                                           #; (lsu) a0  <-- 0
       0     1548        M 0x80000640 beqz    a0, pc + 12            #; a0  = 0, taken, goto 0x8000064c
       0     1549        M 0x8000064c li      a0, 25                 #; (wrb) a0  <-- 25
       0     1558        M 0x80000650 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80000650
       0     1559        M 0x80000654 jalr    zero, t1, 8            #; t1  = 0x80000650
       0     1560        M 0x80000658 addi    sp, sp, -48            #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff30
       0     1561        M 0x8000065c sw      ra, 44(sp)             #; sp  = 0x0011ff30, 0x80002bd0 ~~> Word[0x0011ff5c]
       0     1571        M 0x80000660 sw      s0, 40(sp)             #; sp  = 0x0011ff30, 0 ~~> Word[0x0011ff58]
       0     1572        M 0x80000664 sw      s1, 36(sp)             #; sp  = 0x0011ff30, 0 ~~> Word[0x0011ff54]
       0     1575        M 0x80000668 fsd     fs0, 24(sp)            #; 0.0 ~~> Doub[0x0011ff48]
       0     1576        M 0x8000066c fsd     fs1, 16(sp)            #; 0.0 ~~> Doub[0x0011ff40]
       0     1585        M 0x80000674 lui     a1, 0x0                #; (wrb) a1  <-- 0
       0     1586        M 0x80000678 add     a1, a1, tp             #; a1  = 0, tp  = 0x0011ff60, (wrb) a1  <-- 0x0011ff60
                         M 0x80000670 fsd     fs2, 8(sp)             #; 0.0 ~~> Doub[0x0011ff38]
       0     1587        M 0x8000067c lw      a1, 0(a1)              #; a1  = 0x0011ff60, a1  <~~ Word[0x0011ff60]
       0     1590        M                                           #; (lsu) a1  <-- 0x0011ff70
       0     1596        M 0x80000680 lw      a1, 0(a1)              #; a1  = 0x0011ff70, a1  <~~ Word[0x0011ff70]
       0     1599        M                                           #; (lsu) a1  <-- 0x0011ff70
       0     1600        M 0x80000684 lw      s1, 88(a1)             #; a1  = 0x0011ff70, s1  <~~ Word[0x0011ffc8]
       0     1603        M                                           #; (lsu) s1  <-- 0x00100000
       0     1604        M 0x80000688 lw      a2, 80(a1)             #; a1  = 0x0011ff70, a2  <~~ Word[0x0011ffc0]
       0     1607        M                                           #; (lsu) a2  <-- 0x00100000
       0     1608        M 0x8000068c lw      a3, 84(a1)             #; a1  = 0x0011ff70, a3  <~~ Word[0x0011ffc4]
       0     1609        M 0x80000690 mv      s0, a0                 #; a0  = 25, (wrb) s0  <-- 25
       0     1610        M 0x80000694 slli    a0, a0, 3              #; a0  = 25, (wrb) a0  <-- 200
       0     1611        M 0x80000698 add     a0, s1, a0             #; s1  = 0x00100000, a0  = 200, (wrb) a0  <-- 0x001000c8
       0     1612        M                                           #; (lsu) a3  <-- 0x0001df30
       0     1613        M 0x8000069c add     a2, a3, a2             #; a3  = 0x0001df30, a2  = 0x00100000, (wrb) a2  <-- 0x0011df30
       0     1621        M 0x800006a0 bgeu    a2, a0, pc + 12        #; a2  = 0x0011df30, a0  = 0x001000c8, taken, goto 0x800006ac
       0     1622        M 0x800006ac sw      a0, 88(a1)             #; a1  = 0x0011ff70, 0x001000c8 ~~> Word[0x0011ffc8]
       0     1633        M 0x800006b0 mv      a0, s1                 #; s1  = 0x00100000, (wrb) a0  <-- 0x00100000
       0     1634        M 0x800006b4 mv      a1, s0                 #; s0  = 25, (wrb) a1  <-- 25
       0     1635        M 0x800006b8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800006b8
       0     1636        M 0x800006bc jalr    ra, ra, 284            #; ra  = 0x800006b8, (wrb) ra  <-- 0x800006c0, goto 0x800007d4
       0     1656        M 0x800007d4 li      a2, 1                  #; (wrb) a2  <-- 1
       0     1657        M 0x800007d8 blt     a1, a2, pc + 124       #; a1  = 25, a2  = 1, not taken
       0     1658        M 0x800007dc addi    a2, a1, -1             #; a1  = 25, (wrb) a2  <-- 24
       0     1668        M 0x800007e0 slli    a5, a2, 3              #; a2  = 24, (wrb) a5  <-- 192
       0     1669        M 0x800007e4 add     a4, a5, a0             #; a5  = 192, a0  = 0x00100000, (wrb) a4  <-- 0x001000c0
       0     1670        M 0x800007e8 srli    a3, a0, 20             #; a0  = 0x00100000, (wrb) a3  <-- 1
       0     1671        M 0x800007ec snez    a3, a3                 #; a3  = 1, (wrb) a3  <-- 1
       0     1680        M 0x800007f0 bgeu    a4, a5, pc + 104       #; a4  = 0x001000c0, a5  = 192, taken, goto 0x80000858
       0     1703        M 0x80000858 lui     a5, 0x120              #; (wrb) a5  <-- 0x00120000
       0     1704        M 0x8000085c addi    a5, a5, 1              #; a5  = 0x00120000, (wrb) a5  <-- 0x00120001
       0     1715        M 0x80000860 sltu    a4, a4, a5             #; a4  = 0x001000c0, a5  = 0x00120001, (wrb) a4  <-- 1
       0     1716        M 0x80000864 and     a3, a3, a4             #; a3  = 1, a4  = 1, (wrb) a3  <-- 1
       0     1717        M 0x80000868 beqz    a3, pc - 104           #; a3  = 1, not taken
       0     1718        M 0x8000086c li      a3, 0                  #; (wrb) a3  <-- 0
       0     1730        M 0x80000870 li      a4, 8                  #; (wrb) a4  <-- 8
       0     1731        M 0x80000874 li      a5, 64                 #; (wrb) a5  <-- 64
       0     1732        M 0x80000878 scfgw   a2, a5                 #; a2  = 24, a5  = 64
       0     1733        M 0x8000087c li      a2, 192                #; (wrb) a2  <-- 192
       0     1742        M 0x80000880 scfgw   a4, a2                 #; a4  = 8, a2  = 192
       0     1743        M 0x80000884 li      a2, 32                 #; (wrb) a2  <-- 32
       0     1744        M 0x80000888 scfgw   zero, a2               #; a2  = 32
       0     1745        M 0x8000088c scfgwi  a0, 896                #; a0  = 0x00100000
       0     1755        M 0x80000894 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003894
                         M 0x80000890 csrrsi  a0, ssr, 1             #; 
       0     1756        M 0x80000898 addi    a0, a0, -1948          #; a0  = 0x80003894, (wrb) a0  <-- 0x800030f8
       0     1759        M 0x8000089c fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x800030f8]
       0     1766        M 0x800008a0 lui     a0, 0x8421             #; (wrb) a0  <-- 0x08421000
       0     1767        M 0x800008a4 addi    a0, a0, 133            #; a0  = 0x08421000, (wrb) a0  <-- 0x08421085
       0     1768        M 0x800008a8 mulhu   a2, a3, a0             #; a3  = 0, a0  = 0x08421085
                         M                                           #; (f:lsu) ft3  <-- 1.4142
       0     1771        M                                           #; (acc) a4  <-- 0x40c68733
       0     1772        M 0x800008ac sub     a4, a3, a2             #; a3  = 0, a2  = 0, (wrb) a4  <-- 0
       0     1778        M 0x800008b0 srli    a4, a4, 1              #; a4  = 0, (wrb) a4  <-- 0
       0     1779        M 0x800008b4 add     a2, a4, a2             #; a4  = 0, a2  = 0, (wrb) a2  <-- 0
       0     1780        M 0x800008b8 srli    a2, a2, 4              #; a2  = 0, (wrb) a2  <-- 0
       0     1781        M 0x800008bc slli    a4, a2, 5              #; a2  = 0, (wrb) a4  <-- 0
       0     1790        M 0x800008c0 sub     a2, a2, a4             #; a2  = 0, a4  = 0, (wrb) a2  <-- 0
       0     1791        M 0x800008c4 add     a2, a3, a2             #; a3  = 0, a2  = 0, (wrb) a2  <-- 0
       0     1793        M 0x800008c8 fcvt.d.w ft4, a2               #; ac1  = 0
       0     1794        M                                           #; (f:fpu) ft4  <-- 0.0
       0     1795        M 0x800008cc fmul.d  ft4, ft4, ft3          #; ft4  = 0.0, ft3  = 1.4142
       0     1798        M                                           #; (f:fpu) ft4  <-- 0.0
       0     1803        M 0x800008d4 addi    a1, a1, -1             #; a1  = 25, (wrb) a1  <-- 24
       0     1804        M 0x800008d8 addi    a3, a3, 1              #; a3  = 0, (wrb) a3  <-- 1
                         M 0x800008d0 fsgnj.d ft0, ft4, ft4          #; ft4  = 0.0, ft4  = 0.0
       0     1805        M 0x800008dc bnez    a1, pc - 52            #; a1  = 24, taken, goto 0x800008a8
                         M                                           #; (f:fpu) ft0  <-- 0.0
       0     1806        M 0x800008a8 mulhu   a2, a3, a0             #; a3  = 1, a0  = 0x08421085
       0     1809        M                                           #; (acc) a4  <-- 0x40c68733
       0     1810        M 0x800008ac sub     a4, a3, a2             #; a3  = 1, a2  = 0, (wrb) a4  <-- 1
       0     1811        M 0x800008b0 srli    a4, a4, 1              #; a4  = 1, (wrb) a4  <-- 0
       0     1812        M 0x800008b4 add     a2, a4, a2             #; a4  = 0, a2  = 0, (wrb) a2  <-- 0
       0     1813        M 0x800008b8 srli    a2, a2, 4              #; a2  = 0, (wrb) a2  <-- 0
       0     1814        M 0x800008bc slli    a4, a2, 5              #; a2  = 0, (wrb) a4  <-- 0
       0     1815        M 0x800008c0 sub     a2, a2, a4             #; a2  = 0, a4  = 0, (wrb) a2  <-- 0
       0     1816        M 0x800008c4 add     a2, a3, a2             #; a3  = 1, a2  = 0, (wrb) a2  <-- 1
       0     1818        M 0x800008c8 fcvt.d.w ft4, a2               #; ac1  = 1
       0     1819        M                                           #; (f:fpu) ft4  <-- 1.0
       0     1820        M 0x800008d4 addi    a1, a1, -1             #; a1  = 24, (wrb) a1  <-- 23
                         M 0x800008cc fmul.d  ft4, ft4, ft3          #; ft4  = 1.0, ft3  = 1.4142
       0     1821        M 0x800008d8 addi    a3, a3, 1              #; a3  = 1, (wrb) a3  <-- 2
       0     1822        M 0x800008dc bnez    a1, pc - 52            #; a1  = 23, taken, goto 0x800008a8
       0     1823        M 0x800008a8 mulhu   a2, a3, a0             #; a3  = 2, a0  = 0x08421085
                         M                                           #; (f:fpu) ft4  <-- 1.4142
       0     1824        M 0x800008d0 fsgnj.d ft0, ft4, ft4          #; ft4  = 1.4142, ft4  = 1.4142
       0     1825        M                                           #; (f:fpu) ft0  <-- 1.4142
       0     1826        M                                           #; (acc) a4  <-- 0x40c68733
       0     1827        M 0x800008ac sub     a4, a3, a2             #; a3  = 2, a2  = 0, (wrb) a4  <-- 2
       0     1828        M 0x800008b0 srli    a4, a4, 1              #; a4  = 2, (wrb) a4  <-- 1
       0     1829        M 0x800008b4 add     a2, a4, a2             #; a4  = 1, a2  = 0, (wrb) a2  <-- 1
       0     1830        M 0x800008b8 srli    a2, a2, 4              #; a2  = 1, (wrb) a2  <-- 0
       0     1831        M 0x800008bc slli    a4, a2, 5              #; a2  = 0, (wrb) a4  <-- 0
       0     1832        M 0x800008c0 sub     a2, a2, a4             #; a2  = 0, a4  = 0, (wrb) a2  <-- 0
       0     1833        M 0x800008c4 add     a2, a3, a2             #; a3  = 2, a2  = 0, (wrb) a2  <-- 2
       0     1835        M 0x800008c8 fcvt.d.w ft4, a2               #; ac1  = 2
       0     1836        M                                           #; (f:fpu) ft4  <-- 2.0
       0     1837        M 0x800008d4 addi    a1, a1, -1             #; a1  = 23, (wrb) a1  <-- 22
                         M 0x800008cc fmul.d  ft4, ft4, ft3          #; ft4  = 2.0, ft3  = 1.4142
       0     1838        M 0x800008d8 addi    a3, a3, 1              #; a3  = 2, (wrb) a3  <-- 3
       0     1839        M 0x800008dc bnez    a1, pc - 52            #; a1  = 22, taken, goto 0x800008a8
       0     1840        M 0x800008a8 mulhu   a2, a3, a0             #; a3  = 3, a0  = 0x08421085
                         M                                           #; (f:fpu) ft4  <-- 2.8284
       0     1841        M 0x800008d0 fsgnj.d ft0, ft4, ft4          #; ft4  = 2.8284, ft4  = 2.8284
       0     1842        M                                           #; (f:fpu) ft0  <-- 2.8284
       0     1843        M                                           #; (acc) a4  <-- 0x40c68733
       0     1844        M 0x800008ac sub     a4, a3, a2             #; a3  = 3, a2  = 0, (wrb) a4  <-- 3
       0     1845        M 0x800008b0 srli    a4, a4, 1              #; a4  = 3, (wrb) a4  <-- 1
       0     1846        M 0x800008b4 add     a2, a4, a2             #; a4  = 1, a2  = 0, (wrb) a2  <-- 1
       0     1847        M 0x800008b8 srli    a2, a2, 4              #; a2  = 1, (wrb) a2  <-- 0
       0     1848        M 0x800008bc slli    a4, a2, 5              #; a2  = 0, (wrb) a4  <-- 0
       0     1849        M 0x800008c0 sub     a2, a2, a4             #; a2  = 0, a4  = 0, (wrb) a2  <-- 0
       0     1850        M 0x800008c4 add     a2, a3, a2             #; a3  = 3, a2  = 0, (wrb) a2  <-- 3
       0     1852        M 0x800008c8 fcvt.d.w ft4, a2               #; ac1  = 3
       0     1853        M                                           #; (f:fpu) ft4  <-- 3.0
       0     1854        M 0x800008d4 addi    a1, a1, -1             #; a1  = 22, (wrb) a1  <-- 21
                         M 0x800008cc fmul.d  ft4, ft4, ft3          #; ft4  = 3.0, ft3  = 1.4142
       0     1855        M 0x800008d8 addi    a3, a3, 1              #; a3  = 3, (wrb) a3  <-- 4
       0     1856        M 0x800008dc bnez    a1, pc - 52            #; a1  = 21, taken, goto 0x800008a8
       0     1857        M 0x800008a8 mulhu   a2, a3, a0             #; a3  = 4, a0  = 0x08421085
                         M                                           #; (f:fpu) ft4  <-- 4.2426000
       0     1858        M 0x800008d0 fsgnj.d ft0, ft4, ft4          #; ft4  = 4.2426000, ft4  = 4.2426000
       0     1859        M                                           #; (f:fpu) ft0  <-- 4.2426000
       0     1860        M                                           #; (acc) a4  <-- 0x40c68733
       0     1861        M 0x800008ac sub     a4, a3, a2             #; a3  = 4, a2  = 0, (wrb) a4  <-- 4
       0     1862        M 0x800008b0 srli    a4, a4, 1              #; a4  = 4, (wrb) a4  <-- 2
       0     1863        M 0x800008b4 add     a2, a4, a2             #; a4  = 2, a2  = 0, (wrb) a2  <-- 2
       0     1864        M 0x800008b8 srli    a2, a2, 4              #; a2  = 2, (wrb) a2  <-- 0
       0     1865        M 0x800008bc slli    a4, a2, 5              #; a2  = 0, (wrb) a4  <-- 0
       0     1866        M 0x800008c0 sub     a2, a2, a4             #; a2  = 0, a4  = 0, (wrb) a2  <-- 0
       0     1867        M 0x800008c4 add     a2, a3, a2             #; a3  = 4, a2  = 0, (wrb) a2  <-- 4
       0     1869        M 0x800008c8 fcvt.d.w ft4, a2               #; ac1  = 4
       0     1870        M                                           #; (f:fpu) ft4  <-- 4.0
       0     1871        M 0x800008d4 addi    a1, a1, -1             #; a1  = 21, (wrb) a1  <-- 20
                         M 0x800008cc fmul.d  ft4, ft4, ft3          #; ft4  = 4.0, ft3  = 1.4142
       0     1872        M 0x800008d8 addi    a3, a3, 1              #; a3  = 4, (wrb) a3  <-- 5
       0     1873        M 0x800008dc bnez    a1, pc - 52            #; a1  = 20, taken, goto 0x800008a8
       0     1874        M 0x800008a8 mulhu   a2, a3, a0             #; a3  = 5, a0  = 0x08421085
                         M                                           #; (f:fpu) ft4  <-- 5.6568
       0     1875        M 0x800008d0 fsgnj.d ft0, ft4, ft4          #; ft4  = 5.6568, ft4  = 5.6568
       0     1876        M                                           #; (f:fpu) ft0  <-- 5.6568
       0     1877        M                                           #; (acc) a4  <-- 0x40c68733
       0     1878        M 0x800008ac sub     a4, a3, a2             #; a3  = 5, a2  = 0, (wrb) a4  <-- 5
       0     1879        M 0x800008b0 srli    a4, a4, 1              #; a4  = 5, (wrb) a4  <-- 2
       0     1880        M 0x800008b4 add     a2, a4, a2             #; a4  = 2, a2  = 0, (wrb) a2  <-- 2
       0     1881        M 0x800008b8 srli    a2, a2, 4              #; a2  = 2, (wrb) a2  <-- 0
       0     1882        M 0x800008bc slli    a4, a2, 5              #; a2  = 0, (wrb) a4  <-- 0
       0     1883        M 0x800008c0 sub     a2, a2, a4             #; a2  = 0, a4  = 0, (wrb) a2  <-- 0
       0     1884        M 0x800008c4 add     a2, a3, a2             #; a3  = 5, a2  = 0, (wrb) a2  <-- 5
       0     1886        M 0x800008c8 fcvt.d.w ft4, a2               #; ac1  = 5
       0     1887        M                                           #; (f:fpu) ft4  <-- 5.0
       0     1888        M 0x800008d4 addi    a1, a1, -1             #; a1  = 20, (wrb) a1  <-- 19
                         M 0x800008cc fmul.d  ft4, ft4, ft3          #; ft4  = 5.0, ft3  = 1.4142
       0     1889        M 0x800008d8 addi    a3, a3, 1              #; a3  = 5, (wrb) a3  <-- 6
       0     1890        M 0x800008dc bnez    a1, pc - 52            #; a1  = 19, taken, goto 0x800008a8
       0     1891        M 0x800008a8 mulhu   a2, a3, a0             #; a3  = 6, a0  = 0x08421085
                         M                                           #; (f:fpu) ft4  <-- 7.071
       0     1892        M 0x800008d0 fsgnj.d ft0, ft4, ft4          #; ft4  = 7.071, ft4  = 7.071
       0     1893        M                                           #; (f:fpu) ft0  <-- 7.071
       0     1894        M                                           #; (acc) a4  <-- 0x40c68733
       0     1895        M 0x800008ac sub     a4, a3, a2             #; a3  = 6, a2  = 0, (wrb) a4  <-- 6
       0     1896        M 0x800008b0 srli    a4, a4, 1              #; a4  = 6, (wrb) a4  <-- 3
       0     1897        M 0x800008b4 add     a2, a4, a2             #; a4  = 3, a2  = 0, (wrb) a2  <-- 3
       0     1898        M 0x800008b8 srli    a2, a2, 4              #; a2  = 3, (wrb) a2  <-- 0
       0     1899        M 0x800008bc slli    a4, a2, 5              #; a2  = 0, (wrb) a4  <-- 0
       0     1900        M 0x800008c0 sub     a2, a2, a4             #; a2  = 0, a4  = 0, (wrb) a2  <-- 0
       0     1901        M 0x800008c4 add     a2, a3, a2             #; a3  = 6, a2  = 0, (wrb) a2  <-- 6
       0     1903        M 0x800008c8 fcvt.d.w ft4, a2               #; ac1  = 6
       0     1904        M                                           #; (f:fpu) ft4  <-- 6.0
       0     1905        M 0x800008d4 addi    a1, a1, -1             #; a1  = 19, (wrb) a1  <-- 18
                         M 0x800008cc fmul.d  ft4, ft4, ft3          #; ft4  = 6.0, ft3  = 1.4142
       0     1906        M 0x800008d8 addi    a3, a3, 1              #; a3  = 6, (wrb) a3  <-- 7
       0     1907        M 0x800008dc bnez    a1, pc - 52            #; a1  = 18, taken, goto 0x800008a8
       0     1908        M 0x800008a8 mulhu   a2, a3, a0             #; a3  = 7, a0  = 0x08421085
                         M                                           #; (f:fpu) ft4  <-- 8.4852000
       0     1909        M 0x800008d0 fsgnj.d ft0, ft4, ft4          #; ft4  = 8.4852000, ft4  = 8.4852000
       0     1910        M                                           #; (f:fpu) ft0  <-- 8.4852000
       0     1911        M                                           #; (acc) a4  <-- 0x40c68733
       0     1912        M 0x800008ac sub     a4, a3, a2             #; a3  = 7, a2  = 0, (wrb) a4  <-- 7
       0     1913        M 0x800008b0 srli    a4, a4, 1              #; a4  = 7, (wrb) a4  <-- 3
       0     1914        M 0x800008b4 add     a2, a4, a2             #; a4  = 3, a2  = 0, (wrb) a2  <-- 3
       0     1915        M 0x800008b8 srli    a2, a2, 4              #; a2  = 3, (wrb) a2  <-- 0
       0     1916        M 0x800008bc slli    a4, a2, 5              #; a2  = 0, (wrb) a4  <-- 0
       0     1917        M 0x800008c0 sub     a2, a2, a4             #; a2  = 0, a4  = 0, (wrb) a2  <-- 0
       0     1918        M 0x800008c4 add     a2, a3, a2             #; a3  = 7, a2  = 0, (wrb) a2  <-- 7
       0     1920        M 0x800008c8 fcvt.d.w ft4, a2               #; ac1  = 7
       0     1921        M                                           #; (f:fpu) ft4  <-- 7.0
       0     1922        M 0x800008d4 addi    a1, a1, -1             #; a1  = 18, (wrb) a1  <-- 17
                         M 0x800008cc fmul.d  ft4, ft4, ft3          #; ft4  = 7.0, ft3  = 1.4142
       0     1923        M 0x800008d8 addi    a3, a3, 1              #; a3  = 7, (wrb) a3  <-- 8
       0     1924        M 0x800008dc bnez    a1, pc - 52            #; a1  = 17, taken, goto 0x800008a8
       0     1925        M 0x800008a8 mulhu   a2, a3, a0             #; a3  = 8, a0  = 0x08421085
                         M                                           #; (f:fpu) ft4  <-- 9.8994
       0     1926        M 0x800008d0 fsgnj.d ft0, ft4, ft4          #; ft4  = 9.8994, ft4  = 9.8994
       0     1927        M                                           #; (f:fpu) ft0  <-- 9.8994
       0     1928        M                                           #; (acc) a4  <-- 0x40c68733
       0     1929        M 0x800008ac sub     a4, a3, a2             #; a3  = 8, a2  = 0, (wrb) a4  <-- 8
       0     1930        M 0x800008b0 srli    a4, a4, 1              #; a4  = 8, (wrb) a4  <-- 4
       0     1931        M 0x800008b4 add     a2, a4, a2             #; a4  = 4, a2  = 0, (wrb) a2  <-- 4
       0     1932        M 0x800008b8 srli    a2, a2, 4              #; a2  = 4, (wrb) a2  <-- 0
       0     1933        M 0x800008bc slli    a4, a2, 5              #; a2  = 0, (wrb) a4  <-- 0
       0     1934        M 0x800008c0 sub     a2, a2, a4             #; a2  = 0, a4  = 0, (wrb) a2  <-- 0
       0     1935        M 0x800008c4 add     a2, a3, a2             #; a3  = 8, a2  = 0, (wrb) a2  <-- 8
       0     1937        M 0x800008c8 fcvt.d.w ft4, a2               #; ac1  = 8
       0     1938        M                                           #; (f:fpu) ft4  <-- 8.0
       0     1939        M 0x800008d4 addi    a1, a1, -1             #; a1  = 17, (wrb) a1  <-- 16
                         M 0x800008cc fmul.d  ft4, ft4, ft3          #; ft4  = 8.0, ft3  = 1.4142
       0     1940        M 0x800008d8 addi    a3, a3, 1              #; a3  = 8, (wrb) a3  <-- 9
       0     1941        M 0x800008dc bnez    a1, pc - 52            #; a1  = 16, taken, goto 0x800008a8
       0     1942        M 0x800008a8 mulhu   a2, a3, a0             #; a3  = 9, a0  = 0x08421085
                         M                                           #; (f:fpu) ft4  <-- 11.3136
       0     1943        M 0x800008d0 fsgnj.d ft0, ft4, ft4          #; ft4  = 11.3136, ft4  = 11.3136
       0     1944        M                                           #; (f:fpu) ft0  <-- 11.3136
       0     1945        M                                           #; (acc) a4  <-- 0x40c68733
       0     1946        M 0x800008ac sub     a4, a3, a2             #; a3  = 9, a2  = 0, (wrb) a4  <-- 9
       0     1947        M 0x800008b0 srli    a4, a4, 1              #; a4  = 9, (wrb) a4  <-- 4
       0     1948        M 0x800008b4 add     a2, a4, a2             #; a4  = 4, a2  = 0, (wrb) a2  <-- 4
       0     1949        M 0x800008b8 srli    a2, a2, 4              #; a2  = 4, (wrb) a2  <-- 0
       0     1950        M 0x800008bc slli    a4, a2, 5              #; a2  = 0, (wrb) a4  <-- 0
       0     1951        M 0x800008c0 sub     a2, a2, a4             #; a2  = 0, a4  = 0, (wrb) a2  <-- 0
       0     1952        M 0x800008c4 add     a2, a3, a2             #; a3  = 9, a2  = 0, (wrb) a2  <-- 9
       0     1954        M 0x800008c8 fcvt.d.w ft4, a2               #; ac1  = 9
       0     1955        M                                           #; (f:fpu) ft4  <-- 9.0
       0     1956        M 0x800008d4 addi    a1, a1, -1             #; a1  = 16, (wrb) a1  <-- 15
                         M 0x800008cc fmul.d  ft4, ft4, ft3          #; ft4  = 9.0, ft3  = 1.4142
       0     1957        M 0x800008d8 addi    a3, a3, 1              #; a3  = 9, (wrb) a3  <-- 10
       0     1958        M 0x800008dc bnez    a1, pc - 52            #; a1  = 15, taken, goto 0x800008a8
       0     1959        M 0x800008a8 mulhu   a2, a3, a0             #; a3  = 10, a0  = 0x08421085
                         M                                           #; (f:fpu) ft4  <-- 12.7278000
       0     1960        M 0x800008d0 fsgnj.d ft0, ft4, ft4          #; ft4  = 12.7278000, ft4  = 12.7278000
       0     1961        M                                           #; (f:fpu) ft0  <-- 12.7278000
       0     1962        M                                           #; (acc) a4  <-- 0x40c68733
       0     1963        M 0x800008ac sub     a4, a3, a2             #; a3  = 10, a2  = 0, (wrb) a4  <-- 10
       0     1964        M 0x800008b0 srli    a4, a4, 1              #; a4  = 10, (wrb) a4  <-- 5
       0     1965        M 0x800008b4 add     a2, a4, a2             #; a4  = 5, a2  = 0, (wrb) a2  <-- 5
       0     1966        M 0x800008b8 srli    a2, a2, 4              #; a2  = 5, (wrb) a2  <-- 0
       0     1967        M 0x800008bc slli    a4, a2, 5              #; a2  = 0, (wrb) a4  <-- 0
       0     1968        M 0x800008c0 sub     a2, a2, a4             #; a2  = 0, a4  = 0, (wrb) a2  <-- 0
       0     1969        M 0x800008c4 add     a2, a3, a2             #; a3  = 10, a2  = 0, (wrb) a2  <-- 10
       0     1971        M 0x800008c8 fcvt.d.w ft4, a2               #; ac1  = 10
       0     1972        M                                           #; (f:fpu) ft4  <-- 10.0
       0     1973        M 0x800008d4 addi    a1, a1, -1             #; a1  = 15, (wrb) a1  <-- 14
                         M 0x800008cc fmul.d  ft4, ft4, ft3          #; ft4  = 10.0, ft3  = 1.4142
       0     1974        M 0x800008d8 addi    a3, a3, 1              #; a3  = 10, (wrb) a3  <-- 11
       0     1975        M 0x800008dc bnez    a1, pc - 52            #; a1  = 14, taken, goto 0x800008a8
       0     1976        M 0x800008a8 mulhu   a2, a3, a0             #; a3  = 11, a0  = 0x08421085
                         M                                           #; (f:fpu) ft4  <-- 14.142
       0     1977        M 0x800008d0 fsgnj.d ft0, ft4, ft4          #; ft4  = 14.142, ft4  = 14.142
       0     1978        M                                           #; (f:fpu) ft0  <-- 14.142
       0     1979        M                                           #; (acc) a4  <-- 0x40c68733
       0     1980        M 0x800008ac sub     a4, a3, a2             #; a3  = 11, a2  = 0, (wrb) a4  <-- 11
       0     1981        M 0x800008b0 srli    a4, a4, 1              #; a4  = 11, (wrb) a4  <-- 5
       0     1982        M 0x800008b4 add     a2, a4, a2             #; a4  = 5, a2  = 0, (wrb) a2  <-- 5
       0     1983        M 0x800008b8 srli    a2, a2, 4              #; a2  = 5, (wrb) a2  <-- 0
       0     1984        M 0x800008bc slli    a4, a2, 5              #; a2  = 0, (wrb) a4  <-- 0
       0     1985        M 0x800008c0 sub     a2, a2, a4             #; a2  = 0, a4  = 0, (wrb) a2  <-- 0
       0     1986        M 0x800008c4 add     a2, a3, a2             #; a3  = 11, a2  = 0, (wrb) a2  <-- 11
       0     1988        M 0x800008c8 fcvt.d.w ft4, a2               #; ac1  = 11
       0     1989        M                                           #; (f:fpu) ft4  <-- 11.0
       0     1990        M 0x800008d4 addi    a1, a1, -1             #; a1  = 14, (wrb) a1  <-- 13
                         M 0x800008cc fmul.d  ft4, ft4, ft3          #; ft4  = 11.0, ft3  = 1.4142
       0     1991        M 0x800008d8 addi    a3, a3, 1              #; a3  = 11, (wrb) a3  <-- 12
       0     1992        M 0x800008dc bnez    a1, pc - 52            #; a1  = 13, taken, goto 0x800008a8
       0     1993        M 0x800008a8 mulhu   a2, a3, a0             #; a3  = 12, a0  = 0x08421085
                         M                                           #; (f:fpu) ft4  <-- 15.5562000
       0     1994        M 0x800008d0 fsgnj.d ft0, ft4, ft4          #; ft4  = 15.5562000, ft4  = 15.5562000
       0     1995        M                                           #; (f:fpu) ft0  <-- 15.5562000
       0     1996        M                                           #; (acc) a4  <-- 0x40c68733
       0     1997        M 0x800008ac sub     a4, a3, a2             #; a3  = 12, a2  = 0, (wrb) a4  <-- 12
       0     1998        M 0x800008b0 srli    a4, a4, 1              #; a4  = 12, (wrb) a4  <-- 6
       0     1999        M 0x800008b4 add     a2, a4, a2             #; a4  = 6, a2  = 0, (wrb) a2  <-- 6
       0     2000        M 0x800008b8 srli    a2, a2, 4              #; a2  = 6, (wrb) a2  <-- 0
       0     2001        M 0x800008bc slli    a4, a2, 5              #; a2  = 0, (wrb) a4  <-- 0
       0     2002        M 0x800008c0 sub     a2, a2, a4             #; a2  = 0, a4  = 0, (wrb) a2  <-- 0
       0     2003        M 0x800008c4 add     a2, a3, a2             #; a3  = 12, a2  = 0, (wrb) a2  <-- 12
       0     2005        M 0x800008c8 fcvt.d.w ft4, a2               #; ac1  = 12
       0     2006        M                                           #; (f:fpu) ft4  <-- 12.0
       0     2007        M 0x800008d4 addi    a1, a1, -1             #; a1  = 13, (wrb) a1  <-- 12
                         M 0x800008cc fmul.d  ft4, ft4, ft3          #; ft4  = 12.0, ft3  = 1.4142
       0     2008        M 0x800008d8 addi    a3, a3, 1              #; a3  = 12, (wrb) a3  <-- 13
       0     2009        M 0x800008dc bnez    a1, pc - 52            #; a1  = 12, taken, goto 0x800008a8
       0     2010        M 0x800008a8 mulhu   a2, a3, a0             #; a3  = 13, a0  = 0x08421085
                         M                                           #; (f:fpu) ft4  <-- 16.9704000
       0     2011        M 0x800008d0 fsgnj.d ft0, ft4, ft4          #; ft4  = 16.9704000, ft4  = 16.9704000
       0     2012        M                                           #; (f:fpu) ft0  <-- 16.9704000
       0     2013        M                                           #; (acc) a4  <-- 0x40c68733
       0     2014        M 0x800008ac sub     a4, a3, a2             #; a3  = 13, a2  = 0, (wrb) a4  <-- 13
       0     2015        M 0x800008b0 srli    a4, a4, 1              #; a4  = 13, (wrb) a4  <-- 6
       0     2016        M 0x800008b4 add     a2, a4, a2             #; a4  = 6, a2  = 0, (wrb) a2  <-- 6
       0     2017        M 0x800008b8 srli    a2, a2, 4              #; a2  = 6, (wrb) a2  <-- 0
       0     2018        M 0x800008bc slli    a4, a2, 5              #; a2  = 0, (wrb) a4  <-- 0
       0     2019        M 0x800008c0 sub     a2, a2, a4             #; a2  = 0, a4  = 0, (wrb) a2  <-- 0
       0     2020        M 0x800008c4 add     a2, a3, a2             #; a3  = 13, a2  = 0, (wrb) a2  <-- 13
       0     2022        M 0x800008c8 fcvt.d.w ft4, a2               #; ac1  = 13
       0     2023        M                                           #; (f:fpu) ft4  <-- 13.0
       0     2024        M 0x800008d4 addi    a1, a1, -1             #; a1  = 12, (wrb) a1  <-- 11
                         M 0x800008cc fmul.d  ft4, ft4, ft3          #; ft4  = 13.0, ft3  = 1.4142
       0     2025        M 0x800008d8 addi    a3, a3, 1              #; a3  = 13, (wrb) a3  <-- 14
       0     2026        M 0x800008dc bnez    a1, pc - 52            #; a1  = 11, taken, goto 0x800008a8
       0     2027        M 0x800008a8 mulhu   a2, a3, a0             #; a3  = 14, a0  = 0x08421085
                         M                                           #; (f:fpu) ft4  <-- 18.3846
       0     2028        M 0x800008d0 fsgnj.d ft0, ft4, ft4          #; ft4  = 18.3846, ft4  = 18.3846
       0     2029        M                                           #; (f:fpu) ft0  <-- 18.3846
       0     2030        M                                           #; (acc) a4  <-- 0x40c68733
       0     2031        M 0x800008ac sub     a4, a3, a2             #; a3  = 14, a2  = 0, (wrb) a4  <-- 14
       0     2032        M 0x800008b0 srli    a4, a4, 1              #; a4  = 14, (wrb) a4  <-- 7
       0     2033        M 0x800008b4 add     a2, a4, a2             #; a4  = 7, a2  = 0, (wrb) a2  <-- 7
       0     2034        M 0x800008b8 srli    a2, a2, 4              #; a2  = 7, (wrb) a2  <-- 0
       0     2035        M 0x800008bc slli    a4, a2, 5              #; a2  = 0, (wrb) a4  <-- 0
       0     2036        M 0x800008c0 sub     a2, a2, a4             #; a2  = 0, a4  = 0, (wrb) a2  <-- 0
       0     2037        M 0x800008c4 add     a2, a3, a2             #; a3  = 14, a2  = 0, (wrb) a2  <-- 14
       0     2039        M 0x800008c8 fcvt.d.w ft4, a2               #; ac1  = 14
       0     2040        M                                           #; (f:fpu) ft4  <-- 14.0
       0     2041        M 0x800008d4 addi    a1, a1, -1             #; a1  = 11, (wrb) a1  <-- 10
                         M 0x800008cc fmul.d  ft4, ft4, ft3          #; ft4  = 14.0, ft3  = 1.4142
       0     2042        M 0x800008d8 addi    a3, a3, 1              #; a3  = 14, (wrb) a3  <-- 15
       0     2043        M 0x800008dc bnez    a1, pc - 52            #; a1  = 10, taken, goto 0x800008a8
       0     2044        M 0x800008a8 mulhu   a2, a3, a0             #; a3  = 15, a0  = 0x08421085
                         M                                           #; (f:fpu) ft4  <-- 19.7988
       0     2045        M 0x800008d0 fsgnj.d ft0, ft4, ft4          #; ft4  = 19.7988, ft4  = 19.7988
       0     2046        M                                           #; (f:fpu) ft0  <-- 19.7988
       0     2047        M                                           #; (acc) a4  <-- 0x40c68733
       0     2048        M 0x800008ac sub     a4, a3, a2             #; a3  = 15, a2  = 0, (wrb) a4  <-- 15
       0     2049        M 0x800008b0 srli    a4, a4, 1              #; a4  = 15, (wrb) a4  <-- 7
       0     2050        M 0x800008b4 add     a2, a4, a2             #; a4  = 7, a2  = 0, (wrb) a2  <-- 7
       0     2051        M 0x800008b8 srli    a2, a2, 4              #; a2  = 7, (wrb) a2  <-- 0
       0     2052        M 0x800008bc slli    a4, a2, 5              #; a2  = 0, (wrb) a4  <-- 0
       0     2053        M 0x800008c0 sub     a2, a2, a4             #; a2  = 0, a4  = 0, (wrb) a2  <-- 0
       0     2054        M 0x800008c4 add     a2, a3, a2             #; a3  = 15, a2  = 0, (wrb) a2  <-- 15
       0     2056        M 0x800008c8 fcvt.d.w ft4, a2               #; ac1  = 15
       0     2057        M                                           #; (f:fpu) ft4  <-- 15.0
       0     2058        M 0x800008d4 addi    a1, a1, -1             #; a1  = 10, (wrb) a1  <-- 9
                         M 0x800008cc fmul.d  ft4, ft4, ft3          #; ft4  = 15.0, ft3  = 1.4142
       0     2059        M 0x800008d8 addi    a3, a3, 1              #; a3  = 15, (wrb) a3  <-- 16
       0     2060        M 0x800008dc bnez    a1, pc - 52            #; a1  = 9, taken, goto 0x800008a8
       0     2061        M 0x800008a8 mulhu   a2, a3, a0             #; a3  = 16, a0  = 0x08421085
                         M                                           #; (f:fpu) ft4  <-- 21.2130000
       0     2062        M 0x800008d0 fsgnj.d ft0, ft4, ft4          #; ft4  = 21.2130000, ft4  = 21.2130000
       0     2063        M                                           #; (f:fpu) ft0  <-- 21.2130000
       0     2064        M                                           #; (acc) a4  <-- 0x40c68733
       0     2065        M 0x800008ac sub     a4, a3, a2             #; a3  = 16, a2  = 0, (wrb) a4  <-- 16
       0     2066        M 0x800008b0 srli    a4, a4, 1              #; a4  = 16, (wrb) a4  <-- 8
       0     2067        M 0x800008b4 add     a2, a4, a2             #; a4  = 8, a2  = 0, (wrb) a2  <-- 8
       0     2068        M 0x800008b8 srli    a2, a2, 4              #; a2  = 8, (wrb) a2  <-- 0
       0     2069        M 0x800008bc slli    a4, a2, 5              #; a2  = 0, (wrb) a4  <-- 0
       0     2070        M 0x800008c0 sub     a2, a2, a4             #; a2  = 0, a4  = 0, (wrb) a2  <-- 0
       0     2071        M 0x800008c4 add     a2, a3, a2             #; a3  = 16, a2  = 0, (wrb) a2  <-- 16
       0     2073        M 0x800008c8 fcvt.d.w ft4, a2               #; ac1  = 16
       0     2074        M                                           #; (f:fpu) ft4  <-- 16.0
       0     2075        M 0x800008d4 addi    a1, a1, -1             #; a1  = 9, (wrb) a1  <-- 8
                         M 0x800008cc fmul.d  ft4, ft4, ft3          #; ft4  = 16.0, ft3  = 1.4142
       0     2076        M 0x800008d8 addi    a3, a3, 1              #; a3  = 16, (wrb) a3  <-- 17
       0     2077        M 0x800008dc bnez    a1, pc - 52            #; a1  = 8, taken, goto 0x800008a8
       0     2078        M 0x800008a8 mulhu   a2, a3, a0             #; a3  = 17, a0  = 0x08421085
                         M                                           #; (f:fpu) ft4  <-- 22.6272
       0     2079        M 0x800008d0 fsgnj.d ft0, ft4, ft4          #; ft4  = 22.6272, ft4  = 22.6272
       0     2080        M                                           #; (f:fpu) ft0  <-- 22.6272
       0     2081        M                                           #; (acc) a4  <-- 0x40c68733
       0     2082        M 0x800008ac sub     a4, a3, a2             #; a3  = 17, a2  = 0, (wrb) a4  <-- 17
       0     2083        M 0x800008b0 srli    a4, a4, 1              #; a4  = 17, (wrb) a4  <-- 8
       0     2084        M 0x800008b4 add     a2, a4, a2             #; a4  = 8, a2  = 0, (wrb) a2  <-- 8
       0     2085        M 0x800008b8 srli    a2, a2, 4              #; a2  = 8, (wrb) a2  <-- 0
       0     2086        M 0x800008bc slli    a4, a2, 5              #; a2  = 0, (wrb) a4  <-- 0
       0     2087        M 0x800008c0 sub     a2, a2, a4             #; a2  = 0, a4  = 0, (wrb) a2  <-- 0
       0     2088        M 0x800008c4 add     a2, a3, a2             #; a3  = 17, a2  = 0, (wrb) a2  <-- 17
       0     2090        M 0x800008c8 fcvt.d.w ft4, a2               #; ac1  = 17
       0     2091        M                                           #; (f:fpu) ft4  <-- 17.0
       0     2092        M 0x800008d4 addi    a1, a1, -1             #; a1  = 8, (wrb) a1  <-- 7
                         M 0x800008cc fmul.d  ft4, ft4, ft3          #; ft4  = 17.0, ft3  = 1.4142
       0     2093        M 0x800008d8 addi    a3, a3, 1              #; a3  = 17, (wrb) a3  <-- 18
       0     2094        M 0x800008dc bnez    a1, pc - 52            #; a1  = 7, taken, goto 0x800008a8
       0     2095        M 0x800008a8 mulhu   a2, a3, a0             #; a3  = 18, a0  = 0x08421085
                         M                                           #; (f:fpu) ft4  <-- 24.0414
       0     2096        M 0x800008d0 fsgnj.d ft0, ft4, ft4          #; ft4  = 24.0414, ft4  = 24.0414
       0     2097        M                                           #; (f:fpu) ft0  <-- 24.0414
       0     2098        M                                           #; (acc) a4  <-- 0x40c68733
       0     2099        M 0x800008ac sub     a4, a3, a2             #; a3  = 18, a2  = 0, (wrb) a4  <-- 18
       0     2100        M 0x800008b0 srli    a4, a4, 1              #; a4  = 18, (wrb) a4  <-- 9
       0     2101        M 0x800008b4 add     a2, a4, a2             #; a4  = 9, a2  = 0, (wrb) a2  <-- 9
       0     2102        M 0x800008b8 srli    a2, a2, 4              #; a2  = 9, (wrb) a2  <-- 0
       0     2103        M 0x800008bc slli    a4, a2, 5              #; a2  = 0, (wrb) a4  <-- 0
       0     2104        M 0x800008c0 sub     a2, a2, a4             #; a2  = 0, a4  = 0, (wrb) a2  <-- 0
       0     2105        M 0x800008c4 add     a2, a3, a2             #; a3  = 18, a2  = 0, (wrb) a2  <-- 18
       0     2107        M 0x800008c8 fcvt.d.w ft4, a2               #; ac1  = 18
       0     2108        M                                           #; (f:fpu) ft4  <-- 18.0
       0     2109        M 0x800008d4 addi    a1, a1, -1             #; a1  = 7, (wrb) a1  <-- 6
                         M 0x800008cc fmul.d  ft4, ft4, ft3          #; ft4  = 18.0, ft3  = 1.4142
       0     2110        M 0x800008d8 addi    a3, a3, 1              #; a3  = 18, (wrb) a3  <-- 19
       0     2111        M 0x800008dc bnez    a1, pc - 52            #; a1  = 6, taken, goto 0x800008a8
       0     2112        M 0x800008a8 mulhu   a2, a3, a0             #; a3  = 19, a0  = 0x08421085
                         M                                           #; (f:fpu) ft4  <-- 25.4556000
       0     2113        M 0x800008d0 fsgnj.d ft0, ft4, ft4          #; ft4  = 25.4556000, ft4  = 25.4556000
       0     2114        M                                           #; (f:fpu) ft0  <-- 25.4556000
       0     2115        M                                           #; (acc) a4  <-- 0x40c68733
       0     2116        M 0x800008ac sub     a4, a3, a2             #; a3  = 19, a2  = 0, (wrb) a4  <-- 19
       0     2117        M 0x800008b0 srli    a4, a4, 1              #; a4  = 19, (wrb) a4  <-- 9
       0     2118        M 0x800008b4 add     a2, a4, a2             #; a4  = 9, a2  = 0, (wrb) a2  <-- 9
       0     2119        M 0x800008b8 srli    a2, a2, 4              #; a2  = 9, (wrb) a2  <-- 0
       0     2120        M 0x800008bc slli    a4, a2, 5              #; a2  = 0, (wrb) a4  <-- 0
       0     2121        M 0x800008c0 sub     a2, a2, a4             #; a2  = 0, a4  = 0, (wrb) a2  <-- 0
       0     2122        M 0x800008c4 add     a2, a3, a2             #; a3  = 19, a2  = 0, (wrb) a2  <-- 19
       0     2124        M 0x800008c8 fcvt.d.w ft4, a2               #; ac1  = 19
       0     2125        M                                           #; (f:fpu) ft4  <-- 19.0
       0     2126        M 0x800008d4 addi    a1, a1, -1             #; a1  = 6, (wrb) a1  <-- 5
                         M 0x800008cc fmul.d  ft4, ft4, ft3          #; ft4  = 19.0, ft3  = 1.4142
       0     2127        M 0x800008d8 addi    a3, a3, 1              #; a3  = 19, (wrb) a3  <-- 20
       0     2128        M 0x800008dc bnez    a1, pc - 52            #; a1  = 5, taken, goto 0x800008a8
       0     2129        M 0x800008a8 mulhu   a2, a3, a0             #; a3  = 20, a0  = 0x08421085
                         M                                           #; (f:fpu) ft4  <-- 26.8698000
       0     2130        M 0x800008d0 fsgnj.d ft0, ft4, ft4          #; ft4  = 26.8698000, ft4  = 26.8698000
       0     2131        M                                           #; (f:fpu) ft0  <-- 26.8698000
       0     2132        M                                           #; (acc) a4  <-- 0x40c68733
       0     2133        M 0x800008ac sub     a4, a3, a2             #; a3  = 20, a2  = 0, (wrb) a4  <-- 20
       0     2134        M 0x800008b0 srli    a4, a4, 1              #; a4  = 20, (wrb) a4  <-- 10
       0     2135        M 0x800008b4 add     a2, a4, a2             #; a4  = 10, a2  = 0, (wrb) a2  <-- 10
       0     2136        M 0x800008b8 srli    a2, a2, 4              #; a2  = 10, (wrb) a2  <-- 0
       0     2137        M 0x800008bc slli    a4, a2, 5              #; a2  = 0, (wrb) a4  <-- 0
       0     2138        M 0x800008c0 sub     a2, a2, a4             #; a2  = 0, a4  = 0, (wrb) a2  <-- 0
       0     2139        M 0x800008c4 add     a2, a3, a2             #; a3  = 20, a2  = 0, (wrb) a2  <-- 20
       0     2141        M 0x800008c8 fcvt.d.w ft4, a2               #; ac1  = 20
       0     2142        M                                           #; (f:fpu) ft4  <-- 20.0
       0     2143        M 0x800008d4 addi    a1, a1, -1             #; a1  = 5, (wrb) a1  <-- 4
                         M 0x800008cc fmul.d  ft4, ft4, ft3          #; ft4  = 20.0, ft3  = 1.4142
       0     2144        M 0x800008d8 addi    a3, a3, 1              #; a3  = 20, (wrb) a3  <-- 21
       0     2145        M 0x800008dc bnez    a1, pc - 52            #; a1  = 4, taken, goto 0x800008a8
       0     2146        M 0x800008a8 mulhu   a2, a3, a0             #; a3  = 21, a0  = 0x08421085
                         M                                           #; (f:fpu) ft4  <-- 28.284
       0     2147        M 0x800008d0 fsgnj.d ft0, ft4, ft4          #; ft4  = 28.284, ft4  = 28.284
       0     2148        M                                           #; (f:fpu) ft0  <-- 28.284
       0     2149        M                                           #; (acc) a4  <-- 0x40c68733
       0     2150        M 0x800008ac sub     a4, a3, a2             #; a3  = 21, a2  = 0, (wrb) a4  <-- 21
       0     2151        M 0x800008b0 srli    a4, a4, 1              #; a4  = 21, (wrb) a4  <-- 10
       0     2152        M 0x800008b4 add     a2, a4, a2             #; a4  = 10, a2  = 0, (wrb) a2  <-- 10
       0     2153        M 0x800008b8 srli    a2, a2, 4              #; a2  = 10, (wrb) a2  <-- 0
       0     2154        M 0x800008bc slli    a4, a2, 5              #; a2  = 0, (wrb) a4  <-- 0
       0     2155        M 0x800008c0 sub     a2, a2, a4             #; a2  = 0, a4  = 0, (wrb) a2  <-- 0
       0     2156        M 0x800008c4 add     a2, a3, a2             #; a3  = 21, a2  = 0, (wrb) a2  <-- 21
       0     2158        M 0x800008c8 fcvt.d.w ft4, a2               #; ac1  = 21
       0     2159        M                                           #; (f:fpu) ft4  <-- 21.0
       0     2160        M 0x800008d4 addi    a1, a1, -1             #; a1  = 4, (wrb) a1  <-- 3
                         M 0x800008cc fmul.d  ft4, ft4, ft3          #; ft4  = 21.0, ft3  = 1.4142
       0     2161        M 0x800008d8 addi    a3, a3, 1              #; a3  = 21, (wrb) a3  <-- 22
       0     2162        M 0x800008dc bnez    a1, pc - 52            #; a1  = 3, taken, goto 0x800008a8
       0     2163        M 0x800008a8 mulhu   a2, a3, a0             #; a3  = 22, a0  = 0x08421085
                         M                                           #; (f:fpu) ft4  <-- 29.6982000
       0     2164        M 0x800008d0 fsgnj.d ft0, ft4, ft4          #; ft4  = 29.6982000, ft4  = 29.6982000
       0     2165        M                                           #; (f:fpu) ft0  <-- 29.6982000
       0     2166        M                                           #; (acc) a4  <-- 0x40c68733
       0     2167        M 0x800008ac sub     a4, a3, a2             #; a3  = 22, a2  = 0, (wrb) a4  <-- 22
       0     2168        M 0x800008b0 srli    a4, a4, 1              #; a4  = 22, (wrb) a4  <-- 11
       0     2169        M 0x800008b4 add     a2, a4, a2             #; a4  = 11, a2  = 0, (wrb) a2  <-- 11
       0     2170        M 0x800008b8 srli    a2, a2, 4              #; a2  = 11, (wrb) a2  <-- 0
       0     2171        M 0x800008bc slli    a4, a2, 5              #; a2  = 0, (wrb) a4  <-- 0
       0     2172        M 0x800008c0 sub     a2, a2, a4             #; a2  = 0, a4  = 0, (wrb) a2  <-- 0
       0     2173        M 0x800008c4 add     a2, a3, a2             #; a3  = 22, a2  = 0, (wrb) a2  <-- 22
       0     2175        M 0x800008c8 fcvt.d.w ft4, a2               #; ac1  = 22
       0     2176        M                                           #; (f:fpu) ft4  <-- 22.0
       0     2177        M 0x800008d4 addi    a1, a1, -1             #; a1  = 3, (wrb) a1  <-- 2
                         M 0x800008cc fmul.d  ft4, ft4, ft3          #; ft4  = 22.0, ft3  = 1.4142
       0     2178        M 0x800008d8 addi    a3, a3, 1              #; a3  = 22, (wrb) a3  <-- 23
       0     2179        M 0x800008dc bnez    a1, pc - 52            #; a1  = 2, taken, goto 0x800008a8
       0     2180        M 0x800008a8 mulhu   a2, a3, a0             #; a3  = 23, a0  = 0x08421085
                         M                                           #; (f:fpu) ft4  <-- 31.1124000
       0     2181        M 0x800008d0 fsgnj.d ft0, ft4, ft4          #; ft4  = 31.1124000, ft4  = 31.1124000
       0     2182        M                                           #; (f:fpu) ft0  <-- 31.1124000
       0     2183        M                                           #; (acc) a4  <-- 0x40c68733
       0     2184        M 0x800008ac sub     a4, a3, a2             #; a3  = 23, a2  = 0, (wrb) a4  <-- 23
       0     2185        M 0x800008b0 srli    a4, a4, 1              #; a4  = 23, (wrb) a4  <-- 11
       0     2186        M 0x800008b4 add     a2, a4, a2             #; a4  = 11, a2  = 0, (wrb) a2  <-- 11
       0     2187        M 0x800008b8 srli    a2, a2, 4              #; a2  = 11, (wrb) a2  <-- 0
       0     2188        M 0x800008bc slli    a4, a2, 5              #; a2  = 0, (wrb) a4  <-- 0
       0     2189        M 0x800008c0 sub     a2, a2, a4             #; a2  = 0, a4  = 0, (wrb) a2  <-- 0
       0     2190        M 0x800008c4 add     a2, a3, a2             #; a3  = 23, a2  = 0, (wrb) a2  <-- 23
       0     2192        M 0x800008c8 fcvt.d.w ft4, a2               #; ac1  = 23
       0     2193        M                                           #; (f:fpu) ft4  <-- 23.0
       0     2194        M 0x800008d4 addi    a1, a1, -1             #; a1  = 2, (wrb) a1  <-- 1
                         M 0x800008cc fmul.d  ft4, ft4, ft3          #; ft4  = 23.0, ft3  = 1.4142
       0     2195        M 0x800008d8 addi    a3, a3, 1              #; a3  = 23, (wrb) a3  <-- 24
       0     2196        M 0x800008dc bnez    a1, pc - 52            #; a1  = 1, taken, goto 0x800008a8
       0     2197        M 0x800008a8 mulhu   a2, a3, a0             #; a3  = 24, a0  = 0x08421085
                         M                                           #; (f:fpu) ft4  <-- 32.5266000
       0     2198        M 0x800008d0 fsgnj.d ft0, ft4, ft4          #; ft4  = 32.5266000, ft4  = 32.5266000
       0     2199        M                                           #; (f:fpu) ft0  <-- 32.5266000
       0     2200        M                                           #; (acc) a4  <-- 0x40c68733
       0     2201        M 0x800008ac sub     a4, a3, a2             #; a3  = 24, a2  = 0, (wrb) a4  <-- 24
       0     2202        M 0x800008b0 srli    a4, a4, 1              #; a4  = 24, (wrb) a4  <-- 12
       0     2203        M 0x800008b4 add     a2, a4, a2             #; a4  = 12, a2  = 0, (wrb) a2  <-- 12
       0     2204        M 0x800008b8 srli    a2, a2, 4              #; a2  = 12, (wrb) a2  <-- 0
       0     2205        M 0x800008bc slli    a4, a2, 5              #; a2  = 0, (wrb) a4  <-- 0
       0     2206        M 0x800008c0 sub     a2, a2, a4             #; a2  = 0, a4  = 0, (wrb) a2  <-- 0
       0     2207        M 0x800008c4 add     a2, a3, a2             #; a3  = 24, a2  = 0, (wrb) a2  <-- 24
       0     2209        M 0x800008c8 fcvt.d.w ft4, a2               #; ac1  = 24
       0     2210        M                                           #; (f:fpu) ft4  <-- 24.0
       0     2211        M 0x800008d4 addi    a1, a1, -1             #; a1  = 1, (wrb) a1  <-- 0
                         M 0x800008cc fmul.d  ft4, ft4, ft3          #; ft4  = 24.0, ft3  = 1.4142
       0     2212        M 0x800008d8 addi    a3, a3, 1              #; a3  = 24, (wrb) a3  <-- 25
       0     2213        M 0x800008dc bnez    a1, pc - 52            #; a1  = 0, not taken
       0     2214        M                                           #; (f:fpu) ft4  <-- 33.9408000
       0     2215        M 0x800008d0 fsgnj.d ft0, ft4, ft4          #; ft4  = 33.9408000, ft4  = 33.9408000
       0     2216        M                                           #; (f:fpu) ft0  <-- 33.9408000
       0     2226        M 0x800008e4 ret                            #; ra  = 0x800006c0, goto 0x800006c0
                         M 0x800008e0 csrrci  a0, ssr, 1             #; 
       0     2239        M 0x800006c0 mv      a0, s1                 #; s1  = 0x00100000, (wrb) a0  <-- 0x00100000
       0     2240        M 0x800006c4 mv      a1, s0                 #; s0  = 25, (wrb) a1  <-- 25
       0     2241        M 0x800006c8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x800006c8
       0     2242        M 0x800006cc jalr    ra, ra, 544            #; ra  = 0x800006c8, (wrb) ra  <-- 0x800006d0, goto 0x800008e8
       0     2243        M 0x800008e8 li      a2, 1                  #; (wrb) a2  <-- 1
       0     2244        M 0x800008ec blt     a1, a2, pc + 68        #; a1  = 25, a2  = 1, not taken
       0     2245        M 0x800008f0 addi    a2, a1, -1             #; a1  = 25, (wrb) a2  <-- 24
       0     2246        M 0x800008f4 slli    a5, a2, 3              #; a2  = 24, (wrb) a5  <-- 192
       0     2247        M 0x800008f8 add     a4, a5, a0             #; a5  = 192, a0  = 0x00100000, (wrb) a4  <-- 0x001000c0
       0     2248        M 0x800008fc srli    a3, a0, 20             #; a0  = 0x00100000, (wrb) a3  <-- 1
       0     2262        M 0x80000900 snez    a3, a3                 #; a3  = 1, (wrb) a3  <-- 1
       0     2263        M 0x80000904 bgeu    a4, a5, pc + 52        #; a4  = 0x001000c0, a5  = 192, taken, goto 0x80000938
       0     2285        M 0x80000938 lui     a5, 0x120              #; (wrb) a5  <-- 0x00120000
       0     2286        M 0x8000093c addi    a5, a5, 1              #; a5  = 0x00120000, (wrb) a5  <-- 0x00120001
       0     2297        M 0x80000940 sltu    a4, a4, a5             #; a4  = 0x001000c0, a5  = 0x00120001, (wrb) a4  <-- 1
       0     2298        M 0x80000944 and     a3, a3, a4             #; a3  = 1, a4  = 1, (wrb) a3  <-- 1
       0     2299        M 0x80000948 beqz    a3, pc - 52            #; a3  = 1, not taken
       0     2300        M 0x8000094c li      a3, 8                  #; (wrb) a3  <-- 8
       0     2312        M 0x80000950 li      a4, 64                 #; (wrb) a4  <-- 64
       0     2313        M 0x80000954 li      a5, 192                #; (wrb) a5  <-- 192
       0     2314        M 0x80000958 scfgw   a2, a4                 #; a2  = 24, a4  = 64
       0     2315        M 0x8000095c scfgw   a3, a5                 #; a3  = 8, a5  = 192
       0     2324        M 0x80000960 li      a2, 32                 #; (wrb) a2  <-- 32
       0     2325        M 0x80000964 scfgw   zero, a2               #; a2  = 32
       0     2326        M 0x80000968 scfgwi  a0, 768                #; a0  = 0x00100000
       0     2328        M 0x8000096c csrrsi  a0, ssr, 1             #; 
       0     2337        M 0x80000974 addi    a1, a1, -1             #; a1  = 25, (wrb) a1  <-- 24
                         M 0x80000970 fcvt.d.w fa0, zero             #; ac1  = 0
       0     2338        M                                           #; (f:fpu) fa0  <-- 0.0
       0     2339        M 0x8000097c bnez    a1, pc - 8             #; a1  = 24, taken, goto 0x80000974
       0     2340        M 0x80000974 addi    a1, a1, -1             #; a1  = 24, (wrb) a1  <-- 23
                         M 0x80000978 fmadd.d fa0, ft0, ft0, fa0     #; ft0  = 0.0, ft0  = 0.0, fa0  = 0.0
       0     2342        M 0x8000097c bnez    a1, pc - 8             #; a1  = 23, taken, goto 0x80000974
       0     2343        M 0x80000974 addi    a1, a1, -1             #; a1  = 23, (wrb) a1  <-- 22
                         M                                           #; (f:fpu) fa0  <-- 0.0
       0     2344        M 0x80000978 fmadd.d fa0, ft0, ft0, fa0     #; ft0  = 1.4142, ft0  = 1.4142, fa0  = 0.0
       0     2345        M 0x8000097c bnez    a1, pc - 8             #; a1  = 22, taken, goto 0x80000974
       0     2346        M 0x80000974 addi    a1, a1, -1             #; a1  = 22, (wrb) a1  <-- 21
       0     2347        M                                           #; (f:fpu) fa0  <-- 1.9999616
       0     2348        M 0x8000097c bnez    a1, pc - 8             #; a1  = 21, taken, goto 0x80000974
                         M 0x80000978 fmadd.d fa0, ft0, ft0, fa0     #; ft0  = 2.8284, ft0  = 2.8284, fa0  = 1.9999616
       0     2349        M 0x80000974 addi    a1, a1, -1             #; a1  = 21, (wrb) a1  <-- 20
       0     2351        M 0x8000097c bnez    a1, pc - 8             #; a1  = 20, taken, goto 0x80000974
                         M                                           #; (f:fpu) fa0  <-- 9.9998082
       0     2352        M 0x80000974 addi    a1, a1, -1             #; a1  = 20, (wrb) a1  <-- 19
                         M 0x80000978 fmadd.d fa0, ft0, ft0, fa0     #; ft0  = 4.2426000, ft0  = 4.2426000, fa0  = 9.9998082
       0     2354        M 0x8000097c bnez    a1, pc - 8             #; a1  = 19, taken, goto 0x80000974
       0     2355        M 0x80000974 addi    a1, a1, -1             #; a1  = 19, (wrb) a1  <-- 18
                         M                                           #; (f:fpu) fa0  <-- 27.9994630
       0     2356        M 0x80000978 fmadd.d fa0, ft0, ft0, fa0     #; ft0  = 5.6568, ft0  = 5.6568, fa0  = 27.9994630
       0     2357        M 0x8000097c bnez    a1, pc - 8             #; a1  = 18, taken, goto 0x80000974
       0     2358        M 0x80000974 addi    a1, a1, -1             #; a1  = 18, (wrb) a1  <-- 17
       0     2359        M                                           #; (f:fpu) fa0  <-- 59.9988492
       0     2360        M 0x8000097c bnez    a1, pc - 8             #; a1  = 17, taken, goto 0x80000974
                         M 0x80000978 fmadd.d fa0, ft0, ft0, fa0     #; ft0  = 7.071, ft0  = 7.071, fa0  = 59.9988492
       0     2361        M 0x80000974 addi    a1, a1, -1             #; a1  = 17, (wrb) a1  <-- 16
       0     2363        M 0x8000097c bnez    a1, pc - 8             #; a1  = 16, taken, goto 0x80000974
                         M                                           #; (f:fpu) fa0  <-- 109.9978902
       0     2364        M 0x80000974 addi    a1, a1, -1             #; a1  = 16, (wrb) a1  <-- 15
                         M 0x80000978 fmadd.d fa0, ft0, ft0, fa0     #; ft0  = 8.4852000, ft0  = 8.4852000, fa0  = 109.9978902
       0     2366        M 0x8000097c bnez    a1, pc - 8             #; a1  = 15, taken, goto 0x80000974
       0     2367        M 0x80000974 addi    a1, a1, -1             #; a1  = 15, (wrb) a1  <-- 14
                         M                                           #; (f:fpu) fa0  <-- 181.9965092
       0     2368        M 0x80000978 fmadd.d fa0, ft0, ft0, fa0     #; ft0  = 9.8994, ft0  = 9.8994, fa0  = 181.9965092
       0     2369        M 0x8000097c bnez    a1, pc - 8             #; a1  = 14, taken, goto 0x80000974
       0     2370        M 0x80000974 addi    a1, a1, -1             #; a1  = 14, (wrb) a1  <-- 13
       0     2371        M                                           #; (f:fpu) fa0  <-- 279.9946296
       0     2372        M 0x8000097c bnez    a1, pc - 8             #; a1  = 13, taken, goto 0x80000974
                         M 0x80000978 fmadd.d fa0, ft0, ft0, fa0     #; ft0  = 11.3136, ft0  = 11.3136, fa0  = 279.9946296
       0     2373        M 0x80000974 addi    a1, a1, -1             #; a1  = 13, (wrb) a1  <-- 12
       0     2375        M 0x8000097c bnez    a1, pc - 8             #; a1  = 12, taken, goto 0x80000974
                         M                                           #; (f:fpu) fa0  <-- 407.9921746
       0     2376        M 0x80000974 addi    a1, a1, -1             #; a1  = 12, (wrb) a1  <-- 11
                         M 0x80000978 fmadd.d fa0, ft0, ft0, fa0     #; ft0  = 12.7278000, ft0  = 12.7278000, fa0  = 407.9921746
       0     2378        M 0x8000097c bnez    a1, pc - 8             #; a1  = 11, taken, goto 0x80000974
       0     2379        M 0x80000974 addi    a1, a1, -1             #; a1  = 11, (wrb) a1  <-- 10
                         M                                           #; (f:fpu) fa0  <-- 569.9890674
       0     2380        M 0x80000978 fmadd.d fa0, ft0, ft0, fa0     #; ft0  = 14.142, ft0  = 14.142, fa0  = 569.9890674
       0     2381        M 0x8000097c bnez    a1, pc - 8             #; a1  = 10, taken, goto 0x80000974
       0     2382        M 0x80000974 addi    a1, a1, -1             #; a1  = 10, (wrb) a1  <-- 9
       0     2383        M                                           #; (f:fpu) fa0  <-- 769.9852314
       0     2384        M 0x8000097c bnez    a1, pc - 8             #; a1  = 9, taken, goto 0x80000974
                         M 0x80000978 fmadd.d fa0, ft0, ft0, fa0     #; ft0  = 15.5562000, ft0  = 15.5562000, fa0  = 769.9852314
       0     2385        M 0x80000974 addi    a1, a1, -1             #; a1  = 9, (wrb) a1  <-- 8
       0     2387        M 0x8000097c bnez    a1, pc - 8             #; a1  = 8, taken, goto 0x80000974
                         M                                           #; (f:fpu) fa0  <-- 1011.9805898
       0     2388        M 0x80000974 addi    a1, a1, -1             #; a1  = 8, (wrb) a1  <-- 7
                         M 0x80000978 fmadd.d fa0, ft0, ft0, fa0     #; ft0  = 16.9704000, ft0  = 16.9704000, fa0  = 1011.9805898
       0     2390        M 0x8000097c bnez    a1, pc - 8             #; a1  = 7, taken, goto 0x80000974
       0     2391        M 0x80000974 addi    a1, a1, -1             #; a1  = 7, (wrb) a1  <-- 6
                         M                                           #; (f:fpu) fa0  <-- 1299.9750660
       0     2392        M 0x80000978 fmadd.d fa0, ft0, ft0, fa0     #; ft0  = 18.3846, ft0  = 18.3846, fa0  = 1299.9750660
       0     2393        M 0x8000097c bnez    a1, pc - 8             #; a1  = 6, taken, goto 0x80000974
       0     2394        M 0x80000974 addi    a1, a1, -1             #; a1  = 6, (wrb) a1  <-- 5
       0     2395        M                                           #; (f:fpu) fa0  <-- 1637.9685832
       0     2396        M 0x8000097c bnez    a1, pc - 8             #; a1  = 5, taken, goto 0x80000974
                         M 0x80000978 fmadd.d fa0, ft0, ft0, fa0     #; ft0  = 19.7988, ft0  = 19.7988, fa0  = 1637.9685832
       0     2397        M 0x80000974 addi    a1, a1, -1             #; a1  = 5, (wrb) a1  <-- 4
       0     2399        M 0x8000097c bnez    a1, pc - 8             #; a1  = 4, taken, goto 0x80000974
                         M                                           #; (f:fpu) fa0  <-- 2029.9610646
       0     2400        M 0x80000974 addi    a1, a1, -1             #; a1  = 4, (wrb) a1  <-- 3
                         M 0x80000978 fmadd.d fa0, ft0, ft0, fa0     #; ft0  = 21.2130000, ft0  = 21.2130000, fa0  = 2029.9610646
       0     2402        M 0x8000097c bnez    a1, pc - 8             #; a1  = 3, taken, goto 0x80000974
       0     2403        M 0x80000974 addi    a1, a1, -1             #; a1  = 3, (wrb) a1  <-- 2
                         M                                           #; (f:fpu) fa0  <-- 2479.9524336
       0     2404        M 0x80000978 fmadd.d fa0, ft0, ft0, fa0     #; ft0  = 22.6272, ft0  = 22.6272, fa0  = 2479.9524336
       0     2405        M 0x8000097c bnez    a1, pc - 8             #; a1  = 2, taken, goto 0x80000974
       0     2406        M 0x80000974 addi    a1, a1, -1             #; a1  = 2, (wrb) a1  <-- 1
       0     2407        M                                           #; (f:fpu) fa0  <-- 2991.9426134
       0     2408        M 0x8000097c bnez    a1, pc - 8             #; a1  = 1, taken, goto 0x80000974
                         M 0x80000978 fmadd.d fa0, ft0, ft0, fa0     #; ft0  = 24.0414, ft0  = 24.0414, fa0  = 2991.9426134
       0     2409        M 0x80000974 addi    a1, a1, -1             #; a1  = 1, (wrb) a1  <-- 0
       0     2411        M 0x8000097c bnez    a1, pc - 8             #; a1  = 0, not taken
                         M                                           #; (f:fpu) fa0  <-- 3569.9315274
       0     2412        M 0x80000978 fmadd.d fa0, ft0, ft0, fa0     #; ft0  = 25.4556000, ft0  = 25.4556000, fa0  = 3569.9315274
       0     2415        M                                           #; (f:fpu) fa0  <-- 4217.9190988
       0     2416        M 0x80000978 fmadd.d fa0, ft0, ft0, fa0     #; ft0  = 26.8698000, ft0  = 26.8698000, fa0  = 4217.9190988
       0     2419        M                                           #; (f:fpu) fa0  <-- 4939.9052508
       0     2420        M 0x80000978 fmadd.d fa0, ft0, ft0, fa0     #; ft0  = 28.284, ft0  = 28.284, fa0  = 4939.9052508
       0     2423        M                                           #; (f:fpu) fa0  <-- 5739.8899068
       0     2424        M 0x80000984 ret                            #; ra  = 0x800006d0, goto 0x800006d0
                         M 0x80000978 fmadd.d fa0, ft0, ft0, fa0     #; ft0  = 29.6982000, ft0  = 29.6982000, fa0  = 5739.8899068
       0     2427        M                                           #; (f:fpu) fa0  <-- 6621.8729900
       0     2428        M 0x80000978 fmadd.d fa0, ft0, ft0, fa0     #; ft0  = 31.1124000, ft0  = 31.1124000, fa0  = 6621.8729900
       0     2431        M                                           #; (f:fpu) fa0  <-- 7589.8544238
       0     2432        M 0x80000978 fmadd.d fa0, ft0, ft0, fa0     #; ft0  = 32.5266000, ft0  = 32.5266000, fa0  = 7589.8544238
       0     2435        M                                           #; (f:fpu) fa0  <-- 8647.8341314
       0     2436        M 0x80000978 fmadd.d fa0, ft0, ft0, fa0     #; ft0  = 33.9408000, ft0  = 33.9408000, fa0  = 8647.8341314
       0     2437        M 0x800006d0 li      a0, 1                  #; (wrb) a0  <-- 1
                         M 0x80000980 csrrci  a0, ssr, 1             #; 
       0     2439        M 0x800006d8 blt     s0, a0, pc + 52        #; s0  = 25, a0  = 1, not taken
                         M                                           #; (f:fpu) fa0  <-- 9799.8120360
       0     2440        M 0x800006dc li      a0, 0                  #; (wrb) a0  <-- 0
                         M 0x800006d4 fsgnj.d fs0, fa0, fa0          #; fa0  = 9799.8120360, fa0  = 9799.8120360
       0     2441        M                                           #; (f:fpu) fs0  <-- 9799.8120360
       0     2450        M 0x800006e4 mv      a1, s1                 #; s1  = 0x00100000, (wrb) a1  <-- 0x00100000
                         M 0x800006e0 fcvt.d.w fs2, zero             #; ac1  = 0
       0     2451        M 0x800006e8 j       pc + 0x10              #; goto 0x800006f8
                         M                                           #; (f:fpu) fs2  <-- 0.0
       0     2461        M 0x800006f8 andi    a2, a0, 1              #; a0  = 0, (wrb) a2  <-- 0
       0     2462        M 0x800006fc bnez    a2, pc - 16            #; a2  = 0, not taken
       0     2476        M 0x80000708 j       pc - 0x1c              #; goto 0x800006ec
                         M 0x80000700 fld     ft0, 0(a1)             #; ft0  <~~ Doub[0x00100000]
       0     2477        M 0x800006ec addi    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
                         M                                           #; (f:lsu) ft0  <-- 0.0
       0     2478        M 0x800006f0 addi    a1, a1, 8              #; a1  = 0x00100000, (wrb) a1  <-- 0x00100008
                         M 0x80000704 fadd.d  fs2, ft0, fs2          #; ft0  = 0.0, fs2  = 0.0
       0     2479        M 0x800006f4 beq     s0, a0, pc + 28        #; s0  = 25, a0  = 1, not taken
       0     2480        M 0x800006f8 andi    a2, a0, 1              #; a0  = 1, (wrb) a2  <-- 1
       0     2481        M 0x800006fc bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x800006ec
                         M                                           #; (f:fpu) fs2  <-- 0.0
       0     2482        M 0x800006ec addi    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 2
       0     2483        M 0x800006f0 addi    a1, a1, 8              #; a1  = 0x00100008, (wrb) a1  <-- 0x00100010
       0     2484        M 0x800006f4 beq     s0, a0, pc + 28        #; s0  = 25, a0  = 2, not taken
       0     2485        M 0x800006f8 andi    a2, a0, 1              #; a0  = 2, (wrb) a2  <-- 0
       0     2486        M 0x800006fc bnez    a2, pc - 16            #; a2  = 0, not taken
       0     2489        M 0x80000708 j       pc - 0x1c              #; goto 0x800006ec
                         M 0x80000700 fld     ft0, 0(a1)             #; ft0  <~~ Doub[0x00100010]
       0     2490        M 0x800006ec addi    a0, a0, 1              #; a0  = 2, (wrb) a0  <-- 3
                         M                                           #; (f:lsu) ft0  <-- 2.8284
       0     2491        M 0x800006f0 addi    a1, a1, 8              #; a1  = 0x00100010, (wrb) a1  <-- 0x00100018
                         M 0x80000704 fadd.d  fs2, ft0, fs2          #; ft0  = 2.8284, fs2  = 0.0
       0     2492        M 0x800006f4 beq     s0, a0, pc + 28        #; s0  = 25, a0  = 3, not taken
       0     2493        M 0x800006f8 andi    a2, a0, 1              #; a0  = 3, (wrb) a2  <-- 1
       0     2494        M 0x800006fc bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x800006ec
                         M                                           #; (f:fpu) fs2  <-- 2.8284
       0     2495        M 0x800006ec addi    a0, a0, 1              #; a0  = 3, (wrb) a0  <-- 4
       0     2496        M 0x800006f0 addi    a1, a1, 8              #; a1  = 0x00100018, (wrb) a1  <-- 0x00100020
       0     2497        M 0x800006f4 beq     s0, a0, pc + 28        #; s0  = 25, a0  = 4, not taken
       0     2498        M 0x800006f8 andi    a2, a0, 1              #; a0  = 4, (wrb) a2  <-- 0
       0     2499        M 0x800006fc bnez    a2, pc - 16            #; a2  = 0, not taken
       0     2502        M 0x80000708 j       pc - 0x1c              #; goto 0x800006ec
                         M 0x80000700 fld     ft0, 0(a1)             #; ft0  <~~ Doub[0x00100020]
       0     2503        M 0x800006ec addi    a0, a0, 1              #; a0  = 4, (wrb) a0  <-- 5
                         M                                           #; (f:lsu) ft0  <-- 5.6568
       0     2504        M 0x800006f0 addi    a1, a1, 8              #; a1  = 0x00100020, (wrb) a1  <-- 0x00100028
                         M 0x80000704 fadd.d  fs2, ft0, fs2          #; ft0  = 5.6568, fs2  = 2.8284
       0     2505        M 0x800006f4 beq     s0, a0, pc + 28        #; s0  = 25, a0  = 5, not taken
       0     2506        M 0x800006f8 andi    a2, a0, 1              #; a0  = 5, (wrb) a2  <-- 1
       0     2507        M 0x800006fc bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x800006ec
                         M                                           #; (f:fpu) fs2  <-- 8.4852000
       0     2508        M 0x800006ec addi    a0, a0, 1              #; a0  = 5, (wrb) a0  <-- 6
       0     2509        M 0x800006f0 addi    a1, a1, 8              #; a1  = 0x00100028, (wrb) a1  <-- 0x00100030
       0     2510        M 0x800006f4 beq     s0, a0, pc + 28        #; s0  = 25, a0  = 6, not taken
       0     2511        M 0x800006f8 andi    a2, a0, 1              #; a0  = 6, (wrb) a2  <-- 0
       0     2512        M 0x800006fc bnez    a2, pc - 16            #; a2  = 0, not taken
       0     2515        M 0x80000708 j       pc - 0x1c              #; goto 0x800006ec
                         M 0x80000700 fld     ft0, 0(a1)             #; ft0  <~~ Doub[0x00100030]
       0     2516        M 0x800006ec addi    a0, a0, 1              #; a0  = 6, (wrb) a0  <-- 7
                         M                                           #; (f:lsu) ft0  <-- 8.4852000
       0     2517        M 0x800006f0 addi    a1, a1, 8              #; a1  = 0x00100030, (wrb) a1  <-- 0x00100038
                         M 0x80000704 fadd.d  fs2, ft0, fs2          #; ft0  = 8.4852000, fs2  = 8.4852000
       0     2518        M 0x800006f4 beq     s0, a0, pc + 28        #; s0  = 25, a0  = 7, not taken
       0     2519        M 0x800006f8 andi    a2, a0, 1              #; a0  = 7, (wrb) a2  <-- 1
       0     2520        M 0x800006fc bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x800006ec
                         M                                           #; (f:fpu) fs2  <-- 16.9704000
       0     2521        M 0x800006ec addi    a0, a0, 1              #; a0  = 7, (wrb) a0  <-- 8
       0     2522        M 0x800006f0 addi    a1, a1, 8              #; a1  = 0x00100038, (wrb) a1  <-- 0x00100040
       0     2523        M 0x800006f4 beq     s0, a0, pc + 28        #; s0  = 25, a0  = 8, not taken
       0     2524        M 0x800006f8 andi    a2, a0, 1              #; a0  = 8, (wrb) a2  <-- 0
       0     2525        M 0x800006fc bnez    a2, pc - 16            #; a2  = 0, not taken
       0     2528        M 0x80000708 j       pc - 0x1c              #; goto 0x800006ec
                         M 0x80000700 fld     ft0, 0(a1)             #; ft0  <~~ Doub[0x00100040]
       0     2529        M 0x800006ec addi    a0, a0, 1              #; a0  = 8, (wrb) a0  <-- 9
                         M                                           #; (f:lsu) ft0  <-- 11.3136
       0     2530        M 0x800006f0 addi    a1, a1, 8              #; a1  = 0x00100040, (wrb) a1  <-- 0x00100048
                         M 0x80000704 fadd.d  fs2, ft0, fs2          #; ft0  = 11.3136, fs2  = 16.9704000
       0     2531        M 0x800006f4 beq     s0, a0, pc + 28        #; s0  = 25, a0  = 9, not taken
       0     2532        M 0x800006f8 andi    a2, a0, 1              #; a0  = 9, (wrb) a2  <-- 1
       0     2533        M 0x800006fc bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x800006ec
                         M                                           #; (f:fpu) fs2  <-- 28.284
       0     2534        M 0x800006ec addi    a0, a0, 1              #; a0  = 9, (wrb) a0  <-- 10
       0     2535        M 0x800006f0 addi    a1, a1, 8              #; a1  = 0x00100048, (wrb) a1  <-- 0x00100050
       0     2536        M 0x800006f4 beq     s0, a0, pc + 28        #; s0  = 25, a0  = 10, not taken
       0     2537        M 0x800006f8 andi    a2, a0, 1              #; a0  = 10, (wrb) a2  <-- 0
       0     2538        M 0x800006fc bnez    a2, pc - 16            #; a2  = 0, not taken
       0     2541        M 0x80000708 j       pc - 0x1c              #; goto 0x800006ec
                         M 0x80000700 fld     ft0, 0(a1)             #; ft0  <~~ Doub[0x00100050]
       0     2542        M 0x800006ec addi    a0, a0, 1              #; a0  = 10, (wrb) a0  <-- 11
                         M                                           #; (f:lsu) ft0  <-- 14.142
       0     2543        M 0x800006f0 addi    a1, a1, 8              #; a1  = 0x00100050, (wrb) a1  <-- 0x00100058
                         M 0x80000704 fadd.d  fs2, ft0, fs2          #; ft0  = 14.142, fs2  = 28.284
       0     2544        M 0x800006f4 beq     s0, a0, pc + 28        #; s0  = 25, a0  = 11, not taken
       0     2545        M 0x800006f8 andi    a2, a0, 1              #; a0  = 11, (wrb) a2  <-- 1
       0     2546        M 0x800006fc bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x800006ec
                         M                                           #; (f:fpu) fs2  <-- 42.426
       0     2547        M 0x800006ec addi    a0, a0, 1              #; a0  = 11, (wrb) a0  <-- 12
       0     2548        M 0x800006f0 addi    a1, a1, 8              #; a1  = 0x00100058, (wrb) a1  <-- 0x00100060
       0     2549        M 0x800006f4 beq     s0, a0, pc + 28        #; s0  = 25, a0  = 12, not taken
       0     2550        M 0x800006f8 andi    a2, a0, 1              #; a0  = 12, (wrb) a2  <-- 0
       0     2551        M 0x800006fc bnez    a2, pc - 16            #; a2  = 0, not taken
       0     2554        M 0x80000708 j       pc - 0x1c              #; goto 0x800006ec
                         M 0x80000700 fld     ft0, 0(a1)             #; ft0  <~~ Doub[0x00100060]
       0     2555        M 0x800006ec addi    a0, a0, 1              #; a0  = 12, (wrb) a0  <-- 13
                         M                                           #; (f:lsu) ft0  <-- 16.9704000
       0     2556        M 0x800006f0 addi    a1, a1, 8              #; a1  = 0x00100060, (wrb) a1  <-- 0x00100068
                         M 0x80000704 fadd.d  fs2, ft0, fs2          #; ft0  = 16.9704000, fs2  = 42.426
       0     2557        M 0x800006f4 beq     s0, a0, pc + 28        #; s0  = 25, a0  = 13, not taken
       0     2558        M 0x800006f8 andi    a2, a0, 1              #; a0  = 13, (wrb) a2  <-- 1
       0     2559        M 0x800006fc bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x800006ec
                         M                                           #; (f:fpu) fs2  <-- 59.3964
       0     2560        M 0x800006ec addi    a0, a0, 1              #; a0  = 13, (wrb) a0  <-- 14
       0     2561        M 0x800006f0 addi    a1, a1, 8              #; a1  = 0x00100068, (wrb) a1  <-- 0x00100070
       0     2562        M 0x800006f4 beq     s0, a0, pc + 28        #; s0  = 25, a0  = 14, not taken
       0     2563        M 0x800006f8 andi    a2, a0, 1              #; a0  = 14, (wrb) a2  <-- 0
       0     2564        M 0x800006fc bnez    a2, pc - 16            #; a2  = 0, not taken
       0     2567        M 0x80000708 j       pc - 0x1c              #; goto 0x800006ec
                         M 0x80000700 fld     ft0, 0(a1)             #; ft0  <~~ Doub[0x00100070]
       0     2568        M 0x800006ec addi    a0, a0, 1              #; a0  = 14, (wrb) a0  <-- 15
                         M                                           #; (f:lsu) ft0  <-- 19.7988
       0     2569        M 0x800006f0 addi    a1, a1, 8              #; a1  = 0x00100070, (wrb) a1  <-- 0x00100078
                         M 0x80000704 fadd.d  fs2, ft0, fs2          #; ft0  = 19.7988, fs2  = 59.3964
       0     2570        M 0x800006f4 beq     s0, a0, pc + 28        #; s0  = 25, a0  = 15, not taken
       0     2571        M 0x800006f8 andi    a2, a0, 1              #; a0  = 15, (wrb) a2  <-- 1
       0     2572        M 0x800006fc bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x800006ec
                         M                                           #; (f:fpu) fs2  <-- 79.1952
       0     2573        M 0x800006ec addi    a0, a0, 1              #; a0  = 15, (wrb) a0  <-- 16
       0     2574        M 0x800006f0 addi    a1, a1, 8              #; a1  = 0x00100078, (wrb) a1  <-- 0x00100080
       0     2575        M 0x800006f4 beq     s0, a0, pc + 28        #; s0  = 25, a0  = 16, not taken
       0     2576        M 0x800006f8 andi    a2, a0, 1              #; a0  = 16, (wrb) a2  <-- 0
       0     2577        M 0x800006fc bnez    a2, pc - 16            #; a2  = 0, not taken
       0     2580        M 0x80000708 j       pc - 0x1c              #; goto 0x800006ec
                         M 0x80000700 fld     ft0, 0(a1)             #; ft0  <~~ Doub[0x00100080]
       0     2581        M 0x800006ec addi    a0, a0, 1              #; a0  = 16, (wrb) a0  <-- 17
                         M                                           #; (f:lsu) ft0  <-- 22.6272
       0     2582        M 0x800006f0 addi    a1, a1, 8              #; a1  = 0x00100080, (wrb) a1  <-- 0x00100088
                         M 0x80000704 fadd.d  fs2, ft0, fs2          #; ft0  = 22.6272, fs2  = 79.1952
       0     2583        M 0x800006f4 beq     s0, a0, pc + 28        #; s0  = 25, a0  = 17, not taken
       0     2584        M 0x800006f8 andi    a2, a0, 1              #; a0  = 17, (wrb) a2  <-- 1
       0     2585        M 0x800006fc bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x800006ec
                         M                                           #; (f:fpu) fs2  <-- 101.8224
       0     2586        M 0x800006ec addi    a0, a0, 1              #; a0  = 17, (wrb) a0  <-- 18
       0     2587        M 0x800006f0 addi    a1, a1, 8              #; a1  = 0x00100088, (wrb) a1  <-- 0x00100090
       0     2588        M 0x800006f4 beq     s0, a0, pc + 28        #; s0  = 25, a0  = 18, not taken
       0     2589        M 0x800006f8 andi    a2, a0, 1              #; a0  = 18, (wrb) a2  <-- 0
       0     2590        M 0x800006fc bnez    a2, pc - 16            #; a2  = 0, not taken
       0     2593        M 0x80000708 j       pc - 0x1c              #; goto 0x800006ec
                         M 0x80000700 fld     ft0, 0(a1)             #; ft0  <~~ Doub[0x00100090]
       0     2594        M 0x800006ec addi    a0, a0, 1              #; a0  = 18, (wrb) a0  <-- 19
                         M                                           #; (f:lsu) ft0  <-- 25.4556000
       0     2595        M 0x800006f0 addi    a1, a1, 8              #; a1  = 0x00100090, (wrb) a1  <-- 0x00100098
                         M 0x80000704 fadd.d  fs2, ft0, fs2          #; ft0  = 25.4556000, fs2  = 101.8224
       0     2596        M 0x800006f4 beq     s0, a0, pc + 28        #; s0  = 25, a0  = 19, not taken
       0     2597        M 0x800006f8 andi    a2, a0, 1              #; a0  = 19, (wrb) a2  <-- 1
       0     2598        M 0x800006fc bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x800006ec
                         M                                           #; (f:fpu) fs2  <-- 127.2780000
       0     2599        M 0x800006ec addi    a0, a0, 1              #; a0  = 19, (wrb) a0  <-- 20
       0     2600        M 0x800006f0 addi    a1, a1, 8              #; a1  = 0x00100098, (wrb) a1  <-- 0x001000a0
       0     2601        M 0x800006f4 beq     s0, a0, pc + 28        #; s0  = 25, a0  = 20, not taken
       0     2602        M 0x800006f8 andi    a2, a0, 1              #; a0  = 20, (wrb) a2  <-- 0
       0     2603        M 0x800006fc bnez    a2, pc - 16            #; a2  = 0, not taken
       0     2606        M 0x80000708 j       pc - 0x1c              #; goto 0x800006ec
                         M 0x80000700 fld     ft0, 0(a1)             #; ft0  <~~ Doub[0x001000a0]
       0     2607        M 0x800006ec addi    a0, a0, 1              #; a0  = 20, (wrb) a0  <-- 21
                         M                                           #; (f:lsu) ft0  <-- 28.284
       0     2608        M 0x800006f0 addi    a1, a1, 8              #; a1  = 0x001000a0, (wrb) a1  <-- 0x001000a8
                         M 0x80000704 fadd.d  fs2, ft0, fs2          #; ft0  = 28.284, fs2  = 127.2780000
       0     2609        M 0x800006f4 beq     s0, a0, pc + 28        #; s0  = 25, a0  = 21, not taken
       0     2610        M 0x800006f8 andi    a2, a0, 1              #; a0  = 21, (wrb) a2  <-- 1
       0     2611        M 0x800006fc bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x800006ec
                         M                                           #; (f:fpu) fs2  <-- 155.5620000
       0     2612        M 0x800006ec addi    a0, a0, 1              #; a0  = 21, (wrb) a0  <-- 22
       0     2613        M 0x800006f0 addi    a1, a1, 8              #; a1  = 0x001000a8, (wrb) a1  <-- 0x001000b0
       0     2614        M 0x800006f4 beq     s0, a0, pc + 28        #; s0  = 25, a0  = 22, not taken
       0     2615        M 0x800006f8 andi    a2, a0, 1              #; a0  = 22, (wrb) a2  <-- 0
       0     2616        M 0x800006fc bnez    a2, pc - 16            #; a2  = 0, not taken
       0     2619        M 0x80000708 j       pc - 0x1c              #; goto 0x800006ec
                         M 0x80000700 fld     ft0, 0(a1)             #; ft0  <~~ Doub[0x001000b0]
       0     2620        M 0x800006ec addi    a0, a0, 1              #; a0  = 22, (wrb) a0  <-- 23
                         M                                           #; (f:lsu) ft0  <-- 31.1124000
       0     2621        M 0x800006f0 addi    a1, a1, 8              #; a1  = 0x001000b0, (wrb) a1  <-- 0x001000b8
                         M 0x80000704 fadd.d  fs2, ft0, fs2          #; ft0  = 31.1124000, fs2  = 155.5620000
       0     2622        M 0x800006f4 beq     s0, a0, pc + 28        #; s0  = 25, a0  = 23, not taken
       0     2623        M 0x800006f8 andi    a2, a0, 1              #; a0  = 23, (wrb) a2  <-- 1
       0     2624        M 0x800006fc bnez    a2, pc - 16            #; a2  = 1, taken, goto 0x800006ec
                         M                                           #; (f:fpu) fs2  <-- 186.6744
       0     2625        M 0x800006ec addi    a0, a0, 1              #; a0  = 23, (wrb) a0  <-- 24
       0     2626        M 0x800006f0 addi    a1, a1, 8              #; a1  = 0x001000b8, (wrb) a1  <-- 0x001000c0
       0     2627        M 0x800006f4 beq     s0, a0, pc + 28        #; s0  = 25, a0  = 24, not taken
       0     2628        M 0x800006f8 andi    a2, a0, 1              #; a0  = 24, (wrb) a2  <-- 0
       0     2629        M 0x800006fc bnez    a2, pc - 16            #; a2  = 0, not taken
       0     2632        M 0x80000708 j       pc - 0x1c              #; goto 0x800006ec
                         M 0x80000700 fld     ft0, 0(a1)             #; ft0  <~~ Doub[0x001000c0]
       0     2633        M 0x800006ec addi    a0, a0, 1              #; a0  = 24, (wrb) a0  <-- 25
                         M                                           #; (f:lsu) ft0  <-- 33.9408000
       0     2634        M 0x800006f0 addi    a1, a1, 8              #; a1  = 0x001000c0, (wrb) a1  <-- 0x001000c8
                         M 0x80000704 fadd.d  fs2, ft0, fs2          #; ft0  = 33.9408000, fs2  = 186.6744
       0     2635        M 0x800006f4 beq     s0, a0, pc + 28        #; s0  = 25, a0  = 25, taken, goto 0x80000710
       0     2637        M                                           #; (f:fpu) fs2  <-- 220.6152
       0     2647        M 0x80000710 mv      a0, s1                 #; s1  = 0x00100000, (wrb) a0  <-- 0x00100000
       0     2648        M 0x80000714 mv      a1, s0                 #; s0  = 25, (wrb) a1  <-- 25
       0     2649        M 0x80000718 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000718
       0     2650        M 0x8000071c jalr    ra, ra, 624            #; ra  = 0x80000718, (wrb) ra  <-- 0x80000720, goto 0x80000988
       0     2651        M 0x80000988 li      a2, 1                  #; (wrb) a2  <-- 1
       0     2652        M 0x8000098c blt     a1, a2, pc + 84        #; a1  = 25, a2  = 1, not taken
       0     2653        M 0x80000990 addi    a1, a1, -1             #; a1  = 25, (wrb) a1  <-- 24
       0     2654        M 0x80000994 li      a2, 10                 #; (wrb) a2  <-- 10
       0     2655        M 0x80000998 bltu    a1, a2, pc + 8         #; a1  = 24, a2  = 10, not taken
       0     2656        M 0x8000099c li      a1, 10                 #; (wrb) a1  <-- 10
       0     2670        M 0x800009a0 slli    a4, a1, 3              #; a1  = 10, (wrb) a4  <-- 80
       0     2671        M 0x800009a4 add     a3, a4, a0             #; a4  = 80, a0  = 0x00100000, (wrb) a3  <-- 0x00100050
       0     2672        M 0x800009a8 srli    a2, a0, 20             #; a0  = 0x00100000, (wrb) a2  <-- 1
       0     2673        M 0x800009ac snez    a2, a2                 #; a2  = 1, (wrb) a2  <-- 1
       0     2682        M 0x800009b0 bgeu    a3, a4, pc + 56        #; a3  = 0x00100050, a4  = 80, taken, goto 0x800009e8
       0     2705        M 0x800009e8 lui     a4, 0x120              #; (wrb) a4  <-- 0x00120000
       0     2706        M 0x800009ec addi    a4, a4, 1              #; a4  = 0x00120000, (wrb) a4  <-- 0x00120001
       0     2717        M 0x800009f0 sltu    a3, a3, a4             #; a3  = 0x00100050, a4  = 0x00120001, (wrb) a3  <-- 1
       0     2718        M 0x800009f4 and     a2, a2, a3             #; a2  = 1, a3  = 1, (wrb) a2  <-- 1
       0     2719        M 0x800009f8 beqz    a2, pc - 56            #; a2  = 1, not taken
       0     2720        M 0x800009fc li      a2, 8                  #; (wrb) a2  <-- 8
       0     2732        M 0x80000a00 li      a3, 64                 #; (wrb) a3  <-- 64
       0     2733        M 0x80000a04 li      a4, 192                #; (wrb) a4  <-- 192
       0     2734        M 0x80000a08 scfgw   a1, a3                 #; a1  = 10, a3  = 64
       0     2735        M 0x80000a0c scfgw   a2, a4                 #; a2  = 8, a4  = 192
       0     2744        M 0x80000a10 li      a2, 32                 #; (wrb) a2  <-- 32
       0     2745        M 0x80000a14 scfgw   zero, a2               #; a2  = 32
       0     2746        M 0x80000a18 scfgwi  a0, 768                #; a0  = 0x00100000
       0     2748        M 0x80000a1c csrrsi  a0, ssr, 1             #; 
       0     2756        M 0x80000a20 addi    a0, a1, 1              #; a1  = 10, (wrb) a0  <-- 11
       0     2758        M 0x80000a28 addi    a0, a0, -1             #; a0  = 11, (wrb) a0  <-- 10
                         M 0x80000a24 fcvt.d.w fa0, zero             #; ac1  = 0
       0     2759        M                                           #; (f:fpu) fa0  <-- 0.0
       0     2761        M 0x80000a2c fadd.d  fa0, ft0, fa0          #; ft0  = 0.0, fa0  = 0.0
       0     2764        M                                           #; (f:fpu) fa0  <-- 0.0
       0     2768        M 0x80000a30 bnez    a0, pc - 8             #; a0  = 10, taken, goto 0x80000a28
       0     2769        M 0x80000a28 addi    a0, a0, -1             #; a0  = 10, (wrb) a0  <-- 9
       0     2771        M 0x80000a30 bnez    a0, pc - 8             #; a0  = 9, taken, goto 0x80000a28
       0     2772        M 0x80000a28 addi    a0, a0, -1             #; a0  = 9, (wrb) a0  <-- 8
                         M 0x80000a2c fadd.d  fa0, ft0, fa0          #; ft0  = 1.4142, fa0  = 0.0
       0     2774        M 0x80000a30 bnez    a0, pc - 8             #; a0  = 8, taken, goto 0x80000a28
       0     2775        M 0x80000a28 addi    a0, a0, -1             #; a0  = 8, (wrb) a0  <-- 7
                         M                                           #; (f:fpu) fa0  <-- 1.4142
       0     2776        M 0x80000a2c fadd.d  fa0, ft0, fa0          #; ft0  = 2.8284, fa0  = 1.4142
       0     2777        M 0x80000a30 bnez    a0, pc - 8             #; a0  = 7, taken, goto 0x80000a28
       0     2778        M 0x80000a28 addi    a0, a0, -1             #; a0  = 7, (wrb) a0  <-- 6
       0     2779        M                                           #; (f:fpu) fa0  <-- 4.2426000
       0     2780        M 0x80000a30 bnez    a0, pc - 8             #; a0  = 6, taken, goto 0x80000a28
                         M 0x80000a2c fadd.d  fa0, ft0, fa0          #; ft0  = 4.2426000, fa0  = 4.2426000
       0     2781        M 0x80000a28 addi    a0, a0, -1             #; a0  = 6, (wrb) a0  <-- 5
       0     2783        M 0x80000a30 bnez    a0, pc - 8             #; a0  = 5, taken, goto 0x80000a28
                         M                                           #; (f:fpu) fa0  <-- 8.4852000
       0     2784        M 0x80000a28 addi    a0, a0, -1             #; a0  = 5, (wrb) a0  <-- 4
                         M 0x80000a2c fadd.d  fa0, ft0, fa0          #; ft0  = 5.6568, fa0  = 8.4852000
       0     2786        M 0x80000a30 bnez    a0, pc - 8             #; a0  = 4, taken, goto 0x80000a28
       0     2787        M 0x80000a28 addi    a0, a0, -1             #; a0  = 4, (wrb) a0  <-- 3
                         M                                           #; (f:fpu) fa0  <-- 14.142
       0     2788        M 0x80000a2c fadd.d  fa0, ft0, fa0          #; ft0  = 7.071, fa0  = 14.142
       0     2789        M 0x80000a30 bnez    a0, pc - 8             #; a0  = 3, taken, goto 0x80000a28
       0     2790        M 0x80000a28 addi    a0, a0, -1             #; a0  = 3, (wrb) a0  <-- 2
       0     2791        M                                           #; (f:fpu) fa0  <-- 21.213
       0     2792        M 0x80000a30 bnez    a0, pc - 8             #; a0  = 2, taken, goto 0x80000a28
                         M 0x80000a2c fadd.d  fa0, ft0, fa0          #; ft0  = 8.4852000, fa0  = 21.213
       0     2793        M 0x80000a28 addi    a0, a0, -1             #; a0  = 2, (wrb) a0  <-- 1
       0     2795        M 0x80000a30 bnez    a0, pc - 8             #; a0  = 1, taken, goto 0x80000a28
                         M                                           #; (f:fpu) fa0  <-- 29.6982
       0     2796        M 0x80000a28 addi    a0, a0, -1             #; a0  = 1, (wrb) a0  <-- 0
                         M 0x80000a2c fadd.d  fa0, ft0, fa0          #; ft0  = 9.8994, fa0  = 29.6982
       0     2798        M 0x80000a30 bnez    a0, pc - 8             #; a0  = 0, not taken
       0     2799        M                                           #; (f:fpu) fa0  <-- 39.5976
       0     2800        M 0x80000a38 ret                            #; ra  = 0x80000720, goto 0x80000720
                         M 0x80000a2c fadd.d  fa0, ft0, fa0          #; ft0  = 11.3136, fa0  = 39.5976
       0     2803        M                                           #; (f:fpu) fa0  <-- 50.9112
       0     2804        M 0x80000a2c fadd.d  fa0, ft0, fa0          #; ft0  = 12.7278000, fa0  = 50.9112
       0     2807        M                                           #; (f:fpu) fa0  <-- 63.6390000
       0     2808        M 0x80000a2c fadd.d  fa0, ft0, fa0          #; ft0  = 14.142, fa0  = 63.6390000
       0     2809        M 0x80000a34 csrrci  a0, ssr, 1             #; 
       0     2811        M                                           #; (f:fpu) fa0  <-- 77.7810000
       0     2814        M 0x80000724 mv      a0, s1                 #; s1  = 0x00100000, (wrb) a0  <-- 0x00100000
       0     2815        M 0x80000728 mv      a1, s1                 #; s1  = 0x00100000, (wrb) a1  <-- 0x00100000
                         M 0x80000720 fsgnj.d fs1, fa0, fa0          #; fa0  = 77.7810000, fa0  = 77.7810000
       0     2816        M 0x8000072c mv      a2, s0                 #; s0  = 25, (wrb) a2  <-- 25
                         M                                           #; (f:fpu) fs1  <-- 77.7810000
       0     2825        M 0x80000730 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000730
       0     2826        M 0x80000734 jalr    ra, ra, 780            #; ra  = 0x80000730, (wrb) ra  <-- 0x80000738, goto 0x80000a3c
       0     2827        M 0x80000a3c li      a3, 1                  #; (wrb) a3  <-- 1
       0     2828        M 0x80000a40 blt     a2, a3, pc + 48        #; a2  = 25, a3  = 1, not taken
       0     2829        M 0x80000a44 addi    a6, a2, -1             #; a2  = 25, (wrb) a6  <-- 24
       0     2830        M 0x80000a48 slli    a4, a6, 3              #; a6  = 24, (wrb) a4  <-- 192
       0     2831        M 0x80000a4c add     a3, a4, a0             #; a4  = 192, a0  = 0x00100000, (wrb) a3  <-- 0x001000c0
       0     2848        M 0x80000a50 add     t1, a4, a1             #; a4  = 192, a1  = 0x00100000, (wrb) t1  <-- 0x001000c0
       0     2849        M 0x80000a54 srli    a5, a0, 20             #; a0  = 0x00100000, (wrb) a5  <-- 1
       0     2850        M 0x80000a58 snez    t0, a5                 #; a5  = 1, (wrb) t0  <-- 1
       0     2851        M 0x80000a5c lui     a5, 0x120              #; (wrb) a5  <-- 0x00120000
       0     2860        M 0x80000a60 addi    a7, a5, 1              #; a5  = 0x00120000, (wrb) a7  <-- 0x00120001
       0     2861        M 0x80000a64 bgeu    a3, a4, pc + 20        #; a3  = 0x001000c0, a4  = 192, taken, goto 0x80000a78
       0     2872        M 0x80000a78 sltu    a3, a3, a7             #; a3  = 0x001000c0, a7  = 0x00120001, (wrb) a3  <-- 1
       0     2873        M 0x80000a7c and     t0, t0, a3             #; t0  = 1, a3  = 1, (wrb) t0  <-- 1
       0     2884        M 0x80000a80 srli    a3, a1, 20             #; a1  = 0x00100000, (wrb) a3  <-- 1
       0     2885        M 0x80000a84 snez    a3, a3                 #; a3  = 1, (wrb) a3  <-- 1
       0     2886        M 0x80000a88 bgeu    t1, a4, pc + 12        #; t1  = 0x001000c0, a4  = 192, taken, goto 0x80000a94
       0     2896        M 0x80000a94 sltu    a4, t1, a7             #; t1  = 0x001000c0, a7  = 0x00120001, (wrb) a4  <-- 1
       0     2897        M 0x80000a98 and     a3, a3, a4             #; a3  = 1, a4  = 1, (wrb) a3  <-- 1
       0     2898        M 0x80000a9c and     a3, t0, a3             #; t0  = 1, a3  = 1, (wrb) a3  <-- 1
       0     2908        M 0x80000aa0 beqz    a3, pc + 96            #; a3  = 1, not taken
       0     2909        M 0x80000aa4 li      a3, 8                  #; (wrb) a3  <-- 8
       0     2910        M 0x80000aa8 li      a4, 64                 #; (wrb) a4  <-- 64
       0     2911        M 0x80000aac li      a5, 192                #; (wrb) a5  <-- 192
       0     2920        M 0x80000ab0 scfgw   a6, a4                 #; a6  = 24, a4  = 64
       0     2921        M 0x80000ab4 scfgw   a3, a5                 #; a3  = 8, a5  = 192
       0     2922        M 0x80000ab8 li      a4, 32                 #; (wrb) a4  <-- 32
       0     2923        M 0x80000abc scfgw   zero, a4               #; a4  = 32, (acc) ra  <-- 0x00e020ab
       0     2932        M 0x80000ac0 scfgwi  a0, 768                #; a0  = 0x00100000
       0     2933        M 0x80000ac4 li      a0, 1                  #; (wrb) a0  <-- 1
       0     2934        M 0x80000ac8 addi    a4, a0, 64             #; a0  = 1, (wrb) a4  <-- 65
       0     2935        M 0x80000acc addi    a5, a0, 192            #; a0  = 1, (wrb) a5  <-- 193
       0     2944        M 0x80000ad0 scfgw   a6, a4                 #; a6  = 24, a4  = 65
       0     2945        M 0x80000ad4 scfgw   a3, a5                 #; a3  = 8, a5  = 193
       0     2946        M 0x80000ad8 addi    a0, a0, 32             #; a0  = 1, (wrb) a0  <-- 33
       0     2947        M 0x80000adc scfgw   zero, a0               #; a0  = 33, (acc) ra  <-- 0x00a020ab
       0     2956        M 0x80000ae0 scfgwi  a1, 769                #; a1  = 0x00100000
       0     2958        M 0x80000ae4 csrrsi  a0, ssr, 1             #; 
       0     2959        M 0x80000aec addi    a2, a2, -1             #; a2  = 25, (wrb) a2  <-- 24
                         M 0x80000ae8 fcvt.d.w fa0, zero             #; ac1  = 0
       0     2960        M                                           #; (f:fpu) fa0  <-- 0.0
       0     2969        M 0x80000af4 bnez    a2, pc - 8             #; a2  = 24, taken, goto 0x80000aec
       0     2970        M 0x80000aec addi    a2, a2, -1             #; a2  = 24, (wrb) a2  <-- 23
                         M 0x80000af0 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 0.0, ft0  = 0.0, fa0  = 0.0
       0     2972        M 0x80000af4 bnez    a2, pc - 8             #; a2  = 23, taken, goto 0x80000aec
       0     2973        M 0x80000aec addi    a2, a2, -1             #; a2  = 23, (wrb) a2  <-- 22
                         M                                           #; (f:fpu) fa0  <-- 0.0
       0     2974        M 0x80000af0 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 1.4142, ft0  = 1.4142, fa0  = 0.0
       0     2975        M 0x80000af4 bnez    a2, pc - 8             #; a2  = 22, taken, goto 0x80000aec
       0     2976        M 0x80000aec addi    a2, a2, -1             #; a2  = 22, (wrb) a2  <-- 21
       0     2977        M                                           #; (f:fpu) fa0  <-- 1.9999616
       0     2978        M 0x80000af4 bnez    a2, pc - 8             #; a2  = 21, taken, goto 0x80000aec
                         M 0x80000af0 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 2.8284, ft0  = 2.8284, fa0  = 1.9999616
       0     2979        M 0x80000aec addi    a2, a2, -1             #; a2  = 21, (wrb) a2  <-- 20
       0     2981        M 0x80000af4 bnez    a2, pc - 8             #; a2  = 20, taken, goto 0x80000aec
                         M                                           #; (f:fpu) fa0  <-- 9.9998082
       0     2982        M 0x80000aec addi    a2, a2, -1             #; a2  = 20, (wrb) a2  <-- 19
                         M 0x80000af0 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 4.2426000, ft0  = 4.2426000, fa0  = 9.9998082
       0     2984        M 0x80000af4 bnez    a2, pc - 8             #; a2  = 19, taken, goto 0x80000aec
       0     2985        M 0x80000aec addi    a2, a2, -1             #; a2  = 19, (wrb) a2  <-- 18
                         M                                           #; (f:fpu) fa0  <-- 27.9994630
       0     2986        M 0x80000af0 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 5.6568, ft0  = 5.6568, fa0  = 27.9994630
       0     2987        M 0x80000af4 bnez    a2, pc - 8             #; a2  = 18, taken, goto 0x80000aec
       0     2988        M 0x80000aec addi    a2, a2, -1             #; a2  = 18, (wrb) a2  <-- 17
       0     2989        M                                           #; (f:fpu) fa0  <-- 59.9988492
       0     2990        M 0x80000af4 bnez    a2, pc - 8             #; a2  = 17, taken, goto 0x80000aec
                         M 0x80000af0 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 7.071, ft0  = 7.071, fa0  = 59.9988492
       0     2991        M 0x80000aec addi    a2, a2, -1             #; a2  = 17, (wrb) a2  <-- 16
       0     2993        M 0x80000af4 bnez    a2, pc - 8             #; a2  = 16, taken, goto 0x80000aec
                         M                                           #; (f:fpu) fa0  <-- 109.9978902
       0     2994        M 0x80000aec addi    a2, a2, -1             #; a2  = 16, (wrb) a2  <-- 15
                         M 0x80000af0 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 8.4852000, ft0  = 8.4852000, fa0  = 109.9978902
       0     2996        M 0x80000af4 bnez    a2, pc - 8             #; a2  = 15, taken, goto 0x80000aec
       0     2997        M 0x80000aec addi    a2, a2, -1             #; a2  = 15, (wrb) a2  <-- 14
                         M                                           #; (f:fpu) fa0  <-- 181.9965092
       0     2998        M 0x80000af0 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 9.8994, ft0  = 9.8994, fa0  = 181.9965092
       0     2999        M 0x80000af4 bnez    a2, pc - 8             #; a2  = 14, taken, goto 0x80000aec
       0     3000        M 0x80000aec addi    a2, a2, -1             #; a2  = 14, (wrb) a2  <-- 13
       0     3001        M                                           #; (f:fpu) fa0  <-- 279.9946296
       0     3002        M 0x80000af4 bnez    a2, pc - 8             #; a2  = 13, taken, goto 0x80000aec
                         M 0x80000af0 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 11.3136, ft0  = 11.3136, fa0  = 279.9946296
       0     3003        M 0x80000aec addi    a2, a2, -1             #; a2  = 13, (wrb) a2  <-- 12
       0     3005        M 0x80000af4 bnez    a2, pc - 8             #; a2  = 12, taken, goto 0x80000aec
                         M                                           #; (f:fpu) fa0  <-- 407.9921746
       0     3006        M 0x80000aec addi    a2, a2, -1             #; a2  = 12, (wrb) a2  <-- 11
                         M 0x80000af0 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 12.7278000, ft0  = 12.7278000, fa0  = 407.9921746
       0     3008        M 0x80000af4 bnez    a2, pc - 8             #; a2  = 11, taken, goto 0x80000aec
       0     3009        M 0x80000aec addi    a2, a2, -1             #; a2  = 11, (wrb) a2  <-- 10
                         M                                           #; (f:fpu) fa0  <-- 569.9890674
       0     3010        M 0x80000af0 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 14.142, ft0  = 14.142, fa0  = 569.9890674
       0     3011        M 0x80000af4 bnez    a2, pc - 8             #; a2  = 10, taken, goto 0x80000aec
       0     3012        M 0x80000aec addi    a2, a2, -1             #; a2  = 10, (wrb) a2  <-- 9
       0     3013        M                                           #; (f:fpu) fa0  <-- 769.9852314
       0     3014        M 0x80000af4 bnez    a2, pc - 8             #; a2  = 9, taken, goto 0x80000aec
                         M 0x80000af0 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 15.5562000, ft0  = 15.5562000, fa0  = 769.9852314
       0     3015        M 0x80000aec addi    a2, a2, -1             #; a2  = 9, (wrb) a2  <-- 8
       0     3017        M 0x80000af4 bnez    a2, pc - 8             #; a2  = 8, taken, goto 0x80000aec
                         M                                           #; (f:fpu) fa0  <-- 1011.9805898
       0     3018        M 0x80000aec addi    a2, a2, -1             #; a2  = 8, (wrb) a2  <-- 7
                         M 0x80000af0 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 16.9704000, ft0  = 16.9704000, fa0  = 1011.9805898
       0     3020        M 0x80000af4 bnez    a2, pc - 8             #; a2  = 7, taken, goto 0x80000aec
       0     3021        M 0x80000aec addi    a2, a2, -1             #; a2  = 7, (wrb) a2  <-- 6
                         M                                           #; (f:fpu) fa0  <-- 1299.9750660
       0     3022        M 0x80000af0 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 18.3846, ft0  = 18.3846, fa0  = 1299.9750660
       0     3023        M 0x80000af4 bnez    a2, pc - 8             #; a2  = 6, taken, goto 0x80000aec
       0     3024        M 0x80000aec addi    a2, a2, -1             #; a2  = 6, (wrb) a2  <-- 5
       0     3025        M                                           #; (f:fpu) fa0  <-- 1637.9685832
       0     3026        M 0x80000af4 bnez    a2, pc - 8             #; a2  = 5, taken, goto 0x80000aec
                         M 0x80000af0 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 19.7988, ft0  = 19.7988, fa0  = 1637.9685832
       0     3027        M 0x80000aec addi    a2, a2, -1             #; a2  = 5, (wrb) a2  <-- 4
       0     3029        M 0x80000af4 bnez    a2, pc - 8             #; a2  = 4, taken, goto 0x80000aec
                         M                                           #; (f:fpu) fa0  <-- 2029.9610646
       0     3030        M 0x80000aec addi    a2, a2, -1             #; a2  = 4, (wrb) a2  <-- 3
                         M 0x80000af0 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 21.2130000, ft0  = 21.2130000, fa0  = 2029.9610646
       0     3032        M 0x80000af4 bnez    a2, pc - 8             #; a2  = 3, taken, goto 0x80000aec
       0     3033        M 0x80000aec addi    a2, a2, -1             #; a2  = 3, (wrb) a2  <-- 2
                         M                                           #; (f:fpu) fa0  <-- 2479.9524336
       0     3034        M 0x80000af0 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 22.6272, ft0  = 22.6272, fa0  = 2479.9524336
       0     3035        M 0x80000af4 bnez    a2, pc - 8             #; a2  = 2, taken, goto 0x80000aec
       0     3036        M 0x80000aec addi    a2, a2, -1             #; a2  = 2, (wrb) a2  <-- 1
       0     3037        M                                           #; (f:fpu) fa0  <-- 2991.9426134
       0     3038        M 0x80000af4 bnez    a2, pc - 8             #; a2  = 1, taken, goto 0x80000aec
                         M 0x80000af0 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 24.0414, ft0  = 24.0414, fa0  = 2991.9426134
       0     3039        M 0x80000aec addi    a2, a2, -1             #; a2  = 1, (wrb) a2  <-- 0
       0     3041        M 0x80000af4 bnez    a2, pc - 8             #; a2  = 0, not taken
                         M                                           #; (f:fpu) fa0  <-- 3569.9315274
       0     3042        M 0x80000af0 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 25.4556000, ft0  = 25.4556000, fa0  = 3569.9315274
       0     3043        M 0x80000afc j       pc + 0x24              #; goto 0x80000b20
       0     3045        M                                           #; (f:fpu) fa0  <-- 4217.9190988
       0     3046        M 0x80000af0 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 26.8698000, ft0  = 26.8698000, fa0  = 4217.9190988
       0     3049        M                                           #; (f:fpu) fa0  <-- 4939.9052508
       0     3050        M 0x80000af0 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 28.284, ft0  = 28.284, fa0  = 4939.9052508
       0     3053        M                                           #; (f:fpu) fa0  <-- 5739.8899068
       0     3054        M 0x80000b20 ret                            #; ra  = 0x80000738, goto 0x80000738
                         M 0x80000af0 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 29.6982000, ft0  = 29.6982000, fa0  = 5739.8899068
       0     3057        M                                           #; (f:fpu) fa0  <-- 6621.8729900
       0     3058        M 0x80000af0 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 31.1124000, ft0  = 31.1124000, fa0  = 6621.8729900
       0     3061        M                                           #; (f:fpu) fa0  <-- 7589.8544238
       0     3062        M 0x80000af0 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 32.5266000, ft0  = 32.5266000, fa0  = 7589.8544238
       0     3065        M                                           #; (f:fpu) fa0  <-- 8647.8341314
       0     3066        M 0x80000af0 fmadd.d fa0, ft1, ft0, fa0     #; ft1  = 33.9408000, ft0  = 33.9408000, fa0  = 8647.8341314
       0     3067        M 0x80000af8 csrrci  a0, ssr, 1             #; 
       0     3068        M 0x80000738 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003738
       0     3069        M 0x8000073c addi    a0, a0, -1632          #; a0  = 0x80003738, (wrb) a0  <-- 0x800030d8
                         M                                           #; (f:fpu) fa0  <-- 9799.8120360
       0     3072        M 0x80000744 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003744
       0     3073        M 0x80000748 addi    a0, a0, -1636          #; a0  = 0x80003744, (wrb) a0  <-- 0x800030e0
                         M 0x80000740 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x800030d8]
       0     3076        M 0x8000074c fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x800030e0]
       0     3082        M                                           #; (f:lsu) ft0  <-- -9799.8120360
       0     3085        M 0x80000758 auipc   a0, 0x3                #; (wrb) a0  <-- 0x80003758
                         M 0x80000750 fadd.d  ft2, fs0, ft0          #; fs0  = 9799.8120360, ft0  = -9799.8120360, (f:lsu) ft1  <-- -220.6152000
       0     3086        M 0x8000075c addi    a0, a0, -1648          #; a0  = 0x80003758, (wrb) a0  <-- 0x800030e8
                         M 0x80000754 fadd.d  ft1, fs2, ft1          #; fs2  = 220.6152, ft1  = -220.6152000
       0     3088        M                                           #; (f:fpu) ft2  <-- -0.0000000
       0     3089        M                                           #; (f:fpu) ft1  <-- 0.0
       0     3097        M 0x80000760 fld     ft3, 0(a0)             #; ft3  <~~ Doub[0x800030e8]
       0     3098        M 0x80000764 fsgnjx.d ft2, ft2, ft2         #; ft2  = -0.0000000, ft2  = -0.0000000
       0     3099        M 0x80000768 fsgnjx.d ft1, ft1, ft1         #; ft1  = 0.0, ft1  = 0.0, (f:fpu) ft2  <-- 0.0000000
       0     3100        M                                           #; (f:fpu) ft1  <-- 0.0
       0     3101        M 0x8000076c fadd.d  ft1, ft1, ft2          #; ft1  = 0.0, ft2  = 0.0000000
       0     3104        M                                           #; (f:fpu) ft1  <-- 0.0000000
       0     3106        M                                           #; (f:lsu) ft3  <-- -77.781
       0     3109        M 0x80000770 fadd.d  ft2, fs1, ft3          #; fs1  = 77.7810000, ft3  = -77.781
       0     3112        M                                           #; (f:fpu) ft2  <-- -0.0000000
       0     3113        M 0x80000774 fsgnjx.d ft2, ft2, ft2         #; ft2  = -0.0000000, ft2  = -0.0000000
       0     3114        M                                           #; (f:fpu) ft2  <-- 0.0000000
       0     3115        M 0x80000778 fadd.d  ft1, ft1, ft2          #; ft1  = 0.0000000, ft2  = 0.0000000
       0     3116        M 0x8000077c fadd.d  ft0, fa0, ft0          #; fa0  = 9799.8120360, ft0  = -9799.8120360
       0     3118        M                                           #; (f:fpu) ft1  <-- 0.0000000
       0     3119        M                                           #; (f:fpu) ft0  <-- -0.0000000
       0     3121        M 0x80000780 fsgnjx.d ft0, ft0, ft0         #; ft0  = -0.0000000, ft0  = -0.0000000
       0     3122        M 0x8000078c lw      a2, 0(sp)              #; sp  = 0x0011ff30, a2  <~~ Word[0x0011ff30]
                         M                                           #; (f:fpu) ft0  <-- 0.0000000
       0     3123        M 0x80000784 fadd.d  fs0, ft1, ft0          #; ft1  = 0.0000000, ft0  = 0.0000000
       0     3125        M                                           #; (lsu) a2  <-- 0
       0     3126        M                                           #; (f:fpu) fs0  <-- 0.0000000
       0     3127        M 0x80000788 fsd     fs0, 0(sp)             #; 0.0000000 ~~> Doub[0x0011ff30]
       0     3131        M 0x80000790 lw      a3, 4(sp)              #; sp  = 0x0011ff30, a3  <~~ Word[0x0011ff34]
       0     3132        M 0x80000794 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80002794
       0     3133        M 0x80000798 addi    a0, a0, 1729           #; a0  = 0x80002794, (wrb) a0  <-- 0x80002e55
       0     3134        M 0x8000079c auipc   ra, 0x0                #; (wrb) ra  <-- 0x8000079c
       0     3135        M                                           #; (lsu) a3  <-- 0x3d901000
       0     3143        M 0x800007a0 jalr    ra, ra, 904            #; ra  = 0x8000079c, (wrb) ra  <-- 0x800007a4, goto 0x80000b24
       0     3157        M 0x80000b24 addi    sp, sp, -48            #; sp  = 0x0011ff30, (wrb) sp  <-- 0x0011ff00
       0     3158        M 0x80000b28 sw      ra, 12(sp)             #; sp  = 0x0011ff00, 0x800007a4 ~~> Word[0x0011ff0c]
       0     3159        M 0x80000b2c mv      t0, a0                 #; a0  = 0x80002e55, (wrb) t0  <-- 0x80002e55
       0     3160        M 0x80000b30 sw      a7, 44(sp)             #; sp  = 0x0011ff00, 0x00120001 ~~> Word[0x0011ff2c]
       0     3161        M 0x80000b34 sw      a6, 40(sp)             #; sp  = 0x0011ff00, 24 ~~> Word[0x0011ff28]
       0     3162        M 0x80000b38 sw      a5, 36(sp)             #; sp  = 0x0011ff00, 193 ~~> Word[0x0011ff24]
       0     3163        M 0x80000b3c sw      a4, 32(sp)             #; sp  = 0x0011ff00, 65 ~~> Word[0x0011ff20]
       0     3172        M 0x80000b40 sw      a3, 28(sp)             #; sp  = 0x0011ff00, 0x3d901000 ~~> Word[0x0011ff1c]
       0     3173        M 0x80000b44 sw      a2, 24(sp)             #; sp  = 0x0011ff00, 0 ~~> Word[0x0011ff18]
       0     3174        M 0x80000b48 sw      a1, 20(sp)             #; sp  = 0x0011ff00, 0x00100000 ~~> Word[0x0011ff14]
       0     3175        M 0x80000b4c addi    a0, sp, 20             #; sp  = 0x0011ff00, (wrb) a0  <-- 0x0011ff14
       0     3184        M 0x80000b50 sw      a0, 8(sp)              #; sp  = 0x0011ff00, 0x0011ff14 ~~> Word[0x0011ff08]
       0     3185        M 0x80000b54 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80001b54
       0     3186        M 0x80000b58 addi    a0, a0, -988           #; a0  = 0x80001b54, (wrb) a0  <-- 0x80001778
       0     3187        M 0x80000b5c addi    a1, sp, 7              #; sp  = 0x0011ff00, (wrb) a1  <-- 0x0011ff07
       0     3196        M 0x80000b60 li      a2, -1                 #; (wrb) a2  <-- -1
       0     3197        M 0x80000b64 addi    a4, sp, 20             #; sp  = 0x0011ff00, (wrb) a4  <-- 0x0011ff14
       0     3198        M 0x80000b68 mv      a3, t0                 #; t0  = 0x80002e55, (wrb) a3  <-- 0x80002e55
       0     3199        M 0x80000b6c auipc   ra, 0x0                #; (wrb) ra  <-- 0x80000b6c
       0     3208        M 0x80000b70 jalr    ra, ra, 20             #; ra  = 0x80000b6c, (wrb) ra  <-- 0x80000b74, goto 0x80000b80
       0     3220        M 0x80000b80 addi    sp, sp, -112           #; sp  = 0x0011ff00, (wrb) sp  <-- 0x0011fe90
       0     3221        M 0x80000b84 sw      ra, 108(sp)            #; sp  = 0x0011fe90, 0x80000b74 ~~> Word[0x0011fefc]
       0     3222        M 0x80000b88 sw      s0, 104(sp)            #; sp  = 0x0011fe90, 25 ~~> Word[0x0011fef8]
       0     3223        M 0x80000b8c sw      s1, 100(sp)            #; sp  = 0x0011fe90, 0x00100000 ~~> Word[0x0011fef4]
       0     3232        M 0x80000b90 sw      s2, 96(sp)             #; sp  = 0x0011fe90, 0 ~~> Word[0x0011fef0]
       0     3233        M 0x80000b94 sw      s3, 92(sp)             #; sp  = 0x0011fe90, 0 ~~> Word[0x0011feec]
       0     3234        M 0x80000b98 sw      s4, 88(sp)             #; sp  = 0x0011fe90, 0 ~~> Word[0x0011fee8]
       0     3235        M 0x80000b9c sw      s5, 84(sp)             #; sp  = 0x0011fe90, 0 ~~> Word[0x0011fee4]
       0     3244        M 0x80000ba0 sw      s6, 80(sp)             #; sp  = 0x0011fe90, 0 ~~> Word[0x0011fee0]
       0     3245        M 0x80000ba4 sw      s7, 76(sp)             #; sp  = 0x0011fe90, 0 ~~> Word[0x0011fedc]
       0     3246        M 0x80000ba8 sw      s8, 72(sp)             #; sp  = 0x0011fe90, 0 ~~> Word[0x0011fed8]
       0     3247        M 0x80000bac sw      s9, 68(sp)             #; sp  = 0x0011fe90, 0 ~~> Word[0x0011fed4]
       0     3256        M 0x80000bb0 sw      s10, 64(sp)            #; sp  = 0x0011fe90, 0 ~~> Word[0x0011fed0]
       0     3257        M 0x80000bb4 sw      s11, 60(sp)            #; sp  = 0x0011fe90, 0 ~~> Word[0x0011fecc]
       0     3258        M 0x80000bb8 mv      s3, a4                 #; a4  = 0x0011ff14, (wrb) s3  <-- 0x0011ff14
       0     3259        M 0x80000bbc mv      s0, a3                 #; a3  = 0x80002e55, (wrb) s0  <-- 0x80002e55
       0     3268        M 0x80000bc0 mv      s5, a2                 #; a2  = -1, (wrb) s5  <-- -1
       0     3269        M 0x80000bc4 mv      s4, a1                 #; a1  = 0x0011ff07, (wrb) s4  <-- 0x0011ff07
       0     3270        M 0x80000bc8 beqz    a1, pc + 12            #; a1  = 0x0011ff07, not taken
       0     3271        M 0x80000bcc mv      s2, a0                 #; a0  = 0x80001778, (wrb) s2  <-- 0x80001778
       0     3280        M 0x80000bd0 j       pc + 0xc               #; goto 0x80000bdc
       0     3281        M 0x80000bdc li      s8, 0                  #; (wrb) s8  <-- 0
       0     3293        M 0x80000be0 li      s6, 37                 #; (wrb) s6  <-- 37
       0     3294        M 0x80000be4 li      s11, 16                #; (wrb) s11 <-- 16
       0     3295        M 0x80000be8 li      s7, 46                 #; (wrb) s7  <-- 46
       0     3296        M 0x80000bec lui     a0, 0x1                #; (wrb) a0  <-- 4096
       0     3305        M 0x80000bf0 addi    a0, a0, -2048          #; a0  = 4096, (wrb) a0  <-- 2048
       0     3306        M 0x80000bf4 sw      a0, 24(sp)             #; sp  = 0x0011fe90, 2048 ~~> Word[0x0011fea8]
       0     3307        M 0x80000bf8 lui     a0, 0x10               #; (wrb) a0  <-- 0x00010000
       0     3308        M 0x80000bfc addi    a0, a0, -1             #; a0  = 0x00010000, (wrb) a0  <-- 65535
       0     3317        M 0x80000c00 sw      a0, 16(sp)             #; sp  = 0x0011fe90, 65535 ~~> Word[0x0011fea0]
       0     3318        M 0x80000c04 addi    s10, s0, 2             #; s0  = 0x80002e55, (wrb) s10 <-- 0x80002e57
       0     3319        M 0x80000c08 mv      s9, s8                 #; s8  = 0, (wrb) s9  <-- 0
       0     3320        M 0x80000c0c li      s8, 10                 #; (wrb) s8  <-- 10
       0     3329        M 0x80000c10 lbu     a0, 0(s0)              #; s0  = 0x80002e55, a0  <~~ Byte[0x80002e55]
       0     3340        M                                           #; (lsu) a0  <-- 101
       0     3341        M 0x80000c14 beqz    a0, pc + 2824          #; a0  = 101, not taken
       0     3342        M 0x80000c18 beq     a0, s6, pc + 48        #; a0  = 101, s6  = 37, not taken
       0     3343        M 0x80000c1c addi    s1, s9, 1              #; s9  = 0, (wrb) s1  <-- 1
       0     3344        M 0x80000c20 mv      a1, s4                 #; s4  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
       0     3345        M 0x80000c24 mv      a2, s9                 #; s9  = 0, (wrb) a2  <-- 0
       0     3346        M 0x80000c28 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3347        M 0x80000c2c jalr    s2                     #; s2  = 0x80001778, (wrb) ra  <-- 0x80000c30, goto 0x80001778
       0     3367        M 0x80001778 beqz    a0, pc + 168           #; a0  = 101, not taken
       0     3368        M 0x8000177c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     3379        M 0x80001780 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     3380        M 0x80001784 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     3381        M 0x80001788 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003788
       0     3382        M 0x8000178c addi    a3, a3, -1500          #; a3  = 0x80003788, (wrb) a3  <-- 0x800031ac
       0     3391        M 0x80001790 add     a1, a2, a3             #; a2  = 0, a3  = 0x800031ac, (wrb) a1  <-- 0x800031ac
       0     3392        M 0x80001794 lw      a4, 0(a1)              #; a1  = 0x800031ac, a4  <~~ Word[0x800031ac]
       0     3403        M                                           #; (lsu) a4  <-- 0
       0     3404        M 0x80001798 addi    a5, a4, 1              #; a4  = 0, (wrb) a5  <-- 1
       0     3405        M 0x8000179c sw      a5, 0(a1)              #; a1  = 0x800031ac, 1 ~~> Word[0x800031ac]
       0     3406        M 0x800017a0 add     a4, a1, a4             #; a1  = 0x800031ac, a4  = 0, (wrb) a4  <-- 0x800031ac
       0     3407        M 0x800017a4 sb      a0, 72(a4)             #; a4  = 0x800031ac, 101 ~~> Byte[0x800031f4]
       0     3408        M 0x800017a8 lw      a4, 0(a1)              #; a1  = 0x800031ac, a4  <~~ Word[0x800031ac]
       0     3429        M                                           #; (lsu) a4  <-- 1
       0     3430        M 0x800017ac addi    a4, a4, -1020          #; a4  = 1, (wrb) a4  <-- -1019
       0     3431        M 0x800017b0 snez    a4, a4                 #; a4  = -1019, (wrb) a4  <-- 1
       0     3432        M 0x800017b4 addi    a0, a0, -10            #; a0  = 101, (wrb) a0  <-- 91
       0     3433        M 0x800017b8 snez    a0, a0                 #; a0  = 91, (wrb) a0  <-- 1
       0     3434        M 0x800017bc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     3443        M 0x800017c0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001820
       0     3466        M 0x80001820 ret                            #; ra  = 0x80000c30, goto 0x80000c30
       0     3480        M 0x80000c30 addi    s0, s0, 1              #; s0  = 0x80002e55, (wrb) s0  <-- 0x80002e56
       0     3481        M 0x80000c34 addi    s10, s10, 1            #; s10 = 0x80002e57, (wrb) s10 <-- 0x80002e58
       0     3482        M 0x80000c38 mv      s9, s1                 #; s1  = 1, (wrb) s9  <-- 1
       0     3483        M 0x80000c3c lbu     a0, 0(s0)              #; s0  = 0x80002e56, a0  <~~ Byte[0x80002e56]
       0     3494        M                                           #; (lsu) a0  <-- 114
       0     3495        M 0x80000c40 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000c18
       0     3496        M 0x80000c18 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     3497        M 0x80000c1c addi    s1, s9, 1              #; s9  = 1, (wrb) s1  <-- 2
       0     3499        M 0x80000c20 mv      a1, s4                 #; s4  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
       0     3500        M 0x80000c24 mv      a2, s9                 #; s9  = 1, (wrb) a2  <-- 1
       0     3501        M 0x80000c28 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3502        M 0x80000c2c jalr    s2                     #; s2  = 0x80001778, (wrb) ra  <-- 0x80000c30, goto 0x80001778
       0     3505        M 0x80001778 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     3506        M 0x8000177c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     3508        M 0x80001780 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     3509        M 0x80001784 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     3510        M 0x80001788 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003788
       0     3511        M 0x8000178c addi    a3, a3, -1500          #; a3  = 0x80003788, (wrb) a3  <-- 0x800031ac
       0     3512        M                                           #; (acc) a1  <-- 0x00d605b3
       0     3513        M 0x80001790 add     a1, a2, a3             #; a2  = 0, a3  = 0x800031ac, (wrb) a1  <-- 0x800031ac
       0     3514        M 0x80001794 lw      a4, 0(a1)              #; a1  = 0x800031ac, a4  <~~ Word[0x800031ac]
       0     3525        M                                           #; (lsu) a4  <-- 1
       0     3526        M 0x80001798 addi    a5, a4, 1              #; a4  = 1, (wrb) a5  <-- 2
       0     3527        M 0x8000179c sw      a5, 0(a1)              #; a1  = 0x800031ac, 2 ~~> Word[0x800031ac]
       0     3528        M 0x800017a0 add     a4, a1, a4             #; a1  = 0x800031ac, a4  = 1, (wrb) a4  <-- 0x800031ad
       0     3529        M 0x800017a4 sb      a0, 72(a4)             #; a4  = 0x800031ad, 114 ~~> Byte[0x800031f5]
       0     3530        M 0x800017a8 lw      a4, 0(a1)              #; a1  = 0x800031ac, a4  <~~ Word[0x800031ac]
       0     3551        M                                           #; (lsu) a4  <-- 2
       0     3552        M 0x800017ac addi    a4, a4, -1020          #; a4  = 2, (wrb) a4  <-- -1018
       0     3553        M 0x800017b0 snez    a4, a4                 #; a4  = -1018, (wrb) a4  <-- 1
       0     3554        M 0x800017b4 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     3555        M 0x800017b8 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     3556        M 0x800017bc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     3557        M 0x800017c0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001820
       0     3562        M 0x80001820 ret                            #; ra  = 0x80000c30, goto 0x80000c30
       0     3567        M 0x80000c30 addi    s0, s0, 1              #; s0  = 0x80002e56, (wrb) s0  <-- 0x80002e57
       0     3568        M 0x80000c34 addi    s10, s10, 1            #; s10 = 0x80002e58, (wrb) s10 <-- 0x80002e59
       0     3569        M 0x80000c38 mv      s9, s1                 #; s1  = 2, (wrb) s9  <-- 2
       0     3570        M 0x80000c3c lbu     a0, 0(s0)              #; s0  = 0x80002e57, a0  <~~ Byte[0x80002e57]
       0     3581        M                                           #; (lsu) a0  <-- 114
       0     3582        M 0x80000c40 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000c18
       0     3583        M 0x80000c18 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     3584        M 0x80000c1c addi    s1, s9, 1              #; s9  = 2, (wrb) s1  <-- 3
       0     3586        M 0x80000c20 mv      a1, s4                 #; s4  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
       0     3587        M 0x80000c24 mv      a2, s9                 #; s9  = 2, (wrb) a2  <-- 2
       0     3588        M 0x80000c28 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3589        M 0x80000c2c jalr    s2                     #; s2  = 0x80001778, (wrb) ra  <-- 0x80000c30, goto 0x80001778
       0     3592        M 0x80001778 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     3593        M 0x8000177c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     3595        M 0x80001780 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     3596        M 0x80001784 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     3597        M 0x80001788 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003788
       0     3598        M 0x8000178c addi    a3, a3, -1500          #; a3  = 0x80003788, (wrb) a3  <-- 0x800031ac
       0     3599        M                                           #; (acc) a1  <-- 0x00d605b3
       0     3600        M 0x80001790 add     a1, a2, a3             #; a2  = 0, a3  = 0x800031ac, (wrb) a1  <-- 0x800031ac
       0     3601        M 0x80001794 lw      a4, 0(a1)              #; a1  = 0x800031ac, a4  <~~ Word[0x800031ac]
       0     3612        M                                           #; (lsu) a4  <-- 2
       0     3613        M 0x80001798 addi    a5, a4, 1              #; a4  = 2, (wrb) a5  <-- 3
       0     3614        M 0x8000179c sw      a5, 0(a1)              #; a1  = 0x800031ac, 3 ~~> Word[0x800031ac]
       0     3615        M 0x800017a0 add     a4, a1, a4             #; a1  = 0x800031ac, a4  = 2, (wrb) a4  <-- 0x800031ae
       0     3616        M 0x800017a4 sb      a0, 72(a4)             #; a4  = 0x800031ae, 114 ~~> Byte[0x800031f6]
       0     3617        M 0x800017a8 lw      a4, 0(a1)              #; a1  = 0x800031ac, a4  <~~ Word[0x800031ac]
       0     3638        M                                           #; (lsu) a4  <-- 3
       0     3639        M 0x800017ac addi    a4, a4, -1020          #; a4  = 3, (wrb) a4  <-- -1017
       0     3640        M 0x800017b0 snez    a4, a4                 #; a4  = -1017, (wrb) a4  <-- 1
       0     3641        M 0x800017b4 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     3642        M 0x800017b8 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     3643        M 0x800017bc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     3644        M 0x800017c0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001820
       0     3649        M 0x80001820 ret                            #; ra  = 0x80000c30, goto 0x80000c30
       0     3654        M 0x80000c30 addi    s0, s0, 1              #; s0  = 0x80002e57, (wrb) s0  <-- 0x80002e58
       0     3655        M 0x80000c34 addi    s10, s10, 1            #; s10 = 0x80002e59, (wrb) s10 <-- 0x80002e5a
       0     3656        M 0x80000c38 mv      s9, s1                 #; s1  = 3, (wrb) s9  <-- 3
       0     3657        M 0x80000c3c lbu     a0, 0(s0)              #; s0  = 0x80002e58, a0  <~~ Byte[0x80002e58]
       0     3668        M                                           #; (lsu) a0  <-- 111
       0     3669        M 0x80000c40 bnez    a0, pc - 40            #; a0  = 111, taken, goto 0x80000c18
       0     3670        M 0x80000c18 beq     a0, s6, pc + 48        #; a0  = 111, s6  = 37, not taken
       0     3671        M 0x80000c1c addi    s1, s9, 1              #; s9  = 3, (wrb) s1  <-- 4
       0     3673        M 0x80000c20 mv      a1, s4                 #; s4  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
       0     3674        M 0x80000c24 mv      a2, s9                 #; s9  = 3, (wrb) a2  <-- 3
       0     3675        M 0x80000c28 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3676        M 0x80000c2c jalr    s2                     #; s2  = 0x80001778, (wrb) ra  <-- 0x80000c30, goto 0x80001778
       0     3679        M 0x80001778 beqz    a0, pc + 168           #; a0  = 111, not taken
       0     3680        M 0x8000177c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     3682        M 0x80001780 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     3683        M 0x80001784 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     3684        M 0x80001788 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003788
       0     3685        M 0x8000178c addi    a3, a3, -1500          #; a3  = 0x80003788, (wrb) a3  <-- 0x800031ac
       0     3686        M                                           #; (acc) a1  <-- 0x00d605b3
       0     3687        M 0x80001790 add     a1, a2, a3             #; a2  = 0, a3  = 0x800031ac, (wrb) a1  <-- 0x800031ac
       0     3688        M 0x80001794 lw      a4, 0(a1)              #; a1  = 0x800031ac, a4  <~~ Word[0x800031ac]
       0     3699        M                                           #; (lsu) a4  <-- 3
       0     3700        M 0x80001798 addi    a5, a4, 1              #; a4  = 3, (wrb) a5  <-- 4
       0     3701        M 0x8000179c sw      a5, 0(a1)              #; a1  = 0x800031ac, 4 ~~> Word[0x800031ac]
       0     3702        M 0x800017a0 add     a4, a1, a4             #; a1  = 0x800031ac, a4  = 3, (wrb) a4  <-- 0x800031af
       0     3703        M 0x800017a4 sb      a0, 72(a4)             #; a4  = 0x800031af, 111 ~~> Byte[0x800031f7]
       0     3704        M 0x800017a8 lw      a4, 0(a1)              #; a1  = 0x800031ac, a4  <~~ Word[0x800031ac]
       0     3725        M                                           #; (lsu) a4  <-- 4
       0     3726        M 0x800017ac addi    a4, a4, -1020          #; a4  = 4, (wrb) a4  <-- -1016
       0     3727        M 0x800017b0 snez    a4, a4                 #; a4  = -1016, (wrb) a4  <-- 1
       0     3728        M 0x800017b4 addi    a0, a0, -10            #; a0  = 111, (wrb) a0  <-- 101
       0     3729        M 0x800017b8 snez    a0, a0                 #; a0  = 101, (wrb) a0  <-- 1
       0     3730        M 0x800017bc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     3731        M 0x800017c0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001820
       0     3736        M 0x80001820 ret                            #; ra  = 0x80000c30, goto 0x80000c30
       0     3741        M 0x80000c30 addi    s0, s0, 1              #; s0  = 0x80002e58, (wrb) s0  <-- 0x80002e59
       0     3742        M 0x80000c34 addi    s10, s10, 1            #; s10 = 0x80002e5a, (wrb) s10 <-- 0x80002e5b
       0     3743        M 0x80000c38 mv      s9, s1                 #; s1  = 4, (wrb) s9  <-- 4
       0     3744        M 0x80000c3c lbu     a0, 0(s0)              #; s0  = 0x80002e59, a0  <~~ Byte[0x80002e59]
       0     3755        M                                           #; (lsu) a0  <-- 114
       0     3756        M 0x80000c40 bnez    a0, pc - 40            #; a0  = 114, taken, goto 0x80000c18
       0     3757        M 0x80000c18 beq     a0, s6, pc + 48        #; a0  = 114, s6  = 37, not taken
       0     3758        M 0x80000c1c addi    s1, s9, 1              #; s9  = 4, (wrb) s1  <-- 5
       0     3760        M 0x80000c20 mv      a1, s4                 #; s4  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
       0     3761        M 0x80000c24 mv      a2, s9                 #; s9  = 4, (wrb) a2  <-- 4
       0     3762        M 0x80000c28 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3763        M 0x80000c2c jalr    s2                     #; s2  = 0x80001778, (wrb) ra  <-- 0x80000c30, goto 0x80001778
       0     3766        M 0x80001778 beqz    a0, pc + 168           #; a0  = 114, not taken
       0     3767        M 0x8000177c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     3769        M 0x80001780 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     3770        M 0x80001784 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     3771        M 0x80001788 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003788
       0     3772        M 0x8000178c addi    a3, a3, -1500          #; a3  = 0x80003788, (wrb) a3  <-- 0x800031ac
       0     3773        M                                           #; (acc) a1  <-- 0x00d605b3
       0     3774        M 0x80001790 add     a1, a2, a3             #; a2  = 0, a3  = 0x800031ac, (wrb) a1  <-- 0x800031ac
       0     3775        M 0x80001794 lw      a4, 0(a1)              #; a1  = 0x800031ac, a4  <~~ Word[0x800031ac]
       0     3786        M                                           #; (lsu) a4  <-- 4
       0     3787        M 0x80001798 addi    a5, a4, 1              #; a4  = 4, (wrb) a5  <-- 5
       0     3788        M 0x8000179c sw      a5, 0(a1)              #; a1  = 0x800031ac, 5 ~~> Word[0x800031ac]
       0     3789        M 0x800017a0 add     a4, a1, a4             #; a1  = 0x800031ac, a4  = 4, (wrb) a4  <-- 0x800031b0
       0     3790        M 0x800017a4 sb      a0, 72(a4)             #; a4  = 0x800031b0, 114 ~~> Byte[0x800031f8]
       0     3791        M 0x800017a8 lw      a4, 0(a1)              #; a1  = 0x800031ac, a4  <~~ Word[0x800031ac]
       0     3812        M                                           #; (lsu) a4  <-- 5
       0     3813        M 0x800017ac addi    a4, a4, -1020          #; a4  = 5, (wrb) a4  <-- -1015
       0     3814        M 0x800017b0 snez    a4, a4                 #; a4  = -1015, (wrb) a4  <-- 1
       0     3815        M 0x800017b4 addi    a0, a0, -10            #; a0  = 114, (wrb) a0  <-- 104
       0     3816        M 0x800017b8 snez    a0, a0                 #; a0  = 104, (wrb) a0  <-- 1
       0     3817        M 0x800017bc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     3818        M 0x800017c0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001820
       0     3823        M 0x80001820 ret                            #; ra  = 0x80000c30, goto 0x80000c30
       0     3828        M 0x80000c30 addi    s0, s0, 1              #; s0  = 0x80002e59, (wrb) s0  <-- 0x80002e5a
       0     3829        M 0x80000c34 addi    s10, s10, 1            #; s10 = 0x80002e5b, (wrb) s10 <-- 0x80002e5c
       0     3830        M 0x80000c38 mv      s9, s1                 #; s1  = 5, (wrb) s9  <-- 5
       0     3831        M 0x80000c3c lbu     a0, 0(s0)              #; s0  = 0x80002e5a, a0  <~~ Byte[0x80002e5a]
       0     3842        M                                           #; (lsu) a0  <-- 32
       0     3843        M 0x80000c40 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000c18
       0     3844        M 0x80000c18 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     3845        M 0x80000c1c addi    s1, s9, 1              #; s9  = 5, (wrb) s1  <-- 6
       0     3847        M 0x80000c20 mv      a1, s4                 #; s4  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
       0     3848        M 0x80000c24 mv      a2, s9                 #; s9  = 5, (wrb) a2  <-- 5
       0     3849        M 0x80000c28 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3850        M 0x80000c2c jalr    s2                     #; s2  = 0x80001778, (wrb) ra  <-- 0x80000c30, goto 0x80001778
       0     3853        M 0x80001778 beqz    a0, pc + 168           #; a0  = 32, not taken
       0     3854        M 0x8000177c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     3856        M 0x80001780 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     3857        M 0x80001784 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     3858        M 0x80001788 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003788
       0     3859        M 0x8000178c addi    a3, a3, -1500          #; a3  = 0x80003788, (wrb) a3  <-- 0x800031ac
       0     3860        M                                           #; (acc) a1  <-- 0x00d605b3
       0     3861        M 0x80001790 add     a1, a2, a3             #; a2  = 0, a3  = 0x800031ac, (wrb) a1  <-- 0x800031ac
       0     3862        M 0x80001794 lw      a4, 0(a1)              #; a1  = 0x800031ac, a4  <~~ Word[0x800031ac]
       0     3873        M                                           #; (lsu) a4  <-- 5
       0     3874        M 0x80001798 addi    a5, a4, 1              #; a4  = 5, (wrb) a5  <-- 6
       0     3875        M 0x8000179c sw      a5, 0(a1)              #; a1  = 0x800031ac, 6 ~~> Word[0x800031ac]
       0     3876        M 0x800017a0 add     a4, a1, a4             #; a1  = 0x800031ac, a4  = 5, (wrb) a4  <-- 0x800031b1
       0     3877        M 0x800017a4 sb      a0, 72(a4)             #; a4  = 0x800031b1, 32 ~~> Byte[0x800031f9]
       0     3878        M 0x800017a8 lw      a4, 0(a1)              #; a1  = 0x800031ac, a4  <~~ Word[0x800031ac]
       0     3899        M                                           #; (lsu) a4  <-- 6
       0     3900        M 0x800017ac addi    a4, a4, -1020          #; a4  = 6, (wrb) a4  <-- -1014
       0     3901        M 0x800017b0 snez    a4, a4                 #; a4  = -1014, (wrb) a4  <-- 1
       0     3902        M 0x800017b4 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
       0     3903        M 0x800017b8 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
       0     3904        M 0x800017bc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     3905        M 0x800017c0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001820
       0     3910        M 0x80001820 ret                            #; ra  = 0x80000c30, goto 0x80000c30
       0     3915        M 0x80000c30 addi    s0, s0, 1              #; s0  = 0x80002e5a, (wrb) s0  <-- 0x80002e5b
       0     3916        M 0x80000c34 addi    s10, s10, 1            #; s10 = 0x80002e5c, (wrb) s10 <-- 0x80002e5d
       0     3917        M 0x80000c38 mv      s9, s1                 #; s1  = 6, (wrb) s9  <-- 6
       0     3918        M 0x80000c3c lbu     a0, 0(s0)              #; s0  = 0x80002e5b, a0  <~~ Byte[0x80002e5b]
       0     3929        M                                           #; (lsu) a0  <-- 61
       0     3930        M 0x80000c40 bnez    a0, pc - 40            #; a0  = 61, taken, goto 0x80000c18
       0     3931        M 0x80000c18 beq     a0, s6, pc + 48        #; a0  = 61, s6  = 37, not taken
       0     3932        M 0x80000c1c addi    s1, s9, 1              #; s9  = 6, (wrb) s1  <-- 7
       0     3934        M 0x80000c20 mv      a1, s4                 #; s4  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
       0     3935        M 0x80000c24 mv      a2, s9                 #; s9  = 6, (wrb) a2  <-- 6
       0     3936        M 0x80000c28 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     3937        M 0x80000c2c jalr    s2                     #; s2  = 0x80001778, (wrb) ra  <-- 0x80000c30, goto 0x80001778
       0     3940        M 0x80001778 beqz    a0, pc + 168           #; a0  = 61, not taken
       0     3941        M 0x8000177c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     3943        M 0x80001780 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     3944        M 0x80001784 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     3945        M 0x80001788 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003788
       0     3946        M 0x8000178c addi    a3, a3, -1500          #; a3  = 0x80003788, (wrb) a3  <-- 0x800031ac
       0     3947        M                                           #; (acc) a1  <-- 0x00d605b3
       0     3948        M 0x80001790 add     a1, a2, a3             #; a2  = 0, a3  = 0x800031ac, (wrb) a1  <-- 0x800031ac
       0     3949        M 0x80001794 lw      a4, 0(a1)              #; a1  = 0x800031ac, a4  <~~ Word[0x800031ac]
       0     3960        M                                           #; (lsu) a4  <-- 6
       0     3961        M 0x80001798 addi    a5, a4, 1              #; a4  = 6, (wrb) a5  <-- 7
       0     3962        M 0x8000179c sw      a5, 0(a1)              #; a1  = 0x800031ac, 7 ~~> Word[0x800031ac]
       0     3963        M 0x800017a0 add     a4, a1, a4             #; a1  = 0x800031ac, a4  = 6, (wrb) a4  <-- 0x800031b2
       0     3964        M 0x800017a4 sb      a0, 72(a4)             #; a4  = 0x800031b2, 61 ~~> Byte[0x800031fa]
       0     3965        M 0x800017a8 lw      a4, 0(a1)              #; a1  = 0x800031ac, a4  <~~ Word[0x800031ac]
       0     3986        M                                           #; (lsu) a4  <-- 7
       0     3987        M 0x800017ac addi    a4, a4, -1020          #; a4  = 7, (wrb) a4  <-- -1013
       0     3988        M 0x800017b0 snez    a4, a4                 #; a4  = -1013, (wrb) a4  <-- 1
       0     3989        M 0x800017b4 addi    a0, a0, -10            #; a0  = 61, (wrb) a0  <-- 51
       0     3990        M 0x800017b8 snez    a0, a0                 #; a0  = 51, (wrb) a0  <-- 1
       0     3991        M 0x800017bc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     3992        M 0x800017c0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001820
       0     3997        M 0x80001820 ret                            #; ra  = 0x80000c30, goto 0x80000c30
       0     4002        M 0x80000c30 addi    s0, s0, 1              #; s0  = 0x80002e5b, (wrb) s0  <-- 0x80002e5c
       0     4003        M 0x80000c34 addi    s10, s10, 1            #; s10 = 0x80002e5d, (wrb) s10 <-- 0x80002e5e
       0     4004        M 0x80000c38 mv      s9, s1                 #; s1  = 7, (wrb) s9  <-- 7
       0     4005        M 0x80000c3c lbu     a0, 0(s0)              #; s0  = 0x80002e5c, a0  <~~ Byte[0x80002e5c]
       0     4016        M                                           #; (lsu) a0  <-- 32
       0     4017        M 0x80000c40 bnez    a0, pc - 40            #; a0  = 32, taken, goto 0x80000c18
       0     4018        M 0x80000c18 beq     a0, s6, pc + 48        #; a0  = 32, s6  = 37, not taken
       0     4019        M 0x80000c1c addi    s1, s9, 1              #; s9  = 7, (wrb) s1  <-- 8
       0     4021        M 0x80000c20 mv      a1, s4                 #; s4  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
       0     4022        M 0x80000c24 mv      a2, s9                 #; s9  = 7, (wrb) a2  <-- 7
       0     4023        M 0x80000c28 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     4024        M 0x80000c2c jalr    s2                     #; s2  = 0x80001778, (wrb) ra  <-- 0x80000c30, goto 0x80001778
       0     4027        M 0x80001778 beqz    a0, pc + 168           #; a0  = 32, not taken
       0     4028        M 0x8000177c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     4030        M 0x80001780 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     4031        M 0x80001784 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     4032        M 0x80001788 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003788
       0     4033        M 0x8000178c addi    a3, a3, -1500          #; a3  = 0x80003788, (wrb) a3  <-- 0x800031ac
       0     4034        M                                           #; (acc) a1  <-- 0x00d605b3
       0     4035        M 0x80001790 add     a1, a2, a3             #; a2  = 0, a3  = 0x800031ac, (wrb) a1  <-- 0x800031ac
       0     4036        M 0x80001794 lw      a4, 0(a1)              #; a1  = 0x800031ac, a4  <~~ Word[0x800031ac]
       0     4047        M                                           #; (lsu) a4  <-- 7
       0     4048        M 0x80001798 addi    a5, a4, 1              #; a4  = 7, (wrb) a5  <-- 8
       0     4049        M 0x8000179c sw      a5, 0(a1)              #; a1  = 0x800031ac, 8 ~~> Word[0x800031ac]
       0     4050        M 0x800017a0 add     a4, a1, a4             #; a1  = 0x800031ac, a4  = 7, (wrb) a4  <-- 0x800031b3
       0     4051        M 0x800017a4 sb      a0, 72(a4)             #; a4  = 0x800031b3, 32 ~~> Byte[0x800031fb]
       0     4052        M 0x800017a8 lw      a4, 0(a1)              #; a1  = 0x800031ac, a4  <~~ Word[0x800031ac]
       0     4073        M                                           #; (lsu) a4  <-- 8
       0     4074        M 0x800017ac addi    a4, a4, -1020          #; a4  = 8, (wrb) a4  <-- -1012
       0     4075        M 0x800017b0 snez    a4, a4                 #; a4  = -1012, (wrb) a4  <-- 1
       0     4076        M 0x800017b4 addi    a0, a0, -10            #; a0  = 32, (wrb) a0  <-- 22
       0     4077        M 0x800017b8 snez    a0, a0                 #; a0  = 22, (wrb) a0  <-- 1
       0     4078        M 0x800017bc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     4079        M 0x800017c0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001820
       0     4084        M 0x80001820 ret                            #; ra  = 0x80000c30, goto 0x80000c30
       0     4089        M 0x80000c30 addi    s0, s0, 1              #; s0  = 0x80002e5c, (wrb) s0  <-- 0x80002e5d
       0     4090        M 0x80000c34 addi    s10, s10, 1            #; s10 = 0x80002e5e, (wrb) s10 <-- 0x80002e5f
       0     4091        M 0x80000c38 mv      s9, s1                 #; s1  = 8, (wrb) s9  <-- 8
       0     4092        M 0x80000c3c lbu     a0, 0(s0)              #; s0  = 0x80002e5d, a0  <~~ Byte[0x80002e5d]
       0     4103        M                                           #; (lsu) a0  <-- 37
       0     4104        M 0x80000c40 bnez    a0, pc - 40            #; a0  = 37, taken, goto 0x80000c18
       0     4105        M 0x80000c18 beq     a0, s6, pc + 48        #; a0  = 37, s6  = 37, taken, goto 0x80000c48
       0     4106        M 0x80000c48 li      s0, 0                  #; (wrb) s0  <-- 0
       0     4107        M 0x80000c4c j       pc + 0x10              #; goto 0x80000c5c
       0     4119        M 0x80000c5c lbu     a0, -1(s10)            #; s10 = 0x80002e5f, a0  <~~ Byte[0x80002e5e]
       0     4130        M                                           #; (lsu) a0  <-- 102
       0     4131        M 0x80000c60 addi    a1, a0, -32            #; a0  = 102, (wrb) a1  <-- 70
       0     4132        M 0x80000c64 bltu    s11, a1, pc + 56       #; s11 = 16, a1  = 70, taken, goto 0x80000c9c
       0     4154        M 0x80000c9c addi    a1, a0, -48            #; a0  = 102, (wrb) a1  <-- 54
       0     4166        M 0x80000ca0 andi    a2, a1, 255            #; a1  = 54, (wrb) a2  <-- 54
       0     4167        M 0x80000ca4 addi    a1, s10, -1            #; s10 = 0x80002e5f, (wrb) a1  <-- 0x80002e5e
       0     4168        M 0x80000ca8 li      a3, 9                  #; (wrb) a3  <-- 9
       0     4169        M 0x80000cac bltu    a3, a2, pc + 124       #; a3  = 9, a2  = 54, taken, goto 0x80000d28
       0     4189        M 0x80000d28 li      a2, 42                 #; (wrb) a2  <-- 42
       0     4190        M 0x80000d2c bne     a0, a2, pc + 80        #; a0  = 102, a2  = 42, taken, goto 0x80000d7c
       0     4212        M 0x80000d7c li      s6, 0                  #; (wrb) s6  <-- 0
       0     4224        M 0x80000d80 mv      s10, a1                #; a1  = 0x80002e5e, (wrb) s10 <-- 0x80002e5e
       0     4225        M 0x80000d84 beq     a0, s7, pc - 164       #; a0  = 102, s7  = 46, not taken
       0     4226        M 0x80000d88 li      s7, 0                  #; (wrb) s7  <-- 0
       0     4227        M 0x80000d8c j       pc + 0xc               #; goto 0x80000d98
       0     4247        M 0x80000d98 addi    a1, a0, -104           #; a0  = 102, (wrb) a1  <-- -2
       0     4248        M 0x80000d9c srli    a2, a1, 1              #; a1  = -2, (wrb) a2  <-- 0x7fffffff
       0     4259        M 0x80000da0 slli    a1, a1, 31             #; a1  = -2, (wrb) a1  <-- 0
       0     4260        M 0x80000da4 or      a1, a1, a2             #; a1  = 0, a2  = 0x7fffffff, (wrb) a1  <-- 0x7fffffff
       0     4261        M 0x80000da8 li      a2, 9                  #; (wrb) a2  <-- 9
       0     4262        M 0x80000dac bltu    a2, a1, pc + 100       #; a2  = 9, a1  = 0x7fffffff, taken, goto 0x80000e10
       0     4282        M 0x80000e10 addi    a1, a0, -37            #; a0  = 102, (wrb) a1  <-- 65
       0     4283        M 0x80000e14 li      a2, 83                 #; (wrb) a2  <-- 83
       0     4284        M 0x80000e18 bltu    a2, a1, pc + 264       #; a2  = 83, a1  = 65, not taken
       0     4285        M 0x80000e1c slli    a1, a1, 2              #; a1  = 65, (wrb) a1  <-- 260
       0     4294        M 0x80000e20 auipc   a2, 0x2                #; (wrb) a2  <-- 0x80002e20
       0     4295        M 0x80000e24 addi    a2, a2, 180            #; a2  = 0x80002e20, (wrb) a2  <-- 0x80002ed4
       0     4296        M 0x80000e28 add     a1, a1, a2             #; a1  = 260, a2  = 0x80002ed4, (wrb) a1  <-- 0x80002fd8
       0     4297        M 0x80000e2c lw      a2, 0(a1)              #; a1  = 0x80002fd8, a2  <~~ Word[0x80002fd8]
       0     4306        M 0x80000e30 li      a1, 8                  #; (wrb) a1  <-- 8
       0     4307        M 0x80000e34 li      s8, 16                 #; (wrb) s8  <-- 16
       0     4308        M                                           #; (lsu) a2  <-- 0x80000e68
       0     4309        M 0x80000e38 jr      a2                     #; a2  = 0x80000e68, goto 0x80000e68
       0     4329        M 0x80000e68 li      a1, 70                 #; (wrb) a1  <-- 70
       0     4330        M 0x80000e6c bne     a0, a1, pc + 8         #; a0  = 102, a1  = 70, taken, goto 0x80000e74
       0     4341        M 0x80000e74 addi    a0, s3, 7              #; s3  = 0x0011ff14, (wrb) a0  <-- 0x0011ff1b
       0     4342        M 0x80000e78 andi    a0, a0, -8             #; a0  = 0x0011ff1b, (wrb) a0  <-- 0x0011ff18
       0     4345        M 0x80000e7c fld     fa0, 0(a0)             #; fa0  <~~ Doub[0x0011ff18]
       0     4346        M                                           #; (f:lsu) fa0  <-- 0.0000000
       0     4353        M 0x80000e80 addi    s3, a0, 8              #; a0  = 0x0011ff18, (wrb) s3  <-- 0x0011ff20
       0     4354        M 0x80000e84 mv      a0, s2                 #; s2  = 0x80001778, (wrb) a0  <-- 0x80001778
       0     4355        M 0x80000e88 mv      a1, s4                 #; s4  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
       0     4356        M 0x80000e8c mv      a2, s9                 #; s9  = 8, (wrb) a2  <-- 8
       0     4365        M 0x80000e90 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     4366        M 0x80000e94 mv      a4, s7                 #; s7  = 0, (wrb) a4  <-- 0
       0     4367        M 0x80000e98 mv      a5, s6                 #; s6  = 0, (wrb) a5  <-- 0
       0     4368        M 0x80000e9c mv      a6, s0                 #; s0  = 0, (wrb) a6  <-- 0
       0     4377        M 0x80000ea0 auipc   ra, 0x1                #; (wrb) ra  <-- 0x80001ea0
       0     4378        M 0x80000ea4 jalr    ra, ra, -1656          #; ra  = 0x80001ea0, (wrb) ra  <-- 0x80000ea8, goto 0x80001828
       0     4391        M 0x80001828 addi    sp, sp, -112           #; sp  = 0x0011fe90, (wrb) sp  <-- 0x0011fe20
       0     4392        M 0x8000182c sw      ra, 108(sp)            #; sp  = 0x0011fe20, 0x80000ea8 ~~> Word[0x0011fe8c]
       0     4394        M 0x80001830 sw      s0, 104(sp)            #; sp  = 0x0011fe20, 0 ~~> Word[0x0011fe88]
       0     4395        M 0x80001834 sw      s1, 100(sp)            #; sp  = 0x0011fe20, 8 ~~> Word[0x0011fe84]
       0     4396        M 0x80001838 sw      s2, 96(sp)             #; sp  = 0x0011fe20, 0x80001778 ~~> Word[0x0011fe80]
       0     4397        M 0x8000183c sw      s3, 92(sp)             #; sp  = 0x0011fe20, 0x0011ff20 ~~> Word[0x0011fe7c]
       0     4406        M 0x80001840 sw      s4, 88(sp)             #; sp  = 0x0011fe20, 0x0011ff07 ~~> Word[0x0011fe78]
       0     4407        M 0x80001844 sw      s5, 84(sp)             #; sp  = 0x0011fe20, -1 ~~> Word[0x0011fe74]
       0     4408        M 0x80001848 sw      s6, 80(sp)             #; sp  = 0x0011fe20, 0 ~~> Word[0x0011fe70]
       0     4409        M 0x8000184c sw      s7, 76(sp)             #; sp  = 0x0011fe20, 0 ~~> Word[0x0011fe6c]
       0     4418        M 0x80001850 sw      s8, 72(sp)             #; sp  = 0x0011fe20, 16 ~~> Word[0x0011fe68]
       0     4419        M 0x80001854 sw      s9, 68(sp)             #; sp  = 0x0011fe20, 8 ~~> Word[0x0011fe64]
       0     4420        M 0x80001858 sw      s10, 64(sp)            #; sp  = 0x0011fe20, 0x80002e5e ~~> Word[0x0011fe60]
       0     4423        M 0x8000185c fsd     fs0, 56(sp)            #; 0.0000000 ~~> Doub[0x0011fe58]
       0     4432        M 0x80001868 auipc   s1, 0x2                #; (wrb) s1  <-- 0x80003868
                         M 0x80001860 fsd     fs1, 48(sp)            #; 77.7810000 ~~> Doub[0x0011fe50]
       0     4433        M 0x8000186c addi    s1, s1, -1896          #; s1  = 0x80003868, (wrb) s1  <-- 0x80003100
                         M 0x80001864 fsd     fs2, 40(sp)            #; 220.6152 ~~> Doub[0x0011fe48]
       0     4444        M 0x80001878 mv      s5, a6                 #; a6  = 0, (wrb) s5  <-- 0
                         M 0x80001870 fld     ft0, 0(s1)             #; ft0  <~~ Doub[0x80003100]
       0     4445        M 0x8000187c mv      s2, a5                 #; a5  = 0, (wrb) s2  <-- 0
       0     4453        M                                           #; (f:lsu) ft0  <-- -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     4454        M 0x80001880 mv      s3, a3                 #; a3  = -1, (wrb) s3  <-- -1
                         M 0x80001874 fle.d   s1, ft0, fa0           #; ft0  = -179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000, fa0  = 0.0000000
       0     4455        M 0x80001884 mv      s4, a2                 #; a2  = 8, (wrb) s4  <-- 8
       0     4456        M 0x80001888 mv      s6, a1                 #; a1  = 0x0011ff07, (wrb) s6  <-- 0x0011ff07
       0     4457        M 0x8000188c mv      s7, a0                 #; a0  = 0x80001778, (wrb) s7  <-- 0x80001778
       0     4466        M 0x80001890 bnez    s1, pc + 240           #; s1  = 1, taken, goto 0x80001980
       0     4490        M 0x80001984 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002984
       0     4491        M 0x80001988 addi    a0, a0, 1924           #; a0  = 0x80002984, (wrb) a0  <-- 0x80003108
                         M 0x80001980 fsgnj.d fs0, fa0, fa0          #; fa0  = 0.0000000, fa0  = 0.0000000
       0     4492        M                                           #; (f:fpu) fs0  <-- 0.0000000
       0     4494        M 0x8000198c fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003108]
       0     4503        M                                           #; (f:lsu) ft0  <-- 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     4504        M 0x80001990 fle.d   a0, fa0, ft0           #; fa0  = 0.0000000, ft0  = 179769313486231570814527423731704356798070567525844996598917476803157260780028538760589558632766878171540458953514382464234321326889464182768467546703537516986049910576551282076245490090389328944075868508455133942304583236903222948165808559332123348274797826204144723168738177180919299881250404026184124858368.0000000
       0     4506        M                                           #; (acc) t3  <-- 0x00051e63
       0     4507        M 0x80001994 bnez    a0, pc + 28            #; a0  = 1, taken, goto 0x800019b0
       0     4524        M 0x800019b0 auipc   a0, 0x1                #; (wrb) a0  <-- 0x800029b0
       0     4525        M 0x800019b4 addi    a0, a0, 1888           #; a0  = 0x800029b0, (wrb) a0  <-- 0x80003110
       0     4527        M 0x800019bc auipc   a0, 0x1                #; (wrb) a0  <-- 0x800029bc
       0     4528        M 0x800019b8 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003110]
       0     4536        M 0x800019c0 addi    a0, a0, 1884           #; a0  = 0x800029bc, (wrb) a0  <-- 0x80003118
       0     4537        M                                           #; (f:lsu) ft0  <-- 1000000000.0000000
       0     4539        M 0x800019c4 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80003118]
       0     4540        M 0x800019c8 fle.d   a0, fs0, ft0           #; fs0  = 0.0000000, ft0  = 1000000000.0000000
       0     4548        M                                           #; (f:lsu) ft1  <-- -1000000000.0000000
       0     4549        M 0x800019cc fle.d   a1, ft1, fs0           #; ft1  = -1000000000.0000000, fs0  = 0.0000000
       0     4551        M                                           #; (acc) a0  <-- 0x00b57533
       0     4552        M 0x800019d0 and     a0, a0, a1             #; a0  = 1, a1  = 1, (wrb) a0  <-- 1
       0     4553        M 0x800019d4 bnez    a0, pc + 252           #; a0  = 1, taken, goto 0x80001ad0
       0     4571        M 0x80001ad0 andi    a0, s5, 1024           #; s5  = 0, (wrb) a0  <-- 0
       0     4572        M 0x80001ad4 li      s8, 6                  #; (wrb) s8  <-- 6
       0     4573        M 0x80001ad8 beqz    a0, pc + 8             #; a0  = 0, taken, goto 0x80001ae0
       0     4583        M 0x80001ae0 li      a0, 10                 #; (wrb) a0  <-- 10
       0     4585        M 0x80001ae8 bltu    s8, a0, pc + 56        #; s8  = 6, a0  = 10, taken, goto 0x80001b20
       0     4586        M 0x80001ae4 fsgnjx.d fs2, fs0, fs0         #; fs0  = 0.0000000, fs0  = 0.0000000
       0     4587        M                                           #; (f:fpu) fs2  <-- 0.0000000
       0     4606        M 0x80001b20 li      s0, 0                  #; (wrb) s0  <-- 0
       0     4607        M 0x80001b24 slli    a0, s8, 3              #; s8  = 6, (wrb) a0  <-- 48
       0     4608        M 0x80001b28 auipc   a1, 0x1                #; (wrb) a1  <-- 0x80002b28
       0     4609        M 0x80001b2c addi    a1, a1, 1280           #; a1  = 0x80002b28, (wrb) a1  <-- 0x80003028
       0     4618        M 0x80001b30 add     a0, a0, a1             #; a0  = 48, a1  = 0x80003028, (wrb) a0  <-- 0x80003058
       0     4621        M 0x80001b34 fld     ft1, 0(a0)             #; ft1  <~~ Doub[0x80003058]
       0     4622        M 0x80001b38 fcvt.w.d s1, fs2               #; fs2  = 0.0000000
       0     4626        M 0x80001b3c fcvt.d.w ft0, s1               #; ac1  = 0
       0     4627        M                                           #; (f:fpu) ft0  <-- 0.0
       0     4630        M                                           #; (f:lsu) ft1  <-- 1000000.0000000
       0     4632        M 0x80001b48 auipc   a0, 0x1                #; (wrb) a0  <-- 0x80002b48
                         M 0x80001b40 fsub.d  ft0, fs2, ft0          #; fs2  = 0.0000000, ft0  = 0.0
       0     4633        M 0x80001b4c addi    a0, a0, 1496           #; a0  = 0x80002b48, (wrb) a0  <-- 0x80003120
       0     4635        M                                           #; (f:fpu) ft0  <-- 0.0000000
       0     4636        M 0x80001b44 fmul.d  ft2, ft1, ft0          #; ft1  = 1000000.0000000, ft0  = 0.0000000
       0     4639        M                                           #; (f:fpu) ft2  <-- 0.0000037
       0     4644        M 0x80001b50 fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x80003120]
       0     4645        M 0x80001b54 fcvt.wu.d a0, ft2              #; ft2  = 0.0000037
       0     4647        M                                           #; (acc) gp  <-- 0xd21501d3
       0     4649        M 0x80001b58 fcvt.d.wu ft3, a0              #; ac1  = 0
       0     4650        M                                           #; (f:fpu) ft3  <-- 0.0
       0     4651        M 0x80001b5c fsub.d  ft2, ft2, ft3          #; ft2  = 0.0000037, ft3  = 0.0
       0     4653        M                                           #; (f:lsu) ft0  <-- 0.5
       0     4654        M                                           #; (f:fpu) ft2  <-- 0.0000037
       0     4655        M 0x80001b60 fle.d   a1, ft2, ft0           #; ft2  = 0.0000037, ft0  = 0.5
       0     4658        M 0x80001b64 bnez    a1, pc + 32            #; a1  = 1, taken, goto 0x80001b84
       0     4678        M 0x80001b84 flt.d   a1, ft2, ft0           #; ft2  = 0.0000037, ft0  = 0.5
       0     4680        M                                           #; (acc) s4  <-- 0x00059a63
       0     4681        M 0x80001b88 bnez    a1, pc + 20            #; a1  = 1, taken, goto 0x80001b9c
       0     4690        M 0x80001b9c fcvt.d.w fs1, zero             #; ac1  = 0
       0     4691        M                                           #; (f:fpu) fs1  <-- 0.0
       0     4701        M 0x80001ba0 beqz    s8, pc + 216           #; s8  = 6, not taken
       0     4702        M 0x80001ba4 li      a2, 0                  #; (wrb) a2  <-- 0
       0     4703        M 0x80001ba8 addi    a1, sp, 8              #; sp  = 0x0011fe20, (wrb) a1  <-- 0x0011fe28
       0     4704        M 0x80001bac add     t1, a1, s0             #; a1  = 0x0011fe28, s0  = 0, (wrb) t1  <-- 0x0011fe28
       0     4713        M 0x80001bb0 li      t0, 32                 #; (wrb) t0  <-- 32
       0     4714        M 0x80001bb4 sub     a4, t0, s0             #; t0  = 32, s0  = 0, (wrb) a4  <-- 32
       0     4715        M 0x80001bb8 lui     a1, 0xccccd            #; (wrb) a1  <-- 0xccccd000
       0     4716        M 0x80001bbc addi    t2, a1, -819           #; a1  = 0xccccd000, (wrb) t2  <-- 0xcccccccd
       0     4725        M 0x80001bc0 li      a6, 10                 #; (wrb) a6  <-- 10
       0     4726        M 0x80001bc4 li      a7, 9                  #; (wrb) a7  <-- 9
       0     4727        M 0x80001bc8 beq     a4, a2, pc + 200       #; a4  = 32, a2  = 0, not taken
       0     4728        M 0x80001bcc mv      a1, a0                 #; a0  = 0, (wrb) a1  <-- 0
       0     4737        M 0x80001bd0 mulhu   a0, a0, t2             #; a0  = 0, t2  = 0xcccccccd
       0     4740        M                                           #; (acc) a0  <-- 0x00355513
       0     4741        M 0x80001bd4 srli    a0, a0, 3              #; a0  = 0, (wrb) a0  <-- 0
       0     4742        M 0x80001bd8 mul     a3, a0, a6             #; a0  = 0, a6  = 10
       0     4745        M                                           #; (acc) a3  <-- 0x40d586b3
       0     4746        M 0x80001bdc sub     a3, a1, a3             #; a1  = 0, a3  = 0, (wrb) a3  <-- 0
       0     4749        M 0x80001be0 ori     a3, a3, 48             #; a3  = 0, (wrb) a3  <-- 48
       0     4750        M 0x80001be4 add     a5, t1, a2             #; t1  = 0x0011fe28, a2  = 0, (wrb) a5  <-- 0x0011fe28
       0     4751        M 0x80001be8 sb      a3, 0(a5)              #; a5  = 0x0011fe28, 48 ~~> Byte[0x0011fe28]
       0     4752        M 0x80001bec addi    a2, a2, 1              #; a2  = 0, (wrb) a2  <-- 1
       0     4761        M 0x80001bf0 bltu    a7, a1, pc - 40        #; a7  = 9, a1  = 0, not taken
       0     4762        M 0x80001bf4 add     a0, s0, a2             #; s0  = 0, a2  = 1, (wrb) a0  <-- 1
       0     4763        M 0x80001bf8 addi    a1, a0, -1             #; a0  = 1, (wrb) a1  <-- 0
       0     4764        M 0x80001bfc li      a3, 30                 #; (wrb) a3  <-- 30
       0     4774        M 0x80001c00 sltu    a3, a3, a1             #; a3  = 30, a1  = 0, (wrb) a3  <-- 0
       0     4775        M 0x80001c04 xor     a4, s8, a2             #; s8  = 6, a2  = 1, (wrb) a4  <-- 7
       0     4776        M 0x80001c08 seqz    a4, a4                 #; a4  = 7, (wrb) a4  <-- 0
       0     4777        M 0x80001c0c or      a3, a3, a4             #; a3  = 0, a4  = 0, (wrb) a3  <-- 0
       0     4786        M 0x80001c10 bnez    a3, pc + 136           #; a3  = 0, not taken
       0     4787        M 0x80001c14 addi    a0, sp, 8              #; sp  = 0x0011fe20, (wrb) a0  <-- 0x0011fe28
       0     4788        M 0x80001c18 add     a0, a0, s0             #; a0  = 0x0011fe28, s0  = 0, (wrb) a0  <-- 0x0011fe28
       0     4789        M 0x80001c1c not     a1, a2                 #; a2  = 1, (wrb) a1  <-- -2
       0     4798        M 0x80001c20 add     s8, a1, s8             #; a1  = -2, s8  = 6, (wrb) s8  <-- 4
       0     4799        M 0x80001c24 add     s0, s0, a2             #; s0  = 0, a2  = 1, (wrb) s0  <-- 1
       0     4800        M 0x80001c28 li      a1, 31                 #; (wrb) a1  <-- 31
       0     4801        M 0x80001c2c sub     a3, a1, s0             #; a1  = 31, s0  = 1, (wrb) a3  <-- 30
       0     4810        M 0x80001c30 add     a0, a0, a2             #; a0  = 0x0011fe28, a2  = 1, (wrb) a0  <-- 0x0011fe29
       0     4811        M 0x80001c34 mv      a1, s8                 #; s8  = 4, (wrb) a1  <-- 4
       0     4812        M 0x80001c38 bltu    s8, a3, pc + 8         #; s8  = 4, a3  = 30, taken, goto 0x80001c40
       0     4822        M 0x80001c40 addi    a2, a1, 1              #; a1  = 4, (wrb) a2  <-- 5
       0     4823        M 0x80001c44 li      a1, 48                 #; (wrb) a1  <-- 48
       0     4824        M 0x80001c48 auipc   ra, 0xfffff            #; (wrb) ra  <-- 0x80000c48
       0     4825        M 0x80001c4c jalr    ra, ra, -1776          #; ra  = 0x80000c48, (wrb) ra  <-- 0x80001c50, goto 0x80000558
       0     4845        M 0x80000558 li      t1, 15                 #; (wrb) t1  <-- 15
       0     4846        M 0x8000055c mv      a4, a0                 #; a0  = 0x0011fe29, (wrb) a4  <-- 0x0011fe29
       0     4857        M 0x80000560 bgeu    t1, a2, pc + 60        #; t1  = 15, a2  = 5, taken, goto 0x8000059c
       0     4880        M 0x8000059c sub     a3, t1, a2             #; t1  = 15, a2  = 5, (wrb) a3  <-- 10
       0     4892        M 0x800005a0 slli    a3, a3, 2              #; a3  = 10, (wrb) a3  <-- 40
       0     4893        M 0x800005a4 auipc   t0, 0x0                #; (wrb) t0  <-- 0x800005a4
       0     4894        M 0x800005a8 add     a3, a3, t0             #; a3  = 40, t0  = 0x800005a4, (wrb) a3  <-- 0x800005cc
       0     4895        M 0x800005ac jalr    zero, a3, 12           #; a3  = 0x800005cc, goto 0x800005d8
       0     4915        M 0x800005d8 sb      a1, 4(a4)              #; a4  = 0x0011fe29, 48 ~~> Byte[0x0011fe2d]
       0     4916        M 0x800005dc sb      a1, 3(a4)              #; a4  = 0x0011fe29, 48 ~~> Byte[0x0011fe2c]
       0     4927        M 0x800005e0 sb      a1, 2(a4)              #; a4  = 0x0011fe29, 48 ~~> Byte[0x0011fe2b]
       0     4928        M 0x800005e4 sb      a1, 1(a4)              #; a4  = 0x0011fe29, 48 ~~> Byte[0x0011fe2a]
       0     4929        M 0x800005e8 sb      a1, 0(a4)              #; a4  = 0x0011fe29, 48 ~~> Byte[0x0011fe29]
       0     4930        M 0x800005ec ret                            #; ra  = 0x80001c50, goto 0x80001c50
       0     4941        M 0x80001c50 li      a0, 0                  #; (wrb) a0  <-- 0
       0     4942        M 0x80001c54 add     a1, s0, a0             #; s0  = 1, a0  = 0, (wrb) a1  <-- 1
       0     4943        M 0x80001c58 sltiu   a1, a1, 31             #; a1  = 1, (wrb) a1  <-- 1
       0     4944        M 0x80001c5c xor     a2, s8, a0             #; s8  = 4, a0  = 0, (wrb) a2  <-- 4
       0     4953        M 0x80001c60 snez    a2, a2                 #; a2  = 4, (wrb) a2  <-- 1
       0     4954        M 0x80001c64 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     4955        M 0x80001c68 addi    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0     4956        M 0x80001c6c bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001c54
       0     4957        M 0x80001c54 add     a1, s0, a0             #; s0  = 1, a0  = 1, (wrb) a1  <-- 2
       0     4958        M 0x80001c58 sltiu   a1, a1, 31             #; a1  = 2, (wrb) a1  <-- 1
       0     4959        M 0x80001c5c xor     a2, s8, a0             #; s8  = 4, a0  = 1, (wrb) a2  <-- 5
       0     4960        M 0x80001c60 snez    a2, a2                 #; a2  = 5, (wrb) a2  <-- 1
       0     4961        M 0x80001c64 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     4962        M 0x80001c68 addi    a0, a0, 1              #; a0  = 1, (wrb) a0  <-- 2
       0     4963        M 0x80001c6c bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001c54
       0     4964        M 0x80001c54 add     a1, s0, a0             #; s0  = 1, a0  = 2, (wrb) a1  <-- 3
       0     4965        M 0x80001c58 sltiu   a1, a1, 31             #; a1  = 3, (wrb) a1  <-- 1
       0     4966        M 0x80001c5c xor     a2, s8, a0             #; s8  = 4, a0  = 2, (wrb) a2  <-- 6
       0     4967        M 0x80001c60 snez    a2, a2                 #; a2  = 6, (wrb) a2  <-- 1
       0     4968        M 0x80001c64 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     4969        M 0x80001c68 addi    a0, a0, 1              #; a0  = 2, (wrb) a0  <-- 3
       0     4970        M 0x80001c6c bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001c54
       0     4971        M 0x80001c54 add     a1, s0, a0             #; s0  = 1, a0  = 3, (wrb) a1  <-- 4
       0     4972        M 0x80001c58 sltiu   a1, a1, 31             #; a1  = 4, (wrb) a1  <-- 1
       0     4973        M 0x80001c5c xor     a2, s8, a0             #; s8  = 4, a0  = 3, (wrb) a2  <-- 7
       0     4974        M 0x80001c60 snez    a2, a2                 #; a2  = 7, (wrb) a2  <-- 1
       0     4975        M 0x80001c64 and     a2, a1, a2             #; a1  = 1, a2  = 1, (wrb) a2  <-- 1
       0     4976        M 0x80001c68 addi    a0, a0, 1              #; a0  = 3, (wrb) a0  <-- 4
       0     4977        M 0x80001c6c bnez    a2, pc - 24            #; a2  = 1, taken, goto 0x80001c54
       0     4978        M 0x80001c54 add     a1, s0, a0             #; s0  = 1, a0  = 4, (wrb) a1  <-- 5
       0     4979        M 0x80001c58 sltiu   a1, a1, 31             #; a1  = 5, (wrb) a1  <-- 1
       0     4980        M 0x80001c5c xor     a2, s8, a0             #; s8  = 4, a0  = 4, (wrb) a2  <-- 0
       0     4981        M 0x80001c60 snez    a2, a2                 #; a2  = 0, (wrb) a2  <-- 0
       0     4982        M 0x80001c64 and     a2, a1, a2             #; a1  = 1, a2  = 0, (wrb) a2  <-- 0
       0     4983        M 0x80001c68 addi    a0, a0, 1              #; a0  = 4, (wrb) a0  <-- 5
       0     4984        M 0x80001c6c bnez    a2, pc - 24            #; a2  = 0, not taken
       0     4996        M 0x80001c70 add     a0, s0, a0             #; s0  = 1, a0  = 5, (wrb) a0  <-- 6
       0     4997        M 0x80001c74 j       pc + 0x28              #; goto 0x80001c9c
       0     5008        M 0x80001c9c beqz    a1, pc + 28            #; a1  = 1, not taken
       0     5020        M 0x80001ca0 addi    s0, a0, 1              #; a0  = 6, (wrb) s0  <-- 7
       0     5021        M 0x80001ca4 addi    a1, sp, 8              #; sp  = 0x0011fe20, (wrb) a1  <-- 0x0011fe28
       0     5022        M 0x80001ca8 add     a0, a1, a0             #; a1  = 0x0011fe28, a0  = 6, (wrb) a0  <-- 0x0011fe2e
       0     5023        M 0x80001cac li      a1, 46                 #; (wrb) a1  <-- 46
       0     5032        M 0x80001cb0 sb      a1, 0(a0)              #; a0  = 0x0011fe2e, 46 ~~> Byte[0x0011fe2e]
       0     5033        M 0x80001cb4 j       pc + 0x8               #; goto 0x80001cbc
       0     5034        M 0x80001cbc li      a0, 32                 #; (wrb) a0  <-- 32
       0     5046        M 0x80001cc0 mv      t0, s0                 #; s0  = 7, (wrb) t0  <-- 7
       0     5047        M 0x80001cc4 bltu    a0, s0, pc + 8         #; a0  = 32, s0  = 7, not taken
       0     5048        M 0x80001cc8 li      t0, 32                 #; (wrb) t0  <-- 32
       0     5050        M 0x80001ccc flt.d   s9, fs0, fs1           #; fs0  = 0.0000000, fs1  = 0.0
       0     5058        M 0x80001cd0 lui     a0, 0x66666            #; (wrb) a0  <-- 0x66666000
       0     5059        M 0x80001cd4 addi    a1, a0, 1639           #; a0  = 0x66666000, (wrb) a1  <-- 0x66666667
       0     5060        M 0x80001cd8 li      a6, 10                 #; (wrb) a6  <-- 10
       0     5061        M 0x80001cdc addi    a3, sp, 8              #; sp  = 0x0011fe20, (wrb) a3  <-- 0x0011fe28
       0     5070        M 0x80001ce0 li      a4, 18                 #; (wrb) a4  <-- 18
       0     5071        M 0x80001ce4 beq     t0, s0, pc + 64        #; t0  = 32, s0  = 7, not taken
       0     5072        M 0x80001ce8 mulh    a0, s1, a1             #; s1  = 0, a1  = 0x66666667
       0     5075        M                                           #; (acc) a5  <-- 0x01f55793
       0     5076        M 0x80001cec srli    a5, a0, 31             #; a0  = 0, (wrb) a5  <-- 0
       0     5082        M 0x80001cf0 srai    a0, a0, 2              #; a0  = 0, (wrb) a0  <-- 0
       0     5083        M 0x80001cf4 add     a0, a0, a5             #; a0  = 0, a5  = 0, (wrb) a0  <-- 0
       0     5084        M 0x80001cf8 mul     a5, a0, a6             #; a0  = 0, a6  = 10
       0     5087        M                                           #; (acc) a5  <-- 0x40f487b3
       0     5088        M 0x80001cfc sub     a5, s1, a5             #; s1  = 0, a5  = 0, (wrb) a5  <-- 0
       0     5094        M 0x80001d00 addi    a5, a5, 48             #; a5  = 0, (wrb) a5  <-- 48
       0     5095        M 0x80001d04 addi    s8, s0, 1              #; s0  = 7, (wrb) s8  <-- 8
       0     5096        M 0x80001d08 add     s0, a3, s0             #; a3  = 0x0011fe28, s0  = 7, (wrb) s0  <-- 0x0011fe2f
       0     5097        M 0x80001d0c addi    a2, s1, 9              #; s1  = 0, (wrb) a2  <-- 9
       0     5106        M 0x80001d10 sb      a5, 0(s0)              #; s0  = 0x0011fe2f, 48 ~~> Byte[0x0011fe2f]
       0     5107        M 0x80001d14 mv      s0, s8                 #; s8  = 8, (wrb) s0  <-- 8
       0     5108        M 0x80001d18 mv      s1, a0                 #; a0  = 0, (wrb) s1  <-- 0
       0     5109        M 0x80001d1c bltu    a4, a2, pc - 56        #; a4  = 18, a2  = 9, not taken
       0     5121        M 0x80001d20 j       pc + 0x8               #; goto 0x80001d28
       0     5122        M 0x80001d28 andi    s1, s5, 3              #; s5  = 0, (wrb) s1  <-- 0
       0     5123        M 0x80001d2c li      a0, 1                  #; (wrb) a0  <-- 1
       0     5134        M 0x80001d30 bne     s1, a0, pc + 108       #; s1  = 0, a0  = 1, taken, goto 0x80001d9c
       0     5157        M 0x80001d9c li      a0, 31                 #; (wrb) a0  <-- 31
       0     5169        M 0x80001da0 bltu    a0, s8, pc + 84        #; a0  = 31, s8  = 8, not taken
       0     5170        M 0x80001da4 beqz    s9, pc + 24            #; s9  = 0, taken, goto 0x80001dbc
       0     5181        M 0x80001dbc andi    a0, s5, 4              #; s5  = 0, (wrb) a0  <-- 0
       0     5193        M 0x80001dc0 bnez    a0, pc + 32            #; a0  = 0, not taken
       0     5194        M 0x80001dc4 andi    a0, s5, 8              #; s5  = 0, (wrb) a0  <-- 0
       0     5195        M 0x80001dc8 beqz    a0, pc + 44            #; a0  = 0, taken, goto 0x80001df4
       0     5216        M 0x80001df4 snez    a0, s1                 #; s1  = 0, (wrb) a0  <-- 0
       0     5217        M 0x80001df8 sltu    a1, s8, s2             #; s8  = 8, s2  = 0, (wrb) a1  <-- 0
       0     5218        M 0x80001dfc xori    a1, a1, 1              #; a1  = 0, (wrb) a1  <-- 1
       0     5228        M 0x80001e00 or      a0, a0, a1             #; a0  = 0, a1  = 1, (wrb) a0  <-- 1
       0     5229        M 0x80001e04 andi    s5, s5, 2              #; s5  = 0, (wrb) s5  <-- 0
       0     5230        M 0x80001e08 mv      s0, s4                 #; s4  = 8, (wrb) s0  <-- 8
       0     5231        M 0x80001e0c bnez    a0, pc + 44            #; a0  = 1, taken, goto 0x80001e38
       0     5251        M 0x80001e38 srli    s5, s5, 1              #; s5  = 0, (wrb) s5  <-- 0
       0     5252        M 0x80001e3c beqz    s8, pc + 56            #; s8  = 8, not taken
       0     5263        M 0x80001e40 addi    s9, sp, 7              #; sp  = 0x0011fe20, (wrb) s9  <-- 0x0011fe27
       0     5264        M 0x80001e44 add     a0, s9, s8             #; s9  = 0x0011fe27, s8  = 8, (wrb) a0  <-- 0x0011fe2f
       0     5265        M 0x80001e48 lbu     a0, 0(a0)              #; a0  = 0x0011fe2f, a0  <~~ Byte[0x0011fe2f]
       0     5266        M 0x80001e4c addi    s10, s8, -1            #; s8  = 8, (wrb) s10 <-- 7
       0     5268        M                                           #; (lsu) a0  <-- 48
       0     5275        M 0x80001e50 addi    s1, s0, 1              #; s0  = 8, (wrb) s1  <-- 9
       0     5276        M 0x80001e54 mv      a1, s6                 #; s6  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
       0     5277        M 0x80001e58 mv      a2, s0                 #; s0  = 8, (wrb) a2  <-- 8
       0     5278        M 0x80001e5c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     5287        M 0x80001e60 jalr    s7                     #; s7  = 0x80001778, (wrb) ra  <-- 0x80001e64, goto 0x80001778
       0     5290        M 0x80001778 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     5291        M 0x8000177c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5293        M 0x80001780 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5294        M 0x80001784 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5295        M 0x80001788 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003788
       0     5296        M 0x8000178c addi    a3, a3, -1500          #; a3  = 0x80003788, (wrb) a3  <-- 0x800031ac
       0     5297        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5298        M 0x80001790 add     a1, a2, a3             #; a2  = 0, a3  = 0x800031ac, (wrb) a1  <-- 0x800031ac
       0     5299        M 0x80001794 lw      a4, 0(a1)              #; a1  = 0x800031ac, a4  <~~ Word[0x800031ac]
       0     5310        M                                           #; (lsu) a4  <-- 8
       0     5311        M 0x80001798 addi    a5, a4, 1              #; a4  = 8, (wrb) a5  <-- 9
       0     5312        M 0x8000179c sw      a5, 0(a1)              #; a1  = 0x800031ac, 9 ~~> Word[0x800031ac]
       0     5313        M 0x800017a0 add     a4, a1, a4             #; a1  = 0x800031ac, a4  = 8, (wrb) a4  <-- 0x800031b4
       0     5314        M 0x800017a4 sb      a0, 72(a4)             #; a4  = 0x800031b4, 48 ~~> Byte[0x800031fc]
       0     5315        M 0x800017a8 lw      a4, 0(a1)              #; a1  = 0x800031ac, a4  <~~ Word[0x800031ac]
       0     5336        M                                           #; (lsu) a4  <-- 9
       0     5337        M 0x800017ac addi    a4, a4, -1020          #; a4  = 9, (wrb) a4  <-- -1011
       0     5338        M 0x800017b0 snez    a4, a4                 #; a4  = -1011, (wrb) a4  <-- 1
       0     5339        M 0x800017b4 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     5340        M 0x800017b8 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     5341        M 0x800017bc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5342        M 0x800017c0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001820
       0     5347        M 0x80001820 ret                            #; ra  = 0x80001e64, goto 0x80001e64
       0     5352        M 0x80001e64 mv      s0, s1                 #; s1  = 9, (wrb) s0  <-- 9
       0     5353        M 0x80001e68 mv      s8, s10                #; s10 = 7, (wrb) s8  <-- 7
       0     5354        M 0x80001e6c bnez    s10, pc - 40           #; s10 = 7, taken, goto 0x80001e44
       0     5355        M 0x80001e44 add     a0, s9, s8             #; s9  = 0x0011fe27, s8  = 7, (wrb) a0  <-- 0x0011fe2e
       0     5356        M 0x80001e48 lbu     a0, 0(a0)              #; a0  = 0x0011fe2e, a0  <~~ Byte[0x0011fe2e]
       0     5357        M 0x80001e4c addi    s10, s8, -1            #; s8  = 7, (wrb) s10 <-- 6
       0     5358        M 0x80001e50 addi    s1, s0, 1              #; s0  = 9, (wrb) s1  <-- 10
       0     5359        M 0x80001e54 mv      a1, s6                 #; s6  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
       0     5360        M 0x80001e58 mv      a2, s0                 #; s0  = 9, (wrb) a2  <-- 9
       0     5361        M 0x80001e5c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     5362        M 0x80001e60 jalr    s7                     #; s7  = 0x80001778, (wrb) ra  <-- 0x80001e64, goto 0x80001778
       0     5363        M                                           #; (lsu) a0  <-- 46
       0     5365        M 0x80001778 beqz    a0, pc + 168           #; a0  = 46, not taken
       0     5366        M 0x8000177c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5368        M 0x80001780 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5369        M 0x80001784 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5370        M 0x80001788 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003788
       0     5371        M 0x8000178c addi    a3, a3, -1500          #; a3  = 0x80003788, (wrb) a3  <-- 0x800031ac
       0     5372        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5373        M 0x80001790 add     a1, a2, a3             #; a2  = 0, a3  = 0x800031ac, (wrb) a1  <-- 0x800031ac
       0     5374        M 0x80001794 lw      a4, 0(a1)              #; a1  = 0x800031ac, a4  <~~ Word[0x800031ac]
       0     5385        M                                           #; (lsu) a4  <-- 9
       0     5386        M 0x80001798 addi    a5, a4, 1              #; a4  = 9, (wrb) a5  <-- 10
       0     5387        M 0x8000179c sw      a5, 0(a1)              #; a1  = 0x800031ac, 10 ~~> Word[0x800031ac]
       0     5388        M 0x800017a0 add     a4, a1, a4             #; a1  = 0x800031ac, a4  = 9, (wrb) a4  <-- 0x800031b5
       0     5389        M 0x800017a4 sb      a0, 72(a4)             #; a4  = 0x800031b5, 46 ~~> Byte[0x800031fd]
       0     5390        M 0x800017a8 lw      a4, 0(a1)              #; a1  = 0x800031ac, a4  <~~ Word[0x800031ac]
       0     5411        M                                           #; (lsu) a4  <-- 10
       0     5412        M 0x800017ac addi    a4, a4, -1020          #; a4  = 10, (wrb) a4  <-- -1010
       0     5413        M 0x800017b0 snez    a4, a4                 #; a4  = -1010, (wrb) a4  <-- 1
       0     5414        M 0x800017b4 addi    a0, a0, -10            #; a0  = 46, (wrb) a0  <-- 36
       0     5415        M 0x800017b8 snez    a0, a0                 #; a0  = 36, (wrb) a0  <-- 1
       0     5416        M 0x800017bc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5417        M 0x800017c0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001820
       0     5422        M 0x80001820 ret                            #; ra  = 0x80001e64, goto 0x80001e64
       0     5427        M 0x80001e64 mv      s0, s1                 #; s1  = 10, (wrb) s0  <-- 10
       0     5428        M 0x80001e68 mv      s8, s10                #; s10 = 6, (wrb) s8  <-- 6
       0     5429        M 0x80001e6c bnez    s10, pc - 40           #; s10 = 6, taken, goto 0x80001e44
       0     5430        M 0x80001e44 add     a0, s9, s8             #; s9  = 0x0011fe27, s8  = 6, (wrb) a0  <-- 0x0011fe2d
       0     5431        M 0x80001e48 lbu     a0, 0(a0)              #; a0  = 0x0011fe2d, a0  <~~ Byte[0x0011fe2d]
       0     5432        M 0x80001e4c addi    s10, s8, -1            #; s8  = 6, (wrb) s10 <-- 5
       0     5433        M 0x80001e50 addi    s1, s0, 1              #; s0  = 10, (wrb) s1  <-- 11
       0     5434        M 0x80001e54 mv      a1, s6                 #; s6  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
       0     5435        M 0x80001e58 mv      a2, s0                 #; s0  = 10, (wrb) a2  <-- 10
       0     5436        M 0x80001e5c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     5437        M 0x80001e60 jalr    s7                     #; s7  = 0x80001778, (wrb) ra  <-- 0x80001e64, goto 0x80001778
       0     5438        M                                           #; (lsu) a0  <-- 48
       0     5440        M 0x80001778 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     5441        M 0x8000177c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5443        M 0x80001780 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5444        M 0x80001784 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5445        M 0x80001788 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003788
       0     5446        M 0x8000178c addi    a3, a3, -1500          #; a3  = 0x80003788, (wrb) a3  <-- 0x800031ac
       0     5447        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5448        M 0x80001790 add     a1, a2, a3             #; a2  = 0, a3  = 0x800031ac, (wrb) a1  <-- 0x800031ac
       0     5449        M 0x80001794 lw      a4, 0(a1)              #; a1  = 0x800031ac, a4  <~~ Word[0x800031ac]
       0     5460        M                                           #; (lsu) a4  <-- 10
       0     5461        M 0x80001798 addi    a5, a4, 1              #; a4  = 10, (wrb) a5  <-- 11
       0     5462        M 0x8000179c sw      a5, 0(a1)              #; a1  = 0x800031ac, 11 ~~> Word[0x800031ac]
       0     5463        M 0x800017a0 add     a4, a1, a4             #; a1  = 0x800031ac, a4  = 10, (wrb) a4  <-- 0x800031b6
       0     5464        M 0x800017a4 sb      a0, 72(a4)             #; a4  = 0x800031b6, 48 ~~> Byte[0x800031fe]
       0     5465        M 0x800017a8 lw      a4, 0(a1)              #; a1  = 0x800031ac, a4  <~~ Word[0x800031ac]
       0     5486        M                                           #; (lsu) a4  <-- 11
       0     5487        M 0x800017ac addi    a4, a4, -1020          #; a4  = 11, (wrb) a4  <-- -1009
       0     5488        M 0x800017b0 snez    a4, a4                 #; a4  = -1009, (wrb) a4  <-- 1
       0     5489        M 0x800017b4 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     5490        M 0x800017b8 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     5491        M 0x800017bc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5492        M 0x800017c0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001820
       0     5497        M 0x80001820 ret                            #; ra  = 0x80001e64, goto 0x80001e64
       0     5502        M 0x80001e64 mv      s0, s1                 #; s1  = 11, (wrb) s0  <-- 11
       0     5503        M 0x80001e68 mv      s8, s10                #; s10 = 5, (wrb) s8  <-- 5
       0     5504        M 0x80001e6c bnez    s10, pc - 40           #; s10 = 5, taken, goto 0x80001e44
       0     5505        M 0x80001e44 add     a0, s9, s8             #; s9  = 0x0011fe27, s8  = 5, (wrb) a0  <-- 0x0011fe2c
       0     5506        M 0x80001e48 lbu     a0, 0(a0)              #; a0  = 0x0011fe2c, a0  <~~ Byte[0x0011fe2c]
       0     5507        M 0x80001e4c addi    s10, s8, -1            #; s8  = 5, (wrb) s10 <-- 4
       0     5508        M 0x80001e50 addi    s1, s0, 1              #; s0  = 11, (wrb) s1  <-- 12
       0     5509        M 0x80001e54 mv      a1, s6                 #; s6  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
       0     5510        M 0x80001e58 mv      a2, s0                 #; s0  = 11, (wrb) a2  <-- 11
       0     5511        M 0x80001e5c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     5512        M 0x80001e60 jalr    s7                     #; s7  = 0x80001778, (wrb) ra  <-- 0x80001e64, goto 0x80001778
       0     5513        M                                           #; (lsu) a0  <-- 48
       0     5515        M 0x80001778 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     5516        M 0x8000177c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5518        M 0x80001780 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5519        M 0x80001784 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5520        M 0x80001788 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003788
       0     5521        M 0x8000178c addi    a3, a3, -1500          #; a3  = 0x80003788, (wrb) a3  <-- 0x800031ac
       0     5522        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5523        M 0x80001790 add     a1, a2, a3             #; a2  = 0, a3  = 0x800031ac, (wrb) a1  <-- 0x800031ac
       0     5524        M 0x80001794 lw      a4, 0(a1)              #; a1  = 0x800031ac, a4  <~~ Word[0x800031ac]
       0     5535        M                                           #; (lsu) a4  <-- 11
       0     5536        M 0x80001798 addi    a5, a4, 1              #; a4  = 11, (wrb) a5  <-- 12
       0     5537        M 0x8000179c sw      a5, 0(a1)              #; a1  = 0x800031ac, 12 ~~> Word[0x800031ac]
       0     5538        M 0x800017a0 add     a4, a1, a4             #; a1  = 0x800031ac, a4  = 11, (wrb) a4  <-- 0x800031b7
       0     5539        M 0x800017a4 sb      a0, 72(a4)             #; a4  = 0x800031b7, 48 ~~> Byte[0x800031ff]
       0     5540        M 0x800017a8 lw      a4, 0(a1)              #; a1  = 0x800031ac, a4  <~~ Word[0x800031ac]
       0     5561        M                                           #; (lsu) a4  <-- 12
       0     5562        M 0x800017ac addi    a4, a4, -1020          #; a4  = 12, (wrb) a4  <-- -1008
       0     5563        M 0x800017b0 snez    a4, a4                 #; a4  = -1008, (wrb) a4  <-- 1
       0     5564        M 0x800017b4 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     5565        M 0x800017b8 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     5566        M 0x800017bc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5567        M 0x800017c0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001820
       0     5572        M 0x80001820 ret                            #; ra  = 0x80001e64, goto 0x80001e64
       0     5577        M 0x80001e64 mv      s0, s1                 #; s1  = 12, (wrb) s0  <-- 12
       0     5578        M 0x80001e68 mv      s8, s10                #; s10 = 4, (wrb) s8  <-- 4
       0     5579        M 0x80001e6c bnez    s10, pc - 40           #; s10 = 4, taken, goto 0x80001e44
       0     5580        M 0x80001e44 add     a0, s9, s8             #; s9  = 0x0011fe27, s8  = 4, (wrb) a0  <-- 0x0011fe2b
       0     5581        M 0x80001e48 lbu     a0, 0(a0)              #; a0  = 0x0011fe2b, a0  <~~ Byte[0x0011fe2b]
       0     5582        M 0x80001e4c addi    s10, s8, -1            #; s8  = 4, (wrb) s10 <-- 3
       0     5583        M 0x80001e50 addi    s1, s0, 1              #; s0  = 12, (wrb) s1  <-- 13
       0     5584        M 0x80001e54 mv      a1, s6                 #; s6  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
       0     5585        M 0x80001e58 mv      a2, s0                 #; s0  = 12, (wrb) a2  <-- 12
       0     5586        M 0x80001e5c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     5587        M 0x80001e60 jalr    s7                     #; s7  = 0x80001778, (wrb) ra  <-- 0x80001e64, goto 0x80001778
       0     5588        M                                           #; (lsu) a0  <-- 48
       0     5590        M 0x80001778 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     5591        M 0x8000177c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5593        M 0x80001780 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5594        M 0x80001784 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5595        M 0x80001788 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003788
       0     5596        M 0x8000178c addi    a3, a3, -1500          #; a3  = 0x80003788, (wrb) a3  <-- 0x800031ac
       0     5597        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5598        M 0x80001790 add     a1, a2, a3             #; a2  = 0, a3  = 0x800031ac, (wrb) a1  <-- 0x800031ac
       0     5599        M 0x80001794 lw      a4, 0(a1)              #; a1  = 0x800031ac, a4  <~~ Word[0x800031ac]
       0     5610        M                                           #; (lsu) a4  <-- 12
       0     5611        M 0x80001798 addi    a5, a4, 1              #; a4  = 12, (wrb) a5  <-- 13
       0     5612        M 0x8000179c sw      a5, 0(a1)              #; a1  = 0x800031ac, 13 ~~> Word[0x800031ac]
       0     5613        M 0x800017a0 add     a4, a1, a4             #; a1  = 0x800031ac, a4  = 12, (wrb) a4  <-- 0x800031b8
       0     5614        M 0x800017a4 sb      a0, 72(a4)             #; a4  = 0x800031b8, 48 ~~> Byte[0x80003200]
       0     5615        M 0x800017a8 lw      a4, 0(a1)              #; a1  = 0x800031ac, a4  <~~ Word[0x800031ac]
       0     5636        M                                           #; (lsu) a4  <-- 13
       0     5637        M 0x800017ac addi    a4, a4, -1020          #; a4  = 13, (wrb) a4  <-- -1007
       0     5638        M 0x800017b0 snez    a4, a4                 #; a4  = -1007, (wrb) a4  <-- 1
       0     5639        M 0x800017b4 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     5640        M 0x800017b8 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     5641        M 0x800017bc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5642        M 0x800017c0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001820
       0     5647        M 0x80001820 ret                            #; ra  = 0x80001e64, goto 0x80001e64
       0     5652        M 0x80001e64 mv      s0, s1                 #; s1  = 13, (wrb) s0  <-- 13
       0     5653        M 0x80001e68 mv      s8, s10                #; s10 = 3, (wrb) s8  <-- 3
       0     5654        M 0x80001e6c bnez    s10, pc - 40           #; s10 = 3, taken, goto 0x80001e44
       0     5655        M 0x80001e44 add     a0, s9, s8             #; s9  = 0x0011fe27, s8  = 3, (wrb) a0  <-- 0x0011fe2a
       0     5656        M 0x80001e48 lbu     a0, 0(a0)              #; a0  = 0x0011fe2a, a0  <~~ Byte[0x0011fe2a]
       0     5657        M 0x80001e4c addi    s10, s8, -1            #; s8  = 3, (wrb) s10 <-- 2
       0     5658        M 0x80001e50 addi    s1, s0, 1              #; s0  = 13, (wrb) s1  <-- 14
       0     5659        M 0x80001e54 mv      a1, s6                 #; s6  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
       0     5660        M 0x80001e58 mv      a2, s0                 #; s0  = 13, (wrb) a2  <-- 13
       0     5661        M 0x80001e5c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     5662        M 0x80001e60 jalr    s7                     #; s7  = 0x80001778, (wrb) ra  <-- 0x80001e64, goto 0x80001778
       0     5663        M                                           #; (lsu) a0  <-- 48
       0     5665        M 0x80001778 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     5666        M 0x8000177c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5668        M 0x80001780 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5669        M 0x80001784 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5670        M 0x80001788 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003788
       0     5671        M 0x8000178c addi    a3, a3, -1500          #; a3  = 0x80003788, (wrb) a3  <-- 0x800031ac
       0     5672        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5673        M 0x80001790 add     a1, a2, a3             #; a2  = 0, a3  = 0x800031ac, (wrb) a1  <-- 0x800031ac
       0     5674        M 0x80001794 lw      a4, 0(a1)              #; a1  = 0x800031ac, a4  <~~ Word[0x800031ac]
       0     5685        M                                           #; (lsu) a4  <-- 13
       0     5686        M 0x80001798 addi    a5, a4, 1              #; a4  = 13, (wrb) a5  <-- 14
       0     5687        M 0x8000179c sw      a5, 0(a1)              #; a1  = 0x800031ac, 14 ~~> Word[0x800031ac]
       0     5688        M 0x800017a0 add     a4, a1, a4             #; a1  = 0x800031ac, a4  = 13, (wrb) a4  <-- 0x800031b9
       0     5689        M 0x800017a4 sb      a0, 72(a4)             #; a4  = 0x800031b9, 48 ~~> Byte[0x80003201]
       0     5690        M 0x800017a8 lw      a4, 0(a1)              #; a1  = 0x800031ac, a4  <~~ Word[0x800031ac]
       0     5711        M                                           #; (lsu) a4  <-- 14
       0     5712        M 0x800017ac addi    a4, a4, -1020          #; a4  = 14, (wrb) a4  <-- -1006
       0     5713        M 0x800017b0 snez    a4, a4                 #; a4  = -1006, (wrb) a4  <-- 1
       0     5714        M 0x800017b4 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     5715        M 0x800017b8 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     5716        M 0x800017bc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5717        M 0x800017c0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001820
       0     5722        M 0x80001820 ret                            #; ra  = 0x80001e64, goto 0x80001e64
       0     5727        M 0x80001e64 mv      s0, s1                 #; s1  = 14, (wrb) s0  <-- 14
       0     5728        M 0x80001e68 mv      s8, s10                #; s10 = 2, (wrb) s8  <-- 2
       0     5729        M 0x80001e6c bnez    s10, pc - 40           #; s10 = 2, taken, goto 0x80001e44
       0     5730        M 0x80001e44 add     a0, s9, s8             #; s9  = 0x0011fe27, s8  = 2, (wrb) a0  <-- 0x0011fe29
       0     5731        M 0x80001e48 lbu     a0, 0(a0)              #; a0  = 0x0011fe29, a0  <~~ Byte[0x0011fe29]
       0     5732        M 0x80001e4c addi    s10, s8, -1            #; s8  = 2, (wrb) s10 <-- 1
       0     5733        M 0x80001e50 addi    s1, s0, 1              #; s0  = 14, (wrb) s1  <-- 15
       0     5734        M 0x80001e54 mv      a1, s6                 #; s6  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
       0     5735        M 0x80001e58 mv      a2, s0                 #; s0  = 14, (wrb) a2  <-- 14
       0     5736        M 0x80001e5c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     5737        M 0x80001e60 jalr    s7                     #; s7  = 0x80001778, (wrb) ra  <-- 0x80001e64, goto 0x80001778
       0     5738        M                                           #; (lsu) a0  <-- 48
       0     5740        M 0x80001778 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     5741        M 0x8000177c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5743        M 0x80001780 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5744        M 0x80001784 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5745        M 0x80001788 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003788
       0     5746        M 0x8000178c addi    a3, a3, -1500          #; a3  = 0x80003788, (wrb) a3  <-- 0x800031ac
       0     5747        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5748        M 0x80001790 add     a1, a2, a3             #; a2  = 0, a3  = 0x800031ac, (wrb) a1  <-- 0x800031ac
       0     5749        M 0x80001794 lw      a4, 0(a1)              #; a1  = 0x800031ac, a4  <~~ Word[0x800031ac]
       0     5760        M                                           #; (lsu) a4  <-- 14
       0     5761        M 0x80001798 addi    a5, a4, 1              #; a4  = 14, (wrb) a5  <-- 15
       0     5762        M 0x8000179c sw      a5, 0(a1)              #; a1  = 0x800031ac, 15 ~~> Word[0x800031ac]
       0     5763        M 0x800017a0 add     a4, a1, a4             #; a1  = 0x800031ac, a4  = 14, (wrb) a4  <-- 0x800031ba
       0     5764        M 0x800017a4 sb      a0, 72(a4)             #; a4  = 0x800031ba, 48 ~~> Byte[0x80003202]
       0     5765        M 0x800017a8 lw      a4, 0(a1)              #; a1  = 0x800031ac, a4  <~~ Word[0x800031ac]
       0     5786        M                                           #; (lsu) a4  <-- 15
       0     5787        M 0x800017ac addi    a4, a4, -1020          #; a4  = 15, (wrb) a4  <-- -1005
       0     5788        M 0x800017b0 snez    a4, a4                 #; a4  = -1005, (wrb) a4  <-- 1
       0     5789        M 0x800017b4 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     5790        M 0x800017b8 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     5791        M 0x800017bc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5792        M 0x800017c0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001820
       0     5797        M 0x80001820 ret                            #; ra  = 0x80001e64, goto 0x80001e64
       0     5802        M 0x80001e64 mv      s0, s1                 #; s1  = 15, (wrb) s0  <-- 15
       0     5803        M 0x80001e68 mv      s8, s10                #; s10 = 1, (wrb) s8  <-- 1
       0     5804        M 0x80001e6c bnez    s10, pc - 40           #; s10 = 1, taken, goto 0x80001e44
       0     5805        M 0x80001e44 add     a0, s9, s8             #; s9  = 0x0011fe27, s8  = 1, (wrb) a0  <-- 0x0011fe28
       0     5806        M 0x80001e48 lbu     a0, 0(a0)              #; a0  = 0x0011fe28, a0  <~~ Byte[0x0011fe28]
       0     5807        M 0x80001e4c addi    s10, s8, -1            #; s8  = 1, (wrb) s10 <-- 0
       0     5808        M 0x80001e50 addi    s1, s0, 1              #; s0  = 15, (wrb) s1  <-- 16
       0     5809        M 0x80001e54 mv      a1, s6                 #; s6  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
       0     5810        M 0x80001e58 mv      a2, s0                 #; s0  = 15, (wrb) a2  <-- 15
       0     5811        M 0x80001e5c mv      a3, s3                 #; s3  = -1, (wrb) a3  <-- -1
       0     5812        M 0x80001e60 jalr    s7                     #; s7  = 0x80001778, (wrb) ra  <-- 0x80001e64, goto 0x80001778
       0     5813        M                                           #; (lsu) a0  <-- 48
       0     5815        M 0x80001778 beqz    a0, pc + 168           #; a0  = 48, not taken
       0     5816        M 0x8000177c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     5818        M 0x80001780 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     5819        M 0x80001784 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     5820        M 0x80001788 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003788
       0     5821        M 0x8000178c addi    a3, a3, -1500          #; a3  = 0x80003788, (wrb) a3  <-- 0x800031ac
       0     5822        M                                           #; (acc) a1  <-- 0x00d605b3
       0     5823        M 0x80001790 add     a1, a2, a3             #; a2  = 0, a3  = 0x800031ac, (wrb) a1  <-- 0x800031ac
       0     5824        M 0x80001794 lw      a4, 0(a1)              #; a1  = 0x800031ac, a4  <~~ Word[0x800031ac]
       0     5835        M                                           #; (lsu) a4  <-- 15
       0     5836        M 0x80001798 addi    a5, a4, 1              #; a4  = 15, (wrb) a5  <-- 16
       0     5837        M 0x8000179c sw      a5, 0(a1)              #; a1  = 0x800031ac, 16 ~~> Word[0x800031ac]
       0     5838        M 0x800017a0 add     a4, a1, a4             #; a1  = 0x800031ac, a4  = 15, (wrb) a4  <-- 0x800031bb
       0     5839        M 0x800017a4 sb      a0, 72(a4)             #; a4  = 0x800031bb, 48 ~~> Byte[0x80003203]
       0     5840        M 0x800017a8 lw      a4, 0(a1)              #; a1  = 0x800031ac, a4  <~~ Word[0x800031ac]
       0     5861        M                                           #; (lsu) a4  <-- 16
       0     5862        M 0x800017ac addi    a4, a4, -1020          #; a4  = 16, (wrb) a4  <-- -1004
       0     5863        M 0x800017b0 snez    a4, a4                 #; a4  = -1004, (wrb) a4  <-- 1
       0     5864        M 0x800017b4 addi    a0, a0, -10            #; a0  = 48, (wrb) a0  <-- 38
       0     5865        M 0x800017b8 snez    a0, a0                 #; a0  = 38, (wrb) a0  <-- 1
       0     5866        M 0x800017bc and     a0, a0, a4             #; a0  = 1, a4  = 1, (wrb) a0  <-- 1
       0     5867        M 0x800017c0 bnez    a0, pc + 96            #; a0  = 1, taken, goto 0x80001820
       0     5872        M 0x80001820 ret                            #; ra  = 0x80001e64, goto 0x80001e64
       0     5877        M 0x80001e64 mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
       0     5878        M 0x80001e68 mv      s8, s10                #; s10 = 0, (wrb) s8  <-- 0
       0     5879        M 0x80001e6c bnez    s10, pc - 40           #; s10 = 0, not taken
       0     5891        M 0x80001e70 j       pc + 0x8               #; goto 0x80001e78
       0     5892        M 0x80001e78 sub     a0, s1, s4             #; s1  = 16, s4  = 8, (wrb) a0  <-- 8
       0     5893        M 0x80001e7c sltu    a0, a0, s2             #; a0  = 8, s2  = 0, (wrb) a0  <-- 0
       0     5904        M 0x80001e80 xori    a0, a0, 1              #; a0  = 0, (wrb) a0  <-- 1
       0     5905        M 0x80001e84 xori    a1, s5, 1              #; s5  = 0, (wrb) a1  <-- 1
       0     5906        M 0x80001e88 or      a0, a1, a0             #; a1  = 1, a0  = 1, (wrb) a0  <-- 1
       0     5907        M 0x80001e8c bnez    a0, pc + 48            #; a0  = 1, taken, goto 0x80001ebc
       0     5927        M 0x80001ebc mv      s0, s1                 #; s1  = 16, (wrb) s0  <-- 16
       0     5939        M 0x80001ec0 mv      a0, s0                 #; s0  = 16, (wrb) a0  <-- 16
       0     5942        M 0x80001ec4 fld     fs2, 40(sp)            #; fs2  <~~ Doub[0x0011fe48]
       0     5943        M 0x80001ec8 fld     fs1, 48(sp)            #; fs1  <~~ Doub[0x0011fe50], (f:lsu) fs2  <-- 220.6152
       0     5944        M 0x80001ecc fld     fs0, 56(sp)            #; fs0  <~~ Doub[0x0011fe58], (f:lsu) fs1  <-- 77.7810000
       0     5945        M                                           #; (f:lsu) fs0  <-- 0.0000000
       0     5951        M 0x80001ed0 lw      s10, 64(sp)            #; sp  = 0x0011fe20, s10 <~~ Word[0x0011fe60]
       0     5954        M                                           #; (lsu) s10 <-- 0x80002e5e
       0     5955        M 0x80001ed4 lw      s9, 68(sp)             #; sp  = 0x0011fe20, s9  <~~ Word[0x0011fe64]
       0     5958        M                                           #; (lsu) s9  <-- 8
       0     5959        M 0x80001ed8 lw      s8, 72(sp)             #; sp  = 0x0011fe20, s8  <~~ Word[0x0011fe68]
       0     5962        M                                           #; (lsu) s8  <-- 16
       0     5963        M 0x80001edc lw      s7, 76(sp)             #; sp  = 0x0011fe20, s7  <~~ Word[0x0011fe6c]
       0     5966        M                                           #; (lsu) s7  <-- 0
       0     5967        M 0x80001ee0 lw      s6, 80(sp)             #; sp  = 0x0011fe20, s6  <~~ Word[0x0011fe70]
       0     5970        M                                           #; (lsu) s6  <-- 0
       0     5971        M 0x80001ee4 lw      s5, 84(sp)             #; sp  = 0x0011fe20, s5  <~~ Word[0x0011fe74]
       0     5974        M                                           #; (lsu) s5  <-- -1
       0     5975        M 0x80001ee8 lw      s4, 88(sp)             #; sp  = 0x0011fe20, s4  <~~ Word[0x0011fe78]
       0     5978        M                                           #; (lsu) s4  <-- 0x0011ff07
       0     5979        M 0x80001eec lw      s3, 92(sp)             #; sp  = 0x0011fe20, s3  <~~ Word[0x0011fe7c]
       0     5982        M                                           #; (lsu) s3  <-- 0x0011ff20
       0     5983        M 0x80001ef0 lw      s2, 96(sp)             #; sp  = 0x0011fe20, s2  <~~ Word[0x0011fe80]
       0     5986        M                                           #; (lsu) s2  <-- 0x80001778
       0     5987        M 0x80001ef4 lw      s1, 100(sp)            #; sp  = 0x0011fe20, s1  <~~ Word[0x0011fe84]
       0     5990        M                                           #; (lsu) s1  <-- 8
       0     5991        M 0x80001ef8 lw      s0, 104(sp)            #; sp  = 0x0011fe20, s0  <~~ Word[0x0011fe88]
       0     5994        M                                           #; (lsu) s0  <-- 0
       0     5995        M 0x80001efc lw      ra, 108(sp)            #; sp  = 0x0011fe20, ra  <~~ Word[0x0011fe8c]
       0     5996        M 0x80001f00 addi    sp, sp, 112            #; sp  = 0x0011fe20, (wrb) sp  <-- 0x0011fe90
       0     5998        M                                           #; (lsu) ra  <-- 0x80000ea8
       0     5999        M 0x80001f04 ret                            #; ra  = 0x80000ea8, goto 0x80000ea8
       0     6010        M 0x80000ea8 j       pc + 0x7c0             #; goto 0x80001668
       0     6013        M 0x80001668 mv      s8, a0                 #; a0  = 16, (wrb) s8  <-- 16
       0     6014        M 0x8000166c li      s6, 37                 #; (wrb) s6  <-- 37
       0     6025        M 0x80001670 li      s7, 46                 #; (wrb) s7  <-- 46
       0     6026        M 0x80001674 addi    s0, s10, 1             #; s10 = 0x80002e5e, (wrb) s0  <-- 0x80002e5f
       0     6027        M 0x80001678 j       pc - 0xa74             #; goto 0x80000c04
       0     6028        M 0x80000c04 addi    s10, s0, 2             #; s0  = 0x80002e5f, (wrb) s10 <-- 0x80002e61
       0     6029        M 0x80000c08 mv      s9, s8                 #; s8  = 16, (wrb) s9  <-- 16
       0     6030        M 0x80000c0c li      s8, 10                 #; (wrb) s8  <-- 10
       0     6031        M 0x80000c10 lbu     a0, 0(s0)              #; s0  = 0x80002e5f, a0  <~~ Byte[0x80002e5f]
       0     6042        M                                           #; (lsu) a0  <-- 10
       0     6043        M 0x80000c14 beqz    a0, pc + 2824          #; a0  = 10, not taken
       0     6044        M 0x80000c18 beq     a0, s6, pc + 48        #; a0  = 10, s6  = 37, not taken
       0     6045        M 0x80000c1c addi    s1, s9, 1              #; s9  = 16, (wrb) s1  <-- 17
       0     6046        M 0x80000c20 mv      a1, s4                 #; s4  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
       0     6047        M 0x80000c24 mv      a2, s9                 #; s9  = 16, (wrb) a2  <-- 16
       0     6048        M 0x80000c28 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     6049        M 0x80000c2c jalr    s2                     #; s2  = 0x80001778, (wrb) ra  <-- 0x80000c30, goto 0x80001778
       0     6052        M 0x80001778 beqz    a0, pc + 168           #; a0  = 10, not taken
       0     6053        M 0x8000177c csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6055        M 0x80001780 li      a2, 1096               #; (wrb) a2  <-- 1096
       0     6056        M 0x80001784 mul     a2, a1, a2             #; a1  = 0, a2  = 1096
       0     6057        M 0x80001788 auipc   a3, 0x2                #; (wrb) a3  <-- 0x80003788
       0     6058        M 0x8000178c addi    a3, a3, -1500          #; a3  = 0x80003788, (wrb) a3  <-- 0x800031ac
       0     6059        M                                           #; (acc) a1  <-- 0x00d605b3
       0     6060        M 0x80001790 add     a1, a2, a3             #; a2  = 0, a3  = 0x800031ac, (wrb) a1  <-- 0x800031ac
       0     6061        M 0x80001794 lw      a4, 0(a1)              #; a1  = 0x800031ac, a4  <~~ Word[0x800031ac]
       0     6072        M                                           #; (lsu) a4  <-- 16
       0     6073        M 0x80001798 addi    a5, a4, 1              #; a4  = 16, (wrb) a5  <-- 17
       0     6074        M 0x8000179c sw      a5, 0(a1)              #; a1  = 0x800031ac, 17 ~~> Word[0x800031ac]
       0     6075        M 0x800017a0 add     a4, a1, a4             #; a1  = 0x800031ac, a4  = 16, (wrb) a4  <-- 0x800031bc
       0     6076        M 0x800017a4 sb      a0, 72(a4)             #; a4  = 0x800031bc, 10 ~~> Byte[0x80003204]
       0     6077        M 0x800017a8 lw      a4, 0(a1)              #; a1  = 0x800031ac, a4  <~~ Word[0x800031ac]
       0     6098        M                                           #; (lsu) a4  <-- 17
       0     6099        M 0x800017ac addi    a4, a4, -1020          #; a4  = 17, (wrb) a4  <-- -1003
       0     6100        M 0x800017b0 snez    a4, a4                 #; a4  = -1003, (wrb) a4  <-- 1
       0     6101        M 0x800017b4 addi    a0, a0, -10            #; a0  = 10, (wrb) a0  <-- 0
       0     6102        M 0x800017b8 snez    a0, a0                 #; a0  = 0, (wrb) a0  <-- 0
       0     6103        M 0x800017bc and     a0, a0, a4             #; a0  = 0, a4  = 1, (wrb) a0  <-- 0
       0     6104        M 0x800017c0 bnez    a0, pc + 96            #; a0  = 0, not taken
       0     6105        M 0x800017c4 add     a0, a3, a2             #; a3  = 0x800031ac, a2  = 0, (wrb) a0  <-- 0x800031ac
       0     6106        M 0x800017c8 addi    a2, a0, 72             #; a0  = 0x800031ac, (wrb) a2  <-- 0x800031f4
       0     6107        M 0x800017cc sw      zero, 12(a0)           #; a0  = 0x800031ac, 0 ~~> Word[0x800031b8]
       0     6108        M 0x800017d0 li      a3, 64                 #; (wrb) a3  <-- 64
       0     6109        M 0x800017d4 sw      a3, 8(a0)              #; a0  = 0x800031ac, 64 ~~> Word[0x800031b4]
       0     6110        M 0x800017d8 sw      zero, 20(a0)           #; a0  = 0x800031ac, 0 ~~> Word[0x800031c0]
       0     6111        M 0x800017dc li      a3, 1                  #; (wrb) a3  <-- 1
       0     6120        M 0x800017e0 sw      a3, 16(a0)             #; a0  = 0x800031ac, 1 ~~> Word[0x800031bc]
       0     6121        M 0x800017e4 sw      zero, 28(a0)           #; a0  = 0x800031ac, 0 ~~> Word[0x800031c8]
       0     6123        M 0x800017e8 sw      a2, 24(a0)             #; a0  = 0x800031ac, 0x800031f4 ~~> Word[0x800031c4]
       0     6133        M 0x800017ec lw      a2, 0(a1)              #; a1  = 0x800031ac, a2  <~~ Word[0x800031ac]
       0     6134        M 0x800017f0 addi    a3, a0, 8              #; a0  = 0x800031ac, (wrb) a3  <-- 0x800031b4
       0     6135        M 0x800017f4 sw      zero, 36(a0)           #; a0  = 0x800031ac, 0 ~~> Word[0x800031d0]
       0     6155        M                                           #; (lsu) a2  <-- 17
       0     6156        M 0x800017f8 sw      a2, 32(a0)             #; a0  = 0x800031ac, 17 ~~> Word[0x800031cc]
       0     6157        M 0x800017fc auipc   a0, 0x2                #; (wrb) a0  <-- 0x800037fc
       0     6158        M 0x80001800 addi    a0, a0, -1916          #; a0  = 0x800037fc, (wrb) a0  <-- 0x80003080
       0     6159        M 0x80001804 sw      a3, 0(a0)              #; a0  = 0x80003080, 0x800031b4 ~~> Word[0x80003080]
       0     6160        M 0x80001808 auipc   a0, 0x2                #; (wrb) a0  <-- 0x80003808
       0     6161        M 0x8000180c addi    a0, a0, -1864          #; a0  = 0x80003808, (wrb) a0  <-- 0x800030c0
       0     6170        M 0x80001810 lw      a2, 0(a0)              #; a0  = 0x800030c0, a2  <~~ Word[0x800030c0]
       0     6185        M                                           #; (lsu) a2  <-- 0
       0     6186        M 0x80001814 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001810
       0     6187        M 0x80001810 lw      a2, 0(a0)              #; a0  = 0x800030c0, a2  <~~ Word[0x800030c0]
       0     6198        M                                           #; (lsu) a2  <-- 0
       0     6199        M 0x80001814 beqz    a2, pc - 4             #; a2  = 0, taken, goto 0x80001810
       0     6200        M 0x80001810 lw      a2, 0(a0)              #; a0  = 0x800030c0, a2  <~~ Word[0x800030c0]
       0     6211        M                                           #; (lsu) a2  <-- 1
       0     6212        M 0x80001814 beqz    a2, pc - 4             #; a2  = 1, not taken
       0     6213        M 0x80001818 sw      zero, 0(a0)            #; a0  = 0x800030c0, 0 ~~> Word[0x800030c0]
       0     6214        M 0x8000181c sw      zero, 0(a1)            #; a1  = 0x800031ac, 0 ~~> Word[0x800031ac]
       0     6216        M 0x80001820 ret                            #; ra  = 0x80000c30, goto 0x80000c30
       0     6221        M 0x80000c30 addi    s0, s0, 1              #; s0  = 0x80002e5f, (wrb) s0  <-- 0x80002e60
       0     6222        M 0x80000c34 addi    s10, s10, 1            #; s10 = 0x80002e61, (wrb) s10 <-- 0x80002e62
       0     6223        M 0x80000c38 mv      s9, s1                 #; s1  = 17, (wrb) s9  <-- 17
       0     6224        M 0x80000c3c lbu     a0, 0(s0)              #; s0  = 0x80002e60, a0  <~~ Byte[0x80002e60]
       0     6236        M                                           #; (lsu) a0  <-- 0
       0     6237        M 0x80000c40 bnez    a0, pc - 40            #; a0  = 0, not taken
       0     6238        M 0x80000c44 j       pc + 0xad8             #; goto 0x8000171c
       0     6250        M 0x8000171c mv      a2, s9                 #; s9  = 17, (wrb) a2  <-- 17
       0     6262        M 0x80001720 bltu    s9, s5, pc + 8         #; s9  = 17, s5  = -1, taken, goto 0x80001728
       0     6263        M 0x80001728 li      a0, 0                  #; (wrb) a0  <-- 0
       0     6264        M 0x8000172c mv      a1, s4                 #; s4  = 0x0011ff07, (wrb) a1  <-- 0x0011ff07
       0     6274        M 0x80001730 mv      a3, s5                 #; s5  = -1, (wrb) a3  <-- -1
       0     6275        M 0x80001734 jalr    s2                     #; s2  = 0x80001778, (wrb) ra  <-- 0x80001738, goto 0x80001778
       0     6288        M 0x80001778 beqz    a0, pc + 168           #; a0  = 0, taken, goto 0x80001820
       0     6293        M 0x80001820 ret                            #; ra  = 0x80001738, goto 0x80001738
       0     6294        M 0x80001738 mv      a0, s9                 #; s9  = 17, (wrb) a0  <-- 17
       0     6295        M 0x8000173c lw      s11, 60(sp)            #; sp  = 0x0011fe90, s11 <~~ Word[0x0011fecc]
       0     6298        M                                           #; (lsu) s11 <-- 0
       0     6299        M 0x80001740 lw      s10, 64(sp)            #; sp  = 0x0011fe90, s10 <~~ Word[0x0011fed0]
       0     6302        M                                           #; (lsu) s10 <-- 0
       0     6303        M 0x80001744 lw      s9, 68(sp)             #; sp  = 0x0011fe90, s9  <~~ Word[0x0011fed4]
       0     6306        M                                           #; (lsu) s9  <-- 0
       0     6307        M 0x80001748 lw      s8, 72(sp)             #; sp  = 0x0011fe90, s8  <~~ Word[0x0011fed8]
       0     6310        M                                           #; (lsu) s8  <-- 0
       0     6311        M 0x8000174c lw      s7, 76(sp)             #; sp  = 0x0011fe90, s7  <~~ Word[0x0011fedc]
       0     6314        M                                           #; (lsu) s7  <-- 0
       0     6315        M 0x80001750 lw      s6, 80(sp)             #; sp  = 0x0011fe90, s6  <~~ Word[0x0011fee0]
       0     6318        M                                           #; (lsu) s6  <-- 0
       0     6319        M 0x80001754 lw      s5, 84(sp)             #; sp  = 0x0011fe90, s5  <~~ Word[0x0011fee4]
       0     6322        M                                           #; (lsu) s5  <-- 0
       0     6323        M 0x80001758 lw      s4, 88(sp)             #; sp  = 0x0011fe90, s4  <~~ Word[0x0011fee8]
       0     6326        M                                           #; (lsu) s4  <-- 0
       0     6327        M 0x8000175c lw      s3, 92(sp)             #; sp  = 0x0011fe90, s3  <~~ Word[0x0011feec]
       0     6330        M                                           #; (lsu) s3  <-- 0
       0     6331        M 0x80001760 lw      s2, 96(sp)             #; sp  = 0x0011fe90, s2  <~~ Word[0x0011fef0]
       0     6334        M                                           #; (lsu) s2  <-- 0
       0     6335        M 0x80001764 lw      s1, 100(sp)            #; sp  = 0x0011fe90, s1  <~~ Word[0x0011fef4]
       0     6338        M                                           #; (lsu) s1  <-- 0x00100000
       0     6339        M 0x80001768 lw      s0, 104(sp)            #; sp  = 0x0011fe90, s0  <~~ Word[0x0011fef8]
       0     6342        M                                           #; (lsu) s0  <-- 25
       0     6343        M 0x8000176c lw      ra, 108(sp)            #; sp  = 0x0011fe90, ra  <~~ Word[0x0011fefc]
       0     6344        M 0x80001770 addi    sp, sp, 112            #; sp  = 0x0011fe90, (wrb) sp  <-- 0x0011ff00
       0     6346        M                                           #; (lsu) ra  <-- 0x80000b74
       0     6347        M 0x80001774 ret                            #; ra  = 0x80000b74, goto 0x80000b74
       0     6350        M 0x80000b74 lw      ra, 12(sp)             #; sp  = 0x0011ff00, ra  <~~ Word[0x0011ff0c]
       0     6351        M 0x80000b78 addi    sp, sp, 48             #; sp  = 0x0011ff00, (wrb) sp  <-- 0x0011ff30
       0     6353        M                                           #; (lsu) ra  <-- 0x800007a4
       0     6354        M 0x80000b7c ret                            #; ra  = 0x800007a4, goto 0x800007a4
       0     6357        M 0x800007a4 auipc   a0, 0x3                #; (wrb) a0  <-- 0x800037a4
       0     6358        M 0x800007a8 addi    a0, a0, -1716          #; a0  = 0x800037a4, (wrb) a0  <-- 0x800030f0
       0     6361        M 0x800007ac fld     ft0, 0(a0)             #; ft0  <~~ Doub[0x800030f0]
       0     6370        M                                           #; (f:lsu) ft0  <-- 0.0001
       0     6371        M 0x800007b0 flt.d   a0, ft0, fs0           #; ft0  = 0.0001, fs0  = 0.0000000
       0     6373        M                                           #; (acc) s0  <-- 0x01813407
                         M 0x800007b4 fld     fs2, 8(sp)             #; fs2  <~~ Doub[0x0011ff38]
       0     6374        M 0x800007c0 lw      s1, 36(sp)             #; sp  = 0x0011ff30, s1  <~~ Word[0x0011ff54]
                         M 0x800007b8 fld     fs1, 16(sp)            #; fs1  <~~ Doub[0x0011ff40], (f:lsu) fs2  <-- 0.0
       0     6375        M 0x800007bc fld     fs0, 24(sp)            #; fs0  <~~ Doub[0x0011ff48], (f:lsu) fs1  <-- 0.0
       0     6376        M                                           #; (f:lsu) fs0  <-- 0.0
       0     6378        M                                           #; (lsu) s1  <-- 0
       0     6379        M 0x800007c4 lw      s0, 40(sp)             #; sp  = 0x0011ff30, s0  <~~ Word[0x0011ff58]
       0     6382        M                                           #; (lsu) s0  <-- 0
       0     6383        M 0x800007c8 lw      ra, 44(sp)             #; sp  = 0x0011ff30, ra  <~~ Word[0x0011ff5c]
       0     6384        M 0x800007cc addi    sp, sp, 48             #; sp  = 0x0011ff30, (wrb) sp  <-- 0x0011ff60
       0     6386        M                                           #; (lsu) ra  <-- 0x80002bd0
       0     6387        M 0x800007d0 ret                            #; ra  = 0x80002bd0, goto 0x80002bd0
       0     6409        M 0x80002bd0 mv      s0, a0                 #; a0  = 0, (wrb) s0  <-- 0
       0     6410        M 0x80002bd4 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002bd4
       0     6411        M 0x80002bd8 jalr    ra, ra, 524            #; ra  = 0x80002bd4, (wrb) ra  <-- 0x80002bdc, goto 0x80002de0
       0     6423        M 0x80002de0 addi    sp, sp, -4             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff5c
       0     6424        M 0x80002de4 sw      ra, 0(sp)              #; sp  = 0x0011ff5c, 0x80002bdc ~~> Word[0x0011ff5c]
       0     6425        M 0x80002de8 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002de8
       0     6426        M 0x80002dec jalr    ra, ra, -1256          #; ra  = 0x80002de8, (wrb) ra  <-- 0x80002df0, goto 0x80002900
       0     6446        M 0x80002900 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     6447        M 0x80002904 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     6448        M 0x80002908 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     6451        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     6452        M 0x8000290c lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     6455        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     6458        M 0x80002910 lw      a0, 112(a0)            #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ffe0]
       0     6459        M 0x80002914 ret                            #; ra  = 0x80002df0, goto 0x80002df0
       0     6461        M                                           #; (lsu) a0  <-- 0x00120190
       0     6462        M 0x80002df0 lw      a0, 0(a0)              #; a0  = 0x00120190, a0  <~~ Word[0x00120190]
       0     6472        M                                           #; (lsu) a0  <-- 0
       0     6473        M 0x80002df4 mv      zero, a0               #; a0  = 0
       0     6474        M 0x80002df8 lw      ra, 0(sp)              #; sp  = 0x0011ff5c, ra  <~~ Word[0x0011ff5c]
       0     6475        M 0x80002dfc addi    sp, sp, 4              #; sp  = 0x0011ff5c, (wrb) sp  <-- 0x0011ff60
       0     6477        M                                           #; (lsu) ra  <-- 0x80002bdc
       0     6478        M 0x80002e00 ret                            #; ra  = 0x80002bdc, goto 0x80002bdc
       0     6492        M 0x80002bdc mv      a0, s0                 #; s0  = 0, (wrb) a0  <-- 0
       0     6496        M 0x80002be0 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002be0
       0     6497        M 0x80002be4 jalr    ra, ra, 556            #; ra  = 0x80002be0, (wrb) ra  <-- 0x80002be8, goto 0x80002e0c
       0     6498        M 0x80002e0c addi    sp, sp, -8             #; sp  = 0x0011ff60, (wrb) sp  <-- 0x0011ff58
       0     6499        M 0x80002e10 sw      a0, 0(sp)              #; sp  = 0x0011ff58, 0 ~~> Word[0x0011ff58]
       0     6500        M 0x80002e14 sw      ra, 4(sp)              #; sp  = 0x0011ff58, 0x80002be8 ~~> Word[0x0011ff5c]
       0     6501        M 0x80002e18 auipc   ra, 0x0                #; (wrb) ra  <-- 0x80002e18
       0     6502        M 0x80002e1c jalr    ra, ra, -1336          #; ra  = 0x80002e18, (wrb) ra  <-- 0x80002e20, goto 0x800028e0
       0     6521        M 0x800028e0 lui     a0, 0x0                #; (wrb) a0  <-- 0
       0     6522        M 0x800028e4 add     a0, a0, tp             #; a0  = 0, tp  = 0x0011ff60, (wrb) a0  <-- 0x0011ff60
       0     6523        M 0x800028e8 lw      a0, 0(a0)              #; a0  = 0x0011ff60, a0  <~~ Word[0x0011ff60]
       0     6526        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     6527        M 0x800028ec lw      a0, 0(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff70]
       0     6530        M                                           #; (lsu) a0  <-- 0x0011ff70
       0     6533        M 0x800028f0 lw      a0, 8(a0)              #; a0  = 0x0011ff70, a0  <~~ Word[0x0011ff78]
       0     6534        M 0x800028f4 csrr    a1, mhartid            #; mhartid = 0, (wrb) a1  <-- 0
       0     6536        M                                           #; (lsu) a0  <-- 0
       0     6537        M 0x800028f8 sub     a0, a1, a0             #; a1  = 0, a0  = 0, (wrb) a0  <-- 0
       0     6538        M 0x800028fc ret                            #; ra  = 0x80002e20, goto 0x80002e20
       0     6539        M 0x80002e20 lw      t0, 0(sp)              #; sp  = 0x0011ff58, t0  <~~ Word[0x0011ff58]
       0     6542        M                                           #; (lsu) t0  <-- 0
       0     6543        M 0x80002e24 lw      ra, 4(sp)              #; sp  = 0x0011ff58, ra  <~~ Word[0x0011ff5c]
       0     6544        M 0x80002e28 addi    sp, sp, 8              #; sp  = 0x0011ff58, (wrb) sp  <-- 0x0011ff60
       0     6545        M 0x80002e2c bnez    a0, pc + 24            #; a0  = 0, not taken
       0     6546        M                                           #; (lsu) ra  <-- 0x80002be8
       0     6551        M 0x80002e30 slli    t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 0
       0     6552        M 0x80002e34 ori     t0, t0, 1              #; t0  = 0, (wrb) t0  <-- 1
       0     6553        M 0x80002e38 auipc   t1, 0x0                #; (wrb) t1  <-- 0x80002e38
       0     6554        M 0x80002e3c addi    t1, t1, 584            #; t1  = 0x80002e38, (wrb) t1  <-- 0x80003080
       0     6562        M 0x80002e40 sw      t0, 0(t1)              #; t1  = 0x80003080, 1 ~~> Word[0x80003080]
       0     6563        M 0x80002e44 ret                            #; ra  = 0x80002be8, goto 0x80002be8
       0     6564        M 0x80002be8 wfi                            #; 

## Performance metrics

Performance metrics for section 0 @ (12, 6564):
snitch_loads                                   138
snitch_stores                                  144
fpss_stores                                      7
fpss_loads                                      31
snitch_avg_load_latency                    11.6014
snitch_occupancy                            0.2875
snitch_fseq_rel_offloads                    0.1221
fseq_yield                                     1.0
fseq_fpu_yield                                 1.0
fpss_section_latency                             0
fpss_avg_fpu_latency                        1.9630
fpss_avg_load_latency                       3.8387
fpss_occupancy                              0.0400
fpss_fpu_occupancy                          0.0330
fpss_fpu_rel_occupancy                      0.8244
cycles                                        6553
total_ipc                                   0.3275
